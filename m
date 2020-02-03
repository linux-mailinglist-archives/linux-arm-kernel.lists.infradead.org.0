Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 245EA150117
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 06:04:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F0Fg2FxjcAX9vPZV/HcDHUIphUGa+WmuhCBwOL+Q0Z8=; b=rrCWCVBizpcxJe
	MEL0vVluBRv1zm63sb18SqoP2Vn3eqk6gMyeOxZf21oU80zTFUuRMCsO3MrHf53QoVBHX74IsvM44
	hKmeWNk2yUjiMUkPnTBKfS5Qlx0bdkyJprXtHZP9WQlFOqJSlH23cHMcCmrLxV9ielHuannKklgTi
	6XlQQ8fqChE40fQUbWCUH/32vTOAZbJpLXFmW8NNABoedi5EhqZycCtDCLckRkdsu1UTyv4dLHFNf
	WfvkSrywGV5qsWoAxyLDzTSRQyZs1wlNItbBRjqFDo7Kcgz7MHioubYxmtV4ZvdDyaWCAwj6+4Ykn
	R4R0QPGqq1scHrSUq2Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyTuG-0002Fu-I0; Mon, 03 Feb 2020 05:04:20 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyTtN-0001ZB-QT
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 05:03:27 +0000
Received: by mail-qt1-x843.google.com with SMTP id n17so9337738qtv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Feb 2020 21:03:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VWTud8x7OEQoKdUBzIWswexdHpo1+5LgfuhOzNRvQBY=;
 b=Je3IggfFJOMJPyKlJs2Q26RgeI8BKzwhWYUwEY4gEBeVY8aUpxD7JfaatuG/QPzVyi
 QTC6uC85PbWUOOYlTZMwUKvDMueLZiQuNfIT5PU3rSefJf3WgVOKgbXMW0UFG0KXzQQy
 qi8KpEu27q0Yhngm00UL5U8S6fBgkJoyihzyzi8hZ9RvVd3RnlKtjgodfQgatu5uansU
 slmwvbmPzqgTQTDf32r/pXndLhudg0FP8euKBBaefsE46CLvsZbo8vCGgudYdDE9VPKq
 UOidPibovyBJ9M29M4FY5Qn7tIYD/cedG3bbU/nqgOJ1CFB1vjiQTE29BuusDc3Hl1aW
 f3Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VWTud8x7OEQoKdUBzIWswexdHpo1+5LgfuhOzNRvQBY=;
 b=eJJwFrT9PGlSCaFgFFFh8W/jAYJjJZnt+FdlsddGYVRycGvqC3scbylr8MjsxmsxrZ
 G/p7GvEesj9YTMiJUUbYY4yqOdVl2qehDAPDKdw5+xWKQgFxJN6iJjFOfLe0WrUVsZzo
 dBjuupNhsTQWGMC2nEjRla98VOEiqmeQDvZ+VizCNkwmEItgu2JdmWoP/ITRJrk2aJjw
 i84sj9fm4iv6to8vCcVA/Cj61l+11Furxwc/0DdasAAcKbIsO3/SiIswlLPUuIGl8ZDC
 RhiToLkqWWG8u35ibSkc4EUm+qN1bQz+bI4lamN39dFiga+0yjKGUPvwE49ldXtwByXW
 v+sA==
X-Gm-Message-State: APjAAAXWNp8Ou3N0nC7KZV6GgH5am0s6G4KwVrmWpuNNQV0TUJmJa4LJ
 zu7BS53ZMAZVdqaWMo5xVFY=
X-Google-Smtp-Source: APXvYqwboCZJ5lFuPhz/tLmhxKhBFD4U0mNl9YWEQSDdEh+OvX94B8R9XB4kbmFQ7CDo5vJUoDMLAw==
X-Received: by 2002:aed:3e0e:: with SMTP id l14mr22512050qtf.163.1580706204616; 
 Sun, 02 Feb 2020 21:03:24 -0800 (PST)
Received: from auth1-smtp.messagingengine.com (auth1-smtp.messagingengine.com.
 [66.111.4.227])
 by smtp.gmail.com with ESMTPSA id o187sm8804094qkf.26.2020.02.02.21.03.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Feb 2020 21:03:24 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id A11C121F40;
 Mon,  3 Feb 2020 00:03:23 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Mon, 03 Feb 2020 00:03:23 -0500
