Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A14A5EC27
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 21:03:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0xG1lpTam6phiuQUk72mGAkhfNV2yLwL39fUImPqZlY=; b=dSGixqHAD9uq6vdKrzY6f2wpBo
	/nn4pL4etMHKO1CQZfGyar/+V2o0EFc/Wm+iMguK6MX2XYAQpIpD4ZrBkdV8MGpIgXEP2jFpntak1
	pudOkP4sDkk1Ms+G8ReAoJNcH39nswNcIhaRvKWXNWOY7UIF+Z29YaKKxmCUxnqyvk+SApHecV8P/
	dMdzcIGC2gmdNnqOrFhy8uRZgVaQHsnlD/ukNfAU5q6HfWbwspv150UcMiJj4rwud36HxiMAF99x6
	2KErdv7cHGYtvSZpgL//8pkmH/jiceQsHrJMkKvufHorSBFnQoUUcvbZPyXcZKBi7eLi7q9oivBYq
	FuBahWzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hikXr-0006vm-MT; Wed, 03 Jul 2019 19:03:55 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hikWy-0006O2-HT
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 19:03:02 +0000
Received: by mail-pf1-x441.google.com with SMTP id r1so1705591pfq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 12:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=x1DRYxM4S/B7SoxMDhNxSzKMNHFlAjuQUN144vOww2A=;
 b=EiT8BWbl+xHvb7JFvpcjaMBfzfBwNgp5IyVQl4JjzJ7b6sxwpmksLvde9vYcrpQreD
 sRJqJbjhYOYJBEZompfAK7sofYrjSgbr3fdLQJ2n4MyEJ/tNP4N8IInWdCHMZ7wjDu6g
 ofrPqbN6sZFxyvHDXBpRnX31lju59FJeiu5ao9NWIoOajR3+rnbMoO9tb6S1+cVNT5WK
 HOUWSNdjAjNLEk8ssEXpuoRe33pQouijP6A8ueGkJJ7KeJNAmfDcfhq3SmmrXvFM0rIE
 MWHD64RlAdRvOL/6ylNB8a9b9WZENN2Zn6wKnLQjbEys6SQJHq03eJP2+jKrOWhuJcPU
 MAdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=x1DRYxM4S/B7SoxMDhNxSzKMNHFlAjuQUN144vOww2A=;
 b=JxG7LNk1VfrXV+XVtawD2XcGa39zExa+fj2x06Ko1K0cx/eLmJrQl7MI8oUUCL5Z9Y
 wpGQQ7Fs+AdfC2Wn9FUH64Qy5nAtwc8M3BiYjMA9Ms9XC+ZxkFtRLZSZ8cAljqn67msS
 uMEIwox0X03TYjblH3UztZaglBiMidPm7qW7N0W5RGG4wEs8AEchbeHZNSED28KeIGNe
 +znuJy0JGs17ysebZeSTCv93cwrlblkccRJafkajfMWr589e0kMKmi2F47PbnD8xRS7E
 UYIqaHVrfGU/olmDk/Et5rVIx/D6H7+QDiCrTtHkR8GE/t9ljN5tLLrqtLGpJfCvs39E
 /zGg==
X-Gm-Message-State: APjAAAW0w0Y9YPPk5uOoLw45B0BsUqHM2/V5UMO2TmxYN9GdBTG9FIs7
 U3HWxW/2DJ5zs2e4WXlMpjyX
X-Google-Smtp-Source: APXvYqy8mtloT40dRnY/gaVB9FpkscYftIb1iPR1fDiwsvm8UFmgRrDb0Wh22kBTCyQyQyviBDgDXw==
X-Received: by 2002:a63:d04e:: with SMTP id s14mr13153497pgi.189.1562180579800; 
 Wed, 03 Jul 2019 12:02:59 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:117:d72f:1d34:d0bb:bb4e:3065])
 by smtp.gmail.com with ESMTPSA id j14sm3631503pfn.120.2019.07.03.12.02.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 12:02:59 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	robh+dt@kernel.org
Subject: [PATCH 3/3] MAINTAINERS: Add entry for IMX290 CMOS image sensor driver
Date: Thu,  4 Jul 2019 00:32:30 +0530
Message-Id: <20190703190230.12392-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190703190230.12392-1-manivannan.sadhasivam@linaro.org>
References: <20190703190230.12392-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_120300_680868_AB1C543A 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add MAINTAINERS entry for Sony IMX290 CMOS image sensor driver.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index d0ed735994a5..27e4c1f57b61 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14669,6 +14669,14 @@ S:	Maintained
 F:	drivers/media/i2c/imx274.c
 F:	Documentation/devicetree/bindings/media/i2c/imx274.txt
 
+SONY IMX290 SENSOR DRIVER
+M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+L:	linux-media@vger.kernel.org
+T:	git git://linuxtv.org/media_tree.git
+S:	Maintained
+F:	drivers/media/i2c/imx290.c
+F:	Documentation/devicetree/bindings/media/i2c/imx290.txt
+
 SONY IMX319 SENSOR DRIVER
 M:	Bingbu Cao <bingbu.cao@intel.com>
 L:	linux-media@vger.kernel.org
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
