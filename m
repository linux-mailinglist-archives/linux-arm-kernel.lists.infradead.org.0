Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F304BB29B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 13:05:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QAFIiv0sKX+4Jsix6DfHfocMLRAdvKaV6ClnjWyt/W0=; b=pCJMKsSsO+vCBX54c8UNC4cHz
	FUVa7zXGetTXlvSKD0poK3EajdADOWAyQK8r2rXmrXVM60ZcKvPUpyOMScYVJtHpbkS6T4Ux41Z9V
	bOq4JnmNkMYdmVXzJvt4SuxEODjqHf5ONlzc1AWFT4NHI4iHHSqlifVb/jtCI4wouPECBLr3OrgAr
	u3JGFi/ZJdT4NbbOXoQFGLFM6pnfASByjd/+nHHSwiCbHAf87mgZP8gln1LfeebARQ5oIyODbx1ko
	JJo62pJm4+KM30+xpvW5tnzJJXXce+A+LR+HpX+iFN+JJ6U4qK80XfBEriYHKUIupAD0pOouiO4Wk
	7W1EYrpjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCM9Z-0006qw-Qx; Mon, 23 Sep 2019 11:05:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCM9U-0006Rr-70
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 11:05:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 38646142F;
 Mon, 23 Sep 2019 04:05:05 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A27D83F694;
 Mon, 23 Sep 2019 04:05:00 -0700 (PDT)
Subject: Re: [PATCH 0/3] iommu/io-pgtable-arm: Mali LPAE improvements
To: Tomeu Vizoso <tomeu.vizoso@collabora.com>, Will Deacon <will@kernel.org>
References: <cover.1568211045.git.robin.murphy@arm.com>
 <d77047c2-1f16-eded-17ba-7463310d4bba@baylibre.com>
 <20190911162024.i2sda7uzy3pbrnyd@willie-the-truck>
 <83c45e97-8398-349d-5593-03af23b39c59@arm.com>
 <20190919083035.tv446nelad6ki6db@willie-the-truck>
 <CAAObsKCja0xTaiayNq5TWE7YJ0RPiJbq5OqOdEtpKdCQivR0uw@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <f2dfd90a-9f9a-b16f-7d03-85f169cff0c0@arm.com>
Date: Mon, 23 Sep 2019 12:04:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAAObsKCja0xTaiayNq5TWE7YJ0RPiJbq5OqOdEtpKdCQivR0uw@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_040508_302142_B0527E5E 
X-CRM114-Status: GOOD (  14.11  )
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
Cc: Rob Herring <robh@kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Joerg Roedel <joro@8bytes.org>, Steven Price <steven.price@arm.com>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomeu,

On 23/09/2019 09:17, Tomeu Vizoso wrote:
>>> There is some argument for taking #1 and #2 as 5.4 fixes, though - the
>>> upcoming Mesa 19.2 release will enable T820 support on the userspace side -
>>> so let's pick that discussion up again in a few weeks.
>>
>> Ok, I'll include those two in my fixes pull to Joerg at -rc1.
> 
> Hi Will,
> 
> Looks like this didn't end up happening?

Don't panic, there's still another week until rc1 is even out to base a 
PR on ;)

FWIW I was planning to rebase and resend these with the review tags 
included early next week, once the dust has settled and queues are 
opening again.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
