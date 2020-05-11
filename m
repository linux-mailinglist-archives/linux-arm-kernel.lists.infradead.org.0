Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF691CD713
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:04:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oc0uZIzT9OkwP8ZZHrMchKnQ2IAZuE7g2fKk3ufSiOA=; b=dIOmEW7LEbVSag
	JzIWczaCCYu0eZEXDedLJJZrR2jH0J/PMfvVhGY+0BLUIhloZbuJOWXBJNU+UuGMIaRXG55kVL4xZ
	IditHeHmzq700uAZjAOEjWQw6/1JbhT9M1oMc6cdcHdZ9Vhk2cAxHl+yJ2pkXACM0cDzRNwR2eykB
	qdU8rrGsVwaCg2c0nXOb8bosvtJvWRPbbdxMZQ1OiZHAcpYFYscwrf1DCJAXtGm5AspObb81Br155
	nCnjIJn9owCHkJRhDwqjltR2QFFHv1JsTN7XHmrJz/zOqHwyH/DHug6BoADppnEVkvQYXAO6DEz4x
	DmtkAWPTXMCTGHyDpG0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6EB-0007US-G1; Mon, 11 May 2020 11:04:07 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6E0-0007Tg-JX
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:03:58 +0000
Received: by mail-wm1-x344.google.com with SMTP id w19so3942025wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 04:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YYtGTZN1IDnhl2DGD//+L1M7Uh3Y6F/c8Nk8YQ5S4LM=;
 b=E9OP0txQ0ln5On8Vka2/Vii+xPPWCDo+RcC3j57ohFiiq2XXOryTEwRz7wf7CUES1D
 XLBbz005jDzpG32wam1NdBdE83ezou1oSdw0e1idkMW4nC1UnTgk/GJXlpUkgCwa61u1
 bslbKk0GCirkIlfCMRfxCpNfKUapVA78c/zQW9YDeC/mwvSkkuUa0CpcXJp0vmB2y0st
 T/7Q4p9ECBNIK8uJkJH0KheQL8m1BUB2u30iVIJk6EswQgTEZ22Hku8MJRmKU7PO04zk
 bQTZ1OrirQqxfolrRrly5w5qcC0WShhxz6cdN28PDyOObp++sJPG1rk1WhxDb6rnDbST
 nLLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YYtGTZN1IDnhl2DGD//+L1M7Uh3Y6F/c8Nk8YQ5S4LM=;
 b=h8SPmRgHKkoDc1oLIuUFLwzh9UR6Gzp4CKcnc5VBwLlWYnXEZubx81rDYonmFJO+bw
 rvRGCGo02c8oGP0dJRh/oXXSa3beKcWLfqNwAj/HCkMoxuUyZZgcrLiiTaCiC6UCbvby
 3z4f7RxexLYQGxi0HCXiNN4Ov46QL0IhlMsa8xP8lIYbLjooESIpicPKQY2XvnU7nyKG
 UYjWs0+VC6noauHy/DHqhnvGZI3Dx9GoyUGiY8xSfmnUEaloyYsRvLAt0In2nepMAkT2
 CNNhzOl6kPIgQSlVDq+/KlwzhDc27bewFANARXs638CNf0GX181OjCp7U5I4RHc1jsNy
 h8Hw==
X-Gm-Message-State: AGi0PuZ296d97JbKCQi+5TMjHt8H9bG0mKsicSWYT1v3N/xSkso+H1wA
 UkyFUEu25+e1RFm2OxuZu4mfZw==
X-Google-Smtp-Source: APiQypJIuLYqKCCu71EykxQAeZzhyH4J/mpRW6NrzLFbXBbwDpDNbWaJx31A7kAP/ES5nX8d1Hu08Q==
X-Received: by 2002:a1c:7d92:: with SMTP id y140mr15836919wmc.10.1589195034723; 
 Mon, 11 May 2020 04:03:54 -0700 (PDT)
Received: from localhost.localdomain ([37.120.63.158])
 by smtp.gmail.com with ESMTPSA id z18sm7046584wmk.46.2020.05.11.04.03.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 04:03:54 -0700 (PDT)
From: Robert Foss <robert.foss@linaro.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, Marco Felsch <m.felsch@pengutronix.de>,
 Maxime Ripard <maxime@cerno.tech>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v8 0/3] media: ov8856: Add devicetree support
Date: Mon, 11 May 2020 13:03:47 +0200
Message-Id: <20200511110350.11565-1-robert.foss@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_040356_648534_68F95CCA 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ben Kao <ben.kao@intel.com>, Fabio Estevam <festevam@gmail.com>,
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

 .../devicetree/bindings/media/i2c/ov8856.yaml | 142 +++++++++++++
 MAINTAINERS                                   |   3 +-
 drivers/media/i2c/ov8856.c                    | 191 ++++++++++++++++--
 3 files changed, 321 insertions(+), 15 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.yaml

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
