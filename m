Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A9A108FD7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 15:25:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zqj2z7ukEZv+JcMYNvut36CdhPjr3F9h9HpfAp+w4FU=; b=tXCki0jpQssppV
	YBmR/rbV7qcSYupXlJurQNkDiMvmoZe/qqhUqoeGFrtzpWnbPSbTYmdedrQpjDdOMJsFpkzbw57eX
	Xq2LWRpU5a5U2PFh+DNS/MPtt/G/A7zxFqTna8XncEUgayKlN3Blqsta80FMZF2gLHL+p5kAvXL0u
	cvB5/7Hdvow2+QNy7k5Vn0JEF5YSu6wNpop58Kdrwg2qhh0dz3Ad9e1SJqzxe/cQfxA3nd1ecdGTO
	k0kGngHzkG7bjk/ZfTuxwi5tkWDeZdJZgYyGizEDeAE8ATbT+OAM804I2zKGpwPn7T+Wm2RKRLa1c
	JQuar+fjp/pZO+FmzyUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZFIs-0007aC-8G; Mon, 25 Nov 2019 14:25:26 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZFIh-0007Vb-2J
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 14:25:16 +0000
Received: by mail-lf1-x144.google.com with SMTP id f16so11196650lfm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 Nov 2019 06:25:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jJGjqIUVepPLRHV22oqqOHDreGtDqVWxcWdZC6G8yok=;
 b=l1SwZIBz0kpCh6mjQ1tTCN3YgKucw0MFxLyXXFgDJ9e9/VWs5egA1uNyn+s63YFdf5
 QD3+utHSpmupD0wvVrPU5Mxb/eQvgtRJwW5DW8Psi9RQSuluXnGY/K4C7UF0KxLHK+iI
 aHDstMocXx3EpwBIIv1jpBZQFtRKwAl8TYNRjNwfvoNv12MHpJKTmm7HiANy59nH7djp
 dhefBQRn2TrK3wyRhBlEjT3onEybhzYbJZbOtZl/IhXXDteAxFI5Ubb1dYlAB7Y6LemU
 Q33T3L+gsT4MdepvwuPEDR1d7p5Yfn0UxRkeMj2wUcYL2rWsC2AanuZFBTT1a5Nso8Ym
 dlAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jJGjqIUVepPLRHV22oqqOHDreGtDqVWxcWdZC6G8yok=;
 b=ZYNC5k7sgk8pnODgu3KD6a+mSWblnC8MhCB08Yt1p3nSpgfeAV5BG6vsydx2nVm/9K
 L5VkyS+Mu9P4aj4AvGye8LFk/1FAI2W9/eIPDOCaraTHZ/jH2LqmaWAarnFqoXWXSaSA
 EoIeWZ6a7qLhEaOyVUPf9pbpxDKWnf1zDpv+nqJ6KwzbvWRGrscuCzhaPMQW8cWpe5zl
 weDXmVv4kFgVyJr8vOAaCFNtBwtnCY20tCZmlQ7MhdGVwbTVvBCQibLhA7pODKtd/2su
 k67JwieT/NMWQlSV7BZjhESGsQpVI8ko7SSymfPs1q1vvQcf8+gxdiZiaQKrI0mZwBF9
 m0Sw==
X-Gm-Message-State: APjAAAWigHN4GldO27rfkweWyIqI2BszwF/yRElOHfKfy8AcsLV8PGnR
 5jM2WKmYU/vmU1O6UdvmhTzu1w==
X-Google-Smtp-Source: APXvYqzP9+NUfhIW+ld6KbXz6vRF5nWC4KK2171kbO1EU3AOvuqRZSjCLzfJbm9JvAixkFVrpwwVcQ==
X-Received: by 2002:a19:22c4:: with SMTP id
 i187mr19509055lfi.152.1574691912976; 
 Mon, 25 Nov 2019 06:25:12 -0800 (PST)
Received: from centauri.lan (ua-84-217-220-205.bbcust.telenor.se.
 [84.217.220.205])
 by smtp.gmail.com with ESMTPSA id b28sm4595260ljp.9.2019.11.25.06.25.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 06:25:12 -0800 (PST)
From: Niklas Cassel <niklas.cassel@linaro.org>
To: linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 0/5] DTS changes to support cpufreq on QCS404
Date: Mon, 25 Nov 2019 15:25:05 +0100
Message-Id: <20191125142511.681149-1-niklas.cassel@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_062515_120014_90945298 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 amit.kucheria@linaro.org, bjorn.andersson@linaro.org,
 Niklas Cassel <niklas.cassel@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following DTS changes are required to enable cpufreq support on
the QCS404.

Changes since v1:
-Added a cover-letter.
-Swapped order of "pll" and "aux" clocks, in order to not break DT
backwards compatibility. (In case no clock-names are given, "pll" still
has to be the first clock).
-Removed incorrect newline in the middle of the cpu0 DT node.
(This extra newline must have been added by mistake, since no other
cpuX node in the same cluster had this extra newline added.)

Jorge Ramirez-Ortiz (5):
  arm64: dts: qcom: msm8916: Add the clocks for the APCS mux/divider
  arm64: dts: qcom: qcs404: Add HFPLL node
  arm64: dts: qcom: qcs404: Add the clocks for APCS mux/divider
  arm64: dts: qcom: qcs404: Add DVFS support
  arm64: defconfig: Enable HFPLL

 arch/arm64/boot/dts/qcom/msm8916.dtsi |  3 +-
 arch/arm64/boot/dts/qcom/qcs404.dtsi  | 42 +++++++++++++++++++++++++++
 arch/arm64/configs/defconfig          |  1 +
 3 files changed, 45 insertions(+), 1 deletion(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
