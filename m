Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3972883260
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 15:10:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0xG1lpTam6phiuQUk72mGAkhfNV2yLwL39fUImPqZlY=; b=BtZP0fzzd5Wlw7pBNCwFWVXx1D
	jnyFKrrYlbYx2WHwjQ6FOt+osZCNC6E9iNT0JlxOMXEwqxWI2S1r9viVmwr8OYQjhkumAlX+/4o71
	J2AqOri3exIVJRfvWkVHDzeXeOtMjdHj92OGyyHtg+lrPSnMNX0tB2HXVTXuUjfNNhDYHGVkQ4Igp
	eKshPe18MuCPEC5um1efLWfBhio/+MJrRjG7VpmOWwXVel8CTsxz8a2C9Gh4zPgkAsaM9sYO2hiU9
	2UTWFN1yf6lLMTj1/6cKm1jY5Z/p/uLwHZTVRyTCk0v4pEfw3/H799qMJjkeKnyrfXTmFK6nQRimY
	Oge6rQQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huzEs-0004rB-Qu; Tue, 06 Aug 2019 13:10:54 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huzE9-0003kL-K9
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 13:10:11 +0000
Received: by mail-pl1-x643.google.com with SMTP id 4so30864070pld.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 06:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=x1DRYxM4S/B7SoxMDhNxSzKMNHFlAjuQUN144vOww2A=;
 b=oUkCdFiaTmZ8YWhjKmmX9kta69kGgzWITjsFkueRoaps7eZWMWSw47AOaqC0Pnrmvh
 CvUvtUFYz7JX+4oGPuvOSAIf8R4F9M7yBpZJGKc7DJSJbWCPyjyP4dqe9y+ImdYq5+1c
 CAAQ4HwQZsme5eotFfJV0nlXHowMbBG9WrhEQpAaSDELEB1NuqRh5SIrYH1+V9ZlJv9E
 BQhbdSuje1UEGomUVZy3sBoreZTo0n1gqY3KRSzjVtdaff39gmoTvm4iBVYe2/Ysef3b
 zcPbPDHCaFwcJ5tYfyV99VPOF8pTOYBRSDS842MqlLLctrPytfmbLRIgi2XOXkL8Lcbr
 qD6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=x1DRYxM4S/B7SoxMDhNxSzKMNHFlAjuQUN144vOww2A=;
 b=KlUwtokp5Ue22X29f5QE3IdtmoWJqMpGlGv5KNMMzgLjxDwm0FEL6ijcoybZQoPiR6
 6VULs+4/okvGn0JkTayvkn5n4apf1jYXMjNgNY9KSexYq/H4w4WWOT6WiRoWDyKESJL6
 pRCzO/8t+s8Uw8M6CyoOyEaDhX2oXJHphKE4JV4VFosr5wniX+yAprQ8AQppybulo/f9
 tFKwPPbAhWWT9DEibza9g7E/AttuS04c4vKy0pR875PWRXeZPxZuk1FDtvs/iMs8L9cg
 ibD6MjfR0sFHp95IZcOCPn4pIE5HUtMQr6YL7IarRgfJDuLYjIyKrk/Nh3LmWc0M2/Nb
 oGXw==
X-Gm-Message-State: APjAAAVngN6CoxZbqUdoQkUAhIeztbqGiVtCp5Jt8ADABwYKRH1sOHDE
 KUpVyC2E1s/x3sHsxaTFdlQA
X-Google-Smtp-Source: APXvYqyqBD0hvTStxFBTJ8PSsP8JsP8y9JbdoOz6Z54aeKGRi1OhfciLK1A+yM7BTbCaJjLifJASfA==
X-Received: by 2002:a17:902:4222:: with SMTP id
 g31mr3254070pld.41.1565097006526; 
 Tue, 06 Aug 2019 06:10:06 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7180:928a:153d:caa0:477e:f9fd])
 by smtp.gmail.com with ESMTPSA id v8sm73715371pgs.82.2019.08.06.06.10.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 06:10:05 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org,
	robh+dt@kernel.org
Subject: [PATCH v2 3/3] MAINTAINERS: Add entry for IMX290 CMOS image sensor
 driver
Date: Tue,  6 Aug 2019 18:39:38 +0530
Message-Id: <20190806130938.19916-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806130938.19916-1-manivannan.sadhasivam@linaro.org>
References: <20190806130938.19916-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_061009_688191_14D2C45D 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
