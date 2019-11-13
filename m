Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA66FB90C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 20:43:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DRnOlUpmboWSD3F1FbQ+TsU+YwJbvYiDYbKJyGHIcqY=; b=eJp70akaSKePVL
	myVoEZSCNvre+Po6fuSYs7aL020tp0CwAWI8vURJ+w3o98FI1X7/j+E7FaUquCVyEN4g+JbJLCvtm
	jpMzsn6vCiXyu56Lqx+h/2x21XjhfCHPdRj1tC3v02JszCYfxsUKI628fEb1r4Jm9O4jqPZ3hTJpf
	1a+/eqvODC7er806qKoWbkpsBNzB3NSfL+n00OjfUOZEORmr4B1ijQoXQvMVcnTUoLwXtnJEx2jf5
	Gza4Y4CRv2bjSQEfQHFtog7a6xAJZJRHwF4vdXJYWJ+ScjwkcggtFDikgRIxfDlBjSgof1GMRCS9t
	DQ2yapfxHy22J5lzEUHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUyYA-0003tN-Fx; Wed, 13 Nov 2019 19:43:34 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUyY1-0003sr-BH; Wed, 13 Nov 2019 19:43:27 +0000
Received: by mail-qt1-x843.google.com with SMTP id p20so3924547qtq.5;
 Wed, 13 Nov 2019 11:43:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LTpeEfUp2aDF2PuVPItGfVBk3+wf98fXG2ncSzi/Vdk=;
 b=tXz+MujYAez3+OpD7+2t674yspYgv6gqgmmgqG8P5mkHlKw1lGZKIqdaqMlTltismO
 2MSmHXgtSsuTAdXEMg3NxWRmaf4ifUEYqu/nSDxOCaefc5XLN+sOJyC67lhgdNiFDghd
 ewDgcka08ijUkVgD7/CRLUykL00f+Ru6rlWkThupHKl//CGc5AZfLQwSHDyOfIk3YYFM
 QpZjRPNjfFhtMF+PCZU0L4CmvrEGwsO03YVUwTMWS2LO12+FhB8sjYHWO05KdPMTAajC
 m8X3EOg5jyLpiga9HQhExsqG+pMPjeyn33Ck/orFk4lyDiraONSmkN8wsfp5t/8uBJ2r
 acTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LTpeEfUp2aDF2PuVPItGfVBk3+wf98fXG2ncSzi/Vdk=;
 b=iZK46shDuPUEw+qmMaXcufDgrdCRcxXWUrNMRjJDmhLPAJk7zHvumK30lRJyncYqO7
 3PSCcHMMrW8oD41zeSme/jDGMoCg0i31Tg0QsOqE+qEPupMORpZIwqn4QwUAsCsAy7cj
 DYrp2gNrcQSaRa37ByIj/rl+CphaWA43kLRgRxbUzWozQPw7muZbksxRxPKrN2Yrv8qd
 hHaCoDIw0o0AW0MXCHF4MrT7enLdydzL0K8MI30T1EveVU+ud48NWA0PjNfRhQ4ukCwC
 BPI4KFK9wGH/Ihk2kP4o80yJ5veI3t8Z0a1r6duNwEmHO45LyrrnMS3gQS9ntcXqlBv6
 DUGg==
X-Gm-Message-State: APjAAAVMwxT1ralarLCWiy0a28bd9Z8okYK8AFZpcCUwN5Auo+I+acFm
 6GSr4tkc2HzGdjYk0bTNHA==
X-Google-Smtp-Source: APXvYqwuQjXnzhWn63dYa+pvmHYPOPoyVfz7wGIAq+IWPm8a4FT9l+pVXnuyAqjs+W+XzuMuGrJfbw==
X-Received: by 2002:aed:2357:: with SMTP id i23mr4552514qtc.365.1573674203724; 
 Wed, 13 Nov 2019 11:43:23 -0800 (PST)
