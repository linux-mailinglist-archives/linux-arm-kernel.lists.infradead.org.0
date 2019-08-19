Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB95291C57
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 07:18:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z3hek+nihhEvuhf/49n3eYvylf6voD16g3ySbXiZgps=; b=ohjd7TEcknhJSf
	63lPnMqRdMsNK2GldKxlBxXclQe3KMrF68O0myv/KzxDmaOGFgm61jNHJ0qZL7kFbcdZtAno5KtTC
	2FYw/L/Ji0JF4EmwvzInkUijVcmPsoKhx+lPDpmv+RvDIK0KCvkBB3NvrHCf3qJtdFixvAb+V19tc
	wgZN6qs0OHZzGQYSivSRYhqjSUEmyRpRc9WGE/V6rodVvt3fpUGYPsoAAqdw/+e4Nvj4x+yRtRcOk
	Cy10x/8dZQ58S8p6ZzwZ32P9hSWlpGZR7uD0Tz0LZslBbr6kFUZqsUFw2cX3OSnyaWoHHWueS12oJ
	3aVi18M8jo8SH+rlsbsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hza3d-0002hc-B8; Mon, 19 Aug 2019 05:18:17 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hza3B-0002h9-3b
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 05:17:50 +0000
Received: by mail-pf1-x441.google.com with SMTP id d85so469258pfd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 18 Aug 2019 22:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TGwG/YSLZYRVL+vJAKs5Bcm3MpdJbEenYZGdWxEpLBk=;
 b=nvB93+LIMhdoi2CaaDpCzS7o1dOMNM+3A21WKpAKWBnuWmftjA+IkGp1UzjUoGvPt2
 +j2EkS5G6ZY46CUxngO27FKFUsqU8w3ReyRRX3UkR+1drtyCLepHPwcN5KW09jab+Zhb
 GScQZ2FStl1PJZ2tDHm4H4BfYEB0YVkzx5LUaREW/9sLMPuMubqY+IalqiR/AXhQrMKp
 0432fj4jPoYILRdkyfhjSr0lR0ICE1fNNzAfcNzye9ffj+BHbqpe9901MBV2oVN3VOC2
 Cfjpn+91AGskyGX4QGYBSsI3t/aGs34xkui9kVhCZQ9SWmY/yoCefRSpaDeVNXe00XKq
 LmHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=TGwG/YSLZYRVL+vJAKs5Bcm3MpdJbEenYZGdWxEpLBk=;
 b=Ln/qiYZxEKd23NIOlH9zav+49z29e1gneMrqJ0gIS5KTzqZKkmzvJKPnTCa0vFfdvc
 wMCzte1yBGOOLciXZIhk6ZPWEBXHbzmv+QOrW1NGuJoIyqtMyiGjMcxpC9DJLJhkU+Ly
 I+zcacn4xuKYSyWFa6jA6PqCWoh8C96rAELCOAmEqtR8izDDHMQBDQBcYJmTcz1m7cvt
 ZedJXRm28D2G1+93CJdAUNKDgmXQAAyaFaTS6tVRQw1HkWoGUg/+jXGa5Xt9p4q5U5GA
 XaKuNdoYKluqqcuON21ONyCa2jn8CSIsVQ4os0y0PWlKZvFlzPoeLXHMFqhAjEf01+pP
 +mgQ==
X-Gm-Message-State: APjAAAWNv7jhvnYg/Bdw9Y5PxIKaZUpkjrbN2+N039lAGqR8bhGKYK3W
 /7mwBNhAK/rbV60HupsRvkY=
X-Google-Smtp-Source: APXvYqxEgQ3FMUcGf8WGHJW4wXZcDWRMRgUVb9y2dWwhkvXh49b+GxwAQ3nXnVqyKo2MlegRrqcf2A==
X-Received: by 2002:a63:ec03:: with SMTP id j3mr18981805pgh.325.1566191867962; 
 Sun, 18 Aug 2019 22:17:47 -0700 (PDT)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id o3sm19010087pje.1.2019.08.18.22.17.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 18 Aug 2019 22:17:47 -0700 (PDT)
From: Joel Stanley <joel@jms.id.au>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 0/2] watchdog: aspeed: Add support for ast2600
Date: Mon, 19 Aug 2019 14:47:36 +0930
Message-Id: <20190819051738.17370-1-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_221749_151732_D65DF1F4 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-watchdog@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

Here's a small patch series to enable the ast2600 watchdog.

v2 addresses Guenter's review.

Joel Stanley (1):
  dt-bindings: watchdog: Add ast2600 compatible

Ryan Chen (1):
  watchdog: aspeed: Add support for AST2600

 Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt | 1 +
 drivers/watchdog/aspeed_wdt.c                             | 4 +++-
 2 files changed, 4 insertions(+), 1 deletion(-)

-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
