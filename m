Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9893C154EF9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 23:36:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/LFOM2XQ/UR6aRMRlguMv6DVUh/nnQKmLhWdGT/0fQw=; b=Wwbue2exlXtBBW
	ECP5+yPG/FCCss8m+0UJUTozqz8WG5KMspXrnfIHB2Myis+u+Qm/4Vx+vErRlmvYqotIWnvjAX/Ot
	Ik7hLPG/nyqVtyhhFARH5jvAnVTDeiVEFIZHRKyhdL7o+Rnj4MimNDTMZ9IzQ4a7aVgGehcQQ9Nj/
	6dIwUjEfn0DmpTY7jKZGHJBTMWwOECeKXLstv5eHWqROZXiHlOO1NaDM7xQnUwVMMpDyOGmSqPNSn
	lZg0Qz4Vwc1+zIIy6uks7xHZ4uFY/b4qdP3lgqtGo3FAGvmcROaZ1uLwg+B8dVMmikQgIIveuwodH
	Pr2UZXcmuA6qhzqZdBcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izpkd-00040I-Aw; Thu, 06 Feb 2020 22:35:59 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izpkV-0003zm-DS
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 22:35:53 +0000
Received: by mail-wr1-x442.google.com with SMTP id z9so317087wrs.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 14:35:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=f25Jk7Ji9AUSrc7PWnSj6DqkZpHdCsLG9IFb4WudRlM=;
 b=jZK1YN9/TXeUlEC7MbArEPgWmXJa89ABdtZGYLIDYYYQD1h6eMiVQQD2QgljDe0pPy
 1EKSUcB4w7PoBNVo4fB0M6u7016VGciIkqYy54BHMGQHlbsBr/1v6tQ8JtXtOmYuGq9Z
 xQZsV6OO4exDp6sXh3bxOa9UT8vklPxiI5z3YsX8YpWCyvPIxwonb/r8x7GWctGNGVuW
 fyCXTb1n8eLk7H1Fs/dCN+2KLlXbMxZqBHv8ezSgf4gIQ4rT9X7PF8Mt2T0RAeP01Vf8
 Ien4DMrBZB97jC8iQrCREBEFw5EHqkUTfrEb5JxG4zyL6F0ayg0YnunMhPsAkMzsCIyf
 bEow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f25Jk7Ji9AUSrc7PWnSj6DqkZpHdCsLG9IFb4WudRlM=;
 b=WSJsisjn7HvmX0SG5y8tLtPokbZXdWuQ8RNZhLWkSXmmd2KC5uTGErE8vF98DlPzSD
 Ik1IicxfOsTSwt+G5Q3jC6enDDOSONqUHTEpXMOccDqPq/+tOoH+z6TJ09vZYxxgE1/I
 YyyUyb7MTXpdOtaq1zARRxJOsefgyjeYzyij8iO/SJ33ra4mCEHKh+NdgCYIPv4fudC4
 R1E2n8yhznkdm4/zQ8KXyAlqlwdAPHXbGgJlp93JOSFJ4zcp1orqLcmGiOH8Tswv5xVc
 7cd62iV6ZcrORHygCbXBQSkxkBrUzzYSOHSQJpeRWX564vVLHhKyhOq9gWqzcVRpdWVb
 evTg==
X-Gm-Message-State: APjAAAW7dFp6iwF4djwZHuAKGJ67XcqfMOL1z1KVAf95kISVGwtd6mfK
 NvyKVtB/qDV7mGoxQYxJDFDeXFZQCALuHC3K03TrFg==
X-Google-Smtp-Source: APXvYqwtH3P/s7tM7QcMwQMVbo1NjZWx+ts5tZKCE7RJMQnm+m/2T6uwEPMelEHvfm09/suhZ7AiVS9mv1U5GStsocs=
X-Received: by 2002:a5d:6a4b:: with SMTP id t11mr225740wrw.262.1581028548931; 
 Thu, 06 Feb 2020 14:35:48 -0800 (PST)
MIME-Version: 1.0
References: <20200206140352.6300-1-ardb@kernel.org>
 <20200206140352.6300-2-ardb@kernel.org>
 <a6d7fefb-2f02-86a3-66aa-c3c129a91fb1@gmx.de>
In-Reply-To: <a6d7fefb-2f02-86a3-66aa-c3c129a91fb1@gmx.de>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 6 Feb 2020 22:35:37 +0000
Message-ID: <CAKv+Gu9Z24GeqrqKhPJN+aAu8crSKvT0ZBeFL=0ik=z2Sd1FmQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] efi/libstub: add support for loading the initrd from
 a device path
