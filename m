Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6BBA8651
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 18:02:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VxD6DA31esZk4KbN1LNkPnRjI5PjUo46JOG/+y/XHeE=; b=Lezqc+ubTFCnOC
	9ZOwrYR5dzUO6nw4auZh/NoNVp6UVl1eTOFO+eF3SwDg8kWW67Ga/ZIqh3rfdgyniwazkAdjitPqh
	l0mO3SwFzRed2g3tsW/4j/+037ril3O0pEpXB/s0feKIRA4wZqO43JL+uXq7cz/aTAZR1L5T7JaJL
	nsUQsFufZbG1gbP4QzydnbHA91+r/M5Ps1LUfV1rdh8nfUf40Td1O4eLvGDTACadC3HZnhfT99sb7
	vIpA3aZv6Z3qMVgtQ2o4WmeM51j+FIvJTnzs1/hytvNO3b1mT23zzcASVCt3ro5sfutuJRtsC8fzj
	oTB7CQMt/ls6pej0q51g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Xjf-0003el-Jf; Wed, 04 Sep 2019 16:02:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5XjT-0003eP-6e
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 16:02:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7813828;
 Wed,  4 Sep 2019 09:02:06 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 40F573F246;
 Wed,  4 Sep 2019 09:02:04 -0700 (PDT)
Subject: Re: [PATCH v4 00/10] arm64: Stolen time support
To: Andrew Jones <drjones@redhat.com>
References: <20190830084255.55113-1-steven.price@arm.com>
 <20190903080348.5whavgrjki7zrtmd@kamzik.brq.redhat.com>
 <20190903084921.zikiucdruymfgfsq@kamzik.brq.redhat.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <6c68dd0c-5103-cd2d-4162-b37c6d10460b@arm.com>
Date: Wed, 4 Sep 2019 17:02:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190903084921.zikiucdruymfgfsq@kamzik.brq.redhat.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_090207_286192_3F57A463 
X-CRM114-Status: GOOD (  13.73  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 =?UTF-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>,
 Marc Zyngier <maz@kernel.org>, Suzuki K Pouloze <suzuki.poulose@arm.com>,
 linux-doc@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/09/2019 09:49, Andrew Jones wrote:
> On Tue, Sep 03, 2019 at 10:03:48AM +0200, Andrew Jones wrote:
>> Hi Steven,
>>
>> I had some fun testing this series with the KVM selftests framework. It
>> looks like it works to me, so you may add
>>
>> Tested-by: Andrew Jones <drjones@redhat.com>
>>
> 
> Actually, I probably shouldn't be quite so generous with this tag yet,
> because I haven't yet tested the guest-side changes. To do that I'll
> need to start prototyping something for QEMU. I need to finish some other
> stuff first, but then I can do that.

Thanks for the testing, I'll wait for your other testing before adding
your Tested-by tag.

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
