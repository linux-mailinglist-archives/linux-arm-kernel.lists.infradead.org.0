Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BAD10F47B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 02:29:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7NAGodlibYV+J/87q4PTu90eFOyx4L7qfUg8Ch51AiY=; b=T5B8g+Y4FqqEal
	51v3nM6H5LRJlZieo+boNHkmDxQ1+Z8RPhqxFqP0wkv/kvE/dNoKpDjciZBEl0es+C9Y9NW2TQ4QV
	lYlAuwPe1U0KvU+gy9xVrkopcMT9XEznyDxWrZOngBHKwUvPmHL4djwI2Y6/7EAYhA8jPYdUAbQl9
	PhVOuBxQQ4ppQB/8A74RirqaAwHDXe2SprzvUNt+/Ka12gwcbQ1+Xy+jr/AizXkMEHK6P9TDTntpL
	Ic+XmcS1u0X/aSKtvxfyvyvqTixdv5xufDz2L3VlJvf7tBHkux2h/owOGQPD8iVcydIbzm1iACEtv
	2eUz3uScjyqYEoA8gY7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibx00-0001tT-J4; Tue, 03 Dec 2019 01:29:08 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibwzt-0001st-Oq; Tue, 03 Dec 2019 01:29:03 +0000
Received: by mail-qv1-xf44.google.com with SMTP id d17so814498qvs.2;
 Mon, 02 Dec 2019 17:29:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=RNgvM+k/lpMnH+XOjhYxTq6D1hp93U5fCuPYP6yw85g=;
 b=KH4tvJaQ/O2fFG29Wj3m7IMzniYRtYmBaYBlUN7XdIVedhY/rE9NZfP+UtUgvZ2Jra
 VcRNQylQKNUWRAd7gtTvbTz2tYZzugLGJebNmlRUQ1hpy77M2PRbbGtH6k65vtyt2CNR
 lBI46czPccfxmdstgc6oawjKOKysx1pGcNcbeWzov94SLzQmp12NoGBQB+bFLXEJlc7z
 zkSUCYBvH9cyUvyYFyQG3HhjdWjS8x4hv3o5315BMOM5uAys7n5CUflodao48Wd/nKDU
 tVE7C/d6sY94BdDik+UqgB0ZdgoEVlOhktW5xtxxggzm9BNFpNWGFR/YJxcq/qI2Rqfy
 L7Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=RNgvM+k/lpMnH+XOjhYxTq6D1hp93U5fCuPYP6yw85g=;
 b=KrfHyuBwPHlVbSqVsDxSIPPaPLf4eFx/fugUa/3zvd5s+s4tGjBoi5fAbANqjbBaqL
 0soSofbJnpn4KUKa6nMQ4emI8kefpBDAUSt1dRJ/9M/c/pSE0F3VyEgLXewnd9/qOJSi
 c1WnJqy387loI685MI6UexPFqzEFjPhaopS7iJ2ywtCLvvmKHWMgm2on2ZivJuhQmO+y
 gFzrmU26xSRTIrKwdg0RJ+o7C0Rnr5qQGmy69Ph2COYI+TRELDrmIMwKxMoam8ygUtsl
 7HqcsL/pHN/wuTltcQ/ER0gQqNxyh4dDK7cN597ZGsgRJnP2nDaSkSgIDTvtHjWwU8wG
 KsyQ==
X-Gm-Message-State: APjAAAVbAzpnm7MVlr6kfkZXnDwxWS/T1T1w9hOI5HbrujMgNCHloZOo
 q/NLmuAnUkktypoANwTIDg==
X-Google-Smtp-Source: APXvYqzu3dZjpDk9O/4U9qT5DGI9leNoMi9/ywTWw0jInOxp/9Jd8Z43U+tV2M8UfLnAF8ODQwxJgw==
X-Received: by 2002:a0c:89f2:: with SMTP id 47mr2677364qvs.43.1575336540308;
 Mon, 02 Dec 2019 17:29:00 -0800 (PST)
Received: from gabell
 (209-6-122-159.s2973.c3-0.arl-cbr1.sbo-arl.ma.cable.rcncustomer.com.
 [209.6.122.159])
 by smtp.gmail.com with ESMTPSA id y18sm762179qtn.11.2019.12.02.17.28.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 02 Dec 2019 17:28:58 -0800 (PST)
Date: Mon, 2 Dec 2019 20:28:53 -0500
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [PATCH] efi: arm64: Introduce /sys/firmware/efi/memreserve to
 tell the persistent pages
Message-ID: <20191203012853.hwnbs6dfcbnkbtgp@gabell>
References: <20191125184944.15556-1-msys.mizuma@gmail.com>
 <c27b6f69-befc-0c88-24b9-7b89d4f6e5a6@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c27b6f69-befc-0c88-24b9-7b89d4f6e5a6@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_172901_834688_D7164CF9 
