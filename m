Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB30A156DFE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 04:40:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a0tZQrPdFP9HPIbHkYwpceoyw2ldhajVYZPa/erz9E4=; b=qmmCNYdg3/8lo+
	vA5RwdX3G5biSiLWhYNjcKiU6kjwWJMKBVzUCiR9v/bs7kW+/cdZdeIfAruc7I9iVNhCplV4oUSDo
	nCJUpLQSRpw1QNIMXVkAjubGEj8F+t/19ry9m7eJWNMKz8EILAaxt8vnQ7TBndCX7vHzU7RVOm3S4
	ADQ1BmVdXUO0VKlNoYWa3cVNYfcDa7RpLgB/V+nGmSrdGh7rXOHTdmq8gPi85KHeKFclP+q8n6SS1
	9m4C6s0ixi+0tzC0tFua3uS1RuMc8lYWVab8yPZpTS5UqP+Gs7o4BNtXjTpOcpaR2M3Qy5pakttJX
	EPa8bots5Yvwksx//KdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0zw6-0004cx-SA; Mon, 10 Feb 2020 03:40:38 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0zvd-0004Ex-76
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 03:40:11 +0000
Received: by mail-qt1-x843.google.com with SMTP id c5so4149050qtj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Feb 2020 19:40:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vaUfZ3vd9HQfy5hm3J3nHvIU5a5fojBakofme2e8oDo=;
 b=e6sFDqmhOxEJ5WN3dMK5O2omGe2qI/ckFjkz7TG5EHoTJaMjVjSxsVjaEzq+dIH2dP
 w2kHoOxt3NP+4W7jhSAU2Ak0WanA0vP3NaxXxfxurjQWqnbzJXGX41uFSFb8MQM99Hwh
 CZCXJelEPKHMGM5M4KULanWS9Q8gatSTEv9Qjd+dP5QwweblbgozGls58yBwSWVQak5q
 /8wsKGupBTSMi6vpqS+M00LlJcnkFBvyTTPtRkjmX6mkNppVnYD//X452gDJlNzIx61l
 KAQlublxOtb0E1pFy/oHyx4ErHCEvPMRKRP5wDM7o3do6nfX8Fm9ohAKuTi0BnqHkJJP
 1pPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vaUfZ3vd9HQfy5hm3J3nHvIU5a5fojBakofme2e8oDo=;
 b=TWTJyoz6thA1J7Wg143pPgaN0JRzQKVmG+rx87cXnhSDcn320aWfGAbauD1O1N2hfS
 8w+4I7yfVRXf7VMuisMXd6921B+FY1lAIs+obx6Fzj7Sm9VUaJ+NUk/wlsWt7LFsMr/b
 vlvq5Dmeysmb2peZZupNi6Y1P0UcdrkSe346LBZySSzc5h7Ot9C2Su4wyYSltdv6URI9
 nctvq7ZmbuLiCzfCKUyK6lK/YxVFWaZdvHQwc7EGPQ/dE8yQPpIdwA41j4JMT6JGND6d
 cftPsJN3EJ1QCFO9P0K1l6e1Nfeat6u2VtHY/hNfVKxzJcS4nnlRraTZkPnA1YVws5IT
 mF6A==
X-Gm-Message-State: APjAAAV2SEKkij+9iVEPbf3Nqi7dDPJJ7xl/LApDOJQXbhOfWBJEYf36
 RDvOomcvh8L5NlYmRrsKnn8=
X-Google-Smtp-Source: APXvYqxBiHAep5MJI98kbIEFyI4HgXXqB+cY4d6mZ5eiVFz7gYqYnW9wYxuDxMafvk5DPcRdKwSO7w==
X-Received: by 2002:ac8:176f:: with SMTP id u44mr8056958qtk.379.1581306008555; 
 Sun, 09 Feb 2020 19:40:08 -0800 (PST)
Received: from auth1-smtp.messagingengine.com (auth1-smtp.messagingengine.com.
 [66.111.4.227])
 by smtp.gmail.com with ESMTPSA id y28sm5216125qkj.44.2020.02.09.19.40.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 09 Feb 2020 19:40:06 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id 5E73B21F69;
 Sun,  9 Feb 2020 22:40:05 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Sun, 09 Feb 2020 22:40:05 -0500
