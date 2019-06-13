Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3C143516
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 12:04:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dcBl1LXWP7VLILgETa5lFrvkHRM2cSC/hfzze98/EBg=; b=VWN8Iymz/hjWM0
	8f2WWyzLpq7XMEkQnXS8qnqihFjvmDzH9Kp7Eg5Xy9KoqpJ5ZaNFXYTOVeCRhIcRXvy2R5+6cnJWV
	ZU7a3yhAMtNM3cB+VJT3RWeVgaU6mGCD6aljlT718hKiUO4Psn7qOr72wxAt+RCeq8kPgEMvGIoCz
	+kJP3Jg9AIn9mS9CAGetZay9c6oDA6FIW7KwmX2l4EVm5HT13+1vPvrv2Wgz2iBPi2SAto2wuKdjT
	YzmtXXUBSJlfh3v40hNTdP97GUrgXlVNiRVAVImv7OPNaUgSEhqe0e2bIJIkEClgPaLazR340VAbu
	8y0/nndXuiZI8b6/2DkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbMak-00046B-OT; Thu, 13 Jun 2019 10:04:22 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbMaW-000450-V8
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 10:04:10 +0000
Received: from pendragon.ideasonboard.com
 (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8303E52B;
 Thu, 13 Jun 2019 12:03:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1560420238;
 bh=44UXGOwJn6Te23Fl90PVHuW6U1h36y3mffgPls8OrKg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Dunr0mibNV4HP0zk3fV2XtB2SJBOt3BbGGSTCpap9LOxVYuOUvkvA/1uxFoagoqL/
 zv1CR5l3lufJ3svKrTo4+0j7yMgS6MmdMbz92B43G1bmspyboSrlJUUE3CTIm4z2wG
 L5N9qz3PkcFWDuhAaLARDtS5Gt7MiUk9oHNfXRDU=
Date: Thu, 13 Jun 2019 13:03:42 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Simon Horman <horms@verge.net.au>
Subject: Re: [PATCH/RFT] arm64: dts: renesas: r8a77995: Add cpg reset for
 LVDS Interface
Message-ID: <20190613100342.GB5259@pendragon.ideasonboard.com>
References: <1560078659-19236-1-git-send-email-ykaneko0929@gmail.com>
 <CAMuHMdV8Mg2ao9EwrLkiHF53Y_a5RKyvaqAv13uPvqTr19K++Q@mail.gmail.com>
 <20190612121556.GK5035@pendragon.ideasonboard.com>
 <20190613100246.qa2lcbcgbyd3zuaz@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613100246.qa2lcbcgbyd3zuaz@verge.net.au>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_030409_308215_E655E224 
X-CRM114-Status: GOOD (  21.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Simon,

On Thu, Jun 13, 2019 at 12:02:46PM +0200, Simon Horman wrote:
> On Wed, Jun 12, 2019 at 03:15:56PM +0300, Laurent Pinchart wrote:
> > On Wed, Jun 12, 2019 at 09:37:14AM +0200, Geert Uytterhoeven wrote:
> >> On Sun, Jun 9, 2019 at 1:11 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
> >>> It is necessary to reset the LVDS Interface according to display on/off.
> >>> Therefore, this patch adds CPG reset properties in DU device node
> >>> for the R8A77995 SoC.
> >>>
> >>> This patch was inspired by a patch in the BSP by Takeshi Kihara <takeshi.kihara.df@renesas.com>.
> >>>
> >>> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
> >> 
> >> Thanks for your patch!
> >> 
> >>> --- a/arch/arm64/boot/dts/renesas/r8a77995.dtsi
> >>> +++ b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
> >>> @@ -1001,6 +1001,8 @@
> >>>                         clocks = <&cpg CPG_MOD 724>,
> >>>                                  <&cpg CPG_MOD 723>;
> >>>                         clock-names = "du.0", "du.1";
> >>> +                       resets = <&cpg 724>, <&cpg 724>;
> >>> +                       reset-names = "du.0", "du.1";
> >> 
> >> These are not the LVDS resets, but the (shared) DU channel resets.
> >> 
> >> The LVDS interface has its own separate device node, so if you want to
> >> be able to reset that, you need to add reset properties to the LVDS
> >> node instead.
> >> 
> >> Note that I haven't reposted a new version of "[PATCH v2] dt-bindings:
> >> drm: rcar-du: Document optional reset properties"[1] yet, after the
> >> split off of the LVDS interface into its own device node. Laurent wanted
> >> to wait until the driver gained DU reset support.
> >> However, the above differs from my proposal, as it also adds "du.1",
> >> pointing to the same (shared) reset.
> >> With a fresh look (2 years later ;-), that actually makes sense, so
> >> perhaps I should change my proposal and repost? We do have shared
> >> resets in other places (e.g. USB).
> >> Laurent, what do you think?
> > 
> > For Gen3 reset is handled at the group level, so I think specifying one
> > entry per group is enough. If other SoCs require per-channel reset
> > (which would surprise me as it would then imply a big redesign of the DU
> > IP core, which may lead to a separate driver) we can always extend the
> > bindings accordingly.
> > 
> >> [1] https://lore.kernel.org/linux-renesas-soc/1488817556-21410-1-git-send-email-geert+renesas@glider.be/
> 
> Sorry, I'm a little unclear on what the suggested way forwards is here.
> 
> Is it to add a reset for du.0 but not du.1 ?

Correct.

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
