Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8F51457B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 15:23:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Qja/NPEh/HAHbvVuKPLsYOQgPeWWJCDi/JvE+OCASC0=; b=eEOupxwRVSd4XO
	jNvjxyBCd27WigW94p/IKSrgrw0d3EZ0TOUou4n57hw6GaycqbvolWavEwQs9PNKfQmo00mQ1aScN
	iMfsrKR8SCj45DhK21cnyYj/dOX8+XFh4Xi51L2L7YiLTTNgISe+L5+ykt3gTKMxqy8M5qyjJiKmo
	U20r11OhEMCYRP2yF26IjwshyYt5vkE0rHkJMjTeo0MBpTpkG1NefnGQVCkMUBxq44RJXgjugxNW1
	S3oaQqkaQ0kJKavhGzCb6R48Fgtp//phFd8DnbmI7uAQHA8IZwKYggLwzAOCKEZKYsRhH8VM3GRS1
	TtbfOah8rofCYWdTT1XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuGus-00036a-3A; Wed, 22 Jan 2020 14:23:34 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuGuf-000353-5u
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 14:23:22 +0000
Received: by mail-wm1-x333.google.com with SMTP id t23so3369994wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Jan 2020 06:23:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernelci-org.20150623.gappssmtp.com; s=20150623;
 h=message-id:date:mime-version:content-transfer-encoding:subject:to
 :from; bh=Nc6K/3mc2dIRC1C0O0PDSBYMSVkiHQiAzM5dFKSoIFc=;
 b=BkxslMU2lynG2y8zjG01YLNtemBLwMFJCZA39z+XR/HE46RduGz8g1mi/MvhLswNo7
 HzPQT6tTNsyZTLAcFuxLgCNikfQYMFRFKZgP67JWElypRo7AJNYU5uFw3xV+Idqe6LY8
 hPOl/wCmyyyIOfyTenbNoMdVWf8jqbJq1eU0qm3I7CcwL1zYUZTRCEq3Dgc7V11Fuz2X
 TgC/Bi+WaFEJIzH/rYqvjqw3TV6Ok+KHJwNJBp3Ij6AWKQP8oEm527d0hve32QcTh4t7
 JYoYY9Hi/es99n5jDYzRKv10gCFwKfhZ7P8sWIJF8dBiG2wZi8xN9g/Yeven/nGf4p/i
 Sq2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:mime-version
 :content-transfer-encoding:subject:to:from;
 bh=Nc6K/3mc2dIRC1C0O0PDSBYMSVkiHQiAzM5dFKSoIFc=;
 b=K1coE7eXewr5VgR2XIcU/jTNXfMNbf35wkad3gv3r6eLtafCkPo5zir0yFAcL1NRyk
 V8q0LNONukXoBi1h1a1ztiDnHZQaJ67ADJohFw0661xLxyKjHzUVTbP8elStzhqxvVyM
 86I2ekiXJ5QXm82WMn8vtECaugULSKIiyUyJ3d9I4oGh3w5c+2R+Oja0GH7HHROwjiyn
 zUvH1esUo9xQJ+PjPEZZrL5erPm5QHyNPSS+p9ailuoCpIlo0W+ifE3V6G7v11qExvIt
 6doYqRyDNTBGJzZaxjra85elAGEGtn+dKB/zsOkCkUC4hjTtnwfy14/ZyoodoOI0zqXL
 yFeg==
X-Gm-Message-State: APjAAAUk7vxJ1EOrZHbYllHcTTV3/5wtFuoZcc7C1tD1PgaIke/UkFkI
 /D600o5wyEnSAYb9GsIlNCQY4joHk9v01Q==
X-Google-Smtp-Source: APXvYqx4h2kkP2W2Ur/I01ZtsTIDr9SqkgTEZH7XMop7oVcUp8NW8cC2iNkp7AtYaSHTkZFMK+//3A==
X-Received: by 2002:a05:600c:22d1:: with SMTP id
 17mr3166153wmg.23.1579702995546; 
 Wed, 22 Jan 2020 06:23:15 -0800 (PST)
Received: from [148.251.42.114] ([2a01:4f8:201:9271::2])
 by smtp.gmail.com with ESMTPSA id q3sm4063850wmc.47.2020.01.22.06.23.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 06:23:15 -0800 (PST)
Message-ID: <5e285ad3.1c69fb81.9b294.0049@mx.google.com>
Date: Wed, 22 Jan 2020 06:23:15 -0800 (PST)
MIME-Version: 1.0
X-Kernelci-Branch: for-kernelci
X-Kernelci-Tree: arm64
X-Kernelci-Report-Type: boot
X-Kernelci-Kernel: v5.5-rc7-77-gae2b4b8eca96
Subject: arm64/for-kernelci boot: 23 boots: 0 failed,
 23 passed (v5.5-rc7-77-gae2b4b8eca96)
To: will@kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
From: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_062321_224509_C0B2D7E3 
X-CRM114-Status: UNSURE (   3.22  )
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

arm64/for-kernelci boot: 23 boots: 0 failed, 23 passed (v5.5-rc7-77-gae2b4b8eca96)

Full Boot Summary: https://kernelci.org/boot/all/job/arm64/branch/for-kernelci/kernel/v5.5-rc7-77-gae2b4b8eca96/
Full Build Summary: https://kernelci.org/build/arm64/branch/for-kernelci/kernel/v5.5-rc7-77-gae2b4b8eca96/

Tree: arm64
Branch: for-kernelci
Git Describe: v5.5-rc7-77-gae2b4b8eca96
Git Commit: ae2b4b8eca96d473698cde211897e6dc4ce33fc7
Git URL: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
Tested: 23 unique boards, 7 SoC families, 1 build out of 3

---
For more info write to <info@kernelci.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
