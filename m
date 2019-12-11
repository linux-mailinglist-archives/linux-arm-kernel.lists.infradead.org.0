Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCDE11BD14
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 20:33:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RiGlLZ9UimRX1rnUPgT4fHvDDLvgU/s6AhxMbLsExEI=; b=iOmWZNC5DPqNRM
	ahNM8Z2doJO/uDPP0EA8Lg+RAPQiVIBLm5TKIihg1rVPgQTOC4WjLRBXl98LE6XZppiPySpECwWlL
	JSwXz0lbhCadWg8zohG+yqimrvxrA/mHUU2VB6y+2kAHpkrs11VAPFhkIM9yJh5GwiKQP8Bkc0tXd
	HEobUHG9JmJ0GQE5Kpbz2CM+WqV4uRfCQdKr3AYajAzc4jJMbm4gw/z6v1eZw8C6t70etaT+RU6WV
	/yEJ13UhaNWmEd4HQCA//MtICf8i9Dac3NlDX0J+y8uNRNZi6g+SxvUAtGIpvmQtscyDeYN4f6UYw
	hUk3lIKeon4mNJJ5dxwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7jk-0007Z0-Hz; Wed, 11 Dec 2019 19:33:29 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7jZ-0007Y4-Mm
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 19:33:19 +0000
Received: by mail-lj1-x241.google.com with SMTP id c19so25311397lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 11:33:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mCFBeOM7voY1Ap11AuqjB0+8nGe8UCHSkrpkRbOs5Ew=;
 b=mgYXhIwqY2wQSccMDOUbOyikGEbtRMsAkjSRmXtyRnv6J8O+j3l4+72bkVAO4tN+E/
 uBM2uS703083d5xdjOFFu/1f0HUidbSIDLHr5yEXBiadR1mWfxqz6masOyEvq9v37Jzq
 wyqX1KqDlHSwLc9aIgjNvp8sZBRhDw3/Fydpw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mCFBeOM7voY1Ap11AuqjB0+8nGe8UCHSkrpkRbOs5Ew=;
 b=RO3O2PqTyM9xJqIr+7jU53rw/X8gDndPX9vbwhm55j87oWIAuLR6gC+iMBw37ayuUA
 bVu5/B8Qo8cBPg0mLdTXPOPvOMe+b2LK5YbnowFzUC+mTimysTE1B6ag2E5xGWwk8CPG
 ptD4tZZjOmoltztnRhyTliNWdx9R96chZaY7ECXDP3xZaogo7rmG9Jv3vmjlVuXVrKPo
 rHx4ReWCHuvBD7sVxEM7BhmzjoMd4ucd9/DvXj1uhNjdkOi0eBVE115nbC75vm+B2UG3
 xnG90JsQgjTEsnSpPFkHm8MNVthReZz8vZrcWYr+r+Mv70tAG6J6cEbH++BeSHEeAT0I
 pXDg==
X-Gm-Message-State: APjAAAUDF7/XfHhDoXfJNGRF+wg9FIrlGIjiGZ7/dpExc3B0ZaQ4dZ8Q
 FsHXmlgHFfQXwlBtuVyoXNoyqZ0tzBw=
X-Google-Smtp-Source: APXvYqypQT7fEeO8zJFB1QXvOlGeyH9E0tkv+jLcZjoO9rma7AuVBIdH3iYxfCpxLJWZ8d22wRWoHA==
X-Received: by 2002:a2e:a163:: with SMTP id u3mr3068292ljl.13.1576092795205;
 Wed, 11 Dec 2019 11:33:15 -0800 (PST)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com.
 [209.85.167.46])
 by smtp.gmail.com with ESMTPSA id a9sm1675349lfk.23.2019.12.11.11.33.14
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Dec 2019 11:33:14 -0800 (PST)
Received: by mail-lf1-f46.google.com with SMTP id n25so17668979lfl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 11:33:14 -0800 (PST)
X-Received: by 2002:ac2:52a3:: with SMTP id r3mr3390323lfm.189.1576092793705; 
 Wed, 11 Dec 2019 11:33:13 -0800 (PST)
MIME-Version: 1.0
References: <cover.1575529553.git.saiprakash.ranjan@codeaurora.org>
 <0101016ed57a6311-e815485c-4b77-4342-a3de-203673941602-000000@us-west-2.amazonses.com>
