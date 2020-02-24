Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4490D169B8F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 02:07:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GiIGfKUNWDpC7MUxhWQjIutobd6OaMSwioY4pZNEg1Y=; b=kJ4XY4hShXMDie
	bXHp++Jfl8R+7wDQFLbL/FvxZbgzsGz4lyTKDLc4+/Y/bDSxkdOG3jHolOaAw7FKWyTV2VegAF1SP
	4gR/+nJYhwrRfLnYTAkh1ud8pthfF/xTmT9Z2bWk25UL+gwkxT1Og0bnp+hpfEWael5pNKEPmwBFF
	Vrvgnh0XHlVLlQ8n5sbFhebj5TOqJ5u2mCAwHkaa2hUnaFRYxMKWk2tuB2ep7yiI1Kc7USQAr1mOB
	Yc3aC1sHVaJdUrEch3/yqn6gRPcrBT9fHO4BvFlt2tDL99BBAbFpg4ecffhQhUv+McdXCsyuzgKj0
	Qr4zpuWbmzkDr5pWZ6Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j62DG-0001PX-I6; Mon, 24 Feb 2020 01:07:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j62D2-0001P2-CZ
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 01:06:58 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7513120675;
 Mon, 24 Feb 2020 01:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582506415;
 bh=lsNjbFQqKE608xHEk8lKYYj2hX1TuMluPHYVY1CclGw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fKBxYcfkhdY6LiakZZZA8Hb4dYaTf0FiMTwA38g7B0ugsdGkRrCwPmNkAt6CBjOKc
 9MKvvIV6nvT4LlWusQPklRhaiQljx1u0yvkeHrwMekHqYEs7USTy/oelo1KBWF5BfB
 6UD2vjLLDOFaSuBKNBoR5OGWKT0NULCKuWVYtGCo=
Date: Mon, 24 Feb 2020 09:06:49 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v3 1/2] ARM: dts: imx6: phycore-som: fix arm and soc
 minimum voltage
Message-ID: <20200224010648.GA14331@dragon>
References: <20200116140108.6069-1-m.felsch@pengutronix.de>
 <20200213125940.GP11096@dragon>
 <20200221072751.5z7xhlrfecexrwiz@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200221072751.5z7xhlrfecexrwiz@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_170656_445990_277F9A95 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: s.riedmueller@phytec.de, festevam@gmail.com, chf.fritz@googlemail.com,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de, c.hemp@phytec.de,
 s.christ@phytec.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 08:27:51AM +0100, Marco Felsch wrote:
> Hi Shawn,
> =

> On 20-02-13 20:59, Shawn Guo wrote:
> > On Thu, Jan 16, 2020 at 03:01:07PM +0100, Marco Felsch wrote:
> > > The current set minimum voltage of 730000=B5V seems to be wrong. I do=
n't
> > > know the document which specifies that but the imx6qdl datasheets says
> > > that the minimum voltage should be 0.925V for VDD_ARM (LDO bypassed,
> > > lowest opp) and 1.15V for VDD_SOC (LDO bypassed, lowest opp).
> > > =

> > > Fixes: ddec5d1c0047 ("ARM: dts: imx6: Add initial support for phyCORE=
-i.MX 6 SOM")
> > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > =

> > I failed to apply it.  Please rebase and resend.
> =

> Which base commit did you use? I rebased the patch on v5.6-rc1 without
> problems.

But 'git am' fails on v5.6-rc1.

Applying: ARM: dts: imx6: phycore-som: fix arm and soc minimum voltage
error: patch failed: arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi:111
error: arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi: patch does not ap=
ply
Patch failed at 0001 ARM: dts: imx6: phycore-som: fix arm and soc minimum v=
oltage
Use 'git am --show-current-patch' to see the failed patch
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
