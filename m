Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAEB3155312
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 08:35:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oIHq59WrMZWPLpqsnICPF7Q8/WyYCUQpPIQ0dDaHRQo=; b=BkFyOazmc7AZvd
	8NUlhMSruY1LemivAezqr+NOBqPNlJLAjlikwA/it6KkThoS7OEd6z4IpjvMmKMgxoiqLk78nlnnB
	nmcbgzoomuCSCYdwjMVBLzaEhCa6UplfNos0jUSwOMnNYjD284UL0FmJdyXPVXWOSAhJIuUT4KVrh
	mldbHKgJRSQp++5mysRFmFCkNPIJ/9rdTQoHLWEfqFvwqKRS9cuThADU7ie/v/PtfnO7D5QzTHK0B
	rOTaj93HEBWwd8rj8lSLK5eFQoS2z2xDJQLjpHNQCOJcF55wccgnWsfonPXePQaBZLq/KePMlD/AN
	MKIYKRBz9ZiWzLqDpJgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izyAa-0000Oj-8u; Fri, 07 Feb 2020 07:35:20 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izyAS-0000NP-0J
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 07:35:13 +0000
Received: by mail-wr1-x443.google.com with SMTP id t3so1417420wru.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 23:35:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=dwph0ZKbrPb7/u4zq6+4WIcXrfG9yU/PWMdipwpbuuU=;
 b=sfGwp7odrjdn9UgC141yT1INdeDtD00liKxSN4mLqAb6XEtnkXzlh2UiM0+VC+r8xd
 O/Sz+kUFMOzYflJmWw7dkMHfHXMO3doMSvSh74cqkQXMjr/vrUwaDVlle/Q5pf7Lu6JC
 sjm07jaJY85HU5wwW8JQBpJ1YTSmW3OttyNFcjTjj5ZURD8vjzneOXwOpV7TkgsqBvsG
 nOpoUNQ4YgNtsjp/YEsfdtBpM7UFBuitdlWhmQfDWYlujMwnZUTLGc4iRY4+EEK2RC/q
 rNHugURrPCt+6XUnB8fFwk4clNVpOqbie7xlZpPrlig8U0gdOR96NJPCongukMfawNMp
 FsbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dwph0ZKbrPb7/u4zq6+4WIcXrfG9yU/PWMdipwpbuuU=;
 b=Sxm4eHkgYZJA8y2hkyA/F0Qr2bNYneaLqzXtPuUNSUMuCmoCVWRRh3NsOHUzkaiweX
 MyZTk3yhu6ZZOhcEVrLoVMlxYW5rB43BLreaWGpKYEgeQF9sgV2hAVduh42bGJO6vpzO
 clNIUH/cpADYzNaNLM6MIAXaBzaBi3HauVvf+vA+bzJXA20APVDB1JwdNxrTPpiPnPgP
 i6Zwhbs0QMikpol9rqw2MEG+D000HTsNTiIwb19lyPndk3jon4AASVpJC0sChiEqLrQL
 sLTWV7+Gsrdo7xs9v84iUzvtujJq7TXQfY/iuuZDNvrJRYhlj2oCwOUaV24QiXRA0oj9
 I63g==
X-Gm-Message-State: APjAAAUKZL4acg0c2ZpB2j61FCVw2zkzE3LLuRlpV+kPMAflZT7/xWTG
 zMWbZGXFSx+QvEmExI3rzXJF/Q==
X-Google-Smtp-Source: APXvYqxbdF8/ULXkWl0HK1q01h794sXfIqFI5LxPWwoB3zvnZbKUpW7E0jye84Ap3AMQysFXq9Ys2g==
X-Received: by 2002:a5d:54c1:: with SMTP id x1mr2935265wrv.240.1581060910431; 
 Thu, 06 Feb 2020 23:35:10 -0800 (PST)
Received: from apalos.home (ppp-94-66-201-28.home.otenet.gr. [94.66.201.28])
 by smtp.gmail.com with ESMTPSA id t81sm2350428wmg.6.2020.02.06.23.35.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 23:35:09 -0800 (PST)
Date: Fri, 7 Feb 2020 09:35:06 +0200
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
To: Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: Re: [PATCH 1/2] efi/libstub: add support for loading the initrd from
 a device path
Message-ID: <20200207073506.GA758189@apalos.home>
References: <20200206140352.6300-1-ardb@kernel.org>
 <20200206140352.6300-2-ardb@kernel.org>
 <a6d7fefb-2f02-86a3-66aa-c3c129a91fb1@gmx.de>
 <20200206184608.GA749195@apalos.home>
 <2ffcb05e-761a-9345-7da5-c08f5cda914e@gmx.de>
 <20200206200940.GA750064@apalos.home>
 <d87e3fd2-f897-c48f-8d69-03cd5db237b9@gmx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d87e3fd2-f897-c48f-8d69-03cd5db237b9@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_233512_108409_F78724CE 
