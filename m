Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 668A81D02D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 01:05:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4X5KrIUZztoiyHpvxpkPZmyzwpHoqiGP8qS5Zi091v4=; b=D8iQp8iOSS/yqk
	OgD+uJaa69bP9JYrZBsYbcYlPum5Cq87fNugkSmRu45/JMrihf+jNdB27tmS9UQBUbBT9TRMtuTjh
	cz/utZP19lWdi/nHLtBVZ/Vyuc9/fZHPx3qK/vMwwgtUb9xZcfDAnu6f6Z3VKU/mN0hW8D3Ij8pZF
	p4g5dj7MWYsVc6SiYMt9rnFeHm81h3gws3ITT0e+G0B45sqnBJhgGBpkSNBs8qSh3VieXqMOE7QBL
	578io3aXq7RKkHFlgwrDWYoPRR6e1mMgnVt4RdBHiR6y9dl4q9NLcXDUpxfDa7pAEGbooANxun2Zg
	/aFdU7IU66OfsjuTrHnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYdxi-00080Y-7v; Tue, 12 May 2020 23:05:22 +0000
Received: from mail-oo1-f68.google.com ([209.85.161.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYdxZ-000802-Gm
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 23:05:15 +0000
Received: by mail-oo1-f68.google.com with SMTP id i9so3088486ool.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 16:05:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XSdR85TAgJOs38DEsZUyX0dfieZdKEmO5MKyADhHcpo=;
 b=EtUS7LvL5/Hu0KQ9HSU1TXxIQ0P+sTbWP/UmzTGcJSj+/ZNX+qquE/LGO4xyXps/EH
 UgApYdN29N7Vz0bHuj1ceJoDvQRkda3qPLPyWKL3LObwYKmb76Nn4B835tYhBGu9l258
 GDR38wC7f02cW7gftmKaGjrX86SSnMIb0rforHOLNzJrvhlTqwdfyLqtEVCLrfCYt1dr
 Ioozlg63m/S8DVdtBPtjCn6e0Wa/ABnzUiYqDcmfW1D7vUEVUHwT0gMCLr96yugzmd8B
 GdUNvuJVGrDYWQpFDAy4Ov2OSw13YqepZx6GunoLy9HRZU3CCpvCiseIQsSEt+lNStoo
 9XaQ==
X-Gm-Message-State: AGi0PuaebBsn8Zf/vAL4FW8o2lOQamUNqmZmOHXK2eXrdBRcnwouJf2q
 o2qNPEKTXushp62gvPmdUQ==
X-Google-Smtp-Source: APiQypJzTOsA4MMcw+8ySuTf7bsiFc+0EPM0GrRH186HNMYZE+s5iB7eFAI4H9VokzQcmzwFYB4qXw==
X-Received: by 2002:a4a:9413:: with SMTP id h19mr15437109ooi.52.1589324712398; 
 Tue, 12 May 2020 16:05:12 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id f8sm1601703oto.47.2020.05.12.16.05.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 16:05:11 -0700 (PDT)
Received: (nullmailer pid 9890 invoked by uid 1000);
 Tue, 12 May 2020 23:05:09 -0000
Date: Tue, 12 May 2020 18:05:09 -0500
From: Rob Herring <robh@kernel.org>
To: Prakhar Srivastava <prsriva@linux.microsoft.com>
Subject: Re: [RFC][PATCH 0/2] Add support for using reserved memory for ima
 buffer pass
Message-ID: <20200512230509.GA2654@bogus>
References: <20200504203829.6330-1-prsriva@linux.microsoft.com>
 <20200505095620.GA82424@C02TD0UTHF1T.local>
 <e8c7d74e-74bf-caa3-452d-23faa649e825@linux.microsoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e8c7d74e-74bf-caa3-452d-23faa649e825@linux.microsoft.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_160513_563801_CF3FCA76 
X-CRM114-Status: GOOD (  30.36  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 10:50:04PM -0700, Prakhar Srivastava wrote:
> Hi Mark,

Please don't top post.

> This patch set currently only address the Pure DT implementation.
> EFI and ACPI implementations will be posted in subsequent patchsets.
> 
> The logs are intended to be carried over the kexec and once read the
> logs are no longer needed and in prior conversation with James(
> https://lore.kernel.org/linux-arm-kernel/0053eb68-0905-4679-c97a-00c5cb6f1abb@arm.com/)
> the apporach of using a chosen node doesn't
> support the case.
> 
> The DT entries make the reservation permanent and thus doesnt need kernel
> segments to be used for this, however using a chosen-node with
> reserved memory only changes the node information but memory still is
> reserved via reserved-memory section.

I think Mark's point was whether it needs to be permanent. We don't 
hardcode the initrd address for example.

> On 5/5/20 2:59 AM, Mark Rutland wrote:
> > Hi Prakhar,
> > 
> > On Mon, May 04, 2020 at 01:38:27PM -0700, Prakhar Srivastava wrote:
> > > IMA during kexec(kexec file load) verifies the kernel signature and measures

What's IMA?

> > > the signature of the kernel. The signature in the logs can be used to verfiy the
> > > authenticity of the kernel. The logs don not get carried over kexec and thus
> > > remote attesation cannot verify the signature of the running kernel.
> > > 
> > > Introduce an ABI to carry forward the ima logs over kexec.
> > > Memory reserved via device tree reservation can be used to store and read
> > > via the of_* functions.
> > 
> > This flow needs to work for:
> > 
> > 1) Pure DT
> > 2) DT + EFI memory map
> > 3) ACPI + EFI memory map
> > 
> > ... and if this is just for transiently passing the log, I don't think
> > that a reserved memory region is the right thing to use, since they're
> > supposed to be more permanent.
> > 
> > This sounds analogous to passing the initrd, and should probably use
> > properties under the chosen node (which can be used for all three boot
> > flows above).
> > 
> > For reference, how big is the IMA log likely to be? Does it need
> > physically contiguous space?
> 
> It purely depends on the policy used and the modules/files that are accessed
> for my local testing over a kexec session the log in
> about 30KB.
> 
> Current implementation expects enough contiguous memory to allocated to
> carry forward the logs. If the log size exceeds the reserved memory the
> call will fail.
> 
> Thanks,
> Prakhar Srivastava
> > 
> > Thanks,
> > Mark.
> > 
> > > 
> > > Reserved memory stores the size(sizeof(size_t)) of the buffer in the starting
> > > address, followed by the IMA log contents.
> > > 
> > > Tested on:
> > >    arm64 with Uboot
> > > 
> > > Prakhar Srivastava (2):
> > >    Add a layer of abstraction to use the memory reserved by device tree
> > >      for ima buffer pass.
> > >    Add support for ima buffer pass using reserved memory for arm64 kexec.
> > >      Update the arch sepcific code path in kexec file load to store the
> > >      ima buffer in the reserved memory. The same reserved memory is read
> > >      on kexec or cold boot.
> > > 
> > >   arch/arm64/Kconfig                     |   1 +
> > >   arch/arm64/include/asm/ima.h           |  22 ++++
> > >   arch/arm64/include/asm/kexec.h         |   5 +
> > >   arch/arm64/kernel/Makefile             |   1 +
> > >   arch/arm64/kernel/ima_kexec.c          |  64 ++++++++++
> > >   arch/arm64/kernel/machine_kexec_file.c |   1 +
> > >   arch/powerpc/include/asm/ima.h         |   3 +-
> > >   arch/powerpc/kexec/ima.c               |  14 ++-
> > >   drivers/of/Kconfig                     |   6 +
> > >   drivers/of/Makefile                    |   1 +
> > >   drivers/of/of_ima.c                    | 165 +++++++++++++++++++++++++
> > >   include/linux/of.h                     |  34 +++++
> > >   security/integrity/ima/ima_kexec.c     |  15 ++-
> > >   13 files changed, 325 insertions(+), 7 deletions(-)
> > >   create mode 100644 arch/arm64/include/asm/ima.h
> > >   create mode 100644 arch/arm64/kernel/ima_kexec.c
> > >   create mode 100644 drivers/of/of_ima.c
> > > 
> > > -- 
> > > 2.25.1
> > > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
