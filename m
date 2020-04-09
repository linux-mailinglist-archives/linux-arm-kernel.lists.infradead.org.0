Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A8A1A35DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 16:28:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VLXt+2+lFwPOESr37CluCX1IgOcKy8Oz+nuPhaLmVHg=; b=LEs+qESdZDuKI0
	3Q61Mt78jOjp522nqIJSw5KFjj07moaNeFHeb5nelPFMK6g9ULgdMwPTGMIwEzXkn29CR07OpsTe9
	PM5jf6/fcFybAcXvPCdOgj2lwRdSP5Ruo8m++kBBSYAFODeokOJuW5a9+v3wzH2eZQuC/OwXMJziC
	2EkKcRJD2vdSrPtCSX/K3LSP54RvNylo32RFN2914GCu3PUgkA/e++Wgls9OhkiuTC2I9a0l+z956
	HT/YQaDjm5RT/26zdjsumLLgolkYZ62X08GdLKt9JTseRFDitvEGBUoAMqTmaMBPrYGX3+/N8JON6
	tYTQu4cLeAawOW7QBZlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMYAh-0005J3-9o; Thu, 09 Apr 2020 14:28:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYAI-0004uc-Qn
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 14:28:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F01307FA;
 Thu,  9 Apr 2020 07:28:21 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8D6D73F68F;
 Thu,  9 Apr 2020 07:28:20 -0700 (PDT)
Subject: Re: Question about SEA handling process happened in user space
To: Xiaofei Tan <tanxiaofei@huawei.com>
References: <5E81EFCD.6020605@huawei.com>
 <2b0e5507-ad75-9af1-6afe-aa87d8cf597f@arm.com> <5E83104A.7020803@huawei.com>
 <f9732852-046c-347c-21e1-7690e6b84a50@arm.com> <5E840F3B.6040803@huawei.com>
 <7d6668d6-ec4a-e362-94a3-c31950651c02@arm.com> <5E8EDFF6.4050903@huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <d3a56afc-ce1a-1561-a6bb-70399bb97c50@arm.com>
Date: Thu, 9 Apr 2020 15:28:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <5E8EDFF6.4050903@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_072822_916998_781DBA81 
X-CRM114-Status: GOOD (  12.37  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Linuxarm <linuxarm@huawei.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org, Shiju Jose <shiju.jose@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xiaofei,

On 09/04/2020 09:42, Xiaofei Tan wrote:
> James Morse wrote:
>> Do you have patches to get linux to do something useful with the processor error nodes?
>>
>> We'd need it to handle uncorrected cache errors with a physical address, as if they were
>> memory errors...

> Yes, we have some patches to do this thing inside. Then memory_failure() will be called for
> arm processor error section when physical address is available.

I look forward to reading them!

[...]

> I think this part is worth improving.

> BTW, should ARM processor record physical address when consumed an memory poison error for SEA?
> It is helpful to do error recovery. Is this mandatory for arm spec?

ERR<n>ADDR? Its not mandatory to be filled for any error. It can be some imp-def bus
address or a virtual address. It can also be left out if ERR<b>STATUS.AV says its not valid.

This is really a question for your hardware people. Does your implementation always give a
physical-address for a synchronous external abort?


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
