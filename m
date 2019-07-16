Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5F06A42D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 10:48:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VaozLzULai2f8xIKzIa8XqpsCs80PVi/GY/9Bz+cptU=; b=pnCKUaUuhskUD7
	SuAl/u6aK/qqs3q3kDMZxG4HPiLIM3byUOrYSpm9mQzYqk3lxmx+phUDM/GxuNjMNfIbim5ZKkHTX
	CilUOLK2Zy75HZfR6ZifqJqKENv0XulqJOAl6YA8l/UoQru0TO+ixROTqbsrXB5W8uxqMM9bC4NNf
	E+HGul3QLhSFci0VS5FVcZ9/naQ/KhrLi57PguCLiK+vjTeHej0W1+ioAv0clyWEH1mTK9ukDuOnO
	DA5z6XRg7UtMozyJvJlpYguoPMeViXjt/2SEr1WKj7WoC+xsKFWJp4GzGStECmQLbsKR2A5WDnuT4
	FO1sJQHQHU69IPtHExDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnJ8a-00010Y-J7; Tue, 16 Jul 2019 08:48:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnJ6w-0000HB-7K
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 08:47:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 59DFA2B;
 Tue, 16 Jul 2019 01:46:55 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 66B973F59C; Tue, 16 Jul 2019 01:46:54 -0700 (PDT)
Subject: Re: [RFC] Add virtual SDEI support in qemu
To: Dave Martin <Dave.Martin@arm.com>, Mark Rutland <mark.rutland@arm.com>
References: <1b0aa6b2-80b1-a72e-6849-7323c3b9c6bc@huawei.com>
 <20190715134059.GJ2790@e103592.cambridge.arm.com>
 <20190715134848.GI56232@lakrids.cambridge.arm.com>
 <20190716083050.GK2790@e103592.cambridge.arm.com>
From: Marc Zyngier <marc.zyngier@arm.com>
Openpgp: preference=signencrypt
Autocrypt: addr=marc.zyngier@arm.com; prefer-encrypt=mutual; keydata=
 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
 Z46HaNmN2hZS/oJ69c1DI5Rcww==
Organization: ARM Ltd
Message-ID: <c2de59be-eded-b846-fc4d-24348732016c@arm.com>
Date: Tue, 16 Jul 2019 09:46:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716083050.GK2790@e103592.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_014658_402812_D78D7D4A 
X-CRM114-Status: GOOD (  10.30  )
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
Cc: Guoheyi <guoheyi@huawei.com>, qemu-arm@nongnu.org, qemu-devel@nongnu.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/07/2019 09:30, Dave Martin wrote:
> On Mon, Jul 15, 2019 at 02:48:49PM +0100, Mark Rutland wrote:
>> On Mon, Jul 15, 2019 at 02:41:00PM +0100, Dave Martin wrote:
> 
> [...]
> 
>>> So long as KVM_EXIT_HYPERCALL reports sufficient information so that
>>> userspace can identify the cause as an SMC and retrieve the SMC
>>> immediate field, this seems feasible.
>>>
>>> For its own SMCCC APIs, KVM exclusively uses HVC, so rerouting SMC to
>>> userspace shouldn't conflict.
>>
>> Be _very_ careful here! In systems without EL3 (and without NV), SMC
>> UNDEFs rather than trapping to EL2. Given that, we shouldn't build a
>> hypervisor ABI that depends on SMC.
> 
> Good point.  I was hoping that was all ancient history by now, but if
> not...

Unfortunately, XGene-1 is still a thing...

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
