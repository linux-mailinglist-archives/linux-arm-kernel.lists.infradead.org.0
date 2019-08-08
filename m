Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E75A867D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 19:17:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gUBX+uo6NnHszHS2YUeHUgiKWq4TrW6wsfSDkwAnmP4=; b=tvFO2fzlxC7M7C
	oyeYldqG0FuYB/O95Y2bfLHNh4xpcouJH4dOxesRskmNnr1mpGX6bw5FUtv7rnrrbd47uS2sKilnj
	O9t8GfL4b/Fndxthtwcgeh4/9u9HhDOnu2VUl/KIEOK2fj3bpIdhjGqBigDB66ehfEXNX40co1tH9
	ogY7nHDiQJUSTQIMtBs34Z+XaHlDJJ1TO2l5iVDi5wHBhiTEvs5ruDtAL3X/e1e8YnVILHGss62jZ
	fhI5x6OtaWHbMpDiiakzvDYNLx+A9kPkkG+cLegwrq5wqHcXcnhO8dYAtZhUNCoR8T4yakwcS04ew
	s88QCa3+ad+aBbVEOcsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvm2a-0007sb-Bb; Thu, 08 Aug 2019 17:17:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvm2P-0007sF-TP
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 17:17:19 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 940F3214C6;
 Thu,  8 Aug 2019 17:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565284637;
 bh=hZaslb6oSDDnxkZ6amCxKs7QtS3Fes09yJQnXnO2j1g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eCytaCeDvAWmRXjTutwtqDwn6Oo25mZkv2apl4j80k8ZUOL/PKY1VQ9McvyqvZexQ
 UTSjoarHJVSAh4SRm2UTBks+1VL4iUTh0jyASl4+T4l9M6bd3qaAtwHsxwGUUs4rOh
 TAmHh/oR9Yb1q/vut4r4Ujt6mF37tQkp34aLOw40=
Date: Thu, 8 Aug 2019 18:17:11 +0100
From: Will Deacon <will@kernel.org>
To: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
Subject: Re: [PATCH 5/6] tty: serial: Add linflexuart driver for S32V234
Message-ID: <20190808171711.nk7ljqkugtketu4q@willie-the-truck>
References: <20190802194702.30249-1-stefan-gabriel.mirea@nxp.com>
 <20190802194702.30249-6-stefan-gabriel.mirea@nxp.com>
 <20190808080832.nleult5bknmzr3ze@willie-the-truck>
 <VI1PR0402MB28635661A4A294EC6F01095EDFD70@VI1PR0402MB2863.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR0402MB28635661A4A294EC6F01095EDFD70@VI1PR0402MB2863.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_101717_973795_E9F1AF11 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Cosmin Stefan Stoica <cosmin.stoica@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Larisa Ileana Grigore <larisa.grigore@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Aug 08, 2019 at 12:47:00PM +0000, Stefan-gabriel Mirea wrote:
> On 8/8/2019 11:08 AM, Will Deacon wrote:
> > On Fri, Aug 02, 2019 at 07:47:23PM +0000, Stefan-gabriel Mirea wrote:
> >> +             linflex,<addr>
> >> +                     Use early console provided by Freescale LinFlex UART
> >> +                     serial driver for NXP S32V234 SoCs. A valid base
> >> +                     address must be provided, and the serial port must
> >> +                     already be setup and configured.
> > 
> > Why isn't earlycon= sufficient for this?
> 
> "earlycon=" is not actually supported. I will fix this in the next
> version by adding a /chosen/stdout-path to the dts. The compatible
> string provided to OF_EARLYCON_DECLARE will also be changed from
> "fsl,s32v234-linflexuart" to "fsl,s32-linflexuart" to match the one in
> the device tree nodes. I missed this after importing a rename from our
> codebase.
> 
> Should I remove this addition from kernel-parameters.txt after that?

Yes, if you can use earlycon instead, then you can drop your custom option
entirely and therefore there's no need to document it either.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
