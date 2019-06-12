Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C6A4269C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 14:50:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+iKa2YfmGtLg02IigZrzq1FxDF+DRl9F9MPT9jCoMSw=; b=tWma9mN1irdkaP
	chuRuWCy3nJMmjqBpYRk9CIR3Ol49pX+j9kL0glKeqOyGTV8jl9TZSJ1GTKjRsgOmUmdqcI2zjb69
	OQT4mHvI63U0wjQDICZV3FhdjDVyEcBKtUDu0SCyNXheUrJ4bZmh/92kZwXttVNYEZICeW8k1EUeX
	OJxzBy6tAcXztI8HU49XPseMyzbLISQ02aHpWCRLbW5ofZNvGOyPrCftrcckIEzJzqDPpe4WRTPuf
	90hlFrDGNXgfHg7/ojOQZQ2vmezLxkriumgga6wFzq8lAVGyZf8Fnuepi/mPFtJhn/KzNnqqfdE3e
	II4T1aRfWeK7tVl6+JQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2hi-0004Ku-Ig; Wed, 12 Jun 2019 12:50:14 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2gp-0003oE-UN
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 12:49:21 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id D58236C600BA13826720;
 Wed, 12 Jun 2019 20:49:11 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Wed, 12 Jun 2019
 20:49:07 +0800
Subject: Re: [PATCH v11 0/3] remain and optimize memblock_next_valid_pfn on
 arm and arm64
To: Jia He <hejianet@gmail.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <1534907237-2982-1-git-send-email-jia.he@hxt-semitech.com>
 <CAKv+Gu9u8RcrzSHdgXiqHS9HK1aSrjbPxVUSCP0DT4erAhx0pw@mail.gmail.com>
 <20180907144447.GD12788@arm.com>
 <84b8e874-2a52-274c-4806-968470e66a08@huawei.com>
 <CAKv+Gu9fd2Y7USDYnQdUuYd9L2OD99kU4A1x1JSF442KN96TTA@mail.gmail.com>
 <2de74de9-35b0-5e62-d822-1be59f0ef605@huawei.com>
 <8fdf5545-21b7-354c-4c4b-e1e92048864f@gmail.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <ed84966f-81ed-3be9-5b21-1fd92deea3cc@huawei.com>
Date: Wed, 12 Jun 2019 20:48:57 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <8fdf5545-21b7-354c-4c4b-e1e92048864f@gmail.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_054920_742979_EECF6961 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Wei Yang <richard.weiyang@gmail.com>, Linux-MM <linux-mm@kvack.org>,
 James Morse <james.morse@arm.com>, Eugeniu Rosca <erosca@de.adit-jv.com>,
 Petr Tesarik <ptesarik@suse.com>, Nikolay Borisov <nborisov@suse.com>,
 Russell King <linux@armlinux.org.uk>,
 Daniel Jordan <daniel.m.jordan@oracle.com>, AKASHI
 Takahiro <takahiro.akashi@linaro.org>, Mel Gorman <mgorman@suse.de>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Laura Abbott <labbott@redhat.com>,
 Daniel Vacek <neelx@redhat.com>, Vladimir Murzin <vladimir.murzin@arm.com>,
 Kees Cook <keescook@chromium.org>, Philip Derrin <philip@cog.systems>,
 YASUAKI ISHIMATSU <yasu.isimatu@gmail.com>, Jia He <jia.he@hxt-semitech.com>,
 Ard Biesheuvel <ard.biesheuvel@arm.com>, Kemi Wang <kemi.wang@intel.com>,
 Vlastimil Babka <vbabka@suse.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Steve Capper <steve.capper@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Gioh Kim <gi-oh.kim@profitbricks.com>, Johannes Weiner <hannes@cmpxchg.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/6/12 9:05, Jia He wrote:
>>
>>> So what I would like to see is the patch set being proposed again,
>>> with the new data points added for documentation. Also, the commit
>>> logs need to crystal clear about how the meaning of PFN validity
>>> differs between ARM and other architectures, and why the assumptions
>>> that the optimization is based on are guaranteed to hold.
>> I think Jia He no longer works for HXT, if don't mind, I can repost
>> this patch set with Jia He's authority unchanged.
> Ok, I don't mind that, thanks for your followup :)

That's great, I will prepare a new version with Ard's comments addressed
then repost.

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
