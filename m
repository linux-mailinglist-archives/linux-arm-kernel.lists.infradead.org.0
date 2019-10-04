Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A10CBA13
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:12:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cki2qqHi5FphXAspZrmY3IfYdL/Ts9BOTLfJIOL6po0=; b=LYKMx5JQwt3/oq
	JGQJ5aP0Bspcw9uFqVLT+7amzZ0hbWe1pLO6pvwQBhSmsBSU1qKTrGQtjSZLhRjrPZjQOKfds0u6t
	azDqmarDPxBm85RWnq/itpFZD3Lkz6I6mIWWltmSkvp30vSQTMFU8dgixw1M+4CUBsmAxBOtt2No2
	cWLFjJ8UoqCQLPXlwIDbzxqUuQoMt8FhCI7WDKfL4XIHdxZUat+XfbADc97oLZHr1KA+4qvSMvLO4
	YxhWuAg7OFxeDHyNrKgDIzm3K5497i7TqJj/bHveo1LN6QhMx/SpC9J2NBbeVwWNKwL1dF6bjUIbe
	PtjOCkyeLQHl5qmItRlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMRx-0002g6-TQ; Fri, 04 Oct 2019 12:12:45 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMKQ-0001yY-Pe
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:05:01 +0000
Received: by mail-wm1-x344.google.com with SMTP id v17so5580932wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 05:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6vdcJpY6kjs31UUpmKpTlnwItStrMhbxBjdYfHyk8nk=;
 b=us9gGLWDgsVjLc86ifXC6p5QEkZB5ybWEbH7Uw6sj84f0BRZ6uyEY7uoHm9eqSHJci
 Hrx09iSf4ewXadLEfTVPuHzXCG1HRO/6A1Iyo2VwgLudG9lIZRbtin93MXDggM/YqpLJ
 JrOFbniF3mJ4vRf1ZHHquUJMNOQ+Ei1EPub/mB1zrORiioLAJjkGxG44xRk4A0OPX8Q+
 fK/2L9KIlSteIkkiiziFOhU9A0ayJ8WtMr+ODvHTDoTrIoM0ApRKq0DmvX0qAqmefkL0
 0mvZe/NZMZic3tvqKZY1+VkDZyWgNGff4UTXM6rsUpQQS2Iru04wPl2flElR732BXJxK
 0xQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6vdcJpY6kjs31UUpmKpTlnwItStrMhbxBjdYfHyk8nk=;
 b=RK/yzSmns0OnJldunQoIFnWJtqxuaqeZqxjvU8IjdkPNwfv10g4FGN0yAPV39XH8hu
 Og7czcOMqLTKPZALiUX8k3U6PQNzP078g6wOUALn0WdXbV2zn7/CLYoO1D5W6iRyOxzP
 tMuyzmehhX0sSdmDw5iXBwXMe9YfzhUmB+xPqyKZbuOAa+wyVvYP1BVU2gfBwp5fziMv
 zSpiGwzOgjzpJLlA1s82LX5MMUi85uF9uv8g+SSZoYWvcmWAzZOeSlcPAiT1HhKgNO0F
 +7V0E1MmcikMB9MmYsDgqFvPJ4cv5i6pWxwudvhxz138zL9DKzv4amSxR6TH/fNSP99t
 tTBA==
X-Gm-Message-State: APjAAAUywpfPcwVdkrSQObSK27R32HxksIZ9mzHKq/HCqGEFrQgEJGu+
 bY6fy1dheXVNwVKMf4R8nlpcUUj6YG2eR5+J
X-Google-Smtp-Source: APXvYqwkrnLxx5zZyBXBMKfgOgOmHouSUgnzYn21AmTYJmDZWMMT3CaITGcN1kSQcdiPKMtEs3IM7w==
X-Received: by 2002:a1c:1c7:: with SMTP id 190mr9898347wmb.23.1570190696256;
 Fri, 04 Oct 2019 05:04:56 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:b51e:3d9d:ec16:def5])
 by smtp.gmail.com with ESMTPSA id f8sm5019628wmb.37.2019.10.04.05.04.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 04 Oct 2019 05:04:55 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC/RFT PATCH 15/16] arm64: ssbs: Don't treat CPUs with SSBS as
 unaffected by SSB
Date: Fri,  4 Oct 2019 14:04:29 +0200
Message-Id: <20191004120430.11929-16-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
References: <20191004120430.11929-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_050458_924895_CDA78A3A 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

SSBS provides a relatively cheap mitigation for SSB, but it is still a
mitigation and its presence does not indicate that the CPU is unaffected
by the vulnerability.

Tweak the mitigation logic so that we report the correct string in sysfs.

Signed-off-by: Will Deacon <will.deacon@arm.com>
(cherry picked from commit eb337cdfcd5dd3b10522c2f34140a73a4c285c30)
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm64/kernel/cpu_errata.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 534111eab864..a9ad932160cc 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -341,7 +341,13 @@ static bool has_ssbd_mitigation(const struct arm64_cpu_capabilities *entry,
 
 	WARN_ON(scope != SCOPE_LOCAL_CPU || preemptible());
 
+	/* delay setting __ssb_safe until we get a firmware response */
+	if (is_midr_in_range_list(read_cpuid_id(), entry->midr_range_list))
+		this_cpu_safe = true;
+
 	if (this_cpu_has_cap(ARM64_SSBS)) {
+		if (!this_cpu_safe)
+			__ssb_safe = false;
 		required = false;
 		goto out_printmsg;
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
