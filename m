Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F16114CF37
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 15:43:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UC2bdAWbhF+YSsys+vDq3qjxh1FylOmX4sELyj8bbFM=; b=iRDiNsQoItkaJc+J87FBgra3Q
	Jc94u+PHWa7mWBF4k5BZBajbR+cwx0vVS6QkZqWHElM2ruCqSlD8SqsbAAkR0gs0w19DP9PrXogl4
	nf0QNIbvhtOjAm7N6uxBOMQhTzzKefyzWU03ILiZBTZn7yXFiVFWcLl2NGptieYxYLGTrrb1+urFV
	4rPyis3kO6AQXzFKuUIDB5RWxTGDKfwYA59USS6G/Iq7j1E8OyWoF2+uLZHCdODOIkutuJwtIVnqs
	9E8ETjzFfL7oYMNuVgr+TqadVFdD+Yo7OF0ZgH2uARP1B0y5ZMAS8pBt+ezQjs5Kf7uwYIedeT1dI
	E9rO7V40A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdxLp-0006bq-MW; Thu, 20 Jun 2019 13:43:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdxLb-0006bG-Fw
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 13:43:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 031F0344;
 Thu, 20 Jun 2019 06:43:27 -0700 (PDT)
Received: from [10.37.9.222] (unknown [10.37.9.222])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EA7C83F718;
 Thu, 20 Jun 2019 06:43:24 -0700 (PDT)
Subject: Re: [PATCH v2 3/3] arm64/sve: Fix a couple of magic numbers for the
 Z-reg count
To: Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
References: <1560355234-25516-1-git-send-email-Dave.Martin@arm.com>
 <1560355234-25516-4-git-send-email-Dave.Martin@arm.com>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <58a0a8ec-49b0-7002-a86f-7973158672b0@arm.com>
Date: Thu, 20 Jun 2019 14:43:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1560355234-25516-4-git-send-email-Dave.Martin@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_064327_586717_A03E1403 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Peter Maydell <peter.maydell@linaro.org>, gdb@sourceware.org,
 Alan Hayward <alan.hayward@arm.com>, Will Deacon <will.deacon@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 =?UTF-8?Q?Alex_Benn=c3=a9e?= <alex.bennee@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

On 6/12/19 5:00 PM, Dave Martin wrote:
> There are some hand-written instances of "32" to express the number
> of SVE Z-registers.
> 
> Since this code was written a #define was added for this, so
> convert trivial instances of this magic number as appropriate.
> 
> No functional change.
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Reviewed-by: Julien Grall <julien.grall@arm.com>

Cheers,

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