X-CRM114-Status: GOOD (  37.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 mjg59@google.com, pjones@redhat.com, leif@nuviainc.com, lersek@redhat.com,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Heinrich

[...]
> > > 
> > > If you don't have an environment or boot script how would
> > > update-initramfs set the path of the initrd when it is updated?
> > 
> > The path isn't hardcoded in any code here is it?
> > This specifies a way for the linux stub to load the actual file. It's pretty a
> > callback to the firmware. Were the firmware will find and how it will load it
> > eventually is implementation specific.
> 
> "Implementation specific" - This does not sound like anything you would
> want to have in mainline Linux, U-Boot, or EDK2.
> 

And it isn't. The *only* thing that's specific to the firmware itself, is
how/where to find the file. The whole handover mechanism after 
that is generic for everyone.

> > 
> > > 
> > > Using a UEFI variable seems to be the natural choice.
> > > 
> > 
> > You might as well use that to specify were you should load the file from.
> > The Loadfile2 (with the specified guid)  implementation of the firmware will
> > take care of that.
> > 
> 
> If we have a UEFI variable, the Linux kernel can use it to find the
> handle with the file system and load initrd via the
> EFI_SIMPLE_FILE_SYSTEM_PROTOCOL.
> 
> This way we stay within the existing UEFI specification and avoid
> anything "implementation specific" in the firmware.

Is this going to limit the directories we can place the file or not?

> 
> If you want extra security, Linux can use an authenticated variable.
> 
> > > > 
> > > > > > 
> > > > > > In the second case, we force the bootloader to duplicate knowledge about
> > > > > > the boot protocol which is already encoded in the stub, and which may be
> > > > > > subject to change over time, e.g., bootparams struct definitions, memory
> > > > > > allocation/alignment requirements for the placement of the initrd etc etc.
> > > > > > In the ARM case, it also requires the bootloader to modify the hardware
> > > > > > description provided by the firmware, as it is passed in the same file.
> > > > > > On systems where the initrd is measured after loading, it creates a time
> > > > > > window where the initrd contents might be manipulated in memory before
> > > > > > handing over to the kernel.
> > > > > > 
> > > > > > Address these concerns by adding support for loading the initrd into
> > > > > > memory by invoking the EFI LoadFile2 protocol installed on a vendor
> > > > > > GUIDed device path that specifically designates a Linux initrd.
> > > > > > This addresses the above concerns, by putting the EFI stub in charge of
> > > > > > placement in memory and of passing the base and size to the kernel proper
> > > > > > (via whatever means it desires) while still leaving it up to the firmware
> > > > > > or bootloader to obtain the file contents, potentially from other file
> > > > > > systems than the one the kernel itself was loaded from. On platforms that
> > > > > > implement measured boot, it permits the firmware to take the measurement
> > > > > > right before the kernel actually consumes the contents.
> > > > > 
> > > > > A firmware implementing the UEFI standard will not be aware of any
> > > > > initrd image as such an object does not exist in the standard. It was a
> > > > > wise decision that the UEFI standard is operating system agnostic
> > > > > (accomodating BSD, Linux, Windows, etc.). So the firmware (EDK2, U-Boot,
> > > > > etc.) seems to be out of scope for providing a Linux specific
> > > > > EFI_LOAD_FILE2_PROTOCOL.
> > > > > 
> > > > > When booting via GRUB it will be GRUB knowing which initrd to load.
> > > > 
> > > > What about booting the kernel directly?
> > > > 
> > > > > 
> > > > > Please, indicate which software you expect to expose the initrd related
> > > > > EFI_LOAD_FILE2_PROTOCOL.
> > > > 
> > > > I have an implementation for this on U-Boot which works. The file and device are
> > > > hardcoded at the moment, but the rest of the functionality works fine. I'll
> > > > share it with you once I clean it up a bit.
> > > 
> > > Using a UEFI variable for passing the intird device path to Linux does
> > > not require any change in U-Boot and is compatible with the UEFI
> > > implementations of existing hardware like the laptop on which I am
> > > writing this email.
> > 
> > This still has the same issues we have now, uefi variable, kernel command line
> > or whatever, it won't be common across architectures.
> 
> This would be a bad design choice by Linux. I cannot see why a UEFI
> variable should not be interpreted in a consistent way inside Linux to
> load a file via the EFI_SIMPLE_FILE_PROTOCOL.
> 
> > 
> > Thanks
> > /Ilias
> > > 
> > > Best regards
> > > 
> > > Heinrich
> > > 
> > > > 
> > > > > > -	status = efi_load_initrd(image, ULONG_MAX,
> > > > > > -				 efi_get_max_initrd_addr(dram_base, *image_addr),
> > > > > > -				 &initrd_addr, &initrd_size);
> > > > > > +	max_addr = efi_get_max_initrd_addr(dram_base, *image_addr);
> > > > > > +	status = efi_load_initrd_devpath(&initrd_addr, &initrd_size, max_addr);
> > > > > > +	if (status == EFI_SUCCESS)
> > > > > > +		pr_efi("Loaded initrd from LINUX_EFI_INITRD_MEDIA_GUID device path\n");
> > > > > > +	else if (status == EFI_NOT_FOUND) {
> > > > > > +		status = efi_load_initrd(image, ULONG_MAX, max_addr,
> > > > > > +					 &initrd_addr, &initrd_size);
> 
> If I delete the initrd that otherwise would be loaded by the
> EFI_LOAD_FILE2_PROTOCOL I end up with the old behavior. So where is the
> security gain provided by this patch?

If you delete the initrd, there is no initrd to load :)

Thanks
/Ilias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
