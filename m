Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5473863548
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 14:00:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ttJymJHIiz50uNBC0yj3gZavxp5ZR9egwkcA62Ygu6A=; b=WH4lUP3O4Jlvhr
	jTPDwq02zdf2wLmXGHhuSCgivM9J6qoBRujOAnjxCWeiSfpCNk0u9InvlPeD9OWuicIkzXwg1Ty82
	JZhJ6GWaHcVuXxotTj2VtpVQjn5u3Ozy96Ii96THLI4rKst/ehWWAFTiJ6F/byPXPwKw1X0xshLyV
	hiXCL7raZQ53WX8FHXYeHaWB3WsxAoLch/p4WFdXm8LEeaFowbloyELJfbgNa+SdEGiLJpgHMRb/4
	Ft7ifoj6XIBXN7uoxfwpw9F9nLOsujj8VzRcbLe1qbSul2k6twTXNNTgjwIQ8tWU8s3ufVN5ob439
	JsYGABbI81USGkN/6peg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkon0-0004so-9q; Tue, 09 Jul 2019 12:00:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkomM-0004at-Ou; Tue, 09 Jul 2019 11:59:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 026F02B;
 Tue,  9 Jul 2019 04:59:26 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7296C3F59C;
 Tue,  9 Jul 2019 04:59:23 -0700 (PDT)
Subject: Re: [v1 0/5] allow to reserve memory for normal kexec kernel
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20190708211528.12392-1-pasha.tatashin@soleen.com>
 <CACi5LpNGWhTnXyM8gB0Tn=682+08s-ppfDpX2SawfxMvue1GTQ@mail.gmail.com>
 <CA+CK2bBrwBHhD-PFO_gVnDYoFi0Su6t456WNdtBWpOe4qM+oww@mail.gmail.com>
From: James Morse <james.morse@arm.com>
Message-ID: <2d60f302-5161-638a-76cd-d7d79e5631fe@arm.com>
Date: Tue, 9 Jul 2019 12:59:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CA+CK2bBrwBHhD-PFO_gVnDYoFi0Su6t456WNdtBWpOe4qM+oww@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_045926_893771_F84348FE 
X-CRM114-Status: GOOD (  19.98  )
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

Hi Pavel,

On 09/07/2019 11:55, Pavel Tatashin wrote:
> On Tue, Jul 9, 2019 at 6:36 AM Bhupesh Sharma <bhsharma@redhat.com> wrote:
>> On Tue, Jul 9, 2019 at 2:46 AM Pavel Tatashin <pasha.tatashin@soleen.com> wrote:
>>> Currently, it is only allowed to reserve memory for crash kernel, because
>>> it is a requirement in order to be able to boot into crash kernel without
>>> touching memory of crashed kernel is to have memory reserved.
>>>
>>> The second benefit for having memory reserved for kexec kernel is
>>> that it does not require a relocation after segments are loaded into
>>> memory.
>>>
>>> If kexec functionality is used for a fast system update, with a minimal
>>> downtime, the relocation of kernel + initramfs might take a significant
>>> portion of reboot.
>>>
>>> In fact, on the machine that we are using, that has ARM64 processor
>>> it takes 0.35s to relocate during kexec, thus taking 52% of kernel reboot
>>> time:
>>>
>>> kernel shutdown 0.03s
>>> relocation      0.35s
>>> kernel startup  0.29s
>>>
>>> Image: 13M and initramfs is 24M. If initramfs increases, the relocation
>>> time increases proportionally.
>>>
>>> While, it is possible to add 'kexeckernel=' parameters support to other
>>> architectures by modifying reserve_crashkernel(), in this series this is
>>> done for arm64 only.

>>
>> This seems like an issue with time spent while doing sha256
>> verification while in purgatory.
>>
>> Can you please try the following two patches which enable D-cache in
>> purgatory before SHA verification and disable it before switching to
>> kernel:
>>
>> http://lists.infradead.org/pipermail/kexec/2017-May/018839.html
>> http://lists.infradead.org/pipermail/kexec/2017-May/018840.html
> 
> Hi Bhupesh,
> 
> The verification was taking 2.31s. This is why it is disabled via
> kexec's '-i' flag. Therefore 0.35s is only the relocation part where
> time is spent, and with my patches the time is completely gone.
> Actually, I am glad you showed these patches to me because I might
> pull them and enable verification for our needs.
> 
>>
>> Note that these were not accepted upstream but are included in several
>> distros in some form or the other :)
> 
> Enabling MMU and D-Cache for relocation  would essentially require the
> same changes in kernel. Could you please share exactly why these were
> not accepted upstream into kexec-tools?

Because '--no-checks' is a much simpler alternative.

More of the discussion:
https://lore.kernel.org/linux-arm-kernel/5599813d-f83c-d154-287a-c131c48292ca@arm.com/

While you can make purgatory a fully-fledged operating system, it doesn't really need to
do anything on arm64. Errata-workarounds alone are a reason not do start down this path.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
