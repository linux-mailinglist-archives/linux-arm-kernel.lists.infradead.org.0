Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4725137B9A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 19:55:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1DLv11+WomkosHjpYhzZvzqnt/KOVxLslSDgzLCnJi0=; b=Kqytxf7svn18HT
	GL9/JJNqxecnfHdPM185EwlbwNVzeYKvN8uhJfQyBkI/G/1gLqzY5Clf/0FFzVqhrUXBw1EhqLA2f
	W5HHjQLbd5zRl8Pn97m+bLD+mj9w/2sf0GpwBYzB5lvFgtlXHnaoJEX6anXlY9ShQG6uQKqo5JZfa
	cvE9Lc0Xnc8SnEuxUEKp3k859c3WQiy8nuNSKnbo1LPE2a2eJiuTyZ0UPXLczkSTtOZlq+Op+NLFF
	hkTuWTLbqe2drfJdszXSSxZP/tEneAomB+pFBXFa0Txxabx3P1+MRAdbV6u4Kgnhpnx+CaTb2vJ3I
	5G4zntBu+krgcXzyQqnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYwbk-0004h0-1E; Thu, 06 Jun 2019 17:55:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYwbd-0004gY-2O; Thu, 06 Jun 2019 17:55:18 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A5AB22083E;
 Thu,  6 Jun 2019 17:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559843716;
 bh=UIIZUNstg8kbM37txNcDzUQLjNklk5K0SFR0hwXSG1U=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=VfXKqQhMGKAY5/W6lEfL1Nf44ezQkWcS2B6eelQK/HNZ6PZ4TvtIk9WCGScyX260Y
 qZ+PA/xXhPvjuOS9LbJZQb9TYd8SGjL0saRxgq9mgb53XXlyN026gnIfXTSMGxFDhX
 jeoeL1A+PLf3AVO5m+sx3zN30bmGVf0mH+cQFA/w=
MIME-Version: 1.0
In-Reply-To: <VI1PR07MB44324648C54773C24E4B186AFD070@VI1PR07MB4432.eurprd07.prod.outlook.com>
References: <VI1PR07MB44324648C54773C24E4B186AFD070@VI1PR07MB4432.eurprd07.prod.outlook.com>
To: , Philippe Mazenauer <philippe.mazenauer@outlook.de>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: Remove unused variable
User-Agent: alot/0.8.1
Date: Thu, 06 Jun 2019 10:55:15 -0700
Message-Id: <20190606175516.A5AB22083E@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_105517_126510_0E635DE0 
X-CRM114-Status: UNSURE (   6.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Michael Turquette <mturquette@baylibre.com>,
 open list <linux-kernel@vger.kernel.org>, Fabien Parent <fparent@baylibre.com>,
 Philippe Mazenauer <philippe.mazenauer@outlook.de>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UXVvdGluZyBQaGlsaXBwZSBNYXplbmF1ZXIgKDIwMTktMDUtMjEgMDU6MTY6MTQpCj4gVmFyaWFi
bGUgJ2RkcnBoeWNmZ19wYXJlbnRzJyBpcyBkZWZpbmVkIHN0YXRpYyBhbmQgaW5pdGlhbGl6ZWQs
IGJ1dCBub3QKPiB1c2VkIGluIHRoZSBmaWxlLgo+IAo+IC4uL2RyaXZlcnMvY2xrL21lZGlhdGVr
L2Nsay1tdDg1MTYuYzoyMzQ6Mjc6IHdhcm5pbmc6IOKAmGRkcnBoeWNmZ19wYXJlbnRz4oCZIGRl
ZmluZWQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1jb25zdC12YXJpYWJsZT1dCj4gIHN0YXRpYyBj
b25zdCBjaGFyICogY29uc3QgZGRycGh5Y2ZnX3BhcmVudHNbXSBfX2luaXRjb25zdCA9IHsKPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IFBoaWxpcHBlIE1hemVuYXVlciA8cGhpbGlwcGUubWF6ZW5hdWVyQG91dGxvb2suZGU+
Cj4gLS0tCgpBcHBsaWVkIHRvIGNsay1uZXh0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
