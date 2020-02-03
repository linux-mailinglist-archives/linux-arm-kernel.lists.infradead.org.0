Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA8B150116
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 06:04:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qptfkJm46wndZwK8N/bPcM6lxvVyXdzgRCQ8mQJLyLE=; b=X6jHoamOIxOEhV
	/LEq2ULZ2RtY9DG/FS0fydA27D/Ox26xXRtXPJ64EQC4A9mmD+RfofvsO5f+f6Sp0cTXAHWgc1RXE
	ImFf5+9SH9LiZsFjl62NvxxIQ1UTfs+0cpAGlhplh9P8UgOQnYVtStw3skvgr96j/DrdotLSoNHqf
	65UHh1UxdhiUp2SRUuUOAmPUU6+YZodsZ7J+BdeXXL4+zHr7yQlNtMc0nPM57s2AVuipN/zjWVGHp
	38B+6SjzB7lHOd3L0qsGHRYHdeCvtiLx9o3ESBehp9xh/2GbErZLv1k1EJUeVmyqZRSA+xISgquWV
	wip3jNo+4XBc6YYnbIXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyTty-00022U-Lk; Mon, 03 Feb 2020 05:04:02 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyTtL-0001YT-N4
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 05:03:26 +0000
Received: by mail-qt1-x844.google.com with SMTP id j5so10468011qtq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Feb 2020 21:03:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wYlLiIyZ6xtWSqRHGwj68GlwyY+LYYPTXp6jcsCn+f4=;
 b=IrF2YhevpTkVJpyh9y4p2B/CLmvflLLrQnU0pce24ImrE6OdK3eSj6cpzNhLpjRf2G
 uoBW7ahXPhYIokI+kUKf+oRdBvCUOjBCrOPeWaUuCwZXupGVDfeA4OHHmB3A/DQQZoTd
 UWcI+LCOhWIjJEcCbRJN55mOq6tDb94gd4hwD/dbr2WJjJ0O6If6mO4iavPbMVEerk9v
 0tKpECNgOFcqQfdmIgD2N1i3KDDPKFO7j0mIyaLF4JTg24ztcFrkQ+s7z0c9PeaQSB6c
 mIgt+rf3lA7kUJZmDfp4MpROaIF7U7pjSeOtqxYsAhXP+v2eMNqVudyZ66yIAzNdVX0z
 jSLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wYlLiIyZ6xtWSqRHGwj68GlwyY+LYYPTXp6jcsCn+f4=;
 b=RP3FL7jAnzkFHOZJNwn3xpS+ElkfkDNf5UnPYCCD2vHkHHKfAGK9XvdXw8xp7RUpNx
 DBuAuvliPFX7Lljv9rXl2fQDPDgTEIKrfRhCE5mOZV6YY7ZT/Mhkt3Krzm3fGX/q36SG
 4jG3dyOcTZfBi5j/w2g8kk/kJYVQb+eO6KGLU4vjHVpDP8vorl2/ldSonSSe+i99OdgV
 lI83qG57AQJSPUZNF79WZTL/y/9I4vNRfZKFMNblse2dw60knW0jUBM8epvGQS03jahk
 JxXzAhrHPn/BlsHgj5G7fhAcKDBsSL0CH/JByjUD1DTnWGNK+9uWUz1Xp8MshCaIWUPM
 Euvw==
X-Gm-Message-State: APjAAAXzR5zKBkpvbhnOxcCQr7Zgtg+I4YhzMollCp6AalfMidnNzBuH
 Vk1zqkAZnvcBPhweRLTtwOQ=
X-Google-Smtp-Source: APXvYqw/JSotvpKLRqau3UsOI7GqVAKcDFDEyfckUo5K3AA2BM1FkGqlALOh4m1g+OgHRDNXjnNEuQ==
X-Received: by 2002:ac8:704:: with SMTP id g4mr22114298qth.197.1580706202773; 
 Sun, 02 Feb 2020 21:03:22 -0800 (PST)
Received: from auth1-smtp.messagingengine.com (auth1-smtp.messagingengine.com.
 [66.111.4.227])
 by smtp.gmail.com with ESMTPSA id 135sm8837749qkl.68.2020.02.02.21.03.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Feb 2020 21:03:22 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id 8519F21F40;
 Mon,  3 Feb 2020 00:03:21 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Mon, 03 Feb 2020 00:03:21 -0500
X-ME-Sender: <xms:mak3XgcyHJ-FHN-KXqn1rRMZozZQhbcbhS4odZa_FiDy0dgtsuaagw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrgeeigdejjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
 fuohhrthgvugftvggtihhpvdculdegtddmnecujfgurhephffvufffkffojghfggfgsedt
 keertdertddtnecuhfhrohhmpeeuohhquhhnucfhvghnghcuoegsohhquhhnrdhfvghngh
 esghhmrghilhdrtghomheqnecuffhomhgrihhnpehmihgtrhhoshhofhhtrdgtohhmnecu
 kfhppeehvddrudehhedrudduuddrjedunecuvehluhhsthgvrhfuihiivgeptdenucfrrg
 hrrghmpehmrghilhhfrhhomhepsghoqhhunhdomhgvshhmthhprghuthhhphgvrhhsohhn
 rghlihhthidqieelvdeghedtieegqddujeejkeehheehvddqsghoqhhunhdrfhgvnhhgpe
 epghhmrghilhdrtghomhesfhhigihmvgdrnhgrmhgv
