Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B75F961E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 17:54:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IZyKsGXlYG+nGee3xnwq6Y/z4KfqZej29FozfyzHEPI=; b=QNq
	Iua+eeoEtpi48X2WZZtPZwOV8vJ1cvmiqeDdn/YRcL7C1eg08Ca5JGJggnujihHY1FuxM3QJFJ1wW
	+Lj8slLqoR4fK+Kyf3K0CGCpuXAk51AxXG944gBmQwZqOkOu8ytBQe+7HtGMCbDoQhz2/sGJTvOq8
	kYuq5oAPSsSV6asWv9KhJViohnSltp54Xhf+sXkmMaQZYEqqM3oGE17zcDEs8XaePTYWWDa56WN7f
	otdQw77t5o2IG6cRcyf9O1lwux6jHzBAxEdcbxHCZzTGUxT8xYsHW9+0vr0enecsYeXDIEZpfZlFV
	GcZeMncFsfCyimt/ahX7WpKYh5efqcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUZQc-0006LQ-PJ; Tue, 12 Nov 2019 16:54:06 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUZQS-0006KL-HZ; Tue, 12 Nov 2019 16:53:58 +0000
Received: by mail-qt1-x842.google.com with SMTP id o11so20432606qtr.11;
 Tue, 12 Nov 2019 08:53:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=7EvQZ65acdZe4jczSmDkYKhL0KXQjakh/QwGvq5Tfuw=;
 b=TFd5NnkVvKSi1dSsVVxYNyBFKoxu+1nznqgn3s5CTTblJfw6jqSPOgVfduVNwr7/ch
 I6hz3bvyGapGaBuWE5l2lZ6WcTtabTcUkrKGQGqL+Fcs/PMDzje7TNm7l7zu1Za36XIR
 eFPjJ7gv/7+/Ug6GugrPvgydtiXuClEx+K7DOW/4dmz9EyYsqQsjyN/01uweICA/J5Ts
 +Np4F6fKzKoluWNNT4p13tbQj90uHKrfBfjjP+HjOdY0LLOhA8EgSjNfPPceYz9lIKoC
 hPsAVnTseIY78PNI9wqn0Cs4iXxQQTc1HikxcISaH43Nky5sY0rJxlcj0GWbKJHYeE3B
 9Apw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=7EvQZ65acdZe4jczSmDkYKhL0KXQjakh/QwGvq5Tfuw=;
 b=gJ9U6FakIQ4kX5tzzosj5ZoaT8w9QOSnEPrb0YubIlS6R4rliepqR1YNpCOpMp9h8I
 txy6yIlTvhW2aONnlOCTRiHI/VOzdTk+aDiY/mC7PPpU/1UhAPPJO10VvurRdvsLr1DU
 wmBWu9B0Ydv86wMTyIrpv7T66Rx14uP4vnitdq6TEhCqQY8l4VpzVoFkbpodv3FHOKh9
 TQjOoG0Hx76hB+xShquvO+s8MS4gnEd+acH33H5xJXd4ZtBXMlmb6JkryQoDftt1EkAq
 3XRUmHX8LOaoomEpZFJCyvv0DAEG5CBIQ35oPEIDo6qz/Gvd4bU/VlUvZkZd08fYcTfL
 kQaw==
X-Gm-Message-State: APjAAAXOA3X6y1CCg22qE6rV2FCaJJrERw5YWST+PZ2eUP3yDmy7c9E8
 u/8R4SqDVW2zviFpXNfRUNp363o=
X-Google-Smtp-Source: APXvYqzvYjNrYH3zR5+ZaL30BwiDtlCwbGJLO0eh1gdpJYCl//2Uo/hJrUsaont6ZAj/PhxvvWUbow==
X-Received: by 2002:ac8:1209:: with SMTP id x9mr32665080qti.352.1573577635194; 
 Tue, 12 Nov 2019 08:53:55 -0800 (PST)
Received: from gabell.redhat.com
 (209-6-122-159.s2973.c3-0.arl-cbr1.sbo-arl.ma.cable.rcncustomer.com.
 [209.6.122.159])
 by smtp.gmail.com with ESMTPSA id x65sm9461856qkd.15.2019.11.12.08.53.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 08:53:54 -0800 (PST)
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-efi@vger.kernel.org
Subject: [RFC PATCH] efi: arm64: Introduce /sys/firmware/efi/memreserve to
 tell the persistent pages
