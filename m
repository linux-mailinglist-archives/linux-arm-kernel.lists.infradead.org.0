Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F3D128BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 09:28:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=L0qLJTjqenLvBPuJxDYKks4MtBhlY4cS4RAo134V0YQ=; b=LfU
	wBn9jExMxgrfYEwOc0/pvtkNQEP+2UofU5gJlZ7SLGmdP2F8zkgCnOuAu9SXX0yoh0DOvfJG7K0cA
	DD6pf/7ZYaTPLxSO9BmYf+i7t784lPPwspClvIeLH5uHl8pGU4onWM8Md9MPRZxhKkM6sFiWM7hDN
	yUmuuS7Tjyku9DBVSoEviq2vObPAfFrE7mNCkp6qeGviJsEnJvmY+xrpDt6530En6eP+iaKVax+c/
	D9rzEzq8IP6a6NOB/qRyxGPv8wIacrfWMNWEloGzuvZ2MNFxHeQ5lKrymO6kjoY8gvEjlKjzY8mVk
	P+WY9/7mZqg/zltcAjYFyoeAM7w57lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMScP-0006K8-4q; Fri, 03 May 2019 07:28:29 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMScH-0006Je-AS
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 07:28:22 +0000
Received: by mail-pf1-x442.google.com with SMTP id e67so2456525pfe.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 00:28:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=xG3BXzoSNSy7tAxX5sR0WHhb5RCNXLJmoOdev9tDivc=;
 b=pUDYAZth1/cN7IFBdUvzoPxGI7x2IfzE1oP4oWYaHFPAgsXF/UEur45b310L3vBqnA
 qbaTAce2XBZqHM8z7Vx+3Ej0UGZxnllvyiua0VvQJ5c9eyV3NurumZFJ6EIIaOtQCHuf
 1ttWNOkwk1OATCzTt2tHIAdWr33QR05MIjiEQ3DAFlbdyFUyGC5ln0N2JiEPclqTIdm3
 hSgkY+B4edwSmhQM4E4/63tRN+YPkchz1k63n1Xwe0dIEh3m/zxhCHWlC3mmLll5Z9vG
 tRZhLnT0El0UuGckeZBJx1O1k5RO4A5z1CSjJVLrwR/bmHZuQnRWCbgSLNFS+my+4tUV
 6KMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=xG3BXzoSNSy7tAxX5sR0WHhb5RCNXLJmoOdev9tDivc=;
 b=taD69rAXbo36TDwtwylMR0/1HSzJ3gfiOVhr71s/xsGpV9slGIdOK5lS33i9QAEJHR
 OhRAFeSJQGC8YzPUDcSlZk+xf6FYZakvbFpl6Y8kbcPqmFbjkzkaIrEiA21ThS8sPs6m
 NweqaL3o5anRHIUMdzDjW1ExbMPTQDElvFWwCHRYgLdGoZ5Dg0gS5LHw2gK7psFwrui/
 ix2JVbmsysI09vDdiKRdvGjXHnB90Kotc1mBkwafR21VLT9i4RcQyINZDuWucvXlbOdg
 OrXZla9LO4fSTNPy/5G3zx/FcIHhPe3G1QwXTeFykrPJrtm20hUGukrz25TmHiuJDIsn
 5KWA==
X-Gm-Message-State: APjAAAU1mbwBTicAagMeBZAx6G+wUudBnw8u3AXoOU9UrAq74DUhSBrL
 +OhLpsBl0DcSIOR4TJvqEWA=
X-Google-Smtp-Source: APXvYqwkix/U4Pl8qw1a/oiCfdrTNq3/mjtlSb174nAEyztOcuN7A4BP+EWtep/RCQWpK8mbpBmvDg==
X-Received: by 2002:a62:5ec4:: with SMTP id s187mr4998560pfb.185.1556868499995; 
 Fri, 03 May 2019 00:28:19 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id g10sm2944183pfg.153.2019.05.03.00.28.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 00:28:19 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: lee.jones@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 maxime.ripard@bootlin.com, wens@csie.org, jic23@kernel.org,
 knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net
Subject: [PATCH 0/7] Add support for H6 thermal sensor
Date: Fri,  3 May 2019 03:28:06 -0400
Message-Id: <20190503072813.2719-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_002821_361169_1AE329D6 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 Yangtao Li <tiny.windzz@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds support for the H6 ths sensor.

Based on IIO-based thermal sensor driver for Allwinner H3 and A83T SoC,
thx to Philipp Rossak's work.

TODO: calibrate thermal sensor by using information from sid.

Yangtao Li (7):
  iio: adc: sun4i-gpadc: rework for support multiple thermal sensor
  iio: adc: sun4i-gpadc: introduce temp_data in gpadc_data
  iio: adc: sun4i-gpadc: introduce gpadc_enable and gpadc_disable in
    gpadc_data
  iio: adc: sun4i-gpadc-iio: support clocks and reset
  dt-bindings: mfd: Add H6 GPADC binding
  iio: adc: sun4i-gpadc-iio: add support for H6 thermal sensor
  iio: adc: sun4i-gpadc-iio convert to SPDX license tags

 .../devicetree/bindings/mfd/sun4i-gpadc.txt   |  27 ++-
 drivers/iio/adc/sun4i-gpadc-iio.c             | 208 +++++++++++++++---
 include/linux/mfd/sun4i-gpadc.h               |   9 +
 3 files changed, 213 insertions(+), 31 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
