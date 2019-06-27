Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 251BF5898B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 20:11:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/0uvd1GSAf0B0rcBR5CiWC9svw1SL6TLfc0ODG16XTw=; b=ZF79en9mglX9ml
	A4rHWTvMeSFztpDr6Ia/rrFnr05sw2ImH3rtevZsVfG9pxWSog0U7w73TNPlfVow7KGwrafsXcViP
	ZyIIhQk0vDHxzuKPcaTXjX/M0VhYcTvr6bPEdgF8LsiX0NNWPrpr0ZJh6A3i2YAtwqERTbvcmfnWQ
	zNtiNH+UCvFplg88X0ZF+dIU6dXgjVOhOsRj/UfTz6NmJfbby6XjJjV64ulK0k6blBcYP+YFeElw3
	+l23TGAzqFlwdXtWtstIHBrqFaHVscqwRDPT+7O4E8Oic1RUFSZPxPSL+L1lsoDSsudDEm8YQhVW5
	wUhrV2LTabzzkC9AdUng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgYsA-0001W1-0p; Thu, 27 Jun 2019 18:11:50 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgYru-0008Oc-VS
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 18:11:36 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5RI9MIv127411;
 Thu, 27 Jun 2019 18:09:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : from : to :
 cc : references : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2018-07-02;
 bh=t/rruMnao2wR61MPFoLKt9zfyEZplrn1UsBge3sXHjc=;
 b=mxwGBgo6P/4M62KLP3A86hDTWZOF/CX7Ejy3CZTQKmD3ZyCo2ckpBT7qYCR4SAK7PHaq
 TtDTW6VWyO5sg1ciq25hYpWjWOQkJguDjbFkDiE9OJuJjniigy0p6vgSgcm6+1co8iJ3
 CRxjIi8xmNL/Ekzf98KaYOJLr/QI7o3pw4fJObUYVIBM5pqV2lY2eUX4KdfRpuETcpVo
 VvxoJlKqqWOU+Mg7tjZ4x1e010nheAklNM/3LNwGnzlkuJ7ryGhw0PxupqlcoFVmrgbS
 pDahFNsaHcZW3RzFinHP0R6ihqR+jfb1zdO5IkyCUPOrjSx/1Q1nvLAZi2dFu31GKXXa 3Q== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2t9c9q1tfd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 27 Jun 2019 18:09:21 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5RI876F020980;
 Thu, 27 Jun 2019 18:09:21 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 2t9acddck4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 27 Jun 2019 18:09:21 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5RI9HMH015017;
 Thu, 27 Jun 2019 18:09:19 GMT
Received: from [192.168.1.222] (/71.63.128.209)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 27 Jun 2019 11:09:17 -0700
Subject: Re: LTP hugemmap05 test case failure on arm64 with linux-next
 (next-20190613)
From: Mike Kravetz <mike.kravetz@oracle.com>
To: Qian Cai <cai@lca.pw>, Will Deacon <will@kernel.org>
References: <1560461641.5154.19.camel@lca.pw>
 <20190614102017.GC10659@fuggles.cambridge.arm.com>
 <1560514539.5154.20.camel@lca.pw>
 <054b6532-a867-ec7c-0a72-6a58d4b2723e@arm.com>
 <EC704BC3-62FF-4DCE-8127-40279ED50D65@lca.pw>
 <20190624093507.6m2quduiacuot3ne@willie-the-truck>
 <1561381129.5154.55.camel@lca.pw> <1561411839.5154.60.camel@lca.pw>
 <ed517a19-7804-c679-da94-279565001ca1@oracle.com>
Message-ID: <15651f16-8d30-412f-8064-41ff03f3f47d@oracle.com>
Date: Thu, 27 Jun 2019 11:09:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <ed517a19-7804-c679-da94-279565001ca1@oracle.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9301
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906270208
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9301
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906270208
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_111135_102939_5F782752 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 6/24/19 2:53 PM, Mike Kravetz wrote:
> On 6/24/19 2:30 PM, Qian Cai wrote:
>> So the problem is that ipcget_public() has held the semaphore "ids->rwsem" for
>> too long seems unnecessarily and then goes to sleep sometimes due to direct
>> reclaim (other times LTP hugemmap05 [1] has hugetlb_file_setup() returns
>> -ENOMEM),
> 
> Thanks for looking into this!  I noticed that recent kernels could take a
> VERY long time trying to do high order allocations.  In my case it was trying
> to do dynamic hugetlb page allocations as well [1].  But, IMO this is more
> of a general direct reclaim/compation issue than something hugetlb specific.
> 

<snip>

>> Ideally, it seems only ipc_findkey() and newseg() in this path needs to hold the
>> semaphore to protect concurrency access, so it could just be converted to a
>> spinlock instead.
> 
> I do not have enough experience with this ipc code to comment on your proposed
> change.  But, I will look into it.
> 
> [1] https://lkml.org/lkml/2019/4/23/2

I only took a quick look at the ipc code, but there does not appear to be
a quick/easy change to make.  The issue is that shared memory creation could
take a long time.  With issue [1] above unresolved, creation of hugetlb backed
shared memory segments could take a VERY long time.

I do not believe the test failure is arm specific.  Most likely, it is just
because testing was done on a system with memory size to trigger this issue?

My plan is to focus on [1].  When that is resolved, this issue should go away.
-- 
Mike Kravetz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
