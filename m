Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB09BFA1E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 21:32:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CEf3+xEGJxZ3Mo265wUKTeXSCwIrzHPe4MVJZPP36fw=; b=euMG/I6+0ht9AK
	K5yvokq/dIPxj3qeU4Id+1YziAgkojrpknRsBTzzLsw1D81CUmqHB5cEk/8MOGlFLLeDevwV2l7RT
	ypbhh5zfuLRrrgVpXS7iVLCZ8d4vSloRcyb3gQZ5RgacYtxHuldn4KyN9eVJa9Wx8r3p8gnhskus4
	Z+u8FTIB8SIdocMqpR71E6/dQcZ+eW+TwpcE7YXG1xtckdDeuVtJVpkFP+DwxBr776jmgzKbppAOL
	f7ETtwyJGuUkyL14WUD62jheTjPfosFtKja7BdQQf6SnG6TRVLgKr5M4W0HSWdFO0NICsOLs0Qb3l
	1CECBfrx6ssIkKTzka3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDZVA-0003xd-PR; Thu, 26 Sep 2019 19:32:32 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDZTg-00024x-1Z
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 19:31:01 +0000
Received: by mail-lf1-x144.google.com with SMTP id w6so85677lfl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 12:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SpnXCf/HybG5XSeKNp7kzvBJ50vY8go7MkgfgdvaShI=;
 b=XZ0S5O0uQTQMwhxLL41DSMfikWoJ+Zs42XaIt4vcp39qAmylrjIhHttHHZGt62Lqgq
 j6lJpsyWPyjhTDRoHvsqWOSxG1WlC1O4wRAdo3NpVTCkaVdKfPNaWLZX2RPryUn8qFgX
 +8FwsF/AoziJtSfORlEBtiaIC2juWAbFjpBnMMmHYQB9e3y40sHrJOCXetMx9ZaJAiFF
 H2W8BaTwHMBeq9ss2Fy1pwrGIlWyY0GoudPK30zMzvUDy/YDDq2+v+ga/B2PTAwvK+RN
 Tz84vTK2MoC+Eky1RsdeBl3pf3EBoWWAln12R2Mui8mf7UyUw74OmamRhqz/I6W91imL
 axHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SpnXCf/HybG5XSeKNp7kzvBJ50vY8go7MkgfgdvaShI=;
 b=YLKvUESub6nvcPed0JpLny/AywhCjpSaTCO1WLkdSURbH0lEspCgFa7Xu4vwrnDwwg
 GmaApknl8Tezv917nKDdndMo7Wbh5CG3UJ474N4eoS8zQGYACANtMZs2zRYGkAcs2Irl
 Th6maWMsuPx3Az+lL//5s4vzqOOOGS1XNLHmUVMxeLYDujcjKMTbQo0zk9rgQqeN1THd
 lFfej4RqqO4bmBItNJDK9MVY78vUWFP4QDiArYcQdkyQblpXWPs3fq9x3nwb46F6ShD+
 YpQ9cnqhvm0gXZxKVkU09yj+tYMMAwz4tMFnvxOYeD3FXLWPrEURX/sraqiAjqTa5ODN
 VUQA==
X-Gm-Message-State: APjAAAUar1eViwADzSVQyb9iuaAtOYUMpIVwgL26MXIlEo+i+IljVmQN
 7ud1gUmI+zniSdoNEXIFyKguUg==
X-Google-Smtp-Source: APXvYqxy2JdP/F9JgNbwliZiSpfLsMTo3iNTUmowmblH/PR+XD9B+IA1+fyEmeXbFWB1sf1pT34eUg==
X-Received: by 2002:ac2:5633:: with SMTP id b19mr112924lff.103.1569526258319; 
 Thu, 26 Sep 2019 12:30:58 -0700 (PDT)
Received: from localhost (c-413e70d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.62.65])
 by smtp.gmail.com with ESMTPSA id t16sm31584lfp.38.2019.09.26.12.30.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 12:30:57 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: catalin.marinas@arm.com,
	will@kernel.org
Subject: [PATCH] arm64: configs: defconfig: remove unneeded fragments
Date: Thu, 26 Sep 2019 21:30:28 +0200
Message-Id: <20190926193030.5843-3-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190926193030.5843-1-anders.roxell@linaro.org>
References: <20190926193030.5843-1-anders.roxell@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_123100_212630_3A99B289 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anders Roxell <anders.roxell@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 833c97254724 ("arm64: defconfig: Enable DRM DU and V4L2 FCP + VSP
modules") ment to enable the camera framework and drivers but enabled a
bit more.

Since we don't have any drivers for MEDIA_ANALOG_TV_SUPPORT or
MEDIA_DIGITAL_TV_SUPPORT theres no meaning to enable the framework to
the defconfig.

Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 arch/arm64/configs/defconfig | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 8e05c39eab08..56dc7488ff36 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -501,11 +501,8 @@ CONFIG_IR_MESON=m
 CONFIG_IR_SUNXI=m
 CONFIG_MEDIA_SUPPORT=m
 CONFIG_MEDIA_CAMERA_SUPPORT=y
-CONFIG_MEDIA_ANALOG_TV_SUPPORT=y
-CONFIG_MEDIA_DIGITAL_TV_SUPPORT=y
 CONFIG_MEDIA_CONTROLLER=y
 CONFIG_VIDEO_V4L2_SUBDEV_API=y
-# CONFIG_DVB_NET is not set
 CONFIG_MEDIA_USB_SUPPORT=y
 CONFIG_USB_VIDEO_CLASS=m
 CONFIG_V4L_PLATFORM_DRIVERS=y
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
