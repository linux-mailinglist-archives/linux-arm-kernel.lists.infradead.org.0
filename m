Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B17C156E03
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 04:41:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7RXoyECItRsTTapmCl73kjTDihnwacqeH6KS7ygfqQs=; b=iI+pvcWV3M7sH+
	P2g8dqp6VqTRIHg98l3LLuLJFFXlNgcMA8LGQAa3mHKzDx+/dsQR5TEmE++14wTCbFFFH0QC1HMe9
	tA+NxWvTVTK6G7aW27gaNE+X2lUypaq4/pXtm3fsrBYpRjQ3WzDlUQK5BDZZe43IqFGGPS47pL9ML
	PI1az7uNb2nGmoNClqb2g7VkQFiCXWJnprqR7QUVTl/7lQ5iF0LGvtkDzIc546tZ5BZ5zoCzfwqrf
	568HvHP4kStg0iyfFsI8xNmZpd3RAJLolaoAXZITvveQBhs9YldWWM3mWxYf5QG1Y4bb3//iE3igC
	k61b2i4Vhsj56zrWSAag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0zwq-0005KF-No; Mon, 10 Feb 2020 03:41:24 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0zvh-0004Av-Dh
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 03:40:15 +0000
Received: by mail-qk1-x744.google.com with SMTP id q15so5199484qke.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Feb 2020 19:40:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X8h5VsF3OjOh8Qi5/AzA/qGpUS3Vn4vEIDA3DU9bJh8=;
 b=Rl0lTSbEjeXdxQiqlcu9+KT40vHjEHpujjrzHiwl+8vfEjSj1ufw46i7BZsO6p8LZC
 3JHsfhd3JW+7dRpd2qqbaBImxVv7df8Ol3S+TF/o+obZ2tU9zh3IHc1Cl9XrzBuFUKOt
 1rS1vGhRV+hgmRxZgxjcyosLObHq3g9rOkQ3UZR/fFPOwJrPZ+76Ard78+OtV2pbm6fD
 t9q/QmkSfbnTfSGNni7T49wINkb7FY5c2lLKktdNLRgwOe0sfGfXtGlOL2F4F/ig9ukB
 Iau0C3JFZ6o2RBwxtEQO1b3U4SLSfM9kMi+pCgS6q4CK8I/GB/7n5nj/CtDg7e34XmbW
 z6QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X8h5VsF3OjOh8Qi5/AzA/qGpUS3Vn4vEIDA3DU9bJh8=;
 b=tZS82BS2PhT5FIWuUz/ZrCHhkejFAYWZpepVTki+rGt3tTNhszf2vVbt774ZD3wTf+
 l8SVfrZa8nyUIBQcIE5LDPI9JmUO4Uw9tvnP2RpiRAXYW34fQ+jw0Wdh2inj7Mrts2Ni
 IFTfRIg+dMWeOv9Cg2NHi7TUKFMutsxCMb9LmlwAoW/Vgp6zyBv6G/j6UNRvRObrVeeo
 kPt0JX2CnA9LpafXPTV9lW7K7lJRsD4+YucaRmmd29SZ4MdpmPURGsyfaM7JbHkWfqc+
 b3jXSJB5V18INOnlSZmfsdInxQB27CvzPO+kN1W14bgyjod3gkEKQkUPoK3XzCssl3Gj
 nrww==
X-Gm-Message-State: APjAAAX8SGMqTvz1UukQuluDdPo6szXpCoSfqOLkbjVhwe1uVXPg5RgH
 Qc2YR9FRHrWhg/eNSbAZu+M=
X-Google-Smtp-Source: APXvYqwwL/ocfBXYIDI8PrkokJlolucpauqGjneJdmdhc9hbuIgUGxE9twubCS8UJYHwpyI/OhNG3Q==
X-Received: by 2002:a05:620a:1366:: with SMTP id
 d6mr4293044qkl.230.1581306008057; 
 Sun, 09 Feb 2020 19:40:08 -0800 (PST)
Received: from auth1-smtp.messagingengine.com (auth1-smtp.messagingengine.com.
 [66.111.4.227])
 by smtp.gmail.com with ESMTPSA id y21sm5408681qto.15.2020.02.09.19.40.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 09 Feb 2020 19:40:06 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id 5F99221F6D;
 Sun,  9 Feb 2020 22:40:05 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Sun, 09 Feb 2020 22:40:05 -0500
