Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E193A189500
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 05:39:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MjzYnlHGunp1BR4NSLJjLSANpOdEdiv17u/kJE6Gios=; b=SCCRdp+WsiEvaa
	MWmRJHTHGWOxLA2Bswa5YuqZH/DCURriTKZ1BnXlcCgpgPW02XXK/lc8AGRXlviYCyvSL0ZuWmPUu
	Xp/kqNj11R2WgBzluH0omeBubbUItZvsb++I3NM7CMDS/h5CXAwQC4mhIzozIKy1hCVFTPUJY98i7
	qEulLcnlUDSRJFiGGh2nBAk9vrTH8NmjEUbK4rWA5ySncWvwLQLJBh9U2w2G5uhk7sctcowceRDrR
	3zCjpZACps8Rje9gy/1BHTPbaovQbge2wgESuhtgzcAHYYAZkPie5SxDZQ4XeqMgHQaR4CfWk59sD
	DT9wtC9qM+d2E0Jdvmaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEQU6-0001ho-IC; Wed, 18 Mar 2020 04:39:14 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEQTs-0001gy-Au
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 04:39:01 +0000
Received: by mail-pl1-x641.google.com with SMTP id h11so1107393plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 21:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=hD4OTb2ukvF61pVeHuPC5lcbHIWQCqsGeGiLx1Rvchs=;
 b=aiHNfWE0XgosFyJ0+CwG4UE57kGUR7maaaONNjxpxZH/6UxI3wfP6zXvweFNQ48O6H
 6TNEkWAEyc9iohRqYey2hXe8vqZ5pnc9bmx4kZ2Ojlo42Epv8akrYy3bpMDf4cAb0XB7
 HOdlR9tsOWmi9i3jzFP1X7pD5L0fHkydGvcoxzyDb1+3Tl76POTsDPJtwk0EGUEq790T
 QK5mtfGyWLLOpydF7VSf6/iqKKym49PpKWXW1GLP3SojLzazPerBsvzPsWdYBRvpE6EH
 gMhvmJnLNVKVUS7c9p5vMrINbqW3NWBDPDJj2+GrRRs8n/dsJVgo18TdcY1uq9pVx+IP
 IWnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=hD4OTb2ukvF61pVeHuPC5lcbHIWQCqsGeGiLx1Rvchs=;
 b=kWJlquO8eqNPrm49zwgw4iza34HN0AyFq7yYdZp0L5dUFnc59Sdq6PiHp1UVVcaxRX
 so+M5s+rZwXYJtwwH1dW/ZttNRduSE1hpNSFp576ZHBZz9i/A5PZmPZFGZpZFfNtnmU4
 KB+Ql2CWVuKrQiYIipFXHXf1PtKjsQioy9HEbTq0YzMPdrMR984wnV/vYiooCPl8x/ux
 LQI50RAdf0kFfIl7YU1K70xoC3cutwwiS8sq/X+m+ujryg1gA9b7WlsPr8VbXLTB0439
 UiGK5amQlUsWZ9DDZ64Fyg/Rs/vnvMnPaB2gx5QW1EdBChSA5TzimYeTtNFLAxhG54Xz
 XnUg==
X-Gm-Message-State: ANhLgQ1V4W5yWG6xlZRrbZjAeb4WYet28arP+V1hWuneEGSqN6y2FC19
 FVN4KXzmu4BnG9Il9g02cN4mEA==
X-Google-Smtp-Source: ADFU+vt8zPjFve5Lzf8111BcvtQ46OdX9DFr+m5z0b0ioG5fo6mVd11MHu7Z6qKC0WsQJVUN7MCYuQ==
X-Received: by 2002:a17:902:710c:: with SMTP id
 a12mr1981292pll.283.1584506339206; 
 Tue, 17 Mar 2020 21:38:59 -0700 (PDT)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id d11sm4639337pfo.39.2020.03.17.21.38.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 21:38:58 -0700 (PDT)
Date: Tue, 17 Mar 2020 21:38:56 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] Qualcomm ARM64 defconfig updates for v5.7
Message-ID: <20200318043856.GB470201@yoga>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_213900_370779_8EEA617D 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stephan Gerhold <stephan@gerhold.net>, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-msm@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Olof Johansson <olof@lixom.net>, Sricharan R <sricharan@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-arm64-defconfig-for-5.7

for you to fetch changes up to 1788e7a932076205d0e43024f457dd0a05ded592:

  arm64: defconfig: Enable Qualcomm SDM845 audio configs (2020-03-15 21:04:33 -0700)

----------------------------------------------------------------
Qualcomm ARM64 defconfig updates for v5.7

Enable SDM845 audio, display and gpu related configs and the Truly
NT35597 panel driver, all relevant for various SDM845 based boards.
Enable IPQ6018 clocks and pinctrl and the pmic vibrator driver for
PM8916.

----------------------------------------------------------------
Bjorn Andersson (3):
      arm64: defconfig: Enable Qualcomm SDM845 display and gpu clocks
      arm64: defconfig: Enable Truly NT35597 WQXGA panel
      arm64: defconfig: Enable Qualcomm SDM845 audio configs

Sricharan R (1):
      arm64: defconfig: Enable qcom ipq6018 clock and pinctrl

Stephan Gerhold (1):
      arm64: defconfig: Enable Qualcomm PM8XXX vibrator support

 arch/arm64/configs/defconfig | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
