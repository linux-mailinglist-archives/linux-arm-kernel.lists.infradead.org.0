Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D6410D5AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 13:25:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yT/EVmmyKoKf50t6LOiRKU6JI175E9UMLFnd+cv85a8=; b=YZQkAXDGgu9ho1
	VPVPtFHraOcP598WQl0+dLYwvkprXNfOekVKpYwxly4kHjnaJ/XD9mQqtnQvv2LKaPUngIuF3s7+q
	PN6uFk3SGIrXC4zA+cJGUEDlcNun9ucqS+8uV7mCGHjPprueLvRrRE/ansyKjhFLsMw+gjcHfvnSS
	s5MoN9wpT3gfeNNk6agG6NlO7AQNNfuuamVeutmI01f4s4ZIYEtsdcfygbGV4Uo+bu4owBiPGEYs/
	fWwJcttExNS9HN3iF38uHXmEnuGMNSJpOYV02ubaJKyFASRuWou0jrmioEQA+eHfcV4nGhRUpjyhW
	akZt6n3L1M+TsNywWrNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iafLQ-0007DV-6X; Fri, 29 Nov 2019 12:25:56 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iafLC-0007C1-O1; Fri, 29 Nov 2019 12:25:44 +0000
Received: by mail-wr1-x442.google.com with SMTP id z3so34935889wru.3;
 Fri, 29 Nov 2019 04:25:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HzDJdmyVTI7r6DmGOcr7399TcwKpcyDjXaPwa+e5WOI=;
 b=YkjXhxR0fVMSnhGY0nS/HWfhmmt6fkq0Ev+OjVap+0Mwh14VQrlXkrvXUdUG5aWRW6
 0p0AC9V24J7sohHrSNZSheUEa6fMy0SvD83xnizJRnrSjQndiVG/JpTeU8QTieulany3
 80h9yu2sjX3cbUrwIBwWEmgFGt1ZAi3NxEv76RNBqx1ouuPzOwKHWm6b4AHoiys6s2uc
 bIrtMJa8l/pZFStkFPcS9uOhipqZJebUdZDqtUaQItp94IqOtFsiQI6bwRneU/j6/BhV
 yd0JMSNZKyOptFKtdcWNiKAGQ2ZOObwMus8yCS5Hvld3KpUEWzYWwjX3Z9w8UaYSxwEg
 E3UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=HzDJdmyVTI7r6DmGOcr7399TcwKpcyDjXaPwa+e5WOI=;
 b=dazUny9szV8W+n7ep7pHq0MBjc9VbEvngK5o+dHvsP22MehmVMXTY99WDesEwis8eo
 gGn2v8L/zqFqz454Pm9otA4wlTNPXhbZBQdknOOYb8w/z2OtxKnBFHhW8MS8VMSZ5JYY
 5U4rsHr9LsxjL23XPf679Ghp3UCnHsbPsawmpTmKrtRFXLI9c/KDSblfswTddcmBg/h4
 M9/WrKRcuD1fTR8lxqVjKK4pz7/Z9txkF8o5pyQgR1UdIjYpa/Wedyx8Q1uDK11HjMPi
 Qw+ZbmbFp43Q1yAL+AjHmFCmGnsv7dnTOCNIXQVLDQYuQIu5m2dy7fdC9yIxvWbAxXnO
 I2pw==
X-Gm-Message-State: APjAAAU7zt5s12I7k3oDQzlA5Zo0Qc3TvQFjwLuBZ8UwbcPXbXETkcos
 7kbLQ6XpbeZqyvE5UDTJYwU=
X-Google-Smtp-Source: APXvYqyriBNEHZxUfG2NtnZXD0fu32QBVJ+O2gVExEelTa0r8s2/twugJmFsb/IjAhAX94bDyExSYA==
X-Received: by 2002:adf:df8e:: with SMTP id z14mr52987511wrl.190.1575030338636; 
 Fri, 29 Nov 2019 04:25:38 -0800 (PST)
Received: from ziggy.stardust ([95.169.224.182])
 by smtp.gmail.com with ESMTPSA id q5sm13440244wmc.27.2019.11.29.04.25.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 29 Nov 2019 04:25:37 -0800 (PST)
Subject: Re: [PATCH] efi: arm64: Introduce /sys/firmware/efi/memreserve to
 tell the persistent pages
