Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 767B0128E6C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 15:11:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SqS2OYO1OsWKpo6IqGcHC/peXbGKopsoGTQPp5vPpo0=; b=cRJ2Ne85fx+qrf
	SJhH8Zx+P+7pXslPDeWNwV6pnpp3H3uRUhXRRvUzXR4dz+MiFdVsAo6TIGYcxJDYIOq77SVhfsoqN
	kc24QXgsG0uB4ZLVxPWt1uiUXYepHSpU7zgOXY0ZIX5bn+ax/gqB1WMrlm7nYYIlv8JU6M/1Tr8hq
	nWhp3qpxGHmjI0SpTpSnKiUxUNjq7HvT2r/j1EwXrsXY+of5N8bjF9wXFcPInLwlLyfMN1P48SJ5O
	M9Z7pbtIgj/xj9jIIzEy20Q4eGPmB0zciKB8uONE7dq+h+Na+f57dINaKiqJOxdrZ+8e7oK5Oc4lH
	fMejRdvOULZaJc2D8Fqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij1ws-0001hY-Hw; Sun, 22 Dec 2019 14:11:10 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij1wO-0001Uh-Ar
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 14:10:41 +0000
Received: by mail-wm1-x342.google.com with SMTP id u2so13683908wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 06:10:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/VDBOK2IJqgukN9tSgWPXP9FuHvsRdT8O5ST1j5LKEI=;
 b=rnl7ok3k3yjSKvrZzu7/K3jfanSdQylXdtfY/RoXQpe+JzH8lTjtrV5oWs0XohTMJP
 nPfrMz9rKWA2kLADIV4PliiG0IS+oWJC5kZNEPaW+I8m+PSfv/9HD78grLlzoEYJUNgh
 6XhbHzwIgPpu8BtTdVmkoKyYB6P5NZ8rjcDLKnkuOgrBegB5rm3qg0NRtixyQnCJ5Zyx
 m7pWENICuUdxl3Mrgv93EuLvdkr+HwNz8sWpRUj9JCQymTcndTgvjxabLYsA6E+54WBc
 BkHb6R5ZTuLRsMJcpYS1E1jYGVJeCS37KXuHw0BiCJYxnE5N9BoehShBbytL3/ezI8rF
 2Fcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/VDBOK2IJqgukN9tSgWPXP9FuHvsRdT8O5ST1j5LKEI=;
 b=d0vaI21+d+jbyD7VKR0ufC5bqGs8SQYKcmIcLZmOGTQR/y81KwJzPaKh88ftaF4XHV
 mrJzUt6ej0X10QUzI9ibq6MFrS5zLCytnaytEuh1lPAB/ZDUQh38i5nVC9iV5bWJLI1P
 t3Tb0Z9aUJr8LEYzvhlCs/rR3361nPy9hCQedbkDQpxGeKpjTbi0PTzb/YxeIGnt8+Jw
 AiPVSgzn6Wcie4YaXI2BzKwdxHktzift+JZBUghebi3EYnliFvyKMo92cTY51ta0wN3w
 MW5chp6UuVUjoO0afI2efG1AtpccCNAvRY1Q2gYywiC08iKjMrWAusvIDUDqol/LdFXV
 K1oQ==
X-Gm-Message-State: APjAAAU5HgAdanY2Pu9L4VQJyjguP4dgIGwghvEKYBIslrKL0OyMkzQu
 wIAXvcL9SEWtrY/kRNTsln4=
X-Google-Smtp-Source: APXvYqxznfu5OShpVsrN3qzpIHEnzPpf0Bh5ApTGjy7QwGouyzgUUr2uDphv4ytkG04CXs9mfuA43A==
X-Received: by 2002:a1c:66d6:: with SMTP id a205mr8411887wmc.171.1577023838861; 
 Sun, 22 Dec 2019 06:10:38 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id s128sm16794353wme.39.2019.12.22.06.10.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 06:10:37 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 01/13] dt-bindings: memory: Add Tegra186 memory client IDs
Date: Sun, 22 Dec 2019 15:10:23 +0100
Message-Id: <20191222141035.1649937-2-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191222141035.1649937-1-thierry.reding@gmail.com>
References: <20191222141035.1649937-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_061040_373097_0E037031 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Add IDs for the memory clients found on NVIDIA Tegra186 SoCs. This will
be used to describe interconnect paths from devices to system memory.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 include/dt-bindings/memory/tegra186-mc.h | 139 +++++++++++++++++++++++
 1 file changed, 139 insertions(+)

