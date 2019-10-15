Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE67CD7DFC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aPrpqY4kWkM3ANN5Q/AVccmUVR/t6y34XWhcTBzAb9g=; b=f8w64emkmC/vuv
	EHC5IjQb1ZwN/GSBrVbTmtffdMg9WdLKutFddsIN0wma0nfw6AnAsMsdnsjecwmTmrXBK16LoWmtA
	WjZQpEIrI91mpYI2wKwKXwQ5VueNmptKdiKEAk3LoOCuzPmnLlPPopAb0Xim/NkmLchBYcPEmS/bv
	9D+rqXh7z80R+EhrIZ3XVNMngLuB0skyVtuq+iK79nabZeYaxYwTKsj5lPlTs0a8xDHSSNSGV2uNq
	Pxdh9QorDROu736k73+GFbfuKHKIihM7VyBz2WHJZAkb/NTvbfFhABfb9spFTdHoNEU3bRzIIhkyt
	Oz09rdAW+kGFKWvisrfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQn5-0001PY-DI; Tue, 15 Oct 2019 17:39:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQmu-0001Of-D4; Tue, 15 Oct 2019 17:39:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AB18B337;
 Tue, 15 Oct 2019 10:39:11 -0700 (PDT)
Received: from [10.1.196.105] (unknown [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 550F53F6C4;
 Tue, 15 Oct 2019 10:39:09 -0700 (PDT)
Subject: Re: [PATCH V4 0/2] Add support for arm64 to carry ima measurement
To: prsriva <prsriva@linux.microsoft.com>
References: <20191011003600.22090-1-prsriva@linux.microsoft.com>
 <87d92514-e5e4-a79f-467f-f24a4ed279b6@arm.com>
 <b35b239c-990c-0d5b-0298-8f9e35064e2b@linux.microsoft.com>
From: James Morse <james.morse@arm.com>
Message-ID: <0053eb68-0905-4679-c97a-00c5cb6f1abb@arm.com>
Date: Tue, 15 Oct 2019 18:39:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <b35b239c-990c-0d5b-0298-8f9e35064e2b@linux.microsoft.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_103912_531931_75A9DCC3 
X-CRM114-Status: GOOD (  40.47  )
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
Cc: mark.rutland@arm.com, jean-philippe@linaro.org, arnd@arndb.de,
 yamada.masahiro@socionext.com, sboyd@kernel.org, catalin.marinas@arm.com,
 ard.biesheuvel@linaro.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, zohar@linux.ibm.com, takahiro.akashi@linaro.org,
 duwe@lst.de, bauerman@linux.ibm.com, allison@lohutok.net,
 linux-integrity@vger.kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prakhar,

(CC: +Ard : passing reserved memory between kernels using Kexec?)

On 15/10/2019 02:31, prsriva wrote:
> On 10/14/19 11:02 AM, James Morse wrote:
>> On 11/10/2019 01:35, Prakhar Srivastava wrote:
>>> Add support to carry ima measurement log
>>> to the next kexec'ed session triggered via kexec_file_load.
>>
>> I don't know much about 'ima', I'm assuming its the list of 'stuff' that has already been
>> fed into the TPM as part of SecureBoot. Please forgive the stupid questions,
>>
> The IMA logs are event logs for module load time signature validation(based on policies)
> which are backed by the TPM. No SecureBoot information is present in the log other than
> the boot aggregate.

Okay, so SecureBoot is optional with this thing.


>>> Currently during kexec the kernel file signatures are/can be validated
>>> prior to actual load, the information(PE/ima signature) is not carried
>>> to the next session. This lead to loss of information.
>>>
>>> Carrying forward the ima measurement log to the next kexec'ed session
>>> allows a verifying party to get the entire runtime event log since the
>>> last full reboot, since that is when PCRs were last reset.
>>
>> Hmm, You're adding this as a linux-specific thing in the chosen node, which points at a
>> memreserve.
>>
>> The question that normally needs answering when adding to the stuff we have to treat as
>> ABI over kexec is: how would this work from a bootloader that isn't kexec? Does it need to
>> work for non-linux OS?

> This change is only intended to be executed in the path of kexec_file_load and not
> intended to be executed by any boot loader.(Not very aware of boot loader calls.).

kexec_file_load only means something to the first kernel. If you boot something that isn't
linux, does it need to delete this stuff from the DT?
Even if you kexec_file_load linux, it could go on to regular-kexec something that is
not... what should that do with these things?

Other than the chosen node, the DT is treated as a cast-iron description of the platform,
we shouldn't be tinkering with it.

If its not describing hardware, it probably doesn't belong in the DT.


> The logs are non intended to be injected by the boot loader at all.

You're using linux as a bootloader with kexec. We have to treat the stuff that gets passed
between kernels as ABI, as people expect to be able to kexec to a newer kernel.

Is linux-as-a-bootloader special? Or should we work out what any bootloader should do here
first. This avoids having to change this when it turns out someone wants to log UEFI
DXE-drivers/modules in the TPM too.

From the git-log of the ima code it looks like this is some linux-specific format.
Are we certain it will never change, and nothing else ever needs to support it?
(e.g. the DXE driver example above. Is there another way that sort of thing would work?).


> The change is configurable(CONFIG_IMA_KEXEC) under the IMA subsection and can be disabled
> if not needed.

Sure, but not needed isn't the same as not supported.
If we support it at all, we need to cover everything that needs supporting. If its ABI (we
treat data passed between kernels as if it is), we need to get it right first time.

(my point? We need to get the ACPI story sorted before we add any support... otherwise we
end up with two incompatible ways of doing this).

[...]

>> Sharing with powerpc is a great starting point ... but, how does this work for ACPI
>> systems?
>> How does this work if I keep kexecing between ACPI and DT?

> I don't have an answer to this, just going through the call stack i dont believe it
> depends on ACPI as such. I am not the expert here, but more than willing to try out the
> scenario in question.(Can you point me to some documentation to setup some environment to
> test this.)

Yup: Documentation/arm64/arm-acpi.rst

Arm64's ACPI support depends on UEFI. As a starter:
https://wiki.ubuntu.com/ARM64/QEMU

You may need to pass 'acpi=on' on the commandline if your UEFI build supports both DT and
ACPI. The x86 name for UEFI-in-Qemu is OVMF, which helps when googling.


> Kexec_file_load call depends purely on DT implementation.

Heh. And it works with ACPI too! You'll note it only touches things in the chosen node...

An ACPI system boots without a DT. Linux's EFI-stub can make API calls and poke around in
the UEFI structures to find out about the system. When it finishes, the EFI-stub needs to
pass on a set of values to the kernel... we need some kind of key-value store ...

To avoid re-inventing the wheel, the EFI-stub creates an empty DT, and shoves the cmdline,
the initrd etc in there... just like a DT bootloader would have done.

From drivers/firmware/efi/libstub/arm-stub.c::efi_entry()
|	if (!fdt_addr)
|		pr_efi(sys_table, "Generating empty DTB\n");

(you will see this message on an ACPI-only system)

On an ACPI system there won't be anything else in the DT, other than the chosen node.

When booted with UEFI, the memory is described in the UEFI memory-map. An ACPI system
doesn't know to look for memreserve nodes in the DT. (it might work by accident, but I
wouldn't rely on it).


>> I'd prefer it we only had one way this works on arm64, so whatever we do has to cover both.

> I can move the code to be only part of arm64 arch if absolutely necessary. Thiago do you
> have any concerns on going back the path of multiple code paths?

Because arm64 needs to support ACPI too, I think its support for this will always look
different to PowerPCs.

I think the UEFI persistent-memory-reservations thing is a better fit for this [0][1].

As U-boot supports booting the kernel via the UEFI stub, I think this is all we need to
support this. (If your platform supports LPIs, you also need this UEFI table to kexec
safely anyway. See [1])


Removing something that was reserved memory might be tricky, I don't think we do this
anywhere else. Why do you need to remove the reservations?


>> Does ima work without UEFI secure-boot?

> Yes, IMA, the measurement is not dependent on any hardware capabilities.
> TPM is needed to back the measurements but the IMA module will not fail if TPM is not
> available.
> In short Secure-boot has no impact on IMA.

(thanks)


>> If not, the Linux-specific UEFI 'memreserve' table might be a better fit, this would be
>> the same for both DT and ACPI systems. Given U-boot supports the UEFI API too, its
>> probably the right thing to do regardless of secure-boot.
>>
>> It looks like x86 doesn't support this either yet. If we have to add something to support
>> ACPI, it would be good if it covers both firmware mechanisms for arm64, and works for x86
>> in the same way.
>>
>> (How does this thing interact with EFI's existing efi_tpm_eventlog_init()?)

> IMA does not interact with the TPM event log.
> Only one of the PCR's is extended but not logged in the TPM logs. The logging is done in
> IMA. The IMA measurement log in question is whats needed to be carried over to via
> kexec_file_load call.

If SecureBoot isn't relevant, I'm confused as to why kexec_file_load() is.

I thought kexec_file_load() only existed because SecureBoot systems need to validate the
new OS images's signature before loading it, and we can't trust user-space calling Kexec
to do this.

If there is no secure boot, why does this thing only work with kexec_file_load()?
(good news! With the UEFI memreseve table, it should work transparently with regular kexec
too)


> I am not sure if i addressed all your concerns, please let me know
> if i missed anything. To me most concerns look to be towards the kexec case and dependency
> on hardware(ACPI/TPM) during boot and early boot services, where as carrying the logs is
> only during the kexec_file_load sys call and does not interfere with that code path.
> IMA documentation: https://sourceforge.net/p/linux-ima/wiki/Home/

Supporting ACPI in the same way is something we need to do from day one. kexec_file_load()
already does this. I'm not sure "only kexec_file_load()" is a justifiable restriction...


Thanks,

James

[0] https://marc.info/?l=linux-efi&m=153754757208163&w=2
[1] https://lore.kernel.org/lkml/20180921195954.21574-1-marc.zyngier@arm.com/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
