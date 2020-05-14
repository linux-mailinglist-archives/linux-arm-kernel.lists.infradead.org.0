Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3048D1D2B17
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 11:17:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aSfK08WS36XEAxWDGiF0iyDYIPN9F0uIvVNkbreftKE=; b=oqFvYwscpwegxr
	OZ3siRzIbwVgWWC1vD1qvHEmvwqbk4Rx8ciFPMPEdJd+shuVv3z4HvoK5B8AtNT6tr4v5TnLYNn9N
	8LLhUkiVHde2Yy+pdRCoWlhTUX67Z+WdYILfu4xVy5XrOFn+s3Y2n37oxq37yQAjoQgrVFwWUJziZ
	4QN7kKE8CrM5JbJWXIhWMb3SsFqIEkuo5YJR4GCGxdgcKAHEWfOOF/bL4MP2NjiPVKu0WRRbzgBH9
	1sXqGhoky+nnZ8Ia3PrjC72B+ecX1txaUesn9DBz3WuPpc6M/zWWNo2WseEBrVRNoh3R1Qp+Pb6Nm
	Don/InZTZJ2TBpUVIbqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ9za-0008OA-Fz; Thu, 14 May 2020 09:17:26 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ9zS-0008N4-7z
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 09:17:20 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id ABBD6B17E2B7EA933AF5;
 Thu, 14 May 2020 17:17:09 +0800 (CST)
Received: from [10.173.221.230] (10.173.221.230) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.487.0; Thu, 14 May 2020 17:17:04 +0800
To: <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>
From: zhukeqian <zhukeqian1@huawei.com>
Subject: [Question] Hardware management of stage2 page dirty state
Message-ID: <0767678d-d580-eb02-c2f0-423b16526736@huawei.com>
Date: Thu, 14 May 2020 17:16:52 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
X-Originating-IP: [10.173.221.230]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_021718_449953_29F43CC8 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: yuzenghui@huawei.com, catalin.marinas@arm.com, wanghaibin.wang@huawei.com,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>, Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Catalin,

I have some questions after deep reading your patch
https://patchwork.kernel.org/patch/8824261/ which enables hardware updates
of the Access Flag for Stage 2 page tables.

I notice that at the bottom of commit message, you said the following words:
"After some digging through the KVM code, I concluded that hardware DBM
(dirty bit management) support is not feasible for Stage 2. A potential
user would be dirty logging but this requires a different bitmap exposed
to Qemu and, to avoid races, the stage 2 mappings need to be mapped
read-only on clean, writable on fault. This assumption simplifies the
hardware Stage 2 AF support."

I have three questions here.

1. I do not understand the reason well about "not feasible". Does the main reason
   for this is the "races" you referred?

2. What does the "races" refer to? Do you mean the races between [hardware S2 DBM]
   and [dirty information collection that executed by KVM]?

   During VM live migration, Qemu will send dirty page iteratively and finally stop
   VM when dirty pages is not too much. We may miss dirty pages during each iteration
   before VM stop, but there are no races after VM stop, so we won't miss dirty pages
   finally. It seems that "races" is not a convinced reason for "not feasible".

3. You said that disable hardware S2 DBM support can simplify the hardware S2 AF support.
   Could you please explain the reason in detail?



Expect your reply. Many Thanks!

Thanks,
Keqian.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
