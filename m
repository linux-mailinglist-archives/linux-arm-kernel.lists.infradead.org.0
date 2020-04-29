Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 532CF1BE3B3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 18:25:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h4xHAWPpdP+f02bgRabv2s2SfhrjBjLqiR/gBtlbgTg=; b=OMtQrwWQAnnrdh
	lTS7BVzWUcWaU/L9KTCEgNTJDO7yEmcxPkStm8/hJobSoceYphnG7r1xuROJdeg2Ul9MdE+BSJtHF
	ogy7PhdAGbMkLK88irUoF+QvM2lsTPBjXkHhFKId0e3ZDD1zKjfC6EKzv1+18vOy4ss7eYf0bRdqJ
	3OGmmORUO3hAhenfBbUmEcdPoRXaPBkx9g0lCLYlxuHZWgWxiJcQ/eu7lHst2HS2Ipj8uNiFiD9k3
	OxR2RH+b2OeMKY/LTe6gZg09KLhs/djqYC0eSZdAA2pMm2nrSESzUIl9lpHAi1htDgDGrMi+2Jmu+
	2IuAIfMs0tafq3Y7XNyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTpW1-00024E-S2; Wed, 29 Apr 2020 16:24:53 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTpVr-00022T-51
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 16:24:46 +0000
Received: by mail-wr1-x441.google.com with SMTP id k13so3283315wrw.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 09:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ADiqVCpvp8u+dzB9ke1O/BxJ8B4T05czfzaYmje6w94=;
 b=nfg9FBtzRkNNFB895zwDXF5h1SCzLtHIHEArxQOIypisEW+sLJeEFFsl5jQZOAQUm1
 Gk2W/HepcONJybmjc7yjUPdCpz45ff/0ZoYTN8+ncWXr18rhjybizCruAH25c3QdQBnC
 InPigL/BxQnpb6RwI+uNMKDmQ+FA65z8S7lVPXLYPDGV6s+r0nmcwrDvCdMxbpkQCay3
 Zj5oe0cn2dguQVi883e+4v3r19aNtH2BbOZK1DfS8UHBvUIdTvlDrKumUW3PHp4MYIpe
 CcIKR8XPnWNp9FFyqHJUNSLb2QZuAFgwmKX+txpPHgeXMyUySi2VEXNcmiY1Lcsm/0fu
 mjVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ADiqVCpvp8u+dzB9ke1O/BxJ8B4T05czfzaYmje6w94=;
 b=pTa+NVMFdSXk8Ok7BFzewHjJ/QeiMcbgzMXkhMmTXgBGLOnm6fMZu7HKjeveyY9eIT
 Wd4i4pStDgFY7ZYqL12K6BCZtN3EOlgJAW2EULly9WUM90Yn2GowsThNCTrav9M+/2aL
 2wwxVddXL0w1i6LYfGE6btaBH1QdDuEMTs5MRHiIj8EMNzsrygD8RGEfqKdEEd1ZH4b4
 e2OncBKuQ9B7pH3fE5aoQfm1LD+bC5yEyL5eTXbBpxrOsn1jSQwdGuP8E3NUREmRhCiz
 hHengqENzYXhNJrAir+i/nYYC8C2DlNhkf00APo/HvVYaXVLwqh94QNfvLksNXn/trcn
 yfqw==
X-Gm-Message-State: AGi0PuaYXc5UnfVt1zBey+oFrTIDDAEgQX04QbBclKNlWa6BnVc6pz6l
 xP6nYEi/LASgxtLQqUfkF/DBNw==
X-Google-Smtp-Source: APiQypLrrX5chyfQ776G/ANPebYHVEwsF2r9aqYcDy10DPmWsl+HRRFigDXqGRIWFJXTPDwD5WMOTQ==
X-Received: by 2002:adf:ce02:: with SMTP id p2mr39887093wrn.173.1588177481814; 
 Wed, 29 Apr 2020 09:24:41 -0700 (PDT)
Received: from xps7590.local ([37.120.81.28])
 by smtp.gmail.com with ESMTPSA id h2sm32616554wro.9.2020.04.29.09.24.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 09:24:41 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Marco Felsch <m.felsch@pengutronix.de>,
 Maxime Ripard <maxime@cerno.tech>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v6 v6 0/3] media: ov8856: Add devicetree support
Date: Wed, 29 Apr 2020 18:24:34 +0200
Message-Id: <20200429162437.2025699-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_092444_662816_F25507C4 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 drivers/media/i2c/ov8856.c                    | 190 ++++++++++++++++--
 3 files changed, 317 insertions(+), 14 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.yaml

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
