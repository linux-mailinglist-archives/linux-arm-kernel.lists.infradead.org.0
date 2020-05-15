Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 673F81D46CB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 09:11:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E4VzJ3mDqv7S4oBYHoZbQEUnLYEB5U2Y99I1iSbeAdA=; b=F90ifTr68M4Ymc
	4PgmgUNGTF0+QE5CrQwJmcU3x/caN/gdVrdpRRoxz1AShjU82FTAZzZSQqoxobRwXOz6j3Kr5vc1V
	+qLhwYFsRhEkRYjYmBoXlwBC2j4gk6ifqQPMyCeMJw3Pgr4VXNkygt2ZxZ4lGNaRq1B96jblCa51j
	JxqtaxcQumDpvS1dROreg/ycm6K67vvbGmT/SB5kCSvv4wDdZATxT8Nvjx7GrG/IjNh8PEW4CWl6n
	3Ztrr9uMrZFYJTTefftXlywSlpeV8FZiM4c3VU09sIczCd9J/kza4wrSFgVuASvTfalAj8pBIKW6J
	kF4y7w9wHAdFi5NfDouQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZUUf-0000aj-M6; Fri, 15 May 2020 07:10:53 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZUTs-0006K2-Gp
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 07:10:08 +0000
Received: by mail-vs1-xe43.google.com with SMTP id a5so635556vsm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 00:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S1KNisJsCqChNlKv09ipjuXjD/t4NKsjUgukAjLqwgo=;
 b=KF9Evebmgk0IOkagk7/RIFUBMr+cPh1F1LPbkWTaNsyUq6b8RMhamq3NMmj2URio+7
 +frWZsPYuuQBDWNPFG7eOAsO4HkwALGPJ1tpDzAqi7mZP6Y6amz/LU/lFbChXoGq5u5t
 KbXwuwMjFBMWvu2nPM+eJrhDKuz+7NIpqjdfjS1khs/WHntHd1pW7qgK6i+wbNbs/9lT
 xFLoXUMCgP+Bz8GgRF5UIehxFkG8irzYVxPNfRjighgWUtQxPJFhGm2gUIu0zje9S/wG
 5bFaq1hDKWAFT3sxy1xy3aoNxIJ3N9ozNfiBsQkPZyIMl/OxORRYKAd6m3nUE02TbaNR
 0JeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S1KNisJsCqChNlKv09ipjuXjD/t4NKsjUgukAjLqwgo=;
 b=Lg0R+RhcSnF3MLHiGbPsuUyseYikuiNZD9dDMUBmZHnP/oCRCxBi9Pcq9wOArKKAVo
 Os26+o/YdWmLql1CdKeQ0lL5OgMaAXC68lkdClz18vt8C0OHrbSrGfrb3EZvlmP841EL
 wdhFasCVfCOe/75mqoSisHPEInC220WHBKmfjOfAC3g0etidaLdPvVDRmMmCijCogZkj
 OK/WbBr4FeTMsjs6yV+mwpOhnrC5CRiRxYR7a8WstZS/aH9GmiI9rk35Q2ja1hU54AK0
 2PV2CfvOht2XmuNfTK7bXn02Q4mW1x7Cp6asB7yod20bENLfYsDLZNqn5A0Yaptp6KuG
 zSGQ==
X-Gm-Message-State: AOAM530KgBpDX3qVZQUc6pdb1blqKThEYZXMnS0xpb2FcVgfQgDSqij6
 idgHhfyau6Vk4npM237Gkt44RIsM1mPjUALnpR+DqQ==
X-Google-Smtp-Source: ABdhPJygnTdNDgbwU5IjwBpTpT+E94UNhD0unulxzXkizTZB4BYj5ClHbIbFXY2A/54DrC6ynz4HrgCg7fBD01ytnGc=
X-Received: by 2002:a67:8b46:: with SMTP id n67mr1453605vsd.35.1589526602387; 
 Fri, 15 May 2020 00:10:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200512204147.504087-1-martin.blumenstingl@googlemail.com>
