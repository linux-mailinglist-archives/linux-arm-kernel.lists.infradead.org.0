Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C67501C0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 07:59:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DIllHfLzj+CW9OWtWAAiOjwJGik70sIQk2zTwq4beF4=; b=OfLhTvNfLKoReGKLJbG7SxN89
	g8Yr4AtOHCF7TCIWRQE7J0Awnl2DJRngl7/taYe9lY2xGVxtUYPQYPgW7dfaoNt0uKYjs8tJ9S6U3
	ua4FHo55Ccfyq1/7DdcbYzCXvuYz5WLi6VdhdZuTAidMkPDIX+0cM0Smh+YeC+I1Lrj9e1Djjw6wI
	PEiaF7ZOauPvCw8ocl6tUs3hQ1rLrdbRH0hmO0eJi9A9XvEx8dM/bGXinwGFRj2vYAD49qGIAInLb
	v7Ollu2FNMupHQBrzhSnkn7fq6/k2Cr3XihNavLckViuL21mY+7KJuPtW5/BkTRv0xW0k0Q5RjCZl
	iAzMgQXBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfI0z-0006cU-So; Mon, 24 Jun 2019 05:59:41 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfI0e-0006Z4-BP
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 05:59:23 +0000
Received: by mail-pg1-f194.google.com with SMTP id 145so6503792pgh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 22:59:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=B5/S1VlmUOUPUvkaGbZLgGlAfInV9YGB3nllV1BGZPA=;
 b=BgcHhNSDQt7+ueaYMZpoeetuj3tXbxZu6PlywtL53oJ2RrbBIkHG4rLC2lOv+uUzTx
 YeceVFOjN5pJOd6uXQyrMvoIdR7lqWYJn/Wm4XEDFOvFd66TBA+IGKNl5zlLg3QMDsHX
 C143489aXywvb4+MuCFMpQMbvs0rdI7dep9tjcDL5W+m2NAHvH2dsfGpGomX2kY31dVq
 Bn8u32rKeNGjoFW45AN5/fyrrCF/fuDGpkJzWh8FsHXzWCdE9F82dG1382FVPBqq3XeR
 gGJ6Pib5k8K3vpD32MpyRCn62wA1cjWkXMGUFre1X+sHA9DFosg4DugUGar5OH5qZCBQ
 nG+g==
X-Gm-Message-State: APjAAAXh/NQgP4/f1QKlJMeFhiAC1FIKVb8zYgRFaI2Ks9CRLM3m335k
 M+TZIE6INscbgZwwNlP5KOHRaIVFs3o=
X-Google-Smtp-Source: APXvYqyVlGz6/DaOJP/ksSavurql5Az6tO0hMXQJ0WghZ6ZiRYNntwC7eBSkn2KG53384PuI9XT1Uw==
X-Received: by 2002:a63:730c:: with SMTP id o12mr7270959pgc.18.1561355958914; 
 Sun, 23 Jun 2019 22:59:18 -0700 (PDT)
Received: from localhost.localdomain ([122.177.109.125])
 by smtp.gmail.com with ESMTPSA id j13sm9707919pfh.13.2019.06.23.22.59.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 23 Jun 2019 22:59:18 -0700 (PDT)
Subject: Re: [Query] arm64: Right approach to support Image.gz file type via
 kexec_file_load()
To: James Morse <james.morse@arm.com>
References: <9d54bb1e-7371-5163-69b0-0af0426ee4a0@redhat.com>
 <102e8c0a-d69a-81ee-5652-85a2b901230a@arm.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Message-ID: <96b0ca14-48ad-ff15-8562-807893bc8124@redhat.com>
Date: Mon, 24 Jun 2019 11:29:11 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <102e8c0a-d69a-81ee-5652-85a2b901230a@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_225920_388414_A8E063E1 
X-CRM114-Status: GOOD (  32.02  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, matthewgarrett@google.com,
 Will Deacon <will.deacon@arm.com>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

Many thanks for your inputs. Please see my comments inline:

On 06/20/2019 08:58 PM, James Morse wrote:
> Hi Bhupesh,
> 
> On 19/06/2019 22:23, Bhupesh Sharma wrote:
>> Since most distributions use 'make zinstall' rule inside 'arch/arm64/boot/Makefile' (see
>> [1] for details) to install the arm64 Image.gz compressed file inside the boot destination
>> directory (for e.g. /boot), currently we cannot use kexec_file_load() to load vmlinuz (or
>> Image.gz):
> 
> It's not just kexec_file_load(), we don't support booting from compressed or elf image
> formats either: the bootloader has to decompress any Image.gz before it can run it.

That's correct.

>> ... kernel returns -EINVAL error value, as it is not able to locate the magic number
>> =0x644d5241, which is expected in the 64-byte header of the decompressed kernel image
> 
> 
>> I can figure out two ways to address this:
>>
>> 1. Add support in user-space kexec-tools (for which I have a RFC patch ready), which
>> handles an 'Image.gz' being passed via kexec_file_load(), using an approach as follows:
>>
>> a). Copy the contents of Image.gz to a temporary file.
>> b). Decompress (gunzip-decompress) the contents inside the temporary file.
>> c). Pass the 'fd' of the temporary file to the kernel space. So basically the kernel space
>> still gets a decompressed kernel image to load via kexec_tools
> 
> Sounds reasonable.
> (I guess you need to decompress it first to know the size to pass to kexec_file_load(),
> hence the intermediate copy)

