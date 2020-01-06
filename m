Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22187131BDF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 23:54:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hu9VL4Mzc7TV63U11bkkd1G4UFk1Nln/Gfccq2372WI=; b=JxJ
	OXVZO5WVq7Alv75ywcpPSfYKJwM4mWNH1SMS/vvEpTc+okTo9jVh5R74LBJ0IFr7vYleaZsnpFtlg
	5R8faQS/ftkByFc5Fdu+d6LqChhBi9HF07qE9R2F2zuopW4QI1L0N49liuGjQmmcbTn84X124tsBu
	MulzlfVazxB8Tk4N+0hCBhRg+4l4CDzJYlrjuHY3oKDQ4WmsKy4aeNV8AV9UXreaZzuO5PVtybeS4
	PSBUKXhUyrh2kISRXGYAf+wsuHBewo7MtNl0Vri+CY5bFmO6RzZN04ex7V3h8X4g3GvVBE07oOshV
	lIunykKoKOiJxwyd5ZzicBunvXUwv+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iobGS-0003Kn-TU; Mon, 06 Jan 2020 22:54:24 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iobGN-0003KA-44
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 22:54:20 +0000
Received: by mail-pf1-x442.google.com with SMTP id x6so26512013pfo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 14:54:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=BpAxESMCcXCSAxL59rFdWBZ2hjtyWfPRAq5lKk8HL34=;
 b=Uzx/5OMDlWzTeV4JmlKm0DoIuyKCpRuLl4uAvP41bNAti42CoSDPWWPDVAkT0QQQRt
 E1qm96M8yKI2LJNaZbc2nf0Fp0T5M8CmkV7RZ3QhEshiYysb0PlMYBlr1q+A9C2Ajb0/
 Ba+Rmg6VahLlkeBvUE8Rpqc/K+vXpyzBA+uK2L4ohV0ffan/ixbvbs8/M8W8JuQw/qhV
 B+2bwLvYCft+JBGlIsW0IMsHxqtCDaE7z/NrtDqfxPlpINKA+vycDTQpl3UOwuWz/30W
 dqwRizizPfvzeDQDX+334l6VmdMOZfa8ZPRJKXpYVPJtryye9f4xp/jk9HNeYf48K901
 7u7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=BpAxESMCcXCSAxL59rFdWBZ2hjtyWfPRAq5lKk8HL34=;
 b=DBqFQWfQJyERTcTjVw/4MsPCHz9h9k6K1IIMraMFcoXmMnJW5e64T3xOjOV8+rcpOt
 riFIxRVlwjHqRatW3rW3z9sUHBEoTlrJ25I6QzT94EnO32LERyNIRwMKRSl80JiDuXga
 jY0YU3gSzhJUn++A6hLQD2YXPR5wF/o/J0VaAl8hNDFUSDN9PNnRLdFoABH+UcvjUoRw
 u/qA7IxYX34pdTx/p7cFlg2Lhfsoy8hkGz/l8dvCPCiLJMsxMibkQnt2LFw6ohnZA0QZ
 7HhmiW1Ucilah1rhwxK3ehHLRDvW1lGkfFm0RbarQDJL6jYTDiK2wbAACKNDFnzyC3l3
 NYmw==
X-Gm-Message-State: APjAAAV3a0gvHwi2iXz+hybnBG1pv74xDoX6NiH+EC5Bd8E9LtkWDqBP
 StYaqCyeTVPqEsNDHdL9HKFbK6Jc
X-Google-Smtp-Source: APXvYqyxHQVIW/Xd0+lGsJuzbT/d67U8V5k93CSY58F6UFBNM0hzN0bPeyP/NBQuoTa5E2B0U4E7jQ==
X-Received: by 2002:a63:1402:: with SMTP id u2mr112088439pgl.224.1578351258118; 
 Mon, 06 Jan 2020 14:54:18 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id r8sm24892569pjo.22.2020.01.06.14.54.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 14:54:17 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: kpti: Add Broadcom Brahma-B53 core to the KPTI
 whitelist
Date: Mon,  6 Jan 2020 14:54:12 -0800
Message-Id: <20200106225414.20795-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_145419_190753_7ABAF2F5 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>, Julien Grall <julien.grall@arm.com>,
 opendmb@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 Andrew Murray <andrew.murray@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Broadcom Brahma-B53 CPUs do not implement ID_AA64PFR0_EL1.CSV3 but are
not susceptible to Meltdown, so add all Brahma-B53 part numbers to
kpti_safe_list[].

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm64/kernel/cpufeature.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 04cf64e9f0c9..0427b72c960b 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -975,6 +975,7 @@ static bool unmap_kernel_at_el0(const struct arm64_cpu_capabilities *entry,
 	static const struct midr_range kpti_safe_list[] = {
 		MIDR_ALL_VERSIONS(MIDR_CAVIUM_THUNDERX2),
 		MIDR_ALL_VERSIONS(MIDR_BRCM_VULCAN),
+		MIDR_ALL_VERSIONS(MIDR_BRAHMA_B53),
 		MIDR_ALL_VERSIONS(MIDR_CORTEX_A35),
 		MIDR_ALL_VERSIONS(MIDR_CORTEX_A53),
 		MIDR_ALL_VERSIONS(MIDR_CORTEX_A55),
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
