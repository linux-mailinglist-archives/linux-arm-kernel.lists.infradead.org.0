Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFEE31105CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 21:15:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7UuQvzn3zaQYa8JeB5D28yyKSdDT/v4jDFdwVsU8QBQ=; b=DinFsaXrI7v7/ZAkvVkAraFHi5
	FXpiDRmpBU7/Q8eqTCuvLf85GYPLl7UiSNdf9h2zbN7kkDGtm2cUunG8LELsGPUCvTjq1Uiz075vc
	f2U+lP14q3HTaNauLul3j4KAoT/q6vMfKH4F9lN6Flib12p+HCz/FiMfg1dwVrXUeVS6+7pvADv6W
	fJGauMaEDM62HwckvRFjHrqmyuK8Ftjc70svibSGsV2Y4QzLuzen7L+yEjkpDUfzFs97gabsp1A8A
	hgjZkEW7cH3CtU5+lGnZIH8pBlSlJI0tyE0xZUDdvVU+ptvn8vfUe5fvZ/EWLXt+WqAInVRqehokn
	mnSXzk3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icEZw-0002D3-E8; Tue, 03 Dec 2019 20:15:24 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icEZF-0001vo-GU; Tue, 03 Dec 2019 20:14:42 +0000
Received: by mail-qv1-xf42.google.com with SMTP id t9so2087282qvh.13;
 Tue, 03 Dec 2019 12:14:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bm5k8zQpgAmJX5WQch8jWZs9UGjvpkTxdBtgDKGujPw=;
 b=Rr8Px1+PnYNeAUdxUPfn+MJ12/5cvatkF40H/w7qFPZyM9q/+/3r9EBWgso4D6A/zS
 gMWC4aC9LCFOHmy9QqlhooMIR2KF0S3+0+TQrctIkumfx/JKcSvLob7ffgzRzauz9Pmr
 gL7lc7YHOrxDX8LGyvTHufa9nkHPBsM/A1fOZbP5SsWh23sqzFlcBMQeKq2aUpIKLb43
 KyyBTrq7BafTEzmpiDZ8Y8rIeSDmEop3wqs9VWn0l2231ClS6pPhNBuK1VZb1DMEzdZA
 g8EgjoUgPSadz49jpZYU0mQh5gOli2yqqRCzgOPz6H6d086w9swpGaQDp/xXy3DFbN1H
 AJNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bm5k8zQpgAmJX5WQch8jWZs9UGjvpkTxdBtgDKGujPw=;
 b=je+VIu8bntuPPeDjRYoqBT/yY36Bo7wVL9y0pxe2HiKIqIrz07b6TV6hs++k4Ae6s4
 /4dgzv3EixM1LqZiHFX/k7X5fI6l/RTIEcHSw8IRMX3pVD737HT6/FhqxmfrvgdWSixs
 ScQWNb7aqHDMK0uTqlS3f6qi8/PwgJkNKAp/+Uw89fvNXx0KpNPCSrD0Q4MPg+2ws1N3
 Wx9grKEXtKWr7BlG4nzRrFwjca+9OJIHD8dKaF3WFwgSFD/auME2st/Rb8kiv/jHDCNt
 w6l24kc0xBmJlUr4c0xnc7LKK4yQs9jeAdsY3oQTZqXSCNsK89wu3b4/aYh6bSKwqDi5
 yvbg==
X-Gm-Message-State: APjAAAWiSm+roo8QHs/4qFuTb+xSC5sv9N5fpi75ez5OW62AtumZzKpV
 QHMYYqdB3XtCxiwQVFNrmQ==
X-Google-Smtp-Source: APXvYqxG6NRh8Mwfq13GzmsRH4miOdxwm088FfOdpCEqPNeMTwLiuS9YjJADGVY5pvc3GZI5br4xMA==
X-Received: by 2002:ad4:4e34:: with SMTP id dm20mr7183818qvb.163.1575404080368; 
 Tue, 03 Dec 2019 12:14:40 -0800 (PST)
Received: from gabell.cable.rcn.com
 (209-6-122-159.s2973.c3-0.arl-cbr1.sbo-arl.ma.cable.rcncustomer.com.
 [209.6.122.159])
 by smtp.gmail.com with ESMTPSA id l34sm2437104qtd.71.2019.12.03.12.14.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 12:14:39 -0800 (PST)
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-efi@vger.kernel.org
Subject: [PATCH v2 1/2] efi: add /proc/efi directory
Date: Tue,  3 Dec 2019 15:14:09 -0500
Message-Id: <20191203201410.28045-2-msys.mizuma@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191203201410.28045-1-msys.mizuma@gmail.com>
References: <20191203201410.28045-1-msys.mizuma@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_121441_550865_1553BCB0 
X-CRM114-Status: GOOD (  11.74  )
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

Add /proc/efi directory to show some efi internal information.

Signed-off-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
---
 drivers/firmware/efi/efi.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
index d101f072c..d8157cb34 100644
--- a/drivers/firmware/efi/efi.c
+++ b/drivers/firmware/efi/efi.c
@@ -325,6 +325,22 @@ static __init int efivar_ssdt_load(void)
 static inline int efivar_ssdt_load(void) { return 0; }
 #endif
 
+#ifdef CONFIG_PROC_FS
+static struct proc_dir_entry *proc_efi;
+static int __init efi_proc_init(void)
+{
+	proc_efi = proc_mkdir("efi", NULL);
+	if (!proc_efi) {
+		pr_err("/proc/efi: Cannot create /proc/efi directory.\n");
+		return 1;
+	}
+
+	return 0;
+}
+#else
+static inline int efi_proc_init(void) { return 0; }
+#endif /* CONFIG_PROC_FS */
+
 /*
  * We register the efi subsystem with the firmware subsystem and the
  * efivars subsystem with the efi subsystem, if the system was booted with
@@ -381,6 +397,12 @@ static int __init efisubsys_init(void)
 		goto err_remove_group;
 	}
 
+	error = efi_proc_init();
+	if (error) {
+		sysfs_remove_mount_point(efi_kobj, "efivars");
+		goto err_remove_group;
+	}
+
 	return 0;
 
 err_remove_group:
-- 
2.18.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
