Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 427EA1D52AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 16:57:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8DUCOBgxltBrzf43pKn+DWLpAUgu6GXV+vS4z4b0Yb8=; b=IFCTs3kPF2gP4E
	iRddohsj5gsGAAruCXY3Z+Czy4SfU5zuG3b1BIPsFTQ4jShmsB0P1p8KdVYNZlLIb6FU/bOPCCDwP
	Zg+vBP8WmvDu4jVb1ZqwrD52ao1SN9UZMqLXmPcTpW53m0f2BuyKrncJCRlW06Nyemm/Tq3Zvwy+T
	12sg4FNJ9SSSuJsJzRDQL3/NIxPOd7zNOqHL1cQORTry3XnyMV7yF60lhOLl6fyDRtXNma/NtbQ7O
	afDKdokCq+UGWRzPbFtYJGU5XiTPlbUXc0ZnxaG2N0Rbv9sHXlMVg8UhaLFN8AAxMrDtOYEWkL/wz
	VKdG6sxKwCv3+nQUE7eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZblt-0006N0-BP; Fri, 15 May 2020 14:57:09 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbiU-00016r-SC
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 14:53:40 +0000
Received: by mail-wr1-x430.google.com with SMTP id l11so3951225wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 07:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1tj3Ug969GMfKE+qJfwXifWzO5/OE6vledFrhyfcDys=;
 b=odH/pqbUAl1+wpC3oAZ81PV0VmhkR7TIrE/kyrr0Thrf8rcRZooBzK97YrIbCE8mlA
 JK8hfXseYHaj/XfA466c6gnQwR+jNTdmDq8nny9UkdtKhE5M2jf8swR0wE88BUhxLe2E
 JMLNU+wDU7e7Jvde4Cz1zxhA5ixhQzC0AnTKSYjcGg5rUOC0yG0inf9Mr4zCYlETibxm
 YpawCAJABwfU6jIZUiH20x22ws7JV5DOWqrIFS1Uqbl+eWdwk6MJp7BhDfhbL/i4LM1M
 xlK5uL3Ix9RGFLdHj3spNI9XRxQ/AUzgUYNzypeINCGcwylLQ8b8ndgQMN6Q66MMw6sF
 /3zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1tj3Ug969GMfKE+qJfwXifWzO5/OE6vledFrhyfcDys=;
 b=KAw8cXaSEhv3c56yRVdEAJWnrKhpjWyp1EBVDYexu2n3O1Lk0/Xz/zaP8A8lL9U4Jm
 kYjhjp6wcbC11h5MGCmqZJNM3X1fE4nf+lHOvZIUiQIkPMLwL3CTzEft4BKNXDscRN4E
 SjINk6ich3LVGnsnOrOhyZPK5e1FWbCGD32+sy3G9xsfkpqe9RojjB8S0A2ZSmtQFGxr
 VOJ6i/hEfHZqMoS7oYnS9NbN4HBQ3XLF2D2se4LRiiiYK3BaYg4vd3/XzCB+beFzK5Gd
 BLKbgcKh2jqlZOQQxzKNFVpEiKli2jzzwkmSDK3cdZn98mJeDcZig1q1Ai/NZmQoJyVs
 YtVA==
X-Gm-Message-State: AOAM532Bew6KsA+CNqxCs5Vc3uf2IwDR2q1HcmEO0W3hicW0ZjwsNINk
 n8On2+Bgw/u0Xl71WCg46wg=
X-Google-Smtp-Source: ABdhPJwugX/x8QHpbNS8RLSTyUTVjrLazOvxPlzKNa0Gz5tzcuxwGCdxU9D2N7f3IWMT5Ne5WrdSRg==
X-Received: by 2002:adf:e751:: with SMTP id c17mr4912427wrn.351.1589554416787; 
 Fri, 15 May 2020 07:53:36 -0700 (PDT)
Received: from localhost (pD9E51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id 5sm4093690wmd.19.2020.05.15.07.53.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 07:53:35 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL 11/11] arm64: tegra: Device tree changes for v5.8-rc1
Date: Fri, 15 May 2020 16:53:11 +0200
Message-Id: <20200515145311.1580134-12-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200515145311.1580134-1-thierry.reding@gmail.com>
References: <20200515145311.1580134-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_075338_925806_EDB0F193 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:430 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM SoC maintainers,

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.8-arm64-dt

for you to fetch changes up to 74265112c60be0209817c682ba68661c05da1d38:

  arm64: tegra: Enable VI I2C on Jetson Nano (2020-05-15 16:28:58 +0200)

Thanks,
Thierry

----------------------------------------------------------------
arm64: tegra: Device tree changes for v5.8-rc1

This contains a couple of fixes for minor issues, enables XUDC support
on Tegra194, and enables EMC frequency scaling and video capture on
Tegra210.

----------------------------------------------------------------
Jon Hunter (2):
      arm64: tegra: Fix ethernet phy-mode for Jetson Xavier
      arm64: tegra: Allow the PMIC RTC to wakeup Jetson Xavier

Joseph Lo (1):
      arm64: tegra: Add external memory controller node for Tegra210

Nagarjuna Kristam (1):
      arm64: tegra: Add XUDC node on Tegra194

Rob Herring (1):
      arm64: tegra: Kill off "simple-panel" compatibles

Sowjanya Komatineni (4):
      dt-bindings: clock: tegra: Add clock ID for CSI TPG clock
      arm64: tegra: Fix SOR powergate clocks and reset
      arm64: tegra: Add reset-cells to memory controller
      arm64: tegra: Add Tegra VI CSI support in device tree

Thierry Reding (3):
      Merge branch 'for-5.8/dt-bindings' into for-5.8/arm64/dt
      arm64: tegra: Hook up EMC cooling device
      arm64: tegra: Enable VI I2C on Jetson Nano

Vidya Sagar (1):
      arm64: tegra: Fix flag for 64-bit resources in 'ranges' property

 arch/arm64/boot/dts/nvidia/tegra132-norrin.dts     |  2 +-
 arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi     |  5 +-
 arch/arm64/boot/dts/nvidia/tegra194.dtsi           | 30 ++++++--
 arch/arm64/boot/dts/nvidia/tegra210-p2597.dtsi     | 10 +++
 arch/arm64/boot/dts/nvidia/tegra210-p3450-0000.dts |  4 +
 arch/arm64/boot/dts/nvidia/tegra210.dtsi           | 89 ++++++++++++++++++++--
 include/dt-bindings/clock/tegra210-car.h           |  2 +-
 7 files changed, 125 insertions(+), 17 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
