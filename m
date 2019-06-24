Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B3650A91
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 14:18:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nq3+MoMcCocp1NNFD8skgoExTWdgZULzOV/t1QpAokY=; b=rbLUssMaQTNdQ8
	LJ7Z+InYT/tBriY75Fv4cQZ0iJ+YD4jEaeHhH6+tsg0RaBKMLOIJIUBCYM+pNdtEjNrdQry957NKT
	PuvF7+B8KgS1Qock1fNq/IoWzVjAyKmKwUQK+dfypX2Ny/b560rKP4v3FklklXG4zpQMZLBV7esx8
	eQgjptH4XSkImdbgUnvOcLEjY8HoZCBB9bdH9f3niJUFXAYGG9I0p7cuPdCRRGKcr0cDSrxMGoFL4
	aRj6lOsV/pZSU6Y0yqBEuXa7fvqFbez+vW/LdXHUuUr9+s2JcSIQyqwgS0VUkqcpG8+G0l0uHwY5X
	4SCR3UkvLYXZNUXfC5TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfNv6-0008U3-GG; Mon, 24 Jun 2019 12:18:00 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfNuw-00086G-7r
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 12:17:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Skz2i2GLxDIs+4Dp5tjr44s+M5OvlNMyQcX73QC/PZs=; b=BzRFADz8EJEfkwk7xXOCAUP0p
 B8gDGknZjR/z6LQLUm+25EIRVSrszt54AW/hrtHQ72pdGNNB+tagPhHc29l8UeBsn+D/PPhsOvnls
 AgdaS7VzK8h5v5ewrplnnu9ANTA2/iTYNl5aPSgJZ28jRUI6kh3z2h9ei60KGuEyym5cYlUv8Yk6M
 dM+EqbBk/fq23JvdSIBFaWxESSEOGuXJTyj8LuwQGIZGVA+p9t2sK04A1sujusUagPT//Ix5RQTIG
 +uAC8R9JTZXqtrjIVUxGrWflKvko6uVfHrwj9jREcqwuCW8Of+YOYoKVC/xqXM+vC54ZxKJbvbpuF
 /JZgsDMqA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:59026)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hfNso-0007r3-Bf; Mon, 24 Jun 2019 13:15:38 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hfNsj-0006H1-Pv; Mon, 24 Jun 2019 13:15:33 +0100
Date: Mon, 24 Jun 2019 13:15:33 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [BUG] imx-sdma: readl_relaxed_poll_timeout_atomic() conversion
Message-ID: <20190624121533.3sd6mmxjfktllp2j@shell.armlinux.org.uk>
References: <20190622165318.bgyun52hssqmdv4n@shell.armlinux.org.uk>
 <20190622181029.iy72xkz3xcomwjtl@pengutronix.de>
 <20190622184237.ld7xwc5kk7sbghae@shell.armlinux.org.uk>
 <1561378450.2587.3.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561378450.2587.3.camel@pengutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_051750_284276_D5B48031 
X-CRM114-Status: GOOD (  25.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vinod Koul <vinod.koul@intel.com>, dmaengine@vger.kernel.org,
 Michael Olbrich <m.olbrich@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 02:14:10PM +0200, Lucas Stach wrote:
> Hi Russell,
> =

> Am Samstag, den 22.06.2019, 19:42 +0100 schrieb Russell King - ARM Linux =
admin:
> > On Sat, Jun 22, 2019 at 08:10:29PM +0200, Michael Olbrich wrote:
> > > On Sat, Jun 22, 2019 at 05:53:18PM +0100, Russell King - ARM Linux ad=
min wrote:
> > > > Old code:
> > > > =

> > > > -=A0=A0=A0=A0=A0=A0=A0while (!(ret =3D readl_relaxed(sdma->regs + S=
DMA_H_INTR) & 1)) {
> > > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0if (timeout-- <=3D 0)
> > > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0break;
> > > > -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0udelay(1);
> > > > -=A0=A0=A0=A0=A0=A0=A0}
> > > > =

> > > > So, while bit 0 is _clear_ the loop continues to poll.
> > > > =

> > > > =

> > > > New code:
> > > > =

> > > > +=A0=A0=A0=A0=A0=A0=A0ret =3D readl_relaxed_poll_timeout_atomic(sdm=
a->regs + SDMA_H_STATSTOP,
> > > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
reg, !(reg & 1), 1, 500);
> > > > =

> > > > Doesn't really tell us what the termination condition is (because of
> > > > the obfuscation taking away the details), but if we dig into the
> > > > macro maze:
> > > > =