To: Masayoshi Mizuma <msys.mizuma@gmail.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-efi@vger.kernel.org
References: <20191125184944.15556-1-msys.mizuma@gmail.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <c27b6f69-befc-0c88-24b9-7b89d4f6e5a6@gmail.com>
Date: Fri, 29 Nov 2019 13:25:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191125184944.15556-1-msys.mizuma@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_042542_809386_A56B9043 
X-CRM114-Status: GOOD (  23.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, d.hatayama@fujitsu.com,
 Eric Biederman <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 25/11/2019 19:49, Masayoshi Mizuma wrote:
> From: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
> 
> kexec reboot stops in early boot sequence because efi_config_parse_tables()
> refers garbage data. We can see the log with memblock=debug kernel option:
> 
>   efi:  ACPI 2.0=0x9821790014  PROP=0x8757f5c0  SMBIOS 3.0=0x9820740000  MEMRESERVE=0x9820bfdc58
>   memblock_reserve: [0x0000009820bfdc58-0x0000009820bfdc67] efi_config_parse_tables+0x228/0x278
>   memblock_reserve: [0x0000000082760000-0x00000000324d07ff] efi_config_parse_tables+0x228/0x278
>   memblock_reserve: [0xcc4f84ecc0511670-0x5f6e5214a7fd91f9] efi_config_parse_tables+0x244/0x278
>   memblock_reserve: [0xd2fd4144b9af693d-0xad0c1db1086f40a2] efi_config_parse_tables+0x244/0x278
>   memblock_reserve: [0x0c719bb159b1fadc-0x5aa6e62a1417ce12] efi_config_parse_tables+0x244/0x278
>   ...
> 
> That happens because 0x82760000, struct linux_efi_memreserve, is destroyed.
> 0x82760000 is pointed from efi.mem_reseve, and efi.mem_reserve points the
> head page of LPI pending table and LPI property table which are allocated by
> gic_reserve_range().
> 
> The destroyer is kexec. kexec locates the initrd to the area:
> 
>   ]# kexec -d -l /boot/vmlinuz-5.4.0-rc7 /boot/initramfs-5.4.0-rc7.img --reuse-cmdline
>   ...
>   initrd: base 82290000, size 388dd8ah (59301258)
>   ...
> 
> From dynamic debug log. initrd is located in segment[1]:
>   machine_kexec_prepare:70:
>     kexec kimage info:
>       type:        0
>       start:       85b30680
>       head:        0
>       nr_segments: 4
>         segment[0]: 0000000080480000 - 0000000082290000, 0x1e10000 bytes, 481 pages
>         segment[1]: 0000000082290000 - 0000000085b20000, 0x3890000 bytes, 905 pages
>         segment[2]: 0000000085b20000 - 0000000085b30000, 0x10000 bytes, 1 pages
>         segment[3]: 0000000085b30000 - 0000000085b40000, 0x10000 bytes, 1 pages
> 
> kexec searches the memory region to locate initrd through
> "System RAM" in /proc/iomem. The pending tables are included in
> "System RAM" because they are allocated by alloc_pages(), so kexec
> destroys the LPI pending tables.
> 

Doesn't that mean that you haven't enough memory reserved so that you have to
fallback to allocate it via __get_free_page()?


> Introduce /sys/firmware/efi/memreserve to tell the pages pointed by
> efi.mem_reserve so that kexec can avoid the area to locate initrd.
> 

Doesn't that need a patch for kexec-tools to actually take this into account?

> Signed-off-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
> ---
>  drivers/firmware/efi/efi.c | 45 +++++++++++++++++++++++++++++++++++++-
>  1 file changed, 44 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
> index e98bbf8e5..0aa07cc09 100644
> --- a/drivers/firmware/efi/efi.c
> +++ b/drivers/firmware/efi/efi.c
> @@ -141,6 +141,47 @@ static ssize_t systab_show(struct kobject *kobj,
>  
>  static struct kobj_attribute efi_attr_systab = __ATTR_RO_MODE(systab, 0400);
>  
> +static struct linux_efi_memreserve *efi_memreserve_root __ro_after_init;
> +#ifdef CONFIG_KEXEC
> +static ssize_t memreserve_show(struct kobject *kobj,
> +			   struct kobj_attribute *attr, char *buf)
> +{
> +	struct linux_efi_memreserve *rsv;
> +	phys_addr_t start, end;
> +	unsigned long prsv;
> +	char *str = buf;
> +	int count, i;
> +
> +	if (!kobj || !buf)
> +		return -EINVAL;
> +
> +	if ((efi_memreserve_root == (void *)ULONG_MAX) ||
> +			(!efi_memreserve_root))
> +		return -ENODEV;
> +
> +	for (prsv = efi_memreserve_root->next; prsv; prsv = rsv->next) {
> +		rsv = memremap(prsv, sizeof(*rsv), MEMREMAP_WB);
> +		if (!rsv) {
> +			pr_err("Could not map efi_memreserve\n");
> +			return -ENOMEM;
> +		}
> +		count = atomic_read(&rsv->count);
> +		for (i = 0; i < count; i++) {
> +			start = rsv->entry[i].base;
> +			end = start + rsv->entry[i].size - 1;
> +
> +			str += sprintf(str, "%pa-%pa\n", &start, &end);

What happens if we provide a buf which is too small?

Regards,
Matthias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
