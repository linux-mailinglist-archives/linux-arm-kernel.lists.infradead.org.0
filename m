Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF4B1AE399
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 19:17:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qoG7NT8tKIFn6pN0rzuH707dOVJhoclh0ERUrPcvDy0=; b=oBd
	r96it/39bM6rAmx9X1nE/bIS9K2JTZsY/Ks0cyA71MaqsDkfBQuzdyQzdqSkTLErJjwrMwdkpvo+U
	RQCauSQmACBuKyTth3vBRJdxy9IpJeSNy8VXBdTQZBTWyNd4Jt5TGs9SaN1zrDJD2yFdpp96ClRTY
	bh/BrYFpysw0THWy37rLM5duXZ6mBfGITrKrOZMWqLfVzhqo/wdcdOw2hGETsmcjTVJUuZMQPwmAW
	GoIaUdGXP7Xh89FFtf1XQNrcVfHqOKP4ySiXXfJvV+jxtd+7JqTFHYwJ24bsa/yl8kY1CQO/EKEAd
	ih2/zEOHSo7JXIzFdo2yVY8UabgXN4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPUcW-0005wU-Gf; Fri, 17 Apr 2020 17:17:40 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPUcM-0005um-0n
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 17:17:34 +0000
Received: by mail-pl1-x641.google.com with SMTP id w3so1200887plz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 10:17:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=R7E0aNk/LfcTiLOreMSD++a1mD66h+1oL48uOEuzPdM=;
 b=j3hUtGLtl1Q+nEdhomlImHNCXIlnMyQ5QdKRJpfBFOQeFzXrRe3UZry82NcDwArCPp
 ye6zWGsI4yDFWJuMBP0pACAR4YSKaJzaUezccAd+24kcr24GagWpoFJt4Jpxz1JqvgDs
 gUnm+NS7VvS9QyhXxFQgbk5nHA9/OlCefqlgKys4RL/dec7P/57A3n3mexXAKFni9q92
 RrZgwyR4vUEInfVh6Yhws3HnLuRCXM6te5BNzBlbnNmdR6tgXZXu3pQVrJeNyNBxdGei
 pvvCu72Lq24MCxnwDkS2hgGgeDsGqMNVNd+rY9JkXXyTkVMUrC+d/Wyvx11qoIgNamLu
 qEKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=R7E0aNk/LfcTiLOreMSD++a1mD66h+1oL48uOEuzPdM=;
 b=lXOlRjmFlcXA+gP3uPRZDCHOZoU90vCpSTXM1VEqD5cHFYOWjYYcCkXir8oSgyrv1z
 juVKvfL/1t4yuZsomuJQlXexbet2pTw7KKvjQA6vNSCTeW7GUv7Gmc46tY178Wdt/l08
 zP/Ot0CP+qTE0g/mWe73xRObuWyBqK96K81XdTnRKXw9J6Pv4d02mgdZty1iHHJ58Ezp
 t8xkR8Biw8UFJE8Dehr5d4MZV5dxL81NvUhfoHsGFonZkLbZrYVEhhOOYeTyRM7UxAeY
 6lpRQUaD4wNje9vrENMsq7UevOnTKojTlufnuvrf9hD4e1V1DUf/MiNXJL+6VRwM1F4t
 9nTA==
X-Gm-Message-State: AGi0PuaFDEnggw0bmhWzGoOL1UhXFMQwAzUwhBhLQJkTYB+dn6hh60/j
 +Kvp+X3PwYwI2f6Ano+DjdA=
X-Google-Smtp-Source: APiQypKrrTekn1sRLMFlMbYDLm1aW3dD/mTGVQLrxHYgMfPbYvDouT2c7LxHWO9gXRb+4JZ61BnJzQ==
X-Received: by 2002:a17:90a:2365:: with SMTP id
 f92mr5640329pje.117.1587143848729; 
 Fri, 17 Apr 2020 10:17:28 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id mq18sm6762545pjb.6.2020.04.17.10.17.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 10:17:27 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 1/1] Broadcom devicetree fixes for 5.7
Date: Fri, 17 Apr 2020 10:17:25 -0700
Message-Id: <20200417171725.1084-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_101730_068337_1CE76A6F 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, olof@lixom.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.7/devicetree-fixes

for you to fetch changes up to 90444b958461a5f8fc299ece0fe17eab15cba1e1:

  ARM: dts: bcm283x: Disable dsi0 node (2020-04-16 13:58:02 -0700)

----------------------------------------------------------------
This pull request contains Broadcom ARM-based SoCs Device Tree fixes for
5.7, please pull the following:

- Nicolas provides a fix for 55c7c0621078 ("ARM: dts: bcm283x: Fix vc4's
  firmware bus DMA limitations") which missed adding proper
  #address-cells and #size-cells properties and he also disables the DSI
  node which should have been disabled by default but was not.

----------------------------------------------------------------
Florian Fainelli (1):
      Merge tag 'tags/bcm2835-dt-fixes-2020-03-27' into devicetree/fixes

Nicolas Saenz Julienne (2):
      ARM: dts: bcm283x: Add cells encoding format to firmware bus
      ARM: dts: bcm283x: Disable dsi0 node

 arch/arm/boot/dts/bcm2835-rpi.dtsi | 3 +++
 arch/arm/boot/dts/bcm283x.dtsi     | 1 +
 2 files changed, 4 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
