Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15676CB9F6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:09:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nrSVrUMTrLWlL9TTJqreuVGkTWL0wDn2R/bip0tjBR8=; b=SPSFAkka0ihiW6
	wtmF2rmH73WzFC9Zr8pp6qcknih0mjZqFmRl2SLZGw26dfmtcSHnbk7pS4EpNj1FIFeYhYEq6Xfs/
	jlYc3mwuy4iquuOSNb9+qmi2wobXQTqNuHatzGwKzXwDxFUYzLpApBludNxDKHVWX5uR11cpeoUaa
	EQ/IGawYor3fBzDDyGIAUeW9860vdrdkNXwpEB925zpig8UlOD3IS2NEEWJvJ+JDi+B7SZNl87NBq
	RgMj0qh8HsKDI2R4xN0r1ex4QolGroxJExWT1qYnroQZfhUHECEMiDSU5R8VtADrc1yceX5zbmozC
	PUF+zsNIubLP0YSIQolg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMOo-000754-Fu; Fri, 04 Oct 2019 12:09:30 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMKB-0001ml-23
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:04:44 +0000
Received: by mail-wm1-x343.google.com with SMTP id f22so5581040wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 05:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8r+04X1U74bdgfUkYIluwO6bKAocs6mvudJLF8T0HZA=;
 b=W58ZeFCJf65fFOo7DSR5+O7+YUsBq3AUgxBHse+0vrXC9hzvVVtjaRPQrK6fLPzZ9z
 uPcFtVVhxEHTDZHtCBeVFMjSRNmKrqK8v/6baAaVAGtxgwz/VO/CVTmmAvE+sFrb6cv2
 d+q9ceW8gDObKv5sZNs0CIJQI9R8AQVKg1s+1hpglROKbVyE0bJ+Kc6wsvpVFNRPthf0
 HZqkoJHutTwWtmIaESf2WJ6rbDu1y1rWjTmbKjQFXJpHHuyVHpHjTAPNn3Y7IkjyFzdj
 y40P6gQxpEspv9FVli+/eYdoDAapRrYaw2cdWwpmGjTB63Jgtvs2HvdgFppzepZX8aQ+
 x4zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8r+04X1U74bdgfUkYIluwO6bKAocs6mvudJLF8T0HZA=;
 b=Egdy4GJfd2DjLyOWiLpklE9zQ54FvhIii256/v2kvn2HTjOrSHmFiXx4vSJSUo0USR
 F3S0bb6bOdYVX3gSXKCZkSX7GbTEwJupfQwPXguaUjUgLPD2U1lnxOpY42DernPMmC8C
 eKxbDm0LCZbFDQakfeejKapwJd6JsnTdeSMaRgWZRuZ8ah5jtwhvY6cC0x5s3SFoxNBb
 tlgmv9XaZXRoFcUD/9JDr8fpypsomICac/F4jsiA7UJ+lcdp0MKzkkduX7qYDWeQBqD+
 /5HvuQzLETTS/r/8itTMxhGQxY5D0eI05JzzcKPePNiMAPhBxJ1M2Z28zboe4OZXK04p
 3kUA==
X-Gm-Message-State: APjAAAUiE6p7AhRoLFtCSVSkXD8zkEapjHmvdMFKK8esd/qpU11Zqg1l
 3tHJjo6Z7VJqusdlEjvlbETlBjLjIZd4auxV
X-Google-Smtp-Source: APXvYqz+eH0h7XaAQSIakBnH0srj7J+gQFjOQo0NYuDsMcgQc7JkuF5Vm39OexdY1GPGccRq3PPD+w==
X-Received: by 2002:a05:600c:2052:: with SMTP id
 p18mr10546311wmg.13.1570190681521; 
 Fri, 04 Oct 2019 05:04:41 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:b51e:3d9d:ec16:def5])
 by smtp.gmail.com with ESMTPSA id f8sm5019628wmb.37.2019.10.04.05.04.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 04 Oct 2019 05:04:40 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC/RFT PATCH 04/16] arm64: docs: Document SSBS HWCAP
Date: Fri,  4 Oct 2019 14:04:18 +0200
Message-Id: <20191004120430.11929-5-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
References: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050443_141946_5A8D1A51 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Jeremy Linton <jeremy.linton@arm.com>, Andre Przywara <andre.przywara@arm.com>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

We advertise the MRS/MSR instructions for toggling SSBS at EL0 using an
HWCAP, so document it along with the others.

Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
(cherry picked from commit ee91176120bd584aa10c564e7e9fdcaf397190a1)
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 Documentation/arm64/elf_hwcaps.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/arm64/elf_hwcaps.txt b/Documentation/arm64/elf_hwcaps.txt
index d6aff2c5e9e2..6feaffe90e22 100644
--- a/Documentation/arm64/elf_hwcaps.txt
+++ b/Documentation/arm64/elf_hwcaps.txt
@@ -178,3 +178,7 @@ HWCAP_ILRCPC
 HWCAP_FLAGM
 
     Functionality implied by ID_AA64ISAR0_EL1.TS == 0b0001.
+
+HWCAP_SSBS
+
+    Functionality implied by ID_AA64PFR1_EL1.SSBS == 0b0010.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
