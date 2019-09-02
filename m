Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B747A5747
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:08:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1RgssqYrC+4T7xk5HhRut5ehDEobkr5NMNbagZVYi4g=; b=j0CwZ2LEHWeEdS8UkpPlq99XCa
	nu/BU8hQ08Pvhtt3KiHmZkhGr1RZBee1wrtRA6lmkBPvmE2lIm1SPki9txuYxy07uENsu4ku43QtP
	oSvdA4qyyONOoyKmB3+zMm/SLCJNmgjhByVL0A+a9iIMv2WvIaAOM4KxobDayw/MWY7QsvBfF6i3u
	jdPT0WMn14iyS7Inbv6/DQrwq3yDflBj7vRmqghYXF9xwmUtHBRYGjWRCQcV9KGYlOnuGt5uqRuEr
	WQWZPFelzxT2GctbCuM9eVXEfKrthm9DxqaEXpFgQ4P/ZzoYXYh6XWzW7VpsLy+gCLfSEBkDb82yv
	CVN0zQrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4m45-0006Jy-Ov; Mon, 02 Sep 2019 13:08:13 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4m3P-0005sf-2o
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 13:07:32 +0000
Received: by mail-wr1-x443.google.com with SMTP id u16so13993339wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 06:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=g8Q8qWQfrWkSBZBL0ZC4qSYWSksz/bKYB7eibpEbpjE=;
 b=g3ZZoAoNupIgQJ7LwycZYaI61Y+HZoFJSbt007WbeCls8jor1CkG0XdK8NnFLrxF5J
 r4aSSZjAQFiHEhy4Rb+JiMH5qGvtD4FjCv8Uyenek53GZObk480HmrJb57Pa7Dm6B6J7
 p3i91ZUB+PDaKWazCJl93jRt3XrIifp8yYf3jFvi0EBebWm7+t3BAbP+jeucIIqhSeGf
 jn9mb3QMHHMDZy14U0iMPUKx1O1I+l4r+MMd2rxqHeIVOYmIce6Gn9MaFfl1lQUUZB1I
 YAh03QAu5zHPyC5T/xfc5075QgWS5e8xVji/K6nvK+LXcKcKyT2hw0cOTsv2ndNFSoid
 2FZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=g8Q8qWQfrWkSBZBL0ZC4qSYWSksz/bKYB7eibpEbpjE=;
 b=HlyZkKVvqcu0U9wHwZEBcUSVOAR/wIadEdDL+Y8xy/fmNgNl6svjEfs8oquTcUWclk
 mQ2m3EVOsEqZuNAxNPYuAUh4xEHV4mvq3Ku2bTZPzQfGouVmikZrlWMx2HWRHPqY0dxv
 jYUPqurqtcU2JcZ7t8fxmw16v7oY3JsBQLZRZeh4fp9fvno0xLWUxDyscy2y13aczgn3
 rXlabaRChnEPLteXl3hbGLGmp5oQ8vF1s6aTRMBD7torJb8TZcUSEf6olZtb+bXMHN3S
 O9zIp91YhiYRFuLK1AUio21niyv9sPXU7lfYM3R50zz3XOaQ+vv1rjun81d8xrQuK70k
 4dHQ==
X-Gm-Message-State: APjAAAU7Wlehdp5crSYJdAJVwDJ33F+gJtcm4GYiKzISvbBlF0UxEIwE
 eRjmoH5OGaxTgZCm9fRvIO8AHA==
X-Google-Smtp-Source: APXvYqyVjbfK53qao6AkqFDw56Vfssqbbu6Wzur1UnzFue0+wk/FuBHP3vupfwTKn7EKra2/cgVRow==
X-Received: by 2002:a5d:6043:: with SMTP id j3mr3124284wrt.337.1567429649239; 
 Mon, 02 Sep 2019 06:07:29 -0700 (PDT)
Received: from localhost.localdomain ([95.147.198.93])
 by smtp.gmail.com with ESMTPSA id d28sm12352030wrb.95.2019.09.02.06.07.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 06:07:28 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: catalin.marinas@arm.com, will@kernel.org, bjorn.andersson@linaro.org,
 olof@lixom.net, arnd@arndb.de
Subject: [PATCH 3/3] arm64: defconfig: Enable Qualcomm QUSB2 PHY
Date: Mon,  2 Sep 2019 14:07:24 +0100
Message-Id: <20190902130724.12030-3-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190902130724.12030-1-lee.jones@linaro.org>
References: <20190902130724.12030-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_060731_120984_93ED568F 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tested on the Lenovo Yoga C630 where this patch enables USB.
Without it USB devices are not enumerated.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index af7ca722b519..a94d002182ee 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -770,6 +770,7 @@ CONFIG_PHY_HISTB_COMBPHY=y
 CONFIG_PHY_HISI_INNO_USB2=y
 CONFIG_PHY_MVEBU_CP110_COMPHY=y
 CONFIG_PHY_QCOM_QMP=m
+CONFIG_PHY_QCOM_QUSB2=m
 CONFIG_PHY_QCOM_USB_HS=y
 CONFIG_PHY_RCAR_GEN3_PCIE=y
 CONFIG_PHY_RCAR_GEN3_USB2=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
