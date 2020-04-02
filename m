Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2DE19BA57
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 04:33:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dojfXH1xOQViQn2QWHevtFbZnc8S/bPuGrn544sCEk8=; b=JCBTbT2Vr0zF5u
	R1TPIOVyLeVAC1yVJsGCP5fxg3HlTqUAILO51rZBP1VnbltzH6e+HE//S+bGb3mP96BderZ+pgFJZ
	f9TDbntp9y8BGqFwJbPiyAKTGtY/OAnxq6QZRIKmNnm4Fgz4ueNIvNCjfTFqGtJpIYsT5IhgjDH37
	WGIABl0LgM4Sb5eVppcARMAASWC5APJE0se3qrqDU49jEYDfZLCgr/N6Zj8wYm9ADy3Fi4uK8seBP
	QgWf9AaIyzQ1/nPA/7utVBvXkmTQLO1R5S7QIO5xnkPvavYyimonW7KM43r3lJb5BGhAYqz1VAEAW
	0aJ+fUKkmpdnMQhYpYgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJpfd-0004Pj-4D; Thu, 02 Apr 2020 02:33:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJpfX-0004OP-38
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 02:33:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5664F30E;
 Wed,  1 Apr 2020 19:33:19 -0700 (PDT)
Received: from [10.163.1.8] (unknown [10.163.1.8])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D50E93F71E;
 Wed,  1 Apr 2020 19:33:16 -0700 (PDT)
Subject: Re: [PATCH 0/6] Introduce ID_PFR2 and other CPU feature changes
To: Peter Maydell <peter.maydell@linaro.org>
References: <1580215149-21492-1-git-send-email-anshuman.khandual@arm.com>
 <45ce930c-81b3-3161-ced6-34a8c8623ac8@arm.com>
 <CAFEAcA_yZ55rOD1x+FE9wYO8HXx9seK72ZCmnWjtDVr_95-whg@mail.gmail.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <c2b672ca-9b74-89f8-388c-555bbcbd57ba@arm.com>
Date: Thu, 2 Apr 2020 08:03:09 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAFEAcA_yZ55rOD1x+FE9wYO8HXx9seK72ZCmnWjtDVr_95-whg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_193323_176880_CC341F60 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 lkml - Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/14/2020 09:28 PM, Peter Maydell wrote:
> On Fri, 14 Feb 2020 at 04:23, Anshuman Khandual
> <anshuman.khandual@arm.com> wrote:
>>
>>
>>
>> On 01/28/2020 06:09 PM, Anshuman Khandual wrote:
>>> This series is primarily motivated from an adhoc list from Mark Rutland
>>> during our ID_ISAR6 discussion [1]. Besides, it also includes a patch
>>> which does macro replacement for various open bits shift encodings in
>>> various CPU ID registers. This series is based on linux-next 20200124.
>>>
>>> [1] https://patchwork.kernel.org/patch/11287805/
>>>
>>> Is there anything else apart from these changes which can be accommodated
>>> in this series, please do let me know. Thank you.
>>
>> Just a gentle ping. Any updates, does this series looks okay ? Is there
>> anything else related to CPU ID register feature bits, which can be added
>> up here. FWIW, the series still applies on v5.6-rc1.

Sorry for the delay in response, was distracted on some other patches.

> 
> I just ran into some "32-bit KVM doesn't expose all the ID
> registers to userspace via the ONE_REG API" issues today.
> I don't know if they'd be reasonable as something to include
> in this patchset or if they're unrelated.

IMHO, they are bit unrelated.

> 
> Anyway, missing stuff I have noticed specifically:
>  * MVFR2
>  * ID_MMFR4
>  * ID_ISAR6
> 
> More generally I would have expected all these 32-bit registers
> to exist and read-as-zero for the purpose of the ONE_REG APIs,
> because that's what the architecture says is supposed to happen
> and it means we have compatibility and QEMU doesn't gradually
> build up lots of "kernel doesn't support this yet" conditionals...
> I think we get this right for 64-bit KVM, but can we do it for
> 32-bit as well?

I am not very familiar with 32-bit KVM but will definitely keep these
suggestions noted for later, also try and accommodate if possible.

> thanks
> -- PMM
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
