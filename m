Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F431CE304
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 20:50:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cPYtlt8wJTjsYzDZy/V7RCz7u8G7yVT5HCYelEOkD3w=; b=qqKMrbFQAk4tKH
	aO1SC31oSRiz3Ho/A55a+4Us1d//SXam1mzFUVPKvsohkl1E3XXoMuU8PzQhwfT/dHtJg6zk+kF4n
	gnDw0aPhF6jEx9JMFwufcI6kYPlitu2tKLAiIMh0O0GEw2iUS2WTNGzrvOfHTwL3h0eThXHuesJTB
	l2TuxLdFpteK2LHhjIexh+b/tYbm6j/i0CF4ryY7srrw+ly7gcuxcInIYoSHmu7Gr7Pi/IkE8tLYQ
	UC8RsuYnSbT3frpjK/s8nEIlPPXBUGgFRsglKquNovKQbputKKpgVTfpJXAlu+9tNnExaC5BykFTn
	tLuymGNrttaP57NvkNQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYDVJ-0005vk-0T; Mon, 11 May 2020 18:50:17 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYDVA-0004U4-3H
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 18:50:09 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04BIlBYe194121;
 Mon, 11 May 2020 18:49:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=ho+TJR2bHaPVB8fdDxH9KqcgGiIrAX/QH02McijZ/ds=;
 b=a2a8qvoMPfVMSLmB0YJ6hFMDqWoDYjuqArTQZext/iDa3bH9/RXn19l8t5tAENpHqLhP
 f1LvntTjpS/FoDx/Uy/Q8ZmPz4qtSeqfuJXwz1gTbukerLPhiSnwQOBor1cDLinfU3pU
 yLe7xKuy8yDk7w3KagRt9/b6fNprh7xwla+lqTtEHZkrm8XvHqcoJeUs4cCj9JSRaE2r
 bxq6V2mN8e6hwm8ZNYDlw6W9JvY2im2UEgBiIPVrYWQsiYZt6XG3zU5AYXCGIryoRBwv
 z2NFG6dhYHbb4kT3xyGle/qxKiwB7JV3WYm/EpfLUEt8WQq6XgQX5UzHRzajdSJkZeBC Lg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 30x3mbpvb6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 11 May 2020 18:49:56 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04BIltAg134470;
 Mon, 11 May 2020 18:49:55 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 30x6ewjsrn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 11 May 2020 18:49:55 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04BInsUM023494;
 Mon, 11 May 2020 18:49:54 GMT
Received: from [192.168.2.157] (/73.164.160.178)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 11 May 2020 11:49:54 -0700
Subject: Re: [PATCH V3 1/3] arm64/mm: Drop __HAVE_ARCH_HUGE_PTEP_GET
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org,
 akpm@linux-foundation.org
References: <1588907271-11920-1-git-send-email-anshuman.khandual@arm.com>
 <1588907271-11920-2-git-send-email-anshuman.khandual@arm.com>
 <7db44202-0d21-d8fb-6998-0210508a488a@oracle.com>
 <19ffbe33-3a42-6d90-6c48-19645a898383@arm.com>
From: Mike Kravetz <mike.kravetz@oracle.com>
Message-ID: <7642f615-23ff-56c7-25da-f84c409449b5@oracle.com>
Date: Mon, 11 May 2020 11:49:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <19ffbe33-3a42-6d90-6c48-19645a898383@arm.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9618
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 spamscore=0 phishscore=0
 mlxlogscore=999 mlxscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005110142
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9618
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 impostorscore=0
 mlxscore=0 suspectscore=0 bulkscore=0 mlxlogscore=999 phishscore=0
 malwarescore=0 lowpriorityscore=0 spamscore=0 adultscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005110142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_115008_240076_C88D5F50 
X-CRM114-Status: GOOD (  22.16  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/10/20 9:02 PM, Anshuman Khandual wrote:
> On 05/09/2020 03:39 AM, Mike Kravetz wrote:
>> On 5/7/20 8:07 PM, Anshuman Khandual wrote:
>> I know you made this change in response to Will's comment.  And, since
>> changes were made to consistently use READ_ONCE in arm64 code, it makes
>> sense for that architecture.
>>
>> However, with this change to generic code, you introduce READ_ONCE to
>> other architectures where it was not used before.  Could this possibly
>> introduce inconsistencies in their use of READ_ONCE?  To be honest, I
>> am not very good at identifying any possible issues this could cause.
>> However, it does seem possible.
> 
> Could you please give some more details. Is there any particular problem
> which might be caused by this new READ_ONCE() here, that you you are
> concerned about. READ_ONCE() is already getting used in multiple places
> in core MM which can not be configured out (like mm/gup.c). It is getting
> used in core HugeTLB (mm/hugetlb.c) as well. AFAICS, there is no standard
> for using READ_ONCE() while walking page tables entries. We have examples
> in core MM for both ways.
> 
>>
>> Will was nervous about dropping this from arm64.  I'm just a little nervous
>> about adding it to other architectures.
>>
> AFAICS, __HAVE_ARCH_HUGE_PTEP_GET should be used on a platform only when
> a HugeTLB entry could not constructed by dereferencing a page table entry
> as in the case with ARM (32 bit). Using READ_ONCE() while dereferencing is
> really not a special case that will need __HAVE_ARCH_HUGE_PTEP_GET. Moving
> READ_ONCE() into generic definition solves the problem while also taking
> care of a known problem on arm64. IMHO, it seems like the right thing to
> do unless there is another problem that pops up some where else because of
> READ_ONCE().

I have no specific concerns or objection.  After thinking about it some more,
I do not see how adding the READ_ONCE could cause any issues.

Acked-by: Mike Kravetz <mike.kravetz@oracle.com>

-- 
Mike Kravetz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
