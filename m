Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41BB4FA74
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:33:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uh4ak3WMezDCIqPlAcVK6rxmByPKgnH5o9uCfWBZeJQ=; b=Yl7l4B/qEBkgTt
	o5ZlP3+XsEiLixShNU+TTOSxJOF/ARTuZexKzIRE8dXHGCNbc1lVsCDkQQmtzQM8Gu5ZuDi67GiHx
	Fva9pBm9ngmXpHAej7jsjTQWNkii8ySFSb5jLuoN9NoklItvLDwIhdVG8tTY3PkPmLnU2FgfNlJSA
	SgwXEAxZTtKg8ALRiw5ZNkuKmNx+S624eA+eTfbbVBcZ8Xji0fFWbf5ip324s5BBbzTBwL85J/qNj
	pSfQMOKu41VYwYIzVluUCn26hydwEk032oJxvdlZysTraT2vHWmy2Ofnt8kxHaJx6FJCJZLfFQI8z
	6aP+PivVGEPcokpnS2Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSsV-0008T3-96; Tue, 30 Apr 2019 13:32:59 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSsO-0008SV-AE
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:32:54 +0000
Received: by newverein.lst.de (Postfix, from userid 2005)
 id B0B1367358; Tue, 30 Apr 2019 15:32:32 +0200 (CEST)
Date: Tue, 30 Apr 2019 15:32:32 +0200
From: Torsten Duwe <duwe@lst.de>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH RFC] arm64: dts: allwinner: a64: teres-i: Enable audio
Message-ID: <20190430133232.GA18808@lst.de>
References: <E1gtUZn-0000NW-MA@stardust.g4.wien.funkfeuer.at>
 <20190212100929.iqsxu443qrkl6myf@flea>
 <E1gtds8-0000NB-Re@stardust.g4.wien.funkfeuer.at>
 <20190213094442.da2dy6d5bb527nft@flea>
 <E1gtsx9-0000RP-08@stardust.g4.wien.funkfeuer.at>
 <20190213155311.ovkpim3lxwyvuhhj@flea>
 <E1gu4dx-0000Sy-2B@stardust.g4.wien.funkfeuer.at>
 <20190215142029.GB32618@lst.de>
 <E1gv6rh-0000Km-U8@stardust.g4.wien.funkfeuer.at>
 <20190218102442.l3br2h3oqfe2atdv@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190218102442.l3br2h3oqfe2atdv@flea>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_063252_516482_D5FD62C2 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
 info@olimex.com, Mark Brown <broonie@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Harald Geyer <harald@ccbib.org>,
 ibu@radempa.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 18, 2019 at 11:24:42AM +0100, Maxime Ripard wrote:
> On Sat, Feb 16, 2019 at 09:47:13PM +0100, Harald Geyer wrote:
> > 
> > > Would you care to submit a patch version without that GPIO handled?
> > > I think it's very useful and has the potential to be agreed upon.
> > 
> > That would enable audio from the internal speakers but select debug
> > output on the HP jack by default. I would be okay with that, despite
> > still thinking that audio on the head phones should be the default.
> > 
> > Maxime and Wens are the maintainers, so it's their call in the end.
> 
> At this point, I'm not really convinced by the solution in that patch,
> but I don't have really good ideas either. I think it would be good to
> discuss this with Mark and Linus Walleij, they will probably have way
> better solutions than what I can come up with.

Once more my plead to *please* apply the unchallenged parts of this patch!

For reference:
https://patchwork.kernel.org/patch/10792589/


Just leave out the line

+	hpvcc-supply = <&reg_eldo1>; /* TODO: Use only one of these */
(as clarified by ChenYu)

and the

@@ -131,6 +151,14 @@ 
 	status = "okay";
 };
 
+&r_pio {
+	r_debug_select_pin: debug-select {
[...]

hunk, which the discussion was about. The patch is of good value
even without it.

IMHO it's a shame this didn't make it into 5.1

Acked-by: Torsten Duwe <duwe@suse.de>

	Torsten


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
