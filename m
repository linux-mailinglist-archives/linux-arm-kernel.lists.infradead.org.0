Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C7F42555
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 14:16:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yBHkjAgywZGnsKNqHPGEJsWJ3if2w5DvBFhWlZUVV7U=; b=T2bdqzJ3WKDsgg
	fPPFx8viDu1BcfeAOpm3mQMksu705GBpHKoGY6uY9yt80ryODrMM41IjHdYXM3RFW+xS990C85y9m
	uS6hFLzskY31+fSnWGrI4Q7O3OdXfMiwqGtxJtYRlTEuhqsIoXS1wTA/ZjaeInKkgGMgrsDx/F+55
	ajR1/iETMcif1plxd9X3iaO2IK01IxBCTNLY+9IDpGO+cAhVOhAn62iRPHQe1WUHP3bkCc+TCq7Nl
	3GnLeJKAQb9w4I0C1PdR9VDMX3dV5/Asau45ZGBIgv8khodbrxXKgadUs+D14K97YL7Rzt3E47tAc
	icE3yaLzRgzalcNxQxOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2B3-0003RI-IH; Wed, 12 Jun 2019 12:16:29 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2At-0003Qr-Or
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 12:16:21 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id EB4979B1;
 Wed, 12 Jun 2019 14:16:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1560341772;
 bh=GMgV0nzfWbQT9RS/WzZ9G4VnZN8/etx8qhUiIxNa4Ko=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bYlJkKMCaEdOAW7Wa6MrHCzrOuz7TlB12bHJ3Anff1eU4LIlp2HBIc/8piV71ax18
 mKbeAHdf2e9DWcFpYEEEdoAS5kQwZ7L+pr7gg8JwBQDcePUvh5iAEmzX/ZXIid/31/
 rPC9sx17tti908urwUVoQW48ErxbBt2yLDwqgRc8=
Date: Wed, 12 Jun 2019 15:15:56 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH/RFT] arm64: dts: renesas: r8a77995: Add cpg reset for
 LVDS Interface
Message-ID: <20190612121556.GK5035@pendragon.ideasonboard.com>
References: <1560078659-19236-1-git-send-email-ykaneko0929@gmail.com>
 <CAMuHMdV8Mg2ao9EwrLkiHF53Y_a5RKyvaqAv13uPvqTr19K++Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdV8Mg2ao9EwrLkiHF53Y_a5RKyvaqAv13uPvqTr19K++Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_051619_977712_B166858F 
X-CRM114-Status: GOOD (  19.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Yoshihiro Kaneko <ykaneko0929@gmail.com>, Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms@verge.net.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

On Wed, Jun 12, 2019 at 09:37:14AM +0200, Geert Uytterhoeven wrote:
> On Sun, Jun 9, 2019 at 1:11 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
> > It is necessary to reset the LVDS Interface according to display on/off.
> > Therefore, this patch adds CPG reset properties in DU device node
> > for the R8A77995 SoC.
> >
> > This patch was inspired by a patch in the BSP by Takeshi Kihara <takeshi.kihara.df@renesas.com>.
> >
> > Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
> 
> Thanks for your patch!
> 
> > --- a/arch/arm64/boot/dts/renesas/r8a77995.dtsi
> > +++ b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
> > @@ -1001,6 +1001,8 @@
> >                         clocks = <&cpg CPG_MOD 724>,
> >                                  <&cpg CPG_MOD 723>;
> >                         clock-names = "du.0", "du.1";
> > +                       resets = <&cpg 724>, <&cpg 724>;
> > +                       reset-names = "du.0", "du.1";
> 
> These are not the LVDS resets, but the (shared) DU channel resets.
> 
> The LVDS interface has its own separate device node, so if you want to
> be able to reset that, you need to add reset properties to the LVDS
> node instead.
> 
> Note that I haven't reposted a new version of "[PATCH v2] dt-bindings:
> drm: rcar-du: Document optional reset properties"[1] yet, after the
> split off of the LVDS interface into its own device node. Laurent wanted
> to wait until the driver gained DU reset support.
> However, the above differs from my proposal, as it also adds "du.1",
> pointing to the same (shared) reset.
> With a fresh look (2 years later ;-), that actually makes sense, so
> perhaps I should change my proposal and repost? We do have shared
> resets in other places (e.g. USB).
> Laurent, what do you think?

For Gen3 reset is handled at the group level, so I think specifying one
entry per group is enough. If other SoCs require per-channel reset
(which would surprise me as it would then imply a big redesign of the DU
IP core, which may lead to a separate driver) we can always extend the
bindings accordingly.

> [1] https://lore.kernel.org/linux-renesas-soc/1488817556-21410-1-git-send-email-geert+renesas@glider.be/

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
