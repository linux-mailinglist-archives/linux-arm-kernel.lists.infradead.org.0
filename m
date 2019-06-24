Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B9551D6B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 23:53:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BZcH7KMNp9xLqb5KpvzQrialfJ54yjYCw9dowCQb9bs=; b=BBFfxm0Sx/AQxd
	qgqfCz2jjdYvlfI+bk/m+xfrx419K08ULNwEeLV54C4ZVcbR+5h+U38QTflhXQUOn8QKNi0QZ0Eiy
	/KMxq+k7hCOAEq7KI/0Ma/eT21pWQ8kcekxi4Zw7YjFrgdEvs6JkAiuZVgl3rN+0fvGUgYe2DBuGP
	7GcPwOT46bIbBnP9x0Cuak12iIbqgd2Ke3klZz/hJfSPJvUmyVTv3vTIPSOLlj6brKVqNNjWlLYKk
	inqqX0CLGgYSlDgn1blRbLnCi5wxFSqukG7s+xM7sTQOb4IslPM1immsi6yt2jU6JrI4sxYZBwePR
	whFz4L56E7RrIxHJiy9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfWu6-000842-8I; Mon, 24 Jun 2019 21:53:34 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfWtr-00082s-4x
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 21:53:20 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5OLiFnJ175023;
 Mon, 24 Jun 2019 21:53:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=9koirtlNcPH5hLpr08phM7fwBx+iDwNGIp8nnsRtBYk=;
 b=bPIrl682JwIFGDstn3ppeuOpqlFXogsm/9GtggfdwsjOBCBzwJxSi8L60q5o2DgnQs03
 6dJy7dzt/CoYRT6j8XGXw/MZ96tq99abLlX1WdxfiZdPvMNKIe3DXX7d5ngoC0LGYr7+
 m/+ZQwhkKzgDJmmraYAkEyyu+HJKDWEWElcmT8ux1RHuGES8c55TRZQbyAB69JWqjQic
 ApGxQI918U/1HMrq2HJ/a3Jby++qIMPONeb4/mTqObRbhv7yh8NN1iVcGlketM/px8ar
 u3SSw/QA4qKOD07uy+pJxhod/kwk/tvmabfrzkD1BSZzC4cBBwB714PXf6sbSgNFy5Te 5w== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2t9brt0t89-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Jun 2019 21:53:05 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5OLpnZ0090513;
 Mon, 24 Jun 2019 21:53:05 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2t99f3gv6d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Jun 2019 21:53:05 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5OLr3sh012267;
 Mon, 24 Jun 2019 21:53:04 GMT
Received: from [192.168.1.222] (/71.63.128.209)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 24 Jun 2019 14:53:03 -0700
Subject: Re: LTP hugemmap05 test case failure on arm64 with linux-next
 (next-20190613)
To: Qian Cai <cai@lca.pw>, Will Deacon <will@kernel.org>
References: <1560461641.5154.19.camel@lca.pw>
 <20190614102017.GC10659@fuggles.cambridge.arm.com>
 <1560514539.5154.20.camel@lca.pw>
 <054b6532-a867-ec7c-0a72-6a58d4b2723e@arm.com>
 <EC704BC3-62FF-4DCE-8127-40279ED50D65@lca.pw>
 <20190624093507.6m2quduiacuot3ne@willie-the-truck>
 <1561381129.5154.55.camel@lca.pw> <1561411839.5154.60.camel@lca.pw>
From: Mike Kravetz <mike.kravetz@oracle.com>
Message-ID: <ed517a19-7804-c679-da94-279565001ca1@oracle.com>
Date: Mon, 24 Jun 2019 14:53:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1561411839.5154.60.camel@lca.pw>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9298
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=7
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906240171
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9298
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=7 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906240171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_145319_342652_14029718 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-mm@kvack.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Anshuman Khandual <anshuman.khandual@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/24/19 2:30 PM, Qian Cai wrote:
> So the problem is that ipcget_public() has held the semaphore "ids->rwsem" for
> too long seems unnecessarily and then goes to sleep sometimes due to direct
> reclaim (other times LTP hugemmap05 [1] has hugetlb_file_setup() returns
> -ENOMEM),

