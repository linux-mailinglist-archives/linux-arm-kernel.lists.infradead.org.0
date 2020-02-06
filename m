Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E76154F22
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 23:55:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MXwxkcfGRl2ZiJpr+Ytz2hgzvhaUd3Z+BsjG4ywIMjM=; b=DAtynnRBJYeiVKNth8MS8awEO
	Nce8N533GdMjcMMQqzpviBdco3iMEbtOsRbxQgIDibKjXty4Iex0T8GfmWZ8zoAz30MuB23yzmYqM
	OgTBu1LZvWQ9MJLXFIgvtHfUHrNyL+3aCQIftPCeXmcGMC+qfmWF1lCOT4ryIe8y+YlVFt7lCEV/i
	kMi+PBNe072NbLJvPuAuFEwgr3IKPY4s3emKbrWnyikRNZOXBPNOqVsvG05oS3DNeK6egYD2m/85r
	hRyZLwWxvxuC13FXcz0V1u/NxVx8zFNV1rYcKGbI0Y+Vh3LKp7XYVQI2dpWpygQCuOP8scdLnZ9Ie
	AtNr8Xmjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izq3l-0001xl-Vv; Thu, 06 Feb 2020 22:55:45 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izq3e-0001xM-73
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 22:55:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1581029734;
 bh=UwWHexaMnW+ViUwNp7qhdtZQDE+Baa5ymmrEFgATQ+M=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=eZbmUsx2n5ePFvAfhoNjkmk2Co0dVUa84hBW3G8cGyzTZVdRix5d/awmVsl/L4fyj
 ZvaeuvbpPghWpx1lGUkhqffOzVc7lE8KlLUWaWtIpnJrZBQOzzSE9I1pJu4JTYWwtz
 mdlJKleYTtkn33i/ubMnXNwZuUtRVg7W3pDECGvc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.123.51] ([84.119.33.160]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MNKhm-1jBQpl1GLC-00Oq02; Thu, 06
 Feb 2020 23:49:55 +0100
Subject: Re: [PATCH 1/2] efi/libstub: add support for loading the initrd from
 a device path
To: Ilias Apalodimas <ilias.apalodimas@linaro.org>
References: <20200206140352.6300-1-ardb@kernel.org>
 <20200206140352.6300-2-ardb@kernel.org>
 <a6d7fefb-2f02-86a3-66aa-c3c129a91fb1@gmx.de>
 <20200206184608.GA749195@apalos.home>
 <2ffcb05e-761a-9345-7da5-c08f5cda914e@gmx.de>
 <20200206200940.GA750064@apalos.home>
From: Heinrich Schuchardt <xypron.glpk@gmx.de>
Message-ID: <d87e3fd2-f897-c48f-8d69-03cd5db237b9@gmx.de>
Date: Thu, 6 Feb 2020 23:49:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200206200940.GA750064@apalos.home>
Content-Language: en-US
X-Provags-ID: V03:K1:aiM6pFc4UWTghBZLvPp9dZQI641+VwIeg+4hcYwdt+YbKnmNpHx
 WPo7NZEK0nlhQeLqKo7+k1RyBuKD6hNH4fl8/xo2iJbuH/YJ+lOR635NC3brnhBlmj3UQXn
 igZoyv4Y9SzqAAqR2qb/DaVDohYtsZ6bXZuNtiT08x4G6sQTcYhKc5UNa8KJ3x1+QFiHTVq
 m7ymTzc6/ZGT9yj1Dh5LA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yFw5KFaTo80=:0RJsqz/U+jB0TfqGhtUFqS
 9VTpBgpcN7pobDVUVXt25TudvNVR27QEaOLGxg8AzsGRQZtkWLGyh/3QiHpA44YgHSRB56WwN
 2d3T95wFd/HSHQ+ljmYgYfBoxW2Nyz21Unf8eChBouf3Kx3eMSE6iBXMjScKeUt1UJXEdNO1u
 sl7bDQjUSaRduROruPsnfsjBWpqjgmhi9jocwNzdZEUQ+HlG0Yki8ncjSn/dwgOykmlHVZHiE
 ddGf6SrsV1NieW/rknZtkK5+UfTDhgpqWXREP5ui4mii0nU2cGCs8lIvkfX37VqEuecnksok4
 OId1pZnQrQW2gvbHqbUtdc3JiCfyJH/xtRNrrE3pDN5Hh51ZiWXmsgeSiY+hrL+ZPWb35rXtA
 aTaa/7/h8gJ2RFjNk3CVX8povM0RovJ9E+T/kQkHfk3Ew0f16kQK36PHFib09njMw+Sn76iCK
 Vo1q7iAPIe6O31IeYT1EPEYmQxSW6F2HI+eueJ5d/x+eIkkfsk/7ugbbVC1tlD6wmIj72hUZM
 dRMO2pLBpSxzeudKOZmd7yILNwkJTdX8HFdUUpVcNb2/w9S78WKol3PNyKuf8vDjWbIUcM1f5
 9hpZSxoSDIeSElVsk1phkQL4BmhOcA6dU2rZvai+pqNW+XlHH2HeQaM30r3WnEl353XRXrByL
 BXX/Gsxrg3Z7flFYGNnY45MORSu9xlnEdo/bqBQGFQTbEB6+ZWhOoi7CmywPmW3nBECFMz77p
 N+0zgGibWIG18Nfhaz6ZZm2lS5P4PRpY/mm2xF0w+aDsFREbnXqKzQ/NQ74FXQoYBEx0Gf5Zs
 u/wgDizwsT97UWirEH1GlMqHVx7CXDR4H1Jbaj/AC2/u3ADMVbmUDdr6zNQoNmsUsqqYDQq8J
 HhEf6ijMDFCarYv9gu53rEbqagGf0AKoDaet0AbzyE603qRLPm1GLL8yofFcggUfmoiqsGQDp
 NZc8QKheP7Ejh1jzWBQPFtiV2WxF6pTCFajOObLMc71LvzICIdu67j1338vJVg0R/1s30ab3o
 ZKQRcDB6N4pAqAb/Ge2GsJdxyRXyGyPQus412yz4YV2pU8D+sscfhiQgigDPE1x6Av7SdbRlC
 m0u/CPXoWYoYBPd+haeQOl1F/vpf5WfktN7YKBq6DRrLXAt9qwduUaNd3AipJIrFbSBh1CEe8
 WDjFEqPiUofdTv/AgP66ZhpZ0vJ+Oeg8Ii4rnpCYmYkaM8FBYaM9wW8fxYLCqW2bHJlC0/S+7
 cmRj7r7zSyj3UEsP8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_145538_600177_F1E1FAC1 
X-CRM114-Status: GOOD (  37.02  )
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
Cc: linux-efi@vger.kernel.org, agraf@csgraf.de, daniel.kiper@oracle.com,
 mjg59@google.com, pjones@redhat.com, leif@nuviainc.com, lersek@redhat.com,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/6/20 9:09 PM, Ilias Apalodimas wrote:
> On Thu, Feb 06, 2020 at 08:15:11PM +0100, Heinrich Schuchardt wrote:
>> On 2/6/20 7:46 PM, Ilias Apalodimas wrote:
>>> Hi Heinrich,
>>>
>>> I actually like the approach.
>>>
>>> On Thu, Feb 06, 2020 at 07:26:20PM +0100, Heinrich Schuchardt wrote:
>>> [...]
>>>>> boot context, given that we cannot easily protect the command line from
>>>>> tampering without either adding complicated white/blacklisting of boot
>>>>> arguments or locking down the command line altogether.
>>>>
>>>> Not relying on the command line for finding the initrd image does not
>>>> secure the integrity and the validity of the initrd image.
>>>
>>> This patch isn't supposed to protect you against a bogus initrd and I don't
>>> think it should be the bootloaders job to verify that. The kernel already has
>>> tools to do that.
>>
>> How do you expect a bootloader identify if the initrd is compatible with
>> the kernel?
>
> Uh? Were exactly did i say that i expect that to happen?
>
>>
>>>
>>>>
>>>> A signature on the initrd image could solve the security problem you
>>>> describe. It would not require non-Linux software to be changed, and
>>>> would provide much better security.
>>>>
>>>
>>> The problem with parsing the kernel command line is that at the moment,
>>> different options are supported by different architectures. A quick grep for
>>> CONFIG_CMDLINE_(FORCE/OVERWRITE/EXTEND/FROM_BOOTLOADER) will give you an idea.
>>>
>>> What you can do in U-Boot currently is not have an environment in any of the
>>> flashes and set the bootdelay to 0, in order to prevent the user from
>>> changing that command line.
>>
>> If you don't have an environment or boot script how would
>> update-initramfs set the path of the initrd when it is updated?
>
> The path isn't hardcoded in any code here is it?
> This specifies a way for the linux stub to load the actual file. It's pretty a
> callback to the firmware. Were the firmware will find and how it will load it
> eventually is implementation specific.

"Implementation specific" - This does not sound like anything you would
want to have in mainline Linux, U-Boot, or EDK2.

>
>>
>> Using a UEFI variable seems to be the natural choice.
>>
>
> You might as well use that to specify were you should load the file from.
> The Loadfile2 (with the specified guid)  implementation of the firmware will
> take care of that.
>

If we have a UEFI variable, the Linux kernel can use it to find the
handle with the file system and load initrd via the
EFI_SIMPLE_FILE_SYSTEM_PROTOCOL.

This way we stay within the existing UEFI specification and avoid
anything "implementation specific" in the firmware.

If you want extra security, Linux can use an authenticated variable.

>>>
>>>>>
>>>>> In the second case, we force the bootloader to duplicate knowledge about
>>>>> the boot protocol which is already encoded in the stub, and which may be
>>>>> subject to change over time, e.g., bootparams struct definitions, memory
>>>>> allocation/alignment requirements for the placement of the initrd etc etc.
>>>>> In the ARM case, it also requires the bootloader to modify the hardware
>>>>> description provided by the firmware, as it is passed in the same file.
>>>>> On systems where the initrd is measured after loading, it creates a time
>>>>> window where the initrd contents might be manipulated in memory before
>>>>> handing over to the kernel.
>>>>>
>>>>> Address these concerns by adding support for loading the initrd into
>>>>> memory by invoking the EFI LoadFile2 protocol installed on a vendor
>>>>> GUIDed device path that specifically designates a Linux initrd.
>>>>> This addresses the above concerns, by putting the EFI stub in charge of
>>>>> placement in memory and of passing the base and size to the kernel proper
>>>>> (via whatever means it desires) while still leaving it up to the firmware
>>>>> or bootloader to obtain the file contents, potentially from other file
>>>>> systems than the one the kernel itself was loaded from. On platforms that
>>>>> implement measured boot, it permits the firmware to take the measurement
>>>>> right before the kernel actually consumes the contents.
>>>>
>>>> A firmware implementing the UEFI standard will not be aware of any
>>>> initrd image as such an object does not exist in the standard. It was a
>>>> wise decision that the UEFI standard is operating system agnostic
>>>> (accomodating BSD, Linux, Windows, etc.). So the firmware (EDK2, U-Boot,
>>>> etc.) seems to be out of scope for providing a Linux specific
>>>> EFI_LOAD_FILE2_PROTOCOL.
>>>>
>>>> When booting via GRUB it will be GRUB knowing which initrd to load.
>>>
>>> What about booting the kernel directly?
>>>
>>>>
>>>> Please, indicate which software you expect to expose the initrd related
>>>> EFI_LOAD_FILE2_PROTOCOL.
>>>
>>> I have an implementation for this on U-Boot which works. The file and device are
>>> hardcoded at the moment, but the rest of the functionality works fine. I'll
>>> share it with you once I clean it up a bit.
>>
>> Using a UEFI variable for passing the intird device path to Linux does
>> not require any change in U-Boot and is compatible with the UEFI
>> implementations of existing hardware like the laptop on which I am
>> writing this email.
>
> This still has the same issues we have now, uefi variable, kernel command line
> or whatever, it won't be common across architectures.

This would be a bad design choice by Linux. I cannot see why a UEFI
variable should not be interpreted in a consistent way inside Linux to
load a file via the EFI_SIMPLE_FILE_PROTOCOL.

>
> Thanks
> /Ilias
>>
>> Best regards
>>
>> Heinrich
>>
>>>
>>>>
>>>> Using an UEFI variable for passing the initrd device path would be a
>>>> leaner solution on the bootloader side than requiring an extra
>>>> EFI_LOAD_FILE2_PROTOCOL implementation.
>>>>
>>>
>>> Thanks
>>> /Ilias
>>>
>>>>>
>>>>> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
>>>>> ---
>>>>>     drivers/firmware/efi/libstub/arm-stub.c        | 16 +++--
>>>>>     drivers/firmware/efi/libstub/efi-stub-helper.c | 65 ++++++++++++++++++++
>>>>>     drivers/firmware/efi/libstub/efistub.h         | 12 ++++
>>>>>     drivers/firmware/efi/libstub/x86-stub.c        | 36 ++++++++++-
>>>>>     include/linux/efi.h                            |  1 +
>>>>>     5 files changed, 123 insertions(+), 7 deletions(-)
>>>>>
>>>>> diff --git a/drivers/firmware/efi/libstub/arm-stub.c b/drivers/firmware/efi/libstub/arm-stub.c
>>>>> index c7b091f50e55..1db943c1ba2b 100644
>>>>> --- a/drivers/firmware/efi/libstub/arm-stub.c
>>>>> +++ b/drivers/firmware/efi/libstub/arm-stub.c
>>>>> @@ -157,6 +157,7 @@ unsigned long efi_entry(void *handle, efi_system_table_t *sys_table_arg,
>>>>>     	enum efi_secureboot_mode secure_boot;
>>>>>     	struct screen_info *si;
>>>>>     	efi_properties_table_t *prop_tbl;
>>>>> +	unsigned long max_addr;
>>>>>
>>>>>     	sys_table = sys_table_arg;
>>>>>
>>>>> @@ -255,11 +256,18 @@ unsigned long efi_entry(void *handle, efi_system_table_t *sys_table_arg,
>>>>>     	if (!fdt_addr)
>>>>>     		pr_efi("Generating empty DTB\n");
>>>>>
>>>>> -	status = efi_load_initrd(image, ULONG_MAX,
>>>>> -				 efi_get_max_initrd_addr(dram_base, *image_addr),
>>>>> -				 &initrd_addr, &initrd_size);
>>>>> +	max_addr = efi_get_max_initrd_addr(dram_base, *image_addr);
>>>>> +	status = efi_load_initrd_devpath(&initrd_addr, &initrd_size, max_addr);
>>>>> +	if (status == EFI_SUCCESS)
>>>>> +		pr_efi("Loaded initrd from LINUX_EFI_INITRD_MEDIA_GUID device path\n");
>>>>> +	else if (status == EFI_NOT_FOUND) {
>>>>> +		status = efi_load_initrd(image, ULONG_MAX, max_addr,
>>>>> +					 &initrd_addr, &initrd_size);

If I delete the initrd that otherwise would be loaded by the
EFI_LOAD_FILE2_PROTOCOL I end up with the old behavior. So where is the
security gain provided by this patch?

Best regards

Heinrich


>>>>> +		if (status == EFI_SUCCESS)
>>>>> +			pr_efi("Loaded initrd from command line option\n");
>>>>> +	}
>>>>>     	if (status != EFI_SUCCESS)
>>>>> -		pr_efi_err("Failed initrd from command line!\n");
>>>>> +		pr_efi_err("Failed to load initrd!\n");
>>>>>
>>>>>     	efi_random_get_seed();
>>>>>
>>>>> diff --git a/drivers/firmware/efi/libstub/efi-stub-helper.c b/drivers/firmware/efi/libstub/efi-stub-helper.c
>>>>> index 8e60a39df3c5..eaf45ea749b3 100644
>>>>> --- a/drivers/firmware/efi/libstub/efi-stub-helper.c
>>>>> +++ b/drivers/firmware/efi/libstub/efi-stub-helper.c
>>>>> @@ -323,3 +323,68 @@ void efi_char16_printk(efi_char16_t *str)
>>>>>     	efi_call_proto(efi_table_attr(efi_system_table(), con_out),
>>>>>     		       output_string, str);
>>>>>     }
>>>>> +
>>>>> +static const struct {
>>>>> +	struct efi_vendor_dev_path	vendor;
>>>>> +	struct efi_generic_dev_path	end;
>>>>> +} __packed initrd_devpath = {
>>>>> +	{
>>>>> +		EFI_DEV_MEDIA,
>>>>> +		EFI_DEV_MEDIA_VENDOR,
>>>>> +		sizeof(struct efi_vendor_dev_path),
>>>>> +		LINUX_EFI_INITRD_MEDIA_GUID
>>>>> +	}, {
>>>>> +		EFI_DEV_END_PATH,
>>>>> +		EFI_DEV_END_ENTIRE,
>>>>> +		sizeof(struct efi_generic_dev_path)
>>>>> +	}
>>>>> +};
>>>>> +
>>>>> +efi_status_t efi_load_initrd_devpath(unsigned long *load_addr,
>>>>> +				     unsigned long *load_size,
>>>>> +				     unsigned long max)
>>>>> +{
>>>>> +	efi_guid_t lf2_proto_guid = EFI_LOAD_FILE2_PROTOCOL_GUID;
>>>>> +	efi_device_path_protocol_t *dp;
>>>>> +	efi_load_file2_protocol_t *lf2;
>>>>> +	unsigned long initrd_addr;
>>>>> +	unsigned long initrd_size;
>>>>> +	efi_handle_t handle;
>>>>> +	efi_status_t status;
>>>>> +
>>>>> +	if (!load_addr || !load_size)
>>>>> +		return EFI_INVALID_PARAMETER;
>>>>> +
>>>>> +	dp = (efi_device_path_protocol_t *)&initrd_devpath;
>>>>> +	status = efi_bs_call(locate_device_path, &lf2_proto_guid, &dp, &handle);
>>>>> +	if (status != EFI_SUCCESS)
>>>>> +		return status;
>>>>> +
>>>>> +	status = efi_bs_call(handle_protocol, handle, &lf2_proto_guid,
>>>>> +			     (void **)&lf2);
>>>>> +	if (status != EFI_SUCCESS)
>>>>> +		return status;
>>>>
>>>> You require here that there is a handle exposing the device path
>>>> protocol with the initrd specific device path. On the same handle the
>>>> EFI_LOAD_FILE2_PROTOCOL must be installed which will load the initrd
>>>> file when called with the same device path.
>>>>
>>>> An alternative implementation would simple loop over all instances of
>>>> the EFI_LOAD_FILE2_PROTOCOL and try to load the initrd.
>>>>
>>>> It would be worthwhile to describe the requirements on the
>>>> implementation of the EFI_LOAD_FILE2_PROTOCOL in a code comment and in
>>>> the documentation.
>>>>
>>>> Unfortunately the documentation of UEFI has been duplicated into two files:
>>>>
>>>> Documentation/arm/uefi.rst
>>>> Documentation/x86/x86_64/uefi.rst
>>>>
>>>> Best regards
>>>>
>>>> Heinrich
>>>>
>>>>> +
>>>>> +	initrd_size = 0;
>>>>> +	status = efi_call_proto(lf2, load_file,
>>>>> +				(efi_device_path_protocol_t *)&initrd_devpath,
>>>>> +				false, &initrd_size, NULL);
>>>>> +	if (status != EFI_BUFFER_TOO_SMALL)
>>>>> +		return EFI_LOAD_ERROR;
>>>>> +
>>>>> +	status = efi_allocate_pages(initrd_size, &initrd_addr, max);
>>>>> +	if (status != EFI_SUCCESS)
>>>>> +		return status;
>>>>> +
>>>>> +	status = efi_call_proto(lf2, load_file,
>>>>> +				(efi_device_path_protocol_t *)&initrd_devpath,
>>>>> +				false, &initrd_size, (void *)initrd_addr);
>>>>> +	if (status != EFI_SUCCESS) {
>>>>> +		efi_free(initrd_size, initrd_addr);
>>>>> +		return status;
>>>>> +	}
>>>>> +
>>>>> +	*load_addr = initrd_addr;
>>>>> +	*load_size = initrd_size;
>>>>> +	return EFI_SUCCESS;
>>>>> +}
>>>>> diff --git a/drivers/firmware/efi/libstub/efistub.h b/drivers/firmware/efi/libstub/efistub.h
>>>>> index 99e93fd76ec5..fbf9f9442eed 100644
>>>>> --- a/drivers/firmware/efi/libstub/efistub.h
>>>>> +++ b/drivers/firmware/efi/libstub/efistub.h
>>>>> @@ -566,6 +566,14 @@ union efi_load_file_protocol {
>>>>>     	} mixed_mode;
>>>>>     };
>>>>>
>>>>> +struct efi_vendor_dev_path {
>>>>> +	u8		type;
>>>>> +	u8		sub_type;
>>>>> +	u16		length;
>>>>> +	efi_guid_t	vendorguid;
>>>>> +	u8		vendordata[];
>>>>> +} __packed;
>>>>> +
>>>>>     void efi_pci_disable_bridge_busmaster(void);
>>>>>
>>>>>     typedef efi_status_t (*efi_exit_boot_map_processing)(
>>>>> @@ -651,4 +659,8 @@ efi_status_t efi_load_initrd(efi_loaded_image_t *image,
>>>>>     			     unsigned long *load_addr,
>>>>>     			     unsigned long *load_size);
>>>>>
>>>>> +efi_status_t efi_load_initrd_devpath(unsigned long *load_addr,
>>>>> +				     unsigned long *load_size,
>>>>> +				     unsigned long max);
>>>>> +
>>>>>     #endif
>>>>> diff --git a/drivers/firmware/efi/libstub/x86-stub.c b/drivers/firmware/efi/libstub/x86-stub.c
>>>>> index f3e2ff31b624..7f38f95676dd 100644
>>>>> --- a/drivers/firmware/efi/libstub/x86-stub.c
>>>>> +++ b/drivers/firmware/efi/libstub/x86-stub.c
>>>>> @@ -419,9 +419,20 @@ efi_status_t __efiapi efi_pe_entry(efi_handle_t handle,
>>>>>     	if (status != EFI_SUCCESS)
>>>>>     		goto fail2;
>>>>>
>>>>> -	status = efi_load_initrd(image, hdr->initrd_addr_max,
>>>>> -				 above4g ? ULONG_MAX : hdr->initrd_addr_max,
>>>>> -				 &ramdisk_addr, &ramdisk_size);
>>>>> +	/*
>>>>> +	 * The initrd loaded from the Linux initrd vendor device
>>>>> +	 * path should take precedence, as we don't want the
>>>>> +	 * [unverified] command line to override the initrd
>>>>> +	 * supplied by the [potentially verified] firmware.
>>>>> +	 */
>>>>> +	status = efi_load_initrd_devpath(&ramdisk_addr, &ramdisk_size,
>>>>> +					 above4g ? ULONG_MAX
>>>>> +						 : hdr->initrd_addr_max);
>>>>> +	if (status == EFI_NOT_FOUND)
>>>>> +		status = efi_load_initrd(image, hdr->initrd_addr_max,
>>>>> +					 above4g ? ULONG_MAX
>>>>> +						 : hdr->initrd_addr_max,
>>>>> +					 &ramdisk_addr, &ramdisk_size);
>>>>>     	if (status != EFI_SUCCESS)
>>>>>     		goto fail2;
>>>>>     	hdr->ramdisk_image = ramdisk_addr & 0xffffffff;
>>>>> @@ -732,6 +743,25 @@ struct boot_params *efi_main(efi_handle_t handle,
>>>>>     			 ((u64)boot_params->ext_cmd_line_ptr << 32));
>>>>>     	efi_parse_options((char *)cmdline_paddr);
>>>>>
>>>>> +	if (!hdr->ramdisk_size && !boot_params->ext_ramdisk_size) {
>>>>> +		unsigned long max = hdr->initrd_addr_max;
>>>>> +		unsigned long addr, size;
>>>>> +
>>>>> +		if (hdr->xloadflags & XLF_CAN_BE_LOADED_ABOVE_4G)
>>>>> +			max = ULONG_MAX;
>>>>> +
>>>>> +		status = efi_load_initrd_devpath(&addr, &size, max);
>>>>> +		if (status == EFI_SUCCESS) {
>>>>> +			hdr->ramdisk_image		= (u32)addr;
>>>>> +			hdr->ramdisk_size 		= (u32)size;
>>>>> +			boot_params->ext_ramdisk_image	= (u64)addr >> 32;
>>>>> +			boot_params->ext_ramdisk_size 	= (u64)size >> 32;
>>>>> +		} else if (status != EFI_NOT_FOUND) {
>>>>> +			efi_printk("efi_load_initrd_devpath() failed!\n");
>>>>> +			goto fail;
>>>>> +		}
>>>>> +	}
>>>>> +
>>>>>     	/*
>>>>>     	 * If the boot loader gave us a value for secure_boot then we use that,
>>>>>     	 * otherwise we ask the BIOS.
>>>>> diff --git a/include/linux/efi.h b/include/linux/efi.h
>>>>> index 9ccf313fe9de..75c83c322c40 100644
>>>>> --- a/include/linux/efi.h
>>>>> +++ b/include/linux/efi.h
>>>>> @@ -353,6 +353,7 @@ void efi_native_runtime_setup(void);
>>>>>     #define LINUX_EFI_TPM_EVENT_LOG_GUID		EFI_GUID(0xb7799cb0, 0xeca2, 0x4943,  0x96, 0x67, 0x1f, 0xae, 0x07, 0xb7, 0x47, 0xfa)
>>>>>     #define LINUX_EFI_TPM_FINAL_LOG_GUID		EFI_GUID(0x1e2ed096, 0x30e2, 0x4254,  0xbd, 0x89, 0x86, 0x3b, 0xbe, 0xf8, 0x23, 0x25)
>>>>>     #define LINUX_EFI_MEMRESERVE_TABLE_GUID		EFI_GUID(0x888eb0c6, 0x8ede, 0x4ff5,  0xa8, 0xf0, 0x9a, 0xee, 0x5c, 0xb9, 0x77, 0xc2)
>>>>> +#define LINUX_EFI_INITRD_MEDIA_GUID		EFI_GUID(0x5568e427, 0x68fc, 0x4f3d,  0xac, 0x74, 0xca, 0x55, 0x52, 0x31, 0xcc, 0x68)
>>>>>
>>>>>     /* OEM GUIDs */
>>>>>     #define DELLEMC_EFI_RCI2_TABLE_GUID		EFI_GUID(0x2d9f28a2, 0xa886, 0x456a,  0x97, 0xa8, 0xf1, 0x1e, 0xf2, 0x4f, 0xf4, 0x55)
>>>>>
>>>>
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
