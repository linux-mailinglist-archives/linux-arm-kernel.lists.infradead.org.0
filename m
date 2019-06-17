Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD1847F6F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 12:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IRAiDBp89VdpwsNZ2K8962KL9aMp4lzKRsCk750f5W0=; b=mCAmGxfHg9QpUB
	TXXAz7Drp5eH2v4D9bXDVoI8+NaGH/Q9jZC72sW6P3TMOxOW6M0/jdJDYRsjZ/ZEAp9PeZngjMGoN
	pRz5DFuvCBYW6V0DjfiOM0DtLSgsYVPPbjidz0PsWF47uMQGK/FK7Tfunj08EGAZsYf/FgZpHLrjJ
	0Yr5FQ7cicyDJDr5JwIXNYPK1JJXOTzcPst6JJcNMXXZFoG80d7/yxjMJoInywaxQMyNwpdDLNOwx
	hRyqP6NGbUMNFuTWQZ2rMhnDwt8RmUwAo24Xrr33CKQWp97p8G7r2g2geuASmjyWUclNrWiUqEDk3
	jUuDG76805att0JqD2lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcofj-0002pR-DM; Mon, 17 Jun 2019 10:15:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcofV-0002nX-Co
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 10:15:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mol@pengutronix.de>)
 id 1hcofP-0005vG-6c; Mon, 17 Jun 2019 12:15:11 +0200
Received: from mol by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mol@pengutronix.de>)
 id 1hcofM-0005lC-MF; Mon, 17 Jun 2019 12:15:08 +0200
Date: Mon, 17 Jun 2019 12:15:08 +0200
From: "m.olbrich@pengutronix.de" <m.olbrich@pengutronix.de>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v1] dmaengine: imx-sdma: remove BD_INTR for channel0
Message-ID: <20190617101508.47jk72yrtplxpgzs@pengutronix.de>
Mail-Followup-To: Robin Gong <yibin.gong@nxp.com>,
 "thesven73@gmail.com" <thesven73@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
References: <20190614083959.37944-1-yibin.gong@nxp.com>
 <CAOMZO5Do+BsZEX43w283yWed8fQVtTC+zAvoktPLTj4c_f798w@mail.gmail.com>
 <CAGngYiUWy5FM-zsT55-yY=kahLObZGYw=zU0F9Tzp9T2S3G6LA@mail.gmail.com>
 <20190614180913.d66bbjrnw3gxt663@pengutronix.de>
 <1560766686.30149.36.camel@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560766686.30149.36.camel@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:14:57 up 30 days, 16:33, 85 users,  load average: 0.05, 0.19, 0.22
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mol@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_031517_440897_516D49E2 
X-CRM114-Status: GOOD (  25.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "thesven73@gmail.com" <thesven73@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "vkoul@kernel.org" <vkoul@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 02:14:34AM +0000, Robin Gong wrote:
> On 2019-06-14 at 18:09 +0000, Michael Olbrich wrote:
> > On Fri, Jun 14, 2019 at 09:25:51AM -0400, Sven Van Asbroeck wrote:
> > > =

> > > On Fri, Jun 14, 2019 at 6:49 AM Fabio Estevam <festevam@gmail.com>
> > > wrote:
> > > > =

> > > > =

> > > > According to the original report from Sven the issue started to
> > > > happen
> > > > on 5.0, so it would be good to add a Fixes tag and Cc stable so
> > > > that
> > > > this fix could be backported to 5.0/5.1 stable trees.
> > > Good catch !
> > > =

> > > However, the issue is highly timing-dependent. It will come and go
> > > depending
> > > on the kernel version, devicetree and defconfig. If it works for me
> > > on
> > > 4.19, that
> > > doesn't mean the bug is gone on 4.19.
> > > =

> > > Looking at the commit history, I think the commit below possibly
> > > introduced the
> > > issue. Until this commit, sdma_run_channel() would wait on the
> > > interrupt
> > > before proceeding. It has been there since 4.8:
> > > =

> > > Fixes: 1d069bfa3c78 ("dmaengine: imx-sdma: ack channel 0 IRQ in the
> > > interrupt handler")
> > I think this is correct. Starting with this commit, the interrupt
> > status fr
> > channel 0 is no longer cleared in sdma_run_channel0() and
> > sdma_int_handler() is always called for channel 0.
> > During firmware loading the interrupts are enabled again just before
> > the
> > clocks are disabled. The interrupt is pending at this moment so on a
> > single
> > core system I think this will always work as expected. If the
> > firmware
> > loading and the interrupt handler run on different cores then this is
> > racy.
> > Maybe something else changed to make this more likely?
> > =

> > With this new change sdma_int_handler() is no longer called for
> > channel 0
> > right, so you should also remove the special handling there.
> What's 'special handling' should be removed here? Do you mean put below
> pieces of your patch back?
> =A0static int sdma_load_script(struct sdma_engine *sdma, void *buf, int
> size,
> @@ -727,9 +720,9 @@ static irqreturn_t sdma_int_handler(int irq, void
> *dev_id)
> =A0=A0=A0=A0=A0=A0=A0=A0unsigned long stat;
> =A0
> =A0=A0=A0=A0=A0=A0=A0=A0stat =3D readl_relaxed(sdma->regs + SDMA_H_INTR);
> -=A0=A0=A0=A0=A0=A0=A0/* not interested in channel 0 interrupts */
> -=A0=A0=A0=A0=A0=A0=A0stat &=3D ~1;
> =A0=A0=A0=A0=A0=A0=A0=A0writel_relaxed(stat, sdma->regs + SDMA_H_INTR);
> +=A0=A0=A0=A0=A0=A0=A0/* channel 0 is special and not handled here, see
> run_channel0() */
> +=A0=A0=A0=A0=A0=A0=A0stat &=3D ~1;

I think the "stat &=3D ~1;" can be removed completely. This bit should never
be set, now that the interrupt for channel 0 is disabled.

Michael

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
