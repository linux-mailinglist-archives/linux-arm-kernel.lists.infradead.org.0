Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBE21093B6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 19:50:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Xr/h3owJStnd8fVUSpubGOR8b3WlthR+42TkRVgP8sI=; b=shu
	LolpkwvVAVzk8fxCAWAoX0AMJCI1loFx3a+DoraWSfCCFuCpvb7wT3diJvmmaL/5Fla9Vzhbbq1EL
	nzOBVrATvFI76d9x8mEptH18YvR6GZDudSKQmBs6dp3bmugNSRDsbj2IWFYsm0Y54AHfbP74lKkcx
	0Vh5JdvchI9H26IszK0txDKb9Xq2ZjSk3+baJGEACxsEFLqIYqIz8HTm0jnFelrHbu11iydi8IpGq
	Zu2tN0GvqaeoCq9njhmVT5xMZmpS+YV3823luRecP6AKdP0HKFFKnlqEpakgIF3ziAbEG/DkOaq1F
	AEwMO1N4BT+LReFtdlaWWt+yCdBqUSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZJR9-0005ne-5B; Mon, 25 Nov 2019 18:50:15 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZJQv-0005Zy-9n; Mon, 25 Nov 2019 18:50:02 +0000
Received: by mail-qt1-x844.google.com with SMTP id o49so18365793qta.7;
 Mon, 25 Nov 2019 10:49:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=vOdEYfSLcSRQ2bXNji+76Jh95fAHCd8bgzGlm9iUFu0=;
 b=l4S6IFBopNG2XYv2TWjpGqM1oX7mHASdcW4up6r/2cKf116uoE6EatDpr0XvEC9DFN
 MYyMcB7D56QLLfQyZqx4295anORTx+i483ZJDuqQgtcmdKfCxFn9/Om9HLganmfWWd69
 MMvpsxqYwaQGT6Z8d0tWYTu8MZpmgQfD+eDQOh8EuEJA1dxXinNRdlwJALo5tvxq9oLz
 +azHJxug2hAjfYnwVKgyWUg625FLNM6wQOKPiky0b75GFMbtJfuZIWzkuQJhpIxQwgRc
 HXbAnSLWi7t0fA2q7g9uLkADh73DKPINf8yY9pPdskCHeW19vnEKfy8LBrdjVNkwb4oy
 1ndQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=vOdEYfSLcSRQ2bXNji+76Jh95fAHCd8bgzGlm9iUFu0=;
 b=ryL2qGT3XUoruR15DC4z9lmAFcMz47DU8NfxpGc4aE/QTZnDe/JH7rqyEYWBnK7JBD
 KR0xnOEPVpUHgHeRXxrXGFVQATtH3GKAeclpiGNaJmw+zvCHPA3WYTWgAgQcuvMxOfcV
 v3kn3z9vq8VeGHjHLWgcL+JU8bbaSF/84JtCqTnqhxAQzV3khkq80+IkNkaQ2VA78mdu
 okwY6CJ2LNdbQFzgcqU7KA3pxGBeAySDlXJxU/7A5XYlIWjHmzKS06P+9+FNk61aIxAJ
 2jzd0wwoATER3YXM8ub0CiQGEW/0XmKqFYVBv2fMyV39ZSnDTcv9ER64zIoceeSC/LDH
 0o6Q==
X-Gm-Message-State: APjAAAWh3Kw20TOlRbfIc4LgspR4sENIg58JEtvSWcUDhi+KcFdRYoh/
 osju/e9zwFKd4kHkQx6f3A==
X-Google-Smtp-Source: APXvYqyH+uQBIhmLXQh7YB6SztVR4zZD2fmZQuMaCu8+shPUERS1F7LZfSu4IjRmRE+8csgZg4mj2A==
X-Received: by 2002:aed:3924:: with SMTP id l33mr13196213qte.6.1574707797093; 
 Mon, 25 Nov 2019 10:49:57 -0800 (PST)
Received: from gabell.redhat.com
 (209-6-122-159.s2973.c3-0.arl-cbr1.sbo-arl.ma.cable.rcncustomer.com.
 [209.6.122.159])
 by smtp.gmail.com with ESMTPSA id f7sm3780315qkb.79.2019.11.25.10.49.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 10:49:56 -0800 (PST)
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-efi@vger.kernel.org
Subject: [PATCH] efi: arm64: Introduce /sys/firmware/efi/memreserve to tell
 the persistent pages
Date: Mon, 25 Nov 2019 13:49:44 -0500
Message-Id: <20191125184944.15556-1-msys.mizuma@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_105001_341302_54177621 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-kernel@vger.kernel.org, Eric Biederman <ebiederm@xmission.com>,
 Masayoshi Mizuma <msys.mizuma@gmail.com>, d.hatayama@fujitsu.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>

