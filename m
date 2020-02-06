Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7EF154B66
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 19:46:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KnfdGHb6n087mTACHBoFpnP2kEu/Frp9S/tHQvkGsTQ=; b=YWZWCnYWnaaRuE
	pHwsrE0MpXNUKFEepNoSxq8xuA8NAtqURPMQ8/fL33PAW6cRPc+v/S+SsX2sU+rszU5RDetJFDnku
	3U+dPR4Pjgd57c0pL8lwV71vsAAjpgTCM++eo0AHfXJJEiDMapPcAdc/jKljfraCmzV3CU471hsxB
	YBGP7+8nzYXz30A4PzmzaUhcXTYi9HGT2pzo4YgFUv6F9c/U6ftqpaPxASXOzjfMTNeeH8v495POw
	rs96sDjEgda9gQiBHBcggmwPLb1JpR2zku9C7MKZ8jKmibnhREV6uUz7a6lpdhmSYwC1AsAeVaWPJ
	OhwI96NQk+g9GHVE1X3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izmAQ-0006DH-US; Thu, 06 Feb 2020 18:46:23 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izmAI-0006Cd-JG
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 18:46:16 +0000
Received: by mail-wr1-x442.google.com with SMTP id k11so8435222wrd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 10:46:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=1mEya61wIf91YzVHpK+jrTD0O5w6Z7D9jk8+BwlEYcs=;
 b=r3yq5qF5xNa/UtYaFlEeSUpNG8HpXQiZWkzasx+yOGi5Z7PlSaE1h4aHxdJthId10y
 baYA4u14mh+yPQDx9bzJdPYNBt6mj5nY5ePe0Je27rfxZApbUv8s+aojcNxwmhq0eOoL
 zHLh7p2I5KNCZKED3m/DduN9OGSjCbpwXdXfg48sa+4o8gicaYMX/1T5lZFtv0xcEkSk
 6imPJNUT/o28r6eFFFjlFrM/QcOFmFY4qWW0fqZsALoGIFuYla54/VtMG9u04KTcQ3SH
 vZSOYc+T9vg1IhskEFispRh8zrGMoO+OkApZKb7PtMYXPzBf/44A1yfudECUkt19XS/1
 15Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1mEya61wIf91YzVHpK+jrTD0O5w6Z7D9jk8+BwlEYcs=;
 b=BtJvMj62x5ZVfHd5q74kzDZyWCy58ObKEv69kQnWm3SUDAH1XS96e9Hqn+roWNvyPB
 pXCECNf1wbEyvPjl7HokRogiWmJPYOy5PVrOM5DKLyPUH3qLQkGfb1cZUhdK2tqj6lw5
 6JrJOrS2JaWcBuge08uqFiEW+c0OxGW6veYxH4CtoAIx2O5D3e7wwB9k2ejc5cbd+8Jz
 V7VA64yKKfGcwPVOLVPPJ/wpQnRSwD9COxp2FcdQe3y5uFc3jf1i6MwmY5/4iwcCpNX/
 R7FvlNsJ2TegUxRluz5TiaRX+D0Eb6HFGuwUcv6jOxg8ZnkNTUf3gDT2QGM8tTXYSCe6
 YvdQ==
X-Gm-Message-State: APjAAAV7QK8uo5gTffVRkzhZ9r1wwMDWhLoG5r5Hrs9lsqt7Jz0bfnAk
 Fw7dUugKPQHAxM1cLGR72cZu8w==
X-Google-Smtp-Source: APXvYqylRT/QXWfVI2Aa8S0DfC5a3gPPi2ROwYO8vEMJu92HaIBwRPgy217JO13I+R1NoAH8f4q0ew==
X-Received: by 2002:adf:f288:: with SMTP id k8mr5484651wro.301.1581014772193; 
 Thu, 06 Feb 2020 10:46:12 -0800 (PST)
Received: from apalos.home (ppp-94-66-201-28.home.otenet.gr. [94.66.201.28])
 by smtp.gmail.com with ESMTPSA id k13sm194259wrx.59.2020.02.06.10.46.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 10:46:11 -0800 (PST)
Date: Thu, 6 Feb 2020 20:46:08 +0200
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
To: Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: Re: [PATCH 1/2] efi/libstub: add support for loading the initrd from
 a device path
Message-ID: <20200206184608.GA749195@apalos.home>
References: <20200206140352.6300-1-ardb@kernel.org>
 <20200206140352.6300-2-ardb@kernel.org>
 <a6d7fefb-2f02-86a3-66aa-c3c129a91fb1@gmx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a6d7fefb-2f02-86a3-66aa-c3c129a91fb1@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_104614_699351_97CE02CD 
