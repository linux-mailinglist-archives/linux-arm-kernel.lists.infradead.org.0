Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7C21605B1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 20:12:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3aewt9UrGWQECcfIbSmtMQ4Oy4AmFUdrZ8OJ/g89RJE=; b=HloedL7n0HLHym
	lRBvM1wQWx7M4l+wpD/0ZqvtlxJKh5k5rzBlUmWCth3ZeCgWu1xtsuM8JaHaXQD20ggdlcv6wwR+C
	XwuJ9waKvJC/G1M3ruahv1jbfnx7IHgahi0IELo5GqWakaxSz88CrXJdd6oezA6c7D24coGzQmPll
	TrNM/HTXa/iGIoOAu4/rXL8MtA0nsRzFlEhdzDJOy0Zc4nwwF2ljyFl8RhG4rTdKLY71J8kZVadhy
	1WjlO7QtMq4qyr+AtZfHbHkIh9utAmgeoSPdTVr10R3byOfy/omzVvF1hMQPFEmPaw2DjkwXSa118
	dagpyGRTWzTG+t3f7mJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3PLH-0003V9-3u; Sun, 16 Feb 2020 19:12:35 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3PL7-0003UT-5n
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 19:12:27 +0000
Received: by mail-qk1-x743.google.com with SMTP id w25so14249776qki.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 11:12:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bD6rrmziSctqGG/b+du2AiEZ+/WT7QBGT4lN7okINdo=;
 b=iP1W7z13cHf0KgknW7F62ENi14GYqG0johntcLxrYg4M9Mh2fDwAGy2UN8JlZhKMvP
 jkUR6SAIo6QygRqd5+xf3p9nw43G9DmWlV7PRjk1hwEKXryxEmpmV+jsqz1QoOGD5hMe
 P2v4E1mJikpaC9TVcDb6kVWY7CUQEPWuoojP9IQbDzCSi8SqtEFBaDJp9aixAdEmHi9m
 i4VtQhnXsP0E2MYXKgITnhpagix0JU1EmsAb5ZKFCHddneYQ7/z1N7ZqAkbJKytQGYuw
 bXlU5weBQ/frcpS6qWwW9mK0l6ckcnB3ZkVBrQJgYRFzgVrnlB+Baf3rzBrWElH7Xnro
 0O3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=bD6rrmziSctqGG/b+du2AiEZ+/WT7QBGT4lN7okINdo=;
 b=QzgJNzeo2ZSt9TYlLeM2GuPbhqUHmO1D6Ibr/HaUa0WVep3b40/3rCgzNEoeG0qsE3
 tIjYwPh1wsBw1JHAKDiGjP4YjjCVKnd5x4PJANz5qmWmSpjz/floa4594IE/HiJW3ApN
 gP5whEVt/reoD5uPfHzn71pMRNhTRnvuVpguT38P/59p+izzYTKmuEgsCR+6bBTO3ZPt
 p9cPvbkudJK3iY70amFABibfiRiP8JNrCwYSD7ZR27VAVTupxdRFOivRk+HAAoEA+SxZ
 Uzk2+6Hvxwp7fTzC75yOIiaQGboUJSszWxbZ4hz7DbcEc+HYWkMhfuFSZW8erR5m5km7
 mXUA==
X-Gm-Message-State: APjAAAXqlTjeDjGIt2xlFanbZLYgx9qcNRSY/KHhpT/Ebgq1w66feRDy
 IWqcSCKsdUcv0yi1PstBKd4=
X-Google-Smtp-Source: APXvYqwfu5o0ZsmVsnXB4LYtScalYumpQCdwybEscNX+DLvQVEFk1pY7BpYLezWIlAbFeotE6QfI+w==
X-Received: by 2002:a37:6785:: with SMTP id
 b127mr10455424qkc.240.1581880341431; 
 Sun, 16 Feb 2020 11:12:21 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
 by smtp.gmail.com with ESMTPSA id g11sm6100160qtc.48.2020.02.16.11.12.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Feb 2020 11:12:21 -0800 (PST)
From: Arvind Sankar <nivedita@alum.mit.edu>
X-Google-Original-From: Arvind Sankar <arvind@rani.riverdale.lan>
Date: Sun, 16 Feb 2020 14:12:19 -0500
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH 12/18] efi: clean up config_parse_tables()
Message-ID: <20200216191219.GA589207@rani.riverdale.lan>
References: <20200216182334.8121-1-ardb@kernel.org>
 <20200216182334.8121-13-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200216182334.8121-13-ardb@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_111225_224081_7228B8C4 
