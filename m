Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A27561F37A5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:09:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wK8F6gRz/5RzxhyrH3Qmz6QClGqZjncOqA3yr3qdJfE=; b=FhbWhJTuWTZUQR
	mbyk6A5unLyeZ7UTUhIct6XxG8DfgQUfBytP4eZbZ17S1STMHAWcZIAxeRo4dqRmTjEirg9FRw3+c
	u0a5ZlCdcFPGm+kxRLmYjojJjn6RDddAhaamZibnSt/2PT/wZqMWQ9Knw3O9edO7gEtaMoxGJpv2f
	TM0ZTYdyMFo40nXcnBpty/EAEAwXwBCQrq5Mo4AVN7ff+Zwd7vcHweGi0dZvczd8Q2eql4DiI3fQG
	ZtJ0+90yeJO/qmmSU6vX7YvkxYTwMhoxknF9utXN+S63lIV0QqFYRLU4xUpaYKU+wxPqMACcksidQ
	ciwkzX7u1mJH94oMnHOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jibCB-0007ix-RF; Tue, 09 Jun 2020 10:09:27 +0000
Received: from mx1.tq-group.com ([62.157.118.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jibC1-0007iK-Mw
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 10:09:19 +0000
IronPort-SDR: jErgPSIB/WSiH+a1Hq3pftnMY6r1FcRF2ElYPKPuTxNAL4T+rIrm63FXJtd8VaWQvXYiNJOkmK
 GtMMkWEkh3lc17sCykdwIjxBqQbGwbIx57MbTntVjEvSbMK/LPIKSeqvly7GZl8wG3fXJ0rChQ
 5PTRNvTtOzNy/MY6ftbgH8H6lWPsbDsxfognad+WoWL35VvueL0kZPClQqTsT8iix0PJ5RpOtu
 yj5mbJ3qv0T296MYuMq7QDuHNSEhE8STGq+EX0WVMT4UAB7l+I2r7Aqwqkpet85ymu5yUsok7y
 E6o=
X-IronPort-AV: E=Sophos;i="5.73,491,1583190000"; d="scan'208";a="12612833"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
 by mx1-pgp.tq-group.com with ESMTP; 09 Jun 2020 12:09:12 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
 by tq-pgp-pr1.tq-net.de (PGP Universal service);
 Tue, 09 Jun 2020 12:09:12 +0200
X-PGP-Universal: processed;
 by tq-pgp-pr1.tq-net.de on Tue, 09 Jun 2020 12:09:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1591697352; x=1623233352;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MtHoMJGjG11zHUOCfPMyUFC2SmxvJOGVvGMQIDbciW0=;
 b=HYPb0tzsXEpnqbEPGGQjjMyVPiIhr/AWFfp0EFW7jfQ1nf2BBCVrxys3
 ywHQ7VGkxVd4caxR8WVZs+Sw1vIGI8TAAcUV/VA9pKlp84HRGieyNqwad
 Fu7XdnwIimoJkDdp1Bm7Aw+1+VbZkOM8hA/dcyt14fE9NWUnj+GpIsJMn
 b5EwDAQeHXgPcu+v2AGbRxPw249Xt3oYJQtrOSFjr+mR6Qv50AL7zdl12
 E0f8CKRLlAXm+I4nwsswBy6dArjEya/L5pVY6HHrj962Ig0UnsibkMXLn
 CqVO61q6fiYBvN1V7H+7Mmq5LJpewYuaYxSF4Q9i5OrYqn/ng8+6QpKwy g==;
IronPort-SDR: KCraRdimNvw/UGtgYO/E9pVrjS0c7g0UfkmuCv8NnFRstj3BPvALb83QZGeoOI7RK4NJTNYfCI
 WSZvS9Rb/HjuoWsiJArNnpbQjviseAg6htmr0Forqf+UPOPXYP0a1BOqw7fSyiC4FW5yBJU2sK
 8ZrGJFge7359WBHeN3e1lj5hSa5XzIqbUDZ6pCphnpsOQxFMdLMdJjqiZECQARu1Y5YNkGVG/v
 VJaN/gOddTLvlTfLOrPnfI414HITUvJfj4waT0W0G9N2RrpXwCpAbJA2evU5FSm1jf8KOfE4G5
 JvQ=
X-IronPort-AV: E=Sophos;i="5.73,491,1583190000"; d="scan'208";a="12612832"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
 by mx1.tq-group.com with ESMTP; 09 Jun 2020 12:09:12 +0200
Received: from schifferm-ubuntu4.tq-net.de (schifferm-ubuntu4.tq-net.de
 [10.117.49.26])
 by vtuxmail01.tq-net.de (Postfix) with ESMTPA id CC0B8280065;
 Tue,  9 Jun 2020 12:09:18 +0200 (CEST)
Message-ID: <4a663b38fe5c6b2ee37049fb0dcd88b70dbf232e.camel@ew.tq-group.com>
Subject: Re: (EXT) Re: [PATCH v9 RESEND 01/13] spi: imx: add
 dma_sync_sg_for_device after fallback from dma
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Robin Murphy <robin.murphy@arm.com>
Date: Tue, 09 Jun 2020 12:09:09 +0200
In-Reply-To: <bcfc3637-65af-577a-ddbd-890b6c83a6e6@arm.com>
References: <1591485677-20533-1-git-send-email-yibin.gong@nxp.com>
 <1591485677-20533-2-git-send-email-yibin.gong@nxp.com>
 <20200608143458.GH4593@sirena.org.uk>
 <VE1PR04MB66388F89015F774EE3FFF69D89850@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200608153139.GI4593@sirena.org.uk>
 <59ce3620-00b9-bac1-30e1-011a29583642@arm.com>
 <VE1PR04MB6638B1EC49D295C64292B7BD89820@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <bcfc3637-65af-577a-ddbd-890b6c83a6e6@arm.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_030918_213263_8719F207 
X-CRM114-Status: GOOD (  30.44  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "martin.fuzzey@flowbird.group" <martin.fuzzey@flowbird.group>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 Robin Gong <yibin.gong@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2020-06-09 at 11:00 +0100, Robin Murphy wrote:
> On 2020-06-09 06:21, Robin Gong wrote:
> > On 2020/06/09 0:44 Robin Murphy <robin.murphy@arm.com> wrote:
> > > On 2020-06-08 16:31, Mark Brown wrote:
> > > > On Mon, Jun 08, 2020 at 03:08:45PM +0000, Robin Gong wrote:
> > > > 
> > > > > > > +	if (transfer->rx_sg.sgl) {
> > > > > > > +		struct device *rx_dev = spi->controller-
> > > > > > > >dma_rx->device->dev;
> > > > > > > +
> > > > > > > +		dma_sync_sg_for_device(rx_dev, transfer-
> > > > > > > >rx_sg.sgl,
> > > > > > > +				       transfer->rx_sg.nents,
> > > > > > > DMA_TO_DEVICE);
> > > > > > > +	}
> > > > > > > +
> > > > > > This is confusing - why are we DMA mapping to the device
> > > > > > after doing
> > > > > > a PIO transfer?
> > > > > 'transfer->rx_sg.sgl' condition check that's the case
> > > > > fallback PIO
> > > > > after DMA transfer failed. But the spi core still think the
> > > > > buffer
> > > > > should be in 'device' while spi driver touch it by PIO(CPU),
> > > > > so sync it back to
> > > 
> > > device to ensure all received data flush to DDR.
> > > > 
> > > > So we sync it back to the device so that we can then do another
> > > > sync
> > > > to CPU?  TBH I'm a bit surprised that there's a requirement
> > > > that we
> > > > explicitly undo a sync and that a redundant double sync in the
> > > > same
> > > > direction might be an issue but I've not had a need to care so
> > > > I'm
> > > > perfectly prepared to believe there is.
> > > > 
> > > > At the very least this needs a comment.
> > > 
> > > Yeah, something's off here - at the very least, syncing with
> > > DMA_TO_DEVICE on
> > > the Rx buffer that was mapped with DMA_FROM_DEVICE is clearly
> > > wrong.
> > > CONFIG_DMA_API_DEBUG should scream about that.
> > > 
> > > If the device has written to the buffer at all since dma_map_sg()
> > > was called
> > > then you do need a dma_sync_sg_for_cpu() call before touching it
> > > from a CPU
> > > fallback path, but if nobody's going to touch it from that point
> > > until it's
> > > unmapped then there's no point syncing it again. The
> > > my_card_interrupt_handler() example in DMA-API_HOWTO.txt
> > > demonstrates
> > > this.
> > 
> > Thanks for you post, but sorry, that's not spi-imx case now,
> > because the rx data in device memory is not truly updated from
> > 'device'/DMA, but from PIO, so that dma_sync_sg_for_cpu with
> > DMA_FROM_DEVICE can't be used, otherwise the fresh data in cache
> > will be invalidated.
> > But you're right, kernel warning comes out if CONFIG_DMA_API_DEBUG
> > enabled...
> 
> Ah, I think I understand what's going on now. That's... really ugly
> :(
> 
> Looking at the SPI core code, I think a better way to handle this
> would 
> be to have your fallback path call spi_unmap_buf() directly (or
> perform 
> the same actions, if exporting that to drivers is unacceptable),
> then 
> make sure ->can_dma() returns false after that such that
> spi_unmap_msg() 
> won't try to unmap it again. That's a lot more reasonable than trying
> to 
> fake up a DMA_TO_DEVICE transfer in the middle of a DMA_FROM_DEVICE 
> operation on the same buffer.
> 
> Alternatively, is it feasible to initiate a dummy DMA request during 
> probe, such that you can detect the failure condition and give up on
> the 
> DMA channel early, and not have to deal with it during a real SPI
> transfer?
> 
> Robin.


Would this cover the transient DMA failure that is happening between
SDMA registration and firmware load? This is exactly the case for which
the PIO fallback is triggered for us: As soon as the SDMA driver is
registered, the SPI driver can be probed as well, usually failing its
first DMA transfer, as the SDMA firmware is not loaded yet. We would
still like the SPI controller to use DMA as soon as it's actually
available.

I assume the actual issue is that the SDMA controller is considered
registered before the firmware load has finished, but I have no idea
how feasible it would be to change that (some comments in the code
explain why this currently isn't the case).

Matthias


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
