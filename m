Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4EE20DF0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 19:26:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hxKaMf6vVa/GnLg8JRGvjegaCtL3tZqWZWNVZuDn1CE=; b=lM9
	z0hV01jBz6pWpAM58d/VC3QJIvFBu1P84ydQVHA5Ox2Tpp6VWneVWcGcAkXj7+vUC2bbsX3U6khoN
	jzXr27608bywFBH4LSpVs6KdJPhOv1HonmtuRDKFzuuLh7JDAjAOUN9V9zWFmbS0FAy6+F/HGhhD1
	mN8ZciQ3SkriXpU278yaG4tQsej9sJdxW3RnSFKZaTYPy0LZvJmn87cJILb1jV9ufeyKACN34KBDj
	TniGSy7hJDvAn6waM1wNeWRuNW2Xbf0vJK+xLxPRNJT3u+BtL4wMR8kh2sgRetHuP6J1pTk15hN52
	9g4tjMyayE6MbqDVGZEoUIRsx/ncQ7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRK9Z-0003Qf-Ay; Thu, 16 May 2019 17:26:49 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRK9Q-0003Pc-Bg
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 17:26:41 +0000
Received: by mail-pl1-x635.google.com with SMTP id w7so1968720plz.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 10:26:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=YUfsEJ8lhieJ+G+ZEu//a+N3R5RIXxHhMK0cXmz6bgs=;
 b=ZaA34fQYW8y+vLCZGpBDoaYOqUEAr2LIlZmaQbAM1wgyRPnUL9LnJ6EyfewjiUsJPr
 J5sapg0djxcI6RM5ntfCQvsbuRrXFZ+Wrs1l7hC/snGqdMTSP0wG1hru5vxMDlh37qFp
 Eg2AtuwoZkSqXt1AcXlMkatujdHzvn79OF62DLOksmkB7THX6eO2fSj3tRJLWkDDwlyE
 vYYOm5DLTVhpfK2jEB2j2JQSQuQ8PHVWpBmkl4g3S3vJh3H2/62ZLdkPxii89f0+m63L
 PmqECPCryHfV+5mBF4rF9wABUYlz+xzw7+07ypj2KYhVi6X4VGRu6u5pbBz+UKdBIoJc
 n9Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=YUfsEJ8lhieJ+G+ZEu//a+N3R5RIXxHhMK0cXmz6bgs=;
 b=fI19bbMjQ+c1vvQ1dH2thDHB41kmREvHRlgGShqQ6v3cEjR1KC8gyiPO14k1feGtwD
 opINohJxqRG1wvidWwdcxXVqefXNsD5K9hHNZNQ88jjT102oopGiG77wbMkJcMBLG21A
 hkDKtf83dEmeaI+s6DtLH+XQOdZLsPBk8qjcJUHOPULlQWXkzSb93GdqEgILIg3Neky6
 0OJlTHSJZZSfUIGl9oAo1uxNu2Qhyo7hYCOtQUYeRDDjEb1lh99Kglz6eVhKwXP6h8kV
 pXg4QkJalyfGZqfSZv/kewD6vDDvASbViUmAr4S4I09lZd6FZtrBrcFXLGRun0ZjyozY
 94bg==
X-Gm-Message-State: APjAAAUvDbnO6AcHcQ82HTzlqKNnhVh1PXwXdb6lCJF5TV5XY/T58WLp
 Qt1S9hMI6ncL4V2Upraws5A=
X-Google-Smtp-Source: APXvYqwdkXSaxriT5ImPSSSj0Bxh+baskm7Ggglk+Ycbodr6SCw+bWqm6L/qc+2VAxhG3zek3J3hyQ==
X-Received: by 2002:a17:902:b094:: with SMTP id
 p20mr29478865plr.164.1558027599264; 
 Thu, 16 May 2019 10:26:39 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id q193sm9970130pfc.52.2019.05.16.10.26.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 May 2019 10:26:38 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, davem@davemloft.net, mchehab+samsung@kernel.org,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 Jonathan.Cameron@huawei.com, nicolas.ferre@microchip.com,
 paulmck@linux.ibm.com
Subject: [PATCH v2 0/2] add thermal driver for h6
Date: Thu, 16 May 2019 13:26:31 -0400
Message-Id: <20190516172633.12607-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_102640_395354_B55D544E 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:635 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset supprt H6 thermal controller.

Yangtao Li (2):
  thermal: sun8i: add thermal driver for h6
  dt-bindings: thermal: add binding document for h6 thermal controller

 .../bindings/thermal/sun8i-thermal.txt        |  34 ++
 MAINTAINERS                                   |   7 +
 drivers/thermal/Kconfig                       |  14 +
 drivers/thermal/Makefile                      |   1 +
 drivers/thermal/sun8i_thermal.c               | 422 ++++++++++++++++++
 5 files changed, 478 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/sun8i-thermal.txt
 create mode 100644 drivers/thermal/sun8i_thermal.c

---
v2:
-Additions and deletions of some comments
-Change some function prefix to "ths_"
-Support interrupt
---
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
