Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E76B154CAD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 21:10:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RUiqYl3atVQIZAehLul5A7cuyLYrJp9UocYajqPijUA=; b=KwPsvP1E1Sznfo
	ayZFmcipgF+ZtlHj6R8SbuLy6avlqpnwJAs2eJcUA7vg9DDVWD9TIUtCy4j4HWSas6sIueBTcLHv/
	srQoQdB5GFqIRdP4QmZ5VihdVlMAlXItQDLpJbd6Lgu5oVfMMoldhQM9ct/oO6HQW6VfqVQOukS9l
	QK95b5J4OSZAlEmvo6ENnKgG2ztUGSgFPOiB/7DT/RJsqJUPg59X5v5mR0ARNsLvQRaYWVnuztChp
	dMQC/NtyGy58WdkiMOGHbOX1CBgq/4quSk5xP30m4b9Sxy2NwXsQC7EWghRk3EQc64FByBabufp5r
	tMnFnzzezvSlFZTVOERQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iznTJ-0001Ll-K4; Thu, 06 Feb 2020 20:09:57 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iznTB-0001KK-IU
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 20:09:51 +0000
Received: by mail-wr1-x442.google.com with SMTP id w12so8665984wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 12:09:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=O95aaMSZh4Tx7adZJuF5bJqvv/r0hnwapraHXfRq/gA=;
 b=UD5pcZuaMULxZJnpU1xC+s6P6dMiq+kC5G9exl0DUf/1ul0JSGtdNnH4IPMB96e7Ej
 OuUEMdP92tBXNpGputQ/Qk7j8a+uBUs5VkD9A9C4yhX9hdPELpuyaU76UTUBPVJGCrlt
 oQZMlkC6LHlKfHFNak92qbpkKUttU2BZcfjYO0dgALitmt243RVKLOARh/nMu44xcWr/
 k/Vk9IwhzvmIHEyqgZsM4sGeYNtelOKvGKGhboyfgLA4dl8UomAPrKK5ktUKwPpKj0KE
 T+fJulmNQJOBE5VDSRiOWRzsBovE777hO6uNwZO4Q+nLa9h2J8iK5hVLvjnly2ulJuk+
 Tm2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=O95aaMSZh4Tx7adZJuF5bJqvv/r0hnwapraHXfRq/gA=;
 b=M/G3a0/RGqVl5XvduM1WJA8swe5JBx3/o+9G7AR9pYeSZr7UXeLQGc6fCPiCoVUKvF
 6USs9QNhO9T/+jy8NrX25WGjUS0s+Z3mNvMoyhTz23bUoUEX3x0jm6gQyQve2KH7e3y/
 /Cqo8C5CxSscuag7A2VHa6PoslfwOd6Rc5uGMSYEJsptl/Md6ElQgbMchEmUrcO3znyv
 iRWJeeWeuZV28PnJXfm8ZJN6zUuNFicocCerPtO3i3qGz49b4+41Dlx6QnJ3FI8l/+sU
 MIyrFD5NF71Qnb78I4ZlRm6SmfDxtqThCk0CGeTYAUVOqXOYqD3j7H1t6QSi0BwRnHv1
 S93w==
X-Gm-Message-State: APjAAAU7BXt3jeNkFfqTdqh/UB2mIlPR8nJPeIc27LLqxi82APYEBtD9
 YO6DxzT/pOogRXC6Hpf80yc5yQ==
X-Google-Smtp-Source: APXvYqxbFFqQcw9fA21MT6eJqOaGB27rvdsDx8CC8l9+ifLyzmHsFSD+dBUSIBN4CmkFG8iq7V2ODA==
X-Received: by 2002:adf:f3d1:: with SMTP id g17mr5277234wrp.378.1581019783570; 
 Thu, 06 Feb 2020 12:09:43 -0800 (PST)
Received: from apalos.home (ppp-94-66-201-28.home.otenet.gr. [94.66.201.28])
 by smtp.gmail.com with ESMTPSA id n13sm659793wmd.21.2020.02.06.12.09.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 12:09:42 -0800 (PST)
