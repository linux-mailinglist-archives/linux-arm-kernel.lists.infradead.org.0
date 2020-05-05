Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29EA21C5251
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 11:59:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DgvcUzeh74V8Zu2wpdIHlsaIw5ZIjaaZovUvb2sZYK0=; b=V7HNYpBgCq84y2
	mpBQizufw90v2MwewcQAAejwcA99et3in1CBkS+AMR7zZ2CF5Has6iJfsFzgxWRuxF9m6+q5w/pEi
	VBwhvk93ihhQBBGMBpzjq2yTSaXstHJXKEe9Hqf4Rf1znVRd9O5Kf2TNKfEoEri/7evPVBOGZ/QRQ
	u6EQwkj95ljY8Ot3JfxnfvSlwDDDmO+HcNS6PaJDVUtegraNPm8U9pl1HFw0WKOoqsXpRU3CabNbk
	DcGXkPq0SQ34PSlfNWYSK8pY7QDsFRZ5XlU6+Hm6/6drcG4DGz9ioV2n/IRfjiSfzGAwy76ZF9O/i
	SbWOacmD5xzGGR8H+VHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVuML-0002fT-F5; Tue, 05 May 2020 09:59:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVuME-0002f7-6g
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 09:59:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0A77330E;
 Tue,  5 May 2020 02:59:21 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A74BF3F305;
 Tue,  5 May 2020 02:59:13 -0700 (PDT)
Date: Tue, 5 May 2020 10:59:08 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Prakhar Srivastava <prsriva@linux.microsoft.com>
Subject: Re: [RFC][PATCH 0/2] Add support for using reserved memory for ima
 buffer pass
Message-ID: <20200505095620.GA82424@C02TD0UTHF1T.local>
References: <20200504203829.6330-1-prsriva@linux.microsoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504203829.6330-1-prsriva@linux.microsoft.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_025922_335400_CA5BE373 
X-CRM114-Status: GOOD (  18.12  )
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
Cc: kstewart@linuxfoundation.org, gregkh@linuxfoundation.org,
 benh@kernel.crashing.org, bhsharma@redhat.com, tao.li@vivo.com,
 zohar@linux.ibm.com, paulus@samba.org, vincenzo.frascino@arm.com,
 will@kernel.org, nramas@linux.microsoft.com, frowand.list@gmail.com,
 masahiroy@kernel.org, jmorris@namei.org, takahiro.akashi@linaro.org,
 linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 serge@hallyn.com, devicetree@vger.kernel.org, pasha.tatashin@soleen.com,
 robh+dt@kernel.org, hsinyi@chromium.org, tusharsu@linux.microsoft.com,
 tglx@linutronix.de, allison@lohutok.net, christophe.leroy@c-s.fr,
 mbrugger@suse.com, balajib@linux.microsoft.com, dmitry.kasatkin@gmail.com,
 linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org,
 james.morse@arm.com, mpe@ellerman.id.au, linux-integrity@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prakhar,

On Mon, May 04, 2020 at 01:38:27PM -0700, Prakhar Srivastava wrote:
> IMA during kexec(kexec file load) verifies the kernel signature and measures
> the signature of the kernel. The signature in the logs can be used to verfiy the 
> authenticity of the kernel. The logs don not get carried over kexec and thus
> remote attesation cannot verify the signature of the running kernel.
> 
> Introduce an ABI to carry forward the ima logs over kexec.
> Memory reserved via device tree reservation can be used to store and read
> via the of_* functions.

This flow needs to work for:

1) Pure DT
2) DT + EFI memory map
3) ACPI + EFI memory map

... and if this is just for transiently passing the log, I don't think
that a reserved memory region is the right thing to use, since they're
supposed to be more permanent.

This sounds analogous to passing the initrd, and should probably use
properties under the chosen node (which can be used for all three boot
flows above).

For reference, how big is the IMA log likely to be? Does it need
physically contiguous space?

Thanks,
Mark.

> 
> Reserved memory stores the size(sizeof(size_t)) of the buffer in the starting
> address, followed by the IMA log contents.
> 
> Tested on:
>   arm64 with Uboot
> 
> Prakhar Srivastava (2):
>   Add a layer of abstraction to use the memory reserved by device tree
>     for ima buffer pass.
>   Add support for ima buffer pass using reserved memory for arm64 kexec.
>     Update the arch sepcific code path in kexec file load to store the
>     ima buffer in the reserved memory. The same reserved memory is read
>     on kexec or cold boot.
> 
>  arch/arm64/Kconfig                     |   1 +
>  arch/arm64/include/asm/ima.h           |  22 ++++
>  arch/arm64/include/asm/kexec.h         |   5 +
>  arch/arm64/kernel/Makefile             |   1 +
>  arch/arm64/kernel/ima_kexec.c          |  64 ++++++++++
>  arch/arm64/kernel/machine_kexec_file.c |   1 +
>  arch/powerpc/include/asm/ima.h         |   3 +-
>  arch/powerpc/kexec/ima.c               |  14 ++-
>  drivers/of/Kconfig                     |   6 +
>  drivers/of/Makefile                    |   1 +
>  drivers/of/of_ima.c                    | 165 +++++++++++++++++++++++++
>  include/linux/of.h                     |  34 +++++
>  security/integrity/ima/ima_kexec.c     |  15 ++-
>  13 files changed, 325 insertions(+), 7 deletions(-)
>  create mode 100644 arch/arm64/include/asm/ima.h
>  create mode 100644 arch/arm64/kernel/ima_kexec.c
>  create mode 100644 drivers/of/of_ima.c
> 
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
