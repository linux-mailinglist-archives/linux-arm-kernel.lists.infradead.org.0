Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E6AF9507
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 17:03:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XXvfj8pV+xj96IwZt2QUmxBi7i7RSuy0GJGT5fvNHNo=; b=bMCK6oY9isxEmv
	4fP2c40BMiDMR3ZUsUg3ed105C6Myia/lHU1R/qJDPPsx/IKyHPBVCyOajlV9qA7AfohdlK7CfXxX
	sYVItXjZmG0ypg9VbtODcLUSdqDKQrdYhkduTauje24Oni0FujMurdppA1mtu0AIOMjJUMF7jWJV0
	PX31mxsb7ZPNSo8JhklZ4kw0WaDGQa9zRHyveqYPnHoxpMVvO1aPy6+vgMsmaZuzySFcEBiR9w0S2
	jHWeqBb/RKJkyxj5uc1Dpm6YXZh29lF6dGCGzE5GC5DBNwBOCCRzsoKKRjPHTvucHpcy7jRYf6fIX
	2b/ny8/lPvF3RdEQgIqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUYd3-0000cN-Ll; Tue, 12 Nov 2019 16:02:53 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUYc8-0000WJ-60
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 16:01:57 +0000
Received: by mail-lj1-x241.google.com with SMTP id d5so8907693ljl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 08:01:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4kdtfZv1UWGs4z6mZX1Xj2hNLNvOhEkV9MFCDyUM5WY=;
 b=Vb1PBepHxX3U8dmOFv17pjejpZizz7XnsepoMKFySZxszgEZoBT3aII0a7WvybC8EL
 jn7pvOgzymp7/xN46tuKOiNL33sfWFhTAO4NnVtdbeKd3DZ4+Kjbomt31ocY6v3PulLZ
 w7HFQPiV8MZ5oulC2anS8lGnKusuGZme/ldc3KmWuaRIMYfFsww/O9yoa69voPa7ssJx
 0wZoZvJPD/2JYo0UQDTUV94lukvVKDeUMyq4d1f6ByiaFyGbcQwzlKgBk58jMNjSBcCL
 dsBjjId+R+R7t7dghP0ljBOMGWvWVY78IKWcPH38+OtyjyB1eAvNqsUvjM2XsROzJmVS
 2KSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4kdtfZv1UWGs4z6mZX1Xj2hNLNvOhEkV9MFCDyUM5WY=;
 b=oTR6I9lLPU2HXF8hsy+NfUh0PE38n/itCrLh6anv2+BoinXvEIq+n9CAYtvSs+8qQ7
 rTcbJCvxXcbBsNVmWEl4DWY3NGa3y0hWzE7/CZGsvt5nzPcRFCHx7b6EdPXYTW3s04LN
 VmcS7xIgww1MuC9V++BdK2BYiLQi3ITxqWde7bS1TqflD1DRkWCJJEKBgMOgnv050csa
 8cEFE3beuuP0TJpkuy9wBZRIQrc70bc4Ej34x6GPo7hT1IioYwYiXhcrfx2ck0WyShi7
 tPrOZGbYJAdlm2FvKCqJtwp8QpdURWVTlA22pCUDZM30q5EvIlRSHEC/1eYKMNxWxKka
 3sAw==
X-Gm-Message-State: APjAAAVAv8m/pR9FXYeIhVmf85oTVrJ4UHY9xEYzVmlaqILz1M5Vcj8R
 6zxAvG/CGV8wxTG8orVlB0Nddw==
X-Google-Smtp-Source: APXvYqxN/R60ymZE5BgyfVYlnYrvwIMdBjJapz4sBo4B+ExwAHn5hXfIq+WgqZCPqVQMVlWLa5VvyA==
X-Received: by 2002:a05:651c:1025:: with SMTP id
 w5mr9990594ljm.68.1573574513469; 
 Tue, 12 Nov 2019 08:01:53 -0800 (PST)
Received: from localhost (c-413e70d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.62.65])
 by smtp.gmail.com with ESMTPSA id v21sm8394109lfe.68.2019.11.12.08.01.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 08:01:52 -0800 (PST)
From: Anders Roxell <anders.roxell@linaro.org>
To: catalin.marinas@arm.com
Subject: [PATCH] arm64: Kconfig: add a choice for endianess
Date: Tue, 12 Nov 2019 17:01:44 +0100
Message-Id: <20191112160144.8357-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_080156_300570_6AD4A7FA 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anders Roxell <anders.roxell@linaro.org>, john.garry@huawei.com,
 will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building allmodconfig KCONFIG_ALLCONFIG=$(pwd)/arch/arm64/configs/defconfig
CONFIG_CPU_BIG_ENDIAN gets enabled. Which tends not to be what most
people wants. Another concern that thas come up is that ACPI in't built
for an allmodconfig kernel today since that also depends on !CPU_BIG_ENDIAN.

Rework so that we introduce a 'choice' and default the choice to
CPU_LITTLE_ENDIAN. That means that when we build an allmodconfig kernel
it will default to CPU_LITTLE_ENDIAN that most people tends to want.

Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 arch/arm64/Kconfig | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 64764ca92fca..62f83c234a61 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -877,11 +877,24 @@ config ARM64_PA_BITS
 	default 48 if ARM64_PA_BITS_48
 	default 52 if ARM64_PA_BITS_52
 
+choice
+	prompt "Endianess"
+	default CPU_LITTLE_ENDIAN
+	help
+	  Choose what mode you plan on running your kernel in.
+
 config CPU_BIG_ENDIAN
        bool "Build big-endian kernel"
        help
          Say Y if you plan on running a kernel in big-endian mode.
 
+config CPU_LITTLE_ENDIAN
+	bool "Build little-endian kernel"
+	help
+	  Say Y if you plan on running a kernel in little-endian mode.
+
+endchoice
+
 config SCHED_MC
 	bool "Multi-core scheduler support"
 	help
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
