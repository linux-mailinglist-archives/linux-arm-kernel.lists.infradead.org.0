Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C01D106A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 15:42:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Gx9OLerqaY4Jq9wbKmdTs0XNefihz4lZ0AcsWLpch0A=; b=VQXW5sSmM4KvN4iPBSIRDdkDm
	EXfHxYP6quhGvHyP/EnCwMv2ONEDPsH8QbyNQpBRn+36k0jE5WqGeUJdnqgcGximHfuKNaYsTpbvp
	LwmNFnhGqyzyz+I/OvIBEG/GL4VqgC/f++1Ijvs8lEoQ1MOMVyKdcnnx6Zs88HqIAygEZUZIsi471
	yXR2LHpN9VO+obemyTYowkCSQjwF3s+yowxVkq6WPhb0nsURPWQG7qjc0K6nWheTyMgTTvef/WhXO
	5zMNX8h/4wW7fFr5Cl+NMDGMrExEGfi/vPEgrk6VRb8TtcagTJMIfHuqKQWAP/6hFDIJLo0Tr6YZF
	OONQ/QIHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iICEV-0000tn-5p; Wed, 09 Oct 2019 13:42:27 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iICEM-0000tH-3a
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 13:42:19 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id E295C36A5D818A856480;
 Wed,  9 Oct 2019 21:42:13 +0800 (CST)
Received: from [127.0.0.1] (10.133.216.73) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Wed, 9 Oct 2019
 21:42:03 +0800
Subject: Re: [RFC PATCH 00/12] Add SDEI support for arm64
To: Peter Maydell <peter.maydell@linaro.org>
References: <1569338511-3572-1-git-send-email-guoheyi@huawei.com>
 <CAFEAcA_ztr0_Bu9d__dSr9oH75s2DSd5=6NZvVMrxuDTxf31mw@mail.gmail.com>
From: Guoheyi <guoheyi@huawei.com>
Message-ID: <84e1a629-bdd3-faaf-e12f-17930945adf4@huawei.com>
Date: Wed, 9 Oct 2019 21:42:02 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <CAFEAcA_ztr0_Bu9d__dSr9oH75s2DSd5=6NZvVMrxuDTxf31mw@mail.gmail.com>
X-Originating-IP: [10.133.216.73]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_064218_312629_EF838BB8 
X-CRM114-Status: GOOD (  17.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc
 Zyngier <marc.zyngier@arm.com>, QEMU Developers <qemu-devel@nongnu.org>,
 Dave Martin <Dave.Martin@arm.com>, qemu-arm <qemu-arm@nongnu.org>,
 James Morse <james.morse@arm.com>, wanghaibin.wang@huawei.com,
 kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/9/30 21:15, Peter Maydell wrote:
> On Tue, 24 Sep 2019 at 16:23, Heyi Guo <guoheyi@huawei.com> wrote:
>> As promised, this is the first RFC patch set for arm64 SDEI support.
> Hi; for the benefit of possible reviewers who aren't familiar
> with every corner of the arm ecosystem, could you provide a
> summary of:
>   * what is SDEI ?
SDEI is for ARM "Software Delegated Exception Interface". AS ARM64 
doesn't have native non-maskable interrupt (NMI), we can rely on higher 
privileged software to change the pc of lower privileged software on 
certain events occur, to emulate NMI mechanism, and SDEI is the standard 
interfaces between the two levels of privileged software. It is based on 
SMC/HVC calls.

In virtualization situation, guest OS is the lower privileged software 
and hypervisor is the higher one. Major interfaces provided by SDEI include:
1. interrupt bind: guest OS can request to bind an interrupt to an SDEI 
event.
2. register: guest OS can request to register a handler to an SDEI 
event, so hypervisor will change pc of guest to this handler when 
certain event occurs.
3. complete: guest OS notifies hypervisor that it has completed the 
event handling, so hypervisor will restore the context of guest when it 
is interrupted.
>   * what do KVM and QEMU want/need to do with it ?
KVM is supposed to pass SMC/HVC calls to qemu, and qemu will serve the 
SDEI requests after parsing SMC/HVC calls. qemu also takes the 
responsibility to trigger the events. If an interrupt is requested to be 
bound to an event, qemu should not inject the interrupt to guest any 
more; instead, it should save the context of VCPU and change the PC to 
event handler which is registered by guest, and then return to guest.

To make the conversion of interrupt to SDEI event transparent to other 
modules in qemu, we used qemu_irq and qemu_irq_intercept_in() to 
override the default irq handler with SDEI event trigger. I saw 
qemu_irq_intercept_in() should be only used in qemu MST, but it seemed 
fit to override interrupt injection with event trigger after guest 
requests to bind interrupt to SDEI event.
>   * what is this patchset trying to solve ?
This patchset is trying to implement the whole SDEI framework in qemu 
with KVM enabled, including all SDEI v1.0 interfaces, as well as event 
trigger conduit from other qemu devices after interrupt binding.

I will also provide the above context in the cover letter of v2 RFC.

Thanks,

Heyi

>
> That would provide some useful context for trying to
> review the patchset.
>
> thanks
> -- PMM
>
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
