Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A78246A36B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 09:59:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7FpfFHlhpSiikVh0iXIKPnA4VZvIYL3S8r5k6GOkweU=; b=FArsKnsjJR1KZF1UdIzClCQm2
	n7gRAHFmQlYurr8y7tSRbV9jIFzdjpr1F3aCoMdtV/4kAL44ORUHi4vmIbp1uy/bGNFbWGwDCt6CK
	VV2urh0NdhTcsihAUdZEUTiK6GY4wWhzSky4SgK3xqjD/5WWD3GGzX+rrTnjKgQL1gm6lXEJNJnND
	0wGM/6xil2eVKwb+/dd5Pv04ixRsApA7SPITe3xe1dk+RRQECx22YfV1SAA+6fC3OwXMKk/PqlGZ0
	bfhB9NHrfrnP7SBbNo0G1RyHEF7B3mwvPqRXqm6GQMGSne9vFWU8tHo5qzhE/d5kWP5qETeoLKHFI
	AUN9IIoEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnING-0004dd-GD; Tue, 16 Jul 2019 07:59:46 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnIN3-0004d6-Op
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 07:59:35 +0000
Received: by mail-pf1-x443.google.com with SMTP id p184so8703013pfp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 00:59:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding;
 bh=wDfDJUQ8Kh24S4w4S2kYx9iH7GvKV6D4nFcrENbi2ME=;
 b=bVylv0GH5JJtwmXvJMyJ+I3QIJ0Yz+/V/yjBw8RctIo327Ov1tlt3RDrlw9RCHtkvS
 ZCrtNbd5DaUZyz/7G+X9HauKl5Cq76wJryN64l0pNQSqWSw6d101rS564h2h/7R4YhY3
 qMzRupey3BXSiOE9fri8g3c6QpBnwqVO9hv7ptplaeXN94OYLAChrfEUkSSfpyd8RxIy
 xGKJR2K46hbZnFpLL3XkD5zWHB6lFZEmRPFNz3MRXjH7HKlJyACmPMYaf5/8XyL6EX6w
 v7JZt2G/vw/JKkkFG42lyrVBPgMT2d2oS46Z5SExYBpu0neWDO7YTaDjUUuxelZt4Cxs
 PBjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding;
 bh=wDfDJUQ8Kh24S4w4S2kYx9iH7GvKV6D4nFcrENbi2ME=;
 b=Bfr/O1q4h6tyVZVeNNl6mjUCwaK4bynynnNW8/eUyNKJRcO0N5XAkoLcPjsP1p7bri
 q5iwreYeguCCF+znSvTJuqv+0UxL1n6tMNy9Nz23xIoQaxuZGDAmlVd+DiCJ+Yv0DxDR
 dI2iuqOPuVM0oR9DGLu3N9oX/MHoYyB1kCmoETTtvtMwOy81c3EhxElgvw+mP97ZH1qn
 h8VHf7xQ99j9uf65ji35xnW9WlEzdRdtsui1ZhbKHEvPx2xoPEwsBee46zje/yuUAaV0
 flD0P4/rVdH2hYJ4XvKHBiGsY6/uMaulHMND2d6GTP4BqhVWfzPfTJDCrGXMfFG89KY6
 20EQ==
X-Gm-Message-State: APjAAAUs3UyeIUtJPVtyBgXAyTit3GdQh9dtzvrB0q96UV3/hWM1egnb
 HawdcR90V8ch/Yb6QNEHQgwPLXXv
X-Google-Smtp-Source: APXvYqzwX0ZLCeqZ1Sou3FMes0IK5sTjahJt7/OI8UrRbZeOJe3vZb/j+KyXrbHYBs18ucoIipgRjA==
X-Received: by 2002:a17:90a:8d0c:: with SMTP id
 c12mr33210399pjo.140.1563263972001; 
 Tue, 16 Jul 2019 00:59:32 -0700 (PDT)
Received: from [0.0.0.0] (104.129.187.94.16clouds.com. [104.129.187.94])
 by smtp.gmail.com with ESMTPSA id o128sm23093652pfb.42.2019.07.16.00.59.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 00:59:31 -0700 (PDT)
Subject: Re: [RFC PATCH v2 0/3] Support CPU hotplug for ARM64
To: Marc Zyngier <marc.zyngier@arm.com>,
 Maran Wilson <maran.wilson@oracle.com>, James Morse <james.morse@arm.com>,
 Xiongfeng Wang <wangxiongfeng2@huawei.com>