Date: Thu, 6 Feb 2020 22:09:40 +0200
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
To: Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: Re: [PATCH 1/2] efi/libstub: add support for loading the initrd from
 a device path
Message-ID: <20200206200940.GA750064@apalos.home>
References: <20200206140352.6300-1-ardb@kernel.org>
 <20200206140352.6300-2-ardb@kernel.org>
 <a6d7fefb-2f02-86a3-66aa-c3c129a91fb1@gmx.de>
 <20200206184608.GA749195@apalos.home>
 <2ffcb05e-761a-9345-7da5-c08f5cda914e@gmx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2ffcb05e-761a-9345-7da5-c08f5cda914e@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_120949_647020_364D70B8 
X-CRM114-Status: GOOD (  47.15  )
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

On Thu, Feb 06, 2020 at 08:15:11PM +0100, Heinrich Schuchardt wrote:
> On 2/6/20 7:46 PM, Ilias Apalodimas wrote:
> > Hi Heinrich,
> > 
> > I actually like the approach.
> > 
> > On Thu, Feb 06, 2020 at 07:26:20PM +0100, Heinrich Schuchardt wrote:
> > [...]
> > > > boot context, given that we cannot easily protect the command line from
> > > > tampering without either adding complicated white/blacklisting of boot
> > > > arguments or locking down the command line altogether.
> > > 
> > > Not relying on the command line for finding the initrd image does not
> > > secure the integrity and the validity of the initrd image.
> > 
> > This patch isn't supposed to protect you against a bogus initrd and I don't
> > think it should be the bootloaders job to verify that. The kernel already has
> > tools to do that.
> 
> How do you expect a bootloader identify if the initrd is compatible with
> the kernel?

Uh? Were exactly did i say that i expect that to happen?

> 
> > 
> > > 
> > > A signature on the initrd image could solve the security problem you
> > > describe. It would not require non-Linux software to be changed, and
> > > would provide much better security.
> > > 
> > 
> > The problem with parsing the kernel command line is that at the moment,
> > different options are supported by different architectures. A quick grep for
> > CONFIG_CMDLINE_(FORCE/OVERWRITE/EXTEND/FROM_BOOTLOADER) will give you an idea.
> > 
> > What you can do in U-Boot currently is not have an environment in any of the
> > flashes and set the bootdelay to 0, in order to prevent the user from
> > changing that command line.
> 
> If you don't have an environment or boot script how would
> update-initramfs set the path of the initrd when it is updated?

The path isn't hardcoded in any code here is it?
This specifies a way for the linux stub to load the actual file. It's pretty a
callback to the firmware. Were the firmware will find and how it will load it 
eventually is implementation specific. 

> 
> Using a UEFI variable seems to be the natural choice.
> 

You might as well use that to specify were you should load the file from.
The Loadfile2 (with the specified guid)  implementation of the firmware will 
take care of that.

