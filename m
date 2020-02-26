Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5211E1706F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 19:05:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gS/I6jyajSJ4xdausaGz0yh1HrWIvR8V3qt++sxqBvw=; b=jEr41k4QB0U9Z53vyZsk+hHN3
	b344M2aqgpvqe/LOrqY+gnCXqnCK+m9gP6UCoJ8kqpOP+Ytx39obHEc1x6V1fhMWrnz8YhcjhzPrJ
	txolq7DyRx6Qmfd8akrYwMXqnRaMFIbeCEwv6TmFiUN0F50IfwD+S7hXrTWk7+jEHSFT6nsBj4unZ
	Q4TS4xWRo+JWGaT4WtyigJ+moGRncFK29ZneRCb0EdwzujWYOQiqCV2imtCkFNhELJ3cbrwlUWpl0
	XhR/ZzloIawzAqzgPsNBmwQlfb6B4KvwFEmXYWnB8PXndyXa6tRyV/uIP5ACEhftkKvgDrQbg2cVL
	mAlJHsJ/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j713c-0006yw-L5; Wed, 26 Feb 2020 18:05:16 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j713T-0006Of-Hb
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 18:05:09 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01QI3gV4083141;
 Wed, 26 Feb 2020 18:04:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=qXKO8J92zXC1Yk6VbsBzAn5OB4Z+y9gt1UWWLl4AUq8=;
 b=nVHa1z7heHVs9l2OfaOgeGMQj1U6NLYyy+miHyAyt0jqm1PjfYY7O3btec1/u1UA103m
 D5mDtuZ//HE63Pl3M2QOBfZX6w4dKnzNDqaQ6tgKYtAAmG5jEPZkxcj/rX9r/aPo3d82
 6N3BUG2VHy1GvP7Yh4A3XFsC5RfmNLvHDFb3aGSrQlDjN7tl5SMiCKe+sjqsV3/Np/0a
 fFc97oBc3GwBa8o34VFykPslvTGm1gnqlF99qLzS3OOEQeQIWJsnHANJyS5sM19WqSqO
 dwldxTx63bq3aRsQKKrGV+MVL8iw/UI994G5iRIXQktxnKDaqdLzFSpjpg7roNfLvPD4 Xw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2ydcsrne8y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Feb 2020 18:04:38 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01QI25wB183864;
 Wed, 26 Feb 2020 18:04:37 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2ydj4j4587-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Feb 2020 18:04:35 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 01QI4JYX029321;
 Wed, 26 Feb 2020 18:04:19 GMT
Received: from [10.209.227.41] (/10.209.227.41)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 26 Feb 2020 10:04:18 -0800
Subject: Re: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
To: Arnd Bergmann <arnd@arndb.de>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20200211175507.178100-1-hannes@cmpxchg.org>
 <29b6e848ff4ad69b55201751c9880921266ec7f4.camel@surriel.com>
 <20200211193101.GA178975@cmpxchg.org>
 <20200211154438.14ef129db412574c5576facf@linux-foundation.org>
 <CAHk-=wiGbz3oRvAVFtN-whW-d2F-STKsP1MZT4m_VeycAr1_VQ@mail.gmail.com>
 <20200211164701.4ac88d9222e23d1e8cc57c51@linux-foundation.org>
 <CAHk-=wg1ZDADD3Vuw_sXhmBOrQ2xsp8YWxmtWiA6vG0RT-ZQ+A@mail.gmail.com>
 <20200212085004.GL25745@shell.armlinux.org.uk>
 <CAK8P3a3pzgVvwyDhHPoiSOqyv+h_ixbsdWMqG3sELenRJqFuew@mail.gmail.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <671b05bc-7237-7422-3ece-f1a4a3652c92@oracle.com>
