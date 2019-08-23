Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 706269A99F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 10:07:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2D/pORP0rCSV7NmwV3BU0vDRXKJrvizvyhW9Hohn37U=; b=VXEAELI1Mbuc61
	pxPxjj2WS6X4Pt3Wu0gmsLq/A/sTOsIimuz8OwTXyBiqgf3RfFr2g7PgbA4amkC4Lc3Of3fHEyW58
	bbZh7jF+iwp8FnjRTzV8k44uCXW5CQF6cd8qcOPTLolWESFalDjcaBmJrpjZifvmP7PotZ8nCsFrf
	4jgiXDybY3X9vcvaWC9FaTicIYAQCleJBZBW7QGZgH6Ptq4mXcS7BgpzE0Ea9BZjWNrlTjV60kmD7
	uBDNWutu0n6/seXvHVmdVFwRrOzcYqVXb3Eg0F2WDsC6e5w67KYDA81EmCdoCdUZ2ed0BbZ026Ogm
	PhTN0x8+DOD3Sp3VdsRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14bO-00056L-5C; Fri, 23 Aug 2019 08:07:18 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14bB-00055d-Ab
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 08:07:07 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id B45CEBDE4EAA449FA447;
 Fri, 23 Aug 2019 16:06:59 +0800 (CST)
Received: from [127.0.0.1] (10.133.215.186) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0;
 Fri, 23 Aug 2019 16:06:53 +0800
Subject: Re: [PATCH v3 0/2] improve the concurrency of
 arm_smmu_atc_inv_domain()
To: Will Deacon <will@kernel.org>
References: <20190823024551.24448-1-thunder.leizhen@huawei.com>
 <20190823075026.pwlx33e4crh3m6tn@willie-the-truck>
From: "Leizhen (ThunderTown)" <thunder.leizhen@huawei.com>
Message-ID: <7e28e1ce-2cc3-3c7f-45c7-e7de334c6976@huawei.com>
Date: Fri, 23 Aug 2019 16:06:52 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190823075026.pwlx33e4crh3m6tn@willie-the-truck>
Content-Language: en-US
X-Originating-IP: [10.133.215.186]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_010705_740160_63C216D5 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Joerg Roedel <joro@8bytes.org>, John Garry <john.garry@huawei.com>,
 iommu <iommu@lists.linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/8/23 15:50, Will Deacon wrote:
> On Fri, Aug 23, 2019 at 10:45:49AM +0800, Zhen Lei wrote:
>> v2 --> v3:
>> As Will Deacon's suggestion, I changed the lock type of
>> arm_smmu_domain.devices_lock from spinlock_t to rwlock_t, and I saw that the
>> performance is all right. And further use nr_ats_masters to quickly check have
>> no obvious effect, so I drop it.
> 
> :/
> 
> I already sent two versions of a series fixing this without any locking at
> all on the ->unmap() path, and you were on cc. I've also queued that stuff
> up.
> 
> Did you not receive my patches?
Sorry, my message filter setting is a bit wrong, must contains
"linux-kernel@vger.kernel.org", I have corrected it.

> 
> v1: https://lists.linuxfoundation.org/pipermail/iommu/2019-August/038306.html
> v2: https://lists.linuxfoundation.org/pipermail/iommu/2019-August/038374.html
OK, I will test it when it's my turn to use the board.

> 
> Queued: https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=for-joerg/arm-smmu/smmu-v3
> 
> Will
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
