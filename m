Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F04D3697
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 02:54:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14vH8C8rX3Lf7IdQBDpqct3kk9aEPzMR5R+JFvYzp30=; b=V5BTJc3+DtpqPu
	vDsUpxxVf0CnaUm5oWeo9FIk9fK8FbA9WrTlUz0efAAYyrKWY6ast922qIQYQCzvRkUQwuJ/5f72/
	CQlf2vmZJ/SGon0pYrKeWX5hugkXgeVgPJ4GYTrh6yndl1bmgzOryjt6C5pDxvq6FG1JDNbhLIaN6
	Q/jwZvvQMtMT4rPYPMxR7uhPNKGtjVQ4i1Ngvucoxi85FTy7PiQagceHatIj2w8rLiLF420kl68Zt
	8EEnytJkqG/Eyz5aahsEn9MZNHmJVhCLsUMhJO/uqZkucPaepSch52s7XNoVi7Q8jXTdBX6DViTN7
	F1MLJao3l4W9XosdrLsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIjCB-0001Zy-UW; Fri, 11 Oct 2019 00:54:15 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIjC4-0001YR-L2
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 00:54:10 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id DAD81C24DE4D932AB452;
 Fri, 11 Oct 2019 08:53:57 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Fri, 11 Oct 2019
 08:53:50 +0800
Subject: Re: [RFC PATCH 0/3] ACPI, arm64: Backport for ACPI PPTT 6.3 thread
 flag for stable 4.19.x
To: John Garry <john.garry@huawei.com>, <catalin.marinas@arm.com>,
 <will@kernel.org>, <rjw@rjwysocki.net>, <lenb@kernel.org>,
 <robert.moore@intel.com>, <erik.schmauss@intel.com>, <sudeep.holla@arm.com>,
 <rrichter@marvell.com>, <jeremy.linton@arm.com>
References: <1570714192-236724-1-git-send-email-john.garry@huawei.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <ed2ce119-dd68-131c-72e9-e95fc8fc6465@huawei.com>
Date: Fri, 11 Oct 2019 08:53:32 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <1570714192-236724-1-git-send-email-john.garry@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_175408_862162_2623AFCD 
X-CRM114-Status: GOOD (  16.46  )
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
Cc: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linuxarm@huawei.com, linux-acpi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, wanghuiqiang@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi John,

On 2019/10/10 21:29, John Garry wrote:
> This series is a backport of the ACPI PPTT 6.3 thread flag feature for
> supporting arm64 systems.
> 
> The background is that some arm64 implementations are broken, in that they
> incorrectly advertise that a CPU is mutli-threaded, when it is not - the
> HiSilicon Taishanv110 rev 2, aka tsv110, being an example.
> 
> This leads to the system topology being incorrect. The reason being that
> arm64 topology code uses a combination of ACPI PPTT (Processor Properties
> Topology Table) and the system MPIDR (Multiprocessor Affinity Register) MT
> bit to determine the topology.
> 
> Until ACPI 6.3, the PPTT did not have any method to determine whether
> a CPU was multi-threaded, so only the MT bit is used - hence the
> broken topology for some systems.
> 
> In ACPI 6.3, a PPTT thread flag was introduced, which - when supported -
> would be used by the kernel to determine really if a CPU is multi-threaded
> or not, so that we don't get incorrect topology.

Thanks for doing this, and this patch set fix my CPU topology issue
in 4.19 kernel with updated firmware.

> 
> Note: I'm sending this as an RFC before sending to stable proper. I also
> have a 5.2 and 5.3 backport which are almost the same, and only
> significant change being that the ACPICA patch is not required.

5.2 stable was end of life, so only 4.19 and 5.3 are needed I think.

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
