Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0BA3C698
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 10:53:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I6VkaVWqoREzV8T8UhybzPAnvOFMOm7cUylVN+4CXUs=; b=WUQxye6Pg3zgpx
	TgXqEzK8FlmozZ1AR/cmB/QvmAI5wOG5Kp0o0Be/JNABLUmNKjlntcfFnr1l1kYeTLjZj2u9djN9a
	mBXLpLHrZGgSV4w930pxelsv1zEY9uk+nVR366NjZ4mp8+uoqtguEe6+zve4DobwkYCTr2BDr7iLt
	pBDeTaLd4gobikwytqBC/hpRGMuiZnYwgE8twMJc6xVavOvaSHBKr1n5lgF7jJfKLGP156ljV8emP
	0Onp6+qFnOcq9wy/dQUXbNo84+xqN7jUBsLiPDzslHM+qSH5S2jaTjngFfTc/weCfFU51uMJXE+tu
	VJgrJ4EuX6bau9ebZjGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hacXB-0000u0-B6; Tue, 11 Jun 2019 08:53:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hacVt-0000FP-DW
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 08:52:19 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1hacVl-0000Hr-C9; Tue, 11 Jun 2019 10:52:09 +0200
Message-ID: <1560243127.13886.3.camel@pengutronix.de>
Subject: Re: [PATCH v7 2/4] media: videodev2: add
 V4L2_FMT_FLAG_FIXED_RESOLUTION
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Hans Verkuil <hverkuil@xs4all.nl>, Maxime Jourdan
 <mjourdan@baylibre.com>,  Mauro Carvalho Chehab <mchehab@kernel.org>, Hans
 Verkuil <hans.verkuil@cisco.com>
Date: Tue, 11 Jun 2019 10:52:07 +0200
In-Reply-To: <9731b2db-efd4-87d0-c48d-87adec433747@xs4all.nl>
References: <20190531093126.26956-1-mjourdan@baylibre.com>
 <20190531093126.26956-3-mjourdan@baylibre.com>
 <9731b2db-efd4-87d0-c48d-87adec433747@xs4all.nl>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_015217_855020_FDF0C793 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-06-05 at 15:39 +0200, Hans Verkuil wrote:
> Hi Maxime,
> 
> I am wondering if this flag shouldn't be inverted: you set
> V4L2_FMT_FLAG_DYN_RESOLUTION if dynamic resolution is supported,
> otherwise it isn't.
> 
> Can all the existing mainlined codec drivers handle midstream
> resolution changes?
> 
> s5p-mfc, venus and mediatek can, but I see no SOURCE_CHANGE event in
> the coda drivers, so I suspect that that can't handle this.
> 
> Philipp, what is the status of the coda driver for dynamic resolution
> changes?

FTR, to my knowledge there is no dynamic resolution change support in
the firmware, as there is no signal (interrupt nor picture run return
value) to indicate that different headers were parsed.

I am planning to add the initial source change event required by the
current decoder API documentation, but I am afraid there will be no
support for source changes due to mid-stream resolution changes due to
firmware limitations.

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