> > 
> > > > 
> > > > In the second case, we force the bootloader to duplicate knowledge about
> > > > the boot protocol which is already encoded in the stub, and which may be
> > > > subject to change over time, e.g., bootparams struct definitions, memory
> > > > allocation/alignment requirements for the placement of the initrd etc etc.
> > > > In the ARM case, it also requires the bootloader to modify the hardware
> > > > description provided by the firmware, as it is passed in the same file.
> > > > On systems where the initrd is measured after loading, it creates a time
> > > > window where the initrd contents might be manipulated in memory before
> > > > handing over to the kernel.
> > > > 
> > > > Address these concerns by adding support for loading the initrd into
> > > > memory by invoking the EFI LoadFile2 protocol installed on a vendor
> > > > GUIDed device path that specifically designates a Linux initrd.
> > > > This addresses the above concerns, by putting the EFI stub in charge of
> > > > placement in memory and of passing the base and size to the kernel proper
> > > > (via whatever means it desires) while still leaving it up to the firmware
> > > > or bootloader to obtain the file contents, potentially from other file
> > > > systems than the one the kernel itself was loaded from. On platforms that
> > > > implement measured boot, it permits the firmware to take the measurement
> > > > right before the kernel actually consumes the contents.
> > > 
> > > A firmware implementing the UEFI standard will not be aware of any
> > > initrd image as such an object does not exist in the standard. It was a
> > > wise decision that the UEFI standard is operating system agnostic
> > > (accomodating BSD, Linux, Windows, etc.). So the firmware (EDK2, U-Boot,
> > > etc.) seems to be out of scope for providing a Linux specific
> > > EFI_LOAD_FILE2_PROTOCOL.
> > > 
> > > When booting via GRUB it will be GRUB knowing which initrd to load.
> > 
> > What about booting the kernel directly?
> > 
> > > 
> > > Please, indicate which software you expect to expose the initrd related
> > > EFI_LOAD_FILE2_PROTOCOL.
> > 
> > I have an implementation for this on U-Boot which works. The file and device are
> > hardcoded at the moment, but the rest of the functionality works fine. I'll
> > share it with you once I clean it up a bit.
> 
> Using a UEFI variable for passing the intird device path to Linux does
> not require any change in U-Boot and is compatible with the UEFI
> implementations of existing hardware like the laptop on which I am
> writing this email.

This still has the same issues we have now, uefi variable, kernel command line
or whatever, it won't be common across architectures.