> > > > #define readl_relaxed_poll_timeout_atomic(addr, val, cond, delay_us=
, timeout_us) \
> > > > =A0=A0=A0=A0=A0=A0=A0=A0readx_poll_timeout_atomic(readl_relaxed, ad=
dr, val, cond, delay_us, timeout_us)
> > > > =

> > > > #define readx_poll_timeout_atomic(op, addr, val, cond, delay_us, ti=
meout_us) \
> > > > ({ \
> > > > =A0=A0=A0=A0=A0=A0=A0=A0u64 __timeout_us =3D (timeout_us); \
> > > > =A0=A0=A0=A0=A0=A0=A0=A0unsigned long __delay_us =3D (delay_us); \
> > > > =A0=A0=A0=A0=A0=A0=A0=A0ktime_t __timeout =3D ktime_add_us(ktime_ge=
t(), __timeout_us); \
> > > > =A0=A0=A0=A0=A0=A0=A0=A0for (;;) { \
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0(val) =3D op(addr);=
 \
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0if (cond) \
> > > > =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0break; \
> > > > =

> > > > "cond" is passed in to here unmodified, so this becomes:
> > > > =

> > > > 	for (;;) {
> > > > > > > 		reg =3D readl_relaxed(sdma->regs + SDMA_H_STATSTOP);
> > > > > > > 		if (!(reg & 1))
> > > > > > > 			break;
> > > > =

> > > > So, if bit 0 of this register is clear, we terminate the loop.
> > > > =

> > > > Seems to me like this is a great illustration why using a helper
> > > > _introduces_ bugs, because it hides the detail about what the exit
> > > > condition for the embedded loop actually is, and leads to this kind
> > > > of error.
> > > > =

> > > > In any case, the conversion is obviously incorrect.
> > > > =

> > > > I occasionally see the "Timeout waiting for CH0 ready" error during
> > > > boot on a cbi4, which, given the above, means that we did end up
> > > > seeing bit 1 set (so according to the old code, we waited
> > > > successfully.)
> > > =

> > > The old code was polling SDMA_H_INTR so it waited for the bit to be s=
et.
> > > The new code (as documented in the commit message) polls SDMA_H_STATS=
TOP
> > > instead.
> > > I believe this register is called SDMAARM_STOP_STAT in the reference
> > > manual. And the documentation states: "Reading this register yields t=
he
> > > current state of the HE[i] bits".
> > > And from the documentation of the SDMA "DONE" instruction:
> > > "Clear HE bit for the current channel, send an interrupt to the Arm
> > > platform for the current channel and reschedule."
> > > =

> > > My interpretation of this is, that waiting for the bit in SDMA_H_STAT=
STOP
> > > to become zero has the same effect as waiting for the bit in SDMA_H_I=
NTR to
> > > be set. Or am I missing something?
> > =

> > So, why do all my iMX6 platforms now randomly spit out:
> > =

> > "imx-sdma 20ec000.sdma: Timeout waiting for CH0 ready"
> =

> This is due to a DT misconfiguration which was uncovered with a recent
> driver change (25aaa75df1e6 dmaengine: imx-sdma: add clock ratio 1:1
> check) and fixed with (941acd566b18 dmaengine: imx-sdma: Only check
> ratio on parts that support 1:1). Please switch to a recent stable
> kernel, 5.1.5 has the fix included.

Please point to the fix, thanks.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
