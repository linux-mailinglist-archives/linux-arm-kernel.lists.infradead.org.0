Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F12C47D4E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 10:39:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eo3RKs3NEcX7DlL/HRR+2hutbnpIj+2SBlBg0bGUQmE=; b=fGiGQNLw05m3up
	JxkxWMtNZJs06CeMN7LyLr3WwFAvQX0Wo2YVso4/zXFupqwHDsNpc8sDMuyZtNXmTtRAy49V8BqkO
	yMWoVADPbLtbjHAB1ACf/AwF/txFPY0oBibcMakYyj25SfWQuQVhuRzMU7g4AncSOD+G/D3OL60Fn
	C8F66TZRt5g/TkSxGyiNgI7HbaV0TvrDBMknlt1/3xXq2xtgbAaQZKeQ1Ez8bNZi1DDaLjKGLvmdX
	47cLewN1gDfp0soHW4UmsRDbHthbC5uLoRXmmnqWmlBWrrJaRCkvaLhvkOiP8BNxl6JLx1QnvTY28
	KCPkMG9vPosjR1YAm9Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcnAQ-0005yh-Gp; Mon, 17 Jun 2019 08:39:06 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcn91-0004qY-Iv
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 08:37:41 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 9CFCA25AED3;
 Mon, 17 Jun 2019 18:37:38 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id A2B1C94024A; Mon, 17 Jun 2019 10:37:36 +0200 (CEST)
Date: Mon, 17 Jun 2019 10:37:36 +0200
From: Simon Horman <horms@verge.net.au>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH/RFT] arm64: dts: renesas: r8a77995: Add cpg reset for
 LVDS Interface
Message-ID: <20190617083735.thl6r6hduuz7s66y@verge.net.au>
References: <1560078659-19236-1-git-send-email-ykaneko0929@gmail.com>
 <CAMuHMdV8Mg2ao9EwrLkiHF53Y_a5RKyvaqAv13uPvqTr19K++Q@mail.gmail.com>
 <20190612121556.GK5035@pendragon.ideasonboard.com>
 <20190613100246.qa2lcbcgbyd3zuaz@verge.net.au>
 <20190613100342.GB5259@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613100342.GB5259@pendragon.ideasonboard.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_013739_925609_561E0E93 
X-CRM114-Status: GOOD (  25.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Thu, Jun 13, 2019 at 01:03:42PM +0300, Laurent Pinchart wrote:
> Hi Simon,
> 
> On Thu, Jun 13, 2019 at 12:02:46PM +0200, Simon Horman wrote:
> > On Wed, Jun 12, 2019 at 03:15:56PM +0300, Laurent Pinchart wrote:
> > > On Wed, Jun 12, 2019 at 09:37:14AM +0200, Geert Uytterhoeven wrote:
> > >> On Sun, Jun 9, 2019 at 1:11 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
> > >>> It is necessary to reset the LVDS Interface according to display on/off.
> > >>> Therefore, this patch adds CPG reset properties in DU device node
> > >>> for the R8A77995 SoC.
> > >>>
> > >>> This patch was inspired by a patch in the BSP by Takeshi Kihara <takeshi.kihara.df@renesas.com>.
> > >>>
> > >>> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
> > >> 
> > >> Thanks for your patch!
> > >> 
> > >>> --- a/arch/arm64/boot/dts/renesas/r8a77995.dtsi
> > >>> +++ b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
> > >>> @@ -1001,6 +1001,8 @@
> > >>>                         clocks = <&cpg CPG_MOD 724>,
> > >>>                                  <&cpg CPG_MOD 723>;
> > >>>                         clock-names = "du.0", "du.1";
> > >>> +                       resets = <&cpg 724>, <&cpg 724>;
> > >>> +                       reset-names = "du.0", "du.1";
> > >> 
> > >> These are not the LVDS resets, but the (shared) DU channel resets.
> > >> 
> > >> The LVDS interface has its own separate device node, so if you want to
> > >> be able to reset that, you need to add reset properties to the LVDS
> > >> node instead.
> > >> 
> > >> Note that I haven't reposted a new version of "[PATCH v2] dt-bindings:
> > >> drm: rcar-du: Document optional reset properties"[1] yet, after the
> > >> split off of the LVDS interface into its own device node. Laurent wanted
> > >> to wait until the driver gained DU reset support.
> > >> However, the above differs from my proposal, as it also adds "du.1",
> > >> pointing to the same (shared) reset.
> > >> With a fresh look (2 years later ;-), that actually makes sense, so
> > >> perhaps I should change my proposal and repost? We do have shared
> > >> resets in other places (e.g. USB).
> > >> Laurent, what do you think?
> > > 
> > > For Gen3 reset is handled at the group level, so I think specifying one
> > > entry per group is enough. If other SoCs require per-channel reset
> > > (which would surprise me as it would then imply a big redesign of the DU
> > > IP core, which may lead to a separate driver) we can always extend the
> > > bindings accordingly.
> > > 
> > >> [1] https://lore.kernel.org/linux-renesas-soc/1488817556-21410-1-git-send-email-geert+renesas@glider.be/
> > 
> > Sorry, I'm a little unclear on what the suggested way forwards is here.
> > 
> > Is it to add a reset for du.0 but not du.1 ?
> 
> Correct.

Thanks, v2 sent.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
