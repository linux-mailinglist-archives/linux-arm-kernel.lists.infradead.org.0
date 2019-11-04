Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF66ED6CA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 02:10:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=poE4a4F7ZmfZbru967oMhCGozzaUwmMY8vAs17WYXs4=; b=od59G3ircQR87P
	W0YkfFsyvKpo4TFZCP7gKbHyTp094+bKsicq6u5YDJSkQ6ee+SuZk9QLM6SJTA9WZOo7LWj8+sj96
	NTA1gt1Y5a5jy1AY+XVf9M1X1j3w4jDpg1g8rIROXeSTYeS36borHAuDeV/1mKy/DmQxwdx+QfGlQ
	O9ve6Nyfqus9Mm+aq+UhD+mk8RtxP7pF61NpBDZg9PZvnPEh/eWfRdRtpLc6i3NiGD6Ez9kShITYW
	tDVXD8h4d3RfzbpDs4B7kiPsm4Y/dlOY6yvGYFbMHND+PLZwdMwhpbuKsZ+NnOnOdRQpPUieWqQ5N
	FbVleAPDVD9LwaVBatvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRQtM-0005XK-JO; Mon, 04 Nov 2019 01:10:48 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRQtF-0005Wq-Jt
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 01:10:43 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 78599A16181B0DF53067;
 Mon,  4 Nov 2019 09:10:32 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Mon, 4 Nov 2019
 09:10:22 +0800
Subject: Re: stable-rc-4.19: cpufeature.c:909:21: error: 'MIDR_HISI_TSV110'
 undeclared
To: Naresh Kamboju <naresh.kamboju@linaro.org>, Hanjun Guo
 <hanjun.guo@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sasha Levin <sashal@kernel.org>
References: <CA+G9fYtoODTuayzXdsv=bFuRPvw1-+dmZxHqQePy6LX8ixOG5A@mail.gmail.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <98f10e13-8ec8-1690-a867-f212bcea969f@huawei.com>
Date: Mon, 4 Nov 2019 09:10:06 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CA+G9fYtoODTuayzXdsv=bFuRPvw1-+dmZxHqQePy6LX8ixOG5A@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_171041_820272_C3BECD7D 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, suzuki.poulose@arm.com,
 catalin.marinas@arm.com, john.garry@huawei.com,
 open list <linux-kernel@vger.kernel.org>,
 linux- stable <stable@vger.kernel.org>, zhangshaokun@hisilicon.com,
 lkft-triage@lists.linaro.org, andrew.murray@arm.com, will@kernel.org,
 Dave P Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sasha, Greg,

On 2019/11/4 7:22, Naresh Kamboju wrote:
> stable rc 4.19  branch build broken for arm64 with the below error log,
> 
> Build error log,
> arch/arm64/kernel/cpufeature.c: In function 'unmap_kernel_at_el0':
> arch/arm64/kernel/cpufeature.c:909:21: error: 'MIDR_HISI_TSV110'
> undeclared (first use in this function); did you mean
> 'GICR_ISACTIVER0'?
>   MIDR_ALL_VERSIONS(MIDR_HISI_TSV110),
>                     ^
> arch/arm64/include/asm/cputype.h:141:12: note: in definition of macro
> 'MIDR_RANGE'
>   .model = m,     \
>            ^
> arch/arm64/kernel/cpufeature.c:909:3: note: in expansion of macro
> 'MIDR_ALL_VERSIONS'
>   MIDR_ALL_VERSIONS(MIDR_HISI_TSV110),
>   ^~~~~~~~~~~~~~~~~
> arch/arm64/kernel/cpufeature.c:909:21: note: each undeclared
> identifier is reported only once for each function it appears in
>   MIDR_ALL_VERSIONS(MIDR_HISI_TSV110),
>                     ^
> arch/arm64/include/asm/cputype.h:141:12: note: in definition of macro
> 'MIDR_RANGE'
>   .model = m,     \
>            ^
> arch/arm64/kernel/cpufeature.c:909:3: note: in expansion of macro
> 'MIDR_ALL_VERSIONS'
>   MIDR_ALL_VERSIONS(MIDR_HISI_TSV110),

Patch "efd00c7 arm64: Add MIDR encoding for HiSilicon Taishan CPUs" needs to
be bacported as well, would you like me to do that, or just cherry-pick by yourself?

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
