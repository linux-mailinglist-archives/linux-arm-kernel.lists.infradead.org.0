Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 554131BCE15
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 23:03:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S/FGmSoCh50pCS+5YV6+A7VegeWiG8uXz2k+SuvYY1Y=; b=WtqGSA5FL2Mnls
	TGf/pNLbfzDzcmr3Qhu0TcHolBGo7q12K1SDt8dZk9tp7KOTIWWBGzvao04gZYvtTNwVdrWXkTtlE
	IBusufQndT0G90XOzpZAY6y/ZUlh4AvAS5Bzsc3DPmllz2zDsWaBJda4qCsd5u4A4Mib8lL0YSC3X
	VwQbCAMe1dqRFIQXnrVQrDMakrKIbEvjrAtjTZLYyeJ2XhHnHtsitNoQUHuIhgw5FLCPeMU5SJMHD
	bvK2/4kGeOAXCV/v84yhKRgJ3VldoI5O+R9mQsF7V2/foQ4sWe6SYRk1FFKPgY5c9DWTqbs7iP3b7
	PVUAR18b7zqyqMd/Q9Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTXNc-00068f-Bz; Tue, 28 Apr 2020 21:03:00 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTXNL-00067B-IB; Tue, 28 Apr 2020 21:02:45 +0000
Received: by mail-wm1-x342.google.com with SMTP id h4so277614wmb.4;
 Tue, 28 Apr 2020 14:02:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yw7EK7N4yEtnhbsKdiWnKZJJkNUJXPPLmqusKcDlWn4=;
 b=QDH3NZ0F1YoTWBY73XIwUv7DlugjsyVaIs90L9yRNBD6az0cxNSSg46PWsxfVAlK3c
 wx60nQOKxuG792Dg6HygS/qzgQa2DYC5fzq9qmx7P83nRozHSg+AYT8Q8yyAQIU4Qr+p
 kq5vjJVEs81+0jOqmNnaLSw0kuUvKwcHXg42HqGxfwPMzt+FA6bUzpENA54jJzJV4zOB
 LJDPUvqaHOArrRO/pltmFSzMLYIPpVlnrVHu1XAvl8LGTJ3lj0h2i+ic1+g9KgQT+FVD
 fsdGLLmjv+Uf4e1/h7N1hLj7P2iMniQTr26TSQ/pllrHgfBzU0gs87KAy6P0/97N/Oig
 p7EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yw7EK7N4yEtnhbsKdiWnKZJJkNUJXPPLmqusKcDlWn4=;
 b=rTNm0+LblQMYfyFe845iYeLJF/4lSwwSPbd+aqDUs8YT0xOCU3mFjJk5KuwEEM4q89
 DytKxjluNYStxuFZH7Uv5jk2s9Wblw9iwb40bMPTNpV+twAJk6FVU7dfmEojJE9sUHY6
 gtToj+IZUC+LtCPib+MkcoF1sLUQf3cnMs357aAw+iXQYrgI9q2uPSL/B4ogihuGOO+j
 /7l+xAYJYq85U33Nar51l/q02MPCn0nst2j9kp0tExNTOYkyOzZy5tcX50OHwSYDY+14
 40qlLcugI9pKWaw5bEokkCp6vP0HI6eKj10bARK3c3IZHd3qmZlv9K4LrtqhR28XuXhX
 WH2Q==
X-Gm-Message-State: AGi0PuYi4fSnayw7YjKWWwBjWol8/LiiEloFZ7eoutslINbMYIQMb9dN
 Ok+onTXsJimDowVf2tIpcZr2qeUij5j4bQ==
X-Google-Smtp-Source: APiQypID52osTOt/r+5vVSxSLHFg+GwS+r2Wh1XUO8jXqCNggdq8a97jXinVpVhbbc40v9q2qn+z4w==
X-Received: by 2002:a1c:dfc2:: with SMTP id w185mr6329402wmg.1.1588107760863; 
 Tue, 28 Apr 2020 14:02:40 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137142E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3714:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id x18sm4709243wmi.29.2020.04.28.14.02.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 14:02:40 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-mmc@vger.kernel.org,
 ulf.hansson@linaro.org
