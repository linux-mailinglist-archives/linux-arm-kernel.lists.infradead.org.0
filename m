Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F441D88FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 22:17:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2Tm8qF/W3dPHeP0O1hLzrwLoIoLvgmbpTLbBxhI1+bQ=; b=CO5VeuOuNFxCsUWUjO5i9oJsy
	7IvhSu0VKVG9RtJaKGhVvwDZp+tzjOZN7+g55S+4GHJJYXIWQ9Ko5zdM6+LKTHcOhjRiMycz6WkfO
	s1mpmjpdJk3kJPraZcQVmMdDFfmhBud3R/OuRg0uc3i6Y0xLdnWyXaeYgIqxK44VmDCE+X8K/TYFP
	AyyE6KaQLvKQ2J041lO7DGHsyROwBGETZeqpBzwZsUw1zxpPFS3zX99VgbzSAfiexhLg0d1q1PVlv
	Ivb0mae1dMZzsgB+oDWN1vWKkNHq+23L70YTq8qLs4K2zIj4PivCibC5MwNsjKl+ttnMwkGdr9ial
	ljP324aiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jamC5-0005lg-Q0; Mon, 18 May 2020 20:17:01 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jamBu-0005lA-GA
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 20:16:52 +0000
Received: from [10.0.0.249] (c-24-19-135-168.hsd1.wa.comcast.net
 [24.19.135.168])
 by linux.microsoft.com (Postfix) with ESMTPSA id B920020B717B;
 Mon, 18 May 2020 13:16:47 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com B920020B717B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1589833008;
 bh=AiI1FEEKEhOSrRhQ3c3bzHp2AdpU5JROR/niu6Z306c=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Q9rpHpZs48Mpes4cY2X39QKx5IHfkdJ2/ypAKpCbktJA44bsoqYL1qMcBcBSTW9p5
 LHN4E3zh7SF3PFrLthW/mOP2AZ4w/yRpivRy3xr3z1z6XI3XZsB+CoVnEK8V9BVqd7
 xBcJTcqKWHBuaojsIpeQnTElvTyd/b7Z6be2k15E=
Subject: Re: [RFC][PATCH 0/2] Add support for using reserved memory for ima
 buffer pass
To: Rob Herring <robh@kernel.org>
References: <20200504203829.6330-1-prsriva@linux.microsoft.com>
 <20200505095620.GA82424@C02TD0UTHF1T.local>
 <e8c7d74e-74bf-caa3-452d-23faa649e825@linux.microsoft.com>
 <20200512230509.GA2654@bogus>
