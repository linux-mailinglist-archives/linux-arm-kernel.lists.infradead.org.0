Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 992CB1557DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 13:37:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XuUsUMz+1YvZ30887eNTcT8ek8tY5j4nAzAm+7mnjUs=; b=jxVaA4DAPrWUqF
	s6ZcKFI5rtBB6SXOoqKntya7Xr2f1DWBLByJ8xZyJGiZz4vnNhJ225AQO5DZ39AgyP+DxS71uMeqw
	SamcfCPEAuuM+8jBs7XSb5PDPpT4pcu11Mzjm8Oy3yuTyTMwzqFNplGTcC92L47LXc9WqAFG7Yk20
	Hg/8DAT3jP0HU6DvfkXnPUF8/Gdx9eUjHi5embaDMGKcacRRDHXYCx7uinsMSlYSgi8cz422ksoxT
	ftMzIj37LfQrAlcq2mQM6vjihJXL0YaKkiLoyiP3E3BdSFAhOJLiNIWDZENoEqxUiru/Aif4nMzmF
	fQKDfLJuLW6XLTKHPLBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j02sk-0001AW-Jq; Fri, 07 Feb 2020 12:37:14 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j02sb-00019m-Pw
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 12:37:07 +0000
Received: by mail-wr1-x444.google.com with SMTP id u6so2535068wrt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 04:37:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vkVYI+CMZ47aunrYcixncDMI2WV0XZu11LSOldQ9xCo=;
 b=pTMHIU+8VlOwUDMffz25O5QHdyJuLoYX1LgAJJz7GTGg3zcKj32XBFikkZs+87JHsN
 CT4N5NQAQzYlWnrPja7xCs9xK1sNKZH7x7JJvBjoCAWRmA3UJd9ncKXJdy4tles4Uv2L
 HMhTjV352MO6HDkjMeGzUD+wF6960UK+RAG2bRqmRxJcGqK9lnSPD9WqBZBbDPYaJ70C
 fjqcqDqa39zdEHoWhM3dzEP3sB1FZdZOO6XhTWJ9nCLlaSTV0xeXP4f3hEYAfKkqtha1
 vAzeEvWw87jnyZ50i0b6MCdGYRngeQ/2dyAM6HsrOGR6UoIrxMb6LCZeKBU5KLmzTHBi
 /5ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vkVYI+CMZ47aunrYcixncDMI2WV0XZu11LSOldQ9xCo=;
 b=aY6EJnc6fnxnGHtE3P1NkCsZfKgGIIac2YGl1cbGK5XIWjNY6594iWl0+pAohNxyI8
 W/HNz++ZwpLe7xspUhfmtiKi0Y3oLXM+VIi1rDVglpx1z9Jo9uRR++WAvXNiz9QW1DM7
 0W/jzbGBnlJqlMQ34KuQWM6Qbh66pQAFzioZ017M9PSI80BMWdDNEhKiUopmz3Ajr7B8
 rOLHnxtPPDIUxNl+VhRQIF4DrGmdDQJT3Q3Rmlta3VvEbFT4vNH3vwgWWdv9PaOVjHc0
 oXiIVQYseldP8o1mVROQlBrMpScy9EV/IT3awvc82kPmpcb/cQSb5+PqA5J1lKeD8h7t
 E+5g==
X-Gm-Message-State: APjAAAXM9owKwKAtaI9hi4O3/YrLa9gtuYHOrxd3YUsXOgQ2/MOWBVZs
 cZLozl9uTxXgJvAyOLY4lyuuG5DeV7VZk1EFWD9Z2w==
X-Google-Smtp-Source: APXvYqz1dxbqKwf2K1LabMt3fHiPgtRqKkO7RG0VG3AZBLJHYLwZu9RoAWwixkwviZkFtJKfa8JvEX48F9Il1s/DrS0=
X-Received: by 2002:a5d:65cf:: with SMTP id e15mr4490843wrw.126.1581079023837; 
 Fri, 07 Feb 2020 04:37:03 -0800 (PST)
MIME-Version: 1.0
References: <20200206140352.6300-1-ardb@kernel.org>
 <20200206140352.6300-2-ardb@kernel.org>
 <43362e18-eddc-9903-0e63-9d3eebe70313@redhat.com>
