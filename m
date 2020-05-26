Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5AC1E1B78
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 08:41:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fTpBoG+dxPdgNW4czrI6iVo4GX7ujjLY0Zh49wJCFaU=; b=B51R/9WXfB2MfR
	1g/XLrNF0bO6S8FWw9zimBqrBeKpBkYW94pVTtyFHAojY6rIgO2vvL6B9QUthDyC78UOB/ku7imEr
	zdyikWBjViAwlbnpHteOM8XZoHl/kMgARPPR+TTVcJ/jmkIt78UJAQsBjKZ5ME4VczScFIWkrtUeX
	jb2XRzpjeaRgkoA9cCnnGH4Y4KWxNVZgC4pz67GVxOv38ijQBosgaphYbtw1A+HzOm1qlGhhnSzvd
	ZxYuqVjNlUABNLBTYPPAEoMh9B7tfHJFPRz/uJjLrDsN7OdBsaFcOpBbJA71WMRa5H66572HKhmkk
	zGx4vIThgDEbkpCH8leg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdTGx-0002gm-JM; Tue, 26 May 2020 06:41:11 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdTGj-0002fM-7r
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 06:41:02 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 43581B913C77D32BEFE4;
 Tue, 26 May 2020 14:40:48 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.25) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0; Tue, 26 May 2020
 14:40:40 +0800
Subject: Re: [PATCH v3 1/6] arm64: Detect the ARMv8.4 TTL feature
To: Anshuman Khandual <anshuman.khandual@arm.com>, <catalin.marinas@arm.com>, 
 <peterz@infradead.org>, <mark.rutland@arm.com>, <will@kernel.org>,
 <aneesh.kumar@linux.ibm.com>, <akpm@linux-foundation.org>,
 <npiggin@gmail.com>, <arnd@arndb.de>, <rostedt@goodmis.org>,
 <maz@kernel.org>, <suzuki.poulose@arm.com>, <tglx@linutronix.de>,
 <yuzhao@google.com>, <Dave.Martin@arm.com>, <steven.price@arm.com>,
 <broonie@kernel.org>, <guohanjun@huawei.com>
References: <20200525125300.794-1-yezhenyu2@huawei.com>
 <20200525125300.794-2-yezhenyu2@huawei.com>
 <c6b6eb07-2606-9fc0-280a-e53b81a6491c@arm.com>
From: Zhenyu Ye <yezhenyu2@huawei.com>
Message-ID: <050b7ee6-c7aa-5d61-4dff-4792a411464e@huawei.com>
Date: Tue, 26 May 2020 14:40:38 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <c6b6eb07-2606-9fc0-280a-e53b81a6491c@arm.com>
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_234057_450221_1AEA499D 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arch@vger.kernel.org, linux-kernel@vger.kernel.org,
 xiexiangyou@huawei.com, zhangshaokun@hisilicon.com, linux-mm@kvack.org,
 arm@kernel.org, prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anshuman,

On 2020/5/26 10:39, Anshuman Khandual wrote:
> This patch (https://patchwork.kernel.org/patch/11557359/) is adding some
> more ID_AA64MMFR2 features including the TTL. I am going to respin parts
> of the V4 series patches along with the above mentioned patch. So please
> rebase this series accordingly, probably on latest next.
> 

I noticed that some patches of your series have been merged into arm64
tree (for-next/cpufeature), such as TLB range, but this one not. Why?

BTW, this patch is provided by Marc in his NV series [1], maybe you
should also let him know.

I will rebase my series after your patch is merged.

[1] https://lore.kernel.org/linux-arm-kernel/d6032191-ba0e-82a4-4dde-11beef369a11@arm.com/

Thanks,
Zhenyu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
