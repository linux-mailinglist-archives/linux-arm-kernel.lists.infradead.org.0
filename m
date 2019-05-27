Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE802AEE7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 08:45:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nGd1L34i8V/7B95NfyUwfhhh7TmbqtSe2nHp8Hi9F0s=; b=UV2c+OcgIaQDoV
	KATGE8FOSpNEafR48I4+qEw7RchCeXr++60HlHIfuLAG1uPI4Ykm2zoit6f7zyGNC0mgzEQYQkH/U
	D1ECXdh245epp0kCwJ4qp/uWJzqwFY9joMYt9Ao4m0sgNh1RSDIcMuyBQDfwI23VMh1AlHj/z41MS
	4U+ZlfV0GXlMFq6UGVu5iCeG5oyKMyLnyxLeuhb1LX0fHwvRTWlpBO41vZtqGHrqaJ7fCBy/pnnYh
	u7cCoHGus24A+5+pEqho9hRiwMDt8DGIbcrmfhpQUnilvL3ue2ZeNNhYdt3TxzfxzFFb74G0KGwDw
	e6KwkYaIAghR77n9n7dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV9Np-0006Hv-6Y; Mon, 27 May 2019 06:45:21 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV9Nh-0006HW-Vw
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 06:45:15 +0000
Received: by mail-wr1-x441.google.com with SMTP id t4so7407981wrx.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 23:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BCydlx7A+Fr0L6eQELMXpszrnXP6arZ8JxeJSKMF/QU=;
 b=QUB0MMNpq0FNQft9E45BDYsVAwRX8U+juu+uLSFTCzOET1CtlXIZvv06ihIh16V2rf
 1uxYJpIixxyiv52bwCePgXYcXlatHURrN9EqxeYxmnkW+1GqM8DleQPuB8HluGfPeLLV
 ul9YsSx3ajoN7sa1xSu8LBT82TX8bld9J6bUAVkdtNVXVwNfJt8IBfgP4Zu8WUphSFS6
 bFMLxE1kgqebc7HdFvVOO37W6fCW5fTrlxVyHDTsNDES1FdpyzTLkOkXB2WXpHtn7wpU
 t/ohVJK3p2dKh7mWz2fWnLvRtZMiMxxs1tcLtLvnE9j7dwxzNvBC/P4uViagJ1jg/ESq
 NYTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BCydlx7A+Fr0L6eQELMXpszrnXP6arZ8JxeJSKMF/QU=;
 b=Z5+A/WwqqPefYvU/cUhIhVGSfqfsmeD6iMLpAK51LPvvz/aO6gFsoAWg2bE+8zTGNE
 50SOZOxUFwz5e7NbTIkXUMcnT16ch8/8a7erEIj9rWnD5bWYdSzrL7DNUhLglrdqec/w
 g4O3iufVDIAsS7eTClrQE4t/nJJBMP24VAij4iqiJlNBIkwjNW7aMpR+TPp7W2T3HlRE
 wX342WQPxbQpZcziwsQaFvzL/Owxk1+8r8BzL4fKFavecvSKP/VNVqXoSrS4ctz98wAt
 NjYVqxGFWYdU/+CWp0eRcrU30hXentFWqt33TL5V9vOzn8sxIXMWcFGRZv0zx6/mEpuB
 eKOg==
X-Gm-Message-State: APjAAAXMPVe6U2H6mFSoPRWNOsJZPtIkHGQP4NfSZoT6VWiPpoVy4fKj
 zPCNv0f/tfaeCBtrvGbvdrrDUCS1Cja48VGN
X-Google-Smtp-Source: APXvYqyXBNQpcPZ9hV7csNUjA18w1V1406XbSE4i/Ya7BYhv9nt2SKhfyPp8d3rSTbPAEFWR8wItpQ==
X-Received: by 2002:a5d:688b:: with SMTP id h11mr9125852wru.99.1558939511401; 
 Sun, 26 May 2019 23:45:11 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:ec4d:d7c2:5824:a589])
 by smtp.gmail.com with ESMTPSA id z20sm17873885wmf.14.2019.05.26.23.45.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 23:45:10 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/module: revert to unsigned interpretation of ABS16/32
 relocations
Date: Mon, 27 May 2019 08:44:13 +0200
Message-Id: <20190527064413.21304-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_234514_031757_1186E085 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, marc.zyngier@arm.com, will.deacon@arm.com,
 james.morse@arm.com, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 1cf24a2cc3fd

  ("arm64/module: deal with ambiguity in PRELxx relocation ranges")

updated the overflow checking logic in the relocation handling code to
ensure that PREL16/32 relocations don't overflow signed quantities.

However, the same code path is used for absolute relocations, where the
interpretation is the opposite: the only current use case for absolute
relocations operating on non-native word size quantities is the CRC32
handling in the CONFIG_MODVERSIONS code, and these CRCs are unsigned
32-bit quantities, which are now being rejected by the module loader
if bit 31 happens to be set.

So let's use different ranges for quanties subject to absolute vs.
relative relocations:
- ABS16/32 relocations should be in the range [0, Uxx_MAX)
- PREL16/32 relocations should be in the range [Sxx_MIN, Sxx_MAX)

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm64/kernel/module.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/kernel/module.c b/arch/arm64/kernel/module.c
index f32359cffb01..85fb63c1ba3a 100644
--- a/arch/arm64/kernel/module.c
+++ b/arch/arm64/kernel/module.c
@@ -98,10 +98,10 @@ static int reloc_data(enum aarch64_reloc_op op, void *place, u64 val, int len)
 
 	/*
 	 * The ELF psABI for AArch64 documents the 16-bit and 32-bit place
-	 * relative relocations as having a range of [-2^15, 2^16) or
-	 * [-2^31, 2^32), respectively. However, in order to be able to detect
-	 * overflows reliably, we have to choose whether we interpret such
-	 * quantities as signed or as unsigned, and stick with it.
+	 * relative and absolute relocations as having a range of [-2^15, 2^16)
+	 * or [-2^31, 2^32), respectively. However, in order to be able to
+	 * detect overflows reliably, we have to choose whether we interpret
+	 * such quantities as signed or as unsigned, and stick with it.
 	 * The way we organize our address space requires a signed
 	 * interpretation of 32-bit relative references, so let's use that
 	 * for all R_AARCH64_PRELxx relocations. This means our upper
@@ -111,12 +111,14 @@ static int reloc_data(enum aarch64_reloc_op op, void *place, u64 val, int len)
 	switch (len) {
 	case 16:
 		*(s16 *)place = sval;
-		if (sval < S16_MIN || sval > S16_MAX)
+		if ((op == RELOC_OP_ABS && (sval < 0 || sval > U16_MAX)) ||
+		    (op == RELOC_OP_PREL && (sval < S16_MIN || sval > S16_MAX)))
 			return -ERANGE;
 		break;
 	case 32:
 		*(s32 *)place = sval;
-		if (sval < S32_MIN || sval > S32_MAX)
+		if ((op == RELOC_OP_ABS && (sval < 0 || sval > U32_MAX)) ||
+		    (op == RELOC_OP_PREL && (sval < S32_MIN || sval > S32_MAX)))
 			return -ERANGE;
 		break;
 	case 64:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
