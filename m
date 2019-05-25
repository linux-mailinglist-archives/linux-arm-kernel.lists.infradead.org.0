Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 847132A672
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:17:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IMgCfYP4Ci8PlH1Q+pk+HsyDSuj2lbX9/Mn5qd3mFT8=; b=AcI
	3TnKVMytSTzXdZTKwaVKUYT9OdJZr8PnBWR+j92cxzOJY7p7imvWmPWAnWFK8pFCAVsdpybp54PSE
	6pLP81LZ83YpsOSGsLUbwcNIemUTMw2j/fzNCTes6ze6ghAWCzRq2A3lR1nLUalthRA3ff2nKzMj2
	0oZBdTn8FIGr2pwamFI22bcg4ZyfapqS3p24fW09gfxEDH2CR172G+ggbn71s7WWsEBDAR5MN4QhZ
	Dn4qW57Aim5ywNYtxYPIK5GHFxzbreSbtU6hL/EPdQQULaKukIofxPLteLoljsdK1/aiZkV7Rq7zE
	4z8GrhEX014DcZYrZACplMJOUJUF8CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUbBq-0005Ei-AY; Sat, 25 May 2019 18:14:42 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUbAk-0004Hs-0T
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 18:13:39 +0000
Received: by mail-pl1-x641.google.com with SMTP id g9so5427764plm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 11:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=HRYu8PaHsPuH7ZyD14nhDXouGF0HQ0zAn0UWWEnt2PY=;
 b=lYsmCkkVrUO+2GVeYbd8F9i/q2/xfvb5RQaKK7m/KL/+kIXt518Vp9x9T9rPXbou5j
 CbzxHipr4SspD1HHGyqpABcxJr/VMf/28A3DfaK1PbeeLhARtdml0Wut3luUm92nvkIw
 cjWtZywhhDlQGNDrW/efMSGGNoPw8pEtxmUvar8w+zrp8oHuvVDjbBQ6FqQRvzpW4V/B
 YZeqAuddyhDNArChQY2SGnpeUK+RwQ93lhLu0BPQto4WCMzMcJ/tqPCR+fBsTaMECK+X
 7TpooFstkZ6bfWNtAx6v9hp98L600rHvqcKHuYfhtYC2o6vRnoy0zv/U0PRzLfXB4oBs
 IblA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=HRYu8PaHsPuH7ZyD14nhDXouGF0HQ0zAn0UWWEnt2PY=;
 b=IMvjbnJQw88XFsDkQ84eqOUtBxF4vesuWHiWmzK/4q1SrSjc4ULpQZu5REMObfsiJi
 dzoUzXauHjwT51BnWRaOC3BuHE1i6z3PFCoTQ2yh5CPIUrS44NiarZu4yChuPuh1/22V
 FFm/r3fNn95qIhvjHeKoPCgGTfQ+zquozp8JSMFhglwa4zAhBpgAiWgWMw1Vuwx97vcb
 HOBUC0L+oaxzMJKXPMRiSwZKhan1Jwg5HJN1RvJNreX2/fRe1HvtW7emEcYxTXqQlG3B
 aag8ubTjaB21xoDcPAFpsmsxPxMdDlOdaA27I1v6ErxVj8673vBJW5EZTHAFVgugw/Xg
 5Rvg==
X-Gm-Message-State: APjAAAUF8s+wKhylntb0qWFgJq+zpcdjEwH2A3bHpJt+39tMOK51U6ei
 jc8gndGw1LZVe7lkecdaIT0=
X-Google-Smtp-Source: APXvYqwgce5AQBttT/IsT2xQ37eli2VMim3NEhCJnvjdhjhv2dmB0Yci4JaHaLapKWGYuKBBm/Lyqw==
X-Received: by 2002:a17:902:1029:: with SMTP id
 b38mr74079371pla.72.1558808012389; 
 Sat, 25 May 2019 11:13:32 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id z125sm8011552pfb.75.2019.05.25.11.13.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 25 May 2019 11:13:31 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, davem@davemloft.net, mchehab+samsung@kernel.org,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 nicolas.ferre@microchip.com, paulmck@linux.ibm.com
Subject: [PATCH v3 0/3] add thermal driver for h6 
Date: Sat, 25 May 2019 14:13:26 -0400
Message-Id: <20190525181329.18657-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_111334_380698_C72D92EB 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset add support for H6 thermal sensor.

BWY, do a cleanup in thermal makfile.

Yangtao Li (3):
  thermal: sun8i: add thermal driver for h6
  dt-bindings: thermal: add binding document for h6 thermal controller
  thermal: fix indentation in makefile

 .../bindings/thermal/sun8i-thermal.yaml       |  71 +++
 MAINTAINERS                                   |   7 +
 drivers/thermal/Kconfig                       |  14 +
 drivers/thermal/Makefile                      |   9 +-
 drivers/thermal/sun8i_thermal.c               | 437 ++++++++++++++++++
 5 files changed, 534 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
 create mode 100644 drivers/thermal/sun8i_thermal.c

---
v3:
-Add a sun8i prefix to some function
-Remove disable callback and rename enable to init
-Remove clock enable, calibration from init callback
-Convert driver to interrupt based
-Convert doc to yaml file
---
2.17.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
