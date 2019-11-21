Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C3F10579A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 17:55:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ywn4DgLS0B/KdidlPLBJnGwCeWWnOJpNK992QgyoY/w=; b=YQPyi/F3zmfDZf
	ipqNU7JvVUqmSP+TtSh6cauGWvCsCfs4jIu0m90rOW5gWVOxP3NrNCWmmKAJdw+Toi9/bhTNRDMWT
	8OABtyCIGbk3U8Zb/ytcWP8/xLhZ7E7Z3PSj3NDxwKWUXlwnWi90amvxbQz9dPrNkSB6In1f6lTIN
	3vXsxtrKk+Y8CmBYzmRsysYFtaNUcHSRvdS3OJBQWvEO2m89yp2YeuSyDCLi7tD5bNkNBvTGflr5H
	I584YYkoNzFMpFej562RRgP/wEreXyFk4kmqqCsaDzkqjR3lT+hlDvHRZme65XpEAExBjx6MeD5gT
	XlPuTjZAjrjjsiP6Jz/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXpjf-0000I7-S9; Thu, 21 Nov 2019 16:55:15 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXpjQ-00009M-06; Thu, 21 Nov 2019 16:55:01 +0000
Received: by mail-qt1-x841.google.com with SMTP id r20so4372151qtp.13;
 Thu, 21 Nov 2019 08:54:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=FTi7Dvg/d0dXm7xuFygWnPv5XbbIL8YDOlUOqtHAZRA=;
 b=WkEf5jcqS8zxRM9xUmSno444pUXfkVM6nWtzbblogn4kR7zBQ11SzgjmNfk6Xyk4Kh
 AzZZ5sRpze5v2FtJw8Zd5phltv2mzwd4dH2Oa0IRMVLfwylXfP3HVlA0SIcHA32/Wxai
 7JIP8+kswZRVSjf8EIIStfboZYf/JpdBk9HAE/+Lwftshy1+Kvg7n/s3k2MCaydU1zny
 tTwqmHTmAhVcKzIbpbzkBmlkIe7gsDD0xmRVFqy6MrzSNtajvgBRLOEC0qGjd5uzmmXE
 o7RaeBzWJxHkUKVx4Cibwrrg7jgORmZvwTtCb1VYojsnjgEXuBCjaf99dfAyufhx0jEW
 1+sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FTi7Dvg/d0dXm7xuFygWnPv5XbbIL8YDOlUOqtHAZRA=;
 b=qW4Kzg+L8b3j69oDrMFMcRXbffsLUrOdfTETFZv3zGifSA65zTsRD/FJuKm5LidlvA
 GlsONtxLjOomXLLkjheNCVLMuADc4y2zCw0GArmMo/uTTXnLkgoxtjYCmGg2NKPeC4Hm
 PGo+w883ub16a2WtcR9v0QYciK+9Md5upq2hDo99Wr6Q2sm4/Aqpt435fPuZjzpr60Bm
 gTh1jk78QjzNOINN7+FyU7KxPpUI63Fcnvo24BmAbqXCfNwzee2LhIwBgQ3+CSDOdMCc
 ZAA9wMk3DmrSUqmbHZk85jPXr5qUCUkbHPjP5wmdoUYlkcWLCk2eagOZoVf60ZETWp/0
 yHBQ==
X-Gm-Message-State: APjAAAXdXH/Ysj9ww8WlaT3B536bbJoRV/n6vF7I54WiVhUk0JKnsUlE
 3CeidbhiqqzvD/DrtkBEGMkSaII=
X-Google-Smtp-Source: APXvYqy7G4H3+ldsE0l+ou4E9ikRKJclTXReeBsg5pGLjWBFRTaj+kYv7bzCYzaQTbN5DU1QZLeZBQ==
X-Received: by 2002:aed:248e:: with SMTP id t14mr9953119qtc.264.1574355298616; 
 Thu, 21 Nov 2019 08:54:58 -0800 (PST)
Received: from gabell (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id d145sm1616978qkc.120.2019.11.21.08.54.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 21 Nov 2019 08:54:57 -0800 (PST)
Date: Thu, 21 Nov 2019 11:54:51 -0500
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-efi@vger.kernel.org
Subject: Re: [RFC PATCH v2] efi: arm64: Introduce
 /sys/firmware/efi/memreserve to tell the persistent pages
Message-ID: <20191121165451.ddc4e7rz5swvoirc@gabell>
References: <20191114161019.8735-1-msys.mizuma@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191114161019.8735-1-msys.mizuma@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_085500_042954_402A0696 
X-CRM114-Status: GOOD (  23.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, d.hatayama@fujitsu.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 11:10:19AM -0500, Masayoshi Mizuma wrote:
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
> Introduce /sys/firmware/efi/memreserve to tell the pages pointed by
> efi.mem_reserve so that kexec can avoid the area to locate initrd.
> 
> Signed-off-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
> ---
>  drivers/firmware/efi/efi.c | 41 +++++++++++++++++++++++++++++++++++++-
>  1 file changed, 40 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
> index 0b6b0c19a..07812d697 100644
> --- a/drivers/firmware/efi/efi.c
> +++ b/drivers/firmware/efi/efi.c
> @@ -149,6 +149,45 @@ static ssize_t systab_show(struct kobject *kobj,
>  
>  static struct kobj_attribute efi_attr_systab = __ATTR_RO_MODE(systab, 0400);
>  
> +static struct linux_efi_memreserve *efi_memreserve_root __ro_after_init;

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
> +		}
> +		memunmap(rsv);
> +	}
> +
> +	return str - buf;
> +}
> +
> +static struct kobj_attribute efi_attr_memreserve =
> +			__ATTR_RO_MODE(memreserve, 0444);
> +

I think it's better to put above between #ifdef CONFIG_KEXEC and #endif
because it's useful for only kexec...

>  #define EFI_FIELD(var) efi.var
>  
>  #define EFI_ATTR_SHOW(name) \
> @@ -180,6 +219,7 @@ static struct attribute *efi_subsys_attrs[] = {
>  	&efi_attr_runtime.attr,
>  	&efi_attr_config_table.attr,
>  	&efi_attr_fw_platform_size.attr,

> +	&efi_attr_memreserve.attr,

Same as.
I'll post the patch to change above and will remove the RFC.

Thanks,
Masa

>  	NULL,
>  };
>  
> @@ -964,7 +1004,6 @@ int efi_status_to_err(efi_status_t status)
>  }
>  
>  static DEFINE_SPINLOCK(efi_mem_reserve_persistent_lock);
> -static struct linux_efi_memreserve *efi_memreserve_root __ro_after_init;
>  
>  static int __init efi_memreserve_map_root(void)
>  {
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
