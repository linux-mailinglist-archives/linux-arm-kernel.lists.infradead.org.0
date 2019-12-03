Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE33D1105CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 21:16:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=G8kpqIeySNBv1rDZJKTLEAV5WT+Kv+TT7qgAPQaYbf0=; b=hmuZu/xzgjOAIqhPa7mObCVoQ5
	GuBRLbxk2XRq/njM8VEMHSwxeqS4oHfdXRtwqqRzM/DsGoldDe1RBB8WLvsgyB1rOInsYXdbYxb4V
	XA86L2F5PIWF8Bo/iSICAV73IM6pIteFQaNffLYyR72iSPgOf1/ddTXrJVFokvYIYuyCCpraXb2ng
	xwUavmN1zxzXREgrqE4Oiy1SkvGxHMWwNHY59vsTbCr34QLlRSVNiKJXSWYdE6TA1/CyzDwCDhdTz
	ddglu5CC16DQhJiktnBY5T+EKlrodisCm3TSWZkEw7hJVOHG6qDA0uG9yvWIi7yi0qt2HGW9I91eN
	VtldTksQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icEaK-0003mU-Np; Tue, 03 Dec 2019 20:15:49 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icEZG-0001z7-J5; Tue, 03 Dec 2019 20:14:44 +0000
Received: by mail-qv1-xf43.google.com with SMTP id c2so2093401qvp.12;
 Tue, 03 Dec 2019 12:14:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=e39PPmDB1hLhTj1mcvYV8QS1l9HhaGJEr3w3upRH5oo=;
 b=EH5ZUeyfyIINg7bLAPpoNTnBt8gnP1BzNlTE1snYybmxey/T+St/+lCyyL4y4Q/HWe
 XORmuuvxEFHQbUzwlWc5BFzfGO4y3nBr5frCFxXkaI5ULR3ZUZLqTC6XVrrdMrlu9fpc
 WSXiCJfBapng2KV7nTAS5L/LwIsT1am/xlbQfMRz6X1CjauIyDL9ld+nHDAiUmvpVaXI
 H9UI1frQfXtiH+ojRGtrknI18Z8o/KEeviralLp/sOcImVLYAdpIDMv2nFH4XfDbBlb8
 eweKcdnBVNzJURWl1PGaATgKF5IXkTYjEI9i4/kiKXgsipHzIgZI7r7zdE1WV39pmg7D
 iyvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=e39PPmDB1hLhTj1mcvYV8QS1l9HhaGJEr3w3upRH5oo=;
 b=cEANV+fHASbmNy4y6q5cM/OJYf9pkNX7Mr/R6Ld9yhcNWrvvH5jLKK3bS8xXKKmWce
 6YxeyTGau4DuyXJWkNLqewziNs8I7J4HLaAW8Yf2Qspq0woaw8qrApMr/9j96wylqUWc
 3xrayDCfthtmBlG/Lo1V5RVDC2fWZA1WSJ8qBfgnTqwQoM2kQn5ZdWwZo2ADOqTnfsyz
 4r5+rKMqmsGtbnhyfQpfQkSj+lTAHJ618v2VI7NvhmPuHiWgnWu4DwOgVxrK2xp7w/mr
 /p9DbIco9XgHUvyDa1agScFwg4Px922ID/HIvRpj28mWd3+5U4r5SGF80FXDyhyTAUKa
 nEOA==
X-Gm-Message-State: APjAAAUp9qIhl3fwMVR+8KhFjlwdR2QwEXtPxfxfmQKQmL2KKJQ+y9a3
 SSdnwWq1Bg3WY6U3FpoKCQ==
X-Google-Smtp-Source: APXvYqzJycZq/XaJ37MLYoJWXN2T6RawatpKUirnrpPgEmyhHbnSxFHsAVI3vd8hYFqL0cJuvnJe6Q==
X-Received: by 2002:ad4:55ec:: with SMTP id bu12mr7150738qvb.107.1575404081478; 
 Tue, 03 Dec 2019 12:14:41 -0800 (PST)
Received: from gabell.cable.rcn.com
 (209-6-122-159.s2973.c3-0.arl-cbr1.sbo-arl.ma.cable.rcncustomer.com.
 [209.6.122.159])
 by smtp.gmail.com with ESMTPSA id l34sm2437104qtd.71.2019.12.03.12.14.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 12:14:41 -0800 (PST)
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-efi@vger.kernel.org
Subject: [PATCH v2 2/2] efi: arm64: Introduce /proc/efi/memreserve to tell the
 persistent pages
Date: Tue,  3 Dec 2019 15:14:10 -0500
Message-Id: <20191203201410.28045-3-msys.mizuma@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191203201410.28045-1-msys.mizuma@gmail.com>
References: <20191203201410.28045-1-msys.mizuma@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_121442_628870_46C1CE0F 
X-CRM114-Status: GOOD (  14.95  )
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Eric Biederman <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
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

Introduce /proc/efi/memreserve to tell the pages pointed by
efi.mem_reserve so that kexec can avoid the area to locate initrd.

Signed-off-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
---
 drivers/firmware/efi/efi.c | 75 ++++++++++++++++++++++++++++++++++++--
 1 file changed, 72 insertions(+), 3 deletions(-)

diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
index d8157cb34..80bbe0b3e 100644
--- a/drivers/firmware/efi/efi.c
+++ b/drivers/firmware/efi/efi.c
@@ -325,17 +325,87 @@ static __init int efivar_ssdt_load(void)
 static inline int efivar_ssdt_load(void) { return 0; }
 #endif
 
+static struct linux_efi_memreserve *efi_memreserve_root __ro_after_init;
+
 #ifdef CONFIG_PROC_FS
 static struct proc_dir_entry *proc_efi;
+#ifdef CONFIG_KEXEC
+static int memreserve_show(struct seq_file *m, void *v)
+{
+	struct linux_efi_memreserve *rsv;
+	phys_addr_t start, end;
+	unsigned long prsv;
+	int count, i;
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
+			seq_printf(m, "%pa-%pa\n", &start, &end);
+		}
+		memunmap(rsv);
+	}
+
+	return 0;
+}
+
+static int memreserve_open(struct inode *inode, struct file *filp)
+{
+	return single_open(filp, memreserve_show, NULL);
+}
+
+static const struct file_operations memreserve_fops = {
+	.owner		= THIS_MODULE,
+	.open		= memreserve_open,
+	.read		= seq_read,
+	.llseek		= seq_lseek,
+	.release	= single_release,
+};
+
+static int __init efi_proc_memreserve(void)
+{
+	struct proc_dir_entry *pde;
+
+	if ((efi_memreserve_root == (void *)ULONG_MAX) ||
+			(!efi_memreserve_root))
+		return 0;
+
+	pde = proc_create("memreserve", 0444, proc_efi, &memreserve_fops);
+	if (!pde) {
+		pr_err("/proc/efi: Cannot create /proc/efi/memreserve file.\n");
+		return 1;
+	}
+
+	return 0;
+}
+#else
+static inline int efi_proc_memreserve(void) { return 0; }
+#endif /* CONFIG_KEXEC */
+
 static int __init efi_proc_init(void)
 {
+	int error = 1;
+
 	proc_efi = proc_mkdir("efi", NULL);
 	if (!proc_efi) {
 		pr_err("/proc/efi: Cannot create /proc/efi directroy.\n");
-		return 1;
+		return error;
 	}
 
-	return 0;
+	error = efi_proc_memreserve();
+
+	return error;
 }
 #else
 static inline int efi_proc_init(void) { return 0; }
@@ -986,7 +1056,6 @@ int efi_status_to_err(efi_status_t status)
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
