Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 595CE2AEE4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 08:44:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KFWWbamaqeBJfo74oMgGQqNO14lq2WZjCnsrPyQiNRM=; b=K6vL21issU2x/f
	xC2hrz6d69lSX3Jul53kd8WSOUE3H3p++PDwiyJyxq+EjqaKqaqsHJy8f7nOCZrxeXhxZIDGO1NMx
	YCK7U2jYy+ofG6cP/6NX9M+J6i/+0j6LzXdk2nO+7vBBh5M6YtlAoCkfHzdayG6d0bW21TH1qm9Ze
	FcA2JneTFueyZeczsW+zl/miSY+0gk9zfUquZALbpcY/P6urEKpEe8FYYw+YBbRi5WSlenLJTKW4j
	orl1uDQ1kmuQcEDw8oJfVoILkC3B8rWxBdTBRCTy2BGvPnnFuXEyjHMwYgCQeAiL5DJQ7dxRfvDOr
	nIfxUF7is+XbAwPvkgNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV9Mg-0004jh-Jw; Mon, 27 May 2019 06:44:10 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV9Ma-0004iW-1B
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 06:44:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 759C0374;
 Sun, 26 May 2019 23:44:03 -0700 (PDT)
Received: from [10.162.40.17] (p8cg001049571a15.blr.arm.com [10.162.40.17])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A4F483F59C;
 Sun, 26 May 2019 23:44:01 -0700 (PDT)
Subject: Re: [PATCH] arm64/mm: Drop BUG_ON() from [pmd|pud]_set_huge()
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <1558929734-20051-1-git-send-email-anshuman.khandual@arm.com>
 <CAKv+Gu-OSkPWUACCt=hzQJbbNArjYzt_nyYXit-oMOZy8t3fTQ@mail.gmail.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <35b83daa-f092-fe77-0c1f-d32e2d573be5@arm.com>
Date: Mon, 27 May 2019 12:14:14 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu-OSkPWUACCt=hzQJbbNArjYzt_nyYXit-oMOZy8t3fTQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_234404_202888_06EDBC58 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/27/2019 12:07 PM, Ard Biesheuvel wrote:
> On Mon, 27 May 2019 at 06:02, Anshuman Khandual
> <anshuman.khandual@arm.com> wrote:
>> There are no callers for the functions which will pass unaligned physical
>> addresses. Hence just drop these BUG_ON() checks which are not required.
>>
> This might change in the future, right? Should we perhaps switch to
> VM_BUG_ON() instead so they get compiled out unless CONFIG_VM_DEBUG is
> enabled?

Sure we can do that. Will re-send.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
