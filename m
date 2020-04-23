Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5001B53BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 06:41:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+gtm+v2m6aOS6NnzCvQxXVflOxWoEjxDLGWi4snqK4I=; b=qM/qJwR97a1FdC
	M8Y0OfGgVD/vrPd68lIR5BxtJ628cnaz3/MTlLBQ9JI63btMOsqQy+TOFpm5oALBmrLn2A9AOQHFZ
	XNnNrnx/fetjmTUuYJ10uRYrMO6hbUt0IovsvtiZSt1X3rOMK7WlQfWnD6E3IRNgPzZNk//H3cpDb
	XL1Ztp6/xhZicj66ZCL8AZM9Y4CTUrgAR9PAXN7ehUZsytGcSwi1cxKn9Glx4p0681d0G1M++3ubi
	JZW0H3+w+e0/xyxww/CacyGlv2hzwu4+Jp0eoj4xtsvaibumMwSHefL5xTTNTcAEaJ71uiXfGh/4k
	HBRjSt15twn5/J2XQk/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRTfZ-0000Is-Qe; Thu, 23 Apr 2020 04:41:01 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRTfS-0000H1-Bq
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 04:40:57 +0000
Received: by mail-pg1-x541.google.com with SMTP id j7so2251273pgj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 21:40:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZS/LLxJx1Ds3cx4GyxEdNHynphtX9//TxQ2D60w281c=;
 b=gYhBQHtg6aVgFNpAsuZicqx3KgF2/EI40v9gzc+TTBaO0INthZs4oK+6OZXVHVVtPe
 tPKKq9v1HCjoEgO5iaf0wkIiVty4kBHme2dDPZddnnYYIlh5/960j2SdgVnZtDMaofDG
 eXV23e91++ocupsga5mbViaM8WsQYNSK8c1HE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZS/LLxJx1Ds3cx4GyxEdNHynphtX9//TxQ2D60w281c=;
 b=VGSDqHQfAztq57oBIA5TRvXF6QG4SPITCCuE6P17BiS28mMrl8EuBajkj7VeI6OFns
 a3FPvIoCzMfAE+4tShHdl86ltRQbQFhTPmIVcOeEmZDR0ZmFcQvF4SW0AjR157KoDStc
 yvh/TmrpYsMRSnMqdeghUgCMLDnz0wARvL05veaIzQvKHfWZzfSV3FdftKSxnJSw5wZ/
 1+nUOWm05fw5d+00U33KAaMeEr9vb2usY6C+hY9rRjJsmIPhL7sazzzZt7Zn29jin5Jf
 NQGNi2jHRjj4cMWSdbhr2W0ZqGQqpEEZms4qYTtIjEkcHgMjH1BFwTQFhvyCUQ1vZ9EJ
 h0GQ==
X-Gm-Message-State: AGi0PuZ/+vsbub1ZPkVWgYkd6tsZ4GrNs60Gg1BgPjf9xyUsHvQD91dT
 3j/kjSsfe00tSw50AS1qzNL33w==
X-Google-Smtp-Source: APiQypLI+7/YssjfEAqA7mqNn/1Q292p/7jx+m+Js0S3rpVk2pmi9WqX7DsXMBWP/y1GcYjx6h81JA==
X-Received: by 2002:a62:d104:: with SMTP id z4mr2035568pfg.26.1587616850973;
 Wed, 22 Apr 2020 21:40:50 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:1105:3e8a:838d:e326])
 by smtp.gmail.com with ESMTPSA id w13sm1174046pfn.192.2020.04.22.21.40.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Apr 2020 21:40:50 -0700 (PDT)
From: Evan Benn <evanbenn@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v5 0/2] Add a watchdog driver that uses ARM Secure Monitor
 Calls.
Date: Thu, 23 Apr 2020 14:40:34 +1000
Message-Id: <20200423044036.234578-1-evanbenn@chromium.org>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_214054_430491_B181DA2C 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 xingyu.chen@amlogic.com, Rob Herring <robh@kernel.org>,
 Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Evan Benn <evanbenn@chromium.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Li Yang <leoyang.li@nxp.com>,
 Olof Johansson <olof@lixom.net>, jwerner@chromium.org,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is currently supported in firmware deployed on oak, hana and elm mt8173
chromebook devices. The kernel driver is written to be a generic SMC
watchdog driver.

Arm Trusted Firmware upstreaming review:
    https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/3405

Patch to add oak, hana, elm device tree:
    https://lore.kernel.org/linux-arm-kernel/20200110073730.213789-1-hsinyi@chromium.org/
I would like to add the device tree support after the above patch is
accepted.

Changes in v5:
- Change compatible to arm,smc-wdt
- Make timeleft return 0 on error
- Use type punning on smc_func_id to save an alloc
- Change compatible to arm,smc-wdt

Changes in v4:
- Add arm,smc-id property
- Get smc-id from of property
- Return a1 instead of a0 in timeleft

Changes in v3:
- Change name back to arm
- Add optional get_timeleft op
- change name to arm_smc_wdt

Changes in v2:
- Change name arm > mt8173
- use watchdog_stop_on_reboot
- use watchdog_stop_on_unregister
- use devm_watchdog_register_device
- remove smcwd_shutdown, smcwd_remove
- change error codes

Evan Benn (1):
  dt-bindings: watchdog: Add ARM smc wdt for mt8173 watchdog

Julius Werner (1):
  watchdog: Add new arm_smc_wdt watchdog driver

 .../bindings/watchdog/arm-smc-wdt.yaml        |  36 ++++
 MAINTAINERS                                   |   7 +
 arch/arm64/configs/defconfig                  |   1 +
 drivers/watchdog/Kconfig                      |  13 ++
 drivers/watchdog/Makefile                     |   1 +
 drivers/watchdog/arm_smc_wdt.c                | 189 ++++++++++++++++++
 6 files changed, 247 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/watchdog/arm-smc-wdt.yaml
 create mode 100644 drivers/watchdog/arm_smc_wdt.c

-- 
2.26.2.303.gf8c07b1a785-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
