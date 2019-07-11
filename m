Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EA36571A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 14:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jOBhAk7ZCUk27P871jwnDPEHHTdWPQ28kXKjmGsmZe8=; b=iFQ5yOQs7QJETPAK9/cwTV9qU
	ENWqHoaCZ86VeJRvMd8hjvEBDy/QJFqSHyJczcVWdR6O54tWBuWFl7fHVuwBPZbGRcP4+9eqxaXQN
	NuChqZgQZXW+H0TouHIztU4hPaEoFSCqx9eNl4xLz5XKFdIvwt2dbwKu+k5DpDfRxvO3lYExR0HkM
	l9cpCj9jQvatHjop+H4jCOc+cwQcOovVpqZDffJ8WiGn/d1rEaK4jJeJ5iOffwDodiEAFPOpFoHcr
	8TggMdxPVo5ySKRDdM10kFPjDkP+CKfEkyJZwVmj0sDycJhUtwHtlufEjcRNEsqmzezCGI9uiJUrA
	hoYzHBoUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlYM9-00028A-8f; Thu, 11 Jul 2019 12:39:25 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlYM0-00027M-TI
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 12:39:18 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id D9487673AB83A3D4C26E;
 Thu, 11 Jul 2019 20:38:59 +0800 (CST)
Received: from [127.0.0.1] (10.184.12.158) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Thu, 11 Jul 2019
 20:38:52 +0800
Subject: Re: [PATCH v3 7/9] arm/arm64: kvm: pmu: Make overflow handler NMI safe
To: Julien Thierry <julien.thierry@arm.com>,
 <linux-arm-kernel@lists.infradead.org>
References: <1562596377-33196-1-git-send-email-julien.thierry@arm.com>
 <1562596377-33196-8-git-send-email-julien.thierry@arm.com>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <c838f6a7-276d-4444-ff7d-829ebaf00440@huawei.com>
Date: Thu, 11 Jul 2019 20:38:42 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:64.0) Gecko/20100101
 Thunderbird/64.0
MIME-Version: 1.0
In-Reply-To: <1562596377-33196-8-git-send-email-julien.thierry@arm.com>
Content-Language: en-US
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_053917_230988_AD95DA02 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: peterz@infradead.org, jolsa@redhat.com, will.deacon@arm.com,
 acme@kernel.org, alexander.shishkin@linux.intel.com, mingo@redhat.com,
 Marc Zyngier <marc.zyngier@arm.com>, namhyung@kernel.org, liwei391@huawei.com,
 kvmarm@lists.cs.columbia.edu
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Julien,

On 2019/7/8 22:32, Julien Thierry wrote:
> When using an NMI for the PMU interrupt, taking any lock migh cause a
                                                            ^^^^
s/migh/might/

> deadlock. The current PMU overflow handler in KVM takes takes locks when
                                                     ^^^^^ ^^^^^
                                                     two "takes" ?


Thanks,
zenghui

> trying to wake up a vcpu.
> 
> When overflow handler is called by an NMI, defer the vcpu waking in an
> irq_work queue.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
