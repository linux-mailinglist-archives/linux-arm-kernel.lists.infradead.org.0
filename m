Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B1E1A79FE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 13:47:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c6h9pO1x7rXDX4mMBL2ev5Og6XzRXejwCy82y9/BSkI=; b=ns4MwWqg4k2Sdf
	yqpzSzhNAGLEkJsb11a0mYvKv/Tkk7C90BQgcAk/X1O8XXrhaQ2Qt7IxSwbABEhnhN5YTr5TAqFvH
	d1Y14dODRQsEcTsib+GMMK2WiM+7ku0m2UAr80c+tjd09fOwHWhMcR/8+UKPgyxAKjBPPqEdBw3+u
	dxg9uJVhLwL965KqkJnFLLdHmDZfjX12NYxTesuRSPumYS+a8K7PGgihwpnFpGLUOgVocgloQgeWX
	U4XLZq5636HnF3d8awH0oiQ72+FDoJBMd13kMyAas4KklrdleCPdwL3ysH6TeRWgaJ8ECzrAkk19Y
	g3zNqkPBglBmovDaspBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOK1m-000518-0W; Tue, 14 Apr 2020 11:46:54 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOK0E-0003o6-MJ
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 11:45:22 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 6C2D2D393254FDFA29E8;
 Tue, 14 Apr 2020 19:45:16 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.25) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.487.0; Tue, 14 Apr 2020
 19:45:08 +0800
Subject: Re: [RFC PATCH v2] arm64: cpufeatures: add support for tlbi range
 instructions
To: Will Deacon <will@kernel.org>, Hanjun Guo <guohanjun@huawei.com>
References: <20191111132716.GA9394@willie-the-truck>
 <5DC96660.8040505@huawei.com> <d4542758f83b3df3ab391341499fecfb@www.loen.fr>
 <c9dfb341-9d14-1a62-0c34-6ec8bd9b4c55@huawei.com>
 <e6d2ad1c5392c2c3503ed8bb7560e04f@www.loen.fr>
 <3b833c82-2c1b-462a-f06f-d4c8b373dac1@huawei.com>
 <b24f3c62-128c-c4b2-e1d3-d6ae2162c754@huawei.com>
 <20200410115446.GA24814@willie-the-truck>
 <20200410120235.GC24814@willie-the-truck>
 <5af3a54c-c058-78a8-eba2-9e2ef666beee@huawei.com>
 <20200414070809.GA24197@willie-the-truck>
From: Zhenyu Ye <yezhenyu2@huawei.com>
Message-ID: <5e56599f-c10a-9bd2-1e37-bcec564272c9@huawei.com>
Date: Tue, 14 Apr 2020 19:45:07 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200414070809.GA24197@willie-the-truck>
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_044518_986192_DAD446FF 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, Rob Herring <robh@kernel.org>,
 wanghuiqiang <wanghuiqiang@huawei.com>, Anna.Chen@arm.com,
 suzuki.poulose@arm.com, catalin.marinas@arm.com,
 'Matteo Carlini' <Matteo.Carlini@arm.com>, xiexiangyou@huawei.com,
 Linuxarm <linuxarm@huawei.com>, Shaokun Zhang <zhangshaokun@hisilicon.com>,
 tangnianyao@huawei.com, Marc Zyngier <maz@kernel.org>,
 linux-arm-kernel@lists.infradead.org, qiuzhenfa@hisilicon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 2020/4/14 15:08, Will Deacon wrote:
> 
> I'm worried about the TTL series without being able to test it.
> Please post a v3 of the TLBI by range patch again when you get a chance.
> 

I have sent the v3 of the TLBI RANGE patch based on Linux 5.7-rc1:

https://lore.kernel.org/linux-arm-kernel/20200414112835.1121-1-yezhenyu2@huawei.com/


As for the TTL series, it's based on commit "a6d60245d6", which has tracked
the levels of the page tables have been cleared, so I think there is no
problem at the software level. (The stride parameter of __flush_tlb_range in
ARM64 also depends on the values of cleared_*, and behaves well)

If we want to test whether the hardware deals with TTL correctly, I have a
vague idea:

1. mmap a piece of memory;
2. write our own change_protection_range(), in which calls the tlbi
   interface with TTL value;
3. if the hardware deals with TTL correctly, the permissions of memory
   should have changed, otherwise not.


Thanks,
Zhenyu



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