Subject: [PATCH v6 0/2] Amlogic 32-bit Meson SoC SDHC MMC controller driver
Date: Tue, 28 Apr 2020 23:02:27 +0200
Message-Id: <20200428210229.703309-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_140243_624137_535079A3 
X-CRM114-Status: GOOD (  20.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, jianxin.pan@amlogic.com, linux.amoon@gmail.com,
 linux-kernel@vger.kernel.org, yinxin_1989@aliyun.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, robh+dt@kernel.org,
 jbrunet@baylibre.com, linux-arm-kernel@lists.infradead.org, lnykww@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

this is the patchset for a driver for the Amlogic "SDHC" MMC controller
found on Meson6, Meson8, Meson8b and Meson8m2 SoCs.

The public S805 (Meson8b) datasheet has some documentation starting on
page 74: [0]

It's performance is still not as good as the driver from Amlogic's 3.10
kernel, but it does not corrupt data anymore (as RFC v1 did).

Special thanks to the people who supported me off-list - you are
amazing and deserve to be mentioned here:
- Xin Yin who helped me fix two more write corruption problems. I am
  hoping that he will reply with Reviewed-by, Tested-by and Bug-fixed-by
- Jianxin Pan for sharing some of the internal workings of this MMC
  controller with me
- Wei Wang for spotting the initial write corruption problem and helping
  test this driver on his board. I have his permission to add his
  Tested-by (off-list, he's Cc'ed so if there's any problem he can speak
  up)


Changes since v5 at [5] (thanks to Ulf and Jerome for the feedback):
- changed copyright year to 2020
- move register #defines to a separate header file
- drop unused include linux/clk-provider.h from meson-mx-sdhc.c
- used #defines for regmap_read_poll_timeout timeout/sleep values
- set MMC_CAP_WAIT_WHILE_BUSY
- move the clock controller code to mmc/host/meson-mx-sdhc-clkc.c and
  don't register a separate platform_device for it. This also means
  that the driver switched from clk_regmap to the standard
  clk_{divider,gate,mux}_ops
- dropped ".index = -1" for clk_parent_data with .fw_name
- use CLK_SET_RATE_PARENT on all leaf clocks and drop
  CLK_SET_RATE_GATE
- switch from parent_data.name to parent_hws
- use fallthrough; instead of fallthrough comment
- added Anand's Tested-by - thank you!
- I decided to keep all Tested-by and Reviewed-by because they were
  only for the MMC controller part and I have barely touched that with
  this update.
- Ulf asked if the timeout can be shortened. I believe it can but I
  have no documentation for it. Thus I need a test-case to see if my
  assumptions are correct - thus I have not addressed this in v6 yet

Changes since v4 at [4]:
- move the four clkin clock inputs to the start of the clock-names list
  as suggested by Rob, affects patch #1
- fixed #include statement in dt-bindings example in patch #1

Changes since v3 at [3]:
- split the clock bits into a separate clock controller driver because
  of two reasons: 1) it keeps the MMC controller driver mostly clean of
  the clock bits 2) the pure clock controller can use
  devm_clk_hw_register() (instead of devm_clk_register(), which is
  deprecated) and the MMC controller can act as a pure clock consumer.
  This also affects the dt-bindings which is why I dropped Rob's
  Reviewed-by. Thanks to Ulf for the suggestions

Changes since v2 at [2]:
- rebased on top of v5.5-rc1
- added Rob's and Xin Yin's Reviewed-by and Tested-by (thank you!)
- (note: Kevin had v2 of this series in -next for a few days so the
   build test robots could play with it. I haven't received any negative
   feedback in that time)

Changes since RFC v1 at [1]:
- don't set MESON_SDHC_MISC_MANUAL_STOP to fix one of three write
  corruption problems. the out-of-tree 3.10 "reference" driver doesn't
  set it either
- check against data->flags instead of cmd->flags when testing for
  MMC_DATA_WRITE as spotted by Xin Yin (many thanks!). This fixes
  another write corruption problem
- clear the FIFOs after successfully transferring data as suggested by
  Xin Yin (many thanks!). This is what the 3.10 driver did and fixes yet
  another write corruption problem
- integrate the clock suggestions from Jianxin Pan so the driver is now
  able to set up the clocks correctly for all known cases. documentation
  is also added to the patch description. Thank you Jianxin for the
  help!
- set the correct max_busy_timeout as suggested by Jianxin Pan (thanks!)
- convert the dt-bindings to .yaml (which is why I didn't add Rob's
  Reviewed-by)
- switch to struct clk_parent_data as part of newer common clock
  framework APIs to simplify the clock setup
- dropped CMD23 support because it seems to hurt read and write
  performance by 10-20% in my tests. it's not clear why, but for now we
  can live without this.
- use devm_platform_ioremap_resource instead of open-coding it


[0] https://dn.odroid.com/S805/Datasheet/S805_Datasheet%20V0.8%2020150126.pdf
[1] https://patchwork.kernel.org/cover/11035505/
[2] http://lists.infradead.org/pipermail/linux-amlogic/2019-November/014576.html
[3] https://patchwork.kernel.org/cover/11283179/
[4] https://patchwork.kernel.org/cover/11329017/
[5] https://patchwork.kernel.org/cover/11463341/


Martin Blumenstingl (2):
  dt-bindings: mmc: Document the Amlogic Meson SDHC MMC host controller
  mmc: host: meson-mx-sdhc: new driver for the Amlogic Meson SDHC host

 .../bindings/mmc/amlogic,meson-mx-sdhc.yaml   |  83 ++
 drivers/mmc/host/Kconfig                      |  14 +
 drivers/mmc/host/Makefile                     |   1 +
 drivers/mmc/host/meson-mx-sdhc-clkc.c         | 188 ++++
 drivers/mmc/host/meson-mx-sdhc.c              | 916 ++++++++++++++++++
 drivers/mmc/host/meson-mx-sdhc.h              | 138 +++
 .../dt-bindings/clock/meson-mx-sdhc-clkc.h    |   8 +
 7 files changed, 1348 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.yaml
 create mode 100644 drivers/mmc/host/meson-mx-sdhc-clkc.c
 create mode 100644 drivers/mmc/host/meson-mx-sdhc.c
 create mode 100644 drivers/mmc/host/meson-mx-sdhc.h
 create mode 100644 include/dt-bindings/clock/meson-mx-sdhc-clkc.h

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
