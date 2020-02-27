Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA14C171993
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 14:46:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=At5rIy5hGia9A9hZYkVZ7t62XXVlM71b0aOLqx/urqw=; b=BHepDc18zdGoee
	2l53xaBZkZ3zY7JTGjHTXXOwBAZcLIQ1V/iGcrhLSnxdoJsopeYab8wCHZTIJSGe0pjD0aclE4ByU
	vahjBm1wtKP7UIsOtLhMUgB6QUfawcVkC714kRhivRKYQBRldx6SX8rs6OFair2bC+iN/EsxD0m8w
	t6PeHfAt8KNAzYiujVGI0ESujsrePdotbop7q/lQqP4eITyS4fo80zjQKeR6/RsHPeKd+tCJml6pV
	Fo7bw5m+tPR3I2UbOuDUZA9WZHBKj8wKB4VSPCpS7pINpFaYgkNsy5sSBo9QSMct5zymgAubqOOXB
	pKeauF2ZuX6dCC33+4+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7JUN-0003lF-Or; Thu, 27 Feb 2020 13:46:07 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7JU9-0003k4-MJ
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 13:45:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wzbm8z2w8lQwjT+cEZt8LsICkOgQZEtFslCYrByO1PA=; b=lcOqOT23MeMio9e+fPoJWSHYO
 mAtPRvqbFRnOr1YYkRXttSzf4smONYPf66/BR00oeVmMIhDCTPvOLvGdRGsIoEOjfJsCd4y27oPvM
 FVTJOoLznwVFx7NNR87S9nSu5g1ohp+FeEy2oaE1MUSv2XeCua/NeaQDWZWkzji9mlw0h0krYkazJ
 27P2WyJtOigVoTQ+kR819AvfqphApQ5VsRHf9fkPcqiTGxb8JReJkmWMfhkSxlGUAtzDyyE2yBpK7
 rU7KWd2iVGFgic9aPuJQ9Otpter8v97DlCNuAsNrei0nRt8Fe/qRLrsdM84bpnPu/4LkCbvPX7hOY
 yOrsFWbNA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:45978)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j7JTw-0005rx-CM; Thu, 27 Feb 2020 13:45:40 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j7JTv-00011J-4T; Thu, 27 Feb 2020 13:45:39 +0000
Date: Thu, 27 Feb 2020 13:45:39 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6qdl-sr-som-ti: indicate powering off wifi
 is safe
Message-ID: <20200227134538.GK25745@shell.armlinux.org.uk>
References: <E1j7I7v-0004dS-5u@rmk-PC.armlinux.org.uk>
 <CAOMZO5A6os4myE41ZLBvW639bjRudg8Tax4yBa5JOyY5+oJW+g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5A6os4myE41ZLBvW639bjRudg8Tax4yBa5JOyY5+oJW+g@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_054553_887099_A5901143 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 09:57:40AM -0300, Fabio Estevam wrote:
> Hi Russell,
> 
> On Thu, Feb 27, 2020 at 9:19 AM Russell King <rmk+kernel@armlinux.org.uk> wrote:
> >
> > We need to indicate that powering off the TI WiFi is safe, to avoid:
> >
> > wl18xx_driver wl18xx.2.auto: Unbalanced pm_runtime_enable!
> > wl1271_sdio mmc0:0001:2: wl12xx_sdio_power_on: failed to get_sync(-13)
> >
> > which prevents the WiFi being functional.
> >
> > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> 
> Shouldn't this have a Fixes tag so that it can be backported to stable kernels?

If I knew where the breakage happened and what commit was responsible
for it, then yes - but it used to work with earlier kernels (I don't
know which) and at some point it broke.

The suggestion for how to fix it came from Jon Nettleton.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
