Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9781C128E61
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 15:10:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Bgt69+V+TDkZu0KzQEnaGZqtaL8emD0tTYmupqagcno=; b=TT26kQLWv2FEHC
	alOYmP4IeDs/9HVAZPMy5c/BixQlox4pKoDO1sfcmOkER0IzBSYsPVC9PYsa0q+ocTklobeo/dJoS
	FqBd2SdnjFf/OeqoHZ0blbyhPCVs2UrJfCs1k0Yaf/vOsBLc1Zb8C945emMF5Ao6CS6ZR+SuOoFRU
	yoGCclmJ1KIuG9xCo/YB7++9d5/EduCyDJbL03XEZFSLkZFRKCrsrzX4i4mm6oNHTs462HTSplJn9
	1RyQj2mtaDUHAyiZEwv6S/XBMaPPEGGu82BFJXOtGtJlAuzJi7GO4nne/vpP1P3DKYUnO1S/sa7J4
	iheWQ1kUDAUclSXDDpuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij1wb-0001V2-OP; Sun, 22 Dec 2019 14:10:53 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij1wN-0001UT-4x
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 14:10:40 +0000
Received: by mail-wm1-x333.google.com with SMTP id 20so13565537wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Dec 2019 06:10:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t7AbgJnlI2EgW2o46IrRW4rMlaaCjoaiBzQBWSad/QY=;
 b=UczAdNSrjKhjynMj1kLnOFEfs6dBxuD9HS+qUfUS0ScfIOcm+JxMWk5oSaxBOkXByR
 6gaLQqz3Mrz4qnPgputIbZ8rDwtcyjGTLKEnitpxLYIcNPmYF/krKuiJby6/FG1ThV1x
 lWOFCCtp665LX5whMlvedNYORO30ma30VfSfu8luz8MqyMKoE85dZHn6rUFtScVgluQz
 kcZny23KO0BF2TtqNDbLkEwLtKT4jMje2mofyUL9GglvxahI7tzl29d9td3sWDYADhLx
 gphKu7SRjbY5pgidDmIGr46fzb56tVFY1u3SmCb/bzpJbXgy9hDo9o48nYMCzMgzrpMo
 tfSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t7AbgJnlI2EgW2o46IrRW4rMlaaCjoaiBzQBWSad/QY=;
 b=Ir5AFRe7TatAwXQw0xl4VBG//aPNn+jWiZ0VwGLpKMdUlIujLLEqDHebjfRXncoV2b
 E3w3CaxiS2qmdyPkFGI+wYYMgIfcJVFxToeJbi2MHHCHlszsI5VgMSsLI7I/8+AP5cvy
 F6hDXc9skoSonohIclANQ37TvBrX1bzVZFkYZHiL+bFsaGGrraAzUCtac3pPANhfCplG
 Ww0SF/bYnznVKkZDmzOijQHZBrVdz31iECzVQOmkt3NY4bpB9uSk013BfSUbbf97edn2
 IOYdy+5/l4x98dftk69YDj9D5MtShiYWINIS6cZaoFiJszUeIoxsflH1ZmjuCMivwBms
 xlBA==
X-Gm-Message-State: APjAAAXs5E/IyjXlTnV7CpzJBjJ1KfTqXe+pb2fWXxBZ4pX46CWYtyp9
 AePVXkeYKCMW2yKC0mTT8lk=
X-Google-Smtp-Source: APXvYqzvd6XcPv4vx+hdJsXC32Q1Do76lfi1GgENJOeIj9qM+MtsJHFTfEKt5YaFE6KurC1wrYCX1g==
X-Received: by 2002:a7b:ca4b:: with SMTP id m11mr27386857wml.164.1577023837135; 
 Sun, 22 Dec 2019 06:10:37 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id m10sm16950082wrx.19.2019.12.22.06.10.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Dec 2019 06:10:35 -0800 (PST)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 00/13] memory: tegra: Add Tegra186/Tegra194 support
Date: Sun, 22 Dec 2019 15:10:22 +0100
Message-Id: <20191222141035.1649937-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_061039_215466_33BCD697 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:333 listed in]
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

Hi,

this set of patches improves the Tegra186 memory controller support and
extends it with Tegra194 support. The first three patches add the needed
device tree bindings and headers. Patches 4-10 first refactor the driver
to make it easier to support multiple SoC generations and finally add
EMC frequency scaling support (via debugfs) as well as Tegra194 support.
The last three patches enable the memory and external memory controllers
in device tree.

Thierry

Thierry Reding (13):
  dt-bindings: memory: Add Tegra186 memory client IDs
  dt-bindings: memory: Add Tegra194 memory controller header
  dt-bindings: memory: Add Tegra186 memory subsystem
  memory: tegra: Rename tegra_mc to tegra186_mc on Tegra186
  memory: tegra: Add per-SoC data for Tegra186
  memory: tegra: Extract memory client SID programming
  memory: tegra: Add system sleep support
  memory: tegra: Support DVFS on Tegra186 and later
  memory: tegra: Only include support for enabled SoCs
  memory: tegra: Add support for the Tegra194 memory controller
  arm64: tegra: Add interrupt for memory controller on Tegra186
  arm64: tegra: Add external memory controller on Tegra186
  arm64: tegra: Add the memory subsystem on Tegra194

 .../nvidia,tegra186-mc.yaml                   |  130 ++
 arch/arm64/boot/dts/nvidia/tegra186.dtsi      |   22 +
 .../arm64/boot/dts/nvidia/tegra194-p2888.dtsi |    4 +
 arch/arm64/boot/dts/nvidia/tegra194.dtsi      |   43 +
 drivers/memory/tegra/Makefile                 |    3 +-
 drivers/memory/tegra/tegra186-emc.c           |  293 +++++
 drivers/memory/tegra/tegra186.c               | 1122 ++++++++++++++++-
 include/dt-bindings/memory/tegra186-mc.h      |  139 ++
 include/dt-bindings/memory/tegra194-mc.h      |  410 ++++++
 9 files changed, 2110 insertions(+), 56 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/nvidia,tegra186-mc.yaml
 create mode 100644 drivers/memory/tegra/tegra186-emc.c
 create mode 100644 include/dt-bindings/memory/tegra194-mc.h

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
