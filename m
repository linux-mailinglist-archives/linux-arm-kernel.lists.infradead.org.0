Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DC2199AF6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:08:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0aLGullafw6jp0rn65xIxK85qvWtFfQoA6VEhFmVG+M=; b=aWmCQksoGq3G6W
	YM+bade3MMoZpMjILU378XX4kz8IcY8Gbf6euBBv7m15oSiM04shpmQIh/ndCkCbyZwUOjpRtVrK6
	cfYjlCtMRoI1CMl8uLdPypU3hpn/uaQS3c8PLKem8ryoW3awK7T3N24tDN8dMSeXy/tKni9vTU/7w
	GGuE3+7muEG2ADrgERkAZlLw3q9J5C1Ga8RuDATWgnptpc7dRS2GyIkwaJZ7vVTPhbNgnvCXk+AK8
	MNMnDHQ9PFEHMP0L0mUUosh7Vdhejw/avoTR3/KgVQjkdBbfLm/ZEJo5Wc1ITQv1RvTxWqb5LALhC
	vfitqEawTUHoAzJskHzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJRF-0001E9-Cu; Tue, 31 Mar 2020 16:08:29 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJR5-0001Dh-5R
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 16:08:20 +0000
Received: by mail-ed1-x543.google.com with SMTP id i16so24842636edy.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 09:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oWqPN/2F35kUoboB7VuE68BOKEz/BXfljK/zGatyCzo=;
 b=CX6rpgNk5Dr3qKnrubMvK4q2UgrMeUkjr0E0F1JgHADGyPC55iYFRLqqwEoNKST6nU
 TpLcGrh+pmaxEVHOtDSD6OuZT/Ndnhg57uaHqlvXy4DomvQNq1AdGLybR7F1F9CJvUxk
 yA9hK1JEZDI/fRjyCLIUziE6uXDS1AYzE17wfcFI7hlEpU94InlVQbrE6W2sXLF1eGUw
 gNjpV8lWh5cdXoz8cPICBXHh+x7omJKnUJC80LxDenNWHvPHmlLlEG026qnejDduZWrG
 oJhe8g2MqDHIUyLNQudXifQmq1vvvFzwdtix95uSlvlOmhJC5tsXDCLfA5GOC+64IRmD
 dejA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oWqPN/2F35kUoboB7VuE68BOKEz/BXfljK/zGatyCzo=;
 b=PabKMkNYhfH4U5Pn545nE9YQN8XJB8/p5YqhbQn14A5gDclXQ7iTefAEoo5fPO2E7W
 YzF6beLN4aFq9cc2lC7/SKfndaHZA0lYR5LyLPRh2rIy2Tyk37mzWKMQ/FWUiyB39UHA
 qSKCUcOM/Tn+/9etnT+GVLgaPqESRlPbcuf5oMzvqI1/YsMT/d2SmuMgqJEvJK8rR1Zb
 UXW/r91nfTKmhQ8/SCyLPQobhSUXQ+V09Ypd2qx9iwNo1oY5WwHm/zTd0tvSvxRfnQtB
 36xhmc4ate7qurOwu5qmoJEy3Tf5H6fYfw3vr2w6Drlkv3WVDQYIHznYi/hPsJ8olkwW
 QtSQ==
X-Gm-Message-State: ANhLgQ29EokpGABl66FCFgNHmfaBn8gXLMg2eOf+C/lddC9nq+4hmnfN
 oXeMZn+5z4pN4tCvU34FrPJY4RJOyfw1lA==
X-Google-Smtp-Source: ADFU+vu4XlDHD+eAXmhnbIITSDymKAgWq0Yc108LTSVU+JOlZDZX5TChQouQWuBq86nDsCf9jJIwSg==
X-Received: by 2002:adf:e684:: with SMTP id r4mr20689718wrm.6.1585661635563;
 Tue, 31 Mar 2020 06:33:55 -0700 (PDT)
Received: from localhost.localdomain ([37.120.50.78])
 by smtp.gmail.com with ESMTPSA id 61sm28623081wrn.82.2020.03.31.06.33.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 06:33:54 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Fabio Estevam <festevam@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Tomasz Figa <tfiga@chromium.org>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/3] media: ov8856: Add devicetree support
Date: Tue, 31 Mar 2020 15:33:43 +0200
Message-Id: <20200331133346.372517-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_090819_202261_D395FF0F 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

 .../devicetree/bindings/media/i2c/ov8856.yaml | 150 ++++++++++++++
 MAINTAINERS                                   |   1 +
 drivers/media/i2c/ov8856.c                    | 192 ++++++++++++++++--
 3 files changed, 327 insertions(+), 16 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.yaml

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
