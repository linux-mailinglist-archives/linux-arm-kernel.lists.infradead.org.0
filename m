Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFDA170A3D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 22:12:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h4COdO2kKN1f1UZupssoB+maSyfgfNpnklPctEGNntk=; b=RfRx2cZiljmkc9B5k5d9K8NlE
	EG9bF2LmmA3u2R9Exd8MrztueM4HQ4s4/IwFEZBHqv79mZMRLqrAyJEG2dh9jQx7uNPqB3t1xhCFV
	aZXrfeP3bC12ujGF0zorKsgsSUQjZMYjkORHDAfEaOGe2g26+Gw2frlapREdC+0bbgY+OBvgMWVHS
	Fs4Fh4kLawFVt90oUI0+OXGTcHQaUGPJwYDBqGCjNdApiICFBGVk3pUEmUDkEvyVzMvA4AGeix4UO
	+3awj3OBXDjNp0A8ShMzh9nerpu7cmBZt13undTmtCqBmN9gMGSSjzaUOdvswGUebUgoOEFBefbV8
	UwchxKIDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j73yT-0000xk-A8; Wed, 26 Feb 2020 21:12:09 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j73yH-0000xR-Up
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 21:11:59 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01QL3gpZ060586;
 Wed, 26 Feb 2020 21:11:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=rxC5xpipAUhGNNMWHp6ES0pv2giMw3uyxi5WN3U/eTE=;
 b=W7u96SLqMZPUajqgxXsXKp5SlvSJRsCU4lFUHtcOIw50LnQnh55yHShfxPyHpGLFaJdI
 tfBsRhcVYyzzFyN75ReZK/W0i5edQT7/SFvD8fXEzEQ8Ei8jp7msJxUwzVrEqSgYRMC5
 jw8Q1sRzyh0tBImIBkBmvMCo3h/Tb39bdBhONkV75KkY+lbRFs7PqEH+x/SKk+TkRZqv
 BiO0PCwBHnID2v48kVEG4whZpW1KZhZ+rA9dtJFjp3+LKVYo9WdESqm428pohaduMUm4
 VliqkcSLA2Uvb2Mp7DK+4UgUarSnF6luFEII41+19BTJihGDKlqcmX6mpAfVAyXR/8et yg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2ydybcgatf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Feb 2020 21:11:33 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01QL2GQQ072854;
 Wed, 26 Feb 2020 21:11:32 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2ydcs6965f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Feb 2020 21:11:32 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 01QLBRJX014010;
 Wed, 26 Feb 2020 21:11:27 GMT
Received: from [10.209.227.41] (/10.209.227.41)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 26 Feb 2020 13:11:27 -0800
Subject: Re: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
To: Arnd Bergmann <arnd@arndb.de>, Nishanth Menon <nm@ti.com>,
 Tero Kristo <t-kristo@ti.com>
References: <20200211175507.178100-1-hannes@cmpxchg.org>
 <29b6e848ff4ad69b55201751c9880921266ec7f4.camel@surriel.com>
 <20200211193101.GA178975@cmpxchg.org>
 <20200211154438.14ef129db412574c5576facf@linux-foundation.org>
 <CAHk-=wiGbz3oRvAVFtN-whW-d2F-STKsP1MZT4m_VeycAr1_VQ@mail.gmail.com>
 <20200211164701.4ac88d9222e23d1e8cc57c51@linux-foundation.org>
 <CAHk-=wg1ZDADD3Vuw_sXhmBOrQ2xsp8YWxmtWiA6vG0RT-ZQ+A@mail.gmail.com>
 <20200212085004.GL25745@shell.armlinux.org.uk>
 <CAK8P3a3pzgVvwyDhHPoiSOqyv+h_ixbsdWMqG3sELenRJqFuew@mail.gmail.com>
 <671b05bc-7237-7422-3ece-f1a4a3652c92@oracle.com>
 <CAK8P3a13jGdjVW1TzvCKjRBg-Yscs_WB2K1kw9AzRfn3G9a=-Q@mail.gmail.com>
From: santosh.shilimkar@oracle.com
Organization: Oracle Corporation
Message-ID: <7c4c1459-60d5-24c8-6eb9-da299ead99ea@oracle.com>
Date: Wed, 26 Feb 2020 13:11:26 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAK8P3a13jGdjVW1TzvCKjRBg-Yscs_WB2K1kw9AzRfn3G9a=-Q@mail.gmail.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9543
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 bulkscore=0 phishscore=0
 mlxlogscore=999 spamscore=0 suspectscore=0 mlxscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002260125
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9543
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0
 adultscore=0
 priorityscore=1501 suspectscore=0 mlxlogscore=999 lowpriorityscore=0
 phishscore=0 spamscore=0 clxscore=1015 malwarescore=0 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002260125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_131158_085608_499F94FF 
X-CRM114-Status: GOOD (  23.13  )
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Hocko <mhocko@suse.com>, Rik van Riel <riel@surriel.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Dave Chinner <david@fromorbit.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Yafang Shao <laoar.shao@gmail.com>,
 Al Viro <viro@zeniv.linux.org.uk>, Johannes Weiner <hannes@cmpxchg.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, kernel-team@fb.com,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, Roman Gushchin <guro@fb.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+Nishant, Tero

On 2/26/20 1:01 PM, Arnd Bergmann wrote:
> On Wed, Feb 26, 2020 at 7:04 PM <santosh.shilimkar@oracle.com> wrote:
>>
>> On 2/13/20 8:52 AM, Arnd Bergmann wrote:
>>> On Wed, Feb 12, 2020 at 9:50 AM Russell King - ARM Linux admin
>>> <linux@armlinux.org.uk> wrote:
>>
>> The Keystone generations of SOCs have been used in different areas and
>> they will be used for long unless says otherwise.
>>
>> Apart from just split of lowmem and highmem, one of the peculiar thing
>> with Keystome family of SOCs is the DDR is addressable from two
>> addressing ranges. The lowmem address range is actually non-cached
>> range and the higher range is the cacheable.
> 
> I'm aware of Keystone's special physical memory layout, but for the
> discussion here, this is actually irrelevant for the discussion about
> highmem here, which is only about the way we map all or part of the
> available physical memory into the 4GB of virtual address space.
> 
> The far more important question is how much memory any users
> (in particular the subset that are going to update their kernels
> several years from now) actually have installed. Keystone-II is
> one of the rare 32-bit chips with fairly wide memory interfaces,
> having two 72-bit (with ECC) channels rather than the usual one
>   or two channels of 32-bit DDR3. This means a relatively cheap
> 4GB configuration using eight 256Mx16 chips is possible, or
> even a 8GB using sixteen or eighteen 512Mx8.
> 
> Do you have an estimate on how common these 4GB and 8GB
> configurations are in practice outside of the TI evaluation
> board?
> 
 From my TI memories, many K2 customers were going to install
more than 2G memory. Don't remember 8G, but 4G was the dominant
one afair. Will let Nishant/Tero elaborate latest on this.

regards,
Santosh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
