Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6635636656
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 23:09:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XXVF54E/2PGRAPT1NGV4Sh4CMeba2skkT9/vUx++XDo=; b=nJD
	vEMT7Rbke7FjZs6KEoYDquuecBBY54Ym9XbFim4SfXIy5d06BnAFg+45gONgIAhHxTRR9q7z5GZlc
	gFg7LaO0TRdyyOZIxbDa0pCEYinnD1okG2jjbXMPcUn3GYLe/Tgexo9QQCKdOvlycMA0YDbM6rJ0L
	peowr2RXRee/K83K0XwQBlil7NCQm1X0uv64zOKFApx/NlsAqqBlkwzg181umrHHf3q+lgzJEsl1u
	gNsm4ZIX2fTmjIW7QzPsUBDX4Zdxzfd5oM5ZZWAqwK97t3iS5U2xoJaWz2vJ8ePgI4fwiPp7Kq8p3
	GJvbRqY+lbsvTh9zolxOdKRoNJvNmmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYd9g-0002Rr-U0; Wed, 05 Jun 2019 21:09:08 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYd9Z-0002QY-8h
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 21:09:02 +0000
Received: by mail-pl1-x643.google.com with SMTP id bh12so7809plb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 14:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=4SOiYMPDMgMZV+MKOdKKhmpmtWM686pXbSZfXaXr6YQ=;
 b=Mi6HXX0anhGF/fyVD0TJ+rBoU8+/2sV4/6KT+SaA6jNtJ9nkggp1lNuo0OuYCkFXOf
 UAKAU5OaYgB3G/z4dWJRiAxPtXuTAqQ823ljiGWmob2ec6SBKGrnOC00mjXuGJ3w9Bma
 5Qqp+z5ebZgLLFm+vUUbZihDioWTGxweObsUb42AoVL+YQqqR9HUYKD+t6Pa158pertg
 ysierxBI6v9s7hTE0eAAaDfUmYePAKY9t34sOdNWUs4QctWbXrb1aXzCBWG0eEtuOENn
 eWoj7rcX5OJIugbTFOwwDFUVKaZAI0nhwoRRcFn01hfhuL2MtkcOFcHcn0WVHzAgUyMM
 CnfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4SOiYMPDMgMZV+MKOdKKhmpmtWM686pXbSZfXaXr6YQ=;
 b=oopRPFy9Gzkcyn7xeA2IKoL+zPnodtV9SNpz8LCadzaLnwzNdHyrefvvLhp4oFBcBz
 vCWG8am1fvlQAAAaHpmGMMWBm19g5NikU43xo7dtVqbJWf5IlbNnRB/nBLv0S3VEdYg5
 ABcT8ZKOvHS4QsV2m3pf7g6Xf2K35u1ML9eCWNLb8J2Qqc9a9TBzU0N9dQryqL886HFY
 UoeZ1vDhJi4MI2h+Syrk/VHPM+aXWcaV5vPDqLK5S9D7DLW8gHUIRv1ToXANuMgiGYjX
 M0o201OpGC+MVpcSGCq3UEM5lTOMaWMuT13UqWi/HDlf+/j5/G+r5QAIxlT8/JdDgqET
 +3Eg==
X-Gm-Message-State: APjAAAXMZ+RIKfZ5lt6yU0k1dliIpnFuegohdgfFITv9sk7pukJmU1VN
 vYvYCe4jxM1BnSUF8MA6yKRAag==
X-Google-Smtp-Source: APXvYqwvnaLGrRNt08GZmLk1bVNYK0cJLbYNoDQLhW3tjkGB1XdAbGb6FXGdS+HlXb7YWYAHFwIjNg==
X-Received: by 2002:a17:902:e85:: with SMTP id 5mr7578262plx.202.1559768939617; 
 Wed, 05 Jun 2019 14:08:59 -0700 (PDT)
Received: from localhost.localdomain
 (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id z68sm5093374pfb.37.2019.06.05.14.08.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 14:08:58 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 Robin Murphy <robin.murphy@arm.com>
Subject: [RFC 0/2] iommu: arm-smmu: Inherit SMR and CB config during init
Date: Wed,  5 Jun 2019 14:08:54 -0700
Message-Id: <20190605210856.20677-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_140901_305984_5B2D3614 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Patrick Daly <pdaly@codeaurora.org>, Jeffrey Hugo <jhugo@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Vivek Gautam <vivek.gautam@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Qualcomm devices typically boot with some sort of splash screen on the display,
or for some devices (i.e. recent Qualcomm laptops) an EFI framebuffer. For this
the bootloader allocates a static framebuffer, configures the display hardware
to output this on the display, sets up the SMMU for the display hardware and
jumps to the kernel.

But as the arm-smmu disables all SMRs the display hardware will no longer be
able to access the framebuffer and the result is that the device resets.

The given proposal reads back the SMR state at boot and for marks these
contexts as busy. This ensures that the display hardware will have continued
access to the framebuffer. Once a device is attached we try to match it to the
predefined stream mapping, so that e.g. the display driver will inherit the
particular SMRs/CBs.


This has the positive side effect that on some Qualcomm platforms, e.g. QCS404,
writes to the SMR registers are ignored. But as we inherit the preconfigured
mapping from the bootloader we can use the arm-smmu driver on these platforms.

Bjorn Andersson (2):
  iommu: arm-smmu: Handoff SMR registers and context banks
  iommu: arm-smmu: Don't blindly use first SMR to calculate mask

 drivers/iommu/arm-smmu-regs.h |   2 +
 drivers/iommu/arm-smmu.c      | 100 +++++++++++++++++++++++++++++++---
 2 files changed, 93 insertions(+), 9 deletions(-)

-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
