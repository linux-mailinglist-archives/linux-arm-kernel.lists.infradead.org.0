Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51FA74CF42
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 15:45:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6B8bJJpUCEScu8XTp7hp2EUv15eA0Kot4Ks1f7cAmkE=; b=dbzhEa9UUbN7nRaAdQYMvSDwU
	NGV141tG4T0Q9cItJYiKp9rTWaMu/HgNO83ynFZXBxh6vXZsHKc50Hk6wgJBY4fCXoFIN5TDqIi3d
	1faHIC1EVGMFxvJdVgqKC/L9nVOJC+MRlp4tg17manwCyQ1jbjqCh/R96JcwsgEF+kqEGWXwZnaFv
	Q9pcfipw6HGui1mCm/U3ALfK3VoHAwtNbz0iI5RH7pUKX0s8wncQMQMW0yYLDiaS1RYVlVvJzJuX9
	5srHX54w9B8PH/yYx6C/wk7IAN6+Ur2O65dgkVgbAfDA4Vtpo75JuqIzFTsK3Eif+dsL/UQerAC8a
	h+0O9BV6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdxNZ-0008JL-ER; Thu, 20 Jun 2019 13:45:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdxNF-0008Gg-EJ
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 13:45:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 04E25344;
 Thu, 20 Jun 2019 06:45:09 -0700 (PDT)
Received: from [10.37.9.222] (unknown [10.37.9.222])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0C46C3F718;
 Thu, 20 Jun 2019 06:45:06 -0700 (PDT)
Subject: Re: [PATCH v2 2/3] arm64/sve: Factor out FPSIMD to SVE state
 conversion
To: Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
References: <1560355234-25516-1-git-send-email-Dave.Martin@arm.com>
 <1560355234-25516-3-git-send-email-Dave.Martin@arm.com>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <3feb47cd-4425-6519-3cc8-3be558dbfa3d@arm.com>
Date: Thu, 20 Jun 2019 14:45:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1560355234-25516-3-git-send-email-Dave.Martin@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_064511_041543_945A908E 
X-CRM114-Status: GOOD (  11.07  )
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
> Currently we convert from FPSIMD to SVE register state in memory in
> two places.
> 
> To ease future maintenance, let's consolidate this in one place.
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