Date: Tue, 12 Nov 2019 11:53:03 -0500
Message-Id: <20191112165303.24270-1-msys.mizuma@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_085356_580425_07F3866E 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Masayoshi Mizuma <msys.mizuma@gmail.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>

kexec reboot stucks because efi_config_parse_tables() refers garbage
 (with memblock=debug):

  efi:  ACPI 2.0=0x9821790014  PROP=0x8757f5c0  SMBIOS 3.0=0x9820740000  MEMRESERVE=0x9820bfdc58
  memblock_reserve: [0x0000009820bfdc58-0x0000009820bfdc67] efi_config_parse_tables+0x228/0x278
  memblock_reserve: [0x0000000082760000-0x00000000324d07ff] efi_config_parse_tables+0x228/0x278
  memblock_reserve: [0xcc4f84ecc0511670-0x5f6e5214a7fd91f9] efi_config_parse_tables+0x244/0x278
  memblock_reserve: [0xd2fd4144b9af693d-0xad0c1db1086f40a2] efi_config_parse_tables+0x244/0x278
  memblock_reserve: [0x0c719bb159b1fadc-0x5aa6e62a1417ce12] efi_config_parse_tables+0x244/0x278
  ...

That happens because 0x82760000, struct linux_efi_memreserve, is destroyed.
0x82760000 is pointed from efi.mem_reseve, and efi.mem_reserve points the
head page of pending table and prop table which are allocated by gic_reserve_range().

The destroyer is kexec. kexec locates the inird to the area:

# kexec -d -l /boot/vmlinuz-5.4.0-rc7 /boot/initramfs-5.4.0-rc7.img --reuse-cmdline
...
initrd: base 82290000, size 388dd8ah (59301258)
...

From dynamic debug log:
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

kexec searches the appropriate memory region to locate initrd through "System RAM"
in /proc/iomem. The pending tables are included in "System RAM" because they are
allocated by alloc_pages(), so kexec destroys the pending tables.

Introduce /sys/firmware/efi/memreserve to tell the pages pointed by efi.mem_reserve
so that kexec can avoid the area to locate initrd.

Signed-off-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
---
 drivers/firmware/efi/efi.c | 32 +++++++++++++++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
index e98bbf8e5..67b21ae7a 100644
--- a/drivers/firmware/efi/efi.c
+++ b/drivers/firmware/efi/efi.c
@@ -141,6 +141,36 @@ static ssize_t systab_show(struct kobject *kobj,
 
 static struct kobj_attribute efi_attr_systab = __ATTR_RO_MODE(systab, 0400);
 
+static struct linux_efi_memreserve *efi_memreserve_root __ro_after_init;
+static ssize_t memreserve_show(struct kobject *kobj,
+			   struct kobj_attribute *attr, char *buf)
+{
+	struct linux_efi_memreserve *rsv;
+	unsigned long prsv;
+	char *str = buf;
+	int index, i;
+
+	if (!kobj || !buf)
+		return -EINVAL;
+
+	if (!efi_memreserve_root)
+		return -ENODEV;
+
+	for (prsv = efi_memreserve_root->next; prsv; prsv = rsv->next) {
+		rsv = memremap(prsv, sizeof(*rsv), MEMREMAP_WB);
+		index = atomic_read(&rsv->count);
+		for (i = 0; i < index; i++)
+			str += sprintf(str, "%llx-%llx\n",
+				rsv->entry[i].base,
+				rsv->entry[i].base + rsv->entry[i].size - 1);
+		memunmap(rsv);
+	}
+
+	return str - buf;
+}
+
+static struct kobj_attribute efi_attr_memreserve = __ATTR_RO_MODE(memreserve, 0444);
+
 #define EFI_FIELD(var) efi.var
 
 #define EFI_ATTR_SHOW(name) \
@@ -172,6 +202,7 @@ static struct attribute *efi_subsys_attrs[] = {
 	&efi_attr_runtime.attr,
 	&efi_attr_config_table.attr,
 	&efi_attr_fw_platform_size.attr,
+	&efi_attr_memreserve.attr,
 	NULL,
 };
 
@@ -955,7 +986,6 @@ int efi_status_to_err(efi_status_t status)
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
