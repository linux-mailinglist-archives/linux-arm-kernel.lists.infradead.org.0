Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D465DECF46
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 15:45:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S9fXgDE+LC4GCJDVrgu0dPbCHusLUnOZnlLP2BGFWAQ=; b=CyWBvIv5I3kyYp
	XpRVT6Xqv2YUYHO927GPWzapyl/TrfBF45bayrYx4IxjRUh+Vs6hpqvVxxFsjYzw1iPK4V02McgZa
	iRHYy+gb/DSWolMn5OSq3cwrVfkNaP/aedCfSvLwQ+LJOyLLWi7T988v0YstNQaErGfsGHF+K7WQN
	vM3zG8ULnVnlu6A+6rt3mHOinSaMvbPZ6pZztuVTwYI6UQfqyQsMivLGZ3CUbCq6CxVrgGJlyH0Bu
	yzxstTqGb9dsyp79mMxsZ+BOkA0Fzc5yWzH2V8+lFtyOxBrsHKX4j/Iw71ci9CDyjBU5CVRD3waZ1
	SWUa1zKft8cTlWQLPEnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQuf1-0007zk-Bv; Sat, 02 Nov 2019 14:45:51 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQued-0007rH-Sm
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 14:45:29 +0000
Received: by mail-wr1-x441.google.com with SMTP id b3so6663288wrs.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 Nov 2019 07:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MlbcMmuvAlZUFyN7GSyGfftxWdaDG41yMHD9JZL16rM=;
 b=fNpqxTr7VI+YR4gcBcQRYakD69SSVXT/NRf+UwvSUzq1XaLYtRwOvZDORzdSxQzFSY
 5Z7NeGHb9MkVZAKG/SXYpiJkgdoSO4rW9LPlQeeKhZDuCLIvgk6Gk7tZUxiJCkeK3xMY
 BA6wRDH5cnO+gJGZbe5w+JpTnA3TJRzNujZkiII+f/LbfP2DVB0UHHWNlgmgYV2HsbdW
 bqTdDbk3ciaKO96WWBhLspscuxlt1KUxeRewSZ9Rtrt0wuUdyGO2ot8OU92PkduNpcav
 ay1j2eviXcWGBjGPMTuE1W4qZLkl6YoFis4U9Q1Vu4KYQOJ0uwna2FBW33zlk0xJr9pq
 7M7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MlbcMmuvAlZUFyN7GSyGfftxWdaDG41yMHD9JZL16rM=;
 b=bVh0ubndc8xzXix96KXVRQxLd4Yn7Zvif1yvVaLb3AitJkcB82VthOCRYGvYobfHva
 CAUJPk5hLGWRht2pgOInuUmmCf95V4ERgyU6SSwASWfvykBxcKS0eVhOKT6a9Ph9A+ij
 NiJ7H0YyhUKCbtmUoxGNwYYkmRbIwYfvHC/55jaRqiB0u89MorwtnvOJwHNeK72Cn+Or
 zz2Xd8jEIkbrZsj9SBX+bdaIePFF487vs0fL9lIulBkfA2LbNmz6cA/Vlf24d72Zvox9
 epRU1h6waBYTInkcgWkf3if29/FHiY4Ig4mTJtOB9bJ2z4GEtncbnJvgaCpkrQTK1IG4
 jJjQ==
X-Gm-Message-State: APjAAAUVHa/L/bgt/JsI65YocgytWYkJ3czEhUWd8bx/neNXtCgir9PR
 TWs/zn2y9iITemuyaseYTeE=
X-Google-Smtp-Source: APXvYqxJFlcWgHrVDFZ005IJWPG0nXP4eAlpTM1ZH6BkC7i49nHDqHA3aD5m4HDmbmTP2VlIinVRCA==
X-Received: by 2002:a5d:4f8b:: with SMTP id d11mr16024773wru.25.1572705923859; 
 Sat, 02 Nov 2019 07:45:23 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id w81sm11048760wmg.5.2019.11.02.07.45.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Nov 2019 07:45:22 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 1/8] dt-bindings: Changes for v5.5-rc1
Date: Sat,  2 Nov 2019 15:45:14 +0100
Message-Id: <20191102144521.3863321-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_074527_932320_50DE0E57 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.5-dt-bindings

for you to fetch changes up to 641262f5e1ed5c96799e17595893fa1a703616ac:

  dt-bindings: memory: Add binding for NVIDIA Tegra30 External Memory Controller (2019-10-29 20:22:34 +0100)

Thanks,
Thierry

----------------------------------------------------------------
dt-bindings: Changes for v5.5-rc1

This contains various updates to device tree bindings and includes that
are related to driver changes in other Tegra branches.

----------------------------------------------------------------
Dmitry Osipenko (4):
      dt-bindings: regulator: Document regulators coupling of NVIDIA Tegra20/30 SoCs
      dt-bindings: memory: tegra30: Convert to Tegra124 YAML
      dt-bindings: memory: Add binding for NVIDIA Tegra30 Memory Controller
      dt-bindings: memory: Add binding for NVIDIA Tegra30 External Memory Controller

Thierry Reding (1):
      dt-bindings: clock: tegra: Rename SOR0_LVDS to SOR0_OUT

 .../memory-controllers/nvidia,tegra124-mc.yaml     | 152 ++++++++++
 .../memory-controllers/nvidia,tegra30-emc.yaml     | 336 +++++++++++++++++++++
 .../memory-controllers/nvidia,tegra30-mc.txt       | 123 --------
 .../memory-controllers/nvidia,tegra30-mc.yaml      | 167 ++++++++++
 .../regulator/nvidia,tegra-regulators-coupling.txt |  65 ++++
 include/dt-bindings/clock/tegra124-car-common.h    |   3 +-
 include/dt-bindings/clock/tegra210-car.h           |   3 +-
 7 files changed, 724 insertions(+), 125 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/nvidia,tegra124-mc.yaml
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/nvidia,tegra30-emc.yaml
 delete mode 100644 Documentation/devicetree/bindings/memory-controllers/nvidia,tegra30-mc.txt
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/nvidia,tegra30-mc.yaml
 create mode 100644 Documentation/devicetree/bindings/regulator/nvidia,tegra-regulators-coupling.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
