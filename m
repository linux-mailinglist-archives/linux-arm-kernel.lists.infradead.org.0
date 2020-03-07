Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4958F17CC45
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 06:33:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z5x8jWeK3UTK22ir9erD4uC8AyJ5a3csiGr/Xl0r2TI=; b=PQtl7Ll9Ck2vxI
	30DFqNVPtMhpxxyS6CIvDsFwU4b3Jx5PD9wRMiy+1zb5l1VsCFA7/ahjot4HPZ8M/AcotplNwby+g
	LiaugupwW5FKqfx1NNuoa6LCTnpiPQppQg6JReAaH7qt5DZIEu0/C6RHUTckbvTqwRxdAXxskNHr/
	eoJRIfmwNP4wOfmJP/0t+HFWsSIQc37nGL1rAr7offGPiM31N8gTGNFI3/CtgJt65gUuLY+Yyb7Fx
	px4UahwRsuVUhJ3T4kvU9M8FAUZ/rNxKnbtP2oRQcmbOu0quHoAI3kz3Sil+lUv21p7hbdy61w2A9
	JTtUcbEt1DU7qA2/W+DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAS4v-0005Rk-Si; Sat, 07 Mar 2020 05:32:49 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAS4o-0005RJ-QO
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 05:32:44 +0000
Received: by mail-pg1-x531.google.com with SMTP id m5so2093014pgg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 21:32:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=Ff21IMG0e67ga06dtAjAVgoII53A/IDb8xQQ+MvdO7M=;
 b=r8BgYoUX5ajR9PjoDX0n+jQ1tOYRxLEJeIl7Ehru8AduTB/oweuSfsNsM49ipiCbJB
 Ij6i/o3OsVbKaTPuB+axy6tGJyHDcAwOy2R2cRe9dwZpmcAxzmcFxlpwA+zHMJegDwcQ
 cfT0TBr0LGtob+Sd8+G7c4UXbkm96/i8uRHnU1CIM3rbwHttIh6f3/QT0GnLI6PmAOac
 f1iqLWVJDPGg9GgJ4xE1nRj9ebDxyVqmfJfTTchPCeN5fqiy7plgRVwHa3hJDSmW2AyB
 tTYv+/dnhP2JsopLspD04t6ushDZCA2kU+lWDJSVikGCm4vci6ilUc8xw87Nki18L9Jw
 +J+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=Ff21IMG0e67ga06dtAjAVgoII53A/IDb8xQQ+MvdO7M=;
 b=UjGAsoA/9udjsRmdDhcE2lCUO8syv8neibNlUSr0XM0Y5QLplTJvYwhsTG+5cm2UbV
 FjioABVBCyrysgIGyZAiXiVIRFmqhz5nSzoPNaavnc7+YSGOQFVuDknAFDIsCQ3z0Zlj
 sbS6sMMs6Yr03Mkmsrhq592own/EINOH+Ipz/uK8LWCfDoZE4DXqLoCS+9V2j3fZHDAi
 JW1iCUX8HGRU4CZdpsVlDVIfcJUHVxPSP1rE4qLArn8gaTztd7EjpmyItk9xV67S9Vrz
 +wAZuvBEc7uiP3Aw8lR/8Vn/ITp4eIoHE1XMvHysQzl7Fda2lDGnHM6kV3v6aJvpUKjI
 VQqQ==
X-Gm-Message-State: ANhLgQ091s2zaMDTkxsxpHfRw6A1Ndd840fiaLl/cpLrGzIxlDhTLn8z
 XFxYkKBZN3dgQBRDGvCFYYq7hQ==
X-Google-Smtp-Source: ADFU+vtfTPLbYhXr4SU7vzXppUrSNQEKaaMqbXdKQXfaavLmxxctVoWrfc5Cg8ahmvFo4IswwZeS8w==
X-Received: by 2002:a63:a35c:: with SMTP id v28mr6812763pgn.251.1583559161104; 
 Fri, 06 Mar 2020 21:32:41 -0800 (PST)
Received: from [10.0.9.4] ([52.250.1.28])
 by smtp.gmail.com with ESMTPSA id c15sm11671547pja.30.2020.03.06.21.32.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 21:32:40 -0800 (PST)
Message-ID: <5e6331f8.1c69fb81.661c0.f3d4@mx.google.com>
Date: Fri, 06 Mar 2020 21:32:40 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Kernel: v5.6-rc4-20-g215ae3ad8d91
X-Kernelci-Report-Type: boot
Subject: arm64/for-kernelci boot: 21 boots: 0 failed,
 21 passed (v5.6-rc4-20-g215ae3ad8d91)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_213242_863969_0A58372E 
X-CRM114-Status: UNSURE (   3.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:531 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

arm64/for-kernelci boot: 21 boots: 0 failed, 21 passed (v5.6-rc4-20-g215ae3ad8d91)

Full Boot Summary: https://kernelci.org/boot/all/job/arm64/branch/for-kernelci/kernel/v5.6-rc4-20-g215ae3ad8d91/
Full Build Summary: https://kernelci.org/build/arm64/branch/for-kernelci/kernel/v5.6-rc4-20-g215ae3ad8d91/

Tree: arm64
Branch: for-kernelci
Git Describe: v5.6-rc4-20-g215ae3ad8d91
Git Commit: 215ae3ad8d91782b7e88e07c246a1501a724e164
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
Tested: 21 unique boards, 6 SoC families, 1 build out of 3

---
For more info write to <info@kernelci.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
