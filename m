Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BEF158E9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 13:36:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SUC7JCrDZzRIkjBW6b2KJYqh1y2zqD30VjlQNA0LK20=; b=gZSvuC3O0iypVg+Cb0bix7xJ5
	G7H+fuRemP7ZzuImsHKxdn0APcl6sblb4mGsHmsrRHXVBoNh4yyNuLsHowJZpQzYNV+ShTArHLJ0h
	mLIA50wwmj/cTB1DGANKmtFU2cx9jOh6HO7M+DnDDqCMXgAVpJ/hNcOzGGQM2MJKtlnCVp1XwHBk8
	S3Blrtipb8NLLe6vcaS/4ee0Q5OABLdxbGeA/x6svdd0xdDJ/ebEAFCNS4v6pUhpsbvWzS80C/277
	nv3G2HFZVq8kc615KUtO7/BqjyftiwgAOn+Fe97PX3w19cVcNYzPi8vSAXOTYxB1UI1vc3nWaXe/q
	v1DS5fjQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1UmP-0008HG-G7; Tue, 11 Feb 2020 12:36:41 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1UmI-0008Gx-Ku
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 12:36:35 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id EFD4A4B4;
 Tue, 11 Feb 2020 07:36:32 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Tue, 11 Feb 2020 07:36:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=I7R5t+oJ11Qar6Bmz2S2ooG/64p
 DbUaa5UgCCCyeYYI=; b=VENTfhDyNU/nohwR7QcAST69TqWSr2d/wNH8QI4jCOV
 ZXKmZISEUb1NIy0cYPA7o5viL1X2PUV8dJgQopnVbwobn55YC4itmjDotKUBgdLH
 Qkstu91VinoJbTDqHVjrm53PMMoZuBbBfX9Y/6J3JlqswtKyYY3cCVYJXyFF4v+C
 RmaPhGOtIU+EpOW7ubhCQFzenRC5prH/mNlLIRefhmYaXjMhgxg35IMUq8GOtBOs
 /QAdbY1LxBWZuKcB6jdHfmeKyjLgYQol2eBg3WdwN3bVo42xl1ipIdnkYmwBd3ZX
 DZzjRodSff6HojEljjyfODfRP6F5SLfOKBvw9hGhDvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=I7R5t+
 oJ11Qar6Bmz2S2ooG/64pDbUaa5UgCCCyeYYI=; b=PSSRAx3Sr76flVFaPwYeju
 U01EmzvXXbSc9lwAeE3eqb3m48/ue8uGxvq2btaHjA4qZGa1XNwp59IKQJUJL81+
 PgCckv834RPuE8gzWR3IFwUjC3gH7tX1tOB2REpyjDTBMf2yQeN+nDn6eeeOSeBV
 SMEeYPYZkQcSFG2Hnt4o39q1wmSgPtkuQtTmE2kn6gLdb3cO7L40b8/n0ffoJvan
 BFc9L7M/ZekXh6jveyeVfcxfI7aK0WJlxiEgCpeP5Gqmbb5Hod7+1UyJ72h40QaX
 QEmJ/Nlx2hjAHFBRoWb1XSbHIKciIYVdugl6t1HeFSkitvzKX0zccMhUOJXoGpBw
 ==
X-ME-Sender: <xms:0J9CXvnRjjoNZlhk1JZ1Dco2SSJjbr8w35Z4nORAVhopqX3KgSSb5g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrieefgdegfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtjeenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:0J9CXgBwcrsu_M7ezj5uYaWvkPnLli_V2kn17-FTQOTVm2rmTu7dRg>
 <xmx:0J9CXto-5348sBthfsb1cIJQ1A4KDoCAuqKChW1QZBQDTjRSRz9Deg>
 <xmx:0J9CXoTFVjs5tBSmbU1F9CSGOxQbWhViRBjW34hQdCbfKpvFOmisAg>
 <xmx:0J9CXjhO54mLNf8FhFgmXyoHM95jMbwxzCVMT7NmjXqbUssrAdn1Ug>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0952B30606E9;
 Tue, 11 Feb 2020 07:36:31 -0500 (EST)
Date: Tue, 11 Feb 2020 13:36:30 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Nikolay Borisov <nborisov@suse.com>
Subject: Re: [PATCH 2/3] arm64: dts: allwinner: a64: Add hwspinlock node
Message-ID: <20200211123630.2l7liw73yaspy4eb@gilmour.lan>
References: <20200210170143.20007-1-nborisov@suse.com>
 <20200210170143.20007-3-nborisov@suse.com>
 <20200211075543.ytsxizbysdosnx4p@gilmour.lan>
 <01e31d57-48ef-fd39-7c16-45401c70bb63@suse.com>
MIME-Version: 1.0
In-Reply-To: <01e31d57-48ef-fd39-7c16-45401c70bb63@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_043634_722170_9A81E570 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, bjorn.andersson@linaro.org
Content-Type: multipart/mixed; boundary="===============2475330698104922522=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2475330698104922522==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6l2jorwdcvauxt2v"
Content-Disposition: inline


--6l2jorwdcvauxt2v
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 11, 2020 at 10:09:48AM +0200, Nikolay Borisov wrote:
>
>
> On 11.02.20 =D0=B3. 9:55 =D1=87., Maxime Ripard wrote:
> > Hi,
> >
> > On Mon, Feb 10, 2020 at 07:01:42PM +0200, Nikolay Borisov wrote:
> >> Add a node describing the hwspinlock on A64.
> >>
> >> Signed-off-by: Nikolay Borisov <nborisov@suse.com>
> >> ---
> >>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 9 +++++++++
> >>  1 file changed, 9 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm6=
4/boot/dts/allwinner/sun50i-a64.dtsi
> >> index 27e48234f1c2..01de89fc09cc 100644
> >> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> >> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> >> @@ -1182,5 +1182,14 @@
> >>  			interrupts =3D <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
> >>  			clocks =3D <&osc24M>;
> >>  		};
> >> +
> >> +		hwspinlock: spinlock@1c18000 {
> >
> > Nodes are supposed to be ordered by ascending physical address
> >
> >> +			compatible =3D "allwinner,sun50i-a64-hwspinlock";
> >> +			reg =3D <0x01c18000 0x1000>;
> >> +			clocks =3D <&ccu CLK_BUS_SPINLOCK>;
> >> +			resets =3D <&ccu RST_BUS_SPINLOCK>;
> >> +			#hwlock-cells =3D <1>;
> >> +			status =3D "disabled";
> >
> > Is there a reason to disable it?
>
> I wondered about that - on the one hand we can safely leave it always
> enabled, on the other hand all devices are are disabled in the dtsi.

Not all of them, only the one that are connected to external pins. The
PMU or GPU aren't for example.

> > Also, my understanding was that hwspinlocks were meant to be used by
> > client drivers, so surely we must tie them to other device nodes too,
> > right?
>
> Perhaps but at this point I'm not sure to which device specifically.

All the one that are shared with the ARISC core and needs some
synchronisation with the firmware running there.

Maxime

--6l2jorwdcvauxt2v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkKfzgAKCRDj7w1vZxhR
xeTbAP9ftO6Qdrp1SHs/rMSLCzDfR38ctGu3b+Dgqy3GCQDt9AD/X2yDK6DG9QO1
2PKRmcV4IvFjRLKrenplMZC5kw9WngM=
=DzOJ
-----END PGP SIGNATURE-----

--6l2jorwdcvauxt2v--


--===============2475330698104922522==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2475330698104922522==--

