Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7695614098D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 13:15:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dz9wb7L1A+M/pmdnkQQumLYYky+Ax+jy34JFGx95LIE=; b=GvxwXh3sYofTkj
	pS+hef9qeIkEo8lN4u1a38bIh1hqDMqP782ZdzAlws/Z2wVr/hR5x1XfQlEGkhFJ0b+FVjHKb0KGR
	98G9ipXzMoUuYHLMLZATWNQ4k5fEd93z478CDAzB6pcAr5ie6VvJXhw/9tmEVfZdIP0NkFw0wzlRn
	jO7KQ3alKtJ1WKevne8dToe7h+QGEn5GYTawAzi+6VYChpqj3Zt0hryW3Vq+yNrO3Ei20KdDuKl6K
	WRN4bsXB9Kd8zuPBxV1RLn5EB/fLYi8ANY9wV8U6Uw9mK6CKjVrkAMgl34rPnKk+xJ/ID882QVfzF
	agOWaUy1+VE47Y6ijzRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isQWz-0002UG-1n; Fri, 17 Jan 2020 12:15:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isQWd-0002Tp-Uy
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 12:14:59 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E0BB12073A;
 Fri, 17 Jan 2020 12:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579263295;
 bh=d47gxuWmCSayfNRtGqrb+qmEhviKiKpxW6b00GdGhhA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c7iAkMi2OyjFfNHwdzi9yzKrCvbaxZZUcO7xT/HzFAL/6rZf971OGdHO6q2PAllrX
 oJOG+I3BSwCQfnEUUQybnhqwwCOp19eUgvNyFdMmxI45ZkdGfl7r6+L0+oio6vLIY3
 NBBhdnfBZ6xI4fSVZPtpso/goGDz2BcX3IDn8ob8=
Date: Fri, 17 Jan 2020 12:14:49 +0000
From: Will Deacon <will@kernel.org>
To: Hanjun Guo <guohanjun@huawei.com>
Subject: Re: [PATCH v2] ACPI/IORT: Fix 'Number of IDs' handling in
 iort_id_map()
Message-ID: <20200117121448.GA8199@willie-the-truck>
References: <1579004051-48797-1-git-send-email-guohanjun@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579004051-48797-1-git-send-email-guohanjun@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_041456_039864_7249B683 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, John Garry <john.garry@huawei.com>,
 linuxarm@huawei.com,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-acpi@vger.kernel.org,
 Tyler Baicar <baicar@os.amperecomputing.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 08:14:11PM +0800, Hanjun Guo wrote:
> The IORT specification [0] (Section 3, table 4, page 9) defines the
> 'Number of IDs' as 'The number of IDs in the range minus one'.
> 
> However, the IORT ID mapping function iort_id_map() treats the 'Number
> of IDs' field as if it were the full IDs mapping count, with the
> following check in place to detect out of boundary input IDs:
> 
> InputID >= Input base + Number of IDs
> 
> This check is flawed in that it considers the 'Number of IDs' field as
> the full number of IDs mapping and disregards the 'minus one' from
> the IDs count.
> 
> The correct check in iort_id_map() should be implemented as:
> 
> InputID > Input base + Number of IDs
> 
> this implements the specification correctly but unfortunately it breaks
> existing firmwares that erroneously set the 'Number of IDs' as the full
> IDs mapping count rather than IDs mapping count minus one.
> 
> e.g.
> 
> PCI hostbridge mapping entry 1:
> Input base:  0x1000
> ID Count:    0x100
> Output base: 0x1000
> Output reference: 0xC4  //ITS reference
> 
> PCI hostbridge mapping entry 2:
> Input base:  0x1100
> ID Count:    0x100
> Output base: 0x2000
> Output reference: 0xD4  //ITS reference
> 
> Two mapping entries which the second entry's Input base = the first
> entry's Input base + ID count, so for InputID 0x1100 and with the
> correct InputID check in place in iort_id_map() the kernel would map
> the InputID to ITS 0xC4 not 0xD4 as it would be expected.
> 
> Therefore, to keep supporting existing flawed firmwares, introduce a
> workaround that instructs the kernel to use the old InputID range check
> logic in iort_id_map(), so that we can support both firmwares written
> with the flawed 'Number of IDs' logic and the correct one as defined in
> the specifications.
> 
> [0]: http://infocenter.arm.com/help/topic/com.arm.doc.den0049d/DEN0049D_IO_Remapping_Table.pdf
> 
> Reported-by: Pankaj Bansal <pankaj.bansal@nxp.com>
> Link: https://lore.kernel.org/linux-acpi/20191215203303.29811-1-pankaj.bansal@nxp.com/
> Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
> Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Pankaj Bansal <pankaj.bansal@nxp.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Robin Murphy <robin.murphy@arm.com>
> ---

I'm a bit confused about the SoB chain here and which tree this is
targetting.

Lorenzo?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