kexec reboot stops in early boot sequence because efi_config_parse_tables()
refers garbage data. We can see the log with memblock=debug kernel option:

  efi:  ACPI 2.0=0x9821790014  PROP=0x8757f5c0  SMBIOS 3.0=0x9820740000  MEMRESERVE=0x9820bfdc58
  memblock_reserve: [0x0000009820bfdc58-0x0000009820bfdc67] efi_config_parse_tables+0x228/0x278
  memblock_reserve: [0x0000000082760000-0x00000000324d07ff] efi_config_parse_tables+0x228/0x278
  memblock_reserve: [0xcc4f84ecc0511670-0x5f6e5214a7fd91f9] efi_config_parse_tables+0x244/0x278
  memblock_reserve: [0xd2fd4144b9af693d-0xad0c1db1086f40a2] efi_config_parse_tables+0x244/0x278
  memblock_reserve: [0x0c719bb159b1fadc-0x5aa6e62a1417ce12] efi_config_parse_tables+0x244/0x278
  ...

That happens because 0x82760000, struct linux_efi_memreserve, is destroyed.
0x82760000 is pointed from efi.mem_reseve, and efi.mem_reserve points the
head page of LPI pending table and LPI property table which are allocated by
gic_reserve_range().

The destroyer is kexec. kexec locates the initrd to the area:

  ]# kexec -d -l /boot/vmlinuz-5.4.0-rc7 /boot/initramfs-5.4.0-rc7.img --reuse-cmdline
  ...
  initrd: base 82290000, size 388dd8ah (59301258)
  ...

From dynamic debug log. initrd is located in segment[1]:
  machine_kexec_prepare:70:
    kexec kimage info:
      type:        0
      start:       85b30680
      head:        0
      nr_segments: 4
        segment[0]: 0000000080480000 - 0000000082290000, 0x1e10000 bytes, 481 pages
        segment[1]: 0000000082290000 - 0000000085b20000, 0x3890000 bytes, 905 pages
        segment[2]: 0000000085b20000 - 0000000085b30000, 0x10000 bytes, 1 pages
        segment[3]: 0000000085b30000 - 0000000085b40000, 0x10000 bytes, 1 pages

kexec searches the memory region to locate initrd through
"System RAM" in /proc/iomem. The pending tables are included in
"System RAM" because they are allocated by alloc_pages(), so kexec
destroys the LPI pending tables.

Introduce /sys/firmware/efi/memreserve to tell the pages pointed by
efi.mem_reserve so that kexec can avoid the area to locate initrd.

Signed-off-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
---
 drivers/firmware/efi/efi.c | 45 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 44 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
index e98bbf8e5..0aa07cc09 100644
--- a/drivers/firmware/efi/efi.c
+++ b/drivers/firmware/efi/efi.c
@@ -141,6 +141,47 @@ static ssize_t systab_show(struct kobject *kobj,
 
 static struct kobj_attribute efi_attr_systab = __ATTR_RO_MODE(systab, 0400);
 
+static struct linux_efi_memreserve *efi_memreserve_root __ro_after_init;
+#ifdef CONFIG_KEXEC
+static ssize_t memreserve_show(struct kobject *kobj,
+			   struct kobj_attribute *attr, char *buf)
+{
+	struct linux_efi_memreserve *rsv;
+	phys_addr_t start, end;
+	unsigned long prsv;
+	char *str = buf;
+	int count, i;
+
+	if (!kobj || !buf)
+		return -EINVAL;
+
+	if ((efi_memreserve_root == (void *)ULONG_MAX) ||
+			(!efi_memreserve_root))
+		return -ENODEV;
+
+	for (prsv = efi_memreserve_root->next; prsv; prsv = rsv->next) {
+		rsv = memremap(prsv, sizeof(*rsv), MEMREMAP_WB);
+		if (!rsv) {
+			pr_err("Could not map efi_memreserve\n");
+			return -ENOMEM;
+		}
+		count = atomic_read(&rsv->count);
+		for (i = 0; i < count; i++) {
+			start = rsv->entry[i].base;
+			end = start + rsv->entry[i].size - 1;
+
+			str += sprintf(str, "%pa-%pa\n", &start, &end);
+		}
+		memunmap(rsv);
+	}
+
+	return str - buf;
+}
+
+static struct kobj_attribute efi_attr_memreserve =
+			__ATTR_RO_MODE(memreserve, 0444);
+#endif /* CONFIG_KEXEC */
+
 #define EFI_FIELD(var) efi.var
 
 #define EFI_ATTR_SHOW(name) \
@@ -172,6 +213,9 @@ static struct attribute *efi_subsys_attrs[] = {
 	&efi_attr_runtime.attr,
 	&efi_attr_config_table.attr,
 	&efi_attr_fw_platform_size.attr,
+#ifdef CONFIG_KEXEC
+	&efi_attr_memreserve.attr,
+#endif
 	NULL,
 };
 
@@ -955,7 +999,6 @@ int efi_status_to_err(efi_status_t status)
 }
 
 static DEFINE_SPINLOCK(efi_mem_reserve_persistent_lock);
-static struct linux_efi_memreserve *efi_memreserve_root __ro_after_init;
 
 static int __init efi_memreserve_map_root(void)
 {
-- 
2.18.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