Thanks
/Ilias
> 
> Best regards
> 
> Heinrich
> 
> > 
> > > 
> > > Using an UEFI variable for passing the initrd device path would be a
> > > leaner solution on the bootloader side than requiring an extra
> > > EFI_LOAD_FILE2_PROTOCOL implementation.
> > > 
> > 
> > Thanks
> > /Ilias
> > 
> > > > 
> > > > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > > > ---
> > > >    drivers/firmware/efi/libstub/arm-stub.c        | 16 +++--
> > > >    drivers/firmware/efi/libstub/efi-stub-helper.c | 65 ++++++++++++++++++++
> > > >    drivers/firmware/efi/libstub/efistub.h         | 12 ++++
> > > >    drivers/firmware/efi/libstub/x86-stub.c        | 36 ++++++++++-
> > > >    include/linux/efi.h                            |  1 +
> > > >    5 files changed, 123 insertions(+), 7 deletions(-)
> > > > 
> > > > diff --git a/drivers/firmware/efi/libstub/arm-stub.c b/drivers/firmware/efi/libstub/arm-stub.c
> > > > index c7b091f50e55..1db943c1ba2b 100644
> > > > --- a/drivers/firmware/efi/libstub/arm-stub.c
> > > > +++ b/drivers/firmware/efi/libstub/arm-stub.c
> > > > @@ -157,6 +157,7 @@ unsigned long efi_entry(void *handle, efi_system_table_t *sys_table_arg,
> > > >    	enum efi_secureboot_mode secure_boot;
> > > >    	struct screen_info *si;
> > > >    	efi_properties_table_t *prop_tbl;
> > > > +	unsigned long max_addr;
> > > > 
> > > >    	sys_table = sys_table_arg;
> > > > 
> > > > @@ -255,11 +256,18 @@ unsigned long efi_entry(void *handle, efi_system_table_t *sys_table_arg,
> > > >    	if (!fdt_addr)
> > > >    		pr_efi("Generating empty DTB\n");
> > > > 
> > > > -	status = efi_load_initrd(image, ULONG_MAX,
> > > > -				 efi_get_max_initrd_addr(dram_base, *image_addr),
> > > > -				 &initrd_addr, &initrd_size);
> > > > +	max_addr = efi_get_max_initrd_addr(dram_base, *image_addr);
> > > > +	status = efi_load_initrd_devpath(&initrd_addr, &initrd_size, max_addr);
> > > > +	if (status == EFI_SUCCESS)
> > > > +		pr_efi("Loaded initrd from LINUX_EFI_INITRD_MEDIA_GUID device path\n");
> > > > +	else if (status == EFI_NOT_FOUND) {
> > > > +		status = efi_load_initrd(image, ULONG_MAX, max_addr,
> > > > +					 &initrd_addr, &initrd_size);
> > > > +		if (status == EFI_SUCCESS)
> > > > +			pr_efi("Loaded initrd from command line option\n");
> > > > +	}
> > > >    	if (status != EFI_SUCCESS)
> > > > -		pr_efi_err("Failed initrd from command line!\n");
> > > > +		pr_efi_err("Failed to load initrd!\n");
> > > > 
> > > >    	efi_random_get_seed();
> > > > 
> > > > diff --git a/drivers/firmware/efi/libstub/efi-stub-helper.c b/drivers/firmware/efi/libstub/efi-stub-helper.c
> > > > index 8e60a39df3c5..eaf45ea749b3 100644
> > > > --- a/drivers/firmware/efi/libstub/efi-stub-helper.c
> > > > +++ b/drivers/firmware/efi/libstub/efi-stub-helper.c
> > > > @@ -323,3 +323,68 @@ void efi_char16_printk(efi_char16_t *str)
> > > >    	efi_call_proto(efi_table_attr(efi_system_table(), con_out),
> > > >    		       output_string, str);
> > > >    }
> > > > +
> > > > +static const struct {
> > > > +	struct efi_vendor_dev_path	vendor;
> > > > +	struct efi_generic_dev_path	end;
> > > > +} __packed initrd_devpath = {
> > > > +	{
> > > > +		EFI_DEV_MEDIA,
> > > > +		EFI_DEV_MEDIA_VENDOR,
> > > > +		sizeof(struct efi_vendor_dev_path),
> > > > +		LINUX_EFI_INITRD_MEDIA_GUID
> > > > +	}, {
> > > > +		EFI_DEV_END_PATH,
> > > > +		EFI_DEV_END_ENTIRE,
> > > > +		sizeof(struct efi_generic_dev_path)
> > > > +	}
> > > > +};
> > > > +
> > > > +efi_status_t efi_load_initrd_devpath(unsigned long *load_addr,
> > > > +				     unsigned long *load_size,
> > > > +				     unsigned long max)
> > > > +{
> > > > +	efi_guid_t lf2_proto_guid = EFI_LOAD_FILE2_PROTOCOL_GUID;
> > > > +	efi_device_path_protocol_t *dp;
> > > > +	efi_load_file2_protocol_t *lf2;
> > > > +	unsigned long initrd_addr;
> > > > +	unsigned long initrd_size;
> > > > +	efi_handle_t handle;
> > > > +	efi_status_t status;
> > > > +
> > > > +	if (!load_addr || !load_size)
> > > > +		return EFI_INVALID_PARAMETER;
> > > > +
> > > > +	dp = (efi_device_path_protocol_t *)&initrd_devpath;
> > > > +	status = efi_bs_call(locate_device_path, &lf2_proto_guid, &dp, &handle);
> > > > +	if (status != EFI_SUCCESS)
> > > > +		return status;
> > > > +
> > > > +	status = efi_bs_call(handle_protocol, handle, &lf2_proto_guid,
> > > > +			     (void **)&lf2);
> > > > +	if (status != EFI_SUCCESS)
> > > > +		return status;
> > > 
> > > You require here that there is a handle exposing the device path
> > > protocol with the initrd specific device path. On the same handle the
> > > EFI_LOAD_FILE2_PROTOCOL must be installed which will load the initrd
> > > file when called with the same device path.
> > > 
> > > An alternative implementation would simple loop over all instances of
> > > the EFI_LOAD_FILE2_PROTOCOL and try to load the initrd.
> > > 
> > > It would be worthwhile to describe the requirements on the
> > > implementation of the EFI_LOAD_FILE2_PROTOCOL in a code comment and in
> > > the documentation.
> > > 
> > > Unfortunately the documentation of UEFI has been duplicated into two files:
> > > 
> > > Documentation/arm/uefi.rst
> > > Documentation/x86/x86_64/uefi.rst
> > > 
> > > Best regards
> > > 
> > > Heinrich
> > > 
> > > > +
> > > > +	initrd_size = 0;
> > > > +	status = efi_call_proto(lf2, load_file,
> > > > +				(efi_device_path_protocol_t *)&initrd_devpath,
> > > > +				false, &initrd_size, NULL);
> > > > +	if (status != EFI_BUFFER_TOO_SMALL)
> > > > +		return EFI_LOAD_ERROR;
> > > > +
> > > > +	status = efi_allocate_pages(initrd_size, &initrd_addr, max);
> > > > +	if (status != EFI_SUCCESS)
> > > > +		return status;
> > > > +
> > > > +	status = efi_call_proto(lf2, load_file,
> > > > +				(efi_device_path_protocol_t *)&initrd_devpath,
> > > > +				false, &initrd_size, (void *)initrd_addr);
> > > > +	if (status != EFI_SUCCESS) {
> > > > +		efi_free(initrd_size, initrd_addr);
> > > > +		return status;
> > > > +	}
> > > > +
> > > > +	*load_addr = initrd_addr;
> > > > +	*load_size = initrd_size;
> > > > +	return EFI_SUCCESS;
> > > > +}
> > > > diff --git a/drivers/firmware/efi/libstub/efistub.h b/drivers/firmware/efi/libstub/efistub.h
> > > > index 99e93fd76ec5..fbf9f9442eed 100644
> > > > --- a/drivers/firmware/efi/libstub/efistub.h
> > > > +++ b/drivers/firmware/efi/libstub/efistub.h
> > > > @@ -566,6 +566,14 @@ union efi_load_file_protocol {
> > > >    	} mixed_mode;
> > > >    };
> > > > 
> > > > +struct efi_vendor_dev_path {
> > > > +	u8		type;
> > > > +	u8		sub_type;
> > > > +	u16		length;
> > > > +	efi_guid_t	vendorguid;
> > > > +	u8		vendordata[];
> > > > +} __packed;
> > > > +
> > > >    void efi_pci_disable_bridge_busmaster(void);
> > > > 
> > > >    typedef efi_status_t (*efi_exit_boot_map_processing)(
> > > > @@ -651,4 +659,8 @@ efi_status_t efi_load_initrd(efi_loaded_image_t *image,
> > > >    			     unsigned long *load_addr,
> > > >    			     unsigned long *load_size);
> > > > 
> > > > +efi_status_t efi_load_initrd_devpath(unsigned long *load_addr,
> > > > +				     unsigned long *load_size,
> > > > +				     unsigned long max);
> > > > +
> > > >    #endif
> > > > diff --git a/drivers/firmware/efi/libstub/x86-stub.c b/drivers/firmware/efi/libstub/x86-stub.c
> > > > index f3e2ff31b624..7f38f95676dd 100644
> > > > --- a/drivers/firmware/efi/libstub/x86-stub.c
> > > > +++ b/drivers/firmware/efi/libstub/x86-stub.c
> > > > @@ -419,9 +419,20 @@ efi_status_t __efiapi efi_pe_entry(efi_handle_t handle,
> > > >    	if (status != EFI_SUCCESS)
> > > >    		goto fail2;
> > > > 
> > > > -	status = efi_load_initrd(image, hdr->initrd_addr_max,
> > > > -				 above4g ? ULONG_MAX : hdr->initrd_addr_max,
> > > > -				 &ramdisk_addr, &ramdisk_size);
> > > > +	/*
> > > > +	 * The initrd loaded from the Linux initrd vendor device
> > > > +	 * path should take precedence, as we don't want the
> > > > +	 * [unverified] command line to override the initrd
> > > > +	 * supplied by the [potentially verified] firmware.
> > > > +	 */
> > > > +	status = efi_load_initrd_devpath(&ramdisk_addr, &ramdisk_size,
> > > > +					 above4g ? ULONG_MAX
> > > > +						 : hdr->initrd_addr_max);
> > > > +	if (status == EFI_NOT_FOUND)
> > > > +		status = efi_load_initrd(image, hdr->initrd_addr_max,
> > > > +					 above4g ? ULONG_MAX
> > > > +						 : hdr->initrd_addr_max,
> > > > +					 &ramdisk_addr, &ramdisk_size);
> > > >    	if (status != EFI_SUCCESS)
> > > >    		goto fail2;
> > > >    	hdr->ramdisk_image = ramdisk_addr & 0xffffffff;
> > > > @@ -732,6 +743,25 @@ struct boot_params *efi_main(efi_handle_t handle,
> > > >    			 ((u64)boot_params->ext_cmd_line_ptr << 32));
> > > >    	efi_parse_options((char *)cmdline_paddr);
> > > > 
> > > > +	if (!hdr->ramdisk_size && !boot_params->ext_ramdisk_size) {
> > > > +		unsigned long max = hdr->initrd_addr_max;
> > > > +		unsigned long addr, size;
> > > > +
> > > > +		if (hdr->xloadflags & XLF_CAN_BE_LOADED_ABOVE_4G)
> > > > +			max = ULONG_MAX;
> > > > +
> > > > +		status = efi_load_initrd_devpath(&addr, &size, max);
> > > > +		if (status == EFI_SUCCESS) {
> > > > +			hdr->ramdisk_image		= (u32)addr;
> > > > +			hdr->ramdisk_size 		= (u32)size;
> > > > +			boot_params->ext_ramdisk_image	= (u64)addr >> 32;
> > > > +			boot_params->ext_ramdisk_size 	= (u64)size >> 32;
> > > > +		} else if (status != EFI_NOT_FOUND) {
> > > > +			efi_printk("efi_load_initrd_devpath() failed!\n");
> > > > +			goto fail;
> > > > +		}
> > > > +	}
> > > > +
> > > >    	/*
> > > >    	 * If the boot loader gave us a value for secure_boot then we use that,
> > > >    	 * otherwise we ask the BIOS.
> > > > diff --git a/include/linux/efi.h b/include/linux/efi.h
> > > > index 9ccf313fe9de..75c83c322c40 100644
> > > > --- a/include/linux/efi.h
> > > > +++ b/include/linux/efi.h
> > > > @@ -353,6 +353,7 @@ void efi_native_runtime_setup(void);
> > > >    #define LINUX_EFI_TPM_EVENT_LOG_GUID		EFI_GUID(0xb7799cb0, 0xeca2, 0x4943,  0x96, 0x67, 0x1f, 0xae, 0x07, 0xb7, 0x47, 0xfa)
> > > >    #define LINUX_EFI_TPM_FINAL_LOG_GUID		EFI_GUID(0x1e2ed096, 0x30e2, 0x4254,  0xbd, 0x89, 0x86, 0x3b, 0xbe, 0xf8, 0x23, 0x25)
> > > >    #define LINUX_EFI_MEMRESERVE_TABLE_GUID		EFI_GUID(0x888eb0c6, 0x8ede, 0x4ff5,  0xa8, 0xf0, 0x9a, 0xee, 0x5c, 0xb9, 0x77, 0xc2)
> > > > +#define LINUX_EFI_INITRD_MEDIA_GUID		EFI_GUID(0x5568e427, 0x68fc, 0x4f3d,  0xac, 0x74, 0xca, 0x55, 0x52, 0x31, 0xcc, 0x68)
> > > > 
> > > >    /* OEM GUIDs */
> > > >    #define DELLEMC_EFI_RCI2_TABLE_GUID		EFI_GUID(0x2d9f28a2, 0xa886, 0x456a,  0x97, 0xa8, 0xf1, 0x1e, 0xf2, 0x4f, 0xf4, 0x55)
> > > > 
> > > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