diff --git a/include/dt-bindings/memory/tegra186-mc.h b/include/dt-bindings/memory/tegra186-mc.h
index 64813536aec9..82a1e27f7357 100644
--- a/include/dt-bindings/memory/tegra186-mc.h
+++ b/include/dt-bindings/memory/tegra186-mc.h
@@ -108,4 +108,143 @@
 #define TEGRA186_SID_SE_VM6		0x4e
 #define TEGRA186_SID_SE_VM7		0x4f
 
+/*
+ * memory client IDs
+ */
+
+/* Misses from System Memory Management Unit (SMMU) Page Table Cache (PTC) */
+#define TEGRA186_MEMORY_CLIENT_PTCR 0x00
+/* PCIE reads */
+#define TEGRA186_MEMORY_CLIENT_AFIR 0x0e
+/* High-definition audio (HDA) reads */
+#define TEGRA186_MEMORY_CLIENT_HDAR 0x15
+/* Host channel data reads */
+#define TEGRA186_MEMORY_CLIENT_HOST1XDMAR 0x16
+#define TEGRA186_MEMORY_CLIENT_NVENCSRD 0x1c
+/* SATA reads */
+#define TEGRA186_MEMORY_CLIENT_SATAR 0x1f
+/* Reads from Cortex-A9 4 CPU cores via the L2 cache */
+#define TEGRA186_MEMORY_CLIENT_MPCORER 0x27
+#define TEGRA186_MEMORY_CLIENT_NVENCSWR 0x2b
+/* PCIE writes */
+#define TEGRA186_MEMORY_CLIENT_AFIW 0x31
+/* High-definition audio (HDA) writes */
+#define TEGRA186_MEMORY_CLIENT_HDAW 0x35
+/* Writes from Cortex-A9 4 CPU cores via the L2 cache */
+#define TEGRA186_MEMORY_CLIENT_MPCOREW 0x39
+/* SATA writes */
+#define TEGRA186_MEMORY_CLIENT_SATAW 0x3d
+/* ISP Read client for Crossbar A */
+#define TEGRA186_MEMORY_CLIENT_ISPRA 0x44
+/* ISP Write client for Crossbar A */
+#define TEGRA186_MEMORY_CLIENT_ISPWA 0x46
+/* ISP Write client Crossbar B */
+#define TEGRA186_MEMORY_CLIENT_ISPWB 0x47
+/* XUSB reads */
+#define TEGRA186_MEMORY_CLIENT_XUSB_HOSTR 0x4a
+/* XUSB_HOST writes */
+#define TEGRA186_MEMORY_CLIENT_XUSB_HOSTW 0x4b
+/* XUSB reads */
+#define TEGRA186_MEMORY_CLIENT_XUSB_DEVR 0x4c
+/* XUSB_DEV writes */
+#define TEGRA186_MEMORY_CLIENT_XUSB_DEVW 0x4d
+/* TSEC Memory Return Data Client Description */
+#define TEGRA186_MEMORY_CLIENT_TSECSRD 0x54
+/* TSEC Memory Write Client Description */
+#define TEGRA186_MEMORY_CLIENT_TSECSWR 0x55
+/* 3D, ltcx reads instance 0 */
+#define TEGRA186_MEMORY_CLIENT_GPUSRD 0x58
+/* 3D, ltcx writes instance 0 */
+#define TEGRA186_MEMORY_CLIENT_GPUSWR 0x59
+/* sdmmca memory read client */
+#define TEGRA186_MEMORY_CLIENT_SDMMCRA 0x60
+/* sdmmcbmemory read client */
+#define TEGRA186_MEMORY_CLIENT_SDMMCRAA 0x61
+/* sdmmc memory read client */
+#define TEGRA186_MEMORY_CLIENT_SDMMCR 0x62
+/* sdmmcd memory read client */
+#define TEGRA186_MEMORY_CLIENT_SDMMCRAB 0x63
+/* sdmmca memory write client */
+#define TEGRA186_MEMORY_CLIENT_SDMMCWA 0x64
+/* sdmmcb memory write client */
+#define TEGRA186_MEMORY_CLIENT_SDMMCWAA 0x65
+/* sdmmc memory write client */
+#define TEGRA186_MEMORY_CLIENT_SDMMCW 0x66
+/* sdmmcd memory write client */
+#define TEGRA186_MEMORY_CLIENT_SDMMCWAB 0x67
+#define TEGRA186_MEMORY_CLIENT_VICSRD 0x6c
+#define TEGRA186_MEMORY_CLIENT_VICSWR 0x6d
+/* VI Write client */
+#define TEGRA186_MEMORY_CLIENT_VIW 0x72
+#define TEGRA186_MEMORY_CLIENT_NVDECSRD 0x78
+#define TEGRA186_MEMORY_CLIENT_NVDECSWR 0x79
+/* Audio Processing (APE) engine reads */
+#define TEGRA186_MEMORY_CLIENT_APER 0x7a
+/* Audio Processing (APE) engine writes */
+#define TEGRA186_MEMORY_CLIENT_APEW 0x7b
+#define TEGRA186_MEMORY_CLIENT_NVJPGSRD 0x7e
+#define TEGRA186_MEMORY_CLIENT_NVJPGSWR 0x7f
+/* SE Memory Return Data Client Description */
+#define TEGRA186_MEMORY_CLIENT_SESRD 0x80
+/* SE Memory Write Client Description */
+#define TEGRA186_MEMORY_CLIENT_SESWR 0x81
+/* ETR reads */
+#define TEGRA186_MEMORY_CLIENT_ETRR 0x84
+/* ETR writes */
+#define TEGRA186_MEMORY_CLIENT_ETRW 0x85
+/* TSECB Memory Return Data Client Description */
+#define TEGRA186_MEMORY_CLIENT_TSECSRDB 0x86
+/* TSECB Memory Write Client Description */
+#define TEGRA186_MEMORY_CLIENT_TSECSWRB 0x87
+/* 3D, ltcx reads instance 1 */
+#define TEGRA186_MEMORY_CLIENT_GPUSRD2 0x88
+/* 3D, ltcx writes instance 1 */
+#define TEGRA186_MEMORY_CLIENT_GPUSWR2 0x89
+/* AXI Switch read client */
+#define TEGRA186_MEMORY_CLIENT_AXISR 0x8c
+/* AXI Switch write client */
+#define TEGRA186_MEMORY_CLIENT_AXISW 0x8d
+/* EQOS read client */
+#define TEGRA186_MEMORY_CLIENT_EQOSR 0x8e
+/* EQOS write client */
+#define TEGRA186_MEMORY_CLIENT_EQOSW 0x8f
+/* UFSHC read client */
+#define TEGRA186_MEMORY_CLIENT_UFSHCR 0x90
+/* UFSHC write client */
+#define TEGRA186_MEMORY_CLIENT_UFSHCW 0x91
+/* NVDISPLAY read client */
+#define TEGRA186_MEMORY_CLIENT_NVDISPLAYR 0x92
+/* BPMP read client */
+#define TEGRA186_MEMORY_CLIENT_BPMPR 0x93
+/* BPMP write client */
+#define TEGRA186_MEMORY_CLIENT_BPMPW 0x94
+/* BPMPDMA read client */
+#define TEGRA186_MEMORY_CLIENT_BPMPDMAR 0x95
+/* BPMPDMA write client */
+#define TEGRA186_MEMORY_CLIENT_BPMPDMAW 0x96
+/* AON read client */
+#define TEGRA186_MEMORY_CLIENT_AONR 0x97
+/* AON write client */
+#define TEGRA186_MEMORY_CLIENT_AONW 0x98
+/* AONDMA read client */
+#define TEGRA186_MEMORY_CLIENT_AONDMAR 0x99
+/* AONDMA write client */
+#define TEGRA186_MEMORY_CLIENT_AONDMAW 0x9a
+/* SCE read client */
+#define TEGRA186_MEMORY_CLIENT_SCER 0x9b
+/* SCE write client */
+#define TEGRA186_MEMORY_CLIENT_SCEW 0x9c
+/* SCEDMA read client */
+#define TEGRA186_MEMORY_CLIENT_SCEDMAR 0x9d
+/* SCEDMA write client */
+#define TEGRA186_MEMORY_CLIENT_SCEDMAW 0x9e
+/* APEDMA read client */
+#define TEGRA186_MEMORY_CLIENT_APEDMAR 0x9f
+/* APEDMA write client */
+#define TEGRA186_MEMORY_CLIENT_APEDMAW 0xa0
+/* NVDISPLAY read client instance 2 */
+#define TEGRA186_MEMORY_CLIENT_NVDISPLAYR1 0xa1
+#define TEGRA186_MEMORY_CLIENT_VICSRD1 0xa2
+#define TEGRA186_MEMORY_CLIENT_NVDECSRD1 0xa3
+
 #endif
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
