Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B03E5208
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 19:08:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=neVuROvyMnIIZr7llJXq/AnpiiiUIev4Gwpav8RWnf8=; b=occWdKrlBre4zy
	lKzvPxAw0H6gKWL8VR0cc1l3MhhvK1ZC++S4ZpnEr8OGEiHo3CYeOJMVwVAmRuFyMz9cOE7IR3AtI
	gl6i+YLlavqFBn60SqSZJV+3c/y5zQWmiP1cBhAPnAzYZvm/7RQwao8N6FXd8S/ToBQMUpMR48wHT
	egLUeo0VNGcNJ//3mjHYxROidtAiujBwbXmamKIOeEzmFVJgYRuAVf/4+3uqDGPczJ6dW0ffiITJZ
	tFE3aTbTRUUQlk2lHD5N7L/X5cSKvVWG+9Wxm7wyaWaboDhvvF+/vNwNyW+CWSjPuJxAjAd6XDEVH
	/9AnIPAeawS2VoRqR80A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO34y-0001Mf-MO; Fri, 25 Oct 2019 17:08:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO34W-0001BG-MF; Fri, 25 Oct 2019 17:08:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4299D328;
 Fri, 25 Oct 2019 10:08:20 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C4B993F71A;
 Fri, 25 Oct 2019 10:08:17 -0700 (PDT)
From: James Morse <james.morse@arm.com>
Subject: Re: [PATCH V4 0/2] Add support for arm64 to carry ima measurement
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20191011003600.22090-1-prsriva@linux.microsoft.com>
 <87d92514-e5e4-a79f-467f-f24a4ed279b6@arm.com>
 <b35b239c-990c-0d5b-0298-8f9e35064e2b@linux.microsoft.com>
 <0053eb68-0905-4679-c97a-00c5cb6f1abb@arm.com>
 <CA+CK2bBVcE91YbJx1f_BkNqbD03wGLNtyane7PjCnEu8i_cH2Q@mail.gmail.com>
Message-ID: <b53ba912-6fec-211d-9494-bc6ae6fa3f31@arm.com>
Date: Fri, 25 Oct 2019 18:08:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CA+CK2bBVcE91YbJx1f_BkNqbD03wGLNtyane7PjCnEu8i_cH2Q@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_100820_784509_10EDE77C 
X-CRM114-Status: GOOD (  18.62  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, jean-philippe@linaro.org,
 arnd@arndb.de, Masahiro Yamada <yamada.masahiro@socionext.com>,
 sboyd@kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, zohar@linux.ibm.com,
 prsriva <prsriva@linux.microsoft.com>, takahiro.akashi@linaro.org, duwe@lst.de,
 bauerman@linux.ibm.com, allison@lohutok.net, linux-integrity@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On 15/10/2019 19:47, Pavel Tatashin wrote:
>> I think the UEFI persistent-memory-reservations thing is a better fit for this [0][1].

> Thank you for your thought. As I understand you propose the to use the
> existing method as such:
> 1. Use the existing kexec ABI to pass reservation from kernel to
> kernel using EFI the same as is done for GICv3 tables.
> 2. Allow this memory to be reservable only during first Linux boot via
> EFI memory reserve
> 3. Allow to have this memory pre-reserved by firmware or to be
> embedded into device tree.
> 
> A question I have is how to tell that a reserved region is reserved
> for IMA use. With GICv3 it is done by reading the registers, finding
> the interrupt tables memory, and check that the memory ranges are
> indeed pre-reserved.

Good point, efi_mem_reserve_persistent() has no way of describing what a region is for,
you have to know that from somewhere else.


> Is there a way to name memory with the current ABI that you think is acceptable?

This would need to go in the chosen node of the DT, like power-pc already does. This would
work on arm64:ACPI systems too (because they have a DT chosen node).


I'd like to understand why removing these entries is needed, it doesn't look like we have
an API call to remove them from the efi mem-reserve...

If it had a fixed position in memory its the sort of thing we'd expect firmware to
reserved during boot. (e.g. ramoops).

~

From ima_add_kexec_buffer() this really is a transient memory reservation over kexec.
I think the efi mem-reserve and a DT-chosen node entry with the PA is the only way to make
this work smoothly between DT<->ACPI systems.

We'd need a way of removing the efi mem-reserve in ima_free_kexec_buffer(), otherwise the
memory remains lost. The DT-chosen node entry should have its pointer zero'd out once
we've done this. (like we do for the KASLR seed).


Not considered is parsing the DT-chosen node entry as if it were a memreserve during early
boot. This wouldn't work if you kexec something that doesn't know what the node is, it
would overwrite the the memory and may not remove the node for the next kexec, which does.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
