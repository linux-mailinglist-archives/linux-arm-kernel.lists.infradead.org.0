Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DEB1E366F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 05:23:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0U+HkG8tDhXH6ftKeQuo1MY+MaJ0oYQI6pz0Whysg78=; b=KYSiwc88KSqLMA
	46p1TPL3qwq4KzztMez6kANz27RJtHkywq0F0LQUPlkx2F+jT9WIei30Wcv0EluMgxjTamBGiTKrS
	PbJ6LEuauH93uqbLAtJzzXiffm393omilo4+aTu7hR/6v2f8s+2hXvpyutrKc3HCQsNnbXnXa0/tS
	Sz0EchkGshZnp/RAIzRtON2pe3JquVeOZ92J5KOHzktPMI783zLPLb7gpWopS6CiTT3aFeXK6bC9E
	1xcYddev1tDt8MH4tzaNfAIMrGYgnL9gJD+6f3DHv/xKJ8CtJ8FubzRFO9rtdhDAaawFEpYGeInel
	ZSjgOeVclH0BIy8qKcYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdmfH-0005Yq-LA; Wed, 27 May 2020 03:23:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdmex-0005YG-AR
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 03:23:17 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E46BA207D8;
 Wed, 27 May 2020 03:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590549795;
 bh=80jHVw6aQBSlvs8cXqPq7ku7ZsYEbQzW8pwnZJk0awE=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=R5Dg/k7Xdz4SfisMh9nuUX6t3M+H2g1Iv16u+zdJxx4EnqdvmEe3PONfZ8ung5KqM
 8CQ1hYnRLfUA4NvyRj3a+jgRgwpYi/tFrxdJ5GsvhbvYK5nEUTcATEy8SDtraH47B+
 Sjnc868dAOIyZb+oDJNoRzhDarvwmdr26C70uJNI=
MIME-Version: 1.0
In-Reply-To: <0054532c00163ddf405dad658b32f0d7d97fcc8e.1588630999.git.mirq-linux@rere.qmqm.pl>
References: <cover.1588630999.git.mirq-linux@rere.qmqm.pl>
 <0054532c00163ddf405dad658b32f0d7d97fcc8e.1588630999.git.mirq-linux@rere.qmqm.pl>
Subject: Re: [PATCH v7 2/3] clk: at91: allow setting PCKx parent via DT
From: Stephen Boyd <sboyd@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Ludovic Desroches <ludovic.desroches@microchip.com>, Michael Turquette <mturquette@baylibre.com>, Michał Mirosław <mirq-linux@rere.qmqm.pl>, Nicolas Ferre <nicolas.ferre@microchip.com>, Rob Herring <robh+dt@kernel.org>
Date: Tue, 26 May 2020 20:23:14 -0700
Message-ID: <159054979429.88029.8996330279557603331@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_202315_377918_3A3306DC 
X-CRM114-Status: UNSURE (   6.60  )
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

UXVvdGluZyBNaWNoYcWCIE1pcm9zxYJhdyAoMjAyMC0wNS0wNCAxNTozNzo1NikKPiBUaGlzIGV4
cG9zZXMgUFJPR3ggY2xvY2tzIGZvciB1c2UgaW4gYXNzaWduZWQtY2xvY2tzIERldmljZVRyZWUg
cHJvcGVydHkKPiBmb3Igc2VsZWN0aW5nIFBDS3ggcGFyZW50IGNsb2NrLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IE1pY2hhXHUwMTQyIE1pcm9zXHUwMTQyYXcgPG1pcnEtbGludXhAcmVyZS5xbXFtLnBs
Pgo+IC0tLQoKQXBwbGllZCB0byBjbGstbmV4dAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