X-ME-Sender: <xms:lNBAXkXy3AJaiK32Z3YtSANz9_6NEg5nO94AjuIOFsJjwhvRJjrcKA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedriedtgddvkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
 fuohhrthgvugftvggtihhpvdculdegtddmnecujfgurhephffvufffkffojghfggfgsedt
 keertdertddtnecuhfhrohhmpeeuohhquhhnucfhvghnghcuoegsohhquhhnrdhfvghngh
 esghhmrghilhdrtghomheqnecuffhomhgrihhnpehmihgtrhhoshhofhhtrdgtohhmnecu
 kfhppeehvddrudehhedrudduuddrjedunecuvehluhhsthgvrhfuihiivgeptdenucfrrg
 hrrghmpehmrghilhhfrhhomhepsghoqhhunhdomhgvshhmthhprghuthhhphgvrhhsohhn
 rghlihhthidqieelvdeghedtieegqddujeejkeehheehvddqsghoqhhunhdrfhgvnhhgpe
 epghhmrghilhdrtghomhesfhhigihmvgdrnhgrmhgv
X-ME-Proxy: <xmx:lNBAXktU-z9WB2B22sZPjaJ4WVyy_N2I04uaJrETkyZp8GZytVFiMQ>
 <xmx:lNBAXkOSLPM2BYoW7whOY_46wQq3oeB5Ie-wZ_WGEy_Hwu-vnzvevw>
 <xmx:lNBAXsoTgxjnHsYkS_sei2Qnx4OyNSklWA15QHuJSnAWD_fEUQN9qA>
 <xmx:ldBAXhcXS6IzmE1VkT2PRUfyrO257eKWWW7zYVgpD-dJoExz7cK0XShEzpo>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7A59530600DC;
 Sun,  9 Feb 2020 22:40:04 -0500 (EST)
From: Boqun Feng <boqun.feng@gmail.com>
To: linux-pci@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/3] PCI: hv: Move retarget related structures into tlfs
 header
Date: Mon, 10 Feb 2020 11:39:52 +0800
Message-Id: <20200210033953.99692-3-boqun.feng@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200210033953.99692-1-boqun.feng@gmail.com>
References: <20200210033953.99692-1-boqun.feng@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_194013_490478_39ECFC57 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [boqun.feng[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>, x86@kernel.org,
 Michael Kelley <mikelley@microsoft.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, "K. Y. Srinivasan" <kys@microsoft.com>,
 Boqun Feng <boqun.feng@gmail.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, retarget_msi_interrupt and other structures it relys on are
defined in pci-hyperv.c. However, those structures are actually defined
in Hypervisor Top-Level Functional Specification [1] and may be
different in sizes of fields or layout from architecture to
architecture. Let's move those definitions into x86's tlfs header file
to support virtual PCI on non-x86 architectures in the future. Note that
"__packed" attribute is added to these structures during the movement
for the same reason as we use the attribute for other TLFS structures in
the header file: make sure the structures meet the specification and
avoid anything unexpected from the compilers.

Additionally, rename struct retarget_msi_interrupt to
hv_retarget_msi_interrupt for the consistent naming convention, also
mirroring the name in TLFS.

[1]: https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/reference/tlfs

Signed-off-by: Boqun Feng (Microsoft) <boqun.feng@gmail.com>
---
 arch/x86/include/asm/hyperv-tlfs.h  | 31 ++++++++++++++++++++++++++
 drivers/pci/controller/pci-hyperv.c | 34 ++---------------------------
 2 files changed, 33 insertions(+), 32 deletions(-)

diff --git a/arch/x86/include/asm/hyperv-tlfs.h b/arch/x86/include/asm/hyperv-tlfs.h
index dffed0e10a68..a0b6a88d2f05 100644
--- a/arch/x86/include/asm/hyperv-tlfs.h
+++ b/arch/x86/include/asm/hyperv-tlfs.h
@@ -912,4 +912,35 @@ struct hv_tlb_flush_ex {
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
+	u64 partition_id;		/* use "self" */
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
