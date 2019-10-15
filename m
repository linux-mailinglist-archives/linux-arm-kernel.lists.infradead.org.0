Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3ADD6CEA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 03:32:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0hBkPWW6ixcPqsVKWUHo0dnX3X++iMOQhs2Jrmk0NzM=; b=PPptz/LbYHbfee0OIybSLbNTk
	ESxZQUXM3wvsM0Tv3rHW3tJ0CEroWSEDylEr59+f7InB7qczEcD8d2HOoLe35A63o6Atyt5s1x310
	hjJYONcQbgEapYWOV3DijpiV3iKQpMM1qLqTsocE+APYduG9Wq9Jme+8XfBm1KSqZbG5sY22+jKk1
	JZzspiePV1QL6Q4aHa6aGkvN22ba5RtiXeSzxxucOumHyUQtdtFpv15+p5ay3CDovuvy7rzTjVDjz
	GthQ2pARYn+BVyLv9YOu43CCkSt9S1KyXOzb0DQvDwLEvud16X5fS0MgB4Hbv1YiQDytqnB6MgZ+G
	D/w7bqTCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKBgi-0001mD-HS; Tue, 15 Oct 2019 01:31:48 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKBgU-0001kP-H2; Tue, 15 Oct 2019 01:31:36 +0000
Received: from [10.137.104.46] (unknown [131.107.174.174])
 by linux.microsoft.com (Postfix) with ESMTPSA id DD1DC20B71C6;
 Mon, 14 Oct 2019 18:31:30 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com DD1DC20B71C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1571103091;
 bh=JyQth7Ct3RzPrDMGGVL/0UtrVuwcC4tEO3GTBka83Hc=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=S1vggRK+d0gb1x/O0Shq8BSQkFFU6Gm+V4FMb09ZP5prEtMCjhnrePJquxG2lyPit
 s5Wz/IivDkfxFtgXl2mZGrsvgpoVwBB9NbU3CY737tNMV8d5SejQAbiXATG8MWV9dW
 5JqQEz7TH3QBLqotT9rwGaQ2Mm9Ov8M13tLVOYuI=
Subject: Re: [PATCH V4 0/2] Add support for arm64 to carry ima measurement
To: James Morse <james.morse@arm.com>
References: <20191011003600.22090-1-prsriva@linux.microsoft.com>
 <87d92514-e5e4-a79f-467f-f24a4ed279b6@arm.com>
From: prsriva <prsriva@linux.microsoft.com>
Message-ID: <b35b239c-990c-0d5b-0298-8f9e35064e2b@linux.microsoft.com>
Date: Mon, 14 Oct 2019 18:31:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <87d92514-e5e4-a79f-467f-f24a4ed279b6@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_183134_637182_77DF21B8 
X-CRM114-Status: GOOD (  30.98  )
X-Spam-Score: -15.6 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, jean-philippe@linaro.org, arnd@arndb.de,
 yamada.masahiro@socionext.com, sboyd@kernel.org, catalin.marinas@arm.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, zohar@linux.ibm.com,
 takahiro.akashi@linaro.org, kristina.martsenko@arm.org, duwe@lst.de,
 bauerman@linux.ibm.com, allison@lohutok.net, james.morse@arm.org,
 linux-integrity@vger.kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/14/19 11:02 AM, James Morse wrote:
> Hi Prakhar,
> 
> (You've CC'd a few folk who work for 'arm.org'...)
> 
> On 11/10/2019 01:35, Prakhar Srivastava wrote:
>> Add support to carry ima measurement log
>> to the next kexec'ed session triggered via kexec_file_load.
> 
> I don't know much about 'ima', I'm assuming its the list of 'stuff' that has already been
> fed into the TPM as part of SecureBoot. Please forgive the stupid questions,
> 
The IMA logs are event logs for module load time signature 
validation(based on policies) which are backed by the TPM. No SecureBoot 
information is present in the log other than the boot aggregate.

>> Currently during kexec the kernel file signatures are/can be validated
>> prior to actual load, the information(PE/ima signature) is not carried
>> to the next session. This lead to loss of information.
>>
>> Carrying forward the ima measurement log to the next kexec'ed session
>> allows a verifying party to get the entire runtime event log since the
>> last full reboot, since that is when PCRs were last reset.
> 
> Hmm, You're adding this as a linux-specific thing in the chosen node, which points at a
> memreserve.
> 
> The question that normally needs answering when adding to the stuff we have to treat as
> ABI over kexec is: how would this work from a bootloader that isn't kexec? Does it need to
> work for non-linux OS?
> 
This change is only intended to be executed in the path of 
kexec_file_load and not intended to be executed by any boot loader.(Not 
very aware of boot loader calls.). The logs are non intended to be 
injected by the boot loader at all.
The change is configurable(CONFIG_IMA_KEXEC) under the IMA subsection 
and can be disabled if not needed.

> Changing anything other than the chosen node of the DT isn't something the kernel should
> be doing. I suspect if you need reserved memory for this stuff, it should be carved out by
> the bootloader, and like all other memreserves: should not be moved or deleted.
> 
> ('fdt_delete_mem_rsv()' is a terrifying idea, we depend on the memreserve nodes to tell
> use which 'memory' we shouldn't touch!)
> 
fdt_delete_mem_rsv - is to cleanup any memory that's been mistakenly 
still lying around in the same session while creating the fdt. 
memblock_free is actually used to free up the reserved memory.

Thiago may have more insight, This is primarily a code that's been 
ported from existing kernel for PowerPC.
https://github.com/torvalds/linux/blob/master/arch/powerpc/kernel/machine_kexec_file_64.c

> 
> Sharing with powerpc is a great starting point ... but, how does this work for ACPI systems?
> How does this work if I keep kexecing between ACPI and DT?
> 

I don't have an answer to this, just going through the call stack i dont 
believe it depends on ACPI as such. I am not the expert here, but more 
than willing to try out the scenario in question.(Can you point me to 
some documentation to setup some environment to test this.) 
Kexec_file_load call depends purely on DT implementation.


> I'd prefer it we only had one way this works on arm64, so whatever we do has to cover both.
I can move the code to be only part of arm64 arch if absolutely 
necessary. Thiago do you have any concerns on going back the path of 
multiple code paths?

>
> Does ima work without UEFI secure-boot?
Yes, IMA, the measurement is not dependent on any hardware capabilities.
TPM is needed to back the measurements but the IMA module will not fail 
if TPM is not available.
In short Secure-boot has no impact on IMA.

> If not, the Linux-specific UEFI 'memreserve' table might be a better fit, this would be
> the same for both DT and ACPI systems. Given U-boot supports the UEFI API too, its
> probably the right thing to do regardless of secure-boot.
> 
> It looks like x86 doesn't support this either yet. If we have to add something to support
> ACPI, it would be good if it covers both firmware mechanisms for arm64, and works for x86
> in the same way.
> 
> (How does this thing interact with EFI's existing efi_tpm_eventlog_init()?)
> 
IMA does not interact with the TPM event log.
Only one of the PCR's is extended but not logged in the TPM logs. The 
logging is done in IMA. The IMA measurement log in question is whats 
needed to be carried over to via kexec_file_load call.

I am not sure if i addressed all your concerns, please let me know
if i missed anything. To me most concerns look to be towards the kexec 
case and dependency on hardware(ACPI/TPM) during boot and early boot 
services, where as carrying the logs is only during the kexec_file_load 
sys call and does not interfere with that code path.
IMA documentation: https://sourceforge.net/p/linux-ima/wiki/Home/

Prakhar Srivastava
> 
> Thanks,
> 
> James
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
