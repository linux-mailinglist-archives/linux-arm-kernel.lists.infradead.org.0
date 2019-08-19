Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF5691E7D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 09:59:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jVAcGoQFaWr6LHhjbgpcjlwAAYbr4GmT6H5f4OZoO54=; b=RFRnIAwZ3ZAl8RkDkUo9weSFf
	EWu6yCi84CgSEJyLby6mP+Eo8CYgnibsfPvfrM0XJVBUR3qKxC6j1S5jRwDVTr9d+mJPfl4ErKWjS
	+Rf7J5QpVNoKZ7NrJW2nBWzDR7Dccmei9GQhe+WhIbZhnSLBELs02wdp9aJuz60qY7JZzLHkSRkbE
	hh0TzYKE9zZiNjQe7o3FAH+8dFgWT4eNZZCYsN5j6vjJ7B07Uqy9ByXutyl3cjPN/0Z8imPl7v695
	4jMFiO/upCz9L+tBCoTWzYPo/PJD+nrX7arAM90JwMO73OFlwpIDXONWukT6ovdXugM6rRwzQOoH4
	qFdBObdJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzca2-00038N-6c; Mon, 19 Aug 2019 07:59:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzcZp-00037V-1y
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 07:59:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D7E76337;
 Mon, 19 Aug 2019 00:59:35 -0700 (PDT)
Received: from [10.1.196.120] (e121650-lin.cambridge.arm.com [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7250E3F718;
 Mon, 19 Aug 2019 00:59:34 -0700 (PDT)
Subject: Re: [PATCH v3 4/5] arm64: perf: Enable pmu counter direct access for
 perf event on armv8
To: kbuild test robot <lkp@intel.com>
References: <20190816125934.18509-5-raphael.gault@arm.com>
 <201908182002.KAH4UW2w%lkp@intel.com>
From: Raphael Gault <raphael.gault@arm.com>
Message-ID: <a41e1a4b-b082-725a-b24e-9c92f66d174a@arm.com>
Date: Mon, 19 Aug 2019 08:59:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <201908182002.KAH4UW2w%lkp@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_005941_138254_02213A6C 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, raph.gault+kdev@gmail.com, peterz@infradead.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 acme@kernel.org, mingo@redhat.com, kbuild-all@01.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 8/18/19 1:37 PM, kbuild test robot wrote:
> Hi Raphael,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on linus/master]
> [cannot apply to v5.3-rc4 next-20190816]
> [if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

This patchset was based on linux-next/master and note linus

Thanks,

-- 
Raphael Gault

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
