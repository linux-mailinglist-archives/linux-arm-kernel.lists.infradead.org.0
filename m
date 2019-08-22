Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 730619973B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 16:45:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hAXg5TesGZ311+qAyFJyc32OuNZUFcZCpR+JIDVUvsA=; b=j5o9ZTiSQ7hkxy
	eXK2OwHxBKfz7bAOBqmvb36mqPdH7bRJ4l2uyG++Fez6X1c5742DEtuH4x4uXSU4GqC3AEmqoIMJ9
	XtW96BwlJJ3bXPObJn7WWgHINkYLe4McKVflGuBIkDAxVOtp+ynyAzUOA+iGKmvtyNYJKeVvryA82
	E8+Oh4mI3L8zF4KjFruCpidGCpr0PKbrWiP9WQrjEmQcPpYu/lrYAKIdWds3nTFkSKSAqXgHslrc4
	dCYcAoDkZqG9au1dLQHuDU4vpkLMod67lPmROEJVsbVTnbwnh8QZu0xs6UY6BTetNYTpHMafAzdCx
	kp2Og9CSy252hZajE4XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0oLB-0006vE-45; Thu, 22 Aug 2019 14:45:29 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0oKb-0006I2-1F; Thu, 22 Aug 2019 14:44:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ups/VrVzSUhhwl/GEM5YSxWOiDm7bA4AN942AhbRqwo=; b=sQhrwnvpafZLPmo5FsdfINJTy
 gqrWQhb1Z+5QCrEIDeMoEi3SdBeRlQ0v769zMUgIPnlfHp+R1toUOanWZs4j4fAgaJJx1+1pNN3Pk
 sNHT4ZUjpanIjfQnjDQrwSSarOzK6SevySl9bvgFrqzO6breQcO9593EEUjk1JNQrOqUxmxuFJU0c
 TpuUduJ3+r+cF0iBFl5sEupcoYvbP5YoYJ3FOfWGLzUpxFTU5tFekqHvRaVXIpVmTTl0GqkOdI5eb
 pqV3DqYa6AYnAb68AilWTr+NCyLz1cmjlmYN/zsAZnyRurU3lp3eQ/w5Z3yHwvYigqb2Bblzib3XI
 tYyrEZhDg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:48060)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i0oKL-0007ES-Kj; Thu, 22 Aug 2019 15:44:37 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i0oKH-0007m8-RC; Thu, 22 Aug 2019 15:44:33 +0100
Date: Thu, 22 Aug 2019 15:44:33 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>
Subject: Re: [PATCH net-next v2 2/3] net: ethernet: mediatek: Re-add support
 SGMII
Message-ID: <20190822144433.GT13294@shell.armlinux.org.uk>
References: <20190821144336.9259-1-opensource@vdorst.com>
 <20190821144336.9259-3-opensource@vdorst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821144336.9259-3-opensource@vdorst.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_074453_096007_4222C68E 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nelson Chang <nelson.chang@mediatek.com>,
 Frank Wunderlich <frank-w@public-files.de>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-mips@vger.kernel.org,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Stefan Roese <sr@denx.de>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 04:43:35PM +0200, Ren=E9 van Dorst wrote:
> +	if (MTK_HAS_CAPS(mac->hw->soc->caps, MTK_SGMII)) {
> +		if (state->interface !=3D PHY_INTERFACE_MODE_2500BASEX) {
>  			phylink_set(mask, 1000baseT_Full);
>  			phylink_set(mask, 1000baseX_Full);
> +		} else {
> +			phylink_set(mask, 2500baseT_Full);
> +			phylink_set(mask, 2500baseX_Full);
> +		}

If you can dynamically switch between 1000BASE-X and 2500BASE-X, then
you need to have both set.  See mvneta.c:

        if (pp->comphy || state->interface !=3D PHY_INTERFACE_MODE_2500BASE=
X) {
                phylink_set(mask, 1000baseT_Full);
                phylink_set(mask, 1000baseX_Full);
        }
        if (pp->comphy || state->interface =3D=3D PHY_INTERFACE_MODE_2500BA=
SEX) {
                phylink_set(mask, 2500baseT_Full);
                phylink_set(mask, 2500baseX_Full);
        }

What this is saying is, if we have a comphy (which is the serdes lane
facing component, where the data rate is setup) then we can support
both speeds (and so mask ends up with all four bits set.)  Otherwise,
we only support a single-speed (1000Gbps for non-2500BASE-X etc.)

> +	} else {
> +		if (state->interface =3D=3D PHY_INTERFACE_MODE_TRGMII) {
> +			phylink_set(mask, 1000baseT_Full);
> +		} else {
> +			phylink_set(mask, 10baseT_Half);
> +			phylink_set(mask, 10baseT_Full);
> +			phylink_set(mask, 100baseT_Half);
> +			phylink_set(mask, 100baseT_Full);
> +
> +			if (state->interface !=3D PHY_INTERFACE_MODE_MII) {
> +				phylink_set(mask, 1000baseT_Half);
> +				phylink_set(mask, 1000baseT_Full);
> +				phylink_set(mask, 1000baseX_Full);
> +			}

I'm also wondering about the "MTK_HAS_CAPS(mac->hw->soc->caps,
MTK_SGMII)" above.

(Here comes a reason why using SGMII to cover all single-lane serdes
modes causes confusion - unfortunately, some folk use SGMII to describe
all these modes.  So, I'm going to use the terminology "Cisco SGMII"
to mean exactly the SGMII format published by Cisco, "802.3 1000BASE-X"
to mean the original IEEE 802.3 format running at 1.25Gbps, and
"up-clocked 2500BASE-X" to mean the 3.125Gbps version of the 802.3
1000BASE-X protocol.)

Isn't this set for Cisco SGMII as well as for 802.3 1000BASE-X and
the up-clocked 2500BASE-X modes?

If so, is there a reason why 10Mbps and 100Mbps speeds aren't
supported on Cisco SGMII links?

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
