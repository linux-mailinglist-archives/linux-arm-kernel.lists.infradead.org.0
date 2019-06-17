Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4244952A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 00:30:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PdPLwlm2f2jhlGCRnOHPY0QQ+7UefbFTJzHSK8JJbcI=; b=ja3
	7/vvkXpNJVTs2j27G1U3Gtm6hip+b6/lZPxVQVrW7Fldb4ZIyMkbni056O5L1jNqaeZS3q3n9IFtc
	/0UdF2Zuv9PyJvB77SGkac7/4yV6tMeeL/AADomzwyOoJxcjgCZwxbMPhmINm4S5VtvEUkf5yJaeV
	vQplEftltc7lpvDByQVjMmaPdr88WzMePdmomFd3Ugxb7WOYtf/yrDq54zdU3aIIQgMj0VjaPTMkJ
	/Xo6BGuJoON9IGbKebAWTIVY/UwX8XC44rFdKjRN/ANarWplHBCYZUJg2bYPhAuzRFIyOFnoZcyso
	YQZBWw1vsTJRVZuAqPP8JgReVICmMvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd08q-0002of-N7; Mon, 17 Jun 2019 22:30:20 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd08i-0002o8-0V
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 22:30:13 +0000
Received: by mail-wr1-x442.google.com with SMTP id d18so11735185wrs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 15:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=EmgnUawf35aS/COYEiBvR/oQX1TKluh8z6aoSb2xf0o=;
 b=gLFgFtlVcDKfDN8uDdSejzgX1wovCYMzQtr78f8oiPm6oQDbxTudonvxj9toElDTVN
 /hOio1Gpja0hS3ADxE+jpsqBjl0MNIcbcw3Fy/u32FIoFfAY43c32gLHv+On0eYSMWWX
 twdOXUOZvLtZYXXrWYiqMsRJ/0RA+uZSTCTswq2GX30X/PLSuU0FEfFA58X4MRc6bfkM
 nS2ZBXs6CbBWIGi2TgL3aDKvqQNrkn3bBfYNeP+GvsmYzKsJvwGmYmn8n5olXWphtEzv
 kwsS7pUgJ35F/oZmpo+HvdGzP+PFjxx2oZ8oN7OIcvErHLDNEctW6oyXLsYkfClU3vs0
 N5Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=EmgnUawf35aS/COYEiBvR/oQX1TKluh8z6aoSb2xf0o=;
 b=srbSh46hDqi7Q1kr/b9Pst3iZmYcsssTJPQWtll9pk3heUMKxkEs9Jg+oD7KK/JqFR
 1mODU32JHJoCIsnH2jIL0pXbhdZN//uvRtzcKDLRin9kdxIDl0HWi1waKyT54fTF/Zkj
 BRXDoJUx+LjP4Fa+Sn5xbDI55pW7G1SDoYuPQF1cqDy5rKyKFCPQKpJwxV6LRCrC2hOm
 bVV+vf0OGE6A23DD95/oFFH/OSj3MP7aek95hSlbAGVe83X9GSWv66qAQ5AlIyCdQIrN
 +psjU0p3wbt3G7k1KNPQJpw//kHvhIwhFbM1AqLjEQnJ2W7NSDB83FeVY2epxwJLF7VJ
 CQvA==
X-Gm-Message-State: APjAAAU76mLyQDplzzYaQ9e5ZFIFOqqU4+RHBLUZKv9PCxC1Rn7WTN5E
 dx36WVI/GsNommTFNxoh51fqJ/fG
X-Google-Smtp-Source: APXvYqwEbSV3AhfkPcbOPFageFa+KGOeWfUBLZ9Gw2XrE6rApx75LQ3h0Njbij3BVtQ8wF9aCye2pQ==
X-Received: by 2002:adf:e691:: with SMTP id r17mr24374353wrm.67.1560810610247; 
 Mon, 17 Jun 2019 15:30:10 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id v204sm501312wma.20.2019.06.17.15.30.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 15:30:09 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3] arm64: Allow user selection of ARM64_MODULE_PLTS
Date: Mon, 17 Jun 2019 15:29:59 -0700
Message-Id: <20190617223000.11403-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_153012_080823_440E7625 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, ard.biesheuvel@linaro.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 bcm-kernel-feedback-list@broadcom.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make ARM64_MODULE_PLTS a selectable Kconfig symbol, since some people
might have very big modules spilling out of the dedicated module area
into vmalloc. Help text is copied from the ARM 32-bit counterpart and
modified to a mention of KASLR and specific ARM errata workaround(s).

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
Changes in v3:
- take out the part about "The modules will use slightly more memory, but after
  rounding up to page size, the actual memory footprint is usually the same.
- take out the "If unusure say Y", since we would really prefer this to
  be off by default for maximum performance

Changes in v2:

- added Ard's paragraph about KASLR
- added a paragraph about specific workarounds also requiring
  ARM64_MODULE_PLTS

 arch/arm64/Kconfig | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 697ea0510729..9206feaeff07 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1418,8 +1418,26 @@ config ARM64_SVE
 	  KVM in the same kernel image.
 
 config ARM64_MODULE_PLTS
-	bool
+	bool "Use PLTs to allow module memory to spill over into vmalloc area"
 	select HAVE_MOD_ARCH_SPECIFIC
+	help
+	  Allocate PLTs when loading modules so that jumps and calls whose
+	  targets are too far away for their relative offsets to be encoded
+	  in the instructions themselves can be bounced via veneers in the
+	  module's PLT. This allows modules to be allocated in the generic
+	  vmalloc area after the dedicated module memory area has been
+	  exhausted.
+
+	  When running with address space randomization (KASLR), the module
+	  region itself may be too far away for ordinary relative jumps and
+	  calls, and so in that case, module PLTs are required and cannot be
+	  disabled.
+
+	  Specific errata workaround(s) might also force module PLTs to be
+	  enabled (ARM64_ERRATUM_843419).
+
+	  Disabling this is usually safe for small single-platform
+	  configurations.
 
 config ARM64_PSEUDO_NMI
 	bool "Support for NMI-like interrupts"
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
