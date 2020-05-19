Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D0F1D8F2C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 07:26:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bS+DDm/xknj6E6ct+uh5LEiubBYFdnj0LKW5ftN5Y64=; b=eqf8S52khFXVYj
	/fsIvKSHoDyJRkO0lywlmx+yCxNQUT1PC1LZTytqY2ISxgNZnYhFZ+EwH/7QZK1ZgW20gDoFr1P0D
	+R8KL7nn+K1cD9brxA0oLHKwPb2j2kxq1zj0rnxSYEzZV2zOuCDuk3oVQHONWiEAgIh2Lp6p+r4mj
	8Eo39O0JDrnTfke7YvEmocTy2BwZ92Zhsa1byrs9CGA0MWcmfMMwdg9OwMYtv7io/IinYZ1Zu8UGa
	tj4GdF2733vKyAHTYzx1AijolDy9tlmKi9m1RxqPkHup1jYRX/36G63LdRyUKKLRwgLe3TPqFIhWL
	VsQzMG9yaWKBr37a7++A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaulx-0005Q1-9N; Tue, 19 May 2020 05:26:37 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaulo-0005PQ-Sr
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 05:26:30 +0000
Received: by mail-pl1-x644.google.com with SMTP id x10so5146614plr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 22:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TQLTjFaHeHCtwJ90T40u9GJZ4EPCgGpPiHhC/OFX8TA=;
 b=R6pm4GXJTMMMY373PRSkQG8D4DwPQqGx7gkgp7evfK2GysjnKx55h80ucmWzRZahYc
 pINugt/U+FRyboicAskf87byfkkuhs6FuubeZML2IBojIsPl9DhKoX2VN+Q2xiZF5jPE
 h+OaRAnlkhKFP9NWBST3+iE4y9T2ngZWz3Kpav1e0j1MmH2eW4kM2Xjb/7ZO+OXFvznP
 mCG9Qin7nXV8uf36YL1DqWwyJ+bSkR6otaMH9Ohk+heujTKcqflwUSvT2WKGVdRjYd/C
 VVoWbRzbuqQtK5k9cvsxwpFFdHtSM3mW2YBBTlTA+Aqy6hHcm6KMNtD/pnT1NUoR71Al
 QsXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TQLTjFaHeHCtwJ90T40u9GJZ4EPCgGpPiHhC/OFX8TA=;
 b=F0+LfhYGk5AXvwm5/8OnbRHLzfnrYmVWo22XiB0FK6m1W23JQ35zkurDaEDxk4ySgW
 pwk6dKmLnnsApic83HxJ6fsJbD7krOj6sYuY/68+b5FvO5fi5NKBlsjOh4Zt3MOdt2u/
 +SvcEIbxm86AjRY7RkQcfZsgw4YGeLQ+ITY9gWOR/15maxPCzjwFGTCvahPnx/5AFAB8
 evhFlb+DoFScaF8Z+opZeJzdtNpotMtonzx8ZNL+8feGWRGhFeOjGFo3gkFUZqTYMy/8
 0i3fNEpb5cc27edYun0qa/JZptB8EmzALcpEVHIf2uoVP5Cbey0JmyFi47TlmRA2XKNI
 NOQg==
X-Gm-Message-State: AOAM530ugOtl0VscaarKu0gvvOStSJ/NxccgESVw9y56wjHkf501QaXf
 CdScWLmLlsTp8jALxD9jnqEtcg==
X-Google-Smtp-Source: ABdhPJyeCl5NFJNw/zwS7zHiNN+lAe/tMkiC2BicVCQdQPF/qoZgNRkInWg5NJNF1XETXKHAW5GS7A==
X-Received: by 2002:a17:90a:a111:: with SMTP id
 s17mr3124143pjp.39.1589865983783; 
 Mon, 18 May 2020 22:26:23 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id v127sm10211683pfb.91.2020.05.18.22.26.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 22:26:23 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL] Qualcomm ARM64 defconfig updates for v5.8
Date: Mon, 18 May 2020 22:25:02 -0700
Message-Id: <20200519052502.1249888-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_222628_967233_B698EF54 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 Alex Elder <elder@linaro.org>, Robert Foss <robert.foss@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-arm64-defconfig-for-5.8

for you to fetch changes up to 5ef3c35809ec74ab41a5cf93a5b6d60167661113:

  arm64: defconfig: enable Qualcomm IPA and RMNet modules (2020-05-18 16:36:30 -0700)

----------------------------------------------------------------
Qualcomm ARM64 defconfig updates for v5.8

This enables SM8250 GCC clock driver, SC7180 GCC clock driver and SC7180
TLMM pinctrl driver, the IPA and RMNET drivers, CCI, camera subsystem
and camera clock drivers and removes the now depricated GLINK_SSR entry.

----------------------------------------------------------------
Alex Elder (1):
      arm64: defconfig: enable Qualcomm IPA and RMNet modules

Bjorn Andersson (2):
      arm64: defconfig: Remove QCOM_GLINK_SSR
      arm64: defconfig: Enable Qualcomm SC7180 pinctrl and gcc

Robert Foss (1):
      arm64: defconfig: Enable Qualcomm CAMCC, CAMSS and CCI drivers

Vinod Koul (1):
      arm64: defconfig: Enable SM8250 GCC driver

 arch/arm64/configs/defconfig | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
