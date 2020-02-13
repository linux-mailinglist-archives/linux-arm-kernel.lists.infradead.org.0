Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EEB215C9BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 18:53:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IvggSA62t0YcQTvScPTiimYGIuR8k0gdQIDN2sTTaqQ=; b=RVCntpkRquPOav
	trFYw5bvLxcA2Os7sZRbb1RAzgtxzuWS8HpX4fycOLlQ4DYTTnYwJLSLMNh4iVxNYw+pHF04he55Y
	57KUvcrmRsZ/4HGusjH/2Fm2Dx+9eX8EljohI1Tw6y6DEe6E/mtjADL+qiFldsWTzXWfZyPUSWceO
	AvuZQLhgZkIQ6XqyU68OgLv3bbJogQcDWBEnNOB+dX1sNrp6Qq7UaNHuCn4IQKaGZPvV4OyBL90Fq
	48jP6bXcnfHGcL9eAm+TNvrtD06OkfSFqrxLVmcfgeT8a70sI6N0Oujlum8BpXzVfe3wcnLZhUFH1
	aIWUXJQGJ297xLv3fvRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Ig5-0006Bh-Ma; Thu, 13 Feb 2020 17:53:29 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Ifx-0006BJ-7s
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 17:53:23 +0000
Received: by mail-qt1-x841.google.com with SMTP id n17so5045967qtv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 09:53:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hQ4ih0UdB0NOdAJLRyAfFoXRg3IBMsGXrVzfh23+lBw=;
 b=Kmj6kGwADmeI+i1sw5YMjjG9i1Y31gd4TLRBsWIEpyuiB+fRrtOHYVC5B9ImxSIoZ2
 Cw/oHnKFjCVU0dhX46dH0EaiB2wwDqcskaMGgnN7sXZrfq4oOAHB5m9/gqJhU/ca0zwJ
 TgiXfGHsXxfkXsjyNRfVh/MVCLn5pf8LVS+fjRgbgdw3cSYM1h5qD82ZkHFxSujMry/7
 Ndyc6YUJ25FL/B/OXkYu08Qg/NSjzrjY545hTxwlnTpCIfzYv8+IiRGsW8TmYxaRZslm
 zftSdfCWzmFCfgy+021vlLTVJsJ65fYOIIWc4BXXleRgGLU1NHDku7VZqvyF83UsRd8Q
 L49Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=hQ4ih0UdB0NOdAJLRyAfFoXRg3IBMsGXrVzfh23+lBw=;
 b=UlfMhwJRg5hv2E3Yu8TRr0knJ/KHTdqcfAkmxeZG+GEiuFcWj8NrARNZqmQ51Vjzrx
 DVEdnGL4NdmCkot+vN0NU1FFrPhLkQwTOpyYrNhQR18h9qiec3vT/A0zm5/R8KPOB1kb
 ictNw3cAENPpNkR04HD5pSQA22yFput21H7Da9X77tvepMuGndjvCQb3EJwAQONQNRtY
 0Skp3cJoHvIKAWV1tmDSyilMqSqWTGtl1sCx7f8pAkcreO6NHFqb52G0sH1AqsoSAUmx
 FY/V+6jRjOrurvaJ1Cnxrp6x/rC7gGnn48cJ7LttdQT5QsxHxncwJ2s3u7dIh8YxIcbF
 BfKw==
X-Gm-Message-State: APjAAAV2CCYKcUiJGlGR+BoON8zLWrk8K3RZU9zfgZaK3GQvgPt36N84
 523wR6NQX9sCpNyh+a1NePw=
X-Google-Smtp-Source: APXvYqz8o+KlJqn1byMzAtUGo9da99QfzpXo6QCnXuo7KFC8t5E0GC7zDMVqFmWUuIifqZpw8pqjMg==
X-Received: by 2002:aed:3841:: with SMTP id j59mr9306043qte.220.1581616400083; 
 Thu, 13 Feb 2020 09:53:20 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
 by smtp.gmail.com with ESMTPSA id r6sm1805247qtm.63.2020.02.13.09.53.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 09:53:19 -0800 (PST)