X-CRM114-Status: GOOD (  40.30  )
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
Cc: linux-efi@vger.kernel.org, agraf@csgraf.de, daniel.kiper@oracle.com,
 mjg59@google.com, pjones@redhat.com, leif@nuviainc.com, lersek@redhat.com,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Heinrich,

I actually like the approach.

On Thu, Feb 06, 2020 at 07:26:20PM +0100, Heinrich Schuchardt wrote:
[...] 
> > boot context, given that we cannot easily protect the command line from
> > tampering without either adding complicated white/blacklisting of boot
> > arguments or locking down the command line altogether.
> 
> Not relying on the command line for finding the initrd image does not
> secure the integrity and the validity of the initrd image.

This patch isn't supposed to protect you against a bogus initrd and I don't
think it should be the bootloaders job to verify that. The kernel already has
tools to do that. 

> 
> A signature on the initrd image could solve the security problem you
> describe. It would not require non-Linux software to be changed, and
> would provide much better security.
> 

The problem with parsing the kernel command line is that at the moment,
different options are supported by different architectures. A quick grep for 
CONFIG_CMDLINE_(FORCE/OVERWRITE/EXTEND/FROM_BOOTLOADER) will give you an idea.

What you can do in U-Boot currently is not have an environment in any of the
flashes and set the bootdelay to 0, in order to prevent the user from 
changing that command line.

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
> When booting via GRUB it will be GRUB knowing which initrd to load.

What about booting the kernel directly?

> 
> Please, indicate which software you expect to expose the initrd related
> EFI_LOAD_FILE2_PROTOCOL.

I have an implementation for this on U-Boot which works. The file and device are
hardcoded at the moment, but the rest of the functionality works fine. I'll
share it with you once I clean it up a bit. 

> 
> Using an UEFI variable for passing the initrd device path would be a
> leaner solution on the bootloader side than requiring an extra
> EFI_LOAD_FILE2_PROTOCOL implementation.
> 

