Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2F118086C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 20:49:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xnYji2hHaDzm604R6k68aO8ftpJEc3D66U7iuDJp120=; b=cZ+s+uIASZropY
	/oByAnmzQgUfzVD5bdgfacAgiY/qAoFs+0nLLI/sk5EmwFiRB03GmPL5p4ja9bWzNd7UFyntF+aDK
	jHtCI5SB2hVPD+J4y1Yo8COioCcAtXHuzydOHNyZYWuEk+pWPThafvMko64EW6ZaGhSbs8Rz9uMrY
	SClnDMI1aq/W89E8th0BZ7p+y3IZyrDmUgmXFBsZBAqaoqmUACW5OYD87QsE5KbhKtBfAI9ah+kbz
	3QlKYDNxCGliGrAcqlTRzLa0u3fDEqLQRCmzaXa1ZBfqLmXXvIr2ImYrwVE7PKAD6rQT1dAIVFHzH
	f3RhwT/hqaTacywsSk5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBksS-0001Wk-2b; Tue, 10 Mar 2020 19:49:20 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBksI-0001WJ-6J
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 19:49:11 +0000
Received: by mail-pl1-x643.google.com with SMTP id b22so5847498pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 12:49:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jV1J0A0v5kI8D38QP7LZPmQe7Wa000FUtKtwbl8DovA=;
 b=omQFDvmGHKXBdHPsEv5IagMxub/5iBhsEZmDaDrMaDmj83PBhBnWKghEHz1xDxVE/9
 Qjv2aylL4IGJ68Vl7le/MblWPzJjGKCp3aXlLvHEMRVhZ46N73odzodpu6FpNAZv/Eck
 PWZwGHXw1oX4PvVurLKthhe6L11KOstjo6vhjvntDQ+8Gvifd30uLLebpxa3Xu6LIF00
 v6QEmjiLzkmfsaF+H8/+rrXtk9evm0g+0REDRbi2n8sMiayFE0k1YBnxCjz/4DZrjcsv
 RbqS7ZddV8FUWKdJ/oFptjHk/VWRq8Lc3NVksZMv2fYCYNqf7OSAzMva6m/hpYKwwF7O
 LfRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jV1J0A0v5kI8D38QP7LZPmQe7Wa000FUtKtwbl8DovA=;
 b=Tc0HETM9QuUU4az9yYH/h8+jc3mAcmI5AgfBBSRfGc6zWj1mneDTPmB5GC8G3c7ZAg
 kdXzplQgcI7XbyEtREOwNkNt537iVwK5bBA0cJxZQ0P29HVE60M8EgHxiCR4AQidNP/q
 mayd6llwhqw4UpW10WyLuy9DHBTZgbsSozPniPFHs+m+xFTtHewjezRhmWQaiRmPwkmQ
 6E8ELZVsdhwV+xn+oc7faXAHam1QG37ItAj7OelHCMtu+NLEICUgoA3KGnp8LVv6ODok
 A527Gr8VToAlJBnpyFinMcalkWP2hgFiIO9D2qrkBFP50IONc4eq/ZuPjlIHddtUJL3c
 8Qtw==
X-Gm-Message-State: ANhLgQ0pITWHZaXC50MJSBCi4g69bKLrhp0d/sUv7NsM7LpbfAN9YkgM
 7CxfTtbcMeuXtzaOs6A1AEA=
X-Google-Smtp-Source: ADFU+vtvXRamWjX5o9KmUQeFzpOaqpVccOT2iNJrsaFhgH3WFG/4Ot9KKwImz4WPKGmca+i1AEEBjw==
X-Received: by 2002:a17:90a:2ec7:: with SMTP id
 h7mr3449555pjs.107.1583869749046; 
 Tue, 10 Mar 2020 12:49:09 -0700 (PDT)
Received: from localhost.localdomain ([45.114.62.228])
 by smtp.gmail.com with ESMTPSA id d19sm3784490pfd.82.2020.03.10.12.49.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 12:49:08 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Subject: [PATCHv3 0/5] Add support for FSYS power domain and enable suspend
 clk for Exynos542x SoC 
Date: Tue, 10 Mar 2020 19:48:49 +0000
Message-Id: <20200310194854.831-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_124910_238095_6D61338D 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Felipe Balbi <balbi@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Series build and tested on linux next-20200306.

This patch series tries to enable FSYS power domain
for USBDRD3, PDMA and USB2.0 devices.
Some new patches is added to enable this feature.

Summary: 
# powerdebug -d
...

FSYS:
current_state: on
active_time: 236786 ms
total_idle_time: 1914 ms
Idle States:
             State            Time
             S0               1914
Devices:
         /devices/platform/soc/10010000.clock-controller/exynos5-subcmu.6.auto
         /devices/platform/soc/12130000.phy
         /devices/platform/soc/12100000.phy
         /devices/platform/soc/12500000.phy
         /devices/platform/soc/soc:amba/121a0000.pdma
         /devices/platform/soc/soc:amba/121b0000.pdma
         /devices/platform/soc/12110000.usb
         /devices/platform/soc/12120000.usb
         /devices/platform/soc/soc:usb3-0
         /devices/platform/soc/soc:usb3-1

This patch series tries to enable suspend clk using
exynos dwc3 driver, for this I have added new
compatible string "samsung,exynos5420-dwusb3"
so that we could add new suspend clk in addition
to the core clk. exynos dwc3 driver will help
enable/disable these clk.

This series PatchV2.
--Added the clk names for exynos5420 compatible.
--Added missing support for Exyno5410 SoC suspend clock.
--Update the commit message to support suspend clk usages.

---
Long time ago I tried to add suspend clk for dwc3 phy
which was wrong appoch, see below.

[0] https://lore.kernel.org/patchwork/patch/837635/
[1] https://lore.kernel.org/patchwork/patch/837636/

Previous changes V3 (It was send with wrong Patch version)
[2] https://patchwork.kernel.org/cover/11373043/

-Anand

Anand Moon (5):
  devicetree: bindings: exynos: Add new compatible for Exynos5420 dwc3
    clocks support
  ARM: dts: exynos: Add missing usbdrd3 suspend clk
  ARM: dts: exynos: Add FSYS power domain to Exynos542x USB nodes
  usb: dwc3: exynos: Add support for Exynos5422 suspend clk
  clk: samsung: exynos542x: Move FSYS subsystem clocks to its sub-CMU

 .../devicetree/bindings/usb/exynos-usb.txt    |  5 ++-
 arch/arm/boot/dts/exynos5410.dtsi             |  8 ++--
 arch/arm/boot/dts/exynos5420.dtsi             | 24 ++++++++--
 arch/arm/boot/dts/exynos54xx.dtsi             |  4 +-
 drivers/clk/samsung/clk-exynos5420.c          | 45 ++++++++++++++-----
 drivers/usb/dwc3/dwc3-exynos.c                |  9 ++++
 6 files changed, 73 insertions(+), 22 deletions(-)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
