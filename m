Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3299EFCA97
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 17:11:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GjXNAqjLPmeM/YZSCk4n5wZAI0Mok2Rk+pE9is/iBGw=; b=ILd
	JJ3ziD2rdgOVvqw/QOWzHOzUVTYuCcm/OKhnkGhpypzd9tdMcqGaq5c4qnEvD816M4yBpriXAAaen
	vQxZ8nRCImjqNLoNG5vGJeixTtbRmRD5lCEmjlHTmwBOJRe0jD2ewhY4SVYsBwBQTic8w9gCxRyR1
	zRaD89AGYqnFYe3v5ADJvQA6oh0LMMi1pORlKVLfl0czUjbs4tT61LzTCiirQf+7TnUqqf1obz1tQ
	oMdRfYiYDA62w4ZZZFVg3mH4fwwEob86n8xR3pdZZ3QiVptmJyyi6JuKlnNwf7PmJWQrDgXLxisKf
	kyaxvpKtGNsueP0ldayoSfiu0twn+sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVHiT-0002nx-70; Thu, 14 Nov 2019 16:11:29 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVHiK-0002mo-Tt; Thu, 14 Nov 2019 16:11:22 +0000
Received: by mail-qt1-x843.google.com with SMTP id r20so7297690qtp.13;
 Thu, 14 Nov 2019 08:11:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=BOPJip910ImC+qHUP+LwyRp/oWfN3GE0KkiS0ZFAdXY=;
 b=JFqOShpAQwGsjh6wLpsyuqLJxoGdJccNiUfQnqYuCbgTheAXRifadAOEVww1bQ4WFB
 Erdq8+2oNXLndOTe/OeBTEbh0ShhY1kPzAHMlFOnzNiadJXLpT8wWzETdpSNgQ0qRnnY
 Gw7aCbLweyFmgA4TTogBVYIsBM0pO+yBwxfnkYhOb2cUZ9+uq/4+pYbicdzIDxNN+3ie
 vA9w0m+NJT6iIekM9JH5EXsMckNwFqO9Hl0q3WwKx7bu/ri6fKVyKYdSPgkS+DKdsmy1
 lKf1sCbGVJcgEILeZh/1OWGhomskzvhLjWhwgiP8DRIqta15Go/2/HKuHULlWcKYjCGm
 MHqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=BOPJip910ImC+qHUP+LwyRp/oWfN3GE0KkiS0ZFAdXY=;
 b=Q0uOpy1wqh4W9UU9Zkx+jAGcLGdSKAAdkTMilEsBIJZk4UUjTA2kS80LB4I4VxfpsX
 IFzgkCerAa/5YgWTnku1oAGhfysk4Dy6HTeRt40ADBVQNhtQfzHukhfzW0OCYLroRYqO
 bO5CuTW9gR5ENl0wyf0IJUdNkz5KGXc7rbHpRAR15rXcskfoeoe1qN9AWAaxP/PO2LLC
 nwHe9j44pHL7Tq3f2nElo4ZzA/rB6hAlNmo6ypj/2ls3Iww+ieCTDIE73KDjTYNKZewD
 y3pMwFmLDwfY56vl8MP/qzBxiS2XLgU1mzJ3tUudwBjJ25q6GgHaw/y4K+ZTStbhsZCa
 fD8A==
X-Gm-Message-State: APjAAAWXTMed+cLGhhjO8G1mgtr9pvLU8i7coO/uDSDNUwxZmT1CDfOs
 WlUlHlFOOYGNSn4ER1Dj2Q==
X-Google-Smtp-Source: APXvYqw6Dq8NsnAZHxKC+SggPkyY6aakIFXBizI56tHuEt8ZVZViIZUPvxZNCEcDeeTEetmpkm5O+Q==
X-Received: by 2002:ac8:60cc:: with SMTP id i12mr5729392qtm.103.1573747878621; 
 Thu, 14 Nov 2019 08:11:18 -0800 (PST)
Received: from gabell.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id n20sm2767705qkn.118.2019.11.14.08.11.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 08:11:17 -0800 (PST)
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-efi@vger.kernel.org
Subject: [RFC PATCH v2] efi: arm64: Introduce /sys/firmware/efi/memreserve to
 tell the persistent pages
Date: Thu, 14 Nov 2019 11:10:19 -0500
Message-Id: <20191114161019.8735-1-msys.mizuma@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_081120_966470_BAA697A7 
X-CRM114-Status: GOOD (  11.60  )
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Masayoshi Mizuma <msys.mizuma@gmail.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, d.hatayama@fujitsu.com
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
 drivers/firmware/efi/efi.c | 41 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 40 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
index 0b6b0c19a..07812d697 100644
--- a/drivers/firmware/efi/efi.c
+++ b/drivers/firmware/efi/efi.c
@@ -149,6 +149,45 @@ static ssize_t systab_show(struct kobject *kobj,
 
 static struct kobj_attribute efi_attr_systab = __ATTR_RO_MODE(systab, 0400);
 
+static struct linux_efi_memreserve *efi_memreserve_root __ro_after_init;
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
+
 #define EFI_FIELD(var) efi.var
 
 #define EFI_ATTR_SHOW(name) \
@@ -180,6 +219,7 @@ static struct attribute *efi_subsys_attrs[] = {
 	&efi_attr_runtime.attr,
 	&efi_attr_config_table.attr,
 	&efi_attr_fw_platform_size.attr,
+	&efi_attr_memreserve.attr,
 	NULL,
 };
 
@@ -964,7 +1004,6 @@ int efi_status_to_err(efi_status_t status)
 }
 
 static DEFINE_SPINLOCK(efi_mem_reserve_persistent_lock);
-static struct linux_efi_memreserve *efi_memreserve_root __ro_after_init;
 
 static int __init efi_memreserve_map_root(void)
 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