From: Prakhar Srivastava <prsriva@linux.microsoft.com>
Message-ID: <7701df90-a68b-b710-4279-9d64e45ee792@linux.microsoft.com>
Date: Mon, 18 May 2020 13:16:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200512230509.GA2654@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_131650_643907_D42404E8 
X-CRM114-Status: GOOD (  26.35  )
X-Spam-Score: -17.9 (-----------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-17.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [13.77.154.182 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
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
Cc: Mark Rutland <mark.rutland@arm.com>, kstewart@linuxfoundation.org,
 gregkh@linuxfoundation.org, benh@kernel.crashing.org, bhsharma@redhat.com,
 tao.li@vivo.com, zohar@linux.ibm.com, paulus@samba.org,
 vincenzo.frascino@arm.com, will@kernel.org, nramas@linux.microsoft.com,
 frowand.list@gmail.com, masahiroy@kernel.org, jmorris@namei.org,
 takahiro.akashi@linaro.org, linux-arm-kernel@lists.infradead.org,
 catalin.marinas@arm.com, serge@hallyn.com, devicetree@vger.kernel.org,
 pasha.tatashin@soleen.com, hsinyi@chromium.org, tusharsu@linux.microsoft.com,
 tglx@linutronix.de, allison@lohutok.net, christophe.leroy@c-s.fr,
 mbrugger@suse.com, balajib@linux.microsoft.com, dmitry.kasatkin@gmail.com,
 linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org,
 james.morse@arm.com, mpe@ellerman.id.au, linux-integrity@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/12/20 4:05 PM, Rob Herring wrote:
> On Wed, May 06, 2020 at 10:50:04PM -0700, Prakhar Srivastava wrote:
>> Hi Mark,
> 
> Please don't top post.
> 
>> This patch set currently only address the Pure DT implementation.
>> EFI and ACPI implementations will be posted in subsequent patchsets.
>>
>> The logs are intended to be carried over the kexec and once read the
>> logs are no longer needed and in prior conversation with James(
>> https://lore.kernel.org/linux-arm-kernel/0053eb68-0905-4679-c97a-00c5cb6f1abb@arm.com/)
>> the apporach of using a chosen node doesn't
>> support the case.
>>
>> The DT entries make the reservation permanent and thus doesnt need kernel
>> segments to be used for this, however using a chosen-node with
>> reserved memory only changes the node information but memory still is
>> reserved via reserved-memory section.
> 
> I think Mark's point was whether it needs to be permanent. We don't
> hardcode the initrd address for example.
> 
Thankyou for clarifying my misunderstanding, i am modelling this keeping 
to the TPM log implementation that uses a reserved memory. I will rev up 
the version with chosen-node support.
That will make the memory reservation free after use.


>> On 5/5/20 2:59 AM, Mark Rutland wrote:
>>> Hi Prakhar,
>>>
>>> On Mon, May 04, 2020 at 01:38:27PM -0700, Prakhar Srivastava wrote:
>>>> IMA during kexec(kexec file load) verifies the kernel signature and measures
> 
> What's IMAIMA is a LSM attempting to detect if files have been accidentally or 
maliciously altered, both remotely and locally, it can also be used
to appraise a file's measurement against a "good" value stored as an 
extended attribute, and enforce local file integrity.

IMA also validates and measures the signers of the kernel and initrd
during kexec. The measurements are extended to PCR 10(configurable) and 
the logs stored in memory, however once kexec'd the logs are lost. Kexec 
is used as secondary boot loader in may use cases and loosing the signer
creates a security hole.

This patch is an implementation to carry over the logs and making it
possible to remotely validate the signers of the kernel and initrd. Such 
a support exits only in powerpc.
This patch makes the carry over of logs architecture independent and 
puts the complexity in a driver.

Thanks,
Prakhar
> 
>>>> the signature of the kernel. The signature in the logs can be used to verfiy the
>>>> authenticity of the kernel. The logs don not get carried over kexec and thus
>>>> remote attesation cannot verify the signature of the running kernel.
>>>>
>>>> Introduce an ABI to carry forward the ima logs over kexec.
>>>> Memory reserved via device tree reservation can be used to store and read
>>>> via the of_* functions.
>>>
>>> This flow needs to work for:
>>>
>>> 1) Pure DT
>>> 2) DT + EFI memory map
>>> 3) ACPI + EFI memory map
>>>
>>> ... and if this is just for transiently passing the log, I don't think
>>> that a reserved memory region is the right thing to use, since they're
>>> supposed to be more permanent.
>>>
>>> This sounds analogous to passing the initrd, and should probably use
>>> properties under the chosen node (which can be used for all three boot
>>> flows above).
>>>
>>> For reference, how big is the IMA log likely to be? Does it need
>>> physically contiguous space?
>>
>> It purely depends on the policy used and the modules/files that are accessed
>> for my local testing over a kexec session the log in
>> about 30KB.
>>
>> Current implementation expects enough contiguous memory to allocated to
>> carry forward the logs. If the log size exceeds the reserved memory the
>> call will fail.
>>
>> Thanks,
>> Prakhar Srivastava
>>>
>>> Thanks,
>>> Mark.
>>>
>>>>
>>>> Reserved memory stores the size(sizeof(size_t)) of the buffer in the starting
>>>> address, followed by the IMA log contents.
>>>>
>>>> Tested on:
>>>>     arm64 with Uboot
>>>>
>>>> Prakhar Srivastava (2):
>>>>     Add a layer of abstraction to use the memory reserved by device tree
>>>>       for ima buffer pass.
>>>>     Add support for ima buffer pass using reserved memory for arm64 kexec.
>>>>       Update the arch sepcific code path in kexec file load to store the
>>>>       ima buffer in the reserved memory. The same reserved memory is read
>>>>       on kexec or cold boot.
>>>>
>>>>    arch/arm64/Kconfig                     |   1 +
>>>>    arch/arm64/include/asm/ima.h           |  22 ++++
>>>>    arch/arm64/include/asm/kexec.h         |   5 +
>>>>    arch/arm64/kernel/Makefile             |   1 +
>>>>    arch/arm64/kernel/ima_kexec.c          |  64 ++++++++++
>>>>    arch/arm64/kernel/machine_kexec_file.c |   1 +
>>>>    arch/powerpc/include/asm/ima.h         |   3 +-
>>>>    arch/powerpc/kexec/ima.c               |  14 ++-
>>>>    drivers/of/Kconfig                     |   6 +
>>>>    drivers/of/Makefile                    |   1 +
>>>>    drivers/of/of_ima.c                    | 165 +++++++++++++++++++++++++
>>>>    include/linux/of.h                     |  34 +++++
>>>>    security/integrity/ima/ima_kexec.c     |  15 ++-
>>>>    13 files changed, 325 insertions(+), 7 deletions(-)
>>>>    create mode 100644 arch/arm64/include/asm/ima.h
>>>>    create mode 100644 arch/arm64/kernel/ima_kexec.c
>>>>    create mode 100644 drivers/of/of_ima.c
>>>>
>>>> -- 
>>>> 2.25.1
>>>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
