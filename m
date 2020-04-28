Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28AD31BC73F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 19:53:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1D5y8aSsfzE9BYjjXLUjJ5bwcGbvYmuT7yHeCG2ES3w=; b=hNmh+SOzgAAlRC
	j4dreq+pSZsNvsMAdG59kHabyFxiMjSQD6u+5kwzQLR00roTTxaQEyglq7fsVKULZo6RfuLV6829H
	zR8k49A4s4s0cQwzvkFlW6Jp2F+Gq86ZbNWQK09/b0Pju2OkDFNOAGgTEsYrY4ZZdv5RNfwNsxi98
	0F96/NK8m3lTpsxs2ObMXsbTEgQFSEpW421v2QLo8Zw8wDQoKfGXxhBL+3X6YDC16ySYziPan846a
	4ywt8D0nOjM9bz19QTYHB0kUCxxD1Wqq/DOibTC+BlXD+1QcY7xcZrBmPWqJBYDPSvxG40k0eoClT
	DnX0vvrwFtksbQLSXEtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTUQ0-0000YP-0A; Tue, 28 Apr 2020 17:53:16 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTUPp-0000XW-DF
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 17:53:07 +0000
Received: by mail-wr1-x441.google.com with SMTP id k1so25768782wrx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 10:53:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=v7ZheI6bSLrba/+brpRVrq5vYClF+WQ9iVO178jEk78=;
 b=btf9HJsIOuNOn/IaKbfEXolv40jSRzhjuA7EQllCso1sWwBvadsB7piU0hkDwFkkRG
 LaY0rDWvMUKkER6yps4hDEpVnL0fVqydIPLDTQo63yH6uPIfFJNB8jGZBOdwRYZGKCYL
 BSTV9m9vj4HDIWkBSOeFIYrD3pfTLjVSy0IjdrJvAlmOlyJE4bWWR0NSzr0dptFQ90zI
 Uz55v2Aego1u6y92cVjuPpMztMf2e6mr0bHdHBFG22uDECmKCdAtU/l7wqJSuXnGifdz
 9vJFSjsRbToibdoDhCJXMnWg4cJknVMhLuOw2zE/PKHpaBnwqYeyJtTbE2iGgsKdy1rc
 +WEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=v7ZheI6bSLrba/+brpRVrq5vYClF+WQ9iVO178jEk78=;
 b=MSiQLGh1OQttt6UJ7OPlNbJ2M5K2rEoK6UmHVnZR7DP7rv8TDcovREpFmA3+TEqqbm
 16TN53b85eCEJ7CmQBW+4IK/BW4ip+GKLRbgZ9LbnGLEbaSuikfnDhW0VvGP0GAjiPBW
 lBft7vKnOapZzYcsx4xUepwsx85lHxIAR0yIBjVfd05+ZMxqPGLIaFmm+N/RV+dKY+/p
 ehzV2w44uIV6p3gMW/YgkEg3qVscohcR65gOeURIZvBgV4jVPCBxb+9258os6uF1/mc3
 BRSqUyNuUT6cdvb5rlt7O5ojTif7S3NwHMZpHUpnCGfn41Z7nTJkEBagQ5bkD4440oHF
 4K6Q==
X-Gm-Message-State: AGi0PuaRXMj9rmcMRdan8jbBqFdQxUfShluQtncXB6OMXAAOuuHtvlU2
 MltuVIPSz3EZ+xcsFrED9zcoXg==
X-Google-Smtp-Source: APiQypJBzvsMCtmM5SRHuXXkW8Kz57HKLHp0Lw/JQvJ56JGgP4HXd6+ek1foHwIi/20tTjW8a25S/g==
X-Received: by 2002:adf:f784:: with SMTP id q4mr34356002wrp.102.1588096383541; 
 Tue, 28 Apr 2020 10:53:03 -0700 (PDT)
Received: from xps7590.local ([37.120.81.28])
 by smtp.gmail.com with ESMTPSA id k9sm27936467wrd.17.2020.04.28.10.53.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 10:53:02 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Marco Felsch <m.felsch@pengutronix.de>,
 Maxime Ripard <maxime@cerno.tech>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 v5 0/3] media: ov8856: Add devicetree support
Date: Tue, 28 Apr 2020 19:52:52 +0200
Message-Id: <20200428175255.1608569-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_105305_970697_AF913201 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Fabio Estevam <festevam@gmail.com>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>, Robert Foss <robert.foss@linaro.org>,
 Tomasz Figa <tfiga@chromium.org>
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

 .../devicetree/bindings/media/i2c/ov8856.yaml | 140 +++++++++++++
 MAINTAINERS                                   |   1 +
 drivers/media/i2c/ov8856.c                    | 192 ++++++++++++++++--
 3 files changed, 320 insertions(+), 13 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.yaml

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
