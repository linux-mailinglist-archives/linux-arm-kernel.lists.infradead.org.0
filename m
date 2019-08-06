Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6377483964
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 21:10:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8g13wGtp8RembxgI3OrZaYexHfoMlX2WfYkxS6SSek=; b=K+WMgnPgt2gGjQ
	XhqjeYLFsAVvExxGow+xIatZxS+zRsTIXxP1lpvHpvJyEPXdthq0TtKp0iKxorrOgPFClJd1dkFak
	O4F3GIf21XdOBNr7vx1SWhWG2pLuJZx7qXRMr3EFMdHXqlXi00vej9WWbBljG4VbX7g473DMeN7Rr
	jpBAMJuM6lNjdZuqJ3c+wOUjRRbbm8aYV7aVKMuK3C3rhPo8r3PHIy22IUrEDYzKbrSWNXRHEjiY6
	ZkAtFm9oc6BmMUc+rAY3XAVtntauNmJnsv1so/jDCXXGMrXlsMMTw9HdjbW9cXf3m2SKsgrOQF0Jj
	qc9yaaY/CLLY6U8O3ZxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv4qi-0003GH-Mv; Tue, 06 Aug 2019 19:10:20 +0000
Received: from mail.blih.net ([212.83.177.182])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv4qa-0003Ft-8d
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 19:10:14 +0000
Received: from mail.blih.net (mail.blih.net [212.83.177.182])
 by mail.blih.net (OpenSMTPD) with ESMTP id 6bee197d;
 Tue, 6 Aug 2019 21:10:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=bidouilliste.com; h=date
 :from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-type:content-transfer-encoding; s=mail;
 bh=MXGL0TgqkRu7s24m8m7xVJfOK0k=; b=CpSE6M3sfwuUYJInlA90cDLBzzSO
 5UgwMvxmD2OxKd4VfnkZRhOrGJXsEVgCJu3uDYMztBubY+8fleYk7wtMfEu0+jUG
 xxWrZ/nKa5JghKnCS+EVS17Z4Nz5f7uuaZn4SnJ3Ba0O+LscKl+FrGy+XPLEPInV
 kJoySq/F5yMHpNs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=bidouilliste.com; h=date
 :from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-type:content-transfer-encoding; q=dns; s=
 mail; b=Kb4swjcuPYZ8Lht4YbcziZ4/+23C6CsqiNNEPRdqXazfrZGhbcLuDbP7
 v28f1G0p98RhhF/TgXKgPwVXLG+VA2Gy+UVTAdNXvBta/nz2jm4vqVLQIxiS3gXI
 Y2jIZlaY0RNwQaUvwsbZR6oj1rRRc2LpSoCUWzEOptjNwfDL8fc=
Received: from skull.home.blih.net (ip-9.net-89-3-105.rev.numericable.fr
 [89.3.105.9]) by mail.blih.net (OpenSMTPD) with ESMTPSA id f2ca45ae
 TLS version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO;
 Tue, 6 Aug 2019 21:10:08 +0200 (CEST)
Date: Tue, 6 Aug 2019 21:10:07 +0200
From: Emmanuel Vadot <manu@bidouilliste.com>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
Message-Id: <20190806211007.cd9c10bd0d174f56e4998980@bidouilliste.com>
In-Reply-To: <20190806140135.4739-1-anarsoul@gmail.com>
References: <20190806140135.4739-1-anarsoul@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; amd64-portbld-freebsd13.0)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_121012_712993_6527A51C 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "Jared D . McNeill" <jmcneill@NetBSD.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Harald Geyer <harald@ccbib.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  6 Aug 2019 07:01:35 -0700
Vasily Khoruzhick <anarsoul@gmail.com> wrote:

> Looks like PMU in A64 is broken, it generates no interrupts at all and
> as result 'perf top' shows no events.
> 
> Tested on Pine64-LTS.
> 
> Fixes: 34a97fcc71c2 ("arm64: dts: allwinner: a64: Add PMU node")
> Cc: Harald Geyer <harald@ccbib.org>
> Cc: Jared D. McNeill <jmcneill@NetBSD.org>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 9 ---------
>  1 file changed, 9 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> index 9cc9bdde81ac..cd92f546c483 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> @@ -142,15 +142,6 @@
>  		clock-output-names = "ext-osc32k";
>  	};
>  
> -	pmu {
> -		compatible = "arm,cortex-a53-pmu";
> -		interrupts = <GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 153 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 154 IRQ_TYPE_LEVEL_HIGH>,
> -			     <GIC_SPI 155 IRQ_TYPE_LEVEL_HIGH>;
> -		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
> -	};
> -
>  	psci {
>  		compatible = "arm,psci-0.2";
>  		method = "smc";
> -- 
> 2.22.0

 It doesn't work for me too on FreeBSD, and yes the interrupts are
wrong but this is not the problem. Maybe there is a reset line but it's
not documented in the documentation.

 Reviewed-by: Emmanuel Vadot <manu@FreeBSD.org>

-- 
Emmanuel Vadot <manu@bidouilliste.com> <manu@freebsd.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