References: <1561776155-38975-1-git-send-email-wangxiongfeng2@huawei.com>
 <82879258-46a7-a6e9-ee54-fc3692c1cdc3@arm.com>
 <51cc9a5c-9968-c4b1-0bc7-870f44a3a761@oracle.com>
 <06ef13e1-fffe-d4a2-721e-f666f331fb3c@arm.com>
From: Jia He <jiakernel2@gmail.com>
Organization: ARM
Message-ID: <1a7b2f39-ca77-5b5f-cbb5-6356e51b0d7a@gmail.com>
Date: Tue, 16 Jul 2019 15:59:16 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <06ef13e1-fffe-d4a2-721e-f666f331fb3c@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_005933_834218_45C8AA4C 
X-CRM114-Status: GOOD (  19.19  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jiakernel2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jiakernel2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: guohanjun@huawei.com, john.garry@huawei.com, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 huawei.libin@huawei.com, jonathan.cameron@huawei.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc

On 2019/7/10 17:15, Marc Zyngier wrote:
> On 09/07/2019 20:06, Maran Wilson wrote:
>> On 7/5/2019 3:12 AM, James Morse wrote:
>>> Hi guys,
>>>
>>> (CC: +kvmarm list)
>>>
>>> On 29/06/2019 03:42, Xiongfeng Wang wrote:
>>>> This patchset mark all the GICC node in MADT as possible CPUs even though it
>>>> is disabled. But only those enabled GICC node are marked as present CPUs.
>>>> So that kernel will initialize some CPU related data structure in advance before
>>>> the CPU is actually hot added into the system. This patchset also implement
>>>> 'acpi_(un)map_cpu()' and 'arch_(un)register_cpu()' for ARM64. These functions are
>>>> needed to enable CPU hotplug.
>>>>
>>>> To support CPU hotplug, we need to add all the possible GICC node in MADT
>>>> including those CPUs that are not present but may be hot added later. Those
>>>> CPUs are marked as disabled in GICC nodes.
>>> ... what do you need this for?
>>>
>>> (The term cpu-hotplug in the arm world almost never means hot-adding a new package/die to
>>> the platform, we usually mean taking CPUs online/offline for power management. e.g.
>>> cpuhp_offline_cpu_device())
>>>
>>> It looks like you're adding support for hot-adding a new package/die to the platform ...
>>> but only for virtualisation.
>>>
>>> I don't see why this is needed for virtualisation. The in-kernel irqchip needs to know
>>> these vcpu exist before you can enter the guest for the first time. You can't create them
>>> late. At best you're saving the host scheduling a vcpu that is offline. Is this really a
>>> problem?
>>>
>>> If we moved PSCI support to user-space, you could avoid creating host vcpu threads until
>>> the guest brings the vcpu online, which would solve that problem, and save the host
>>> resources for the thread too. (and its acpi/dt agnostic)
>>>
>>> I don't see the difference here between booting the guest with 'maxcpus=1', and bringing
>>> the vcpu online later. The only real difference seems to be moving the can-be-online
>>> policy into the hypervisor/VMM...
>> Isn't that an important distinction from a cloud service provider's
>> perspective?
>>
>> As far as I understand it, you also need CPU hotplug capabilities to
>> support things like Kata runtime under Kubernetes. i.e. when
>> implementing your containers in the form of light weight VMs for the
>> additional security ... and the orchestration layer cannot determine
>> ahead of time how much CPU/memory resources are going to be needed to
>> run the pod(s).
> Why would it be any different? You can pre-allocate your vcpus, leave
> them parked until some external agent decides to signal the container
> that it it can use another bunch of CPUs. At that point, the container
> must actively boot these vcpus (they aren't going to come up by magic).
>
> Given that you must have sized your virtual platform to deal with the
> maximum set of resources you anticipate (think of the GIC
> redistributors, for example), I really wonder what you gain here.
I agree with your point in GIC aspect. It will mess up things if it makes

GIC resource hotpluggable in qemu. But it also would be better that vmm

only startup limited vcpu thread resource.

How about:

1. qemu only starts only N vcpu thread (-smp N, maxcpus=M)

2. qemu reserves the GIC resource with maxium M vcpu number

3. when qmp cmd cpu hotplug-add is triggerred, send a GED event to guest kernel

4. guest kernel recv it and trigger the acpi plug process.

Currently ACPI_CPU_HOTPLUG is enabled for Kconfig but completely not workable.


---
Cheers,
Jia

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
