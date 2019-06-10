Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E63D33B683
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 15:53:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGMALFrkqc9MHxonRM3KVaQsvl1sR3UQhcbRmNL7fUs=; b=CFKpytxqs8c4vf
	k0k5DA/pg38O1JyzsLnjB6Q8CkopIQ9YH1sx2k5+N6SU1R21ggCpnKNGHfFNqNhmvfJDCn2J5iPIJ
	IJjkT8+Hrm6+rjTXgAJq3JNCV9jrEylMmpFC+IuxqgRcxUT4Cu4nHS5QoBCA2l5DPAhaDugTbHEw4
	JeMudhUh1icbFZjetkNdDLDP7lyMcHW3xO0IDgp6x4fMxH9N0qWzVS6qN7sB00VFP0EBk9UUPm7qW
	jNvA83374TccrUNgydvCKDSPvkO5QjORdJjvZK49M3zkje0OSWLRn1OqTzBWOo4oB814NnkdoDCeC
	wPTu/LCJUh8dg54zI+ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haKjp-0002Ij-8d; Mon, 10 Jun 2019 13:53:29 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haKjc-0002Hd-8x
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 13:53:17 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id E71D080245; Mon, 10 Jun 2019 15:52:57 +0200 (CEST)
Date: Mon, 10 Jun 2019 15:52:58 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Angus Ainslie <angus@akkea.ca>
Subject: Re: [PATCH v15 0/3] Add support for the Purism Librem5 devkit
Message-ID: <20190610135258.GA7976@xo-6d-61-c0.localdomain>
References: <20190528125747.1047-1-angus@akkea.ca>
 <20190605090315.GJ29853@dragon>
 <db174b0173d0bcdb9ab5ff4e2e1cc4bc@www.akkea.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <db174b0173d0bcdb9ab5ff4e2e1cc4bc@www.akkea.ca>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_065316_469395_ACAA1CBD 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Abel Vesa <abel.vesa@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Shawn Guo <shawnguo@kernel.org>,
 Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 2019-06-05 06:48:05, Angus Ainslie wrote:
> On 2019-06-05 03:03, Shawn Guo wrote:
> >On Tue, May 28, 2019 at 05:57:44AM -0700, Angus Ainslie (Purism) wrote:
> >>The Librem5 devkit is based on the imx8mq from NXP. This is a default
> >>devicetree to boot the board to a command prompt.
> >>
> >>Changes since v14:
> >>
> >>Add regulator-always-on for the SNVS regulators.
> >>Added pgc nodes.
> >>Fixed charger pre-current.
> >
> >Since Pavel was reviewing your patches, you should copy him on the new
> >version.  Has this version addressed all his review comments?
> >
> 
> Sorry I had meant to include him in the CC.
> 
> I believe so but don't want to speak for him so we should see if he
> has anymore.

I did not check the code, sorry.

I still believe your shutdown voltage is too low; try that. Battery will go down from 3V
to 2.8V in seconds, so you don't really gain anything by using lower threshold, and you
may not even have enough time to shutdown the system if you set it too low.

Normally something like 3.0V, 3.2V is reasonable shutdown voltage.

Best regards,
										Pavel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