X-ME-Sender: <xms:ktBAXqH5lYWrrSWSU11mtDQjIxdHtQ99Fe23LYKxXJ_-i_wd1R8g6g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedriedtgddvkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
 fuohhrthgvugftvggtihhpvdculdegtddmnecujfgurhephffvufffkffojghfggfgsedt
 keertdertddtnecuhfhrohhmpeeuohhquhhnucfhvghnghcuoegsohhquhhnrdhfvghngh
 esghhmrghilhdrtghomheqnecukfhppeehvddrudehhedrudduuddrjedunecuvehluhhs
 thgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepsghoqhhunhdomhgvsh
 hmthhprghuthhhphgvrhhsohhnrghlihhthidqieelvdeghedtieegqddujeejkeehheeh
 vddqsghoqhhunhdrfhgvnhhgpeepghhmrghilhdrtghomhesfhhigihmvgdrnhgrmhgv
X-ME-Proxy: <xmx:ktBAXgcGMucie6gcwqvZb3VdWzzL5Hn2V3RH5aCLihLCs6Ymv9L1XQ>
 <xmx:ktBAXrbk21Exo0fXGeDB7ZE9b8Ah5q9d_vDby8a6IzKthdGhiusQnw>
 <xmx:ktBAXrrGkRO-FeqDFhjQbrjb3KGD4sD73KS9J2PLOTomIVFEdr-8fg>
 <xmx:ldBAXhHH4Oc8uI7DnRoUE2VuWKxv_LW0GArZOoy6j4uOe_Wi3nCFiRm2Ces>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2C8EC3280069;
 Sun,  9 Feb 2020 22:40:02 -0500 (EST)
From: Boqun Feng <boqun.feng@gmail.com>
To: linux-pci@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/3] PCI: hv: Move hypercall related definitions into tlfs
 header
Date: Mon, 10 Feb 2020 11:39:51 +0800
Message-Id: <20200210033953.99692-2-boqun.feng@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200210033953.99692-1-boqun.feng@gmail.com>
References: <20200210033953.99692-1-boqun.feng@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_194009_272096_F90AB45A 
X-CRM114-Status: GOOD (  13.10  )
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

Currently HVCALL_RETARGET_INTERRUPT and HV_PARTITION_ID_SELF are defined
in pci-hyperv.c. However, similar to other hypercall related
definitions, it makes more sense to put them in the tlfs header file.

Besides, these definitions are arch-dependent, so for the support of
virtual PCI on non-x86 archs in the future, move them into arch-specific
tlfs header file.

Signed-off-by: Boqun Feng (Microsoft) <boqun.feng@gmail.com>
Reviewed-by: Andrew Murray <amurray@thegoodpenguin.co.uk>
---
 arch/x86/include/asm/hyperv-tlfs.h  | 3 +++
 drivers/pci/controller/pci-hyperv.c | 6 ------
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/x86/include/asm/hyperv-tlfs.h b/arch/x86/include/asm/hyperv-tlfs.h
index 92abc1e42bfc..dffed0e10a68 100644
--- a/arch/x86/include/asm/hyperv-tlfs.h
+++ b/arch/x86/include/asm/hyperv-tlfs.h
@@ -376,6 +376,7 @@ struct hv_tsc_emulation_status {
 #define HVCALL_SEND_IPI_EX			0x0015
 #define HVCALL_POST_MESSAGE			0x005c
 #define HVCALL_SIGNAL_EVENT			0x005d
+#define HVCALL_RETARGET_INTERRUPT		0x007e
 #define HVCALL_FLUSH_GUEST_PHYSICAL_ADDRESS_SPACE 0x00af
 #define HVCALL_FLUSH_GUEST_PHYSICAL_ADDRESS_LIST 0x00b0
 
@@ -405,6 +406,8 @@ enum HV_GENERIC_SET_FORMAT {
 	HV_GENERIC_SET_ALL,
 };
 
+#define HV_PARTITION_ID_SELF                    ((u64)-1)
+
 #define HV_HYPERCALL_RESULT_MASK	GENMASK_ULL(15, 0)
 #define HV_HYPERCALL_FAST_BIT		BIT(16)
 #define HV_HYPERCALL_VARHEAD_OFFSET	17
diff --git a/drivers/pci/controller/pci-hyperv.c b/drivers/pci/controller/pci-hyperv.c
index 9977abff92fc..aacfcc90d929 100644
--- a/drivers/pci/controller/pci-hyperv.c
+++ b/drivers/pci/controller/pci-hyperv.c
@@ -406,12 +406,6 @@ struct pci_eject_response {
 
 static int pci_ring_size = (4 * PAGE_SIZE);
 
-/*
- * Definitions or interrupt steering hypercall.
- */
-#define HV_PARTITION_ID_SELF		((u64)-1)
-#define HVCALL_RETARGET_INTERRUPT	0x7e
-
 struct hv_interrupt_entry {
 	u32	source;			/* 1 for MSI(-X) */
 	u32	reserved1;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
