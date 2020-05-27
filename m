Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C9E1E3679
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 05:24:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GwRdDQHpEfh1aOu9nLBmtwdxJEEv7wKptjm54RnEprA=; b=Igax5iKnasfqFg
	Fx5ESYqMkFzqmvaP64+JtHRPAVph+0ObufMxc5iZ6yEdki+Nhzjemj8cDB9DfQvopCm6OCLxDdtWc
	6Xn7pfOjJc/g0gKHrF8r18CknzyeGWIPKO3I2RXq8tnE/RnBhCwCiBD7+XffG3GQha33hpRg4OXdC
	qO+kuhC8yGCm2G8UJ9aRv9+EaHE91LmKCPrxIHpM29P38zmCrtAH00O6JQQ7h1ZXWGIbavYVnxqVL
	MvEW882O44sWqtoWJyVrcy82RBmfpK+Hp3NrCWiFJ1oI5yaMJlXh8cZ6EwaiGASMW+5muytTSgnLj
	ew3l5DV/jK7sgnF13Cpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdmfs-0005xv-AC; Wed, 27 May 2020 03:24:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdmf5-0005ck-2Z
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 03:23:24 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EB5ED2084C;
 Wed, 27 May 2020 03:23:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590549802;
 bh=0928OZitOLtxwqCSC2V8fjPnswqAL2mNVIGjvVszf/k=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=WaKAo2MMC0fV5m90LFQXPHDGE+xzUw8UGBmMcqPXZRGtLDlog5Op87vjWEKVC+Ilk
 D7A14pCfV5Xsap2LqHAUO26O1W9bvJXVe7Zd9a2aLGrHtW4xqe7yssUaRxjF3tQe23
 LAvT3X7rnyAoIsnEL1ne3p4RUhKjzIqUJ5iJKEo0=
MIME-Version: 1.0
In-Reply-To: <fa39cc10dab8341ea4bc2b7152be9217b2cd34a5.1588630999.git.mirq-linux@rere.qmqm.pl>
References: <cover.1588630999.git.mirq-linux@rere.qmqm.pl>
 <fa39cc10dab8341ea4bc2b7152be9217b2cd34a5.1588630999.git.mirq-linux@rere.qmqm.pl>
Subject: Re: [PATCH v7 3/3] clk: at91: allow setting all PMC clock parents via
 DT
From: Stephen Boyd <sboyd@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Ludovic Desroches <ludovic.desroches@microchip.com>, Michael Turquette <mturquette@baylibre.com>, Michał Mirosław <mirq-linux@rere.qmqm.pl>, Nicolas Ferre <nicolas.ferre@microchip.com>, Rob Herring <robh+dt@kernel.org>
Date: Tue, 26 May 2020 20:23:21 -0700
Message-ID: <159054980111.88029.17811117993800322687@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_202323_156479_1B98A6CB 
X-CRM114-Status: UNSURE (   6.67  )
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

UXVvdGluZyBNaWNoYcWCIE1pcm9zxYJhdyAoMjAyMC0wNS0wNCAxNTozNzo1NykKPiBXZSBuZWVk
IHRvIGhhdmUgY2xvY2tzIGFjY2Vzc2libGUgdmlhIHBoYW5kbGUgdG8gc2VsZWN0IHRoZW0KPiBh
cyBwZXJpcGhlcmFsIGNsb2NrIHBhcmVudCB1c2luZyBhc3NpZ25lZC1jbG9jay1wYXJlbnRzIGlu
IERULgo+IEFkZCBzdXBwb3J0IGZvciBQTExBQ0svUExMQkNLL0FVRElPUExMQ0sgY2xvY2tzIHdo
ZXJlIGF2YWlsYWJsZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYVx1MDE0MiBNaXJvc1x1MDE0
MmF3IDxtaXJxLWxpbnV4QHJlcmUucW1xbS5wbD4KPiBBY2tlZC1ieTogQWxleGFuZHJlIEJlbGxv
bmkgPGFsZXhhbmRyZS5iZWxsb25pQGJvb3RsaW4uY29tPgo+IC0tLQoKQXBwbGllZCB0byBjbGst
bmV4dAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
