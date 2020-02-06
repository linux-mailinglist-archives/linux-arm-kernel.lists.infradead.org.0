Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D894154B0E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 19:26:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kE6iLBUa+g06rU7fliBJzpr+Hvrp2HfikDDe7+VJnDs=; b=XNHh4xlK7Y5JF3aCqkkpRDcfS
	+7x07z6B/vJRG+yCSUfHF9M67EXWY7TAdDK4jYuIBN1DrFVYdUuodiMvN8vNGerCxKsc1WPYLyRwc
	jOOogwi6fPdGFGcQFE6he+zOBTwdBMGm3Dx6iL5WJhRGEkAArs/dVJDV7qdswfB4cN+FpzxuMLm6i
	JasCb9A4gdNN61fUVgY1pg6rQz6IDD0ni1bEwhpqHGX9F+XMOhV/b6MQT2f6t14aTFYybCHSRNWF1
	y1DGY4shxiwAtWQpgPwviNz2coaqrU0DC0vpNV9OWYDYqETbTdkflw5DPr3L1wCuVjsygOfj/ylkw
	nTBjPpwWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izlrd-0007Lh-I0; Thu, 06 Feb 2020 18:26:57 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izlrQ-0007BZ-JF
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 18:26:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1581013588;
 bh=Ta1QomT/txmlp5GVU01YHJ2qM6TcI7/tXLKPl4SBlV0=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=QjJsFqtyRX1BuJarKjeennyW4oMf9HtrgZsaXRtrmOVtf0vUkIiwdsrBqN2tieMki
 +hU2xpxgXlM5Ww9qgHSqm1OEsHv+YOcRm78ygcO3JOFzdx4pzz509FnBmtVuEcQ+ML
 xJtJr4hxhApBZDfrzMXGAv1Hj4m7ffcp2QkKHgr0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.123.51] ([84.119.33.160]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MIwz4-1jFdkc0dNS-00KRjj; Thu, 06
 Feb 2020 19:26:28 +0100
Subject: Re: [PATCH 1/2] efi/libstub: add support for loading the initrd from
 a device path
To: Ard Biesheuvel <ardb@kernel.org>, linux-efi@vger.kernel.org
References: <20200206140352.6300-1-ardb@kernel.org>
 <20200206140352.6300-2-ardb@kernel.org>
From: Heinrich Schuchardt <xypron.glpk@gmx.de>
Message-ID: <a6d7fefb-2f02-86a3-66aa-c3c129a91fb1@gmx.de>
Date: Thu, 6 Feb 2020 19:26:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200206140352.6300-2-ardb@kernel.org>
Content-Language: en-US
X-Provags-ID: V03:K1:QvqlXfwyyAQeMahyRRpeoGcvcYl1rzmUlVcUokHk97STiit08W9
 TG4MA6NdfvByIiDyhdyr4ucMqrmEb0UeSVIC3aEGM4pz5JtxlpEkotOlUNC9emtcIE2m7aR
 nRemFAWqJ9IR+TW/UUEiKC8YG2YLtCeyluSrsAXctSJIskJfT/5IBp5a60m32lrWt6sNDUp
 wt+Fy8v/ujjBABMCyxGUQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GQHWZ3neRsY=:ak+pLUbcHn3XVaF4OSMWTw
 YuHFxGPhZgBWjqAMJ19bJ6PX4J83u9Of4U5V7L0sKIHD/JKvPgQ3ok49qcXvjQ+6NB5nHijST
 tQkPXXIw09tCIUVpiqXveYdjHZBqJrFHjCIfpT0ua7g5wqF11Oba8qDVBme3d4cZrvGrXpqXA
 LxZ63FaYhy7SoDWgxLjaL5deA+6x5iY8VZ9FBEl/RfGRGPB2yKqc2w8mh5XUkS8ZXllxXzHGx
 LSlypKn6NyCFqx7p6N0RP80JyNunmmoPTYSJxZJ/DF+31cLPL3ao67Qg3rUchYSyegKaUI+Za
 Tw0TQE7CktAuvu8ZqjPWaMvM/H55d4a95sj10/6D7Azo1JvrYhtuGpYyKUcd1472myFDqG+zu
 4FQxmw8KRLKVrg/gXWhkvt+kERuTH4P5pNox45EwfSyKHi8ityErma0WJpmAnO+ABLMKnEawx
 wL5jxxzunEmJxAAdv1TT1eXS7x0lO4uGrraeAGZIsdqJkfc3a6REQ11sFPd6gnIbYGePc94BL
 9viXEddPadWJ4cRyqQEMqU6J43X9ImLxHY5J3O2FHW3erkoxo0y0jc5PDSsxnEzrdEjBnGRdl
 B/XvPnG450H6oC2f1nRko4wWvDEOtdpCQkA6hVmri7wv37g3Onb+NYnKfEqNwZFD0ASnfN0eF
 JO/owFCFmYq5r8P0uhcPAmIPETatsEG8+y4iwENwvaoAN4ykAPNiSIVcQPr06Yc6k4nzt7wI/
 w8/vGsQBTcfporSHE+a/thJM3a9IPf4ZF5CRaWWeAkCO5fFBcdVtV5I6r3sVi2BdJBoF4AaK5
 hm0Y1xdAmbPlhfxha+wjyhzjSQCfVEiune31EpiolTTME1zvSEPRB48cZMW0eh8v0/c5r7VoD
 B7RrLtWadWRbSRXLxPpPwLNasduxNHYZeM7wm/4jphS+3quBI/tOthKnzXmOVljGQjU2ww3sg
 UwYjBi2MQpu+E+lwVGOdh4afmqkSLKdojH/nd3UPgbwVFzlm9Wwl3yA0o6Y6WBujAQATGpMSP
 OfzAaf5Xc0MktpqywMilFMPVRsPXnL+pybZbshtBq6BbA54TnF9hO7PBhasurpEgKdWqHduZY
 EHy9e/u6x8zAFm0L5RKooOI9CX7Ed4lsXC/YgE3l1cbZYenIzTYjXOLoFgckfkMU2rxOokMII
 Bn7BTJHXFi7lxQmkFc6FT6EG65nbpKzPCe/1XEj9fy+86NiTKozOrLkwaHTVibKTYn1qonQzX
 Jby/qkr3Os7pjDvVY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_102644_991317_B6F1B1C3 
X-CRM114-Status: GOOD (  35.65  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [xypron.glpk[at]gmx.de]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: agraf@csgraf.de, daniel.kiper@oracle.com, ilias.apalodimas@linaro.org,
 mjg59@google.com, pjones@redhat.com, leif@nuviainc.com, lersek@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/6/20 3:03 PM, Ard Biesheuvel wrote:
> There are currently two ways to specify the initrd to be passed to the
> Linux kernel when booting via the EFI stub:
> - it can be passed as a initrd= command line option when doing a pure PE
>    boot (as opposed to the EFI handover protocol that exists for x86)
> - otherwise, the bootloader or firmware can load the initrd into memory,
>    and pass the address and size via the bootparams struct (x86) or
>    device tree (ARM)
>
> In the first case, we are limited to loading from the same file system
> that the kernel was loaded from, and it is also problematic in a trusted

Hello Ard,

"same file system" is not a limitation of using a command line
parameter. Any device path can be passed as a string.

> boot context, given that we cannot easily protect the command line from
> tampering without either adding complicated white/blacklisting of boot
> arguments or locking down the command line altogether.

Not relying on the command line for finding the initrd image does not
secure the integrity and the validity of the initrd image.

A signature on the initrd image could solve the security problem you
describe. It would not require non-Linux software to be changed, and
would provide much better security.

>
> In the second case, we force the bootloader to duplicate knowledge about
> the boot protocol which is already encoded in the stub, and which may be
> subject to change over time, e.g., bootparams struct definitions, memory
> allocation/alignment requirements for the placement of the initrd etc etc.
> In the ARM case, it also requires the bootloader to modify the hardware
> description provided by the firmware, as it is passed in the same file.
> On systems where the initrd is measured after loading, it creates a time
> window where the initrd contents might be manipulated in memory before
> handing over to the kernel.
>
> Address these concerns by adding support for loading the initrd into
> memory by invoking the EFI LoadFile2 protocol installed on a vendor
> GUIDed device path that specifically designates a Linux initrd.
> This addresses the above concerns, by putting the EFI stub in charge of
> placement in memory and of passing the base and size to the kernel proper
> (via whatever means it desires) while still leaving it up to the firmware
> or bootloader to obtain the file contents, potentially from other file
> systems than the one the kernel itself was loaded from. On platforms that
> implement measured boot, it permits the firmware to take the measurement
> right before the kernel actually consumes the contents.

A firmware implementing the UEFI standard will not be aware of any
initrd image as such an object does not exist in the standard. It was a
wise decision that the UEFI standard is operating system agnostic
(accomodating BSD, Linux, Windows, etc.). So the firmware (EDK2, U-Boot,
etc.) seems to be out of scope for providing a Linux specific
EFI_LOAD_FILE2_PROTOCOL.

When booting via GRUB it will be GRUB knowing which initrd to load.

Please, indicate which software you expect to expose the initrd related
EFI_LOAD_FILE2_PROTOCOL.

Using an UEFI variable for passing the initrd device path would be a
leaner solution on the bootloader side than requiring an extra
EFI_LOAD_FILE2_PROTOCOL implementation.

>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>   drivers/firmware/efi/libstub/arm-stub.c        | 16 +++--
>   drivers/firmware/efi/libstub/efi-stub-helper.c | 65 ++++++++++++++++++++
>   drivers/firmware/efi/libstub/efistub.h         | 12 ++++
>   drivers/firmware/efi/libstub/x86-stub.c        | 36 ++++++++++-
>   include/linux/efi.h                            |  1 +
>   5 files changed, 123 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/firmware/efi/libstub/arm-stub.c b/drivers/firmware/efi/libstub/arm-stub.c
> index c7b091f50e55..1db943c1ba2b 100644
> --- a/drivers/firmware/efi/libstub/arm-stub.c
> +++ b/drivers/firmware/efi/libstub/arm-stub.c
> @@ -157,6 +157,7 @@ unsigned long efi_entry(void *handle, efi_system_table_t *sys_table_arg,
>   	enum efi_secureboot_mode secure_boot;
>   	struct screen_info *si;
>   	efi_properties_table_t *prop_tbl;
> +	unsigned long max_addr;
>
>   	sys_table = sys_table_arg;
>
> @@ -255,11 +256,18 @@ unsigned long efi_entry(void *handle, efi_system_table_t *sys_table_arg,
>   	if (!fdt_addr)
>   		pr_efi("Generating empty DTB\n");
>
> -	status = efi_load_initrd(image, ULONG_MAX,
> -				 efi_get_max_initrd_addr(dram_base, *image_addr),
> -				 &initrd_addr, &initrd_size);
> +	max_addr = efi_get_max_initrd_addr(dram_base, *image_addr);
> +	status = efi_load_initrd_devpath(&initrd_addr, &initrd_size, max_addr);
> +	if (status == EFI_SUCCESS)
> +		pr_efi("Loaded initrd from LINUX_EFI_INITRD_MEDIA_GUID device path\n");
> +	else if (status == EFI_NOT_FOUND) {
> +		status = efi_load_initrd(image, ULONG_MAX, max_addr,
> +					 &initrd_addr, &initrd_size);
> +		if (status == EFI_SUCCESS)
> +			pr_efi("Loaded initrd from command line option\n");
> +	}
>   	if (status != EFI_SUCCESS)
> -		pr_efi_err("Failed initrd from command line!\n");
> +		pr_efi_err("Failed to load initrd!\n");
>
>   	efi_random_get_seed();
>
> diff --git a/drivers/firmware/efi/libstub/efi-stub-helper.c b/drivers/firmware/efi/libstub/efi-stub-helper.c
> index 8e60a39df3c5..eaf45ea749b3 100644
> --- a/drivers/firmware/efi/libstub/efi-stub-helper.c
> +++ b/drivers/firmware/efi/libstub/efi-stub-helper.c
> @@ -323,3 +323,68 @@ void efi_char16_printk(efi_char16_t *str)
>   	efi_call_proto(efi_table_attr(efi_system_table(), con_out),
>   		       output_string, str);
>   }
> +
> +static const struct {
> +	struct efi_vendor_dev_path	vendor;
> +	struct efi_generic_dev_path	end;
> +} __packed initrd_devpath = {
> +	{
> +		EFI_DEV_MEDIA,
> +		EFI_DEV_MEDIA_VENDOR,
> +		sizeof(struct efi_vendor_dev_path),
> +		LINUX_EFI_INITRD_MEDIA_GUID
> +	}, {
> +		EFI_DEV_END_PATH,
> +		EFI_DEV_END_ENTIRE,
> +		sizeof(struct efi_generic_dev_path)
> +	}
> +};
> +
> +efi_status_t efi_load_initrd_devpath(unsigned long *load_addr,
> +				     unsigned long *load_size,
> +				     unsigned long max)
> +{
> +	efi_guid_t lf2_proto_guid = EFI_LOAD_FILE2_PROTOCOL_GUID;
> +	efi_device_path_protocol_t *dp;
> +	efi_load_file2_protocol_t *lf2;
> +	unsigned long initrd_addr;
> +	unsigned long initrd_size;
> +	efi_handle_t handle;
> +	efi_status_t status;
> +
> +	if (!load_addr || !load_size)
> +		return EFI_INVALID_PARAMETER;
> +
> +	dp = (efi_device_path_protocol_t *)&initrd_devpath;
> +	status = efi_bs_call(locate_device_path, &lf2_proto_guid, &dp, &handle);
> +	if (status != EFI_SUCCESS)
> +		return status;
> +
> +	status = efi_bs_call(handle_protocol, handle, &lf2_proto_guid,
> +			     (void **)&lf2);
> +	if (status != EFI_SUCCESS)
> +		return status;

You require here that there is a handle exposing the device path
protocol with the initrd specific device path. On the same handle the
EFI_LOAD_FILE2_PROTOCOL must be installed which will load the initrd
file when called with the same device path.

An alternative implementation would simple loop over all instances of
the EFI_LOAD_FILE2_PROTOCOL and try to load the initrd.

It would be worthwhile to describe the requirements on the
implementation of the EFI_LOAD_FILE2_PROTOCOL in a code comment and in
the documentation.

Unfortunately the documentation of UEFI has been duplicated into two files:

Documentation/arm/uefi.rst
Documentation/x86/x86_64/uefi.rst

Best regards

Heinrich

> +
> +	initrd_size = 0;
> +	status = efi_call_proto(lf2, load_file,
> +				(efi_device_path_protocol_t *)&initrd_devpath,
> +				false, &initrd_size, NULL);
> +	if (status != EFI_BUFFER_TOO_SMALL)
> +		return EFI_LOAD_ERROR;
> +
> +	status = efi_allocate_pages(initrd_size, &initrd_addr, max);
> +	if (status != EFI_SUCCESS)
> +		return status;
> +
> +	status = efi_call_proto(lf2, load_file,
> +				(efi_device_path_protocol_t *)&initrd_devpath,
> +				false, &initrd_size, (void *)initrd_addr);
> +	if (status != EFI_SUCCESS) {
> +		efi_free(initrd_size, initrd_addr);
> +		return status;
> +	}
> +
> +	*load_addr = initrd_addr;
> +	*load_size = initrd_size;
> +	return EFI_SUCCESS;
> +}
> diff --git a/drivers/firmware/efi/libstub/efistub.h b/drivers/firmware/efi/libstub/efistub.h
> index 99e93fd76ec5..fbf9f9442eed 100644
> --- a/drivers/firmware/efi/libstub/efistub.h
> +++ b/drivers/firmware/efi/libstub/efistub.h
> @@ -566,6 +566,14 @@ union efi_load_file_protocol {
>   	} mixed_mode;
>   };
>
> +struct efi_vendor_dev_path {
> +	u8		type;
> +	u8		sub_type;
> +	u16		length;
> +	efi_guid_t	vendorguid;
> +	u8		vendordata[];
> +} __packed;
> +
>   void efi_pci_disable_bridge_busmaster(void);
>
>   typedef efi_status_t (*efi_exit_boot_map_processing)(
> @@ -651,4 +659,8 @@ efi_status_t efi_load_initrd(efi_loaded_image_t *image,
>   			     unsigned long *load_addr,
>   			     unsigned long *load_size);
>
> +efi_status_t efi_load_initrd_devpath(unsigned long *load_addr,
> +				     unsigned long *load_size,
> +				     unsigned long max);
> +
>   #endif
> diff --git a/drivers/firmware/efi/libstub/x86-stub.c b/drivers/firmware/efi/libstub/x86-stub.c
> index f3e2ff31b624..7f38f95676dd 100644
> --- a/drivers/firmware/efi/libstub/x86-stub.c
> +++ b/drivers/firmware/efi/libstub/x86-stub.c
> @@ -419,9 +419,20 @@ efi_status_t __efiapi efi_pe_entry(efi_handle_t handle,
>   	if (status != EFI_SUCCESS)
>   		goto fail2;
>
> -	status = efi_load_initrd(image, hdr->initrd_addr_max,
> -				 above4g ? ULONG_MAX : hdr->initrd_addr_max,
> -				 &ramdisk_addr, &ramdisk_size);
> +	/*
> +	 * The initrd loaded from the Linux initrd vendor device
> +	 * path should take precedence, as we don't want the
> +	 * [unverified] command line to override the initrd
> +	 * supplied by the [potentially verified] firmware.
> +	 */
> +	status = efi_load_initrd_devpath(&ramdisk_addr, &ramdisk_size,
> +					 above4g ? ULONG_MAX
> +						 : hdr->initrd_addr_max);
> +	if (status == EFI_NOT_FOUND)
> +		status = efi_load_initrd(image, hdr->initrd_addr_max,
> +					 above4g ? ULONG_MAX
> +						 : hdr->initrd_addr_max,
> +					 &ramdisk_addr, &ramdisk_size);
>   	if (status != EFI_SUCCESS)
>   		goto fail2;
>   	hdr->ramdisk_image = ramdisk_addr & 0xffffffff;
> @@ -732,6 +743,25 @@ struct boot_params *efi_main(efi_handle_t handle,
>   			 ((u64)boot_params->ext_cmd_line_ptr << 32));
>   	efi_parse_options((char *)cmdline_paddr);
>
> +	if (!hdr->ramdisk_size && !boot_params->ext_ramdisk_size) {
> +		unsigned long max = hdr->initrd_addr_max;
> +		unsigned long addr, size;
> +
> +		if (hdr->xloadflags & XLF_CAN_BE_LOADED_ABOVE_4G)
> +			max = ULONG_MAX;
> +
> +		status = efi_load_initrd_devpath(&addr, &size, max);
> +		if (status == EFI_SUCCESS) {
> +			hdr->ramdisk_image		= (u32)addr;
> +			hdr->ramdisk_size 		= (u32)size;
> +			boot_params->ext_ramdisk_image	= (u64)addr >> 32;
> +			boot_params->ext_ramdisk_size 	= (u64)size >> 32;
> +		} else if (status != EFI_NOT_FOUND) {
> +			efi_printk("efi_load_initrd_devpath() failed!\n");
> +			goto fail;
> +		}
> +	}
> +
>   	/*
>   	 * If the boot loader gave us a value for secure_boot then we use that,
>   	 * otherwise we ask the BIOS.
> diff --git a/include/linux/efi.h b/include/linux/efi.h
> index 9ccf313fe9de..75c83c322c40 100644
> --- a/include/linux/efi.h
> +++ b/include/linux/efi.h
> @@ -353,6 +353,7 @@ void efi_native_runtime_setup(void);
>   #define LINUX_EFI_TPM_EVENT_LOG_GUID		EFI_GUID(0xb7799cb0, 0xeca2, 0x4943,  0x96, 0x67, 0x1f, 0xae, 0x07, 0xb7, 0x47, 0xfa)
>   #define LINUX_EFI_TPM_FINAL_LOG_GUID		EFI_GUID(0x1e2ed096, 0x30e2, 0x4254,  0xbd, 0x89, 0x86, 0x3b, 0xbe, 0xf8, 0x23, 0x25)
>   #define LINUX_EFI_MEMRESERVE_TABLE_GUID		EFI_GUID(0x888eb0c6, 0x8ede, 0x4ff5,  0xa8, 0xf0, 0x9a, 0xee, 0x5c, 0xb9, 0x77, 0xc2)
> +#define LINUX_EFI_INITRD_MEDIA_GUID		EFI_GUID(0x5568e427, 0x68fc, 0x4f3d,  0xac, 0x74, 0xca, 0x55, 0x52, 0x31, 0xcc, 0x68)
>
>   /* OEM GUIDs */
>   #define DELLEMC_EFI_RCI2_TABLE_GUID		EFI_GUID(0x2d9f28a2, 0xa886, 0x456a,  0x97, 0xa8, 0xf1, 0x1e, 0xf2, 0x4f, 0xf4, 0x55)
>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