In-Reply-To: <20200512204147.504087-1-martin.blumenstingl@googlemail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 15 May 2020 09:09:25 +0200
Message-ID: <CAPDyKFrTxcCy6Py9i4kzgy7gcvpg0dVn-tbuNn-jiKhW=wh4bg@mail.gmail.com>
Subject: Re: [PATCH v7 0/2] Amlogic 32-bit Meson SoC SDHC MMC controller driver
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_001004_617207_7BCC0F42 
X-CRM114-Status: GOOD (  36.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: DTML <devicetree@vger.kernel.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Anand Moon <linux.amoon@gmail.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 yinxin_1989@aliyun.com, Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, lnykww@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 12 May 2020 at 22:42, Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> Hello,
>
> this is the patchset for a driver for the Amlogic "SDHC" MMC controller
> found on Meson6, Meson8, Meson8b and Meson8m2 SoCs.
>
> The public S805 (Meson8b) datasheet has some documentation starting on
> page 74: [0]
>
> It's performance is still not as good as the driver from Amlogic's 3.10
> kernel, but it does not corrupt data anymore (as RFC v1 did).
>
> Special thanks to the people who supported me off-list - you are
> amazing and deserve to be mentioned here:
> - Xin Yin who helped me fix two more write corruption problems. I am
>   hoping that he will reply with Reviewed-by, Tested-by and Bug-fixed-by
> - Jianxin Pan for sharing some of the internal workings of this MMC
>   controller with me
> - Wei Wang for spotting the initial write corruption problem and helping
>   test this driver on his board. I have his permission to add his
>   Tested-by (off-list, he's Cc'ed so if there's any problem he can speak
>   up)
>
>
> Changes since v6 at [6]:
> - both patches: dropped the clock #include from the dt-bindings as well
>   as #clock-cells = <1> and the self-referencing clock inputs. Instead
>   the driver will not be registering a clock provider anymore. The
>   clock references are obtained using "clk_hw.clk" (thus not going
>   through the dt-bindings anymore) as suggested in [7] until a better
>   solution is implemented. A TODO comment is also in place so it's
>   easier to find this temporary workaround when the new helper exists.
> - dropped Rob's Reviewed-by because I modified the dt-bindings. schema
>   validation still passes on my build machine.
> - patch #2: dropped MMC_CAP_ERASE due to the following patch which is
>   queued in mmc's -next: "mmc: host: Drop redundant MMC_CAP_ERASE"
> - patch #2: fill all clk_{mux,divider,gate,hw} values in
>   meson_mx_sdhc_register_clkc instead of using loops and two separate
>   structs to make the code easier to read. Thanks to Jerome for the
>   suggestion.
> - I decided to keep all the Tested-by's because testing was smooth
>   for me and none of the clock calculation formulas has changed (only
>   the API how to obtain the clocks).
>
> Changes since v5 at [5] (thanks to Ulf and Jerome for the feedback):
> - changed copyright year to 2020
> - move register #defines to a separate header file
> - drop unused include linux/clk-provider.h from meson-mx-sdhc.c
> - used #defines for regmap_read_poll_timeout timeout/sleep values
> - set MMC_CAP_WAIT_WHILE_BUSY
> - move the clock controller code to mmc/host/meson-mx-sdhc-clkc.c and
>   don't register a separate platform_device for it. This also means
>   that the driver switched from clk_regmap to the standard
>   clk_{divider,gate,mux}_ops
> - dropped ".index = -1" for clk_parent_data with .fw_name
> - use CLK_SET_RATE_PARENT on all leaf clocks and drop
>   CLK_SET_RATE_GATE
> - switch from parent_data.name to parent_hws
> - use fallthrough; instead of fallthrough comment
> - added Anand's Tested-by - thank you!
> - I decided to keep all Tested-by and Reviewed-by because they were
>   only for the MMC controller part and I have barely touched that with
>   this update.
> - Ulf asked if the timeout can be shortened. I believe it can but I
>   have no documentation for it. Thus I need a test-case to see if my
>   assumptions are correct - thus I have not addressed this in v6 yet
>
> Changes since v4 at [4]:
> - move the four clkin clock inputs to the start of the clock-names list
>   as suggested by Rob, affects patch #1
> - fixed #include statement in dt-bindings example in patch #1
>
> Changes since v3 at [3]:
> - split the clock bits into a separate clock controller driver because
>   of two reasons: 1) it keeps the MMC controller driver mostly clean of
>   the clock bits 2) the pure clock controller can use
>   devm_clk_hw_register() (instead of devm_clk_register(), which is
>   deprecated) and the MMC controller can act as a pure clock consumer.
>   This also affects the dt-bindings which is why I dropped Rob's
>   Reviewed-by. Thanks to Ulf for the suggestions
>
> Changes since v2 at [2]:
> - rebased on top of v5.5-rc1
> - added Rob's and Xin Yin's Reviewed-by and Tested-by (thank you!)
> - (note: Kevin had v2 of this series in -next for a few days so the
>    build test robots could play with it. I haven't received any negative
>    feedback in that time)
>
> Changes since RFC v1 at [1]:
> - don't set MESON_SDHC_MISC_MANUAL_STOP to fix one of three write
>   corruption problems. the out-of-tree 3.10 "reference" driver doesn't
>   set it either
> - check against data->flags instead of cmd->flags when testing for
>   MMC_DATA_WRITE as spotted by Xin Yin (many thanks!). This fixes
>   another write corruption problem
> - clear the FIFOs after successfully transferring data as suggested by
>   Xin Yin (many thanks!). This is what the 3.10 driver did and fixes yet
>   another write corruption problem
> - integrate the clock suggestions from Jianxin Pan so the driver is now
>   able to set up the clocks correctly for all known cases. documentation
>   is also added to the patch description. Thank you Jianxin for the
>   help!
> - set the correct max_busy_timeout as suggested by Jianxin Pan (thanks!)
> - convert the dt-bindings to .yaml (which is why I didn't add Rob's
>   Reviewed-by)
> - switch to struct clk_parent_data as part of newer common clock
>   framework APIs to simplify the clock setup
> - dropped CMD23 support because it seems to hurt read and write
>   performance by 10-20% in my tests. it's not clear why, but for now we
>   can live without this.
> - use devm_platform_ioremap_resource instead of open-coding it
>
>
> [0] https://dn.odroid.com/S805/Datasheet/S805_Datasheet%20V0.8%2020150126.pdf
> [1] https://patchwork.kernel.org/cover/11035505/
> [2] http://lists.infradead.org/pipermail/linux-amlogic/2019-November/014576.html
> [3] https://patchwork.kernel.org/cover/11283179/
> [4] https://patchwork.kernel.org/cover/11329017/
> [5] https://patchwork.kernel.org/cover/11463341/
> [6] https://patchwork.kernel.org/cover/11515603/
> [7] https://lore.kernel.org/linux-clk/158870581453.26370.15255632521260524214@swboyd.mtv.corp.google.com/
>
>
> Martin Blumenstingl (2):
>   dt-bindings: mmc: Document the Amlogic Meson SDHC MMC host controller
>   mmc: host: meson-mx-sdhc: new driver for the Amlogic Meson SDHC host
>
>  .../bindings/mmc/amlogic,meson-mx-sdhc.yaml   |  68 ++
>  drivers/mmc/host/Kconfig                      |  14 +
>  drivers/mmc/host/Makefile                     |   1 +
>  drivers/mmc/host/meson-mx-sdhc-clkc.c         | 158 +++
>  drivers/mmc/host/meson-mx-sdhc.c              | 907 ++++++++++++++++++
>  drivers/mmc/host/meson-mx-sdhc.h              | 141 +++
>  6 files changed, 1289 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mmc/amlogic,meson-mx-sdhc.yaml
>  create mode 100644 drivers/mmc/host/meson-mx-sdhc-clkc.c
>  create mode 100644 drivers/mmc/host/meson-mx-sdhc.c
>  create mode 100644 drivers/mmc/host/meson-mx-sdhc.h
>

Applied for next, thanks!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