Thanks for looking into this!  I noticed that recent kernels could take a
VERY long time trying to do high order allocations.  In my case it was trying
to do dynamic hugetlb page allocations as well [1].  But, IMO this is more
of a general direct reclaim/compation issue than something hugetlb specific.

> 
> [  788.765739][ T1315] INFO: task hugemmap05:5001 can't die for more than 122
> seconds.
> [  788.773512][ T1315] hugemmap05      R  running task    25600  5001      1
> 0x0000000d
> [  788.781348][ T1315] Call trace:
> [  788.784536][ T1315]  __switch_to+0x2e0/0x37c
> [  788.788848][ T1315]  try_to_free_pages+0x614/0x934
> [  788.793679][ T1315]  __alloc_pages_nodemask+0xe88/0x1d60
> [  788.799030][ T1315]  alloc_fresh_huge_page+0x16c/0x588
> [  788.804206][ T1315]  alloc_surplus_huge_page+0x9c/0x278
> [  788.809468][ T1315]  hugetlb_acct_memory+0x114/0x5c4
> [  788.814469][ T1315]  hugetlb_reserve_pages+0x170/0x2b0
> [  788.819662][ T1315]  hugetlb_file_setup+0x26c/0x3a8
> [  788.824600][ T1315]  newseg+0x220/0x63c
> [  788.828490][ T1315]  ipcget+0x570/0x674
> [  788.832377][ T1315]  ksys_shmget+0x90/0xc4
> [  788.836525][ T1315]  __arm64_sys_shmget+0x54/0x88
> [  788.841282][ T1315]  el0_svc_handler+0x19c/0x26c
> [  788.845952][ T1315]  el0_svc+0x8/0xc
> 
> and then all other processes are waiting on the semaphore causes lock
> contentions,

That call to hugetlb_file_setup() via ipcget certainly could take a long
time to execute.  In the default case huge pages are reserved to back the
shared memory segment.  If these pages were not prealllocated, then the
code will try to dynamically allocate the required number of huge pages.
So, even if [1] were not an issue I think a change here makes sense.

> [  788.849583][ T1315] INFO: task hugemmap05:5027 blocked for more than 122
> seconds.
> [  788.857119][ T1315]       Tainted: G        W         5.2.0-rc6-next-20190624 
> #2
> [  788.864566][ T1315] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs"
> disables this message.
> [  788.873139][ T1315] hugemmap05      D26960  5027   5026 0x00000000
> [  788.879395][ T1315] Call trace:
> [  788.882576][ T1315]  __switch_to+0x2e0/0x37c
> [  788.886901][ T1315]  __schedule+0xb74/0xf0c
> [  788.891136][ T1315]  schedule+0x60/0x168
> [  788.895097][ T1315]  rwsem_down_write_slowpath+0x5a0/0x8c8
> [  788.900653][ T1315]  down_write+0xc0/0xc4
> [  788.904715][ T1315]  ipcget+0x74/0x674
> [  788.908516][ T1315]  ksys_shmget+0x90/0xc4
> [  788.912664][ T1315]  __arm64_sys_shmget+0x54/0x88
> [  788.917420][ T1315]  el0_svc_handler+0x19c/0x26c
> [  788.922088][ T1315]  el0_svc+0x8/0xc
> 
> Ideally, it seems only ipc_findkey() and newseg() in this path needs to hold the
> semaphore to protect concurrency access, so it could just be converted to a
> spinlock instead.

I do not have enough experience with this ipc code to comment on your proposed
change.  But, I will look into it.

[1] https://lkml.org/lkml/2019/4/23/2
-- 
Mike Kravetz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
