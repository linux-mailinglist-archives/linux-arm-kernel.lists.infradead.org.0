Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BE3156E01
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 04:41:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O1bQAn5C1f7Gse2cTAkavkZeIzTq26CBynKgQpP6UcU=; b=Bg1ECtu2I5/BCG
	7qA9TN+ofOI+SxBrpe20lPD7Z6W5maTmnBwT+gIPoYpdQuIpsVPYsLOLD+duP41kP9iOp2OqWDzme
	2AHnzjLP2AIfYhFFM2LOShM7mJA4c7ojLau90KbZBbMls3ICVpBiV3/CaBUrrs7zbP1DnLRwiTGXc
	5i9BFwoa15CJ0ynrXfA19TdMalBUDVA1zr0y3JvDXBN8Y0MsEbEUZ0ZdfarYz8mPZxDmT6qqLuhpp
	i+c+vnMnV81qQHzPO2xYSJEIJNaY5ZT212c413q2fMNVHy9twsXABCvZ9JDOwagySfGADuviChZQU
	+MUD9c17zqyW9sQWgB/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0zwe-00058B-SN; Mon, 10 Feb 2020 03:41:12 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0zvd-0004Jm-QB
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 03:40:11 +0000
Received: by mail-qk1-x741.google.com with SMTP id a23so5257407qka.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Feb 2020 19:40:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6FIbpqewFhKoz647EtZl03555siYZin4B00D02clcgE=;
 b=mFNKsTXMronTqlFuBa1VlDXgCuMBsSsaqjC1ueVvSdYqCmWycg9P+ZHBPE+7XBD+I2
 c1+LmQIv90jM7gjL7zscQ7WTEuU6u3CevgXdlLy0Cs1ODwg6BWqdbj1G/fjJYwSDQLj3
 /K9xzds02XanPodmFcmJTuk9WXxGyA/13/hTdl+Cbs9JnNc4Hairoi+EOTYFt6XaAc+s
 ex6ZGMx+s4z3uZsijAkCe+nA0v9Ix+SxYBOTDpd54QVFmOEHM3Lo5uu1qxLk2C9hIfKE
 7r+IQCt1sGNycN1sY7r+wV7xnofQj216joEhI2gx03/JsWKm6JlAk2kX0nDMMehgcV37
 pyYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6FIbpqewFhKoz647EtZl03555siYZin4B00D02clcgE=;
 b=hM44O0lAlwTMBGgbQtrWgMTUJTpyQeu7y1Y4SbmoPpwlt1zNdOPQxEZJtzrofhd7jV
 PklX0WaowuO7aR+MjZL1kmROwGPPJ8hM1d1AqUaeN8mH5yrKGFHH3Qm4+2Znu5e9WtXY
 tntQv7Do/HTljGkvmLnrKYQaBRFGOSJ3+GwDSXiUiz6d0Vewd8BDI8vxp0J732V/K5iR
 zyolGGzM8wWfVl3PVYhXOAM3gFDGtP4WNSLycCdwu7lbE8G2iwpqaN5XcTcaNARQusSs
 /qqL9Jx79w7HGUQySH4tYEp2Jgexpjlg1DlC0rjs/IaC/S0OWOo3XxjD1BDkMETvFUd3
 wuYQ==
X-Gm-Message-State: APjAAAUHgi68bKRyGF/XYYgtYoblcENlCrlTSMEAJcb4OlprNTZ2m5N5
 ucWKHMBBiF7fBqjMTFOMxEA=
X-Google-Smtp-Source: APXvYqz+2/pfX0+5SgDIsX4B/zJfsLktj0AAvQvLswlJttnN861z7Z6qUr/uQTB1JioStdhOGb7GSA==
X-Received: by 2002:a37:7881:: with SMTP id t123mr8801430qkc.155.1581306009101; 
 Sun, 09 Feb 2020 19:40:09 -0800 (PST)
Received: from auth1-smtp.messagingengine.com (auth1-smtp.messagingengine.com.
 [66.111.4.227])
 by smtp.gmail.com with ESMTPSA id p8sm3037881qtn.71.2020.02.09.19.40.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 09 Feb 2020 19:40:08 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id 1A5DA21F55;
 Sun,  9 Feb 2020 22:40:07 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Sun, 09 Feb 2020 22:40:07 -0500
X-ME-Sender: <xms:ltBAXqjIKeDLKUelaK6mSf1Gt-EYnz5wUWsXigzQitS8S0Ljou867A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedriedtgddvkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
 fuohhrthgvugftvggtihhpvdculdegtddmnecujfgurhephffvufffkffojghfggfgsedt
 keertdertddtnecuhfhrohhmpeeuohhquhhnucfhvghnghcuoegsohhquhhnrdhfvghngh
 esghhmrghilhdrtghomheqnecukfhppeehvddrudehhedrudduuddrjedunecuvehluhhs
 thgvrhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepsghoqhhunhdomhgvsh
 hmthhprghuthhhphgvrhhsohhnrghlihhthidqieelvdeghedtieegqddujeejkeehheeh
 vddqsghoqhhunhdrfhgvnhhgpeepghhmrghilhdrtghomhesfhhigihmvgdrnhgrmhgv