X-ME-Proxy: <xmx:mak3XmeMjOUEtH951eeh_F7aXNvylSBWXjUOU5gqI2r8pK0wvZ2nuw>
 <xmx:mak3Xsg-m4WVDsGDpSijgBbaG4zQ3DoVs2J40RPkF_zCBE1YTnuSLw>
 <xmx:mak3XqR04Lzl0uXzimXsvU6X1YY1xvR01w_vDzkG0uc9GVT4xIbYUA>
 <xmx:mak3XtmTvx3hcCSM359e_5-vI5d4QRCnq4OJ4FxpNJXjLJV9UQoIm6iEzFk>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id 01AFD3060134;
 Mon,  3 Feb 2020 00:03:20 -0500 (EST)
From: Boqun Feng <boqun.feng@gmail.com>
To: linux-pci@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/3] PCI: hv: Move retarget related structures into tlfs
 header
Date: Mon,  3 Feb 2020 13:03:12 +0800
Message-Id: <20200203050313.69247-3-boqun.feng@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200203050313.69247-1-boqun.feng@gmail.com>
References: <20200203050313.69247-1-boqun.feng@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_210323_750816_AB28980B 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [boqun.feng[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>, x86@kernel.org,
 Michael Kelley <mikelley@microsoft.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, "K. Y. Srinivasan" <kys@microsoft.com>,
 Boqun Feng <boqun.feng@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, retarget_msi_interrupt and other structures it relys on are
defined in pci-hyperv.c. However, those structures are actually defined
in Hypervisor Top-Level Functional Specification [1] and may be
different in sizes of fields or layout from architecture to
architecture. Therefore, this patch moves those definitions into x86's
tlfs header file to support virtual PCI on non-x86 architectures in the
future.

Besides, while I'm at it, rename retarget_msi_interrupt to
hv_retarget_msi_interrupt for the consistent name convention, also
mirroring the name in TLFS.

[1]: https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/reference/tlfs

Signed-off-by: Boqun Feng (Microsoft) <boqun.feng@gmail.com>
---
 arch/x86/include/asm/hyperv-tlfs.h  | 31 ++++++++++++++++++++++++++
 drivers/pci/controller/pci-hyperv.c | 34 ++---------------------------
 2 files changed, 33 insertions(+), 32 deletions(-)

diff --git a/arch/x86/include/asm/hyperv-tlfs.h b/arch/x86/include/asm/hyperv-tlfs.h
index 739bd89226a5..4a76e442481a 100644
--- a/arch/x86/include/asm/hyperv-tlfs.h
+++ b/arch/x86/include/asm/hyperv-tlfs.h
@@ -911,4 +911,35 @@ struct hv_tlb_flush_ex {
 struct hv_partition_assist_pg {
 	u32 tlb_lock_count;
 };
+
+struct hv_interrupt_entry {
+	u32 source;			/* 1 for MSI(-X) */
+	u32 reserved1;
+	u32 address;
+	u32 data;
+} __packed;
+
+/*
+ * flags for hv_device_interrupt_target.flags
+ */
+#define HV_DEVICE_INTERRUPT_TARGET_MULTICAST		1
+#define HV_DEVICE_INTERRUPT_TARGET_PROCESSOR_SET	2
+
+struct hv_device_interrupt_target {
+	u32 vector;
+	u32 flags;
+	union {
+		u64 vp_mask;
+		struct hv_vpset vp_set;
+	};
+} __packed;
+
+/* HvRetargetDeviceInterrupt hypercall */
+struct hv_retarget_device_interrupt {
+	u64 partition_id;
+	u64 device_id;
+	struct hv_interrupt_entry int_entry;
+	u64 reserved2;
+	struct hv_device_interrupt_target int_target;
+} __packed __aligned(8);
 #endif
diff --git a/drivers/pci/controller/pci-hyperv.c b/drivers/pci/controller/pci-hyperv.c
index aacfcc90d929..0d9b74503577 100644
--- a/drivers/pci/controller/pci-hyperv.c
+++ b/drivers/pci/controller/pci-hyperv.c
@@ -406,36 +406,6 @@ struct pci_eject_response {
 
 static int pci_ring_size = (4 * PAGE_SIZE);
 
-struct hv_interrupt_entry {
-	u32	source;			/* 1 for MSI(-X) */
-	u32	reserved1;
-	u32	address;
-	u32	data;
-};
-
-/*
- * flags for hv_device_interrupt_target.flags
- */
-#define HV_DEVICE_INTERRUPT_TARGET_MULTICAST		1
-#define HV_DEVICE_INTERRUPT_TARGET_PROCESSOR_SET	2
-
-struct hv_device_interrupt_target {
-	u32	vector;
-	u32	flags;
-	union {
-		u64		 vp_mask;
-		struct hv_vpset vp_set;
-	};
-};
-
-struct retarget_msi_interrupt {
-	u64	partition_id;		/* use "self" */
-	u64	device_id;
-	struct hv_interrupt_entry int_entry;
-	u64	reserved2;
-	struct hv_device_interrupt_target int_target;
-} __packed __aligned(8);
-
 /*
  * Driver specific state.
  */
@@ -482,7 +452,7 @@ struct hv_pcibus_device {
 	struct workqueue_struct *wq;
 
 	/* hypercall arg, must not cross page boundary */
-	struct retarget_msi_interrupt retarget_msi_interrupt_params;
+	struct hv_retarget_device_interrupt retarget_msi_interrupt_params;
 
 	/*
 	 * Don't put anything here: retarget_msi_interrupt_params must be last
@@ -1178,7 +1148,7 @@ static void hv_irq_unmask(struct irq_data *data)
 {
 	struct msi_desc *msi_desc = irq_data_get_msi_desc(data);
 	struct irq_cfg *cfg = irqd_cfg(data);
-	struct retarget_msi_interrupt *params;
+	struct hv_retarget_device_interrupt *params;
 	struct hv_pcibus_device *hbus;
 	struct cpumask *dest;
 	cpumask_var_t tmp;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
