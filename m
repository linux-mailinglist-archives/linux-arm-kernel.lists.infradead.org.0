Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9396C19BFDD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 13:06:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xmoU0VaHbUQLNvgaMUAfPXb4vUx6CT2C9zUMGfyXRyw=; b=AK/fJNoPPrPHw/efepXJJAvu0
	4OixDFTAi2hlu4ZUuMF8C9X29P/y7fowedfVU2AEeOVXokREtjPJ8CxKhVII13XGXu9L4T2ZBaae9
	xKyfqUM/LsroUigUcBwVHt/MpDWoiQBPgXAUzutPyQvr1WHqZ5gxXrGDkOzZe4gpxSbm9RcLZRcTl
	WcBXQ19lQ0WZDTc2ujzA4w/iF5R5fShyI/xOMmRk2qi2aBc3et5w0RQifCnP2nxkr8kwATvuA3BMV
	p1wcSbWmecqKK3OmQab21v/Rdw9B353o/zXM1MzHgUCRyiTPO451lstkTlt6TUcyFLiyfHo097EXu
	MdHD7VmCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJxg4-00049H-Gz; Thu, 02 Apr 2020 11:06:28 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJxfj-0003yV-CO
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 11:06:09 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 032B5mRO043791;
 Thu, 2 Apr 2020 06:05:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1585825548;
 bh=tIB72R51lzoNJX57UIZhH59wu8O+hq4911x6tWDtvvM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=gOwzDAgbuy6A3udlkBX8OS1lDFrDuI3qTrkUUUoUoc1Yt9GM0kjMrSICN2gv/wUlm
 N+ARrhZGUUrVkkiTymEvE3f/gQ0olYy2JhnxKFZhbQXKqGzmqCM1iDA1vOBRRtxLjN
 seH14/kjhBenKSX66yfQfWQXgz7tR2iWiqHLX0bM=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 032B5mcq096678;
 Thu, 2 Apr 2020 06:05:48 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 2 Apr
 2020 06:05:48 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 2 Apr 2020 06:05:47 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 032B5fOW029504;
 Thu, 2 Apr 2020 06:05:42 -0500
Subject: Re: [PATCH net-next v6 00/11] net: ethernet: ti: add networking
 support for k3 am65x/j721e soc
To: Will Deacon <will@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>
References: <20200401.113627.1377328159361906184.davem@davemloft.net>
 <20200401223500.224253-1-ndesaulniers@google.com>
 <20200402094239.GA3770@willie-the-truck>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <adc2aa08-60e2-cdc3-6b5b-6d96f8805c44@ti.com>
Date: Thu, 2 Apr 2020 14:05:36 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200402094239.GA3770@willie-the-truck>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_040607_605376_C156EF99 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, arnd@arndb.de, robh@kernel.org,
 netdev@vger.kernel.org, t-kristo@ti.com, nsekhar@ti.com,
 linux-kernel@vger.kernel.org, kishon@ti.com, peter.ujfalusi@ti.com,
 clang-built-linux@googlegroups.com, m-karicheri2@ti.com, olof@lixom.net,
 kuba@kernel.org, olteanv@gmail.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org, rogerq@ti.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 02/04/2020 12:42, Will Deacon wrote:
> On Wed, Apr 01, 2020 at 03:35:00PM -0700, Nick Desaulniers wrote:
>>>> I think the ARM64 build is now also broken on Linus' master branch,
>>>> after the net-next merge? I am not quite sure if the device tree
>>>> patches were supposed to land in mainline the way they did.
>>>
>>> There's a fix in my net tree and it will go to Linus soon.
>>>
>>> There is no clear policy for dt change integration, and honestly
>>> I try to deal with the situation on a case by case basis.
>>
>> Yep, mainline aarch64-linux-gnu- builds are totally hosed.  DTC fails the build
>> very early on:
>> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/311246218
>> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/311246270
>> There was no failure in -next, not sure how we skipped our canary in the coal
>> mine.
> 
> Yes, one of the things linux-next does a really good job at catching is
> build breakage so it would've been nice to have seen this there rather
> than end up with breakage in Linus' tree :(
> 
> Was the timing just bad, or are we missing DT coverage or something else?

It seems issue was not caught in -next because the patch that fixes the issue was already in -next
before this series was pushed.

Sorry for the mess again.

-- 
Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