X-ME-Proxy: <xmx:l9BAXgEu85Nzm6lKxra9lLuonPoAZgHIVk0uadGxmZkXmzQLpa5xUw>
 <xmx:l9BAXvHB8av6AIFSZTmk8fNYe7eI1z9LYqa_CwtlF4DToN89DoHgnA>
 <xmx:l9BAXg-7iKcBPix-q05QA-WyyQHhbaGZWv3pJKfEWlzEVV_guOaRIg>
 <xmx:l9BAXhHiaf6xUOFIy4544RZ_uQ_UV3oe2Y6KhgH-31pi3n9NBpI4UDevw-U>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8E6F03280062;
 Sun,  9 Feb 2020 22:40:06 -0500 (EST)
From: Boqun Feng <boqun.feng@gmail.com>
To: linux-pci@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 3/3] PCI: hv: Introduce hv_msi_entry
Date: Mon, 10 Feb 2020 11:39:53 +0800
Message-Id: <20200210033953.99692-4-boqun.feng@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200210033953.99692-1-boqun.feng@gmail.com>
References: <20200210033953.99692-1-boqun.feng@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_194009_914576_A7586A1C 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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

Add a new structure (hv_msi_entry), which is also defined in the TLFS,
to describe the msi entry for HVCALL_RETARGET_INTERRUPT. The structure
is needed because its layout may be different from architecture to
architecture.

Also add a new generic interface hv_set_msi_entry_from_desc() to allow
different archs to set the msi entry from msi_desc.

No functional change, only preparation for the future support of virtual
PCI on non-x86 architectures.

Signed-off-by: Boqun Feng (Microsoft) <boqun.feng@gmail.com>
---
 arch/x86/include/asm/hyperv-tlfs.h  | 11 +++++++++--
 arch/x86/include/asm/mshyperv.h     |  8 ++++++++
 drivers/pci/controller/pci-hyperv.c |  3 +--
 3 files changed, 18 insertions(+), 4 deletions(-)

diff --git a/arch/x86/include/asm/hyperv-tlfs.h b/arch/x86/include/asm/hyperv-tlfs.h
index a0b6a88d2f05..29336574d0bc 100644
--- a/arch/x86/include/asm/hyperv-tlfs.h
+++ b/arch/x86/include/asm/hyperv-tlfs.h
@@ -913,11 +913,18 @@ struct hv_partition_assist_pg {
 	u32 tlb_lock_count;
 };
 
+union hv_msi_entry {
+	u64 as_uint64;
+	struct {
+		u32 address;
+		u32 data;
+	} __packed;
+};
+
 struct hv_interrupt_entry {
 	u32 source;			/* 1 for MSI(-X) */
 	u32 reserved1;
-	u32 address;
-	u32 data;
+	union hv_msi_entry msi_entry;
 } __packed;
 
 /*
diff --git a/arch/x86/include/asm/mshyperv.h b/arch/x86/include/asm/mshyperv.h
index 6b79515abb82..81fc30240122 100644
--- a/arch/x86/include/asm/mshyperv.h
+++ b/arch/x86/include/asm/mshyperv.h
@@ -4,6 +4,7 @@
 
 #include <linux/types.h>
 #include <linux/nmi.h>
+#include <linux/msi.h>
 #include <asm/io.h>
 #include <asm/hyperv-tlfs.h>
 #include <asm/nospec-branch.h>
@@ -240,6 +241,13 @@ bool hv_vcpu_is_preempted(int vcpu);
 static inline void hv_apic_init(void) {}
 #endif
 
+static inline void hv_set_msi_entry_from_desc(union hv_msi_entry *msi_entry,
+					      struct msi_desc *msi_desc)
+{
+	msi_entry->address = msi_desc->msg.address_lo;
+	msi_entry->data = msi_desc->msg.data;
+}
+
 #else /* CONFIG_HYPERV */
 static inline void hyperv_init(void) {}
 static inline void hyperv_setup_mmu_ops(void) {}
diff --git a/drivers/pci/controller/pci-hyperv.c b/drivers/pci/controller/pci-hyperv.c
index 0d9b74503577..3f9b220c23ec 100644
--- a/drivers/pci/controller/pci-hyperv.c
+++ b/drivers/pci/controller/pci-hyperv.c
@@ -1170,8 +1170,7 @@ static void hv_irq_unmask(struct irq_data *data)
 	memset(params, 0, sizeof(*params));
 	params->partition_id = HV_PARTITION_ID_SELF;
 	params->int_entry.source = 1; /* MSI(-X) */
-	params->int_entry.address = msi_desc->msg.address_lo;
-	params->int_entry.data = msi_desc->msg.data;
+	hv_set_msi_entry_from_desc(&params->int_entry.msi_entry, msi_desc);
 	params->device_id = (hbus->hdev->dev_instance.b[5] << 24) |
 			   (hbus->hdev->dev_instance.b[4] << 16) |
 			   (hbus->hdev->dev_instance.b[7] << 8) |
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
