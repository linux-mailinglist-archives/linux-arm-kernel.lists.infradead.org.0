Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF80A169EF7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 08:15:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lgzAszPC7tdsJbUBiUGlou3EfPCLLz3WSqiYNMWpl94=; b=IrTStqiLzVvYuA
	vfeEuX1WUKaUGQoXyKQxlxuG0kxLJQ2uq/CDDUhFyo33qTexEA/2SMncyefH1SJGRmpqi6x6veVHn
	+sfKKbCz8dhqaTaJ0NS7G+NH+hb/8u3OnPL/tww8an7hxU8B8WzHTyon6fajPJWOWb4hhpTbPLceN
	eqf+PvnuAbhkO3sptBo7R9g1FQ3S9dWYHcUII9nkPNiYYzbiprdxjfETK5oM8iuWfuwrgflifpZK2
	cKdaB3MkKcPzk+P+guXmcrst6c9eKCrJRks9p62BIeCDKesQgWCNnN9AnD+1/YI1azKDdR2RBwt6A
	3Q0L27FdY44Mg/r+srjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j67xv-0005fr-3c; Mon, 24 Feb 2020 07:15:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j67xk-0005dl-G7
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 07:15:34 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j67xc-0003s9-J8; Mon, 24 Feb 2020 08:15:24 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1j67xb-000289-6G; Mon, 24 Feb 2020 08:15:23 +0100
Date: Mon, 24 Feb 2020 08:15:23 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v3 1/2] ARM: dts: imx6: phycore-som: fix arm and soc
 minimum voltage
Message-ID: <20200224071523.3lwh563jkoxy2eng@pengutronix.de>
References: <20200116140108.6069-1-m.felsch@pengutronix.de>
 <20200213125940.GP11096@dragon>
 <20200221072751.5z7xhlrfecexrwiz@pengutronix.de>
 <20200224010648.GA14331@dragon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224010648.GA14331@dragon>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:14:26 up 100 days, 22:33, 119 users,  load average: 0.03, 0.09,
 0.04
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_231532_541765_F02E02B3 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: s.riedmueller@phytec.de, festevam@gmail.com, chf.fritz@googlemail.com,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de, c.hemp@phytec.de,
 s.christ@phytec.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-02-24 09:06, Shawn Guo wrote:
> On Fri, Feb 21, 2020 at 08:27:51AM +0100, Marco Felsch wrote:
> > Hi Shawn,
> > =

> > On 20-02-13 20:59, Shawn Guo wrote:
> > > On Thu, Jan 16, 2020 at 03:01:07PM +0100, Marco Felsch wrote:
> > > > The current set minimum voltage of 730000=B5V seems to be wrong. I =
don't
> > > > know the document which specifies that but the imx6qdl datasheets s=
ays
> > > > that the minimum voltage should be 0.925V for VDD_ARM (LDO bypassed,
> > > > lowest opp) and 1.15V for VDD_SOC (LDO bypassed, lowest opp).
> > > > =

> > > > Fixes: ddec5d1c0047 ("ARM: dts: imx6: Add initial support for phyCO=
RE-i.MX 6 SOM")
> > > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > =

> > > I failed to apply it.  Please rebase and resend.
> > =

> > Which base commit did you use? I rebased the patch on v5.6-rc1 without
> > problems.
> =

> But 'git am' fails on v5.6-rc1.

Mh.. don't see why git am complains on my side.. Anyway I will send a
new version =3D)

Regards,
  Marco

> Applying: ARM: dts: imx6: phycore-som: fix arm and soc minimum voltage
> error: patch failed: arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi:111
> error: arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi: patch does not =
apply
> Patch failed at 0001 ARM: dts: imx6: phycore-som: fix arm and soc minimum=
 voltage
> Use 'git am --show-current-patch' to see the failed patch
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".
> =

> Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
