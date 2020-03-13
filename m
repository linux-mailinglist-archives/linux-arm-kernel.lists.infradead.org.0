Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA68A185055
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 21:30:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dRh5ZK9n+yrRVH1z1XWlfWZFv87lksII9bsuyUi4ADw=; b=boZgsWnnPw4Sx+
	43Tpt+qWbrgKM7PsTri4OrEstSJ3hOOZNxK3+pvhL9P1Hs6zvHOTtE6zOdX8leAWZd0mEVgusH8EI
	jTMfGHxiA94Lc1edaVJGJuews0AqhAaoo6gHMubeMAoxfpBVO9BYPGLyQQNAOrb/80sdjlIg95pwc
	A0ZkCWLB5XYLay/W8c9GlC9bTHcoIS7noU8mEuH1N4OTk2Fxax9fB21e9gXL6t+qIuYxiTfB8571m
	59Y5yCWT5gXk/ZEDn8ewFdWFH4r76MZNIq2Wl+vxPyRXdiQne7EEZgCQ4DdAYhGW25t0UPbmSvVxW
	JFs1LSWXgnoZDondTgNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqwu-0007Kf-9h; Fri, 13 Mar 2020 20:30:28 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqwk-0007Jy-8u
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 20:30:20 +0000
X-Originating-IP: 87.231.134.186
Received: from localhost (87-231-134-186.rev.numericable.fr [87.231.134.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 88FC2FF808;
 Fri, 13 Mar 2020 20:30:06 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Tomasz Maciej Nowak <tmn505@gmail.com>, jason@lakedaemon.net,
 andrew@lunn.ch, sebastian.hesselbarth@gmail.com, robh+dt@kernel.org,
 mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: marvell: espressobin: add ethernet alias
In-Reply-To: <20200227165232.11263-1-tmn505@gmail.com>
References: <20200227165232.11263-1-tmn505@gmail.com>
Date: Fri, 13 Mar 2020 21:30:06 +0100
Message-ID: <875zf8yp4h.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_133018_453726_FBAE8D24 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.199 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomasz,

> The maker of this board and its variants, stores MAC address in U-Boot
> environment. Add alias for bootloader to recognise, to which ethernet
> node inject the factory MAC address.
>
> Signed-off-by: Tomasz Maciej Nowak <tmn505@gmail.com>

Applied on mvebu/dt64

Thanks,

Gregory

> ---
>  arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi
> index c8e2e993c69c..42e992f9c8a5 100644
> --- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi
> +++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi
> @@ -11,6 +11,12 @@
>  #include "armada-372x.dtsi"
>  
>  / {
> +	aliases {
> +		ethernet0 = &eth0;
> +		serial0 = &uart0;
> +		serial1 = &uart1;
> +	};
> +
>  	chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
> -- 
> 2.25.1
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