X-CRM114-Status: GOOD (  25.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>, linux-efi@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Eric Biederman <ebiederm@xmission.com>,
 d.hatayama@fujitsu.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 29, 2019 at 01:25:36PM +0100, Matthias Brugger wrote:
> 
> 
> On 25/11/2019 19:49, Masayoshi Mizuma wrote:
> > From: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
> > 
> > kexec reboot stops in early boot sequence because efi_config_parse_tables()
> > refers garbage data. We can see the log with memblock=debug kernel option:
> > 
> >   efi:  ACPI 2.0=0x9821790014  PROP=0x8757f5c0  SMBIOS 3.0=0x9820740000  MEMRESERVE=0x9820bfdc58
> >   memblock_reserve: [0x0000009820bfdc58-0x0000009820bfdc67] efi_config_parse_tables+0x228/0x278
> >   memblock_reserve: [0x0000000082760000-0x00000000324d07ff] efi_config_parse_tables+0x228/0x278
> >   memblock_reserve: [0xcc4f84ecc0511670-0x5f6e5214a7fd91f9] efi_config_parse_tables+0x244/0x278
> >   memblock_reserve: [0xd2fd4144b9af693d-0xad0c1db1086f40a2] efi_config_parse_tables+0x244/0x278
> >   memblock_reserve: [0x0c719bb159b1fadc-0x5aa6e62a1417ce12] efi_config_parse_tables+0x244/0x278
> >   ...
> > 
> > That happens because 0x82760000, struct linux_efi_memreserve, is destroyed.
> > 0x82760000 is pointed from efi.mem_reseve, and efi.mem_reserve points the
> > head page of LPI pending table and LPI property table which are allocated by
> > gic_reserve_range().
> > 
> > The destroyer is kexec. kexec locates the initrd to the area:
> > 
> >   ]# kexec -d -l /boot/vmlinuz-5.4.0-rc7 /boot/initramfs-5.4.0-rc7.img --reuse-cmdline
> >   ...
> >   initrd: base 82290000, size 388dd8ah (59301258)
> >   ...
> > 
> > From dynamic debug log. initrd is located in segment[1]:
> >   machine_kexec_prepare:70:
> >     kexec kimage info:
> >       type:        0
> >       start:       85b30680
> >       head:        0
> >       nr_segments: 4
> >         segment[0]: 0000000080480000 - 0000000082290000, 0x1e10000 bytes, 481 pages
> >         segment[1]: 0000000082290000 - 0000000085b20000, 0x3890000 bytes, 905 pages
> >         segment[2]: 0000000085b20000 - 0000000085b30000, 0x10000 bytes, 1 pages
> >         segment[3]: 0000000085b30000 - 0000000085b40000, 0x10000 bytes, 1 pages
> > 
> > kexec searches the memory region to locate initrd through
> > "System RAM" in /proc/iomem. The pending tables are included in
> > "System RAM" because they are allocated by alloc_pages(), so kexec
> > destroys the LPI pending tables.
> > 
> 
> Doesn't that mean that you haven't enough memory reserved so that you have to
> fallback to allocate it via __get_free_page()?

That's a not fallback allocation. The pending tables and also property
tables are allocated by alloc_pages() on its_allocate_prop_table() and
its_allocate_pending_table().

> 
> 
> > Introduce /sys/firmware/efi/memreserve to tell the pages pointed by
> > efi.mem_reserve so that kexec can avoid the area to locate initrd.
> > 
> 
> Doesn't that need a patch for kexec-tools to actually take this into account?

Yes, we need a patch for kexec-tools as well. I'm preparing the kexec
patch.

> 
> > Signed-off-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
> > ---
> >  drivers/firmware/efi/efi.c | 45 +++++++++++++++++++++++++++++++++++++-
> >  1 file changed, 44 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
> > index e98bbf8e5..0aa07cc09 100644
> > --- a/drivers/firmware/efi/efi.c
> > +++ b/drivers/firmware/efi/efi.c
> > @@ -141,6 +141,47 @@ static ssize_t systab_show(struct kobject *kobj,
> >  
> >  static struct kobj_attribute efi_attr_systab = __ATTR_RO_MODE(systab, 0400);
> >  
> > +static struct linux_efi_memreserve *efi_memreserve_root __ro_after_init;
> > +#ifdef CONFIG_KEXEC
> > +static ssize_t memreserve_show(struct kobject *kobj,
> > +			   struct kobj_attribute *attr, char *buf)
> > +{
> > +	struct linux_efi_memreserve *rsv;
> > +	phys_addr_t start, end;
> > +	unsigned long prsv;
> > +	char *str = buf;
> > +	int count, i;
> > +
> > +	if (!kobj || !buf)
> > +		return -EINVAL;
> > +
> > +	if ((efi_memreserve_root == (void *)ULONG_MAX) ||
> > +			(!efi_memreserve_root))
> > +		return -ENODEV;
> > +
> > +	for (prsv = efi_memreserve_root->next; prsv; prsv = rsv->next) {
> > +		rsv = memremap(prsv, sizeof(*rsv), MEMREMAP_WB);
> > +		if (!rsv) {
> > +			pr_err("Could not map efi_memreserve\n");
> > +			return -ENOMEM;
> > +		}
> > +		count = atomic_read(&rsv->count);
> > +		for (i = 0; i < count; i++) {
> > +			start = rsv->entry[i].base;
> > +			end = start + rsv->entry[i].size - 1;
> > +
> > +			str += sprintf(str, "%pa-%pa\n", &start, &end);
> 
> What happens if we provide a buf which is too small?

Good point.
The strings may exceed the buffer size (PAGE_SIZE) in case
efi_memreserve_root has a lot of entries.
It might be better to use seq_printf() to show efi_memreserve_root...
I'll move the file from a sysfs entry to a proc entry so that 
efi_memreserve_root can be handled by seq_printf().

Thanks,
Masa

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
