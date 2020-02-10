Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF28C15803E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 17:55:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WBOh38keXcyUkJwXQTPbny5kYL85ebFRZzEP2/qB0+A=; b=GsPzTEitHWCWFq
	CGtRDdQsCz93X3dPDlaxNGywAUJ9Lb6RrMgliqKV0Ssw29u0fq1wOnU7ouF1pP0u8bh+A2nnHykYA
	MYlVRwmvq8jxgcO3q4jssMK3jAE/XDY05xIStyQb48hQyAhMgVNAlwx8kZRs/Ho7dhI+zloW7Z6OR
	F5aXN0zH005pqL0R66WRshvsdEMAORt2FZ4bnm02ao8NT9iJmYiUyAjZJpn2PuxYnVvyw6hHHFUok
	ZZEfXx+WFdduZ04Vo6CbOAvWMroOKD68IDiYfjnZ/kRS+VvvuPwHsL7yFSmObKmWJuhBaaAEIWL9b
	/liEGKOXFH/jniMA46QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1CLX-0004bW-I6; Mon, 10 Feb 2020 16:55:43 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1CLR-0004bP-N9
 for linux-arm-kernel@bombadil.infradead.org; Mon, 10 Feb 2020 16:55:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=mEnVyixD9bDI8iaNneIIx1QUb9KOVGjdmZwXyiu8wsA=; b=pgCjiajwFUlnLedaBZKhLnj8rB
 4OJxKfKXeqO8deG0BQc3tdrzw+2WBqyYmpy41eet9NOtorpAJP5rozCNu8+3ShSXdPDv+eCzguCZ6
 oCJgWaNltwkNueHI6gXVE6I/Ar/uWk0OJ/N8DieoKDse7jD2NiZ/MuDR8p4TcTptKMzCC8HXYSQw1
 +BvDS76hPb2WFbq3F41NnJukLf/kM94/txWCmDfKH8eeSeukFh3Q0o6bKiiu5sEeyEvzFe+KKmG/J
 55ciko1KW6tztNGzXwHFu4hoc8FCga66P4nDsN+qIZS1ZtHskpYmfoCeZOzP8pYmEgbdXsxWk200E
 mPJQ1T7Q==;
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1CLO-0000so-EW
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 16:55:35 +0000
X-Originating-IP: 90.65.102.129
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 4AE06E0005;
 Mon, 10 Feb 2020 16:54:56 +0000 (UTC)
Date: Mon, 10 Feb 2020 17:54:56 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] arm: at91: dts: Kill off "simple-panel" compatibles
Message-ID: <20200210165456.GD3878@piout.net>
References: <20200117230845.25190-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117230845.25190-1-robh@kernel.org>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/01/2020 17:08:45-0600, Rob Herring wrote:
> "simple-panel" is a Linux driver and has never been an accepted upstream
> compatible string, so remove it.
> 
> Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  arch/arm/boot/dts/at91-dvk_su60_somc_lcm.dtsi | 2 +-
>  arch/arm/boot/dts/at91-sama5d4_ma5d4evk.dts   | 2 +-
>  arch/arm/boot/dts/at91sam9n12ek.dts           | 2 +-
>  arch/arm/boot/dts/at91sam9x5dm.dtsi           | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
