Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E773E1BF9EA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 15:49:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RaHJh2u9JHhsaXDRu7Wx/nede16/m5BETRkU6u46EvI=; b=BgNWqNdzDdXfgK
	JjqBjb8fmuWMmvWmr2hgk92XZ01dCOVWwHCU+O1K3ARYTaPA9/HyXSaq9xOIkYgkRNdvW4EPkzUwr
	dDfzT0GxHnhITvJRu6jegXlk2jrmVclYJFexS085QkI/GPRDTFB7miAbCYn4y90WGesR4oBC2CPfU
	oKcKQSWqmcjCS1vWLmHyIU30UlhigXWXM8KyqIzXyGuK1cRhHwTM8HzaZ7YnpZM1oZq8DT+whJcaa
	b81oKczsvp7TS0KohfRVLxzoaHsqmSS6jm2uCGFqG8m4VTK0NDNGGnOmpB3Qb5w2hOvZxEF5pFCWB
	BCupwUggdMTDlZ/sOktA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9Yq-0004sj-FF; Thu, 30 Apr 2020 13:49:08 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9Yd-0004s3-V5
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 13:48:57 +0000
Received: by mail-pj1-x102c.google.com with SMTP id e6so713391pjt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 06:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=sJxSrmt1+4BP8psgrXexko2ux6sFxQR3TLDi+I4AXjk=;
 b=dzsbAqU1sYackUAO008SJNjG5f8gGgoBFVDKnrIlUBYV2lVCeJX6jcl+I/HuftShCr
 EJ8bHq4vQyfTM/6dBCKkDK5WpB/bKz5Sqnr80fsHkeVd/m5ZNlLS0N22HUzUiTU8r2Ae
 tLXE0WFqRRD2wpgd8zxgOSecrI0yB9U69ScrbWPsa0j3Eyi1o7uSLYJuvkMaz3jSWCiD
 kHOFK8xs0BXPwMNDH+SfEW1YtUSbhZqiNEs/pEWdCJCxL/IizzoGUzA3gtUz3YmD3ncY
 EWW6+UA7yR9XkJ4L2S+vVW+I0VOyTDDuBp570m9lKCaokAt66TGezjneavWi6mVcV94B
 lMBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=sJxSrmt1+4BP8psgrXexko2ux6sFxQR3TLDi+I4AXjk=;
 b=AG/7l9NBC6rBP++OFI9oLNuVnezf9wNFtlNs+ZbpXIvHRsNpEeug1NVRyosMpSv1pD
 vOouV5CiL7bPR4prnMmOfapmiQFCDMr1M0E8nl0k2szqiQaGG3RnTERV1StgD9FNM9VB
 u5rCDSSRNjsVAelLyHs5XqJnHK/KSm/FYh+6zkEHJUQTn25d8It1nUD9DrGSIpUbgM/H
 7kwxUUHYpLnm8gXvD5DKJ47t3TuNUIQijPbE7+QmlDTwLaxF+uuRZu72vrraIrBFxnoP
 Osu91Oz11CLgvy2aO1hPf9lJpP24By0+VeKaz4hwrCcp6gD9yIVlxUubgCBAWn+flwMM
 XcCw==
X-Gm-Message-State: AGi0PubtSS7wlW3BaXuWcTuaFLSaTj6EA7IP6OtIOL/M3sMAG2ObftLM
 ZHQvj06VNaWZybqMtY9wYlyeKtBvQZU=
X-Google-Smtp-Source: APiQypK2AiXRrEmQ5+W26LhgmeIhId9S3FeCOVdMmqqG2dSsQiDFUc3xvlid6NRYVS3/L4Cjkw/Zlg==
X-Received: by 2002:a17:90a:8509:: with SMTP id
 l9mr3125648pjn.113.1588254535214; 
 Thu, 30 Apr 2020 06:48:55 -0700 (PDT)
Received: from kernelci-production.internal.cloudapp.net ([52.250.1.28])
 by smtp.gmail.com with ESMTPSA id u3sm3648260pfb.105.2020.04.30.06.48.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 06:48:54 -0700 (PDT)
Message-ID: <5eaad746.1c69fb81.efe8f.bf5c@mx.google.com>
Date: Thu, 30 Apr 2020 06:48:54 -0700 (PDT)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Kernel: v5.7-rc3-49-gaf3701612ccd
X-Kernelci-Report-Type: boot
Subject: arm64/for-kernelci boot: 29 boots: 1 failed,
 28 passed (v5.7-rc3-49-gaf3701612ccd)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_064855_995177_51D8A200 
X-CRM114-Status: UNSURE (   3.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:102c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

arm64/for-kernelci boot: 29 boots: 1 failed, 28 passed (v5.7-rc3-49-gaf3701612ccd)

Full Boot Summary: https://kernelci.org/boot/all/job/arm64/branch/for-kernelci/kernel/v5.7-rc3-49-gaf3701612ccd/
Full Build Summary: https://kernelci.org/build/arm64/branch/for-kernelci/kernel/v5.7-rc3-49-gaf3701612ccd/

Tree: arm64
Branch: for-kernelci
Git Describe: v5.7-rc3-49-gaf3701612ccd
Git Commit: af3701612ccd7308e2f040e9c9bf842c9fb69084
Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
Tested: 26 unique boards, 6 SoC families, 1 build out of 3

Boot Regressions Detected:

arm64:

    defconfig:
        gcc-8:
          meson-gxm-khadas-vim2:
              lab-baylibre: new failure (last pass: v5.6-rc6-97-g825596c5c10b)
          meson-gxm-q200:
              lab-baylibre: new failure (last pass: v5.6-rc6-97-g825596c5c10b)

Boot Failure Detected:

arm64:
    defconfig:
        gcc-8:
            meson-gxm-q200: 1 failed lab

---
For more info write to <info@kernelci.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
