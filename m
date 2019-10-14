Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 582F0D6900
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 20:02:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HNNghJMda18AmkkoJzhJqKXHE+KVbIKrVr5ue4i0Ex0=; b=fbnzoM1bSwJd97
	/Zv1NQ0lxqmeKxWZjA5YXzxkh9ed5hl1TCJXB4fwAQ4cTQcacCSv8S+ZzkMcm7Su1CprUTUjnY2E8
	ULriBQG3bRopWGY+5obq5rdUHik4HHujhzAC97M+PdJlLwNVJiAQaEuAg2V/T5xKckTp8fx+RM0rE
	KHcgeoD/PIQd2qBY3qeLxHkF4poe8eTif0ZB9vnGqxt85s6NgM8sWSdLU14YUVPxo6nGTiYIjwRpF
	cibAvN2f6DyBDOVFYhEQKtMy1znJHHn9hNsJEX8Dr3Es9gg80/1XSXIIsm14LNAItmpggFZdlfuM7
	CiXmg1cI0ijh/Bww1DnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK4g9-00033V-El; Mon, 14 Oct 2019 18:02:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK4fy-00032E-2D; Mon, 14 Oct 2019 18:02:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 344A528;
 Mon, 14 Oct 2019 11:02:33 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F083A3F6C4;
 Mon, 14 Oct 2019 11:02:29 -0700 (PDT)
Subject: Re: [PATCH V4 0/2] Add support for arm64 to carry ima measurement
To: Prakhar Srivastava <prsriva@linux.microsoft.com>
References: <20191011003600.22090-1-prsriva@linux.microsoft.com>
From: James Morse <james.morse@arm.com>
Message-ID: <87d92514-e5e4-a79f-467f-f24a4ed279b6@arm.com>
Date: Mon, 14 Oct 2019 19:02:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191011003600.22090-1-prsriva@linux.microsoft.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_110234_147801_4BB7CDBD 
X-CRM114-Status: GOOD (  16.94  )
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
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, zohar@linux.ibm.com,
 takahiro.akashi@linaro.org, kristina.martsenko@arm.org, duwe@lst.de,
 bauerman@linux.ibm.com, allison@lohutok.net, james.morse@arm.org,
 linux-integrity@vger.kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prakhar,

(You've CC'd a few folk who work for 'arm.org'...)

On 11/10/2019 01:35, Prakhar Srivastava wrote:
> Add support to carry ima measurement log
> to the next kexec'ed session triggered via kexec_file_load.

I don't know much about 'ima', I'm assuming its the list of 'stuff' that has already been
fed into the TPM as part of SecureBoot. Please forgive the stupid questions,


> Currently during kexec the kernel file signatures are/can be validated
> prior to actual load, the information(PE/ima signature) is not carried
> to the next session. This lead to loss of information.
> 
> Carrying forward the ima measurement log to the next kexec'ed session 
> allows a verifying party to get the entire runtime event log since the
> last full reboot, since that is when PCRs were last reset.

Hmm, You're adding this as a linux-specific thing in the chosen node, which points at a
memreserve.

The question that normally needs answering when adding to the stuff we have to treat as
ABI over kexec is: how would this work from a bootloader that isn't kexec? Does it need to
work for non-linux OS?

Changing anything other than the chosen node of the DT isn't something the kernel should
be doing. I suspect if you need reserved memory for this stuff, it should be carved out by
the bootloader, and like all other memreserves: should not be moved or deleted.

('fdt_delete_mem_rsv()' is a terrifying idea, we depend on the memreserve nodes to tell
use which 'memory' we shouldn't touch!)


Sharing with powerpc is a great starting point ... but, how does this work for ACPI systems?
How does this work if I keep kexecing between ACPI and DT?

I'd prefer it we only had one way this works on arm64, so whatever we do has to cover both.

Does ima work without UEFI secure-boot?
If not, the Linux-specific UEFI 'memreserve' table might be a better fit, this would be
the same for both DT and ACPI systems. Given U-boot supports the UEFI API too, its
probably the right thing to do regardless of secure-boot.

It looks like x86 doesn't support this either yet. If we have to add something to support
ACPI, it would be good if it covers both firmware mechanisms for arm64, and works for x86
in the same way.

(How does this thing interact with EFI's existing efi_tpm_eventlog_init()?)


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
