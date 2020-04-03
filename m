Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D32119CFC7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 07:29:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZHfuc1yH9Rb1JDoh84J/HAmxVqhl1DapZTCX0swTR/g=; b=HkevyevZ5OpJO3
	sTgIqa2h7JEWKzODG5eeJsHTpOdoVUPvRW3v1j7/vJzmB/0DdHThbU/GpVy4upQeX1PFAj7MWaHzj
	3rdS/mlEn+bHKWK2FRIYFcSMyf7rCxODpkmu+IdSuDrPXKt3uhsFDBqCI7Aon5z34SSS17chxfLcZ
	IKeb6fo3VXXiaU1QKZt9ti8AqPpDGVrAfpyc6HATgzDKVT+rdjaHfiVCydQiJ6KwkBIWlXpRTNWgy
	uCDusctyJcwqHZhzO9aR46YoRguBHa1Qk9cHd9AMe2RarQWRcYvwRj9zjvPES/DsedSWYaX7j+lT/
	l+uGmhWnQ3h/7XnxVM5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKEtS-00042e-Up; Fri, 03 Apr 2020 05:29:26 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKEtM-00040g-BT
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 05:29:22 +0000
Received: by mail-pf1-x442.google.com with SMTP id a24so2938941pfc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 22:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TWUVEWHfILYD4mLoLxiKPBxfXnp3kNrR0NuQf2K0ahQ=;
 b=Xi5KMTsZkOO7QTHFIZYuRuEr2Z/+6lNWa58ajHP5SQHleic4V+fa3OVt47Iv2/Ytlo
 AXpJAyiP3yJ3dlaDdpHDhDZFU6cTeYM5BpcgJRXE6fBovCc7bjdG4NRusRfkdLgkky0y
 VuKqJHgsxIvuagj4lAOrlp9zMnQUOMncAdPIA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TWUVEWHfILYD4mLoLxiKPBxfXnp3kNrR0NuQf2K0ahQ=;
 b=cIyNlHST2fyOf5J7/psz8mIaOERxeND+FZDW69Sa8IPiy29irsPqaOz09Wyp8Yv8Fp
 lzD/75Nv8DC1btT0pgkYvEf3WtMvrzkD6eX9BLrA/jQu4aWDZLWvr4ErTpQSR2OiI7cU
 SJB4OV8clNmLg4NnGmD7Jc2xI++UwOM0Y9FCCvkeGphWFGIzneFpclKFkM4yadjZCyVJ
 x5O+7x2jIqitG5VjU/PtEIV1KfM/qBrUXvg/iALeAV+UydBpCE9Gy7fRgNkFS0eS7Nq7
 2FR3asKPAF9i2DL/AjlFVFUf/powsBC+0+a+ly9tSsydLNX05Cn66BRY04EaeVKmzNQo
 QmJg==
X-Gm-Message-State: AGi0PuapwOtdpzw6wbFv8oRuCQX8Jg/F9wtu2JBLKSzJnqS2d2Ty2XXZ
 k4Dt1W66er3abjukBNtpFkYmSA==
X-Google-Smtp-Source: APiQypJwFGVlMhKNjzHxxikpLJzTjv9S0yp8wd3gigfUtQE9RxnY+jxENnaohkQ5QkAddaxMxtczTg==
X-Received: by 2002:aa7:961c:: with SMTP id q28mr7020119pfg.177.1585891755586; 
 Thu, 02 Apr 2020 22:29:15 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:1105:3e8a:838d:e326])
 by smtp.gmail.com with ESMTPSA id c21sm4451578pgn.84.2020.04.02.22.29.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Apr 2020 22:29:15 -0700 (PDT)
From: Evan Benn <evanbenn@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 0/2] Add a watchdog driver that uses ARM Secure Monitor
 Calls.
Date: Fri,  3 Apr 2020 16:28:58 +1100
Message-Id: <20200403052900.258855-1-evanbenn@chromium.org>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_222920_421501_3837E16D 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 xingyu.chen@amlogic.com, Rob Herring <robh@kernel.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Anson Huang <Anson.Huang@nxp.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Evan Benn <evanbenn@chromium.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Vinod Koul <vkoul@kernel.org>,
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
  watchdog: Add new arm_smd_wdt watchdog driver

 .../bindings/watchdog/arm-smc-wdt.yaml        |  30 +++
 MAINTAINERS                                   |   7 +
 arch/arm64/configs/defconfig                  |   1 +
 drivers/watchdog/Kconfig                      |  13 ++
 drivers/watchdog/Makefile                     |   1 +
 drivers/watchdog/arm_smc_wdt.c                | 181 ++++++++++++++++++
 6 files changed, 233 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/watchdog/arm-smc-wdt.yaml
 create mode 100644 drivers/watchdog/arm_smc_wdt.c

-- 
2.26.0.292.g33ef6b2f38-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
