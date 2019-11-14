Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 128E2FC0F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 08:42:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ooci9KS9D/2HkKoUWH4+iV20fLgTO9r9cXWFnqx///4=; b=ZybmlUn8RvF9jx
	tveiIK+ACyIOkxkmug/P2q9a8zvS5rvN0DtzUgPSpW5ZQCnlvvaB78PtL1wX1dQu4oGOrVWnXmAZ0
	XkT1DsHY0CF7jktc0Za1CmGoRWfF/burS4xb9ynR+PYuMC2/dZ3BAdzrnw/mH2JdP/43f5Ogdusmk
	35NwGIz/gbGKCRUx14oVg8Kcl5Sg724adoU+msa3YPC5lRPsmtNQoTamgnTFU14bbINKYwg96Rp/6
	Cy0Lce18uqc9R+ZmOgp4+/7AqustUGhK5WN32E60fGw5kOXsWtgD3KbxF4XZWbsp7Uj8jXRviLnmE
	jnWfYCPcDl44Le3hTjfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV9lV-0005BA-7E; Thu, 14 Nov 2019 07:42:05 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV9lL-00058U-Bj
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 07:41:57 +0000
Received: by mail-ed1-x544.google.com with SMTP id s10so4175463edi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 23:41:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b4oVKxmBs4/RCYOKu4hwaTsf6M0D7a2xIkhCkKT+Pto=;
 b=B9xFb8FNqh/gxYhmiXwmoboX9b0W301cObyelGcHy+jepHxS+R9vPMMrJYylMOQXlM
 51z2p/t5u0IbsMSgsDBX5z2VowBIW5MPZtYErL29n1z3iPMkQrfib/Lu2WTZRChW3FXd
 0zV4AvJNKL+6nlpVVhTwC7oi15bZdlzyWb7rM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b4oVKxmBs4/RCYOKu4hwaTsf6M0D7a2xIkhCkKT+Pto=;
 b=ItQATxZag0qWAcKHao5NhYJn9AcstWbaRywAYMsFuUES5f5VhhjCihpWpnEU/Hxy5z
 NBegy6EUw8FvsjMW6u4Uk0/aaR8Xhw37cBQA7BW7jIz1e8lq9tCK7FkcBkMW5ViHH+yi
 vsJAk0FMA5FCqmTjAlLPsFnud7AXWVCoKwQYltigIvum29JfPDafhdGf36dA0pAXsGVO
 aByhn51dy/1PkSOmq3ObFxRv9UyePlzZLdhA3EBbs1HiMKLsLc2ZWU2NoxbVoJQaOz6q
 9VgfeJcaTVYpshAkYLcyPH0GTatcts04TYE3o4UilLcvycH2QGVCuRwWpvxqVP6ywBWl
 3jpQ==
X-Gm-Message-State: APjAAAXZX5o/eBZga9xxQUuCzUG2B5hSWrPPoN0XyuMrK+StDwvFRMmL
 WpW24hUNyDn6hDpAbiq4Kn68UuKL2ae/ztu9eBxF7Q==
X-Google-Smtp-Source: APXvYqz6yZbtrJ5sSQUSRuZpeFS1kkbqDoajndNm+AhsVzWJvYBAWCTn8mxQzSajS+KvpujI+sImRayrC8IGh/nQuQg=
X-Received: by 2002:a17:906:2518:: with SMTP id
 i24mr7155659ejb.4.1573717312605; 
 Wed, 13 Nov 2019 23:41:52 -0800 (PST)
MIME-Version: 1.0
References: <20190906100514.30803-1-roger.lu@mediatek.com>
 <20190906100514.30803-4-roger.lu@mediatek.com>
