Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1982828723
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 21:20:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0gbzCoL0duMcePMjq7YDzSZwQJaPaPRRYpfFJd3Fjtk=; b=UGC3CncybmX4TX
	wKDvPofLgdLJVIvyiBT55GezTItfbF6vbrcK8C9ZNnI7oCmzpqrvMnuNMvWxXzGY4FWcPXyFsnS5C
	sz5gRCVg47qsLzS+g6yTffMaprIf3Sv0DJdxJU7oygW/Yt9Po+gaUx4/Ed4KGpGsWqSo20CIqKM5B
	hISS4jt2qhzuc7GCqIB6RwnsFdpG5LMnnDqcDeUCqlJz6aSJYya2K8c8DFQxs48ecQVbLK7hMLXXU
	IbIIv2S6xmLN9P7eKddSQD8wU8ezBgu8p2H4FYla3677NWU2NOEVkJf1gid6yFoksTaVXZ1A8nITE
	7sCvSIbZXVlhD/t+GVcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTtFt-0002Xj-CV; Thu, 23 May 2019 19:19:57 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTtFa-0002Q8-0T
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 19:19:40 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 6A162803D0; Thu, 23 May 2019 21:19:21 +0200 (CEST)
Date: Thu, 23 May 2019 21:19:22 +0200
From: Pavel Machek <pavel@ucw.cz>
To: "Angus Ainslie (Purism)" <angus@akkea.ca>
Subject: Re: [PATCH v13 2/4] arm64: dts: fsl: librem5: Add a device tree for
 the Librem5 devkit
Message-ID: <20190523191922.GA3803@xo-6d-61-c0.localdomain>
References: <20190520142330.3556-1-angus@akkea.ca>
 <20190520142330.3556-3-angus@akkea.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520142330.3556-3-angus@akkea.ca>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_121938_268888_8FB4E7E1 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

> This is for the development kit board for the Librem 5. The current level
> of support yields a working console and is able to boot userspace from
> the network or eMMC.
> 
> Additional subsystems that are active :

> - haptic motor

Haptic motor is not a LED. It should be controlled by input subsystem.

> +	pwmleds {
> +		compatible = "pwm-leds";
> +
> +		haptic {
> +			label = "librem5::haptic";
> +			pwms = <&pwm2 0 200000>;
> +			active-low;
> +			max-brightness = <255>;
> +			power-supply = <&reg_3v3_p>;
> +		};
> +	};

You can take a look at N900, that has reasonable interface.

Thanks,
										Pavel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