X-CRM114-Status: GOOD (  20.65  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [niveditas98[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [niveditas98[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: x86@kernel.org, nivedita@alum.mit.edu, linux-efi@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Feb 16, 2020 at 07:23:28PM +0100, Ard Biesheuvel wrote:
> config_parse_tables() is a jumble of pointer arithmetic, due to the
> fact that on x86, we may be dealing with firmware whose native word
> size differs from the kernel's.
> 
> This is not a concern on other architectures, and doesn't quite
> justify the state of the code, so let's clean it up by adding a
> non-x86 code path, constifying statically allocated tables and
> replacing preprocessor conditionals with IS_ENABLED() checks.
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  arch/ia64/kernel/efi.c          |  3 +-
>  arch/x86/platform/efi/efi.c     |  6 +--
>  drivers/firmware/efi/arm-init.c |  5 +--
>  drivers/firmware/efi/efi.c      | 47 ++++++++++----------
>  include/linux/efi.h             |  5 ++-
>  5 files changed, 32 insertions(+), 34 deletions(-)
> 
> diff --git a/arch/ia64/kernel/efi.c b/arch/ia64/kernel/efi.c
> index 3b5cf551489c..f69f3fe0532e 100644
> --- a/arch/ia64/kernel/efi.c
> +++ b/arch/ia64/kernel/efi.c
> @@ -56,7 +56,7 @@ unsigned long __initdata esi_phys = EFI_INVALID_TABLE_ADDR;
>  unsigned long hcdp_phys = EFI_INVALID_TABLE_ADDR;
>  unsigned long sal_systab_phys = EFI_INVALID_TABLE_ADDR;
>  
> -static __initdata efi_config_table_type_t arch_tables[] = {
> +static const efi_config_table_type_t arch_tables[] __initconst = {
>  	{ESI_TABLE_GUID, "ESI", &esi_phys},
>  	{HCDP_TABLE_GUID, "HCDP", &hcdp_phys},
>  	{MPS_TABLE_GUID, "MPS", &mps_phys},
> @@ -533,7 +533,6 @@ efi_init (void)
>  
>  	if (efi_config_parse_tables(__va(efi_systab->tables),
>  				    efi_systab->nr_tables,
> -				    sizeof(efi_config_table_t),
>  				    arch_tables) != 0)
>  		return;
>  
> diff --git a/arch/x86/platform/efi/efi.c b/arch/x86/platform/efi/efi.c
> index 26d905e6b579..f7025b9075b4 100644
> --- a/arch/x86/platform/efi/efi.c
> +++ b/arch/x86/platform/efi/efi.c
> @@ -60,7 +60,7 @@ static u64 efi_systab_phys __initdata;
>  static unsigned long prop_phys = EFI_INVALID_TABLE_ADDR;
>  static unsigned long uga_phys = EFI_INVALID_TABLE_ADDR;
>  
> -static efi_config_table_type_t arch_tables[] __initdata = {
> +static const efi_config_table_type_t arch_tables[] __initconst = {
>  	{EFI_PROPERTIES_TABLE_GUID, "PROP", &prop_phys},
>  	{UGA_IO_PROTOCOL_GUID, "UGA", &uga_phys},
>  #ifdef CONFIG_X86_UV
> @@ -434,7 +434,7 @@ static int __init efi_systab_init(u64 phys)
>  	return 0;
>  }
>  
> -static int __init efi_config_init(efi_config_table_type_t *arch_tables)
> +static int __init efi_config_init(const efi_config_table_type_t *arch_tables)
>  {
>  	void *config_tables;
>  	int sz, ret;
> @@ -457,7 +457,7 @@ static int __init efi_config_init(efi_config_table_type_t *arch_tables)
>  		return -ENOMEM;
>  	}
>  
> -	ret = efi_config_parse_tables(config_tables, efi.systab->nr_tables, sz,
> +	ret = efi_config_parse_tables(config_tables, efi.systab->nr_tables,
>  				      arch_tables);
>  
>  	early_memunmap(config_tables, efi.systab->nr_tables * sz);
> diff --git a/drivers/firmware/efi/arm-init.c b/drivers/firmware/efi/arm-init.c
> index a656bfcd7e27..d1f44c847841 100644
> --- a/drivers/firmware/efi/arm-init.c
> +++ b/drivers/firmware/efi/arm-init.c
> @@ -55,7 +55,7 @@ static phys_addr_t efi_to_phys(unsigned long addr)
>  
>  static __initdata unsigned long screen_info_table = EFI_INVALID_TABLE_ADDR;
>  
> -static __initdata efi_config_table_type_t arch_tables[] = {
> +static const efi_config_table_type_t arch_tables[] __initconst = {
>  	{LINUX_EFI_ARM_SCREEN_INFO_TABLE_GUID, NULL, &screen_info_table},
>  	{NULL_GUID, NULL, NULL}
>  };
> @@ -85,7 +85,7 @@ static void __init init_screen_info(void)
>  
>  static int __init uefi_init(void)
>  {
> -	void *config_tables;
> +	efi_config_table_t *config_tables;
>  	size_t table_size;
>  	int retval;
>  
> @@ -118,7 +118,6 @@ static int __init uefi_init(void)
>  		goto out;
>  	}
>  	retval = efi_config_parse_tables(config_tables, efi.systab->nr_tables,
> -					 sizeof(efi_config_table_t),
>  					 arch_tables);
>  
>  	if (!retval)
> diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
> index 2bfd6c0806ce..db1fe765380f 100644
> --- a/drivers/firmware/efi/efi.c
> +++ b/drivers/firmware/efi/efi.c
> @@ -460,7 +460,7 @@ void __init efi_mem_reserve(phys_addr_t addr, u64 size)
>  	efi_arch_mem_reserve(addr, size);
>  }
>  
> -static __initdata efi_config_table_type_t common_tables[] = {
> +static const efi_config_table_type_t common_tables[] __initconst = {
>  	{ACPI_20_TABLE_GUID, "ACPI 2.0", &efi.acpi20},
>  	{ACPI_TABLE_GUID, "ACPI", &efi.acpi},
>  	{SMBIOS_TABLE_GUID, "SMBIOS", &efi.smbios},
> @@ -477,9 +477,9 @@ static __initdata efi_config_table_type_t common_tables[] = {
>  	{NULL_GUID, NULL, NULL},
>  };
>  
> -static __init int match_config_table(efi_guid_t *guid,
> +static __init int match_config_table(const efi_guid_t *guid,
>  				     unsigned long table,
> -				     efi_config_table_type_t *table_types)
> +				     const efi_config_table_type_t *table_types)
>  {
>  	int i;
>  
> @@ -498,39 +498,38 @@ static __init int match_config_table(efi_guid_t *guid,
>  	return 0;
>  }
>  
> -int __init efi_config_parse_tables(void *config_tables, int count, int sz,
> -				   efi_config_table_type_t *arch_tables)
> +int __init efi_config_parse_tables(const efi_config_table_t *config_tables,
> +				   int count,
> +				   const efi_config_table_type_t *arch_tables)
>  {
> -	void *tablep;
> +	const efi_config_table_64_t *tbl64 = (void *)config_tables;
> +	const efi_config_table_32_t *tbl32 = (void *)config_tables;
> +	const efi_guid_t *guid;
> +	unsigned long table;
>  	int i;
>  
> -	tablep = config_tables;
>  	pr_info("");
>  	for (i = 0; i < count; i++) {
> -		efi_guid_t guid;
> -		unsigned long table;
> -
> -		if (efi_enabled(EFI_64BIT)) {
> -			u64 table64;
> -			guid = ((efi_config_table_64_t *)tablep)->guid;
> -			table64 = ((efi_config_table_64_t *)tablep)->table;
> -			table = table64;
> -#ifndef CONFIG_64BIT
> -			if (table64 >> 32) {
> +		if (!IS_ENABLED(CONFIG_X86)) {
> +			guid = &config_tables[i].guid;
> +			table = (unsigned long)config_tables[i].table;
> +		} else if (efi_enabled(EFI_64BIT)) {
> +			guid = &tbl64[i].guid;
> +			table = tbl64[i].table;
> +
> +			if (IS_ENABLED(CONFIG_X64_32) &&
					      ^^^ typo, should be X86

> +			    tbl64[i].table > U32_MAX) {
>  				pr_cont("\n");
>  				pr_err("Table located above 4GB, disabling EFI.\n");
>  				return -EINVAL;
>  			}
> -#endif
>  		} else {
> -			guid = ((efi_config_table_32_t *)tablep)->guid;
> -			table = ((efi_config_table_32_t *)tablep)->table;
> +			guid = &tbl32[i].guid;
> +			table = tbl32[i].table;
>  		}
>  
> -		if (!match_config_table(&guid, table, common_tables))
> -			match_config_table(&guid, table, arch_tables);
> -
> -		tablep += sz;
> +		if (!match_config_table(guid, table, common_tables))
> +			match_config_table(guid, table, arch_tables);
>  	}
>  	pr_cont("\n");
>  	set_bit(EFI_CONFIG_TABLES, &efi.flags);
> diff --git a/include/linux/efi.h b/include/linux/efi.h
> index d61c25fd5824..99a7fcbe5e9b 100644
> --- a/include/linux/efi.h
> +++ b/include/linux/efi.h
> @@ -613,8 +613,9 @@ extern void __init efi_esrt_init(void);
>  #else
>  static inline void efi_esrt_init(void) { }
>  #endif
> -extern int efi_config_parse_tables(void *config_tables, int count, int sz,
> -				   efi_config_table_type_t *arch_tables);
> +extern int efi_config_parse_tables(const efi_config_table_t *config_tables,
> +				   int count,
> +				   const efi_config_table_type_t *arch_tables);
>  extern int efi_systab_check_header(const efi_table_hdr_t *systab_hdr,
>  				   int min_major_version);
>  extern void efi_systab_report_header(const efi_table_hdr_t *systab_hdr,
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
