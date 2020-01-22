Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBB6144ADD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 05:39:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LWF9z/FCzZwBVhuTlnuX0Gk33hcmEaY3vXsw9EqOLJ0=; b=BCTTH7Jxda3gpR
	kXWhBC8Ag4mzGu08pe53EQ2Qy/2CWwtUqFC/8RVDczR8eyIcMKLympS9TzCmR05p7bJ+dCShaPVDm
	k0Rkzsk9tZpge+YafzSMOijCbr6C5Z+EPL8uK0RwJMp4E9aMb24ATyMNXDfKuYp2xYwkgefmjKK5G
	RJ6yccU69vPWFwkiXsKezWYJP1nTm/jwb4IXrWLJj/9XqEhAjF5XnXJSQ/Ni6JtowiMgM5Gs2qhU1
	X62+TvIV13KOqNPIkPufht/a5zi3Sc9kLff2RvUws0kCmmblSGxx5EKXslExh9fpjKtIZIXbMvYOD
	xzCEBAX7N7gnoc81wc+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu7nq-0007ID-4Y; Wed, 22 Jan 2020 04:39:42 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu7nf-0007HW-N9
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 04:39:33 +0000
Received: by mail-wm1-x32e.google.com with SMTP id p9so5394629wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 20:39:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=+m6cadQl6pV2Wv78zkM4etc1x/ZjZAZbfQAg+8s6O5Q=;
 b=aMilkVSEnOZtzlEy1UKGMIQYCdnUVu++Ag3SW2eOvf2DiqtTT1PH9xizKFdA1kx94J
 LdrN4zOy4l8cqkKVoMTt8Ld3MiKHaNhsB3nU6dWqk/4bxxk9eYBQ/kSl/5YGAAyU3OZi
 C493QtTEUt/SjLtkUDvLDrhpMWe0MQWjCxX96nBwnpqz//o9HQIchZpzseYiGExGI2Ed
 ApePCwkJ5xCsqX3tjBAx6Qlio11i8oPdp6l9btFWrdFKDT+lnwR2Lps8q95TMnajkfTj
 +8B7V+8wrOPvDppb528I3LoUMaUyZDKR0HKPla0jiaTRwrcst9duOSXYAPcjrya1mRBF
 IENA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=+m6cadQl6pV2Wv78zkM4etc1x/ZjZAZbfQAg+8s6O5Q=;
 b=RCv90tFvvh7j6dnSqWM9QFgBEl6WTKIE9GI82Roypz3Zs1vOUVYxRZsbQLCuorkWrJ
 uUw5atlGrvbVIM92hd25bJAqoVDmIJCA1O7EhjT/gJggVizdBFM6kN8rJobZxTLFsAIs
 OYTvtgHgOwSm2OqWJE2ARI39VB8l3W2sKiIKUxg4l7srizxcrWbySWriuAyvcsd3cyjW
 MuzxWmptJwAQM5/sMaIAhtuW2Dr6CRUYuKObzFzCLFgvczfm9MH5C5/5QCt4k1U3U5h7
 4w8vJM+gwWl4GSvcM7hX3HyvlWvEx2W/qyCyYho4WawI8X+bx8vKw0ZjCxP1f9/lFlcx
 tedQ==
X-Gm-Message-State: APjAAAVcAVOUP6PcOVzm2K9E52CYCYhUwWOZUXlGH8slIwnlZWEXI52V
 BTi5gbdH6TsL1e+Sv0MS3u3Rng==
X-Google-Smtp-Source: APXvYqwakuqDg2xhL8wUrGjifhDdGKgiSckE3EE4aX7T9ne5JFQ9A8uD8SBsL9+mDJz0d0AdjBWkyQ==
X-Received: by 2002:a1c:6588:: with SMTP id z130mr669359wmb.0.1579667968311;
 Tue, 21 Jan 2020 20:39:28 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id o1sm55120123wrn.84.2020.01.21.20.39.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 20:39:27 -0800 (PST)
Message-ID: <5e27d1ff.1c69fb81.f31c4.bd62@mx.google.com>
Date: Tue, 21 Jan 2020 20:39:27 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: boot
X-Kernelci-Kernel: v5.5-rc7-76-g1fcfe766a119
Subject: arm64/for-kernelci boot: 24 boots: 2 failed,
 22 passed (v5.5-rc7-76-g1fcfe766a119)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_203931_755988_889799A5 
X-CRM114-Status: UNSURE (   3.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32e listed in]
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

arm64/for-kernelci boot: 24 boots: 2 failed, 22 passed (v5.5-rc7-76-g1fcfe766a119)

Full Boot Summary: https://kernelci.org/boot/all/job/arm64/branch/for-kernelci/kernel/v5.5-rc7-76-g1fcfe766a119/
Full Build Summary: https://kernelci.org/build/arm64/branch/for-kernelci/kernel/v5.5-rc7-76-g1fcfe766a119/

Tree: arm64
Branch: for-kernelci
Git Describe: v5.5-rc7-76-g1fcfe766a119
Git Commit: 1fcfe766a1195bfb7d3b248defba8c9787d0d41a
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
Tested: 22 unique boards, 8 SoC families, 1 build out of 2

Boot Regressions Detected:

arm64:

    defconfig:
        gcc-8:
          meson-g12a-u200:
              lab-baylibre: new failure (last pass: v5.5-rc6-61-g2556a8d3927a)
          meson-gxl-s805x-p241:
              lab-baylibre: new failure (last pass: v5.5-rc7-70-g46158a360c3a)

Boot Failures Detected:

arm64:
    defconfig:
        gcc-8:
            meson-g12a-u200: 1 failed lab
            meson-gxl-s805x-p241: 1 failed lab

---
For more info write to <info@kernelci.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