To: Heinrich Schuchardt <xypron.glpk@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_143551_471164_E10631ED 
X-CRM114-Status: GOOD (  41.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Alexander Graf <agraf@csgraf.de>,
 Daniel Kiper <daniel.kiper@oracle.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Matthew Garrett <mjg59@google.com>, Peter Jones <pjones@redhat.com>,
 Leif Lindholm <leif@nuviainc.com>, Laszlo Ersek <lersek@redhat.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 6 Feb 2020 at 18:26, Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:
>
> On 2/6/20 3:03 PM, Ard Biesheuvel wrote:
> > There are currently two ways to specify the initrd to be passed to the
> > Linux kernel when booting via the EFI stub:
> > - it can be passed as a initrd= command line option when doing a pure PE
> >    boot (as opposed to the EFI handover protocol that exists for x86)
> > - otherwise, the bootloader or firmware can load the initrd into memory,
> >    and pass the address and size via the bootparams struct (x86) or
> >    device tree (ARM)
> >
> > In the first case, we are limited to loading from the same file system
> > that the kernel was loaded from, and it is also problematic in a trusted
>
> Hello Ard,
>
> "same file system" is not a limitation of using a command line
> parameter. Any device path can be passed as a string.
>

What do you mean? The current implementation opens the volume via the
loaded_image_info struct, and finds the file based on its filename,
not on a device path. So how can it access files on other file
systems?


> > boot context, given that we cannot easily protect the command line from
> > tampering without either adding complicated white/blacklisting of boot
> > arguments or locking down the command line altogether.
>
> Not relying on the command line for finding the initrd image does not
> secure the integrity and the validity of the initrd image.
>

It does. It ensures that [signed] bootloader code is in charge of
providing the initrd at the point during the boot where the kernel is
ready to consume this data.

> A signature on the initrd image could solve the security problem you
> describe. It would not require non-Linux software to be changed, and
> would provide much better security.
>

A signed initrd would be useful, too, but it doesn't fix the whole problem.

Linux does not support signed initrds today, and this feature permits
a firmware implementation to do something very similar, i.e., it
permits the bootloader to perform the verification as it is passed to
the kernel.


> >
> > In the second case, we force the bootloader to duplicate knowledge about
> > the boot protocol which is already encoded in the stub, and which may be
> > subject to change over time, e.g., bootparams struct definitions, memory
> > allocation/alignment requirements for the placement of the initrd etc etc.
> > In the ARM case, it also requires the bootloader to modify the hardware
> > description provided by the firmware, as it is passed in the same file.
> > On systems where the initrd is measured after loading, it creates a time
> > window where the initrd contents might be manipulated in memory before
> > handing over to the kernel.
> >
> > Address these concerns by adding support for loading the initrd into
> > memory by invoking the EFI LoadFile2 protocol installed on a vendor
> > GUIDed device path that specifically designates a Linux initrd.
> > This addresses the above concerns, by putting the EFI stub in charge of
> > placement in memory and of passing the base and size to the kernel proper
> > (via whatever means it desires) while still leaving it up to the firmware
> > or bootloader to obtain the file contents, potentially from other file
> > systems than the one the kernel itself was loaded from. On platforms that
> > implement measured boot, it permits the firmware to take the measurement
> > right before the kernel actually consumes the contents.
>
> A firmware implementing the UEFI standard will not be aware of any
> initrd image as such an object does not exist in the standard. It was a
> wise decision that the UEFI standard is operating system agnostic
> (accomodating BSD, Linux, Windows, etc.). So the firmware (EDK2, U-Boot,
> etc.) seems to be out of scope for providing a Linux specific
> EFI_LOAD_FILE2_PROTOCOL.
>

You know we are currently patching bootparams struct and DTs to
provide the initrd information, right? And we have code that knows
about low/high memory limits, alignment, etc, that is different per
architecture.

> When booting via GRUB it will be GRUB knowing which initrd to load.
>

Exactly, which is why GRUB will implement this protocol. That way, it
does not have to touch the DT at all, or create a bootparams struct
from setup data and inspect the various flags about placement,
alignment, preferred addresses, etc.

> Please, indicate which software you expect to expose the initrd related
> EFI_LOAD_FILE2_PROTOCOL.
>

The primary use case is GRUB and other intermediate loaders, since it
would remove any need for these components to know any such details.
My aim is to make the next architecture that gets added to GRUB for
EFI boot 100% generic.

> Using an UEFI variable for passing the initrd device path would be a
> leaner solution on the bootloader side than requiring an extra
> EFI_LOAD_FILE2_PROTOCOL implementation.
>

This would also require kernel changes, since we don't currently load
initrds from arbitrary device paths. The EFI_FILE_PROTOCOL is much
more complicated than needed, and it doesn't work well with mixed
mode. It also requires GRUB to expose the filesystem it loads the
initrd from via EFI protocols, which is currently unnecessary and
therefore not implemented.

Also, using an EFI variable defeats the purpose. The whole point of
this is making it more likely that the kernel loaded the initrd that
the bootloader or firmware intended it to load, and having a piece of
simple [signed] code that implements this is the easiest way to
achieve that.

For u-boot, it should be trivial to implement a simple LoadFile2
protocol wrapper around EFI_FILE_PROTOCOL that can be installed on a
handle that also carries EFI_FILE_PROTOCOL.

> >
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > ---
> >   drivers/firmware/efi/libstub/arm-stub.c        | 16 +++--
> >   drivers/firmware/efi/libstub/efi-stub-helper.c | 65 ++++++++++++++++++++
> >   drivers/firmware/efi/libstub/efistub.h         | 12 ++++
> >   drivers/firmware/efi/libstub/x86-stub.c        | 36 ++++++++++-
> >   include/linux/efi.h                            |  1 +
> >   5 files changed, 123 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/firmware/efi/libstub/arm-stub.c b/drivers/firmware/efi/libstub/arm-stub.c
> > index c7b091f50e55..1db943c1ba2b 100644
> > --- a/drivers/firmware/efi/libstub/arm-stub.c
> > +++ b/drivers/firmware/efi/libstub/arm-stub.c
> > @@ -157,6 +157,7 @@ unsigned long efi_entry(void *handle, efi_system_table_t *sys_table_arg,
> >       enum efi_secureboot_mode secure_boot;
> >       struct screen_info *si;
> >       efi_properties_table_t *prop_tbl;
> > +     unsigned long max_addr;
> >
> >       sys_table = sys_table_arg;
> >
> > @@ -255,11 +256,18 @@ unsigned long efi_entry(void *handle, efi_system_table_t *sys_table_arg,
> >       if (!fdt_addr)
> >               pr_efi("Generating empty DTB\n");
> >
> > -     status = efi_load_initrd(image, ULONG_MAX,
> > -                              efi_get_max_initrd_addr(dram_base, *image_addr),
> > -                              &initrd_addr, &initrd_size);
> > +     max_addr = efi_get_max_initrd_addr(dram_base, *image_addr);
> > +     status = efi_load_initrd_devpath(&initrd_addr, &initrd_size, max_addr);
> > +     if (status == EFI_SUCCESS)
> > +             pr_efi("Loaded initrd from LINUX_EFI_INITRD_MEDIA_GUID device path\n");
> > +     else if (status == EFI_NOT_FOUND) {
> > +             status = efi_load_initrd(image, ULONG_MAX, max_addr,
> > +                                      &initrd_addr, &initrd_size);
> > +             if (status == EFI_SUCCESS)
> > +                     pr_efi("Loaded initrd from command line option\n");
> > +     }
> >       if (status != EFI_SUCCESS)
> > -             pr_efi_err("Failed initrd from command line!\n");
> > +             pr_efi_err("Failed to load initrd!\n");
> >
> >       efi_random_get_seed();
> >
> > diff --git a/drivers/firmware/efi/libstub/efi-stub-helper.c b/drivers/firmware/efi/libstub/efi-stub-helper.c
> > index 8e60a39df3c5..eaf45ea749b3 100644
> > --- a/drivers/firmware/efi/libstub/efi-stub-helper.c
> > +++ b/drivers/firmware/efi/libstub/efi-stub-helper.c
> > @@ -323,3 +323,68 @@ void efi_char16_printk(efi_char16_t *str)
> >       efi_call_proto(efi_table_attr(efi_system_table(), con_out),
> >                      output_string, str);
> >   }
> > +
> > +static const struct {
> > +     struct efi_vendor_dev_path      vendor;
> > +     struct efi_generic_dev_path     end;
> > +} __packed initrd_devpath = {
> > +     {
> > +             EFI_DEV_MEDIA,
> > +             EFI_DEV_MEDIA_VENDOR,
> > +             sizeof(struct efi_vendor_dev_path),
> > +             LINUX_EFI_INITRD_MEDIA_GUID
> > +     }, {
> > +             EFI_DEV_END_PATH,
> > +             EFI_DEV_END_ENTIRE,
> > +             sizeof(struct efi_generic_dev_path)
> > +     }
> > +};
> > +
> > +efi_status_t efi_load_initrd_devpath(unsigned long *load_addr,
> > +                                  unsigned long *load_size,
> > +                                  unsigned long max)
> > +{
> > +     efi_guid_t lf2_proto_guid = EFI_LOAD_FILE2_PROTOCOL_GUID;
> > +     efi_device_path_protocol_t *dp;
> > +     efi_load_file2_protocol_t *lf2;
> > +     unsigned long initrd_addr;
> > +     unsigned long initrd_size;
> > +     efi_handle_t handle;
> > +     efi_status_t status;
> > +
> > +     if (!load_addr || !load_size)
> > +             return EFI_INVALID_PARAMETER;
> > +
> > +     dp = (efi_device_path_protocol_t *)&initrd_devpath;
> > +     status = efi_bs_call(locate_device_path, &lf2_proto_guid, &dp, &handle);
> > +     if (status != EFI_SUCCESS)
> > +             return status;
> > +
> > +     status = efi_bs_call(handle_protocol, handle, &lf2_proto_guid,
> > +                          (void **)&lf2);
> > +     if (status != EFI_SUCCESS)
> > +             return status;
>
> You require here that there is a handle exposing the device path
> protocol with the initrd specific device path. On the same handle the
> EFI_LOAD_FILE2_PROTOCOL must be installed which will load the initrd
> file when called with the same device path.
>

Exactly.

> An alternative implementation would simple loop over all instances of
> the EFI_LOAD_FILE2_PROTOCOL and try to load the initrd.
>

How do I distinguish the initrd from other EFI_LOAD_FILE2_PROTOCOL
instances? For instance, PCI option ROMs are also exposed as
EFI_LOAD_FILE2_PROTOCOL.

> It would be worthwhile to describe the requirements on the
> implementation of the EFI_LOAD_FILE2_PROTOCOL in a code comment and in
> the documentation.
>
> Unfortunately the documentation of UEFI has been duplicated into two files:
>
> Documentation/arm/uefi.rst
> Documentation/x86/x86_64/uefi.rst
>

Yes, that is a good point. I will work on factoring out the generic
parts and share them.


Thanks for the review,
Ard.



>
> > +
> > +     initrd_size = 0;
> > +     status = efi_call_proto(lf2, load_file,
> > +                             (efi_device_path_protocol_t *)&initrd_devpath,
> > +                             false, &initrd_size, NULL);
> > +     if (status != EFI_BUFFER_TOO_SMALL)
> > +             return EFI_LOAD_ERROR;
> > +
> > +     status = efi_allocate_pages(initrd_size, &initrd_addr, max);
> > +     if (status != EFI_SUCCESS)
> > +             return status;
> > +
> > +     status = efi_call_proto(lf2, load_file,
> > +                             (efi_device_path_protocol_t *)&initrd_devpath,
> > +                             false, &initrd_size, (void *)initrd_addr);
> > +     if (status != EFI_SUCCESS) {
> > +             efi_free(initrd_size, initrd_addr);
> > +             return status;
> > +     }
> > +
> > +     *load_addr = initrd_addr;
> > +     *load_size = initrd_size;
> > +     return EFI_SUCCESS;
> > +}
> > diff --git a/drivers/firmware/efi/libstub/efistub.h b/drivers/firmware/efi/libstub/efistub.h
> > index 99e93fd76ec5..fbf9f9442eed 100644
> > --- a/drivers/firmware/efi/libstub/efistub.h
> > +++ b/drivers/firmware/efi/libstub/efistub.h
> > @@ -566,6 +566,14 @@ union efi_load_file_protocol {
> >       } mixed_mode;
> >   };
> >
> > +struct efi_vendor_dev_path {
> > +     u8              type;
> > +     u8              sub_type;
> > +     u16             length;
> > +     efi_guid_t      vendorguid;
> > +     u8              vendordata[];
> > +} __packed;
> > +
> >   void efi_pci_disable_bridge_busmaster(void);
> >
> >   typedef efi_status_t (*efi_exit_boot_map_processing)(
> > @@ -651,4 +659,8 @@ efi_status_t efi_load_initrd(efi_loaded_image_t *image,
> >                            unsigned long *load_addr,
> >                            unsigned long *load_size);
> >
> > +efi_status_t efi_load_initrd_devpath(unsigned long *load_addr,
> > +                                  unsigned long *load_size,
> > +                                  unsigned long max);
> > +
> >   #endif
> > diff --git a/drivers/firmware/efi/libstub/x86-stub.c b/drivers/firmware/efi/libstub/x86-stub.c
> > index f3e2ff31b624..7f38f95676dd 100644
> > --- a/drivers/firmware/efi/libstub/x86-stub.c
> > +++ b/drivers/firmware/efi/libstub/x86-stub.c
> > @@ -419,9 +419,20 @@ efi_status_t __efiapi efi_pe_entry(efi_handle_t handle,
> >       if (status != EFI_SUCCESS)
> >               goto fail2;
> >
> > -     status = efi_load_initrd(image, hdr->initrd_addr_max,
> > -                              above4g ? ULONG_MAX : hdr->initrd_addr_max,
> > -                              &ramdisk_addr, &ramdisk_size);
> > +     /*
> > +      * The initrd loaded from the Linux initrd vendor device
> > +      * path should take precedence, as we don't want the
> > +      * [unverified] command line to override the initrd
> > +      * supplied by the [potentially verified] firmware.
> > +      */
> > +     status = efi_load_initrd_devpath(&ramdisk_addr, &ramdisk_size,
> > +                                      above4g ? ULONG_MAX
> > +                                              : hdr->initrd_addr_max);
> > +     if (status == EFI_NOT_FOUND)
> > +             status = efi_load_initrd(image, hdr->initrd_addr_max,
> > +                                      above4g ? ULONG_MAX
> > +                                              : hdr->initrd_addr_max,
> > +                                      &ramdisk_addr, &ramdisk_size);
> >       if (status != EFI_SUCCESS)
> >               goto fail2;
> >       hdr->ramdisk_image = ramdisk_addr & 0xffffffff;
> > @@ -732,6 +743,25 @@ struct boot_params *efi_main(efi_handle_t handle,
> >                        ((u64)boot_params->ext_cmd_line_ptr << 32));
> >       efi_parse_options((char *)cmdline_paddr);
> >
> > +     if (!hdr->ramdisk_size && !boot_params->ext_ramdisk_size) {
> > +             unsigned long max = hdr->initrd_addr_max;
> > +             unsigned long addr, size;
> > +
> > +             if (hdr->xloadflags & XLF_CAN_BE_LOADED_ABOVE_4G)
> > +                     max = ULONG_MAX;
> > +
> > +             status = efi_load_initrd_devpath(&addr, &size, max);
> > +             if (status == EFI_SUCCESS) {
> > +                     hdr->ramdisk_image              = (u32)addr;
> > +                     hdr->ramdisk_size               = (u32)size;
> > +                     boot_params->ext_ramdisk_image  = (u64)addr >> 32;
> > +                     boot_params->ext_ramdisk_size   = (u64)size >> 32;
> > +             } else if (status != EFI_NOT_FOUND) {
> > +                     efi_printk("efi_load_initrd_devpath() failed!\n");
> > +                     goto fail;
> > +             }
> > +     }
> > +
> >       /*
> >        * If the boot loader gave us a value for secure_boot then we use that,
> >        * otherwise we ask the BIOS.
> > diff --git a/include/linux/efi.h b/include/linux/efi.h
> > index 9ccf313fe9de..75c83c322c40 100644
> > --- a/include/linux/efi.h
> > +++ b/include/linux/efi.h
> > @@ -353,6 +353,7 @@ void efi_native_runtime_setup(void);
> >   #define LINUX_EFI_TPM_EVENT_LOG_GUID                EFI_GUID(0xb7799cb0, 0xeca2, 0x4943,  0x96, 0x67, 0x1f, 0xae, 0x07, 0xb7, 0x47, 0xfa)
> >   #define LINUX_EFI_TPM_FINAL_LOG_GUID                EFI_GUID(0x1e2ed096, 0x30e2, 0x4254,  0xbd, 0x89, 0x86, 0x3b, 0xbe, 0xf8, 0x23, 0x25)
> >   #define LINUX_EFI_MEMRESERVE_TABLE_GUID             EFI_GUID(0x888eb0c6, 0x8ede, 0x4ff5,  0xa8, 0xf0, 0x9a, 0xee, 0x5c, 0xb9, 0x77, 0xc2)
> > +#define LINUX_EFI_INITRD_MEDIA_GUID          EFI_GUID(0x5568e427, 0x68fc, 0x4f3d,  0xac, 0x74, 0xca, 0x55, 0x52, 0x31, 0xcc, 0x68)
> >
> >   /* OEM GUIDs */
> >   #define DELLEMC_EFI_RCI2_TABLE_GUID         EFI_GUID(0x2d9f28a2, 0xa886, 0x456a,  0x97, 0xa8, 0xf1, 0x1e, 0xf2, 0x4f, 0xf4, 0x55)
> >
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
