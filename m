Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E760ACFDEB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:42:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4v/o7t2+FlD9JU2VIMmvUmQSjz7eiqaESjL2PYGEfRI=; b=a6F5ynZxc3d2NF
	tufe0W/rqMaoaDV1b3hBNTKUI/dcpc4X/UstPsZdOLvnJv5Wb4TFnmPlz6gQpv34qtu8YLcUTVCj+
	aTboCrAO6AvbXHbm22KuW5LL1kYrGr7AuuoKoRo7T6s0hlF+ngAwpXBCkQkCMjbEal4plkia6KXCQ
	99MLbtDqjn3KTp49zQMWZPUBEJX2nw1TnEOP9U1L9vkalY6XTCPEXDSLE+H6BJHppnhbpRV/TBLUw
	GVSVzIkbd6urGEV0LdLPYIMH/+3lEAtD6LJTxANEDkVPGsO0bPRiTotlwRFki8j1SSEMozomsnXcK
	THTFfawIZakKQttZ5BaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHrcl-0008LO-Rw; Tue, 08 Oct 2019 15:42:07 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHraz-0006sA-5D
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:40:19 +0000
Received: by mail-wm1-x343.google.com with SMTP id y21so3636534wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 08:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/vtISEtUshe9NBLXroiK2UL/EjV2n3/vwtTUKw/aRUg=;
 b=wClrywn5UcceOArqPVuFG5qra/XM6cZtX5DJAjrVEQ6P3d4L+EjGNzW/MpRKhBcIaG
 J9HsmQ0BProl6Vcac0VvkGjBaPy4j/I8j579RADXXKYnRJpVp/q1BF4cYTfKI7qyV1bd
 kzyj212cWgbL10r9YpsRYZVd9GEjmFpIoZCSKa4wo0j/PeCYLcArzdAc47nm3Zkzl50b
 9Uz2LcEz/Oky1r9nEsJcBl5KVhiUSLNi6PlpwHg3lZjwmqg1KResZ6Py8GLN5dfxB9Qk
 hxtb9BaABS++wxkzCa0e3g2aflnAipyDYjz+THMbhRM+vGS+G6LZLbruSenT/0Jirqdx
 NXtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/vtISEtUshe9NBLXroiK2UL/EjV2n3/vwtTUKw/aRUg=;
 b=UgsHsb0Ae/Ev2Keg561wJsGCjJpSp67OpwRVzsp+PMqR5atydfpaAMR8qxIyebxpdc
 c5orqYOejhW5hy2ATN2q+3m9ooj/nbvPeNRX/SBiUXfHRMn4J6usx6HVCySmR0de2N2h
 dDP1tukVGZhP+ZwD6yLL8qabFyQp1JQWtTwGO76ZNmYdfYAN9wTAmoYhcoqHZ8bS1ove
 vePlC8FAKwoLRaMg1ni3s/Gnl1ohn0L4CzKXHtJReWLYY9UO6duyvUJo83AGcnMmsXfI
 Du2FQOdFpBlYuwOISk0P8XE8VfXKbq+NfPN2KOQIviwN+JzstUuSNX5Ql6saLha9+8jo
 ECjA==
X-Gm-Message-State: APjAAAXk1Og9XfaFQn8DngpOrFmqSJlSifGieEMbLkkBBaC+S8yoA8Dl
 /maLxHqJl0f0Ed8PZSHxtHyR3clGkw772w==
X-Google-Smtp-Source: APXvYqxFgFAFIFAlikaO+CHAaCebM4FYhoCtoCnhF00EWGcXRmoAlDFtYiCUGLNTma/t+OHQoE3LRw==
X-Received: by 2002:a05:600c:2319:: with SMTP id
 25mr4461682wmo.3.1570549215716; 
 Tue, 08 Oct 2019 08:40:15 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id x16sm16784723wrl.32.2019.10.08.08.40.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 08:40:14 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.19 06/16] arm64: Add sysfs vulnerability show
 for spectre-v1
Date: Tue,  8 Oct 2019 17:39:20 +0200
Message-Id: <20191008153930.15386-7-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
References: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_084017_221253_767B0DCD 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mian Yousaf Kaukab <ykaukab@suse.de>, Jeremy Linton <jeremy.linton@arm.com>,
 stable@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mian Yousaf Kaukab <ykaukab@suse.de>

[ Upstream commit 3891ebccace188af075ce143d8b072b65e90f695 ]

spectre-v1 has been mitigated and the mitigation is always active.
Report this to userspace via sysfs

Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm64/kernel/cpu_errata.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 7fe3a60d1086..3758ba538a43 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -729,3 +729,9 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 	{
 	}
 };
+
+ssize_t cpu_show_spectre_v1(struct device *dev, struct device_attribute *attr,
+			    char *buf)
+{
+	return sprintf(buf, "Mitigation: __user pointer sanitization\n");
+}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
