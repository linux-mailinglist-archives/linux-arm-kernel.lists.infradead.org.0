Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49AF51E3678
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 05:23:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kPLC/9JmpY2YFBvDIjCc7eBFGsUl9hxgUpjx7nBzecA=; b=hcmNgodb2k7grw
	riaW/+4i93W+bl0U5qvjkXkv4XlN63v4s21OHsnHviDpMEaPLN5yGAhRpKjfpk6okdGe/iZE7zyin
	Y6XRT3cMAinortIhQvFRg/2LvLdcNUe/vE3ool8gSkPe7SkztuAWSMQaKkU1xR1tkd/QjKipCk1Ms
	ER+HjVNTlE0oyjsqVJeZ3XFgTJjo6uI5SkFGagsKFLJ3WIbxyoNlBCFPRgT6p7PFa7uLwcakoDVzc
	yadvZTt4CPAl2jWTx01ecJkEBubgH7MELMfMUuWoMXfZmyBMhHIcZFMeX0Hwphfpj5vtXtoLNp5g+
	ShzZPl/Wkr7hT5SCzOPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdmfY-0005nw-RO; Wed, 27 May 2020 03:23:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdmf1-0005Zu-6v
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 03:23:20 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AD66D20899;
 Wed, 27 May 2020 03:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590549798;
 bh=jY7s5UN1EDTOEEGFXI3SQGhT0VH8jcKAbhfL22s4a04=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=uBlxMbO5B9CUgcTiQd06VJ+s26BvHe8CDrSLdjHcgaS2upi/Rj2yd6WGmPQkGhwKq
 Hx43TRw2JhykK8q9LLU2S6onrhyer/CaLcElCHq1krJThvHEf3T4KJ70Mi/xOP+LIf
 hIX1vN27gYaRiD4SdZ2vp8BJctUOYbzuwVtRM/Cw=
MIME-Version: 1.0
In-Reply-To: <fc6f6d67b8cee0beace4a9d9cca7431e5efa769d.1588630999.git.mirq-linux@rere.qmqm.pl>
References: <cover.1588630999.git.mirq-linux@rere.qmqm.pl>
 <fc6f6d67b8cee0beace4a9d9cca7431e5efa769d.1588630999.git.mirq-linux@rere.qmqm.pl>
Subject: Re: [PATCH v7 1/3] clk: at91: optimize pmc data allocation
From: Stephen Boyd <sboyd@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Ludovic Desroches <ludovic.desroches@microchip.com>, Michael Turquette <mturquette@baylibre.com>, Michał Mirosław <mirq-linux@rere.qmqm.pl>, Nicolas Ferre <nicolas.ferre@microchip.com>, Rob Herring <robh+dt@kernel.org>
Date: Tue, 26 May 2020 20:23:18 -0700
Message-ID: <159054979801.88029.12506665855627304531@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_202319_278911_4F33B73B 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UXVvdGluZyBNaWNoYcWCIE1pcm9zxYJhdyAoMjAyMC0wNS0wNCAxNTozNzo1NikKPiBBbGxvYyB3
aG9sZSBkYXRhIHN0cnVjdHVyZSBpbiBvbmUgYmxvY2suIFRoaXMgbWFrZXMgdGhlIGNvZGUgc2hv
cnRlciwKPiBtb3JlIGVmZmljaWVudCBhbmQgZWFzaWVyIHRvIGV4dGVuZCBpbiBmb2xsb3dpbmcg
cGF0Y2guCj4gCj4gU2lnbmVkLW9mZi1ieTogTWljaGFcdTAxNDIgTWlyb3NcdTAxNDJhdyA8bWly
cS1saW51eEByZXJlLnFtcW0ucGw+Cj4gLS0tCgpBcHBsaWVkIHRvIGNsay1uZXh0CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
