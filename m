Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 975671D8F32
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 07:27:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KqbCdiI6g59o1aCSBSRpg4rhnCJenfSg+INoEgIO5RY=; b=SlQ7d+Z9yyk8fG
	lkcs1YwvlyF5IF4hWG24HBgTS1QbxLBstKIQjjdVCrzW0+C2gvKtKuztUTG0GtMlyOtyfvmavlKrn
	mAFy4wO3lT0Yq2RDOuYVwEsN+I0FPRvhi5yzRQMJWp1QXW+3IpdwmTp6RdrHu2/eg47NmO9AiLdjA
	F9oiLcnbLwtuZWddVyYCxYQ01I6xY0/q+hnnM/Oin7M3jSRe7DZxi9o9VZS0jLcy6aWPqHzB01qoI
	mA0xKAHUehAA/fCLf2ex9py8MybRizqnx5Ya0Eh6f3da1y9mMqjDFMM1eXkv4osZG3+uWmmHRQVNp
	AJrBVrwZDiDjL4DMXj/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaumw-00065C-NH; Tue, 19 May 2020 05:27:38 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaumK-0005l2-Kz
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 05:27:02 +0000
Received: by mail-pl1-x643.google.com with SMTP id x10so5147110plr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 22:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W2vog2Ri9IlYWlm16x+nWE4J9X1Hn0Mx2FQVvFcJuHk=;
 b=FT4SKc2ToN/s8tkRnP+yLFiYtCWtUqBarM8+cWRx8BQ8UCvrDq+w6KD6qPZCtS/Fjy
 sJzek8MBmQPdo6/B+Zb2aM1vdOoXeM/b+epi+H4OZZRwrf/ZsNpGAMEgF/F4s4iLniMF
 5VFAHju27XsW7im3sxHSOptozVRVB3W5qTdC/NVR5dHUBxhFp4Qqr348GRv3NeQrGIPR
 tR5jKbOsOmOwa2Qdg4UE1D8FWzZYACIbgjhWgKtuuz9m4vgZh+j8gz4AR8EfHiHcQ9FM
 0tz4na/4jRLHVe5fxxMsYQ7XXYrW1lNrK3MX++qs4ujZ3Ttlq8uGV0bVvBGK7HpukP0n
 6nKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W2vog2Ri9IlYWlm16x+nWE4J9X1Hn0Mx2FQVvFcJuHk=;
 b=qHeJTddx1evd/9z60n5A6wG/LQT+jTzY+4bE3jMCGN193MkPbJpUpCC1fgk42tUFdb
 VZXl5qzt1/pAaSGvoaSmz9VGaFa9HkZZq0QhjZeF/BZD2KHqRQ1jSumAziVVm5c56Jbq
 SYg6aC43j+u2Tw6RO4UhK6BCfNPkUIVKVAvhl4lja/2kfH9Fr/xiBN+/8w6t9QfXSznq
 mxD29vptwxLZnmD4/ukMnegixPPTvlyyVdoRKM5V2ZMX4OhlPw6qNmkF9Ezceva78RiW
 cDCbNCbe0DxQGmEEJu5WhlkjrNa8IWQOi3LZcmFv4I6JbZNBrIWTbjR2oCB5iSSPx+OG
 VnHQ==
X-Gm-Message-State: AOAM530fM7Unidc2WZ7nxqWNASEXcYnDdO4wtXmjPMqJD53iiGRU7d3P
 yePZenFT0jHAV12mDnztBPKkaw==
X-Google-Smtp-Source: ABdhPJwMuyEr5qpyZilygNDQcs8MRuHwtC4LblBDYasXBuyhM8nMs4L6z5w2Ju5o13iWIu4WIK/6hA==
X-Received: by 2002:a17:902:ff09:: with SMTP id
 f9mr20398811plj.322.1589866019941; 
 Mon, 18 May 2020 22:26:59 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id z25sm9983081pfa.213.2020.05.18.22.26.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 22:26:59 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL] Qualcomm ARM dts updates for v5.8
Date: Mon, 18 May 2020 22:25:38 -0700
Message-Id: <20200519052538.1250076-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_222700_704179_329CC5DC 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
 Daniele Debernardi <drebrez@gmail.com>, Abhishek Sahu <absahu@codeaurora.org>,
 Andy Gross <agross@kernel.org>, Iskren Chernev <iskren.chernev@gmail.com>,
 Kevin Hilman <khilman@baylibre.com>, Olof Johansson <olof@lixom.net>,
 Ansuel Smith <ansuelsmth@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-dts-for-5.8

for you to fetch changes up to cd13c72c1853f219e1f5577a107f48b9f9c44fdd:

  ARM: dts: qcom: msm8974-klte: Add max77826 pmic node (2020-04-21 00:23:27 -0700)

----------------------------------------------------------------
Qualcomm ARM dts updates for v5.8

This adds SCM firmware node for IPQ806x and fixes the high resolution
timer for IPQ4019. Samsung Galaxy S5 gains regulators, eMMC and USB
support.

----------------------------------------------------------------
Abhishek Sahu (1):
      ARM: dts: qcom: ipq4019: fix high resolution timer

Ansuel Smith (1):
      ARM: dts: qcom: add scm definition to ipq806x

Daniele Debernardi (5):
      ARM: dts: qcom: msm8974-klte: Add pma8084 regulator nodes
      ARM: dts: qcom: msm8974-klte: Remove inherited vreg_boost node
      ARM: dts: qcom: msm8974-klte: Add gpio-keys nodes
      ARM: dts: qcom: msm8974-klte: Add sdhci1 node
      ARM: dts: qcom: msm8974-klte: Add USB node

Iskren Chernev (1):
      ARM: dts: qcom: msm8974-klte: Add max77826 pmic node

 arch/arm/boot/dts/qcom-ipq4019.dtsi             |   1 +
 arch/arm/boot/dts/qcom-ipq8064.dtsi             |   6 +
 arch/arm/boot/dts/qcom-msm8974-samsung-klte.dts | 405 +++++++++++++++++++++++-
 arch/arm/boot/dts/qcom-msm8974.dtsi             |  11 +
 4 files changed, 421 insertions(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
