Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F41189260
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 01:00:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zyvt8AsYtv8sD2Ieg9oMTDgOY7Pcl9u7bFOZQMoiUt4=; b=kbGBH6hvLEo0PA
	dQRLjJ0Yp+gMg03bLUBa4pbq7hKLJwAL98kkkWi5TkCqbGiB/3PlnvcMY4C+vkCgsxtvpUE4Uk3+8
	88PgsmIlzwiO1+gGVEm5+dg4SPlRHuJf8e3E5IR6IJ1PT9waBW3DCsptvg/UXFXRhXwO8OmSEexvg
	Ujuz4r/Pd/xJV9Cn+xbyVh1liriSAVMx0fdviv4WltI6Uh1r9mbahD+oi9oMkS7qTG6ub3mcJTRTs
	pGVRHU7/W0VuxmJVEmnJuc91A7UdX2ZWwxgL1TJtR/1GEW3T+6aLq4b7+S7F0FF95cCfo/RnRbk+O
	UTt8bujmzRuv4BQnggGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEM80-0004DO-BV; Wed, 18 Mar 2020 00:00:08 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEM7b-00046G-1O
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 23:59:44 +0000
Received: by mail-pj1-x102f.google.com with SMTP id q16so429324pje.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 16:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=aEhPR7a+5gRqPiOcnOgEx+gZ9eMyeH5lqn3vN4doI4A=;
 b=pGMW/Pv1Q/k6X1idpJKa7swDtkkP8FYmuFPgxWMd8e6VI1j/7/ErWhLAuSXtlvK7b6
 aucIgJzUd8tNWx6ScEZPNk2VKcl90SXCnlVYbRtHNGwOzguzW+e9CUizYovAeBvlQseE
 Ltd4dTHMyryBcp6mDBgqfblzdfvwc1PBRzCgCirEjwiPkfRRXTHj7v6J6syXT+EUhf/W
 adXubvdMpsqQL+N7kGg29E2uFcbYmR9aM0EE+JD86iJDOFXOJw/BdtJFhtvCseRAkk8L
 nq1J/62HC8fs4Kpn+Ir2JGjdlljLQe/ZXfz/LH1MPTmUAcB6R2VEozF0a8xAJa/PWUFW
 UNzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=aEhPR7a+5gRqPiOcnOgEx+gZ9eMyeH5lqn3vN4doI4A=;
 b=qYhPIE8DadQVlfydvPx9VOWJ2DW5sn1OvNTepRw1T71ylNrwti5Hn+XD9GG+HajOeL
 Be7/oJwHkqd2GHrZB+SCSG1W7eoqWiAP9QcrrxYxmCsF1BnMLLuPYrzhzHzcy/GAXLSu
 LTNenq5QFWoZVkmmhnOkIFg9wo9cr1HUBHmXTlZxVcAAv+K8Rbn0GpKnJA9k0AOv3Lew
 PAHXx1KWd4BG8UNM1wEBVtbvEwkecillIUq6Nyr+D2BF08SBWgIQCbynafoKaZTCyVbw
 RrmXFEFpBcNuGxr11gpPctLHvQhtNtFFWXFZIT49kwUM4MOjzCddfdwR785AseKEsNcs
 2RYA==
X-Gm-Message-State: ANhLgQ0uTrg4+9/rWrrtXoZMfA6N6Sa3+QhYHAm5+ySOhBq7tK2vH3fm
 5HuUNjUSKCN9Veg58KYXQ9ef/BCbk+0=
X-Google-Smtp-Source: ADFU+vshjv3Ujh9tOAFnZbl7+O3ZRb0Ry4Iy4BKUY6KlLvV6J30bA5kChWhA633vVBFlaAvbfMt/cw==
X-Received: by 2002:a17:90b:310c:: with SMTP id
 gc12mr1723884pjb.193.1584489582196; 
 Tue, 17 Mar 2020 16:59:42 -0700 (PDT)
Received: from [10.0.9.4] ([52.250.1.28])
 by smtp.gmail.com with ESMTPSA id p4sm4212625pfg.163.2020.03.17.16.59.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Mar 2020 16:59:41 -0700 (PDT)
Message-ID: <5e71646d.1c69fb81.53899.fdfb@mx.google.com>
Date: Tue, 17 Mar 2020 16:59:41 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Kernel: v5.6-rc6-67-gcf89e8c383a6
X-Kernelci-Report-Type: test
Subject: arm64/for-kernelci baseline: 24 runs,
 0 regressions (v5.6-rc6-67-gcf89e8c383a6)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_165943_106455_1DABEEC3 
X-CRM114-Status: UNSURE (   4.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

arm64/for-kernelci baseline: 24 runs, 0 regressions (v5.6-rc6-67-gcf89e8c383a6)

Test results summary
--------------------

run | platform                     | arch  | lab                   | compiler | defconfig | results
----+------------------------------+-------+-----------------------+----------+-----------+--------
1   | bcm2711-rpi-4-b              | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
2   | bcm2837-rpi-3-b              | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
3   | imx8mn-ddr4-evk              | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
4   | meson-g12a-sei510            | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
5   | meson-g12a-u200              | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
6   | meson-g12a-x96-max           | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
7   | meson-g12b-a311d-khadas-vim3 | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
8   | meson-g12b-odroid-n2         | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
9   | meson-gxbb-p200              | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
10  | meson-gxl-s805x-libretech-ac | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
11  | meson-gxl-s805x-p241         | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
12  | meson-gxl-s905d-p230         | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
13  | meson-gxl-s905x-khadas-vim   | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
14  | meson-gxl-s905x-libretech-cc | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
15  | meson-gxm-khadas-vim2        | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
16  | meson-gxm-q200               | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
17  | meson-sm1-khadas-vim3l       | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
18  | meson-sm1-sei610             | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
19  | qemu_arm64-virt-gicv3        | arm64 | lab-collabora         | gcc-8    | defconfig | 5/5    
20  | rk3399-puma-haikou           | arm64 | lab-theobroma-systems | gcc-8    | defconfig | 5/5    
21  | sun50i-a64-pine64-plus       | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
22  | sun50i-h5-lib...ch-all-h3-cc | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    
23  | sun50i-h6-pine-h64           | arm64 | lab-collabora         | gcc-8    | defconfig | 5/5    
24  | sun50i-h6-pine-h64-model-b   | arm64 | lab-baylibre          | gcc-8    | defconfig | 5/5    


  Test:     baseline
  Tree:     arm64
  Branch:   for-kernelci
  Describe: v5.6-rc6-67-gcf89e8c383a6
  URL:      https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
  SHA:      cf89e8c383a6447a635400f669d0cd97e89770d9 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