Thanks
/Ilias

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
> >   	enum efi_secureboot_mode secure_boot;
> >   	struct screen_info *si;
> >   	efi_properties_table_t *prop_tbl;
> > +	unsigned long max_addr;
> > 
> >   	sys_table = sys_table_arg;
> > 
> > @@ -255,11 +256,18 @@ unsigned long efi_entry(void *handle, efi_system_table_t *sys_table_arg,
> >   	if (!fdt_addr)
> >   		pr_efi("Generating empty DTB\n");
> > 
> > -	status = efi_load_initrd(image, ULONG_MAX,
> > -				 efi_get_max_initrd_addr(dram_base, *image_addr),
> > -				 &initrd_addr, &initrd_size);
> > +	max_addr = efi_get_max_initrd_addr(dram_base, *image_addr);
> > +	status = efi_load_initrd_devpath(&initrd_addr, &initrd_size, max_addr);
> > +	if (status == EFI_SUCCESS)
> > +		pr_efi("Loaded initrd from LINUX_EFI_INITRD_MEDIA_GUID device path\n");
> > +	else if (status == EFI_NOT_FOUND) {
> > +		status = efi_load_initrd(image, ULONG_MAX, max_addr,
> > +					 &initrd_addr, &initrd_size);
> > +		if (status == EFI_SUCCESS)
> > +			pr_efi("Loaded initrd from command line option\n");
> > +	}
> >   	if (status != EFI_SUCCESS)
> > -		pr_efi_err("Failed initrd from command line!\n");
> > +		pr_efi_err("Failed to load initrd!\n");
> > 
> >   	efi_random_get_seed();
> > 
> > diff --git a/drivers/firmware/efi/libstub/efi-stub-helper.c b/drivers/firmware/efi/libstub/efi-stub-helper.c
> > index 8e60a39df3c5..eaf45ea749b3 100644
> > --- a/drivers/firmware/efi/libstub/efi-stub-helper.c
> > +++ b/drivers/firmware/efi/libstub/efi-stub-helper.c
> > @@ -323,3 +323,68 @@ void efi_char16_printk(efi_char16_t *str)
> >   	efi_call_proto(efi_table_attr(efi_system_table(), con_out),
> >   		       output_string, str);
> >   }
> > +
> > +static const struct {
> > +	struct efi_vendor_dev_path	vendor;
> > +	struct efi_generic_dev_path	end;
> > +} __packed initrd_devpath = {
> > +	{
> > +		EFI_DEV_MEDIA,
> > +		EFI_DEV_MEDIA_VENDOR,
> > +		sizeof(struct efi_vendor_dev_path),
> > +		LINUX_EFI_INITRD_MEDIA_GUID
> > +	}, {
> > +		EFI_DEV_END_PATH,
> > +		EFI_DEV_END_ENTIRE,
> > +		sizeof(struct efi_generic_dev_path)
> > +	}
> > +};
> > +
> > +efi_status_t efi_load_initrd_devpath(unsigned long *load_addr,
> > +				     unsigned long *load_size,
> > +				     unsigned long max)
> > +{
> > +	efi_guid_t lf2_proto_guid = EFI_LOAD_FILE2_PROTOCOL_GUID;
> > +	efi_device_path_protocol_t *dp;
> > +	efi_load_file2_protocol_t *lf2;
> > +	unsigned long initrd_addr;
> > +	unsigned long initrd_size;
> > +	efi_handle_t handle;
> > +	efi_status_t status;
> > +
> > +	if (!load_addr || !load_size)
> > +		return EFI_INVALID_PARAMETER;
> > +
> > +	dp = (efi_device_path_protocol_t *)&initrd_devpath;
> > +	status = efi_bs_call(locate_device_path, &lf2_proto_guid, &dp, &handle);
> > +	if (status != EFI_SUCCESS)
> > +		return status;
> > +
> > +	status = efi_bs_call(handle_protocol, handle, &lf2_proto_guid,
> > +			     (void **)&lf2);
> > +	if (status != EFI_SUCCESS)
> > +		return status;
> 
> You require here that there is a handle exposing the device path
> protocol with the initrd specific device path. On the same handle the
> EFI_LOAD_FILE2_PROTOCOL must be installed which will load the initrd
> file when called with the same device path.
> 
> An alternative implementation would simple loop over all instances of
> the EFI_LOAD_FILE2_PROTOCOL and try to load the initrd.
> 
> It would be worthwhile to describe the requirements on the
> implementation of the EFI_LOAD_FILE2_PROTOCOL in a code comment and in
> the documentation.
> 
> Unfortunately the documentation of UEFI has been duplicated into two files:
> 
> Documentation/arm/uefi.rst
> Documentation/x86/x86_64/uefi.rst
> 
> Best regards
> 
> Heinrich
> 
> > +
> > +	initrd_size = 0;
> > +	status = efi_call_proto(lf2, load_file,
> > +				(efi_device_path_protocol_t *)&initrd_devpath,
> > +				false, &initrd_size, NULL);
> > +	if (status != EFI_BUFFER_TOO_SMALL)
> > +		return EFI_LOAD_ERROR;
> > +
> > +	status = efi_allocate_pages(initrd_size, &initrd_addr, max);
> > +	if (status != EFI_SUCCESS)
> > +		return status;
> > +
> > +	status = efi_call_proto(lf2, load_file,
> > +				(efi_device_path_protocol_t *)&initrd_devpath,
> > +				false, &initrd_size, (void *)initrd_addr);
> > +	if (status != EFI_SUCCESS) {
> > +		efi_free(initrd_size, initrd_addr);
> > +		return status;
> > +	}
> > +
> > +	*load_addr = initrd_addr;
> > +	*load_size = initrd_size;
> > +	return EFI_SUCCESS;
> > +}
> > diff --git a/drivers/firmware/efi/libstub/efistub.h b/drivers/firmware/efi/libstub/efistub.h
> > index 99e93fd76ec5..fbf9f9442eed 100644
> > --- a/drivers/firmware/efi/libstub/efistub.h
> > +++ b/drivers/firmware/efi/libstub/efistub.h
> > @@ -566,6 +566,14 @@ union efi_load_file_protocol {
> >   	} mixed_mode;
> >   };
> > 
> > +struct efi_vendor_dev_path {
> > +	u8		type;
> > +	u8		sub_type;
> > +	u16		length;
> > +	efi_guid_t	vendorguid;
> > +	u8		vendordata[];
> > +} __packed;
> > +
> >   void efi_pci_disable_bridge_busmaster(void);
> > 
> >   typedef efi_status_t (*efi_exit_boot_map_processing)(
> > @@ -651,4 +659,8 @@ efi_status_t efi_load_initrd(efi_loaded_image_t *image,
> >   			     unsigned long *load_addr,
> >   			     unsigned long *load_size);
> > 
> > +efi_status_t efi_load_initrd_devpath(unsigned long *load_addr,
> > +				     unsigned long *load_size,
> > +				     unsigned long max);
> > +
> >   #endif
> > diff --git a/drivers/firmware/efi/libstub/x86-stub.c b/drivers/firmware/efi/libstub/x86-stub.c
> > index f3e2ff31b624..7f38f95676dd 100644
> > --- a/drivers/firmware/efi/libstub/x86-stub.c
> > +++ b/drivers/firmware/efi/libstub/x86-stub.c
> > @@ -419,9 +419,20 @@ efi_status_t __efiapi efi_pe_entry(efi_handle_t handle,
> >   	if (status != EFI_SUCCESS)
> >   		goto fail2;
> > 
> > -	status = efi_load_initrd(image, hdr->initrd_addr_max,
> > -				 above4g ? ULONG_MAX : hdr->initrd_addr_max,
> > -				 &ramdisk_addr, &ramdisk_size);
> > +	/*
> > +	 * The initrd loaded from the Linux initrd vendor device
> > +	 * path should take precedence, as we don't want the
> > +	 * [unverified] command line to override the initrd
> > +	 * supplied by the [potentially verified] firmware.
> > +	 */
> > +	status = efi_load_initrd_devpath(&ramdisk_addr, &ramdisk_size,
> > +					 above4g ? ULONG_MAX
> > +						 : hdr->initrd_addr_max);
> > +	if (status == EFI_NOT_FOUND)
> > +		status = efi_load_initrd(image, hdr->initrd_addr_max,
> > +					 above4g ? ULONG_MAX
> > +						 : hdr->initrd_addr_max,
> > +					 &ramdisk_addr, &ramdisk_size);
> >   	if (status != EFI_SUCCESS)
> >   		goto fail2;
> >   	hdr->ramdisk_image = ramdisk_addr & 0xffffffff;
> > @@ -732,6 +743,25 @@ struct boot_params *efi_main(efi_handle_t handle,
> >   			 ((u64)boot_params->ext_cmd_line_ptr << 32));
> >   	efi_parse_options((char *)cmdline_paddr);
> > 
> > +	if (!hdr->ramdisk_size && !boot_params->ext_ramdisk_size) {
> > +		unsigned long max = hdr->initrd_addr_max;
> > +		unsigned long addr, size;
> > +
> > +		if (hdr->xloadflags & XLF_CAN_BE_LOADED_ABOVE_4G)
> > +			max = ULONG_MAX;
> > +
> > +		status = efi_load_initrd_devpath(&addr, &size, max);
> > +		if (status == EFI_SUCCESS) {
> > +			hdr->ramdisk_image		= (u32)addr;
> > +			hdr->ramdisk_size 		= (u32)size;
> > +			boot_params->ext_ramdisk_image	= (u64)addr >> 32;
> > +			boot_params->ext_ramdisk_size 	= (u64)size >> 32;
> > +		} else if (status != EFI_NOT_FOUND) {
> > +			efi_printk("efi_load_initrd_devpath() failed!\n");
> > +			goto fail;
> > +		}
> > +	}
> > +
> >   	/*
> >   	 * If the boot loader gave us a value for secure_boot then we use that,
> >   	 * otherwise we ask the BIOS.
> > diff --git a/include/linux/efi.h b/include/linux/efi.h
> > index 9ccf313fe9de..75c83c322c40 100644
> > --- a/include/linux/efi.h
> > +++ b/include/linux/efi.h
> > @@ -353,6 +353,7 @@ void efi_native_runtime_setup(void);
> >   #define LINUX_EFI_TPM_EVENT_LOG_GUID		EFI_GUID(0xb7799cb0, 0xeca2, 0x4943,  0x96, 0x67, 0x1f, 0xae, 0x07, 0xb7, 0x47, 0xfa)
> >   #define LINUX_EFI_TPM_FINAL_LOG_GUID		EFI_GUID(0x1e2ed096, 0x30e2, 0x4254,  0xbd, 0x89, 0x86, 0x3b, 0xbe, 0xf8, 0x23, 0x25)
> >   #define LINUX_EFI_MEMRESERVE_TABLE_GUID		EFI_GUID(0x888eb0c6, 0x8ede, 0x4ff5,  0xa8, 0xf0, 0x9a, 0xee, 0x5c, 0xb9, 0x77, 0xc2)
> > +#define LINUX_EFI_INITRD_MEDIA_GUID		EFI_GUID(0x5568e427, 0x68fc, 0x4f3d,  0xac, 0x74, 0xca, 0x55, 0x52, 0x31, 0xcc, 0x68)
> > 
> >   /* OEM GUIDs */
> >   #define DELLEMC_EFI_RCI2_TABLE_GUID		EFI_GUID(0x2d9f28a2, 0xa886, 0x456a,  0x97, 0xa8, 0xf1, 0x1e, 0xf2, 0x4f, 0xf4, 0x55)
> > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
