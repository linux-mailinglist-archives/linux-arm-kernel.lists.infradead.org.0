Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8819C1ABAB0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 10:00:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gufi3+paQ1DYW3ZTwdKCzKkXjzgYUIjf02FmzZJkO0Y=; b=L8byDDG0GtGrh+
	zOJfLg+L9TR+ZkyLOrkTSmw+Xi0r8MQsGqrXQzbAAOjR96pOAzoyQR5XUt8Pfe1KQDYh4NUjBV8Kz
	eUyxQApIEhmFalbmMphnC12FNKuIB8dzM3jJ5OQ2zcW1hJcreOfZMMVOf67BsQ9d6LQzdjlO2uOn7
	hf0lfdKR0jiiUsyBwGyibxRbdrEXdt3W5LCDCUcfpXiQaPcdpeLKle9+LlboI2tz2Ydw4b0kIK/6X
	HbNQsFitNdsgsytjwS/obglvvi2+d7IpltWy+nnKAjrbmiqM6sIzbMhrwCJOpdKT0k26F5KDFl4j5
	g2CcS2AYp0WldzNo+jTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOzRZ-0001fj-8k; Thu, 16 Apr 2020 08:00:17 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOzRD-0001Vz-Ik
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 07:59:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587023991;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=59R+ovlxm6On+Qd8pYU/mUIYBEwTiidwJnUqasBYx2I=;
 b=Xj+vwjyQUP3ZvrrteYQpLEG8EKMVzeZYzDwdqgmgjY/C8m/znZK+S57vNGXIBGJMrNtNLz
 z1udhfCvh6rURLTyVviTSs7SLja4y0J55cnq88sZAOd8jv7GxXFHQImhKYSYheCDsE9D0e
 wChDbWm7HyPHrOcI4XcMiN6ksqQVfS8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-346-9hOwk_6DP4u2o4uguH0tVQ-1; Thu, 16 Apr 2020 03:59:45 -0400
X-MC-Unique: 9hOwk_6DP4u2o4uguH0tVQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A503618C8C04;
 Thu, 16 Apr 2020 07:59:43 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-119.bne.redhat.com
 [10.64.54.119])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 26C495C1C5;
 Thu, 16 Apr 2020 07:59:36 +0000 (UTC)
Subject: Re: [PATCH RFCv1 0/7] Support Async Page Fault
To: Mark Rutland <mark.rutland@arm.com>
References: <20200410085820.758686-1-gshan@redhat.com>
 <d2882e806ad2f9793437160093c8d3fa@kernel.org>
 <6a1d7e8b-da10-409f-16d0-354004566a1a@redhat.com>
 <20200414110554.GB2486@C02TD0UTHF1T.local>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <5bc62c4f-e19d-82f2-072e-dfa4498dccf3@redhat.com>
Date: Thu, 16 Apr 2020 17:59:33 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200414110554.GB2486@C02TD0UTHF1T.local>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_005955_699119_E31A0602 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Reply-To: Gavin Shan <gshan@redhat.com>
Cc: drjones@redhat.com, suzuki.poulose@arm.com, Marc Zyngier <maz@kernel.org>,
 sudeep.holla@arm.com, eric.auger@redhat.com, james.morse@arm.com,
 shan.gavin@gmail.com, catalin.marinas@arm.com, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 4/14/20 9:05 PM, Mark Rutland wrote:
> On Tue, Apr 14, 2020 at 03:39:56PM +1000, Gavin Shan wrote:
>> On 4/10/20 10:52 PM, Marc Zyngier wrote:
>>> On 2020-04-10 09:58, Gavin Shan wrote:
>>>> In order to fulfil the control flow and convey signals between host
>>>> and guest. A IMPDEF system register (SYS_ASYNC_PF_EL1) is introduced.
>>>> The register accepts control block's physical address, plus requested
>>>> features. Also, the signal is sent using data abort with the specific
>>>> IMPDEF Data Fault Status Code (DFSC). The specific signal is stored
>>>> in the control block by host, to be consumed by guest.
> 
>>> - We don't add IMPDEF sysregs, period. That's reserved for the HW. If
>>>     you want to trap, there's the HVC instruction to that effect.
> 
>> I really don't understand how IMPDEF sysreg is used by hardware vendors.
>> Do we have an existing functionality, which depends on IMPDEF sysreg?
>> I was thinking the IMPDEF sysreg can be used by software either, but
>> it seems I'm wrong.
> 
> The key is in the name: an IMPLEMENTATION DEFINED register is defined by
> the implementation (i.e. the specific CPU microarchitecture), so it's
> wrong for software to come up with an arbitrary semantic as this will
> differ from the implementation's defined semantic for the register.
> 
> Typically, IMP DEF resgisters are used for things that firmware needs to
> do (e.g. enter/exit coherency), or for bringup-time debug (e.g. poking
> into TLB/cache internals), and are not usually intended for general
> purpose software.
> 
> Linux generally avoids the use of IMP DEF registers, but does so in some
> cases (e.g. for PMUs) after FW explicitly describes that those are safe
> to access.
> 

Thanks for the explanation and details, which make things much clear. Since
the IMPDEF system register can't be used like this way, hypercall (HVC) would
be considered to serve same purpose - deliver signals from host to guest. However,
the hypercall number and behaviors are guarded by specification. For example,
the hypercalls used by para-virtualized stolen time, which are defined in
include/linux/arm-smccc.h, are specified by ARM DEN0057A [1]. So I need a
specification to be created, where the hypercalls used by this feature are
defined? If it's not needed, can I pick hypercalls that aren't used and define
their behaviors by myself?

[1] http://infocenter.arm.com/help/topic/com.arm.doc.den0057a/DEN0057A_Paravirtualized_Time_for_Arm_based_Systems_v1_0.pdf

Another thing I want to check is about the ESR_EL1[DFSC]. In this series,
the asynchronous page fault is identified by IMPDEF DFSC (Data Fault Status
Code) in ESR_EL1. According to what we discussed, the IMPDEF DFSC shouldn't
be fired (produced) by software. It should be produced by hardware either?
What I understood is IMPDEF is hardware behavior. If this is true, I need
to avoid using IMPDEF DFSC in next revision :)


Thanks,
Gavin




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
