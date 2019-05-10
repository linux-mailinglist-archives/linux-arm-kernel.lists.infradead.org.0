Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB4819CCF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 13:36:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQYqva71KzYJSHT0SQ525sJNkOjkHJb1Vnpe3vP1QjY=; b=UtXry4RU1uQ1G3
	Oqr4T+6Op5g8CYN/mu99mNDqp2n1Ptq8i7lXkF4yXLKMtMhITD8uv3OS1T1EgmmC4RMiREO2KPteS
	jg0v3IzL1GkzsCJdjte2I8svTy8SnEawaq7kRnanyMI6jCzt6WXD0xqNKd52/zThGNZExdz1Z/lF5
	EO1hAyXHL2pLZ26M9VrlOMYsksOrtq2n3rF60gcZJMVV2ekquE0l4OKlhCT8XG39ze25RQSwlFt6b
	JIFG73i0tRpL4MtH0tkkh0HEUlq8RAwKar5pQQ7+CgaYENkyASIzUKkqLuH3m7LTo+RrbXNSVFPo5
	db8IPm3ijeoKL9uQbc2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP3p7-0005m9-LV; Fri, 10 May 2019 11:36:21 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP3of-0005Ot-JX
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 11:35:55 +0000
Received: by mail-wr1-x441.google.com with SMTP id s15so7442150wra.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 May 2019 04:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=frMaHLtTVcuAjNsj7WkDlL1XY2jsGu/I2uG5ctoh5gA=;
 b=Px0U9D9pEbVq/5gvJ9oo3XEOJrt8sFkwHxHVlbqUNhxJbeQBY/3yP40mhojVl+gpgi
 vBfjHjCLADRiMWyfDl4oUlX1OFU/4faYbxbCmgH2cyFVnsaRAjmz/1SOqj7LsueE7GXp
 NllniShPrftrRES5rrxIbtrvPns76H5YEu6Iu5ce0LnUqZvOYcEgaCIBNbhk8nXCoF2j
 fQJqubBpBpFa10BRHBqyDWELIQam4x9TCUhEgsBHmVcafyn+hbT2mR9ZM2oGl8VKqG6w
 IWjcs28CFrOYq7nUqsOFwj74UKHqLOOTy37V43VKR1wrHaeb7fXyb15y4LlgQb2ZlKgU
 Nysw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=frMaHLtTVcuAjNsj7WkDlL1XY2jsGu/I2uG5ctoh5gA=;
 b=ub72VBY8Auc8wuUjni1Coi41qAPscwPjoQxClAs4VNnbP5UaWb9VevKNNmX4Atb5mZ
 h9FJH+YkWfyu2FuC6LmTArGEdT/mxKWjRNkUuzY5WK5R+LSVKRFN6SxlDpAAsnV6RcnZ
 n3wFXPEYci2x+9yy/6JNhexcvxl4hfssOMcsMsGBgANwAFnLT04RWzCAEVJfRoaQofGu
 w3F0nH17Vv/LgndL0ndqFGitHb1j57R4AFNclbr1PPVI0+aDRxDyYfIHu1DpM64xrJZe
 CArYDonOIm1SFQTsgVP3rBPEfaqaEDxd8mp56Kk6jOj0T5ViuKDl5TmZgDOO/Tz/u7xd
 hL0g==
X-Gm-Message-State: APjAAAWZiIbCs9Lj29+MIgcKUJuTwAEgVkc5X0Rdr58eBQFdqMpm1cWE
 wI3aoKY4PQuPWcBS+X9wTjc=
X-Google-Smtp-Source: APXvYqymwHDZ4aqfYbTTNgpiU1guU4StpI08Kfg1JNbrZAJrlOIjlG9XYDjkLh1+Dx6Sb+OoP1OGfA==
X-Received: by 2002:adf:fc8f:: with SMTP id g15mr7766060wrr.122.1557488151914; 
 Fri, 10 May 2019 04:35:51 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id v189sm8080721wma.3.2019.05.10.04.35.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 10 May 2019 04:35:51 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: arm@kernel.org
Subject: [GIT PULL 3/3] arm64: tegra: Device tree fixes for v5.2-rc1
Date: Fri, 10 May 2019 13:35:46 +0200
Message-Id: <20190510113546.15698-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190510113546.15698-1-thierry.reding@gmail.com>
References: <20190510113546.15698-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_043553_639382_D1EB081A 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

The following changes since commit 2f03e39b5bfe41f3a0d9a8b01231e7e5045cb9c4:

  arm64: tegra: Remove regulator hacks on Jetson TX2 (2019-04-17 16:48:44 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.2-arm64-dt-fixes

for you to fetch changes up to 7278358407be770130b6b72567c1b5831c6eef28:

  arm64: tegra: Disable XUSB support on Jetson TX2 (2019-05-08 14:42:57 +0200)

Thanks,
Thierry

----------------------------------------------------------------
arm64: tegra: Device tree fixes for v5.2-rc1

This contains one patch to disable the recently added XUSB support on
Jetson TX2 which is reported to cause boot and CPU hotplug failures in
some cases and doesn't allow the core power rail to be switched off.

Furthermore there are some changes to enable IOMMU support on more
devices. This is needed in order to prevent these devices from breaking
with the policy change in the ARM SMMU driver to break insecure devices
that is currently headed for v5.2.

----------------------------------------------------------------
Jonathan Hunter (1):
      arm64: tegra: Fix insecure SMMU users for Tegra186

Thierry Reding (2):
      arm64: tegra: Enable SMMU translation for PCI on Tegra186
      arm64: tegra: Disable XUSB support on Jetson TX2

 arch/arm64/boot/dts/nvidia/tegra186-p2771-0000.dts | 4 ++--
 arch/arm64/boot/dts/nvidia/tegra186.dtsi           | 7 +++++++
 2 files changed, 9 insertions(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
