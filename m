Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6818886C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 07:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DWIoF2uSTrjbsxODQy4JgzXQcN50bCorLqZAdmAQOs4=; b=PAO
	ZjDrgZWlYMspgMfrORTLaghR+5QtfGjbv2NB9TwqTNdG1+w6d32KhqIDJ8KcdPyD4CWMHoSwFz50q
	kDSAIntbCHjuVXVsFOWqoehA+ju5+nNpVtMw4EwOUgoN6pqLI4hNksi4dRoRT+9UO3AeB5S85GlV9
	2g5JJwjKgI/9JQKiDmM2LYlWz3jDb2XTJQxosAxxaJpv7qpKJTk6h0ly2o5PJk0bHMmUUEXE21gAB
	b8TdJd7+yixX+ZS51qDzL5IO8qSAtWwsQ8OB0HRooGlCbiMcQl0lCO8MqErp+T+/JXKLNYrPe8rvT
	vB92z3u05KPbRKK92Uh6hZ25rVW9hrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwJwM-0000dG-0A; Sat, 10 Aug 2019 05:29:18 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwJw7-0000cD-NP
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 05:29:05 +0000
Received: by mail-pl1-x643.google.com with SMTP id b7so45829464pls.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 22:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=wwnkha2cPalip0BRfrHsmWB3+skZcqk2g4L3dadW7dk=;
 b=H9+DbqeRAbiVFOVv27yxPfHJ4OI4UyI/Oo/c7lNEytzV7UFucZSdGLxmxtx9pPR7ny
 9YpDzxGgR8zy/2BL7xHfkr6066cTNPsSoeOv93JqxYfrpiDnFK/Zj3OIn+GQUykM5jtQ
 XdduqCV93DQF4uWog0v3M5FWj/bU8osBz28QjwUoQo/lnt6RLzIWa0ElT+ZuCfyk5/jF
 0knjq5eWJoix988ngCDNNOlJmbwYY/ndIl7KPvHCB9kVdTcfQKlr7JvrI960ivEY3nqB
 xogVwXvTx7sN2tVE+wZnPsJn5GvNDTfESVV2m0PV5rLhH4oVIows53TAst0y3hq74fgv
 kvLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=wwnkha2cPalip0BRfrHsmWB3+skZcqk2g4L3dadW7dk=;
 b=iLKhdkiQKJoOw9+VaejaJr24Scdw/F986+fBL9mMNTC7TW083qtSRZuIyB7pu6cryC
 hJk6M6Tqv3S3lGFwLa4NUO1PUfNhZg2yvhdRyasmYg/TYSgYqNRNDOh8Z6I6MhwfTa8+
 c/tNF4xmEIg/YTCrXnTyktkIyomCGpUhzCa1HhkDRPoeJDLa8qyuTtPkUn8EzYvNmL6a
 D1UwiVduJQ/0WaJOv8p/JQsW4i5o+Y3Sr86qYEZ9sy3/j3a+Naky+jpQS3sgiLTJSvDe
 /YllOetTSmoHsGqcnG80TcmhadGeU/+FTTDL6zi4ZSaaE3uWgWohhH+4n16hAJzpahf7
 mhbg==
X-Gm-Message-State: APjAAAWOHQvL6IWGgGSby8ivH/9FWEKVuhHNQqT1Y/Ybf+2hpXskUdls
 t+w430sXCt+aYIKho0v1gCk=
X-Google-Smtp-Source: APXvYqzMo7nOByZJMmjM7GKUOTMF/RVyxY8jSVwew10yohKpvdkmRmd12vIA5OSvtsjRXEUGHIttwQ==
X-Received: by 2002:a17:902:1125:: with SMTP id
 d34mr22696273pla.40.1565414942290; 
 Fri, 09 Aug 2019 22:29:02 -0700 (PDT)
Received: from localhost ([202.182.106.211])
 by smtp.gmail.com with ESMTPSA id a12sm25517729pgv.48.2019.08.09.22.29.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 09 Aug 2019 22:29:01 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, mchehab+samsung@kernel.org, davem@davemloft.net,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 nicolas.ferre@microchip.com
Subject: [PATCH v5 00/18] add thermal driver for h6
Date: Sat, 10 Aug 2019 05:28:11 +0000
Message-Id: <20190810052829.6032-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_222903_788919_882794CB 
X-CRM114-Status: UNSURE (   9.62  )
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
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset add support for A64, H3, H5, H6 and R40 thermal sensor.

Thx to Icenowy and Vasily.

BTY, do a cleanup in thermal makfile.

Icenowy Zheng (3):
  thermal: sun8i: allow to use custom temperature calculation function
  thermal: sun8i: add support for Allwinner H5 thermal sensor
  thermal: sun8i: add support for Allwinner R40 thermal sensor

Vasily Khoruzhick (1):
  thermal: sun8i: add thermal driver for A64

Yangtao Li (14):
  thermal: sun8i: add thermal driver for h6
  dt-bindings: thermal: add binding document for h6 thermal controller
  thermal: fix indentation in makefile
  thermal: sun8i: get ths sensor number from device compatible
  thermal: sun8i: rework for sun8i_ths_get_temp()
  thermal: sun8i: get ths init func from device compatible
  thermal: sun8i: rework for ths irq handler func
  thermal: sun8i: support mod clocks
  thermal: sun8i: rework for ths calibrate func
  dt-bindings: thermal: add binding document for h3 thermal controller
  thermal: sun8i: add thermal driver for h3
  dt-bindings: thermal: add binding document for a64 thermal controller
  dt-bindings: thermal: add binding document for h5 thermal controller
  dt-bindings: thermal: add binding document for r40 thermal controller

 .../bindings/thermal/sun8i-thermal.yaml       | 157 +++++
 MAINTAINERS                                   |   7 +
 drivers/thermal/Kconfig                       |  14 +
 drivers/thermal/Makefile                      |   9 +-
 drivers/thermal/sun8i_thermal.c               | 596 ++++++++++++++++++
 5 files changed, 779 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
 create mode 100644 drivers/thermal/sun8i_thermal.c

---
v5:
-add more support
-some trival fix
---
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