From: Arvind Sankar <nivedita@alum.mit.edu>
X-Google-Original-From: Arvind Sankar <arvind@rani.riverdale.lan>
Date: Thu, 13 Feb 2020 12:53:18 -0500
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [RFC PATCH 0/3] efi/x86: add support for generic EFI mixed mode
 boot
Message-ID: <20200213175317.GC1400002@rani.riverdale.lan>
References: <20200213145928.7047-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213145928.7047-1-ardb@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_095321_306464_1A4A3956 
X-CRM114-Status: GOOD (  26.48  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [niveditas98[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [niveditas98[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-efi@vger.kernel.org, agraf@csgraf.de, daniel.kiper@oracle.com,
 mjg59@google.com, mbrown@fensystems.co.uk, hdegoede@redhat.com,
 nivedita@alum.mit.edu, pjones@redhat.com, leif@nuviainc.com, lersek@redhat.com,
 mingo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 03:59:25PM +0100, Ard Biesheuvel wrote:
> This series is another part of my effort to reduce the level of knowledge
> on the part of the bootloader or firmware of internal per-architecture
> details regarding where/how the kernel is loaded and where its initrd and
> other context data are passed.
> 
> The x86 architecture has a so-called 'EFI handover protocol', which defines
> how the bootparams struct should be populated, and how it should be
> interpreted to figure out where to load the kernel, and at which offset in
> the binary the entrypoint is located. This scheme allows the initrd to be
> loaded beforehand, and allows 32-bit firmware to invoke a 64-bit kernel
> via a special entrypoint that manages the state transitions between the
> two execution modes.
> 
> Due to this, x86 loaders currently do not rely on LoadImage and StartImage,
> and therefore, are forced to re-implement things like image authentication
> for secure boot and taking the measurements for measured boot in their open
> coded clones of these routines.
> 
> My previous series on this topic [0] implements a generic way to load the
> initrd from any source supported by the loader without relying on something
> like device trees or bootparams structures, and so native boot should not
> need the EFI handover protocol anymore after those change are merged.
> 
> What remains is mixed mode boot, which also needs the EFI handover protocol
> regardless of whether an initrd is loaded or not. So let's get rid of that
> requirement, and take advantage of the fact that EDK2 based firmware does
> support LoadImage() for X64 binaries on IA32 firmware, which means we can
> rely on the secure boot and measured boot checks being performed by the
> firmware. The only thing we need to put on top is a way to discover the
> non-native entrypoint into the binary in a way that does not rely on x86
> specific headers and data structures.
> 
> So let's introduce a new .compat header in the PE/COFF metadata of the
> bzImage, and populate it with a <machine type, entrypoint> tuple, allowing
> a generic EFI loader to decide whether the entrypoint supports its native
> machine type, and invoke it as an ordinary EFI application entrypoint.
> Since we will not be passing a bootparams structure, we need to discover
> the base of the image (which contains the setup header) via the loaded
> image protocol before we can enter the kernel in 32-bit mode at startup_32()
> 
> A loader implementation for OVMF can be found at [1]. Note that this loader
> code is fully generic, and could be used without modifications if other
> architectures ever emerge that support kernels that can be invoked from a
> non-native (but cross-type supported) loader.
> 
> [0] https://lore.kernel.org/linux-arm-kernel/20200206140352.6300-1-ardb@kernel.org/
> [1] https://github.com/ardbiesheuvel/edk2/commits/linux-efi-generic
> 

As an alternative to the new section, how about having a CONFIG option
to emit the 64-bit kernel with a 32-bit PE header instead, which would
point to efi32_pe_entry? In that case it could be directly loaded by
existing firmware already. You could even have a tool that can mangle an
existing bzImage's header from 64-bit to 32-bit, say using the newly
added kernel_info structure to record the existence and location of
efi32_pe_entry.

Also, the PE header can live anywhere inside the image, right? Is there
any reason to struggle to shoehorn it into the "boot sector"?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
