Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9022A573E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:07:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kRDHtegGopN4A47sJ5vXh3X/fbyrAuQMBnIFsQWWyr4=; b=VRT
	rKhiCAnoUPPmvevnikHqpcdoqyX5op3dsrnhqAJYV6x/y08Bk98dLOMHbWGmA+cWkLZScYYUHMW1i
	B2ORLhLq7IrzwrfxinTQ4t5xlI3FtH0gam8hl+Fuh4E4L52NduzniE6obtpCcKDvxo+FblHv2NdNa
	2kTQCGyeXGL59a4Q18EQd1NE6Xi/MMoc4UkNgV3CRNkqWxDMBqOwLG8k3RqtyJXZ7/g5CBLl6OCKt
	8Fl9GWzKcEwarhvuSCcZU5YrKLVh1vfiX2BXy3LNLV+xZDkThOWt0clBaRJKe8Ncv/TSkDRsseGft
	yo1PvFRT8HZ2LAoXQsHpqdlegqrQQyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4m3b-0005tv-5i; Mon, 02 Sep 2019 13:07:43 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4m3N-0005s6-17
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 13:07:30 +0000
Received: by mail-wm1-x344.google.com with SMTP id c10so2618873wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 06:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=rsozEf7LzXTyUNJhzuuHzBFC5HEt2b+uTwoXpDRJPPQ=;
 b=UXnIW/gi4ourEdlpXtCIx1S1FdKJcFcQnM7bu2ySM1BS08gggZ9EP6PkB7Hlmo094A
 R8yfJqlI0EUBa4wwuJYf3VfYqjWP8naYIs7CwbaJ47VhuqSHehwPBBCboj8KU25mTD0w
 R7n9mX51/1VCrBPqnSo9HGSeKlgIWBhN6NUw2Ahm1iSqNp7ussbRoSozB2hb8DPykHmb
 9kKwvikt9bSwwk524bOwBpIeQUfW6XMZgAUjshEWjh+7lm2ndr4j+NAzVBx8KsKxosxT
 mEG8a0HPEW5tEzdsQl29Hew92Zg5HKc1uppQvAjC/A1oG6Ul3JxEjIavbmjEVYF1euxk
 f4Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rsozEf7LzXTyUNJhzuuHzBFC5HEt2b+uTwoXpDRJPPQ=;
 b=mbKChvI92397hqShgHyKjmsTGcInDYYS5sbZbVtTbagdhcR7yOA9AZ4UWXZKSFoa/p
 79R4BMAqlI8gWJZJbL3nPpSE5V1+2BvpHKFNTH7UrXJb2fBHrc/i44qMMks1FTu9qfdT
 L9L1lD6IwD87l1h7avXDYmqRuCqCdfBT4WDVyQdJ+ZJDVP3zYbvIsB2Sdndfr1JJtAhr
 sQ9DVi0tMB8okTbwynr+orOuvA2OL70cSG/CeouKoCLNPHBYBqbFrzXvXrOX4W4gHK0q
 rzMpk1gvIdJCAnG4zM8nim4JZ9AhXtI/YQKKv3gdHAfP8CTtfbhboRNLDN3HOuZOsqtN
 ggPw==
X-Gm-Message-State: APjAAAUg+qKgd87Rmn0BIlv+79cbprYmQFXeFouQ01Ns8MnG6bQK9LyF
 +uxXbxMqKelBdQkSb4mj5MPrJg==
X-Google-Smtp-Source: APXvYqz/ztCgmeIEp/4+hjdqXQXltGXofSvsJ49jHcYPf0MoF928UaMsVWrnbu+vkyw1bSoRiYE2Jw==
X-Received: by 2002:a7b:c752:: with SMTP id w18mr4172216wmk.63.1567429647185; 
 Mon, 02 Sep 2019 06:07:27 -0700 (PDT)
Received: from localhost.localdomain ([95.147.198.93])
 by smtp.gmail.com with ESMTPSA id d28sm12352030wrb.95.2019.09.02.06.07.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 06:07:26 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: catalin.marinas@arm.com, will@kernel.org, bjorn.andersson@linaro.org,
 olof@lixom.net, arnd@arndb.de
Subject: [PATCH 1/3] arm64: defconfig: Enable Qualcomm GENI based I2C
 controller
Date: Mon,  2 Sep 2019 14:07:22 +0100
Message-Id: <20190902130724.12030-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_060729_073643_A123022F 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

Tested on the Lenovo Yoga C630 where this patch enables the
keyboard, touchpad and touchscreen.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index facf19cc275d..0fe943ac53b5 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -366,6 +366,7 @@ CONFIG_I2C_IMX_LPI2C=y
 CONFIG_I2C_MESON=y
 CONFIG_I2C_MV64XXX=y
 CONFIG_I2C_PXA=y
+CONFIG_I2C_QCOM_GENI=m
 CONFIG_I2C_QUP=y
 CONFIG_I2C_RK3X=y
 CONFIG_I2C_SH_MOBILE=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