In-Reply-To: <0101016ed57a6311-e815485c-4b77-4342-a3de-203673941602-000000@us-west-2.amazonses.com>
From: Evan Green <evgreen@chromium.org>
Date: Wed, 11 Dec 2019 11:32:37 -0800
X-Gmail-Original-Message-ID: <CAE=gft5JvCegmrjkKuxYr9dgASPFCkgy97O1XGRyKDF6xT=BMA@mail.gmail.com>
Message-ID: <CAE=gft5JvCegmrjkKuxYr9dgASPFCkgy97O1XGRyKDF6xT=BMA@mail.gmail.com>
Subject: Re: [PATCH 2/2] drivers: edac: Add EDAC support for Kryo CPU caches
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_113317_781895_A92C1CC4 
X-CRM114-Status: GOOD (  26.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Tony Luck <tony.luck@intel.com>,
 psodagud@codeaurora.org, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, tsoni@codeaurora.org,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Robert Richter <rrichter@marvell.com>, Andy Gross <agross@kernel.org>,
 Borislav Petkov <bp@alien8.de>, James Morse <james.morse@arm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sai,

On Thu, Dec 5, 2019 at 1:53 AM Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Kryo{3,4}XX CPU cores implement RAS extensions to support
> Error Correcting Code(ECC). Currently all Kryo{3,4}XX CPU
> cores (gold/silver a.k.a big/LITTLE) support ECC via RAS.
> This adds an interrupt based driver for those CPUs and
> provides an optional polling of error recording system
> registers.
>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  MAINTAINERS                   |   7 +
>  drivers/edac/Kconfig          |  20 +
>  drivers/edac/Makefile         |   1 +
>  drivers/edac/qcom_kryo_edac.c | 679 ++++++++++++++++++++++++++++++++++
>  4 files changed, 707 insertions(+)
>  create mode 100644 drivers/edac/qcom_kryo_edac.c
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index c2d80079dccc..f58c93f963f6 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -6049,6 +6049,13 @@ L:       linux-edac@vger.kernel.org
>  S:     Maintained
>  F:     drivers/edac/qcom_edac.c
>
> +EDAC-KRYO-QCOM
> +M:     Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> +L:     linux-arm-msm@vger.kernel.org
> +L:     linux-edac@vger.kernel.org
> +S:     Maintained
> +F:     drivers/edac/qcom_kryo_edac.c
> +
>  EDIROL UA-101/UA-1000 DRIVER
>  M:     Clemens Ladisch <clemens@ladisch.de>
>  L:     alsa-devel@alsa-project.org (moderated for non-subscribers)
> diff --git a/drivers/edac/Kconfig b/drivers/edac/Kconfig
> index 417dad635526..cd78ac2917c9 100644
> --- a/drivers/edac/Kconfig
> +++ b/drivers/edac/Kconfig
> @@ -508,6 +508,26 @@ config EDAC_QCOM
>           For debugging issues having to do with stability and overall system
>           health, you should probably say 'Y' here.
>
> +config EDAC_QCOM_KRYO
> +       tristate "QCOM Kryo EDAC for CPU L1/L2/L3-SCU caches"
> +       depends on ARCH_QCOM && ARM64_RAS_EXTN
> +       help
> +         Support for Error detection and correction on Kryo Gold and Silver CPU
> +         cores with RAS extensions. Currently it detects and reports all Single
> +         Bit Errors (SBEs) and Double Bit Errors (DBEs).
> +
> +         For debugging issues having to do with stability and overall system
> +         health, you should probably say 'Y' here.
> +
> +config EDAC_QCOM_KRYO_POLL
> +       depends on EDAC_QCOM_KRYO
> +       bool "Poll on Kryo ECC registers"
> +       help
> +         This option chooses whether or not you want to poll on the Kryo ECC
> +         registers. When this is enabled, the polling rate can be set as a
> +         module parameter. By default, it will call the polling function every
> +         second.
> +
>  config EDAC_ASPEED
>         tristate "Aspeed AST 2500 SoC"
>         depends on MACH_ASPEED_G5
> diff --git a/drivers/edac/Makefile b/drivers/edac/Makefile
> index d77200c9680b..29edcfa6ec0e 100644
> --- a/drivers/edac/Makefile
> +++ b/drivers/edac/Makefile
> @@ -85,5 +85,6 @@ obj-$(CONFIG_EDAC_SYNOPSYS)           += synopsys_edac.o
>  obj-$(CONFIG_EDAC_XGENE)               += xgene_edac.o
>  obj-$(CONFIG_EDAC_TI)                  += ti_edac.o
>  obj-$(CONFIG_EDAC_QCOM)                        += qcom_edac.o
> +obj-$(CONFIG_EDAC_QCOM_KRYO)           += qcom_kryo_edac.o
>  obj-$(CONFIG_EDAC_ASPEED)              += aspeed_edac.o
>  obj-$(CONFIG_EDAC_BLUEFIELD)           += bluefield_edac.o
> diff --git a/drivers/edac/qcom_kryo_edac.c b/drivers/edac/qcom_kryo_edac.c
> new file mode 100644
> index 000000000000..05b60ad3cb0e
> --- /dev/null
> +++ b/drivers/edac/qcom_kryo_edac.c
> @@ -0,0 +1,679 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2019, The Linux Foundation. All rights reserved.
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/cpu_pm.h>
> +#include <linux/of_irq.h>
> +#include <linux/smp.h>
> +
> +#include <asm/cputype.h>
> +#include <asm/sysreg.h>
> +
> +#include "edac_device.h"
> +#include "edac_mc.h"
> +
> +#define DRV_NAME               "qcom_kryo_edac"
> +
> +/*
> + * ARM Cortex-A55, Cortex-A75, Cortex-A76 TRM Chapter B3.3
> + * ARM DSU TRM Chapter B2.3
> + * CFI = Corrected Fault Handling interrupt, FI = Fault handling interrupt
> + * UI = Uncorrected error recovery interrupt, ED = Error Detection
> + */
> +#define KRYO_ERRXCTLR_ED       BIT(0)
> +#define KRYO_ERRXCTLR_UI       BIT(2)
> +#define KRYO_ERRXCTLR_FI       BIT(3)
> +#define KRYO_ERRXCTLR_CFI      BIT(8)
> +#define KRYO_ERRXCTLR_ENABLE   (KRYO_ERRXCTLR_CFI | KRYO_ERRXCTLR_FI | \
> +                                KRYO_ERRXCTLR_UI | KRYO_ERRXCTLR_ED)
> +
> +/*
> + * ARM Cortex-A55, Cortex-A75, Cortex-A76 TRM Chapter B3.4
> + * ARM DSU TRM Chapter B2.4
> + */
> +#define KRYO_ERRXFR_ED         GENMASK(1, 0)
> +#define KRYO_ERRXFR_DE         GENMASK(3, 2)
> +#define KRYO_ERRXFR_UI         GENMASK(5, 4)
> +#define KRYO_ERRXFR_FI         GENMASK(7, 6)
> +#define KRYO_ERRXFR_UE         GENMASK(9, 8)
> +#define KRYO_ERRXFR_CFI                GENMASK(11, 10)
> +#define KRYO_ERRXFR_CEC                GENMASK(14, 12)
> +#define KRYO_ERRXFR_RP         BIT(15)
> +#define KRYO_ERRXFR_SUPPORTED  (KRYO_ERRXFR_ED | KRYO_ERRXFR_DE | \
> +                                KRYO_ERRXFR_UI | KRYO_ERRXFR_FI | \
> +                                KRYO_ERRXFR_UE | KRYO_ERRXFR_CFI | \
> +                                KRYO_ERRXFR_CEC | KRYO_ERRXFR_RP)
> +
> +/*
> + * ARM Cortex-A55, Cortex-A75, Cortex-A76 TRM Chapter B3.5
> + * ARM DSU TRM Chapter B2.5
> + */
> +#define KRYO_ERRXMISC0_CECR    GENMASK_ULL(38, 32)
> +#define KRYO_ERRXMISC0_CECO    GENMASK_ULL(46, 40)
> +
> +/* ARM Cortex-A76 TRM Chapter B3.5 */
> +#define KRYO_ERRXMISC0_UNIT    GENMASK(3, 0)
> +#define KRYO_ERRXMISC0_LVL     GENMASK(3, 1)
> +
> +/* ARM Cortex-A76 TRM Chapter B3.10 has SERR bitfields 4:0
> + * but Cortex-A55, Cortex-A75 and DSU TRM has SERR bitfields 7:0.
> + * Since max error record is 21, we can use bitfields 4:0 for
> + * Kryo{3,4}XX CPUs.
> + */
> +#define KRYO_ERRXSTATUS_SERR   GENMASK(4, 0)
> +#define KRYO_ERRXSTATUS_DE     BIT(23)
> +#define KRYO_ERRXSTATUS_CE     GENMASK(25, 24)
> +#define KRYO_ERRXSTATUS_MV     BIT(26)
> +#define KRYO_ERRXSTATUS_UE     BIT(29)
> +#define KRYO_ERRXSTATUS_VALID  BIT(30)
> +
> +/* ARM Cortex-A76 TRM Chapter B3.5
> + * IC = Instruction Cache, DC = Data Cache
> + */
> +#define KRYO_L1_UNIT_IC                0x1
> +#define KRYO_L2_UNIT_TLB       0x2
> +#define KRYO_L1_UNIT_DC                0x4
> +#define KRYO_L2_UNIT           0x8
> +
> +/*
> + * ARM Cortex-A55 TRM Chapter B2.36
> + * ARM Cortex-A75, Cortex-A76 TRM Chapter B2.37
> + */
> +#define KRYO_ERR_RECORD_L1_L2  0x0
> +#define KRYO_ERR_RECORD_L3     0x1
> +
> +/* ARM DSU TRM Chapter B2.10 */
> +#define BUS_ERROR              0x12
> +
> +/* QCOM Kryo CPU part numbers */
> +#define KRYO3XX_GOLD           0x802
> +#define KRYO4XX_GOLD           0x804
> +#define KRYO4XX_SILVER_V1      0x803
> +#define KRYO4XX_SILVER_V2      0x805
> +
> +#define KRYO_EDAC_MSG_MAX      256
> +
> +static int poll_msec = 1000;
> +module_param(poll_msec, int, 0444);
> +
> +enum {
> +       KRYO_L1 = 0,
> +       KRYO_L2,
> +       KRYO_L3,
> +};
> +
> +/* CE = Corrected Error, UE = Uncorrected Error, DE = Deferred Error */
> +enum {

No name?

> +       KRYO_L1_CE = 0,
> +       KRYO_L1_UE,
> +       KRYO_L1_DE,
> +       KRYO_L2_CE,
> +       KRYO_L2_UE,
> +       KRYO_L2_DE,
> +       KRYO_L3_CE,
> +       KRYO_L3_UE,
> +       KRYO_L3_DE,
> +};
> +
> +struct error_record {
> +       u32 error_code;
> +       const char *error_msg;
> +};
> +
> +struct error_type {
> +       void (*fn)(struct edac_device_ctl_info *edev_ctl,
> +                  int inst_nr, int block_nr, const char *msg);
> +       const char *msg;
> +};
> +
> +/*
> + * ARM Cortex-A55, Cortex-A75, Cortex-A76 TRM Chapter B3.10
> + * ARM DSU TRM Chapter B2.10
> + */
> +static const struct error_record serror_record[] = {
> +       { 0x1,  "Errors due to fault injection"         },
> +       { 0x2,  "ECC error from internal data buffer"   },
> +       { 0x6,  "ECC error on cache data RAM"           },
> +       { 0x7,  "ECC error on cache tag or dirty RAM"   },
> +       { 0x8,  "Parity error on TLB data RAM"          },
> +       { 0x9,  "Parity error on TLB tag RAM"           },
> +       { 0x12, "Error response for a cache copyback"   },
> +       { 0x15, "Deferred error not supported"          },
> +};
> +
> +static const struct error_type err_type[] = {
> +       { edac_device_handle_ce, "Kryo L1 Corrected Error"      },
> +       { edac_device_handle_ue, "Kryo L1 Uncorrected Error"    },
> +       { edac_device_handle_ue, "Kryo L1 Deferred Error"       },
> +       { edac_device_handle_ce, "Kryo L2 Corrected Error"      },
> +       { edac_device_handle_ue, "Kryo L2 Uncorrected Error"    },
> +       { edac_device_handle_ue, "Kryo L2 Deferred Error"       },
> +       { edac_device_handle_ce, "L3 Corrected Error"           },
> +       { edac_device_handle_ue, "L3 Uncorrected Error"         },
> +       { edac_device_handle_ue, "L3 Deferred Error"            },
> +};

