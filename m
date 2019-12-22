Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A96128E78
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 15:14:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v9bvlUvq0KYp9rJPYrx1eFum8rXa5iJbC5BkC1Zk5SU=; b=GZJ76SrlYq8DV1
	oU6BMRK0kbEurxkz+Ou7ez9iAv/LmKbJ4GbACVlw4RQhU1qdKOOuIXI8Pd7fYniaEsShlhKbZj/Ae
	NkwM/iLa95+QNhrxv1IewluE2MHLKUuQbW+6eGnYw3j4wSO4174cz3WZKMurEJVdqB790ZcrTncGG
	KrYXKr5v//C4WuW3+FBGx52svWb7ftXGGzF6Ae7x4E4yM8cQwZvxpFiqednV0SZw9iWMnVoFJfnMD
	exnBAISBR8/3v5/TYO6lrO0xHTBtaKtnCJ8A+sJIE5tdF6H8XSAAgxky6StLPFfm1UysEK9JEh6mu
	c9n8SNyErWrGCwzf/nFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij1zf-00048t-Fv; Sun, 22 Dec 2019 14:14:03 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij1wf-0001ij-PB
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 14:11:03 +0000
Received: by mail-wr1-x442.google.com with SMTP id y17so13965186wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 06:10:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vzFYuc95AWY6svq+EBkTgwMguKL8GySeZ2TwbGI8OIM=;
 b=uLUP93BWw0o+JzGgvJbHS+JQq2j1+NBwmhp+m4Ik109/D6oaX5YQAmSL97SKYfWENj
 9U3hX5wRhynx3P/ymFwsgDAiQlvfSSoAoSyyoULEMnlaqPsc64jHQQLDlfRc7hGKjZ8m
 RkEUeiqYjQW+OG7JZROkofNpcYfASzs8CLN6WRihBpRh7zNO6hm8KKmnKFceUkx5f3DX
 4XeySBgPFwdUYAaOPuVgwj0oblL5rCXAvU14LkZTn76fQfE7x4jqAh45YvYgleyxNqAc
 EV2DBP5T4M48S/NnnqlZHiNveDd0i5hN8ZycFqoBb309C0x8tk6HfTnJyxnGOVU4oG5D
 USJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vzFYuc95AWY6svq+EBkTgwMguKL8GySeZ2TwbGI8OIM=;
 b=kDSyqbZ28gbUQX2xdUrhmRRaNiiSHe1e4Ap/XxcDZvyk2TBjrTWg9fYx2WAZr8BVGp
 ieoDamy4r43AScAlZ8cqYi3WoSVJwyEwDshL/OAcqpyEqrQUXPtF5KICz005Qt8S+0dH
 9k5ASHFxF/w+5iS5/esuUtx9PDRsdyJ26Ef+TiAnlZqP5ySTYMDuWr9nbMZpe1pCLXVT
 OoNxcVLzFhIMJ9S6wTdrK6do1sdM/dH4lYNlevwHrFAjW+AuZyH280L8Mk1TxBc3ji0n
 WEZXCOQNA4FFFkj/z1PyLEKqEw4YeQnVmLew+Hbi4pPfrW6hgZ2weYOQ6/RvfkFHUF2L
 zRsQ==
X-Gm-Message-State: APjAAAU+a3LvI9uvqcMvO4D5a6ZXZv5BBzudfvkIB76mndLockKWPE1v
 J/0ipMLMLBK/2YLmX8x6eOzTislX
X-Google-Smtp-Source: APXvYqzAiT+VAg4ExN9JaDt0Y33c1cY7telDW1fwAubpR0qMOkVKKO0fuJ7ozhYjeykY1C+d8exOHg==
X-Received: by 2002:adf:ee45:: with SMTP id w5mr24860066wro.352.1577023855885; 
 Sun, 22 Dec 2019 06:10:55 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id c5sm16640151wmb.9.2019.12.22.06.10.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 06:10:54 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 11/13] arm64: tegra: Add interrupt for memory controller on
 Tegra186
Date: Sun, 22 Dec 2019 15:10:33 +0100
Message-Id: <20191222141035.1649937-12-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191222141035.1649937-1-thierry.reding@gmail.com>
References: <20191222141035.1649937-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_061057_927086_5372AEB2 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

The memory controller can be interrupted by certain conditions. Add the
interrupt to the device tree node to allow drivers to trap these
conditions.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/boot/dts/nvidia/tegra186.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra186.dtsi b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
index 7dc7fa8bcc39..584498a999d4 100644
--- a/arch/arm64/boot/dts/nvidia/tegra186.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra186.dtsi
@@ -142,6 +142,7 @@ agic: interrupt-controller@2a40000 {
 	memory-controller@2c00000 {
 		compatible = "nvidia,tegra186-mc";
 		reg = <0x0 0x02c00000 0x0 0xb0000>;
+		interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
 		status = "disabled";
 	};
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
