Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 685001CFFA3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 22:42:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U0wAyuvoIMnyh++spfRR/n2kNLR0Qi7DYG3/Hj/ecqo=; b=JNLRnvfA8fY1Jr
	4ot2Wfi4lpN0YUo6ojg61nVPHvYPLrzfKrdgHhQjmXfBM1JURNJm2xsWvKZ8ZEprkDOikwOnhVAo8
	mITVgnuxCU+covOYs8Nh1qVG12l8jcCT3TSp0IufhbSGWlZblZoOgI+tYGX7xY4ltlf274o4ErBSG
	gFrX3VYhrP5aj7YqlPw8IHHgPM4NcSY9dq5jYvKNaim/pCv3gDWFC+cdHGzt6EINnJsPMeiiZEMBe
	PifShp/HscIX7ntgOC7FkBPiMZhj9IE2kprbBiSLpNtPpi508BEYzv1c+0FjlUlPULR+i13lInjCJ
	59YNv/MxTT52LLtp6vWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYbjN-0003D8-JJ; Tue, 12 May 2020 20:42:25 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYbj7-0003Ad-5P; Tue, 12 May 2020 20:42:11 +0000
Received: by mail-wr1-x443.google.com with SMTP id h17so8673241wrc.8;
 Tue, 12 May 2020 13:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+9XO0FA5+OxvrAlTecKxpp579ttmye5yGpESHyf1A2U=;
 b=Nj6zLJs6nd0U00Xs+SOwC1plu/0DD9UNZO3U9EXKG7cYT67FvzZXs1Z4DA14iXp1s6
 UVDiiSYjpQwfAPx4YnwOP192fzL6Qt86f5xdoOHQgAmGg/M6EEzzbGzMDg/nzAY+K6tS
 3ujKaYTc7UEmEr43LNHkpZw/6FWTca0iOjRg/fzZlN18sBpiq6r/ILkPFSaRi2WgHXvx
 SCGXl891UYsNop01EePFKoKCCb5gR/bymLMjqTRCLFAlY/myx6e/gSiOuU7xCrFIfSgL
 gnfezRgtTBW2v3Lo9vyS+BFZMP+WIF9ouHgBVphcak2PU8wgj6kTZrcxEdFuNZvVUMJW
 QI2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+9XO0FA5+OxvrAlTecKxpp579ttmye5yGpESHyf1A2U=;
 b=D83gch3BKXkOhlvAaVrk8WslCfe0yVDvGheGYfVrckVJrLG6V1NU8WJq1Klt7Zj2K8
 HdS4AxEdev25yPnqheUFq2KzJ6vY14UZz9c9pQ6dsZqGGTMbJ69VXGNZxXVv9U9IhLbO
 eKmr9uEpxnc+RBF6Y1gAqpaGW5NZXw3tfPi1XxlXqOAliWQRXiZ5oeTiGXthCwTVYCiT
 j6HsUZmQnLTiZnvyN4mYXHDupes4h+4BnmBgunRR2vgrXG3rHWdxijLwJSrWfpLMNIDc
 pwnqBVcueJdBXJDYYhA8Zyw7N7pwXiynqvqpR9Q4rm88RSwvHS89/XV4c9/BlR/rJY/n
 VADA==
X-Gm-Message-State: AGi0PubpzQbleTBnvVRc8dVgBfAfCFmzmH90CVm3RCbtmRKdyjBmd9FL
 tGG+zQxEDu0a12mXNCtI1qdrIAmf
X-Google-Smtp-Source: APiQypIS/PjJnXvs2oUOcR546PGB10S8ENdU9rM6LgDaoIL9TGnKgANcxSkR44uhtmQZeLAX3mL7cQ==
X-Received: by 2002:adf:f605:: with SMTP id t5mr26592353wrp.354.1589316127111; 
 Tue, 12 May 2020 13:42:07 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F137132E00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3713:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id a24sm32813210wmb.24.2020.05.12.13.42.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 13:42:06 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, linux-mmc@vger.kernel.org,
 ulf.hansson@linaro.org, robh+dt@kernel.org
Subject: [PATCH v7 0/2] Amlogic 32-bit Meson SoC SDHC MMC controller driver
Date: Tue, 12 May 2020 22:41:45 +0200
Message-Id: <20200512204147.504087-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_134209_231918_7BAEF0BB 
X-CRM114-Status: GOOD (  23.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, jbrunet@baylibre.com,
 linux-arm-kernel@lists.infradead.org, lnykww@gmail.com
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


Changes since v6 at [6]:
- both patches: dropped the clock #include from the dt-bindings as well
  as #clock-cells = <1> and the self-referencing clock inputs. Instead
  the driver will not be registering a clock provider anymore. The
  clock references are obtained using "clk_hw.clk" (thus not going
  through the dt-bindings anymore) as suggested in [7] until a better
  solution is implemented. A TODO comment is also in place so it's
  easier to find this temporary workaround when the new helper exists.
- dropped Rob's Reviewed-by because I modified the dt-bindings. schema
  validation still passes on my build machine.
- patch #2: dropped MMC_CAP_ERASE due to the following patch which is
  queued in mmc's -next: "mmc: host: Drop redundant MMC_CAP_ERASE"
- patch #2: fill all clk_{mux,divider,gate,hw} values in
  meson_mx_sdhc_register_clkc instead of using loops and two separate
  structs to make the code easier to read. Thanks to Jerome for the
  suggestion.
- I decided to keep all the Tested-by's because testing was smooth
  for me and none of the clock calculation formulas has changed (only
  the API how to obtain the clocks).

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
[6] https://patchwork.kernel.org/cover/11515603/
[7] https://lore.kernel.org/linux-clk/158870581453.26370.15255632521260524214@swboyd.mtv.corp.google.com/


Martin Blumenstingl (2):
  dt-bindings: mmc: Document the Amlogic Meson SDHC MMC host controller
  mmc: host: meson-mx-sdhc: new driver for the Amlogic Meson SDHC host

 .../bindings/mmc/amlogic,meson-mx-sdhc.yaml   |  68 ++
 drivers/mmc/host/Kconfig                      |  14 +
 drivers/mmc/host/Makefile                     |   1 +
 drivers/mmc/host/meson-mx-sdhc-clkc.c         | 158 +++
 drivers/mmc/host/meson-mx-sdhc.c              | 907 ++++++++++++++++++
 drivers/mmc/host/meson-mx-sdhc.h              | 141 +++
 6 files changed, 1289 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.yaml
 create mode 100644 drivers/mmc/host/meson-mx-sdhc-clkc.c
 create mode 100644 drivers/mmc/host/meson-mx-sdhc.c
 create mode 100644 drivers/mmc/host/meson-mx-sdhc.h

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
