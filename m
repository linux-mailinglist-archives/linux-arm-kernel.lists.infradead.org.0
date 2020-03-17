Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D15188519
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 14:15:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L6RMWdUjQudNEMyW2Xa2aORf00ndV8y50uhncCZMX1M=; b=OsmZ4KF1Qp+KxV
	qHcDZIFmYq3vv9yl6PS2ISNAhZPH+qcGPNOQ7t81vIdosGIoKnuaeEBW3F4Rb0BHWdOVT8BbOLLTA
	83WCgKmH3a12YUkAlYsEkLUXsXjfO6qdW0xEhy+uIW5v6yNmMTfcKWqC1JN0f7MjLonihZGW4z9D9
	vxAdWY0z3rwQIXF6r5tS1jZqX1jj8zHimY5IIpyV9vc2e1mJkohqF8uH2ow1aW0Or68QlQSee1QAA
	wL+uycsM12A28M4TQaToZPgCvVkjzIat6K9F9SCanefoK3hLIRptLMaf+vpaAeoZDuqc5OV+S27MR
	EI9XqmUL9s8KeCglqLDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEC42-0005aZ-VG; Tue, 17 Mar 2020 13:15:22 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEC3t-0005So-1f; Tue, 17 Mar 2020 13:15:15 +0000
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 0231E10001E;
 Tue, 17 Mar 2020 13:14:46 +0000 (UTC)
Date: Tue, 17 Mar 2020 14:14:45 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH 1/2] rtc: mt2712: fix build without PM_SLEEP
Message-ID: <20200317131445.GC3448@piout.net>
References: <20200316104701.209293-1-alexandre.belloni@bootlin.com>
 <CAMuHMdVy6J1G5P6BQ14D65=pRu-q=+kcN3RV8mjtaZcwBooZyw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdVy6J1G5P6BQ14D65=pRu-q=+kcN3RV8mjtaZcwBooZyw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_061513_226253_8758FAD0 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.231 listed in wl.mailspike.net]
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Eddie Huang <eddie.huang@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/03/2020 13:30:10+0100, Geert Uytterhoeven wrote:
> >  static SIMPLE_DEV_PM_OPS(mt2712_pm_ops, mt2712_rtc_suspend,
> >                          mt2712_rtc_resume);
> 
> That's 23 more unused pointers in your kernel image.
> 

This is true but, of the about 900 drivers setting pm callbacks, there
are only 39 doing that conditionally depending on CONFIG_PM or
CONFIG_PM_SLEEP. Interestingly, 9 of them are mediatek related.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
