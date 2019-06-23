Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 180634FCD2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 18:42:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VWYYlkAzfZ3z42ct5mDTDQHamBIGX85wXxDyR9kdEHo=; b=FGd
	ttTaWjNggO0yrj8Ouy24P4h/viC5DRvNhcoOX5IBn5Mu2Nsab6jyszS5AWN9p0n/BI9Vu2vDATfF5
	9Z7E97FyxXE8SsRoTxoYW5/LXBMgqeLzqlkgLH9/kVxYY9/sQoCbNvO8eTzfXAAJRy+X/Jrt91tws
	jWYRVWibabzgjczorsWqlIZEketh//MTXo4RWdToc9NCIJvNW9MwsQ3oQorJyCn1um0t95NDX8UqC
	h4IJwydGl396xHIFsJ58sijCiDPUqH+5Xudryd0/o6/t0SD96x3JumbcPKbWKCnkFpYYz0+O4qnFQ
	YcmJkLVPFtQ60cu0+8z2xodCx1GtNOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf5Zc-0002Us-7y; Sun, 23 Jun 2019 16:42:36 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf5ZE-0002Tp-Di
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 16:42:13 +0000
Received: by mail-pg1-x533.google.com with SMTP id l19so5774401pgh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 09:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=guN3ScMcBAl3EdBUUBqxZnez+QFG6VTe2Us/ZifbIac=;
 b=Mz2oXdfcHCl/AjLIwcbhOTvV4DP6dKb58+chvGV34eLndltGe35g/temtiD24fRjEN
 yO1BCIoo8bh5zc6/o2VRRFRtjsovwC8cLmA+1lVCHOhT0SFjZk5L3YCig71oXdx65Ay6
 IJlxs0Y3LoduHUNd8+DrFVCawb+VjTlRPH+zQU6SuvJBEefpifliMWnFp2zbWLm0slwC
 tjDZURjLb8nicaltlMwIObu0WLqBfV7PR3AUoucywPMLq9ER8zdNaIil71f0+MqSRy0j
 wXrslvoMOx9iyv0PhWNIJXmZaRM0w/a81eNMSJFXw/zoQqBitfzFru9jbmphDrk+v/qm
 F7FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=guN3ScMcBAl3EdBUUBqxZnez+QFG6VTe2Us/ZifbIac=;
 b=m8yzWWPUZr0gslydrjh2Q6QLQJJsLU7LIzbaeopEk7bWpHhJKBFUsLRV6l60UBa1+R
 7IGg2ZZaAGYLmFdKedcekQ5d+iy1crdxZg/g+/wECwHyzMTffn1l17CPQPHLOxNK97Pi
 nH54jLrm6Tc8I4URG7FO+8+pB5Z1c+KZYM3//2cgxnFJCGqrqcXEmfqJGgQx/baAo7KD
 F0NJ8oZayIs2Sw4PTA4tPqFNZ9FAV//C+uDP5ZlYnlf+BQS6t4js6gaanv3tov/lsNez
 Ka3puCiFUDMoTw72JWrPI2TYuzrnKTLuS06vM6Ifc3b8lzm1Or6jcLvUIEpAv/eGzmB8
 Be5g==
X-Gm-Message-State: APjAAAUAsfVTQ9mykGmXpc0mVxjYsS2Yt3YsN3nqUxeXHRQw0Dhl1ibT
 qeRnVjauMRQpZ2cOUsr7siU=
X-Google-Smtp-Source: APXvYqzuNeNzlJfb0O2anqXdpR3fq7SW1y1TKzsXPcMSAaI/+wflpHzkgSycjT+gG4vxsg6zpZE3fg==
X-Received: by 2002:a17:90a:a404:: with SMTP id
 y4mr20304680pjp.58.1561308131121; 
 Sun, 23 Jun 2019 09:42:11 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id v138sm9644465pfc.15.2019.06.23.09.42.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 23 Jun 2019 09:42:10 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, davem@davemloft.net, gregkh@linuxfoundation.org,
 mchehab+samsung@kernel.org, linus.walleij@linaro.org,
 nicolas.ferre@microchip.com, paulmck@linux.ibm.com
Subject: [PATCH v4 00/11] add thermal driver for h6
Date: Sun, 23 Jun 2019 12:41:55 -0400
Message-Id: <20190623164206.7467-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_094212_489663_A256F98B 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:533 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This patchset add support for H3 and H6 thermal sensor.

BTY, do a cleanup in thermal makfile.

Yangtao Li (11):
  thermal: sun8i: add thermal driver for h6
  dt-bindings: thermal: add binding document for h6 thermal controller
  thermal: fix indentation in makefile
  thermal: sun8i: get ths sensor number from device compatible
  thermal: sun8i: rework for sun8i_ths_get_temp()
  thermal: sun8i: get ths init func from device compatible
  thermal: sun8i: rework for ths irq handler func
  thermal: sun8i: support ahb clocks
  thermal: sun8i: rework for ths calibrate func
  dt-bindings: thermal: add binding document for h3 thermal controller
  thermal: sun8i: add thermal driver for h3

 .../bindings/thermal/sun8i-thermal.yaml       |  94 +++
 MAINTAINERS                                   |   7 +
 drivers/thermal/Kconfig                       |  14 +
 drivers/thermal/Makefile                      |   9 +-
 drivers/thermal/sun8i_thermal.c               | 534 ++++++++++++++++++
 5 files changed, 654 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
 create mode 100644 drivers/thermal/sun8i_thermal.c

---
v4:
-add h3 support
-fix yaml file
---
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