A comment is warranted to indicate that err_type is indexed by the
enum, as this would be easy to mess up in later changes.

> +
> +static struct edac_device_ctl_info __percpu *edac_dev;
> +static struct edac_device_ctl_info *drv_edev_ctl;
> +
> +static const char *get_error_msg(u64 errxstatus)
> +{
> +       const struct error_record *rec;
> +       u32 errxstatus_serr;
> +
> +       errxstatus_serr = FIELD_GET(KRYO_ERRXSTATUS_SERR, errxstatus);
> +
> +       for (rec = serror_record; rec->error_code; rec++) {

It looks like you expect the table to be zero terminated, but it's
not. Add the missing zero entry.

> +               if (errxstatus_serr == rec->error_code)
> +                       return rec->error_msg;
> +       }
> +
> +       return NULL;
> +}
> +
> +static void dump_syndrome_reg(int error_type, int level,
> +                             u64 errxstatus, u64 errxmisc,
> +                             struct edac_device_ctl_info *edev_ctl)
> +{
> +       char msg[KRYO_EDAC_MSG_MAX];
> +       const char *error_msg;
> +       int cpu;
> +
> +       cpu = raw_smp_processor_id();
> +
> +       error_msg = get_error_msg(errxstatus);
> +       if (!error_msg)
> +               return;
> +
> +       snprintf(msg, KRYO_EDAC_MSG_MAX,
> +                "CPU%d: %s, ERRXSTATUS_EL1:%#llx ERRXMISC0_EL1:%#llx, %s",
> +                cpu, err_type[error_type].msg, errxstatus, errxmisc,
> +                error_msg);
> +
> +       err_type[error_type].fn(edev_ctl, 0, level, msg);
> +}
> +
> +static void kryo_check_err_type(u64 errxstatus, u64 errxmisc,
> +                               struct edac_device_ctl_info *edev_ctl,
> +                               int level)
> +{
> +       u32 errxstatus_ue, errxstatus_ce, errxstatus_de;
> +
> +       errxstatus_ce = FIELD_GET(KRYO_ERRXSTATUS_CE, errxstatus);
> +       errxstatus_ue = FIELD_GET(KRYO_ERRXSTATUS_UE, errxstatus);
> +       errxstatus_de = FIELD_GET(KRYO_ERRXSTATUS_DE, errxstatus);
> +
> +       switch (level) {
> +       case KRYO_L1:
> +               if (errxstatus_ce)
> +                       dump_syndrome_reg(KRYO_L1_CE, level, errxstatus,
> +                                         errxmisc, edev_ctl);
> +               else if (errxstatus_ue)
> +                       dump_syndrome_reg(KRYO_L1_UE, level, errxstatus,
> +                                         errxmisc, edev_ctl);
> +               else if (errxstatus_de)
> +                       dump_syndrome_reg(KRYO_L1_DE, level, errxstatus,
> +                                         errxmisc, edev_ctl);
> +               else
> +                       edac_printk(KERN_ERR, DRV_NAME, "Unknown error\n");
> +               break;
> +       case KRYO_L2:
> +               if (errxstatus_ce)
> +                       dump_syndrome_reg(KRYO_L2_CE, level, errxstatus,
> +                                         errxmisc, edev_ctl);
> +               else if (errxstatus_ue)
> +                       dump_syndrome_reg(KRYO_L2_UE, level, errxstatus,
> +                                         errxmisc, edev_ctl);
> +               else if (errxstatus_de)
> +                       dump_syndrome_reg(KRYO_L2_DE, level, errxstatus,
> +                                         errxmisc, edev_ctl);
> +               else
> +                       edac_printk(KERN_ERR, DRV_NAME, "Unknown error\n");
> +               break;
> +       case KRYO_L3:
> +               if (errxstatus_ce)
> +                       dump_syndrome_reg(KRYO_L3_CE, level, errxstatus,
> +                                         errxmisc, edev_ctl);
> +               else if (errxstatus_ue)
> +                       dump_syndrome_reg(KRYO_L3_UE, level, errxstatus,
> +                                         errxmisc, edev_ctl);
> +               else if (errxstatus_de)
> +                       dump_syndrome_reg(KRYO_L3_DE, level, errxstatus,
> +                                         errxmisc, edev_ctl);
> +               else
> +                       edac_printk(KERN_ERR, DRV_NAME, "Unknown error\n");
> +               break;
> +       default:
> +               edac_printk(KERN_ERR, DRV_NAME, "Unknown level\n");
> +       }
> +}
> +
> +static inline void kryo_clear_error(u64 errxstatus)
> +{
> +       write_sysreg_s(errxstatus, SYS_ERXSTATUS_EL1);
> +       isb();

Is the isb() necessary? If so, why not a dsb as well?

> +}
> +
> +static void kryo_parse_l1_l2_cache_error(u64 errxstatus, u64 errxmisc,
> +                                        struct edac_device_ctl_info *edev_ctl,
> +                                        int cpu)
> +{
> +       u32 part_num = read_cpuid_part_number();
> +
> +       switch (part_num) {
> +       /* Kryo3XX gold CPU cores do not have a UNIT bitfield */
> +       case KRYO3XX_GOLD:
> +       case KRYO4XX_SILVER_V1:
> +       case KRYO4XX_SILVER_V2:
> +               switch (FIELD_GET(KRYO_ERRXMISC0_LVL, errxmisc)) {
> +               case KRYO_L1:
> +                       kryo_check_err_type(errxstatus, errxmisc,
> +                                           edev_ctl, KRYO_L1);
> +                       break;
> +               case KRYO_L2:
> +                       kryo_check_err_type(errxstatus, errxmisc,
> +                                           edev_ctl, KRYO_L2);
> +                       break;
> +               default:
> +                       edac_printk(KERN_ERR, DRV_NAME,
> +                                   "silver cpu:%d unknown error: %lu\n", cpu,
> +                                   FIELD_GET(KRYO_ERRXMISC0_LVL, errxmisc));
> +               }
> +               break;
> +       /* Kryo4XX gold CPU cores have a UNIT bitfield to identify levels */
> +       case KRYO4XX_GOLD:
> +               switch (FIELD_GET(KRYO_ERRXMISC0_UNIT, errxmisc)) {
> +               case KRYO_L1_UNIT_DC:
> +               case KRYO_L1_UNIT_IC:
> +                       kryo_check_err_type(errxstatus, errxmisc,
> +                                           edev_ctl, KRYO_L1);
> +                       break;
> +               case KRYO_L2_UNIT:
> +               case KRYO_L2_UNIT_TLB:
> +                       kryo_check_err_type(errxstatus, errxmisc,
> +                                           edev_ctl, KRYO_L2);
> +                       break;
> +               default:
> +                       edac_printk(KERN_ERR, DRV_NAME,
> +                                   "gold cpu:%d unknown error: %lu\n", cpu,
> +                                   FIELD_GET(KRYO_ERRXMISC0_UNIT, errxmisc));
> +               }
> +               break;
> +       default:
> +               edac_printk(KERN_ERR, DRV_NAME,
> +                           "Error in matching cpu%d with part num:%u\n",
> +                           cpu, part_num);
> +       }
> +}
> +
> +static inline bool kryo_check_regs_valid(u64 errxstatus)
> +{
> +       /* Check if status and misc regs are valid */
> +       if (!(FIELD_GET(KRYO_ERRXSTATUS_VALID, errxstatus)) ||
> +           !(FIELD_GET(KRYO_ERRXSTATUS_MV, errxstatus)))
> +               return false;
> +
> +       return true;
> +}
> +
> +static void kryo_check_l1_l2_ecc(void *info)
> +{
> +       struct edac_device_ctl_info *edev_ctl = info;
> +       u64 errxstatus;
> +       u64 errxmisc;
> +       int cpu;
> +
> +       cpu = smp_processor_id();
> +       /* We know record 0 is L1 and L2 */
> +       write_sysreg_s(0, SYS_ERRSELR_EL1);
> +       isb();

Another isb I'm not sure about. Is this meant to provide a barrier
between ERRSELR and ERXSTATUS? Wouldn't that be dsb, not isb?

> +
> +       errxstatus = read_sysreg_s(SYS_ERXSTATUS_EL1);
> +       if (!kryo_check_regs_valid(errxstatus))
> +               return;
> +
> +       errxmisc = read_sysreg_s(SYS_ERXMISC0_EL1);
> +       /* Check if L1/L2 error */
> +       if (!(FIELD_GET(KRYO_ERRXMISC0_LVL, errxmisc) == KRYO_L1) &&
> +           !(FIELD_GET(KRYO_ERRXMISC0_LVL, errxmisc) == KRYO_L2))
> +               return;
> +
> +       kryo_parse_l1_l2_cache_error(errxstatus, errxmisc, edev_ctl, cpu);
> +       kryo_clear_error(errxstatus);
> +}
> +

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
