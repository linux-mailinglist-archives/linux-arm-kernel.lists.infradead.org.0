Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3401BA509
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 15:42:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9r7tUE1wGDjxcVmVhPqahILaZF+CnrJtq8jI41mWpY=; b=jXqxXHY8boe1xS
	rHoxiLR2kWn0pwXcEuwO1Yby3lNc0uCWopHxB2xLXX3P2WSZHGNMPJVvwsvel6g8cfMJkwszPlABn
	z1a96VwZtPY7da6hKB38fUFugFPm5BfcKaZ9SqU40JCKdAvYUAYZtPITrVZXVKAkDL4uP4y/9TVqa
	Bgmci8dmFUjvM5Djmm/mC6FW5/aXcfmJdH4DNEnUhSRlqQ4RNCjsQOntXrsx5VOGlATr5pTF1QxZx
	3UD/+tzwqWh7dW2RapOPLqhKPW4RLrM94lweHEX/OtWvMumfeJ9+8qvWbdzOhchD6RinT6nFLAlD6
	Dk8yfqRgbtrwQZcyH/mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT41E-0004uk-SH; Mon, 27 Apr 2020 13:41:56 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT40A-0003xO-MY
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 13:40:53 +0000
Received: by mail-wr1-x444.google.com with SMTP id i10so20590883wrv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 06:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HsHK9y0GL9/8Kp1lq4dl22la5baTSZpqCWLJ4R7b1d8=;
 b=bvNNv/coGQwtz6bglmhoEFGQeNrnsBIaXBjjnub6HRiiFqVJHHcf3srmeXdkOJqFgv
 vNa3kK4G6apoNQENR6qz/uPwIKBA90ZJF6/la9vYinvJZdHZR2O/Xv8riO4Sl0HfWyki
 M/IQFDGv9e5zZ1u8gR8PxQvoC28Mshm/gtL1N9200B7lw1pxVumGDsI8JXz+bCVhWhpL
 TH6gs3LiW7Txlk9o4e98JprWUIimun7eSfb7iB5xNWNpJFGCzKLh8T3qwrufQHH8GtkK
 eq4EJkuM/0CWWCN9GWqZp1B9rz6WqDl2JbW9iRA8Pw55iHyRbBS5phWBoYfdt5Gpy8Ei
 0DOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HsHK9y0GL9/8Kp1lq4dl22la5baTSZpqCWLJ4R7b1d8=;
 b=gyfmrcGXoxCN4vlDggNPHHnOWu9IwJY81wG6+W6F+5ehS03vpofemj3eiE5lqlQG2d
 7P9cl052xuK9kGtLbXxK9s/+CxrUV6rwndafyLssxnfgu47taHqAqo2UQz/vn2vWsLlF
 GT94PVFuNCrAdl1rMYY8dMHHnVFTFzEE/rKvfI71eSB6T2yOX2cwAYUjIE7kRJW8f04L
 MrispplGugHMx9Mn73jVGMl9l1NU5lKX/3oEIMbbCq4HlWpsJnByxSGU6DuMPfC78T4P
 +PUtcnfkzuyMnVv+mA1BthabI9hxuGqogc4kcKWO+YuvikcZz3HgnO7awd2nMdw4eyIV
 5vrA==
X-Gm-Message-State: AGi0PuYovqRw9YcqWO5SeOLAf0gm0rMChGvToDqHdNEkfTdr0hAl/F83
 C8LjmcKVrLgWCR3C0yNBJI0=
X-Google-Smtp-Source: APiQypIiO4KsC066dkupF2hUWSNHdQ/YFtWDO4yT2K2Eh/66bW28IM5dPBE4nk0mIdNwY3gDWHuxQw==
X-Received: by 2002:a5d:5651:: with SMTP id j17mr26810575wrw.406.1587994849457; 
 Mon, 27 Apr 2020 06:40:49 -0700 (PDT)
Received: from linuxdev2.toradex.int (31-10-206-124.static.upc.ch.
 [31.10.206.124])
 by smtp.gmail.com with ESMTPSA id g186sm16290640wme.7.2020.04.27.06.40.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 06:40:48 -0700 (PDT)
From: Max Krummenacher <max.oss.09@gmail.com>
X-Google-Original-From: Max Krummenacher <max.krummenacher@toradex.com>
To: Max Krummenacher <max.krummenacher@toradex.com>,
	soc@kernel.org
Subject: [PATCH v3 4/5] arm64: defconfig: add MEDIA_PLATFORM_SUPPORT
Date: Mon, 27 Apr 2020 15:40:02 +0200
Message-Id: <20200427134003.45188-5-max.krummenacher@toradex.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200427134003.45188-1-max.krummenacher@toradex.com>
References: <20200427134003.45188-1-max.krummenacher@toradex.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_064051_205252_8E4A003A 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [max.oss.09[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [max.oss.09[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Li Yang <leoyang.li@nxp.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 06b93644f4d1 ("media: Kconfig: add an option to filter in/out
platform drivers") adds a new Kconfig symbol which now hides drivers
currently enabled in the arm64 defconfig. Enable it to get those
drivers back.

Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>


---

Changes in v3:
- new patch: added 'arm64: defconfig: add MEDIA_PLATFORM_SUPPORT' now
  needed for some enabled drivers or these drivers will silently not
  be built.

Changes in v2: None

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index b8259814065dc..472aa82b9feee 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -569,6 +569,7 @@ CONFIG_MEDIA_DIGITAL_TV_SUPPORT=y
 CONFIG_MEDIA_SDR_SUPPORT=y
 CONFIG_MEDIA_CONTROLLER=y
 CONFIG_VIDEO_V4L2_SUBDEV_API=y
+CONFIG_MEDIA_PLATFORM_SUPPORT=y
 # CONFIG_DVB_NET is not set
 CONFIG_MEDIA_USB_SUPPORT=y
 CONFIG_USB_VIDEO_CLASS=m
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
