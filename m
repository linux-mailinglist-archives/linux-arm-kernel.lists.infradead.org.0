Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B03601FF260
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 14:51:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RTIvEx05drnTCFo9aS89a+8HIJwkPQo/yFU+/xkZL2g=; b=VwB5MZrrc5v/UA
	8UU4IxdcR7hpbizrEsQJjJCJKFDC9BuIzS7qkQ7bCW9djurZ0ImJeffKzPsnW3Ni2e32XyVNXa9Md
	kePNim1oiJQ8/ENL0Q94UszfMsLl0ioOLyfpJfd4er10VZ7FhZutwL5HQCYeDQZ9ZhEmkFznQqDJx
	FotNP0Mlr3BrMmvK5NHjHhn5KCQ2zTqjH3Adcn0Tb9aBv26y+Rp7ortD17VQO7r8wCggL1JPiFqFR
	aGVNXblQ0qkSEXP9ZMxqQ1QyBrp5KE9e1MfRPt1wF6zRd2tJpkbnSJwbfF7W42cWI2kjo16Uj/BjP
	AdCeptj50zOfXEAWlZ3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlu18-0000Zy-GA; Thu, 18 Jun 2020 12:51:42 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlu0y-0000ZY-VK
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 12:51:34 +0000
Received: by mail-wr1-x441.google.com with SMTP id t13so3502005wrs.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 05:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Bj6HAykfSXciPD/Bc+zws1F4Dix7NK9KOE5ziMSlP18=;
 b=s92ydCNNUB8tBaQKFHde4jqHuN6R3JyXh0Nhc/3Txlz3PLg16gHdMvxkf9nm/Way1i
 IE7qKAasmH7/Az0BAzvtq3Wsks+24nV/BS2+NF/XmhKz36t2pBn5d9mDERBAdK2cKVO4
 XmpdPEXNkPDJdAmixppQgrBSPkKlLe/4a6ueUlC4KvoMHcjAfmwrusiaepK/fmjFdQgE
 GpnmI8vOqTLlxolUIEFyLIUWO3+oZVRzviNhDgRC/iDdNmjhJPHNv75+OgZ6sbRYhiWE
 dFCnNVj49d8/VUo6Xi3HoF8nHG33h7EODXuDug7DnsqqOOUTyYCd0beyqtE9SEB+C7sV
 svEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Bj6HAykfSXciPD/Bc+zws1F4Dix7NK9KOE5ziMSlP18=;
 b=jQYl2E6xr9dmohSnp1EU8I1QzxvJiEFu0cUN1P4YnE50/0ePsCWwZzOL/uTX3Z8Ziy
 Cokt+B3y///ztotyXdw3n1PQgM/AIu6jRBQV6thwGUsdciSGIzdMMry3sP8D59hhgawd
 4Xi8czsgn1zH0oUQzAoXol5BhNiExjGOoFECc4qnAkkHl2iM6x6F10RCrwBKRxGOmYZy
 Suy5K5fmQhtgQ9EkBGZt6yMCGNL6Ux1wG9o47hkqP4fDO9B+oBkTzDvV6+PNLTIeFwSX
 Ceao9hkw2gPcofyohfanf2vzbvWzSD0sn/E2QO9rm1dylqkrRuyCAUkGABComSwSxf0A
 okSQ==
X-Gm-Message-State: AOAM5335hN9UdZNL7cUZmymoaBYppmiUtTxbU1XbCv6LGT0bsOF+wmM5
 A2nk+jmgWe5oSLaD9P+V9n6qRA==
X-Google-Smtp-Source: ABdhPJwC8zsRiXLYSbgOC9p59MOglG+3EnihCVEse/KhZppHDY52tveh0j6s0v6RHp6PmoAniAxHPA==
X-Received: by 2002:adf:9163:: with SMTP id j90mr4376829wrj.65.1592484691632; 
 Thu, 18 Jun 2020 05:51:31 -0700 (PDT)
Received: from localhost.localdomain (i59F66838.versanet.de. [89.246.104.56])
 by smtp.gmail.com with ESMTPSA id
 v27sm3714151wrv.81.2020.06.18.05.51.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 05:51:30 -0700 (PDT)
From: Drew Fustini <drew@beagleboard.org>
To: Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
 linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Haojian Zhuang <haojian.zhuang@linaro.org>, devicetree@vger.kernel.org,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Jason Kridner <jkridner@beagleboard.org>,
 Robert Nelson <robertcnelson@gmail.com>
Subject: [PATCH 0/3] pinctrl: single: support #pinctrl-cells = 2
Date: Thu, 18 Jun 2020 14:50:54 +0200
Message-Id: <20200618125057.41252-1-drew@beagleboard.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_055133_063695_05F386D5 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.2 (++++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (4.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [89.246.104.56 listed in zen.spamhaus.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Drew Fustini <drew@beagleboard.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, pinctrl-single only allows #pinctrl-cells = 1.

This series will allow pinctrl-single to also support #pinctrl-cells = 2

If "pinctrl-single,pins" has 3 arguments (offset, conf, mux) then
pcs_parse_one_pinctrl_entry() does an OR operation on to get the
value to store in the register.
    
To take advantage of #pinctrl-cells = 2, the AM33XX_PADCONF macro in
omap.h is modified to keep pin conf and pin mux values separate.

Drew Fustini (3):
  ARM: dts: change AM33XX_PADCONF macro separate conf and mux
  ARM: dts: am33xx-l4: change #pinctrl-cells from 1 to 2
  pinctrl: single: parse #pinctrl-cells = 2

 arch/arm/boot/dts/am33xx-l4.dtsi   |  2 +-
 drivers/pinctrl/pinctrl-single.c   | 11 +++++++++--
 include/dt-bindings/pinctrl/omap.h |  2 +-
 3 files changed, 11 insertions(+), 4 deletions(-)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
