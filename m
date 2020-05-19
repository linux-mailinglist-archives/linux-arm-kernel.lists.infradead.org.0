Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2651D93C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 11:47:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wSHr38dEtgnZq+U9ifb4+a8rCrRLORGGdNtyM3w3LlM=; b=bwKEJwkWk/Sspz
	MMXmii4oU0E8O5NCwfzJ7WOZ/ro8Gmf6OThTBFYMG5QdUHgapvrdADaHgVUBP9oieldRbNPgXfmhm
	D8ptTyxWyQP6+N8PtQ8pNDalyPX9dGiHOLm6qyaALCNXV6bcfimNkE5+vxGM2VodNb6ALqf2/HG97
	Rq0RgPPCk7sv1MTUS5fHESl0KRqwI0PuHoLTwoGZ1A9zjzQVgZ3v+vMP+uDeM0jQvKcmXuI6I6qnw
	KXaNe3TOMpOVeeLn3cQd85JBahJoKGWFcnjCwQUVMYvqc0qrA5ggBIPUD99hH89Me6ZDEQt8oW1a1
	RVkAsuKbzVIv9AjfXe1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jayqj-0003nk-ID; Tue, 19 May 2020 09:47:49 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaymN-0005wu-DZ
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 09:43:21 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id E2957992080CA34DBE1F;
 Tue, 19 May 2020 17:43:11 +0800 (CST)
Received: from [127.0.0.1] (10.173.221.213) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.487.0;
 Tue, 19 May 2020 17:43:01 +0800
To: <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>
From: Xiang Zheng <zhengxiang9@huawei.com>
Subject: [RFC] Use SMMU HTTU for DMA dirty page tracking
Message-ID: <b926ec0b-fe87-0792-c41d-acad56c656a4@huawei.com>
Date: Tue, 19 May 2020 17:42:55 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.173.221.213]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_024319_673834_2C12F1F2 
X-CRM114-Status: UNSURE (   7.74  )
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
Cc: jean-philippe@linaro.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 maz@kernel.org, wangzhou1@hisilicon.com, James Morse <james.morse@arm.com>,
 prime.zeng@hisilicon.com, Wang Haibin <wanghaibin.wang@huawei.com>,
 Will Deacon <will@kernel.org>, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Is there any plan for enabling SMMU HTTU?

I have seen the patch locates in the SVA series patch, which adds
support for HTTU:
    https://www.spinics.net/lists/arm-kernel/msg798694.html

HTTU reduces the number of access faults on SMMU fault queue
(permission faults also benifit from it).

Besides reducing the faults, HTTU also helps to track dirty pages for
device DMA. Is it feasible to utilize HTTU to get dirty pages on device
DMA during VFIO live migration?

If SMMU can track dirty pages, devices are not required to implement
additional dirty pages tracking to support VFIO live migration.

-- 
Thanks,
Xiang


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
