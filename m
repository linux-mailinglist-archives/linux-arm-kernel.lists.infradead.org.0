Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F544150111
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 06:03:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cMNhYjVCuPF1N5PxaVH8oHOkYLveTS7/jIdt+DlZDYI=; b=NVeArR+tcx8pMO
	3/9kDfwpUeraa3U/kOD3amudINeo4GPu5IMZOcZ/bFnERiijmYqdMmU+rEgRuQJ7XwJMgoiS0yh2z
	stgNGx8B/8+0+hGNIHFPYN9Dx1IMK+xM7ptH4VvULpf/8kvDJ7zS9aKKtGUilSyNGmGJn7LmkHM8h
	3LmPzAf1ALHCrWJI/kDQ6MUE2RrMQqehmIKD9oF5tzKazxHtJtT/yqxUH1B4W7VAx46VgwTXNdwIH
	659jZ8qRp7Btd5vIJy417hF+WRdTRo88d5Qfk+qmk/bvFrNn7FWytjmP1BPJLORrbBWA5oFg0uZfy
	ylHVCKcbqhGa8vEOXGTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyTtT-0001Zf-3i; Mon, 03 Feb 2020 05:03:31 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyTtL-0001YO-KN
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 05:03:25 +0000
Received: by mail-qk1-x741.google.com with SMTP id j20so13001475qka.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Feb 2020 21:03:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PHvPKoaqKtkykZLxCi4TerZ2d6tP9SE0xIIPoaJM2Ow=;
 b=eccQdPSpf1llC7YR5VHHJlf0LJ2SN0WsloaRrCae1eSinKOwjkW30fDu9dVrkM/b0X
 tc5czCv5b2qsqo4/y8zD7jti3aTAVsOiK1vlfWLdLFpdhLaiQ87xOGP8C+Rw5KXILatY
 ZJNmj3gj3Xb9fFMI8+f5ERHG1z0U123/t8ix8s9U/bfD+vy89yDS24hDb0AnyH2aBI9D
 XQjYre6nGFbNHhLGv6lfth2q13VZtFoZTHvidTcOB0xs+0my0Iq3Sb4rixgU08mWUhLT
 Me8f/RKenDIINNa75WEzQniaZH8tnXRn11UCDGzK1bG3xuAk3ktpkVgJtvIOKngImihB
 G4sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PHvPKoaqKtkykZLxCi4TerZ2d6tP9SE0xIIPoaJM2Ow=;
 b=iB7jQCcEzV3VCOjpSHMhbYnhR8JmsTG9tUZmKbxqIgkXOCBZqqc0ZMKaWYNJBDNX1f
 OTHk1mOuc5PEQB3mihvPQq91cc66x5uWo/oFZPi38IAh/Dd+k3mfxQ12tCmKU+C/vFXr
 cLKLhz/cPj+MXb2TEu9xh8k4dDfRsne2jYUBEoyLfax9oQ9u9h7opqGRaNU6wAu+5OpO
 Wf0EGoaxvd/mQmeeWS/xWk8GTqTkHr1Zx8nByr5boKV3oqIYADMof0lNaqketoSIL/A+
 hhLK/O6HG+2XJ7h8IdduwO6Vvk9kAO4zzRnbC3gYw98OFzGpzl7Xn8zV3+wgU0Z0EOJm
 ZKxQ==
X-Gm-Message-State: APjAAAWNGwdZv+Dxwb3TFg8QZxRGa4ymi5Wh1ZR0OOlEhateIKsY/hVX
 u1zklrifiX/OhbZCTHYnic4=
X-Google-Smtp-Source: APXvYqzKk8N4hCeJ6CJD5TAcL/7v4lfU/s9T8nK42KRRAuCr9IO1YEQgEqAT7joW06yw2CkvdCgQig==
X-Received: by 2002:a37:a744:: with SMTP id q65mr22115703qke.391.1580706201772; 
 Sun, 02 Feb 2020 21:03:21 -0800 (PST)
Received: from auth1-smtp.messagingengine.com (auth1-smtp.messagingengine.com.
 [66.111.4.227])
 by smtp.gmail.com with ESMTPSA id g6sm9311219qtp.53.2020.02.02.21.03.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Feb 2020 21:03:21 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailauth.nyi.internal (Postfix) with ESMTP id 33B3E21EEB;
 Mon,  3 Feb 2020 00:03:19 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Mon, 03 Feb 2020 00:03:19 -0500
X-ME-Sender: <xms:l6k3XqLvV7p5_9WEE4ijQInGUfaeDkGrIxj-Gopqvh5xrgL5qo6mEQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrgeeigdejjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
 fuohhrthgvugftvggtihhpvdculdegtddmnecujfgurhephffvufffkffojghfggfgsedt
 keertdertddtnecuhfhrohhmpeeuohhquhhnucfhvghnghcuoegsohhquhhnrdhfvghngh
 esghhmrghilhdrtghomheqnecukfhppeehvddrudehhedrudduuddrjedunecuvehluhhs
 thgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepsghoqhhunhdomhgvsh
 hmthhprghuthhhphgvrhhsohhnrghlihhthidqieelvdeghedtieegqddujeejkeehheeh
 vddqsghoqhhunhdrfhgvnhhgpeepghhmrghilhdrtghomhesfhhigihmvgdrnhgrmhgv
X-ME-Proxy: <xmx:l6k3Xo1lUECvj0i7npwxRp2S9fZxkwXWI6nxXbvx1pEafg3L4_Y3CA>
 <xmx:l6k3XvI_ImMOnuA1Ko0f298f9xhLD07zzizUHL82Gl3WslEcexJxtA>
 <xmx:l6k3Xtn0YP31nZqgxKE_3GaEO4To5uI-Jk_IA8jiLGu3jjmi2ydbCw>
 <xmx:l6k3XuAWvO1bCYjflTM7KSIyGC-HNkZHtzihlje1YTexrtrrBtjE58oYyQE>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9D14F30600DC;
 Mon,  3 Feb 2020 00:03:18 -0500 (EST)
From: Boqun Feng <boqun.feng@gmail.com>
To: linux-pci@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/3] PCI: hv: Move hypercall related definitions into tlfs
 header
Date: Mon,  3 Feb 2020 13:03:11 +0800
Message-Id: <20200203050313.69247-2-boqun.feng@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200203050313.69247-1-boqun.feng@gmail.com>
References: <20200203050313.69247-1-boqun.feng@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_210323_695033_A5E449D7 
X-CRM114-Status: GOOD (  12.93  )
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

Currently HVCALL_RETARGET_INTERRUPT and HV_PARTITION_ID_SELF are defined
in pci-hyperv.c. However, similar to other hypercall related definitions
, it makes more sense to put them in the tlfs header file.

Besides, these definitions are arch-dependent, so for the support of
virtual PCI on non-x86 archs in the future, move them into arch-specific
tlfs header file.

Signed-off-by: Boqun Feng (Microsoft) <boqun.feng@gmail.com>
---
 arch/x86/include/asm/hyperv-tlfs.h  | 3 +++
 drivers/pci/controller/pci-hyperv.c | 6 ------
 2 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/x86/include/asm/hyperv-tlfs.h b/arch/x86/include/asm/hyperv-tlfs.h
index 5f10f7f2098d..739bd89226a5 100644
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
