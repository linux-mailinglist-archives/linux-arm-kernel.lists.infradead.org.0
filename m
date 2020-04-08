Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5022E1A1F72
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 13:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p94ENiLCSG1UEcuMPVPMLRmP4dqpgVuqjzKz+4f1Ovs=; b=DyeadKqyWDvjwy
	0bUc3dLh6ia5G/ssAFFL0mob8oVLsMOPeRiZEmw+lS3FQkTEFXQrYC/7ElRgFtFWzQ0tAhhz2/0Ub
	BOJm3MLtkCn0N25fbi2AjhAmmySBKI4ixtN6tY06WnHJeaOt3AnBBcLQxnHxs0yvxM8rTJocvnMLp
	d+PMC0jVVD98MGjLG5lmsJNzHCaOR2TNhFYLJKbUxPH2MNeuSCAaFn8ftVdhPQKqvC/LJVJy2Jl43
	AaU+CLbx26H9rNzcsDhGjmw2KedGz66rSqABB7nbKJPJylNoCU/KbCE+lVrzShwKnZmdmG9Gn1RzM
	GZM+WnXPr+pTu0sZNmaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM8ZP-0001oA-VI; Wed, 08 Apr 2020 11:08:35 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM8ZE-0001l9-So
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 11:08:26 +0000
Received: by mail-wr1-x443.google.com with SMTP id h9so7324828wrc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 04:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uz8UY4eWPJrlC/KHAdRsMpZsS+aRJqI8gmWI20mDg+s=;
 b=fj4kbjPmHVx5Aq7luyrz5Ec2HyEpIV74NPD7KGBOSquGJHEe85K+/i+xc6OBHI/72N
 gZqESCnrYhdXbm5qLhael05Y+uXXjB5ynaZRM7facAZgFZ9hLVZU+8D7pznC0wLnWJ1l
 wBpFwJGlEbu2sy7ZUX8uF55hvdaPWv7rFCTJrmpLIRAYIRwFwHczLYnE/qXt2zSyHpxM
 NF/wxFpK58xXcqQOTo83kaRjnOUldA3ba4aJpSzGyXiM5Hjpi3HW3O+cSovFVrZvScIA
 aKnD0vdu+SPzC+oyAM8xB0P8K6wVr9MP/GezOAUCRVHfB2G/qpe+nhPGhte8Phhc03u5
 EJww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=uz8UY4eWPJrlC/KHAdRsMpZsS+aRJqI8gmWI20mDg+s=;
 b=UBle+Pl9N1G3azA8gtRwJO5D3iomC9QLBfto9eDJabKeS8P6cYK6vp4XCTzeSfVcK6
 qNgoA//Gkzw6OvkOfYNUu/N/vZ9PYXsSGP00R+3qT80822/LIkbK9OP264bUwj2XaCwA
 GlVIyUwyRc+aGRRZPskbwhMvWf3DX2M8RWUEM4n62kKoRJHCrW/MnNoEXhXL9yeICRbe
 3XTkAtLGhcLXgoql86vS8nw5fIPeE/IlKy/dazb9ZvF5LwF0vGHtwCpFrKqEaO2ZVjEP
 KURquJjeJQDcuM9VCCnqgl/bjO9kMVhlD5o4SUX64xxhoJSSOxSR5xlJqcc+vxaliJ+G
 dFXw==
X-Gm-Message-State: AGi0PubzteQY56qsPlOhDWPgoIkyXQo3OZ9sghfNvaD62Dchl7NphemM
 Y4YrUHUZdt2NbjGopcrVSVqF0g==
X-Google-Smtp-Source: APiQypIHRKuvNtlqBzAppetUZdYeMh5uW9upNPqzx1rWVmyvdyQVhoEmPglxFVAPk23/+WwHIT1oGQ==
X-Received: by 2002:adf:db0a:: with SMTP id s10mr7916205wri.361.1586344103363; 
 Wed, 08 Apr 2020 04:08:23 -0700 (PDT)
Received: from localhost.localdomain ([37.120.50.78])
 by smtp.gmail.com with ESMTPSA id i8sm37596253wrb.41.2020.04.08.04.08.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 04:08:22 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Fabio Estevam <festevam@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Marco Felsch <m.felsch@pengutronix.de>,
 Tomasz Figa <tfiga@chromium.org>, Maxime Ripard <maxime@cerno.tech>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 0/3] media: ov8856: Add devicetree support
Date: Wed,  8 Apr 2020 13:08:13 +0200
Message-Id: <20200408110816.2712841-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_040825_450390_ED482C4C 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Robert Foss <robert.foss@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds devicetree support to the ov8856 driver.
In order to to aid debugging and enable future sensor
modes to be supported, module revision detection is also added.


Dongchun Zhu (1):
  media: dt-bindings: ov8856: Document YAML bindings

Robert Foss (2):
  media: ov8856: Add devicetree support
  media: ov8856: Implement sensor module revision identification

 .../devicetree/bindings/media/i2c/ov8856.yaml | 143 +++++++++++++
 MAINTAINERS                                   |   1 +
 drivers/media/i2c/ov8856.c                    | 196 ++++++++++++++++--
 3 files changed, 325 insertions(+), 15 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.yaml

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
