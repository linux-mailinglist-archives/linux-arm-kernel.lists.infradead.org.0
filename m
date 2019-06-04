Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5159234B66
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 17:03:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lxRcQBuTzyiSb/6F6WAoC+KPqyjBl687YqjXyf+MZRA=; b=e/T
	BseCiDPlRqxEG+AB6xBAshLHnReek5RXQMuv9mwyhgwOgfC2lCUTRy8HnBzsQuFxn3bikBj3CCIHm
	AvpCoWoXst3rMwSZJYdXrxWoRFdDx0x1ZltryRLqFmWH+0qpXjhdm1zPLhgxmwl6UMBybQS9A6Sxd
	dg/OjEWEKG+6aKKBOC+c9HsuK0DrzEzRjelShqElZf+PD59/sVEf1uub3aEkfNzmSOpMA2zJGz1MC
	vQJS3Dv8sp4bBIPau9XPbACJnqu6UtQN38vJOFQ79sE1Hhu8RvLKSE2zxkPxrOZpZbgIBFrWEP6lU
	YWyyGB07dyKSy/z2ZtRc+QXp8aLW0gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYAyW-00031c-9z; Tue, 04 Jun 2019 15:03:44 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAy2-00025e-5K
 for linux-arm-kernel@bombadil.infradead.org; Tue, 04 Jun 2019 15:03:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yt/EFsCTs+eDRjlI5s+86AEQql4J6OURFSWUEUgIwAY=; b=PMrh297b+xzW3tWChSGAMplz4
 tFYrdGq6RfL8p8QlPOwv19Jd3y9pDCqTx0tfAXYq3zb1xum8ttSw4rrkLs0MupBeDjxPjwhN02WmO
 2XOieAEAzkuvRCMMuTPuYziL0IpLQxR2e9QuUQ/FWIQWT/ZUfLNFX+077UR7mK+vFpB8NCz5Hr1kG
 r/NIh0N5U+1ndNfvqk5CyZygLE9cF+XcN3rAxB5jjM/g7HDmV/B1gBXJ1rntnfDy160bRPX8baHDY
 2fuhSwOKLJr7kHqWQ9jNG1hRlNAfUsxrEyYTYyYzh7f9Mi4tEbJcOussW0KmMpJ3eCcK1dXBiLFd6
 ZW2KXBFZQ==;
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAic-0008Og-6g
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 14:47:20 +0000
Received: by mail-wr1-x442.google.com with SMTP id n4so10885491wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 07:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=yt/EFsCTs+eDRjlI5s+86AEQql4J6OURFSWUEUgIwAY=;
 b=baN6M5vHHdMEdDHA0nFhNKLj1v4lrLz/nftyieuU/YsutbB14+ZqYNEpKCERpyYdyY
 KfEROAB6KrYiQaz93M0J8PVgz13m3NGtdNqWJ1xTE5o2foyUiaCSXV1JL/NRcBmGMvii
 Igmta3mK59BorfpKlfs37UGYDEGK5rp0n81uMXCIiOgan1fD60rzo4kR5YisoxmAWia6
 vzGYjx+CQtuzF1TmS9ujEEMpgUpHBYYjhhhq1ssiw9JXBe4+LuEAHms+mXr6Dm/R/pVW
 vXIpo/MBppn4+0+HVYXy4hCWQl4om89a3HrTgOGakjpMG6DfKaviPoF+h4o3KgzIkCQc
 FgLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=yt/EFsCTs+eDRjlI5s+86AEQql4J6OURFSWUEUgIwAY=;
 b=pdTXOwfVELg1fDshNwy6eKY+wK+eMOP/xLlJn29wgj5f5DjzDFpYTJwioBKcLz3PTG
 J42a1/Gq7ceB+BJs81DhVd3p+bxvdmuFoAGZ5U3qu5ADIWrTfeHBLhzQ53jrF+vGU5Zv
 kOb08t3d6YMCRXVQhbmK1pbWdeF+7k6i4v/dB8xnrfKbvJfyEL0SwA3LDQKU4ZD2q+G3
 VMPJE0eMnyGcAVXR0sYyF3UnUz5K8A2y6SVmyQRef+qWYOM17EVLIPKtbIsWkM0t+jkg
 qtxWh+/gFToTccOsVQPst7V9nglfaO6UVEHczjqjE5jzgQagU8D3FdOG1VnwSCIr6b1f
 Yk9w==
X-Gm-Message-State: APjAAAXxLZNB8fIXdRZO44ZXt1NdOK8CcYiPWIngGVCKVjTGmfcA4nY5
 luOY9cBeRlPtwc7LCKWiZnxyhQ==
X-Google-Smtp-Source: APXvYqyK0vyzpLP2eyzKVrPgI3zNMenfqmRUVBELbtN9DV8WNr9ZkE1mQYmA68w6uUDtIpRGyxFb0w==
X-Received: by 2002:adf:8bc5:: with SMTP id w5mr6899078wra.132.1559659636696; 
 Tue, 04 Jun 2019 07:47:16 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id v184sm3649639wme.10.2019.06.04.07.47.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 07:47:15 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: jic23@kernel.org,
	khilman@baylibre.com
Subject: [PATCH 0/3] Add support of New Amlogic temperature sensor for G12A
 SoCs
Date: Tue,  4 Jun 2019 16:47:11 +0200
Message-Id: <20190604144714.2009-1-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_154718_305703_B2F368BC 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchs series add support of New Amlogic temperature sensor.
This driver is based on IIO frameworks.
formulas and calibration values come from amlogic.

Dependencies :
- patch 2: temperature sensor clock are needed [1]

[1] https://lkml.kernel.org/r/20190412100221.26740-1-glaroque@baylibre.com

Guillaume La Roque (3):
  Documentation: dt-bindings: add the Amlogic Meson Temperature Sensor
  arm64: dts: meson: g12a: add temperature sensor node
  iio: temperature: add a driver for the temperature sensor found in
    Amlogic Meson G12 SoCs

 .../iio/temperature/amlogic,meson-tsensor.txt |  31 ++
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi   |  22 +
 drivers/iio/temperature/Kconfig               |  11 +
 drivers/iio/temperature/Makefile              |   1 +
 drivers/iio/temperature/meson_tsensor.c       | 416 ++++++++++++++++++
 5 files changed, 481 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/temperature/amlogic,meson-tsensor.txt
 create mode 100644 drivers/iio/temperature/meson_tsensor.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
