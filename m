Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3186E15F5F0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 19:45:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zcP6C7Tk3TmsqggQLq1WeW7zHXwF3XQDuKXFrAcF/YY=; b=c7JJMl//dctdHx
	lG0Yv42+aAhKntkpjdHzCvW3neA4lT2/MTXx36++W9FTuClNmny9J9poMk/c1hUMuNnE8BE9fwBzl
	5jmY2PLOeHyues/QshXG/xx7e7qfaCHo2AWq/XV1C0CMt9MTQwbzXuPZ1+y9iyL91cv7JYIxNF/Oc
	2/e81iXXe0DpA8ltXz8uleLYQZiyd/+uLAseiFGbNWzlte750TQ8ueUwl/pph7SONSZqXddEnI+kY
	ILKgZ46goLlMmxeqBSbzQc3/zFnybXm5LIE2lItqLdFvg3o8ahGGnreneNhrxpTZpo0eBf6ZmqEGB
	mXU4iHKcNTrBReFyE7SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2fxl-0000PJ-FE; Fri, 14 Feb 2020 18:45:17 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2fxV-0008R8-3R
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 18:45:02 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 2F8A3FB03;
 Fri, 14 Feb 2020 19:44:56 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Exb_RJVpsLOz; Fri, 14 Feb 2020 19:44:55 +0100 (CET)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 1B2F840E06; Fri, 14 Feb 2020 19:44:54 +0100 (CET)
Date: Fri, 14 Feb 2020 19:44:53 +0100
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: Re: [PATCH v1 00/12] arm64: dts: librem5-devkit: description updates
Message-ID: <20200214184453.GA38549@bogon.m.sigxcpu.org>
References: <20200205143003.28408-1-martin.kepplinger@puri.sm>
 <5f81b30a-d00f-9331-dc70-161376cfc008@puri.sm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5f81b30a-d00f-9331-dc70-161376cfc008@puri.sm>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_104501_311402_2A9A6492 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, robh@kernel.org, kernel@puri.sm, Anson.Huang@nxp.com,
 devicetree@vger.kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
On Thu, Feb 13, 2020 at 03:08:57PM +0100, Martin Kepplinger wrote:
> On 05.02.20 15:29, Martin Kepplinger wrote:
> > These are additions to the imx8mq-librem5-devkit devicetree description
> > we are running for quite some time. All users should have them:
> > 
> > Angus Ainslie (Purism) (11):
> >   arm64: dts: librem5-devkit: add sai2 and sai6 pinctrl definitions
> >   arm64: dts: librem5-devkit: add the simcom 7100 modem and audio
> >   arm64: dts: librem5-devkit: allow modem to wake the system from
> >     suspend
> >   arm64: dts: librem5-devkit: enable sai2 audio interface
> >   arm64: dts: librem5-devkit: add the sgtl5000 i2c audio codec
> >   arm64: dts: librem5-devkit: add a vbus supply to usb0
> >   arm64: dts: librem5-devkit: add the regulators for DVFS
> >   arm64: dts: librem5-devkit: add a battery for the bq25896 to monitor
> >   arm64: dts: librem5-devkit: allow the redpine card to be removed
> >   arm64: dts: librem5-devkit: configure VSELECT
> >   arm64: dts: librem5-devkit: increase the VBUS current in the kernel
> > 
> > Martin Kepplinger (1):
> >   arm64: dts: librem5-devkit: add lsm9ds1 mount matrix
> > 
> >  .../dts/freescale/imx8mq-librem5-devkit.dts   | 173 +++++++++++++++++-
> >  1 file changed, 165 insertions(+), 8 deletions(-)
> > 
> 
> hi,
> 
> any objections or opinions on these additions?

I think

'arm64: dts: librem5-devkit: add a battery for the bq25896 to monitor'

should be dropped since the driver does not process any battery
information.

Cheers,
 -- Guido

> 
> thanks!
> 
>                                   martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