Received: from gabell (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id f191sm1419361qke.62.2019.11.13.11.43.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 13 Nov 2019 11:43:23 -0800 (PST)
Date: Wed, 13 Nov 2019 14:43:16 -0500
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: "d.hatayama@fujitsu.com" <d.hatayama@fujitsu.com>
Subject: Re: [RFC PATCH] efi: arm64: Introduce /sys/firmware/efi/memreserve
 to tell the persistent pages
Message-ID: <20191113194229.jfaawdhummneri6s@gabell>
References: <20191112165303.24270-1-msys.mizuma@gmail.com>
 <OSBPR01MB4006D6F586695E2B867C95F095760@OSBPR01MB4006.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OSBPR01MB4006D6F586695E2B867C95F095760@OSBPR01MB4006.jpnprd01.prod.outlook.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_114325_388841_96EEC94D 
X-CRM114-Status: GOOD (  25.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "m.mizuma@jp.fujitsu.com" <m.mizuma@jp.fujitsu.com>,
 "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 07:59:04AM +0000, d.hatayama@fujitsu.com wrote:
> > From: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
> > 
> > kexec reboot stucks because efi_config_parse_tables() refers garbage
> >  (with memblock=debug):
> > 
> >   efi:  ACPI 2.0=0x9821790014  PROP=0x8757f5c0  SMBIOS 3.0=0x9820740000
> > MEMRESERVE=0x9820bfdc58
> >   memblock_reserve: [0x0000009820bfdc58-0x0000009820bfdc67]
> > efi_config_parse_tables+0x228/0x278
> >   memblock_reserve: [0x0000000082760000-0x00000000324d07ff]
> > efi_config_parse_tables+0x228/0x278
> >   memblock_reserve: [0xcc4f84ecc0511670-0x5f6e5214a7fd91f9]
> > efi_config_parse_tables+0x244/0x278
> >   memblock_reserve: [0xd2fd4144b9af693d-0xad0c1db1086f40a2]
> > efi_config_parse_tables+0x244/0x278
> >   memblock_reserve: [0x0c719bb159b1fadc-0x5aa6e62a1417ce12]
> > efi_config_parse_tables+0x244/0x278
> >   ...
> > 
> > That happens because 0x82760000, struct linux_efi_memreserve, is destroyed.
> > 0x82760000 is pointed from efi.mem_reseve, and efi.mem_reserve points the
> > head page of pending table and prop table which are allocated by
> > gic_reserve_range().
> > 
> > The destroyer is kexec. kexec locates the inird to the area:
> > 
> > # kexec -d -l /boot/vmlinuz-5.4.0-rc7 /boot/initramfs-5.4.0-rc7.img
> > --reuse-cmdline
> > ...
> > initrd: base 82290000, size 388dd8ah (59301258)
> > ...
> > 
> > From dynamic debug log:
> >   machine_kexec_prepare:70:
> >     kexec kimage info:
> >       type:        0
> >       start:       85b30680
> >       head:        0
> >       nr_segments: 4
> >         segment[0]: 0000000080480000 - 0000000082290000, 0x1e10000 bytes, 481
> > pages
> >         segment[1]: 0000000082290000 - 0000000085b20000, 0x3890000 bytes, 905
> > pages
> >         segment[2]: 0000000085b20000 - 0000000085b30000, 0x10000 bytes, 1
> > pages
> >         segment[3]: 0000000085b30000 - 0000000085b40000, 0x10000 bytes, 1
> > pages
> > 
> > kexec searches the appropriate memory region to locate initrd through "System
> > RAM"
> > in /proc/iomem. The pending tables are included in "System RAM" because they
> > are
> > allocated by alloc_pages(), so kexec destroys the pending tables.
> > 
> > Introduce /sys/firmware/efi/memreserve to tell the pages pointed by
> > efi.mem_reserve
> > so that kexec can avoid the area to locate initrd.
> > 
> > Signed-off-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
> > ---
> >  drivers/firmware/efi/efi.c | 32 +++++++++++++++++++++++++++++++-
> >  1 file changed, 31 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
> > index e98bbf8e5..67b21ae7a 100644
> > --- a/drivers/firmware/efi/efi.c
> > +++ b/drivers/firmware/efi/efi.c
> > @@ -141,6 +141,36 @@ static ssize_t systab_show(struct kobject *kobj,
> > 
> >  static struct kobj_attribute efi_attr_systab = __ATTR_RO_MODE(systab, 0400);
> > 
> > +static struct linux_efi_memreserve *efi_memreserve_root __ro_after_init;
> > +static ssize_t memreserve_show(struct kobject *kobj,
> > +			   struct kobj_attribute *attr, char *buf)
> > +{
> > +	struct linux_efi_memreserve *rsv;
> > +	unsigned long prsv;
> > +	char *str = buf;
> > +	int index, i;
> > +
> > +	if (!kobj || !buf)
> > +		return -EINVAL;
> > +
> > +	if (!efi_memreserve_root)
> > +		return -ENODEV;
> 
> Other functions use different conditions.
> The latter efi_memreserve_root == (void *)ULONG_MAX is correct?
> 
> static int __init efi_memreserve_map_root(void)
> {
>         if (efi.mem_reserve == EFI_INVALID_TABLE_ADDR)
>                 return -ENODEV;
> int __ref efi_mem_reserve_persistent(phys_addr_t addr, u64 size)
> {
>         struct linux_efi_memreserve *rsv;
>         unsigned long prsv;
>         int rc, index;
> 
>         if (efi_memreserve_root == (void *)ULONG_MAX)
>                 return -ENODEV;

I think it's better to add both checks like as:

        if ((efi_memreserve_root == (void *)ULONG_MAX) ||
                        (!efi_memreserve_root))
                return -ENODEV;
> 
> > +
> > +	for (prsv = efi_memreserve_root->next; prsv; prsv = rsv->next) {
> > +		rsv = memremap(prsv, sizeof(*rsv), MEMREMAP_WB);
> 
> memremap() could fail with NULL as a return value.
> You need to deal with such case.
> 
> It looks to me efi_mem_reserve_persistent() also doesn't deal with this.
> Maybe you should fix this, too.

OK, I'll post a patch sepaletely to add the sanity check.

> 
> > +		index = atomic_read(&rsv->count);
> > +		for (i = 0; i < index; i++)
> > +			str += sprintf(str, "%llx-%llx\n",
> > +				rsv->entry[i].base,
> > +				rsv->entry[i].base + rsv->entry[i].size -
> > 1);
> 
> Is memreserve supported on 32-bit system?
> If so, phy_addr_t could have a type of 4-byte length in such system
> (not so if with PAE) and then %llx could lead to inconsistent type error.
> It's enough to add a cast to unsigned long long.

Good catch. I'll modify the sprintf() format to
use %pa like as:

  phys_addr_t start, end;

  for (i = 0; i < index; i++) {
          start = rsv->entry[i].base;
          end = start + rsv->entry[i].size - 1;

          str += sprintf(str, "%pa-%pa\n", &start, &end);
  }

Thanks,
Masa
> 
> > +		memunmap(rsv);
> > +	}
> > +
> > +	return str - buf;
> > +}
> > +
> > +static struct kobj_attribute efi_attr_memreserve =
> > __ATTR_RO_MODE(memreserve, 0444);
> > +
> >  #define EFI_FIELD(var) efi.var
> > 
> >  #define EFI_ATTR_SHOW(name) \
> > @@ -172,6 +202,7 @@ static struct attribute *efi_subsys_attrs[] = {
> >  	&efi_attr_runtime.attr,
> >  	&efi_attr_config_table.attr,
> >  	&efi_attr_fw_platform_size.attr,
> > +	&efi_attr_memreserve.attr,
> >  	NULL,
> >  };
> > 
> > @@ -955,7 +986,6 @@ int efi_status_to_err(efi_status_t status)
> >  }
> > 
> >  static DEFINE_SPINLOCK(efi_mem_reserve_persistent_lock);
> > -static struct linux_efi_memreserve *efi_memreserve_root __ro_after_init;
> > 
> >  static int __init efi_memreserve_map_root(void)
> >  {
> > --
> > 2.18.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
