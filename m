Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACD9159286
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 16:07:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XjTcjRPm8ISdln2O9gQHS/l0tjviy64mZTUM3bP5eu4=; b=DZte/2TZehKYPI
	47OVJR7qs2Xn4P1KyvdWWUCWttyiEcxnzdpny70EIjU6LFw5JHfQgmXHlaU9meTzDy3NPSClIGTYh
	H2xBfMZ6GVxCxcWjXa7Pv/YP2wedJ0yIXUHjqz0kQDhogfLkt7N+7pDU/FsqlzzqKvG0tfi/78+/z
	9QEVLaHs8kL96fdXrLL2T9yr6KqZ8w2Geq0sbpmvGPdwcZwziu34Wepc+FtFU7RT0KsTvInoCNprr
	V99aZbU3tqTdye1Ilqq4KgD5K1sad5DjYJsEhcDHSz45YT/ftiYCjkN0Dt67Bcxn8RGawFBgeqhvb
	jVQvHf9t7qoCyM1x/pDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1X8Q-00037Y-6Y; Tue, 11 Feb 2020 15:07:34 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1X8I-00036s-Em
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 15:07:27 +0000
Received: by mail-wm1-x333.google.com with SMTP id q9so3950030wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 07:07:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=hReDwgaMkTnjB+DqerxdDaTtVpOWaNxjQuJFSs2JF3c=;
 b=BmYVgKBicf/1jLbp05nbfoRPYXy1HwDEmWmFacdXLd1tVAb2ZJNOPf4PwjNY2i3gLj
 zOEbNLvaexSeprHLPUSiq3OAn2GAWl9u9YDN+5dRLanHVyvVzspR5u0OnKfLj5vp9Ene
 iXn05GMQrA8L10ZZiVH8sCAVqaBqx2fv9T0SPR/KAIusy0kg44LY7l9qzPy5xVFuB/Yi
 CsBw3k9bXea5Og6F+cC7hZSJMv0hFIdgP9mJDZ++GYxYeEb8RkWRrRPEQceOrm+vNQkR
 62rig5imdp2PntcwaQhMxdru62bbCxa+JpR0JooHb4n0DQB52fGZJE76nlbKXF7Lg2Hu
 pgmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=hReDwgaMkTnjB+DqerxdDaTtVpOWaNxjQuJFSs2JF3c=;
 b=LQ7yqo0J5cb2rOEneliZqClGdILaqS1Saowaav14SLDCj6HWGJLn0H8eguCVKihIbo
 8OG0fHvJWjBXE3lciakt88h4VjCN39KgbzyA1slfkSEm6phdEqdYAekCUBbmre5a/h42
 YEaEF+ckc17lcSfzly4bcpvku78Zx5KKGx3rCj41hG+qD0hAgEhnVCKB1wxMAcHRU0b6
 oZqTLlQCCis4i7yOQSFCl0nxF4AQll//mJIfq4nA2gNuV3mOO4ZLK0RLm0lz4rQA9iWs
 8IPGGsIEr7f27nYavKc/BHpJgHLRPVC7KJ8hFvyoBv+kDlrt/OIWWAHiO6jTNxSGR/G7
 gT0Q==
X-Gm-Message-State: APjAAAXKw8x9oDS1OSeRIWbGMaPmrPKCLghT8Vat+FWyL6s9xfrj6XY2
 qyFGIdJXNFRxno3OmWnuZLBMCLBUi4XMCw==
X-Google-Smtp-Source: APXvYqxjWwaxZbJKWyFCyZQgAQxykteU6BTAB8Juv3mv5WY30dReZSb6D3TehqtvRkr/uozTI09LrQ==
X-Received: by 2002:a7b:c1d0:: with SMTP id a16mr6039238wmj.175.1581433644535; 
 Tue, 11 Feb 2020 07:07:24 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id b67sm4187216wmc.38.2020.02.11.07.07.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 07:07:24 -0800 (PST)
Message-ID: <5e42c32c.1c69fb81.657c7.3377@mx.google.com>
Date: Tue, 11 Feb 2020 07:07:24 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Report-Type: boot
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Kernel: v5.6-rc1-6-g74a44bed8d93
Subject: arm64/for-kernelci boot: 25 boots: 0 failed,
 25 passed (v5.6-rc1-6-g74a44bed8d93)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_070726_497537_206653E1 
X-CRM114-Status: UNSURE (   3.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:333 listed in]
 [list.dnswl.org]
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

arm64/for-kernelci boot: 25 boots: 0 failed, 25 passed (v5.6-rc1-6-g74a44bed8d93)

Full Boot Summary: https://kernelci.org/boot/all/job/arm64/branch/for-kernelci/kernel/v5.6-rc1-6-g74a44bed8d93/
Full Build Summary: https://kernelci.org/build/arm64/branch/for-kernelci/kernel/v5.6-rc1-6-g74a44bed8d93/

Tree: arm64
Branch: for-kernelci
Git Describe: v5.6-rc1-6-g74a44bed8d93
Git Commit: 74a44bed8d93782affb707a33469bda7052b4207
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
Tested: 25 unique boards, 7 SoC families, 1 build out of 3

---
For more info write to <info@kernelci.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
