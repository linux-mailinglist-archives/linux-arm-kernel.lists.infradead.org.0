Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86625A73A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 21:26:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=J2aB4BYKVsFXJZSuOMzOPZuwo2Ih8H6/I0R5xyOL5a8=; b=qbu
	TZ5g1xPENEy6t8Z+22dLqSFQrnrjk7x2w8VZ6VM2jYcb+oEH+utJ2CfZSxJ9WpIhrA0700pEiWpe7
	N4sF9HrgOTN1mJ49xQ9krV2LSKqUmIl+JJmS2d086ei0WNrP6rtRrYgxVIFyOF8HRIbQBGQgFvF17
	+W58NAJf4c62FqwqHKL9okU0BncjoQUbwvLOraN+wBgulZw5dXpGhM8C3Ma2GxmCsIvyJaKRHrAJz
	whmeuBsxhFxCASaNEOUm9ojMGY0qMGqzNM1uK/vSxCRYEgLQ4oOQu6sIqby+Epjy4SbfMbKGfuBSs
	P5rsFrJkdUi+7jX5b9bI3FMXJdi+PJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ERy-0000Yu-Ee; Tue, 03 Sep 2019 19:26:46 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ERl-0000Xw-UK
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 19:26:35 +0000
Received: by mail-wr1-x443.google.com with SMTP id l11so9869361wrx.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 12:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=X7LOfbEzmxWDRUYRuEzBuTJ6VKUzfdWfj/jsTb2hBhE=;
 b=P4ycrKz77LO/F8JLYcANp/4uFdyCVH35SV39HLLI4aQ3wyNOyYJJPpwocZRengbG8e
 H7lY+5TC0ybiVCBVPoTp3Hh+V2gr+/D9DibMtN1S/5N08F8Y/nndU5cclOH6rtBmYtsJ
 RGZol+xKNhXWWIG60neQghT6vHrdmAW/oJp0cy+2PxP/BG+8Zqblm+8E/wUJ46n57WZ+
 BKQy3DGy4k+koJCbbvpw/PveLkeZ7OfISrVi+hAHD2p9iccitj3Ek+8x94hv4a0KHxcD
 jQriZeP0mCNPbWkR7YCmrwoHXn7P6k4FSLaKqlwMVvF/tiCkyfMIQY7WWttIuUsMZJ7J
 iORw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=X7LOfbEzmxWDRUYRuEzBuTJ6VKUzfdWfj/jsTb2hBhE=;
 b=uGBp7WUY2To2SQcAlSf4LWcycaTzkC2oScjFXI77aitpcwih78LNWf+Ld9kDxK4voJ
 gW8zsBg6Hlk+l6Daf0CYIg9HU8X5UZYsg1fh2fQEqhNgAReVRp8ti6Irr7b7JWGyy9PI
 GjdgDmrcWKKWgbSejUE3X8Uv9l03f3s/YnOw12Df8/ejxTsq/37BjoZNHG25/LPcnfse
 LzQ+sYZXe64fatki2p5eXUotVHtmfEOdTU3TtA1lvK+QDHia6YrXfQXaUVgiFEgVdoQQ
 NY3izpsN6PA7hiUYqK3/GtR/dZuhI4TtBuG2vEVm+SwnSsVwubG8D0F1XGZg+2OJyh8A
 vECQ==
X-Gm-Message-State: APjAAAWemQNFPvbLUIPQoPwoAMuqXBs6+iiSqyo1DkNw+8GoGxQj0Bv/
 XW8RCDmCXlQ29znC1S3DGQJqM3H6ht4xww==
X-Google-Smtp-Source: APXvYqwhKx+lvSTr6idloMJNUmzIe0WiaLfN1tBr5HnJNiXSV+DK7lzPC4Qn3TlmvpseiD9C7XQHUQ==
X-Received: by 2002:a5d:574c:: with SMTP id q12mr16298520wrw.69.1567538792400; 
 Tue, 03 Sep 2019 12:26:32 -0700 (PDT)
Received: from localhost.localdomain ([95.147.198.36])
 by smtp.gmail.com with ESMTPSA id b184sm473895wmg.47.2019.09.03.12.26.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 12:26:31 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: soc@kernel.org
Subject: [PATCH 1/3] arm64: defconfig: Enable Qualcomm GENI based I2C
 controller
Date: Tue,  3 Sep 2019 20:26:23 +0100
Message-Id: <20190903192625.14775-1-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_122634_042203_B6A8CE58 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
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