That's correct.

>> This seems to have the following pros and cons, which I can think of:
>>
>> Pros:
>>   - Changes can be handled in the user-space (kexec_tools) and no changes are required in
>> kernel space for handling the unsigned/non-secure boot case.
>>
>> Cons:
>>   - One obvious issue is how to handle the signed kernel Image.gz, because signature
>> verification is managed inside the kernel, so handling a signed Image.gz would require
>> kernel intervention eventually.
> 
> How do you sign an Image.gz? Isn't the signature written into the PE header?

That's correct, normally in user-land one uses standard signing 
utilities like the sbsign tools (see [1]). For example I use the 
following method to sign the decompressed kernel Image:

$ sbsign --key ${KEY} --cert ${CERT} Image --output Image.signed

I generally use 'certs/signing_key.pem' [which is intended to be used
for module signing (CONFIG_MODULE_SIG)], as ${KEY} and ${CERT} for test 
purposes.

Now if CONFIG_KEXEC_VERIFY_SIG is enabled, kexec_file_load() invokes an 
arch-defined (and hence file-format-specific) hook function to check for 
the validity of kernel binary. So a normal 'kexec -s' invocation with 
the signed Image works fine with the current upstream code (and latest 
upstream kexec-tools)

$ kexec -s -l Image.signed --initrd=/boot/initramfs-`uname -r`.img 
--reuse-cmdline

The problem happens when we have a Image.gz instead of a decompressed 
Image in distro environments.

Now the process becomes a lot more complicated:

- User uses sbsign tool to sign Image.gz, lets call the resulting file 
as Image.gz.signed

- kexec_file_load() is invoked using a command line resembling something 
like:

$ kexec -s -l Image.gz.signed --initrd=/boot/initramfs-`uname -r`.img 
--reuse-cmdline

- Now since kexec_tools (user land) has no support for parsing the 
signature appended before the Image.gz file (using which it creates a 
decompressed Image file) and then to re-sign the resulting Image file 
(before it is passed as a fd to the syscall), I am not sure how this can 
be handled in user-land appropriately.

[1] https://build.opensuse.org/package/show/home:jejb1:UEFI/sbsigntools

>>   - Passing decompressed image from user-space requires the kernel to read large amount of
>> data from the user-space.
> 
> The kernel can't decompress itself, so this large amount of data has to be moved at some
> point.
> 
> 
>> 2. Add support in kernel (for which I have a RFC patch ready), which handles an 'Image.gz'
>> being passed via kexec_file_load(), using an approach as follows:
>>
>> a). Define a 'arch_kexec_kernel_image_probe' for arm64, which overrides the __weak
>> definition in 'kernel/kexec_file.c'
>> b). Inside 'arch_kexec_kernel_image_probe' for arm64, check if we have been passed a
>> magic header  0x1f, 0x8b (\037 \213) which indicates a 'gzip format' Image file.
>> b). Decompress the contents inside a buffer using a decompress_kernel() -> gunzip() ->
>> inflate() logic.
>>
>> This seems to have the following pros and cons, which I can think of:
>>
>> Pros:
>>   - Handling signed Image.gz becomes easier in the kernel itself.
> 
> I don't follow: you can't boot this, so why would you sign it?


Because that's what most distributions do normally (I share some signing
rules as a reference below) - if the gzipped EFI images are present then 
they sign them via
pesign tool (see 
<http://manpages.ubuntu.com/manpages/bionic/man1/pesign.1.html>)

  %if %{signkernel}
     # Sign the image if we're using EFI
     # aarch64 kernels are gziped EFI images
     KernelExtension=${KernelImage##*.}
     if [ "$KernelExtension" == "gz" ]; then
         SignImage=${KernelImage%.*}
     else
         SignImage=$KernelImage
     fi

Thanks,
Bhupesh

>> Cons:
>>   - One needs to add a decompress_kernel() -> gunzip() -> inflate() kind-of logic in kernel
>> space to handle gzipp'ed image for arm64.
> 
> We support gzipped initramfs so the code already exists. More of a problem is kdump (which
> we don't yet support), which has to fit in the reserved crashkernel region, and we won't
> know the size of the compressed image until we've decompressed it. (its just fiddly)
> 
> 
>> So, I was wondering which approach should be more suitable - fixing this in user-space v/s
>> fix this in kernel-space.
> 
> As user-space can do this, I think it should!
> 
> 
> Thanks,
> 
> James
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
