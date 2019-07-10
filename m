Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 320C464971
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 17:19:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJCqaTsdSoO1ahsKAFKKC7V54yeFef4ew+VAqcRyRKE=; b=fNauXZUOWyqJ6A
	1W7KU8g3xdBraV1uRE2tspH+zy+jLBTZBrxwrcdDglSA8vXHIexu4E/CueO/bsQtg8bjFmw3AOlkT
	DzUBsSuhHxkYfJpUntt6pcQHUN3pbsqFDC2+81dCGADY2gCKZbWvCLfVlvpUa5RV2i7JfU65Gt/gO
	dNWyxiYDzwwd6oK0oz7nngwN7N4C4JFcJdIBDZUc2dce0mY/o48Xrz+3ZTJkVceg9Bs0j4N5MsBJw
	bxymFxewLIzblqFeNtZtlKQAtMmE1CNsGmWbMuC8PHxT7IUCCwpjy+ruWoxtBstt0LDJbVG/CC5iY
	2zPuG0Ri0nE2NKCLrQ3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlENZ-0000Kx-T2; Wed, 10 Jul 2019 15:19:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlENF-0000J3-T4; Wed, 10 Jul 2019 15:19:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9CE0F2B;
 Wed, 10 Jul 2019 08:19:11 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 078203F246;
 Wed, 10 Jul 2019 08:19:08 -0700 (PDT)
Subject: Re: [v1 0/5] allow to reserve memory for normal kexec kernel
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20190708211528.12392-1-pasha.tatashin@soleen.com>
 <CACi5LpNGWhTnXyM8gB0Tn=682+08s-ppfDpX2SawfxMvue1GTQ@mail.gmail.com>
 <CA+CK2bBrwBHhD-PFO_gVnDYoFi0Su6t456WNdtBWpOe4qM+oww@mail.gmail.com>
 <2d60f302-5161-638a-76cd-d7d79e5631fe@arm.com>
 <CA+CK2bA40wQvX=KieE5Qg2Ny5ZyiDAAjAb9W7Phu2Ou_9r6bOA@mail.gmail.com>
From: James Morse <james.morse@arm.com>
Message-ID: <f9bea5bd-370a-47b5-8ad1-a30bd43d6cca@arm.com>
Date: Wed, 10 Jul 2019 16:19:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CA+CK2bA40wQvX=KieE5Qg2Ny5ZyiDAAjAb9W7Phu2Ou_9r6bOA@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_081913_981410_659469CA 
X-CRM114-Status: GOOD (  12.42  )
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
Cc: Sasha Levin <sashal@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morris <jmorris@namei.org>, Eric Biederman <ebiederm@xmission.com>,
 will@kernel.org, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pasha,

On 09/07/2019 14:07, Pavel Tatashin wrote:
>>> Enabling MMU and D-Cache for relocation  would essentially require the
>>> same changes in kernel. Could you please share exactly why these were
>>> not accepted upstream into kexec-tools?
>>
>> Because '--no-checks' is a much simpler alternative.
>>
>> More of the discussion:
>> https://lore.kernel.org/linux-arm-kernel/5599813d-f83c-d154-287a-c131c48292ca@arm.com/
>>
>> While you can make purgatory a fully-fledged operating system, it doesn't really need to
>> do anything on arm64. Errata-workarounds alone are a reason not do start down this path.
> 
> Thank you James. I will summaries the information gathered from the
> yesterday's/today's discussion and add it to the cover letter together
> with ARM64 tag. I think, the patch series makes sense for ARM64 only,
> unless there are other platforms that disable caching/MMU during
> relocation.

I'd prefer not to reserve additional memory for regular kexec just to avoid the relocation.
If the kernel's relocation work is so painful we can investigate doing it while the MMU is
enabled. If you can compare regular-kexec with kexec_file_load() you eliminate the
purgatory part of the work.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
