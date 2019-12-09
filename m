Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A827811650E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 03:35:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z1EQQTw9H/2ZdMDrpxDh+gVVLUxNm8mLLHlbwm7BPB0=; b=HecdXnGVL+qgKF
	CTBT9FRValKRtCeFhPlkQ06U6TDY12NZBxHjMVyfxmhU3xS86pNFwQ0rCHKAl2K0SezHPyv+pPLNc
	HJiShRSBacmloXz5qJMnXlVE1WSYAdiiPGWk7I8R1Ck9J44lVLDt3eauXOTSDQCE7EuZdPL/+LDXZ
	PuNTONOVGEYmQZ3aT4kS77/m5F/x4xxGjspIQJikx/w/dnRTWAaPMLRU6dFT7D3OVCcqt64068CDy
	kktV+IE8zhw0ncqSSPJ+jO5pIi7c1gWTB7TACMzVn2hgLl9kugV5Ery56EUd941WEgQ2HpXab0Gxa
	cHWoTo9X2EeHy9Ew/3yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie8to-00062R-Mr; Mon, 09 Dec 2019 02:35:48 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie8ti-000619-2V
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 02:35:44 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 09 Dec 2019 11:35:37 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id B67FE603AB;
 Mon,  9 Dec 2019 11:35:37 +0900 (JST)
Received: from 172.31.9.53 (172.31.9.53) by m-FILTER with ESMTP;
 Mon, 9 Dec 2019 11:36:06 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by iyokan.css.socionext.com (Postfix) with ESMTP id 3907F40372;
 Mon,  9 Dec 2019 11:35:37 +0900 (JST)
Received: from [10.213.132.48] (unknown [10.213.132.48])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 0C6CE120456;
 Mon,  9 Dec 2019 11:35:37 +0900 (JST)
Date: Mon, 09 Dec 2019 11:35:37 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH 2/2] PCI: uniphier: Add checking whether PERST# is
 deasserted
In-Reply-To: <6b288f46-452d-6f92-728c-56c4100028cf@ti.com>
References: <20191206175813.E6B2.4A936039@socionext.com>
 <6b288f46-452d-6f92-728c-56c4100028cf@ti.com>
Message-Id: <20191209113536.E9DD.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_183542_350837_A2CB5782 
X-CRM114-Status: GOOD (  27.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jassi Brar <jaswinder.singh@linaro.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kishon,

On Fri, 6 Dec 2019 14:31:17 +0530 <kishon@ti.com> wrote:

> Hi,
> 
> On 06/12/19 2:28 pm, Kunihiko Hayashi wrote:
> > Hi Kishon,
> > > On Fri, 6 Dec 2019 12:28:29 +0530 <kishon@ti.com> wrote:
> > >> Hi,
> >>
> >> On 04/12/19 3:35 pm, Kunihiko Hayashi wrote:
> >>> On Fri, 22 Nov 2019 20:53:16 +0900 <hayashi.kunihiko@socionext.com> wrote:
> >>>>> Hello Lorenzo,
> >>>>
> >>>> On Thu, 21 Nov 2019 16:47:05 +0000 <lorenzo.pieralisi@arm.com> wrote:
> >>>>
> >>>>> On Fri, Nov 08, 2019 at 04:30:27PM +0900, Kunihiko Hayashi wrote:
> >>>>>>> However, If I understand correctly, doesn't your solution only work some
> >>>>>>> of the time? What happens if you boot both machines at the same time,
> >>>>>>> and PERST# isn't asserted prior to the kernel booting?
> >>>>>>
> >>>>>> I think it contains an annoying problem.
> >>>>>>
> >>>>>> If PERST# isn't toggled prior to the kernel booting, PERST# remains asserted
> >>>>>> and the RC driver can't access PCI bus.
> >>>>>>
> >>>>>> As a result, this patch works and deasserts PERST# (and EP configuration will
> >>>>>> be lost). So boot sequence needs to include deasserting PERST#.
> >>>>>
> >>>>> I am sorry but I have lost you. Can you explain to us why checking
> >>>>> that PERST# is deasserted guarantees you that:
> >>>>>
> >>>>> - The EP has bootstrapped
> >>>>> - It is safe not to toggle it again (and also skip
> >>>>>     uniphier_pcie_ltssm_enable())
> >>>>>
> >>>>> Please provide details of the HW configuration so that we understand
> >>>>> what's actually supposed to happen and why this patch fixes the
> >>>>> issue you are facing.
> >>>>
> >>>> I tried to connect between the following boards, and do pci-epf-test:
> >>>>    - "RC board": UniPhier ld20 board that has DWC RC controller
> >>>>    - "EP board": UniPhier legacy board that has DWC EP controller
> >>>>
> >>>> This EP has power-on-state configuration, but it's necessary to set
> >>>> class ID, BAR sizes, etc. after starting up.
> >>>>
> >>>> In case of that starting up RC board before EP board, the RC driver
> >>>> can't establish link. So we need to boot EP board first.
> >>>> At that point, I've considered why RC can't establish link,
> >>> and found that the waitng time was too short.
> >>>> - EP/RC: power on both boards
> >>>> - RC: start up the kernel on RC board
> >>>> - RC: wait for link up (long time enough)
> >>>> - EP: start up the kernel on EP board
> >>>> - EP: configurate pci-epf-test
> >>>> When the endpoint  configuration is done and the EP driver enables LTSSM,
> >>> the RC driver will quit from waiting for link up.
> >>>> Currently DWC RC driver calls dwc_pcie_wait_for_link(), however,
> >>> the function tries to link up 10 times only, that is defined
> >>> as LINK_WAIT_MAX_RETRIES in pcie-designware.h, it's too short
> >>> to configurate the endpoint.
> >>>> Now the patch to bypass PERST# is not necessary.
> >>>> Instead for DWC RC drivers, I think that the number of retries
> >>> should be changed according to the usage.
> >>> And the same issue remains with other RC drivers.
> >>
> >> If EP is configured using Linux, then PERST# cannot be used as it's difficult to boot linux and initialize EP within the specified time interval. Can't you prevent PERST from being propagated at all?
> > > Surely it might be difficult for RC to decide the time to wait for EP.
> > Since RC almost toggles PERST# in boot time, I'd like to think about
> > how to prevent from first PERST# at least.
> 
> It can be prevented in the HW (If that's possible). I modify the cable connecting RC and EP to not propagate PERST#.

I understand. Although it's possible in case of a cable,
in case of an edge connector, EP side needs hardware mechanism not to propagate PERST#.

Thank you,

---
Best Regards,
Kunihiko Hayashi


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