Date: Wed, 26 Feb 2020 10:04:17 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAK8P3a3pzgVvwyDhHPoiSOqyv+h_ixbsdWMqG3sELenRJqFuew@mail.gmail.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9543
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0 suspectscore=0
 spamscore=0 adultscore=0 malwarescore=0 mlxlogscore=999 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002260116
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9543
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 adultscore=0 suspectscore=0
 bulkscore=0 malwarescore=0 spamscore=0 impostorscore=0 clxscore=1011
 lowpriorityscore=0 mlxlogscore=999 phishscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002260116
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_100507_683626_2786C1A8 
X-CRM114-Status: GOOD (  24.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Michal Hocko <mhocko@suse.com>, Rik van Riel <riel@surriel.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Dave Chinner <david@fromorbit.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Roman Gushchin <guro@fb.com>, Linux-MM <linux-mm@kvack.org>,
 Yafang Shao <laoar.shao@gmail.com>, Al Viro <viro@zeniv.linux.org.uk>,
 Johannes Weiner <hannes@cmpxchg.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, kernel-team@fb.com,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/13/20 8:52 AM, Arnd Bergmann wrote:
> On Wed, Feb 12, 2020 at 9:50 AM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
>>
>> On Tue, Feb 11, 2020 at 05:03:02PM -0800, Linus Torvalds wrote:
>>> On Tue, Feb 11, 2020 at 4:47 PM Andrew Morton <akpm@linux-foundation.org> wrote:
>>>>
>>>> What's the situation with highmem on ARM?
>>>
>>> Afaik it's exactly the same as highmem on x86 - only 32-bit ARM ever
>>> needed it, and I was ranting at some people for repeating all the
>>> mistakes Intel did.
>>>
>>> But arm64 doesn't need it, and while 32-bit arm is obviosuly still
>>> selling, I think that in many ways the switch-over to 64-bit has been
>>> quicker on ARM than it was on x86. Partly because it happened later
>>> (so all the 64-bit teething pains were dealt with), but largely
>>> because everybody ended up actively discouraging 32-bit on the Android
>>> side.
>>>
>>> There were a couple of unfortunate early 32-bit arm server attempts,
>>> but they were - predictably - complete garbage and nobody bought them.
>>> They don't exist any more.
> 
> I'd generally agree with that, the systems with more than 4GB tended to
> be high-end systems predating the Cortex-A53/A57 that quickly got
> replaced once there were actual 64-bit parts, this would include axm5516
> (replaced with x86-64 cores after sale to Intel), hip04 (replaced
> with arm64), or ecx-2000 (Calxeda bankruptcy).
> 
> The one 32-bit SoC that I can think of that can actually drive lots of
> RAM and is still actively marketed is TI Keystone-2/AM5K2.
> The embedded AM5K2 is listed supporting up to 8GB of RAM, but
> the verison in the HPE ProLiant m800 server could take up to 32GB (!).
> 
> I added Santosh and Kishon to Cc, they can probably comment on how
> long they think users will upgrade kernels on these. I suspect these
> devices can live for a very long time in things like wireless base stations,
> but it's possible that they all run on old kernels anyway by now (and are
> not worried about y2038).
> 
>>> So at least my gut feel is that the arm people don't have any big
>>> reason to push for maintaining HIGHMEM support either.
>>>
>>> But I'm adding a couple of arm people and the arm list just in case
>>> they have some input.
The Keystone generations of SOCs have been used in different areas and
they will be used for long unless says otherwise.

Apart from just split of lowmem and highmem, one of the peculiar thing
with Keystome family of SOCs is the DDR is addressable from two
addressing ranges. The lowmem address range is actually non-cached
range and the higher range is the cacheable.

So apart from LPAE, another change I needed to do back then is to boot
the linux from lowmem with bootstrap MMU tables and then re-create
MMU tables early (mmu init) and use higher range for entire memory so
that L3 cache can be used.

AFAIK, all the derived SOCs from Keystone architecture inherently
use this feature.

Regards,
Santosh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