X-ME-Sender: <xms:m6k3Xg9JKj5EJC6oPQCMOWm45P0a5uL3e9SAef3k6y39MSPeFr_Prw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrgeeigdejjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
 fuohhrthgvugftvggtihhpvdculdegtddmnecujfgurhephffvufffkffojghfggfgsedt
 keertdertddtnecuhfhrohhmpeeuohhquhhnucfhvghnghcuoegsohhquhhnrdhfvghngh
 esghhmrghilhdrtghomheqnecukfhppeehvddrudehhedrudduuddrjedunecuvehluhhs
 thgvrhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepsghoqhhunhdomhgvsh
 hmthhprghuthhhphgvrhhsohhnrghlihhthidqieelvdeghedtieegqddujeejkeehheeh
 vddqsghoqhhunhdrfhgvnhhgpeepghhmrghilhdrtghomhesfhhigihmvgdrnhgrmhgv
X-ME-Proxy: <xmx:m6k3XszC-TSW3VNaVPvL-8gAUH2PNmZtN1gGDkMXRfnw1sknmn7bAw>
 <xmx:m6k3XguxfY6J4c_GX-a0g37BqeXVS0JBnXeZVIbQCtLxfPW6f8NorA>
 <xmx:m6k3XvzZGgX-fgqjk4zYKwH3JkCap2mv_-ir6YSyuR66ozq8WP2xOw>
 <xmx:m6k3XnS7sXeX82VmER4SNbTbi-hauoCgdPC6yeHB7UfSoZ3fAT7rJNTiR3I>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id 22030328005A;
 Mon,  3 Feb 2020 00:03:22 -0500 (EST)
From: Boqun Feng <boqun.feng@gmail.com>
To: linux-pci@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/3] PCI: hv: Introduce hv_msi_entry
Date: Mon,  3 Feb 2020 13:03:13 +0800
Message-Id: <20200203050313.69247-4-boqun.feng@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200203050313.69247-1-boqun.feng@gmail.com>
References: <20200203050313.69247-1-boqun.feng@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_210325_858378_93AD0235 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
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

Add a new structure (hv_msi_entry), which is also defined int tlfs, to
describe the msi entry for HVCALL_RETARGET_INTERRUPT. The structure is
needed because its layout may be different from architecture to
architecture.

Also add a new generic interface hv_set_msi_address_from_desc() to allow
different archs to set the msi address from msi_desc.

No functional change, only preparation for the future support of virtual
PCI on non-x86 architectures.

Signed-off-by: Boqun Feng (Microsoft) <boqun.feng@gmail.com>
---
 arch/x86/include/asm/hyperv-tlfs.h  | 11 +++++++++--
 arch/x86/include/asm/mshyperv.h     |  5 +++++
 drivers/pci/controller/pci-hyperv.c |  4 ++--
 3 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/arch/x86/include/asm/hyperv-tlfs.h b/arch/x86/include/asm/hyperv-tlfs.h
index 4a76e442481a..953b3ad38746 100644
--- a/arch/x86/include/asm/hyperv-tlfs.h
+++ b/arch/x86/include/asm/hyperv-tlfs.h
@@ -912,11 +912,18 @@ struct hv_partition_assist_pg {
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
index 6b79515abb82..3bdaa3b6e68f 100644
--- a/arch/x86/include/asm/mshyperv.h
+++ b/arch/x86/include/asm/mshyperv.h
@@ -240,6 +240,11 @@ bool hv_vcpu_is_preempted(int vcpu);
 static inline void hv_apic_init(void) {}
 #endif
 
+#define hv_set_msi_address_from_desc(msi_entry, msi_desc)	\
+do {								\
+	(msi_entry)->address = (msi_desc)->msg.address_lo;	\
+} while (0)
+
 #else /* CONFIG_HYPERV */
 static inline void hyperv_init(void) {}
 static inline void hyperv_setup_mmu_ops(void) {}
diff --git a/drivers/pci/controller/pci-hyperv.c b/drivers/pci/controller/pci-hyperv.c
index 0d9b74503577..2240f2b3643e 100644
--- a/drivers/pci/controller/pci-hyperv.c
+++ b/drivers/pci/controller/pci-hyperv.c
@@ -1170,8 +1170,8 @@ static void hv_irq_unmask(struct irq_data *data)
 	memset(params, 0, sizeof(*params));
 	params->partition_id = HV_PARTITION_ID_SELF;
 	params->int_entry.source = 1; /* MSI(-X) */
-	params->int_entry.address = msi_desc->msg.address_lo;
-	params->int_entry.data = msi_desc->msg.data;
+	hv_set_msi_address_from_desc(&params->int_entry.msi_entry, msi_desc);
+	params->int_entry.msi_entry.data = msi_desc->msg.data;
 	params->device_id = (hbus->hdev->dev_instance.b[5] << 24) |
 			   (hbus->hdev->dev_instance.b[4] << 16) |
 			   (hbus->hdev->dev_instance.b[7] << 8) |
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
