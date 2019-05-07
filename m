Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CBF15FFB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 10:59:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D0h6cCOs6ngpANbHfoMuslpsiAi5Wp+tz66fsGaAygo=; b=SAJuGOuKCKH68g
	0gH/Fgt9VHR/W2MGMIaVcRAoEL8m8m9hmRPkPXBC5vB7Pl5oLZLziyCcta2kMqfAUHcMQ0tmHsDiK
	e7TR3MY4o/vvuyVfw7nQLJ1XoRHk9iyu1ullXTezDrCgRn1sqP/+n2HGgDMTR71XIee9xPaLweNWM
	w3WjvH35szVNr+73hcE87aX5+iXDcviz2yb2Fsy4mq3veopfADQnNi6z+mV4v3Xj6n5o7XUGK7Bgx
	qUtsdNt741UGMGb/e86jvaIbMW6eg5rGxdx0V2uuL0AGn+ebiFnE6BtXBPlGBhllNGqKUbU50QEUI
	kitFvADx6UZ41ozX6x8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNvwS-0007MY-3Q; Tue, 07 May 2019 08:59:16 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNvwJ-0007KY-94
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 08:59:08 +0000
Received: by mail-qk1-x742.google.com with SMTP id z128so7043859qkb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 01:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3aU3KdevIyzgXbG781UoZs1Bb4vUUWKNcMK076foDGU=;
 b=ON+p2hg7Pm2pamPArQ09UUBPZnXq1MgAYa2Q6ziX4dSU3Ex/qwkdxRfrmyQQKq4fo0
 CzdRAKKzu2/TUUbDJOleTBxNvkUtNAbVv6BJ5B8EVOF6ygVEtUfE2cih/mGrjoausodv
 pBx/sT84pXaXCG5QgM+6SgdQFHkYaLjmPAq9g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3aU3KdevIyzgXbG781UoZs1Bb4vUUWKNcMK076foDGU=;
 b=BEp3bs/vhqQAVY2gbx4DO5m5k4iJ+PooqIjjjHqVh4+6wOHWNrMD1/SWF4IHftiLw5
 L2Xn7X71jWSHL6+W16M1VGo+V0i7OEwxas/S84GqNeg3H5S9OzDoDnwyzp/5a7eZE12H
 5/qvzdU4mJjLDzXZ/3J3EzAPVyez6E1shm94iJGw6+MzZJGVK7OnsyQsy2X+pW6nR6g/
 W5mAHrjI+SME3G6DZs8bXpQyHOG8lVGZ9y6rmJMpuPtSsBs+n47hRPqfV22H0lAkoA8G
 fbRqJtSA020i8418pHeb0ukhttvU+szs6vT6AdnT5K9U+Fw8+uGZ5orRp/FcQDJgs76G
 w96w==
X-Gm-Message-State: APjAAAVqwOcjMupfgameCx3eALfDXgOQ6RLvZmAu5j6GOpogorLSgYqi
 Z+Ujx7aGBhs/344cQHoJvpGbjZ2oguxauB5w9xYrIA==
X-Google-Smtp-Source: APXvYqwPpaxX5r4wI/jXxlXZQ/vWJkvg48WefXd+ah/jnuQKCFF2bVOLDxZdtW5Aili31vG0ozFXkzpJEG1lt+lr1Mk=
X-Received: by 2002:a05:620a:1641:: with SMTP id
 c1mr236605qko.103.1557219546010; 
 Tue, 07 May 2019 01:59:06 -0700 (PDT)
MIME-Version: 1.0
References: <1556793795-25204-1-git-send-email-michael.kao@mediatek.com>
 <1556793795-25204-7-git-send-email-michael.kao@mediatek.com>
In-Reply-To: <1556793795-25204-7-git-send-email-michael.kao@mediatek.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Tue, 7 May 2019 16:58:40 +0800
Message-ID: <CAJMQK-i6oZ1dTbTXV2_nX+mGfZ7JcafRMKbb81YgPk67Gdbjbg@mail.gmail.com>
Subject: Re: [PATCH 6/8] thermal: mediatek: mt8183: fix bank number settings
To: "michael.kao" <michael.kao@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_015907_327419_DCD544B4 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, jamesjj.liao@mediatek.com,
 devicetree@vger.kernel.org, louis.yu@mediatek.com, dawei.chien@mediatek.com,
 linux-pm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 roger.lu@mediatek.com, linux-kernel@vger.kernel.org,
 Eduardo Valentin <edubezval@gmail.com>, fan.chen@mediatek.com,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 2, 2019 at 10:43 AM michael.kao <michael.kao@mediatek.com> wrote:
>
> From: Michael Kao <michael.kao@mediatek.com>
>
> MT8183_NUM_ZONES should be set to 1
> because MT8183 doesn't have multiple banks.
>
> Fixes: a4ffe6b52d27 ("thermal: mediatek: add support for MT8183")
> Signed-off-by: Michael Kao <Michael.Kao@mediatek.com>
> ---
>  drivers/thermal/mtk_thermal.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/thermal/mtk_thermal.c b/drivers/thermal/mtk_thermal.c
> index 5c07a61..cb41e46 100644
> --- a/drivers/thermal/mtk_thermal.c
> +++ b/drivers/thermal/mtk_thermal.c
> @@ -216,6 +216,9 @@ enum {
>  /* The total number of temperature sensors in the MT8183 */
>  #define MT8183_NUM_SENSORS     6
>
> +/* The number of banks in the MT8183 */
> +#define MT8183_NUM_ZONES               1
> +
>  /* The number of sensing points per bank */
>  #define MT8183_NUM_SENSORS_PER_ZONE     6
>
> @@ -503,7 +506,7 @@ struct mtk_thermal {
>
>  static const struct mtk_thermal_data mt8183_thermal_data = {
>         .auxadc_channel = MT8183_TEMP_AUXADC_CHANNEL,
> -       .num_banks = MT8183_NUM_SENSORS_PER_ZONE,
> +       .num_banks = MT8183_NUM_ZONES,
>         .num_sensors = MT8183_NUM_SENSORS,
>         .vts_index = mt8183_vts_index,
>         .cali_val = MT8183_CALIBRATION,

Tested-by: Hsin-Yi Wang <hsinyi@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