In-Reply-To: <43362e18-eddc-9903-0e63-9d3eebe70313@redhat.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 7 Feb 2020 12:36:52 +0000
Message-ID: <CAKv+Gu89o4oJEJvJMuE68HM5NDgokQ0W-D7YQB6xOX2EbhYYBw@mail.gmail.com>
Subject: Re: [PATCH 1/2] efi/libstub: add support for loading the initrd from
 a device path
To: Laszlo Ersek <lersek@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_043705_853767_07263B9D 
X-CRM114-Status: GOOD (  40.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Daniel Kiper <daniel.kiper@oracle.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Matthew Garrett <mjg59@google.com>, Peter Jones <pjones@redhat.com>,
 Leif Lindholm <leif@nuviainc.com>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 7 Feb 2020 at 09:48, Laszlo Ersek <lersek@redhat.com> wrote:
>
> On 02/06/20 15:03, Ard Biesheuvel wrote:
> > There are currently two ways to specify the initrd to be passed to the
> > Linux kernel when booting via the EFI stub:
> > - it can be passed as a initrd= command line option when doing a pure PE
> >   boot (as opposed to the EFI handover protocol that exists for x86)
> > - otherwise, the bootloader or firmware can load the initrd into memory,
> >   and pass the address and size via the bootparams struct (x86) or
> >   device tree (ARM)
> >
> > In the first case, we are limited to loading from the same file system
> > that the kernel was loaded from, and it is also problematic in a trusted
> > boot context, given that we cannot easily protect the command line from
> > tampering without either adding complicated white/blacklisting of boot
> > arguments or locking down the command line altogether.
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
> >
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > ---
> >  drivers/firmware/efi/libstub/arm-stub.c        | 16 +++--
> >  drivers/firmware/efi/libstub/efi-stub-helper.c | 65 ++++++++++++++++++++
> >  drivers/firmware/efi/libstub/efistub.h         | 12 ++++
> >  drivers/firmware/efi/libstub/x86-stub.c        | 36 ++++++++++-
> >  include/linux/efi.h                            |  1 +
> >  5 files changed, 123 insertions(+), 7 deletions(-)
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
>
> - So this seems to be fallback#1, for ARM, which looks good.
>
> - Are you sure you only want to fall back to the old method on
> EFI_NOT_FOUND? Wouldn't other return values from
> efi_load_initrd_devpath() justify that too?
>
> ... After checking the boot services called in
> efi_load_initrd_devpath(), this idea seems reasonable, but then I'd
> suggest documenting the significance of returning EFI_NOT_FOUND near the
> efi_load_initrd_devpath() function declaration, in "efistub.h".
>

Good point.

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
> >  }
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
> > +
> > +     initrd_size = 0;
> > +     status = efi_call_proto(lf2, load_file,
> > +                             (efi_device_path_protocol_t *)&initrd_devpath,
> > +                             false, &initrd_size, NULL);
>
> The second argument to EFI_LOAD_FILE2_PROTOCOL.LoadFile() is "FilePath",
> specified as "The device specific path of the file to load". This means
> it is supposed to be a (possibly empty) sequence of FILEPATH_DEVICE_PATH
> nodes, terminated by and "End Entire Device Path" node. See
>
> - 10.3.1 Generic Device Path Structures
> - 10.3.5.4 File Path Media Device Path
>
> in UEFI-2.8.
>
> And "initrd_devpath" is not a device path like that; instead it's the
> VenMedia device path that's installed on the handle that also carries
> our LoadFile2 instance.
>

OK, so you are saying this could be used to disambiguate which of
several files you may want to load from the initrd GUIDed device path?

> Now, I do see that this all theoretical here, as we don't expect the
> LoadFile2 instance that we've found via our special
> LINUX_EFI_INITRD_MEDIA_GUID VenMedia devpath to do *any* device-specific
> filename / pathname parsing.
>
> But in that case (i.e., given that the FilePath argument is totally
> irrelevant), I think it's much clearer if we simply pass an empty device
> path -- one that consists of a single "End Entire Device Path" node.
>
> I've checked, and your ArmVirtQemu patch ignores the FilePath argument
> too -- justifiedly so. I just think it's better to pass in a well-formed
> device path, rather than NULL. Because, the FilePath parameter is not
> marked OPTIONAL in the spec.
>