In-Reply-To: <20190906100514.30803-4-roger.lu@mediatek.com>
From: Pi-Hsun Shih <pihsun@chromium.org>
Date: Thu, 14 Nov 2019 15:41:16 +0800
Message-ID: <CANdKZ0eEMQe+OFOJxOs37gyUm2vGQ2F-NeAkcxmgYXVKvRzQBw@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] PM / AVS: SVS: Introduce SVS engine
To: Roger Lu <roger.lu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_234155_401598_6A9A700D 
X-CRM114-Status: GOOD (  22.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nicolas Boichat <drinkcat@google.com>,
 Angus Lin <Angus.Lin@mediatek.com>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 HenryC Chen <HenryC.Chen@mediatek.com>, yt.lee@mediatek.com,
 Fan Chen <fan.chen@mediatek.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Nishanth Menon <nm@ti.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Roger,

On Fri, Sep 6, 2019 at 6:06 PM Roger Lu <roger.lu@mediatek.com> wrote:
>
> The SVS (Smart Voltage Scaling) engine is a piece of hardware which is
> used to calculate optimized voltage values of several power domains, e.g.
> CPU/GPU/CCI, according to chip process corner, temperatures, and other
> factors. Then DVFS driver could apply those optimized voltage values to
> reduce power consumption.
>
> Signed-off-by: Roger Lu <roger.lu@mediatek.com>
> ---
>  drivers/power/avs/Kconfig     |   10 +
>  drivers/power/avs/Makefile    |    1 +
>  drivers/power/avs/mtk_svs.c   | 2075 +++++++++++++++++++++++++++++++++
>  include/linux/power/mtk_svs.h |   23 +
>  4 files changed, 2109 insertions(+)
>  create mode 100644 drivers/power/avs/mtk_svs.c
>  create mode 100644 include/linux/power/mtk_svs.h
>
> [...]
> diff --git a/drivers/power/avs/mtk_svs.c b/drivers/power/avs/mtk_svs.c
> new file mode 100644
> index 000000000000..78ec93c3a4a5
> --- /dev/null
> +++ b/drivers/power/avs/mtk_svs.c
> [...]
> +static int svs_set_volts(struct svs_bank *svsb, bool force_update)
> +{
> +       u32 i, svsb_volt, opp_volt, low_temp_offset = 0;
> +       int zone_temp, ret;
> +
> +       mutex_lock(&svsb->lock);
> +
> +       /* If bank is suspended, it means init02 voltage is applied.
> +        * Don't need to update opp voltage anymore.
> +        */
> +       if (svsb->suspended && !force_update) {
> +               pr_notice("%s: bank is suspended\n", svsb->name);
> +               mutex_unlock(&svsb->lock);
> +               return -EPERM;
> +       }
> +
> +       /* get thermal effect */
> +       if (svsb->phase == SVS_PHASE_MON) {
> +               if (svsb->svs_temp > svsb->upper_temp_bound &&
> +                   svsb->svs_temp < svsb->lower_temp_bound) {
> +                       pr_err("%s: svs_temp is abnormal (0x%x)?\n",
> +                              svsb->name, svsb->svs_temp);
> +                       mutex_unlock(&svsb->lock);
> +                       return -EINVAL;
> +               }
> +
> +               ret = svs_get_zone_temperature(svsb, &zone_temp);
> +               if (ret) {
> +                       pr_err("%s: cannot get zone \"%s\" temperature\n",
> +                              svsb->name, svsb->zone_name);
> +                       pr_err("%s: add low_temp_offset = %u\n",
> +                              svsb->name, svsb->low_temp_offset);
> +                       zone_temp = svsb->low_temp_threashold;
> +               }
> +
> +               if (zone_temp <= svsb->low_temp_threashold)
> +                       low_temp_offset = svsb->low_temp_offset;
> +       }
> +
> +       /* vmin <= svsb_volt (opp_volt) <= signed-off voltage */
> +       for (i = 0; i < svsb->opp_count; i++) {
> +               if (svsb->phase == SVS_PHASE_MON) {
> +                       svsb_volt = max((svsb->volts[i] + svsb->volt_offset +
> +                                        low_temp_offset), svsb->vmin);
> +                       opp_volt = svs_volt_to_opp_volt(svsb_volt,
> +                                                       svsb->volt_step,
> +                                                       svsb->volt_base);
> +               } else if (svsb->phase == SVS_PHASE_INIT02) {
> +                       svsb_volt = max((svsb->init02_volts[i] +
> +                                        svsb->volt_offset), svsb->vmin);
> +                       opp_volt = svs_volt_to_opp_volt(svsb_volt,
> +                                                       svsb->volt_step,
> +                                                       svsb->volt_base);
> +               } else if (svsb->phase == SVS_PHASE_ERROR) {
> +                       opp_volt = svsb->opp_volts[i];
> +               } else {
> +                       pr_err("%s: unknown phase: %u?\n",
> +                              svsb->name, svsb->phase);
> +                       mutex_unlock(&svsb->lock);
> +                       return -EINVAL;
> +               }
> +
> +               opp_volt = min(opp_volt, svsb->opp_volts[i]);
> +               ret = dev_pm_opp_adjust_voltage(svsb->dev, svsb->opp_freqs[i],
> +                                               opp_volt);

The version of this function in opp tree
(https://git.kernel.org/pub/scm/linux/kernel/git/vireshk/pm.git/commit/?h=opp/linux-next&id=25cb20a212a1f989385dfe23230817e69c62bee5)
has a different function signature, so this should be changed too.

> +               if (ret) {
> +                       pr_err("%s: set voltage failed: %d\n", svsb->name, ret);
> +                       mutex_unlock(&svsb->lock);
> +                       return ret;
> +               }
> +       }
> +
> +       mutex_unlock(&svsb->lock);
> +
> +       return 0;
> +}
> +
> [...]
> +static int svs_init01(struct mtk_svs *svs)
> +{
> +       const struct svs_platform *svsp = svs->platform;
> +       struct svs_bank *svsb;
> +       struct pm_qos_request qos_request = { {0} };
> +       unsigned long flags, time_left;
> +       bool search_done;
> +       int ret = -EINVAL;
> +       u32 opp_freqs, opp_vboot, buck_volt, idx, i;
> +
> +       /* Let CPUs leave idle-off state for initializing svs_init01. */
> +       pm_qos_add_request(&qos_request, PM_QOS_CPU_DMA_LATENCY, 0);
> +
> +       /* Sometimes two svs_bank use the same buck.
> +        * Therefore, we set each svs_bank to vboot voltage first.
> +        */
> +       for (idx = 0; idx < svsp->bank_num; idx++) {
> +               svsb = &svsp->banks[idx];
> +               search_done = false;
> +
> +               if (!svsb->init01_support)
> +                       continue;
> +
> +               ret = regulator_set_mode(svsb->buck, REGULATOR_MODE_FAST);
> +               if (ret)
> +                       pr_notice("%s: fail to set fast mode: %d\n",
> +                                 svsb->name, ret);
> +
> +               if (svsb->mtcmos_request) {
> +                       ret = regulator_enable(svsb->buck);
> +                       if (ret) {
> +                               pr_err("%s: fail to enable %s power: %d\n",
> +                                      svsb->name, svsb->buck_name, ret);
> +                               goto init01_finish;
> +                       }
> +
> +                       ret = dev_pm_domain_attach(svsb->dev, false);
> +                       if (ret) {
> +                               pr_err("%s: attach pm domain fail: %d\n",
> +                                      svsb->name, ret);
> +                               goto init01_finish;
> +                       }
> +
> +                       pm_runtime_enable(svsb->dev);
> +                       ret = pm_runtime_get_sync(svsb->dev);
> +                       if (ret < 0) {
> +                               pr_err("%s: turn mtcmos on fail: %d\n",
> +                                      svsb->name, ret);
> +                               goto init01_finish;
> +                       }
> +               }
> +
> +               /* Find the fastest freq that can be run at vboot and
> +                * fix to that freq until svs_init01 is done.
> +                */
> +               opp_vboot = svs_volt_to_opp_volt(svsb->vboot,
> +                                                svsb->volt_step,
> +                                                svsb->volt_base);
> +
> +               for (i = 0; i < svsb->opp_count; i++) {
> +                       opp_freqs = svsb->opp_freqs[i];
> +                       if (!search_done && svsb->opp_volts[i] <= opp_vboot) {
> +                               ret = dev_pm_opp_adjust_voltage(svsb->dev,
> +                                                               opp_freqs,
> +                                                               opp_vboot);

Same here.

> +                               if (ret) {
> +                                       pr_err("%s: set voltage failed: %d\n",
> +                                              svsb->name, ret);
> +                                       goto init01_finish;
> +                               }
> +
> +                               search_done = true;
> +                       } else {
> +                               dev_pm_opp_disable(svsb->dev,
> +                                                  svsb->opp_freqs[i]);
> +                       }
> +               }
> +       }
> +
> +       for (idx = 0; idx < svsp->bank_num; idx++) {
> +               svsb = &svsp->banks[idx];
> +               svs->bank = svsb;
> +
> +               if (!svsb->init01_support)
> +                       continue;
> +
> +               opp_vboot = svs_volt_to_opp_volt(svsb->vboot,
> +                                                svsb->volt_step,
> +                                                svsb->volt_base);
> +
> +               buck_volt = regulator_get_voltage(svsb->buck);
> +               if (buck_volt != opp_vboot) {
> +                       pr_err("%s: buck voltage: %u, expected vboot: %u\n",
> +                              svsb->name, buck_volt, opp_vboot);
> +                       ret = -EPERM;
> +                       goto init01_finish;
> +               }
> +
> +               init_completion(&svsb->init_completion);
> +               flags = claim_mtk_svs_lock();
> +               svs_set_phase(svs, SVS_PHASE_INIT01);
> +               release_mtk_svs_lock(flags);
> +               time_left =
> +                       wait_for_completion_timeout(&svsb->init_completion,
> +                                                   msecs_to_jiffies(2000));
> +               if (time_left == 0) {
> +                       pr_err("%s: init01 completion timeout\n", svsb->name);
> +                       ret = -EBUSY;
> +                       goto init01_finish;
> +               }
> +       }
> +
> +init01_finish:
> +       for (idx = 0; idx < svsp->bank_num; idx++) {
> +               svsb = &svsp->banks[idx];
> +
> +               if (!svsb->init01_support)
> +                       continue;
> +
> +               for (i = 0; i < svsb->opp_count; i++)
> +                       dev_pm_opp_enable(svsb->dev, svsb->opp_freqs[i]);
> +
> +               if (regulator_set_mode(svsb->buck, REGULATOR_MODE_NORMAL))
> +                       pr_notice("%s: fail to set normal mode: %d\n",
> +                                 svsb->name, ret);
> +
> +               if (svsb->mtcmos_request) {
> +                       if (pm_runtime_put_sync(svsb->dev))
> +                               pr_err("%s: turn mtcmos off fail: %d\n",
> +                                      svsb->name, ret);
> +                       pm_runtime_disable(svsb->dev);
> +                       dev_pm_domain_detach(svsb->dev, 0);
> +                       if (regulator_disable(svsb->buck))
> +                               pr_err("%s: fail to disable %s power: %d\n",
> +                                      svsb->name, svsb->buck_name, ret);
> +               }
> +       }
> +
> +       pm_qos_remove_request(&qos_request);
> +
> +       return ret;
> +}
> +
> [...]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
