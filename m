Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B76C82C878
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 16:13:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PLR7/wCoFoxfh/5YIDZ50cpenkpxXuAilcfdJHDvx/I=; b=KBNahESjYZ/zzz
	qlEFlcRrvuXYkhN7ltQPZC8ua+2OIk5j4Aa3SCmlG5dnaME4+Kvz4Hdpk2ES8ZyYw7nWzYj/EX+3q
	RM+WCA/oTZiA4Ro0CL0yPQ5HNdlWTYaMCJ/eXr3SuaE5GbHWSC1sb11aYeWoiqrv3s7QimGdNp2kz
	hHtlCxFHzbB6ey2LLpRg3Qbwav2NAPWYaygLCJ206gDCHSU5NOQfHbNce4gH1nHn1K6ECz5X37T3C
	6P1byttDN7ZeqBiR1VE/Yp/leP4BEU2kzjZJVFyaGt2tfmZ5WjuLIAMkiU3rGDc8YXxBQ3jH7j25V
	4TO3I05++dnxXTVrwt7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVcr3-0007Oo-SW; Tue, 28 May 2019 14:13:29 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVcqv-0007OM-FZ
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 14:13:22 +0000
Received: by mail-wr1-x441.google.com with SMTP id f8so20449067wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 07:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W4Yo4iP/kfvt7MjhPqAM6tBeEB/SwV4gp1Nh7ErXmKc=;
 b=MUbKYYBcNeCdR9RiOeY3eP4Fl+Dps9pRsQo5zR38tCeqInkmAkTDUv+X4gMHShroSP
 EJWHD4pOSkHtDUBGze3mwPs1g/C4e7BUsmABAaQMXGGQk45b656Z5299M6ySQ1JtZ+fm
 wndyfQRa9eBpZ6OFdlGfFV6QWtOHxdHi+FZ0XWP4nYjmKd3sZeyBhP4zEdXAwm6+wJ/8
 pSXAAIchP7m1Ba6ykzyqX5P8m+3vSE5SfvHdrpO6PmrRD5iA7snnCt2LFX2cx8d/BlbE
 1bYzfgKeOIlsuF3/Ap51H03mxuDPIQX8gibWBMEVRslPoac5YnNtOx9GPwkb51cAbn79
 KTTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W4Yo4iP/kfvt7MjhPqAM6tBeEB/SwV4gp1Nh7ErXmKc=;
 b=OWrRFTGX78a5+fd3rFnnFjAYuMUyi4Bxlg9HFehUW97PQBG9yYHq0uO2Sh39BiW5ac
 GmSIrDERwAA/UCz3nQrnJAUaG9oAuBq/FHQnVDFmt46CrHE7fIdwcZ/dbtKV77IoXMHo
 sDEI1LTWY7Y49jhbRiZ3oV50lx5ddR6mqHZZO6IdLnBTO2f1wQPSRhjfEn042DqCsC79
 DTp5KUGs3y3K52utKLGFYZKJAuZLl5FUExtWw/qNm3GBM3ma6EwKdVTF0yymRjX5lgIj
 DVHqKpZsuOhQHJ6tGeQV1kgqyEcj39g0OHENjh7Z126AJS+rPTPayMrhCDqdOw25lUCs
 gJbw==
X-Gm-Message-State: APjAAAUHPucwjHOH3b79auTmip2s5Yr0EbbyVRwphAEPAHdbbErkNk4T
 60agSISg3KA3ALqysT4n/tT90mxPlzljCw==
X-Google-Smtp-Source: APXvYqx+1XmpWAqWzdGK5fnmA579y+O+mSaOFSdecckEZaFN7YGwOMbOVTsiSe98zFgTpEHcxXr0Fw==
X-Received: by 2002:adf:e311:: with SMTP id b17mr26220418wrj.11.1559052799669; 
 Tue, 28 May 2019 07:13:19 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:c8c7:f81b:b165:1aa7])
 by smtp.gmail.com with ESMTPSA id d26sm2783296wmb.4.2019.05.28.07.13.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 07:13:18 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64/module: revert to unsigned interpretation of
 ABS16/32 relocations
Date: Tue, 28 May 2019 16:13:16 +0200
Message-Id: <20190528141316.3304-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_071321_541556_39A14391 
X-CRM114-Status: GOOD (  15.42  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
- otherwise, print an error since no other 16 or 32 bit wide data
  relocations are currently supported.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
v2: use nested switch to test the RELOC_OP_xx type, and print an error if we
    encounter an unsupported one

 arch/arm64/kernel/module.c | 38 +++++++++++++++-----
 1 file changed, 30 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/kernel/module.c b/arch/arm64/kernel/module.c
index f32359cffb01..dd080837e6a9 100644
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
@@ -111,13 +111,35 @@ static int reloc_data(enum aarch64_reloc_op op, void *place, u64 val, int len)
 	switch (len) {
 	case 16:
 		*(s16 *)place = sval;
-		if (sval < S16_MIN || sval > S16_MAX)
-			return -ERANGE;
+		switch (op) {
+		case RELOC_OP_ABS:
+			if (sval < 0 || sval > U16_MAX)
+				return -ERANGE;
+			break;
+		case RELOC_OP_PREL:
+			if (sval < S16_MIN || sval > S16_MAX)
+				return -ERANGE;
+			break;
+		default:
+			pr_err("Invalid 16-bit data relocation (%d)\n", op);
+			return 0;
+		}
 		break;
 	case 32:
 		*(s32 *)place = sval;
-		if (sval < S32_MIN || sval > S32_MAX)
-			return -ERANGE;
+		switch (op) {
+		case RELOC_OP_ABS:
+			if (sval < 0 || sval > U32_MAX)
+				return -ERANGE;
+			break;
+		case RELOC_OP_PREL:
+			if (sval < S32_MIN || sval > S32_MAX)
+				return -ERANGE;
+			break;
+		default:
+			pr_err("Invalid 32-bit data relocation (%d)\n", op);
+			return 0;
+		}
 		break;
 	case 64:
 		*(s64 *)place = sval;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