One thing that occurred to me is that we have to decide whether we
want to support the '10.3.5.8 Relative Offset Range' device path node
for this file, so that you could potentially load subranges of the
file. I don't see a use case for it right now, though.

But for my understanding, would the FilePath passed to LoadFile2 be
'Offset(...)+EndEntire' in that case? Or should it include the GUID
device path node as well?

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
>
> Same here.
>
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
> >  };
> >
> > +struct efi_vendor_dev_path {
> > +     u8              type;
> > +     u8              sub_type;
> > +     u16             length;
> > +     efi_guid_t      vendorguid;
> > +     u8              vendordata[];
> > +} __packed;
> > +
> >  void efi_pci_disable_bridge_busmaster(void);
> >
> >  typedef efi_status_t (*efi_exit_boot_map_processing)(
> > @@ -651,4 +659,8 @@ efi_status_t efi_load_initrd(efi_loaded_image_t *image,
> >                            unsigned long *load_addr,
> >                            unsigned long *load_size);
> >
> > +efi_status_t efi_load_initrd_devpath(unsigned long *load_addr,
> > +                                  unsigned long *load_size,
> > +                                  unsigned long max);
> > +
> >  #endif
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
>
> Fallback#2, for x86, also looks good.
>
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
>
> No fallback here; this is not a replacement for efi_load_initrd(), but a
> brand new call. Why? (It's probably justified, I just don't know enough
> about the kernel.)
>

Yes, it is. efi_main() is called after efi_pe_entry() in the native PE
boot case, and it is the only one being called when using the EFI
handover protocol.

So the expected new flow would be for efi_pe_entry() to run first and
load the initrd, in which case this code would not run. However, it
would be better to still support the EFI handover protocol when using
this method of loading the initrd, not only for convenience, but also
because we cannot call efi_pe_entry() when running in mixed mode.

Interestingly, LoadImage() can be used to load 64-bit images on 32-bit
EDK2 firmware today (and I have to check whether that holds for mixed
mode Mac hardware as well), only StartImage() will fail. It all
depends on whether we still care about mixed mode in the secure boot
context going forward, but if we do, we may be able to use LoadImage()
but then jump to this entry point (via startup_32 in head_32.S)

So the bottom line is that we have to keep this entry point alive for
the time being, but there is no reason to add initrd loading to it
using the old method, since we can't support it very well in mixed
mode (due to the prototypes of the protocols) and we don't support
that now anyway.

> >       /*
> >        * If the boot loader gave us a value for secure_boot then we use that,
> >        * otherwise we ask the BIOS.
> > diff --git a/include/linux/efi.h b/include/linux/efi.h
> > index 9ccf313fe9de..75c83c322c40 100644
> > --- a/include/linux/efi.h
> > +++ b/include/linux/efi.h
> > @@ -353,6 +353,7 @@ void efi_native_runtime_setup(void);
> >  #define LINUX_EFI_TPM_EVENT_LOG_GUID         EFI_GUID(0xb7799cb0, 0xeca2, 0x4943,  0x96, 0x67, 0x1f, 0xae, 0x07, 0xb7, 0x47, 0xfa)
> >  #define LINUX_EFI_TPM_FINAL_LOG_GUID         EFI_GUID(0x1e2ed096, 0x30e2, 0x4254,  0xbd, 0x89, 0x86, 0x3b, 0xbe, 0xf8, 0x23, 0x25)
> >  #define LINUX_EFI_MEMRESERVE_TABLE_GUID              EFI_GUID(0x888eb0c6, 0x8ede, 0x4ff5,  0xa8, 0xf0, 0x9a, 0xee, 0x5c, 0xb9, 0x77, 0xc2)
> > +#define LINUX_EFI_INITRD_MEDIA_GUID          EFI_GUID(0x5568e427, 0x68fc, 0x4f3d,  0xac, 0x74, 0xca, 0x55, 0x52, 0x31, 0xcc, 0x68)
> >
> >  /* OEM GUIDs */
> >  #define DELLEMC_EFI_RCI2_TABLE_GUID          EFI_GUID(0x2d9f28a2, 0xa886, 0x456a,  0x97, 0xa8, 0xf1, 0x1e, 0xf2, 0x4f, 0xf4, 0x55)
> >
>
> Thanks,
> Laszlo
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
