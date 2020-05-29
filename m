Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D770D1E834E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 18:11:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r51h6hXn4By4kW5B2bPuWiRXIJ2SVjohQhv0jESwMtQ=; b=Omh+2i9gvaYtZs
	/Pjan0dcntit+5m0LSkl6cM6OVZ3Ggjxhl7RPaKuaXiEDLemNgxfowL7t8fa+a9RX3RZo4iOTUgEx
	EXCsajONBQ0MRA5yRLZSLSKTRKMdbaJkQMgl3/xs1dYLzeYUqxrhs1/xvBc7mzrEgxIAdNs0iQ94m
	eMIiE0VRtgShFptFLwsFqWwVjhsxuWSSrAdyBCByzKtCukqlD2EZj4rf9vYursNfCuO0kJ8q2FYE9
	+NUF5z0PIpUYxkj55bXnBvbN/D06HEnNMo6ywn8chSLXBqba+9fDlV3eRs59I2+fTM53D+iz/uV4m
	dbxn7ozpCsbZ4U2kCSig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehbk-0007N7-9X; Fri, 29 May 2020 16:11:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehbH-0007Dt-H6; Fri, 29 May 2020 16:11:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 56EAD55D;
 Fri, 29 May 2020 09:11:11 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EB1183F718;
 Fri, 29 May 2020 09:11:08 -0700 (PDT)
Subject: Re: [PATCH v8 5/5] dt-bindings: chosen: Document
 linux,low-memory-range for arm64 kdump
To: Rob Herring <robh@kernel.org>, chenzhou <chenzhou10@huawei.com>
References: <20200521093805.64398-1-chenzhou10@huawei.com>
 <20200521093805.64398-6-chenzhou10@huawei.com>
 <CAL_Jsq+EV02YBqEGoJrsJW8Y+g_GkB_LkTwWCxNCb3F+8MSdyw@mail.gmail.com>
 <a419602e-6a85-ca35-39de-b3c26d433199@huawei.com>
 <20200526211800.GA352001@bogus>
From: James Morse <james.morse@arm.com>
Message-ID: <ff7c9f68-b578-3a1a-0815-e61c6f87bc4e@arm.com>
Date: Fri, 29 May 2020 17:11:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200526211800.GA352001@bogus>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_091115_674988_8E15D6FF 
X-CRM114-Status: GOOD (  19.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Simon Horman <horms@verge.net.au>, John.p.donnelly@oracle.com,
 Baoquan He <bhe@redhat.com>, Will Deacon <will@kernel.org>,
 devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>, kexec@lists.infradead.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Hanjun Guo <guohanjun@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 pkushwaha@marvell.com, dyoung@redhat.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi guys,

On 26/05/2020 22:18, Rob Herring wrote:
> On Fri, May 22, 2020 at 11:24:11AM +0800, chenzhou wrote:
>> On 2020/5/21 21:29, Rob Herring wrote:
>>> On Thu, May 21, 2020 at 3:35 AM Chen Zhou <chenzhou10@huawei.com> wrote:
>>>> Add documentation for DT property used by arm64 kdump:
>>>> linux,low-memory-range.
>>>> "linux,low-memory-range" is an another memory region used for crash
>>>> dump kernel devices.

>>>> diff --git a/Documentation/devicetree/bindings/chosen.txt b/Documentation/devicetree/bindings/chosen.txt
>>>> index 45e79172a646..bfe6fb6976e6 100644
>>>> --- a/Documentation/devicetree/bindings/chosen.txt
>>>> +++ b/Documentation/devicetree/bindings/chosen.txt

>>>> +linux,low-memory-range
>>>> +----------------------
>>>> +This property (arm64 only) holds a base address and size, describing a
>>>> +limited region below 4G. Similar to "linux,usable-memory-range", it is
>>>> +an another memory range which may be considered available for use by the
>>>> +kernel.

>>> Why can't you just add a range to "linux,usable-memory-range"? It
>>> shouldn't be hard to figure out which part is below 4G.

>> The comments from James:
>> Won't this break if your kdump kernel doesn't know what the extra parameters are?
>> Or if it expects two ranges, but only gets one? These DT properties should be treated as
>> ABI between kernel versions, we can't really change it like this.
>>
>> I think the 'low' region is an optional-extra, that is never mapped by the first kernel. I
>> think the simplest thing to do is to add an 'linux,low-memory-range' that we
>> memblock_add() after memblock_cap_memory_range() has been called.
>> If its missing, or the new kernel doesn't know what its for, everything keeps working.
> 
> 
> I don't think there's a compatibility issue here though. The current 
> kernel doesn't care if the property is longer than 1 base+size. It only 
> checks if the size is less than 1 base+size.

Aha! I missed that.


> And yes, we can rely on 
> that implementation detail. It's only an ABI if an existing user 
> notices.
> 
> Now, if the low memory is listed first, then an older kdump kernel 
> would get a different memory range. If that's a problem, then define 
> that low memory goes last. 

This first entry would need to be the 'crashkernel' range where the kdump kernel is
placed, otherwise an older kernel won't boot. The rest can be optional extras, as long as
we are tolerant of it being missing...

I'll try and look at the rest of this series on Monday,


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
