Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C18A6123D19
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 03:29:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7JOlVCitfzoZWtmRCwQYFbrBoltfSNqqo3xTzX81dY8=; b=W+nDkYklvKXtY9
	NTKJqtRt7WnuI0UwaINrF0lOd+sjRLfLNBCgi1C2zx5k1/SGlDofX4Xkut7j2Zcx4e+VwLmHF+nCm
	v73AUuMtOX8QYc8XYeFlwMQwmBGeISPvFawNOvYLA5fNCaaYk91aRWEGbzT5E+lSdvXgD42IwGS6O
	fwqBj/o9Pkl5OggQkKo//Dkv5ddU+tSbxJdWHI7yiT4vpq8IPNsJINOjxFScOy9m07gL5g7EXLSDG
	C+uU1/2ByRzmT8sP9A38cLgpVfUsHl/i+nmZlDZ1SOl5e5kf/vj+iNkySUnvPOQhrwYh6CqMdhkSa
	CkKZbwAfjZRMtcQpApgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihP5B-0001aO-LC; Wed, 18 Dec 2019 02:29:01 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihP4q-0001X4-LK; Wed, 18 Dec 2019 02:28:42 +0000
X-UUID: 9b20203d994a48cdb632c5dc32f2e78a-20191217
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=xGWB9povj1IV218GPg5Vy6JnyVeTp/YUtKhO87rrkUM=; 
 b=r85wcjE1ZHfQCquvJbuoP2yaI4Uv8klnF77uUHrjGfUzIgfZTExGecnn7fOL7yFtY5Si0abEaD/sni0WwMl2LOOxybrGasVHOdN2jWLF43VMAbEpqPO3/q9J5A7FsqFejcbWkQbolx2iviu9dh7N3RVqF+zFqyfWu6fPRru+xi8=;
X-UUID: 9b20203d994a48cdb632c5dc32f2e78a-20191217
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1066679632; Tue, 17 Dec 2019 18:28:34 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 17 Dec 2019 18:25:53 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Dec 2019 10:25:15 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 18 Dec 2019 10:24:39 +0800
Message-ID: <1576635932.13343.8.camel@mtksdaap41>
Subject: Re: [PATCH v9 4/9] soc: mediatek: Add multiple step bus protection
 control
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 18 Dec 2019 10:25:32 +0800
In-Reply-To: <CANMq1KAn3vwCm5=LJPjE=STw9=XLSwdQ7_LZA2_okkA-V8R_3A@mail.gmail.com>
References: <1575960413-6900-1-git-send-email-weiyi.lu@mediatek.com>
 <1575960413-6900-5-git-send-email-weiyi.lu@mediatek.com>
 <CANMq1KA4KL=ZpU=cQtw3LV79DKRdG3Eb16og6vU1SdsnnL=0CA@mail.gmail.com>
 <1576551056.14035.19.camel@mtksdaap41>
 <CANMq1KAn3vwCm5=LJPjE=STw9=XLSwdQ7_LZA2_okkA-V8R_3A@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_182840_706342_65AB8AF4 
X-CRM114-Status: GOOD (  31.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Rob Herring <robh@kernel.org>, srv_heupstream <srv_heupstream@mediatek.com>,
 James Liao <jamesjj.liao@mediatek.com>, lkml <linux-kernel@vger.kernel.org>,
 Fan Chen <fan.chen@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Yong Wu <yong.wu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-12-17 at 13:33 +0800, Nicolas Boichat wrote:
> On Tue, Dec 17, 2019 at 10:51 AM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
> >
> > On Mon, 2019-12-16 at 15:21 +0800, Nicolas Boichat wrote:
> > > On Tue, Dec 10, 2019 at 2:47 PM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
> > > >
> > > > Both MT8183 & MT6765 have more control steps of bus protection
> > > > than previous project. And there add more bus protection registers
> > > > reside at infracfg & smi-common. Also add new APIs for multiple
> > > > step bus protection control with more customized arguments.
> > > >
> > > > Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> > > > ---
> > > >  drivers/soc/mediatek/Makefile           |  2 +-
> > > >  drivers/soc/mediatek/mtk-scpsys-ext.c   | 99 +++++++++++++++++++++++++++++++++
> > > >  drivers/soc/mediatek/mtk-scpsys.c       | 39 +++++++++----
> > > >  include/linux/soc/mediatek/scpsys-ext.h | 39 +++++++++++++
> > > >  4 files changed, 168 insertions(+), 11 deletions(-)
> > > >  create mode 100644 drivers/soc/mediatek/mtk-scpsys-ext.c
> > > >  create mode 100644 include/linux/soc/mediatek/scpsys-ext.h
> > > >
> > > > diff --git a/drivers/soc/mediatek/Makefile b/drivers/soc/mediatek/Makefile
> > > > index b017330..b442be9 100644
> > > > --- a/drivers/soc/mediatek/Makefile
> > > > +++ b/drivers/soc/mediatek/Makefile
> > > > @@ -1,5 +1,5 @@
> > > >  # SPDX-License-Identifier: GPL-2.0-only
> > > >  obj-$(CONFIG_MTK_CMDQ) += mtk-cmdq-helper.o
> > > > -obj-$(CONFIG_MTK_INFRACFG) += mtk-infracfg.o
> > > > +obj-$(CONFIG_MTK_INFRACFG) += mtk-infracfg.o mtk-scpsys-ext.o
> > > >  obj-$(CONFIG_MTK_PMIC_WRAP) += mtk-pmic-wrap.o
> > > >  obj-$(CONFIG_MTK_SCPSYS) += mtk-scpsys.o
> > > > diff --git a/drivers/soc/mediatek/mtk-scpsys-ext.c b/drivers/soc/mediatek/mtk-scpsys-ext.c
> > > > new file mode 100644
> > > > index 0000000..4f1adda
> > > > --- /dev/null
> > > > +++ b/drivers/soc/mediatek/mtk-scpsys-ext.c
> > > > @@ -0,0 +1,99 @@
> > > > +// SPDX-License-Identifier: GPL-2.0
> > > > +/*
> > > > + * Copyright (c) 2018 MediaTek Inc.
> > > > + * Author: Owen Chen <Owen.Chen@mediatek.com>
> > > > + */
> > > > +#include <linux/ktime.h>
> > > > +#include <linux/mfd/syscon.h>
> > > > +#include <linux/of_device.h>
> > > > +#include <linux/regmap.h>
> > > > +#include <linux/soc/mediatek/scpsys-ext.h>
> > > > +
> > > > +#define MTK_POLL_DELAY_US   10
> > > > +#define MTK_POLL_TIMEOUT    USEC_PER_SEC
> > > > +
> > > > +static int set_bus_protection(struct regmap *map, u32 mask, u32 ack_mask,
> > > > +               u32 reg_set, u32 reg_sta, u32 reg_en)
> > > > +{
> > > > +       u32 val;
> > > > +
> > > > +       if (reg_set)
> > > > +               regmap_write(map, reg_set, mask);
> > > > +       else
> > > > +               regmap_update_bits(map, reg_en, mask, mask);
> > >
> > > At least for 8183, we never seen to use the reg_set case, can we
> > > simplify this function?
> > >
> >
> > Actually 6765 will use it and all the other MediaTek chips at least in
> > near future.
> > https://patchwork.kernel.org/patch/11042003/
> 
> Ok, that's fine then.
> 
> > > > +
> > > > +       return regmap_read_poll_timeout(map, reg_sta,
> > > > +                       val, (val & ack_mask) == ack_mask,
> > > > +                       MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
> > >
> > > From 8183, I see that you have either:
> > >  1. mask == ack_mask
> > >  2. ack_mask == 0 (essentially this skips this test)
> > >
> > > Would it be simpler to just skip this test if reg_sta == 0, and always
> > > assume mask == ack_mask otherwise?
> > >
> > > e.g.
> > > if (reg_sta == 0)
> > >    return 0;
> > >
> > > return regmap_read_poll_timeout(map, reg_sta,
> > >                        val, (val & mask) == mask,
> > >                        MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
> > >
> >
> > I'm not sure if you mean ack_mask == 0?
> > reg_sta would be possible to be 0 because it's a register address
> > offset.
> 
> Right, so maybe "0" is not a good invalid value, or maybe you can have a
> #define REG_STA_INVALID U32_MAX
> 
> And then test for:
> if (reg_sta == REG_STA_INVALID)
>    return 0;
> 
> My point here is that mask and ack_mask are always the same (unless
> you don't care about reading back the status), so maybe you only need
> to specify mask?
> 
> (but if you need different mask and ack_mask for future chips, feel
> free to ignore)
> 

I do need different mask and ack_mask.
For the special case of 8183 here, we still have to check the ack status
when setting bus protection but only ignore the ack status when clearing
bus protection.

case A.
SET: reg_set, reg_sta, mask == ack mask
CLEAR: reg_clr, reg_sta, mask == clear ack mask

case B. (the special case we discussed)
SET: reg_set, reg_sta, mask == ack mask
CLEAR: reg_clr, reg_sta, mask != clear ack mask(which is 0 now)

If I use the REG_STA_INVALID to replace the clear ack mask way.
I might need two reg_sta to satisfy the check of set and clear bus
protection.
One is valid for setting case and another is invalid for clearing case,
e.g. case 2 below

case 1.
SET: reg_set, reg_sta(valid), mask == ack mask
CLEAR: reg_clr, reg_sta(valid), mask == ack mask

case 2.
SET: reg_set, reg_sta(valid), mask == ack mask
CLEAR: reg_clr, reg_sta(invalid then return), mask == ack mask

so I'd like to keep the original proposal. What do you think?

> > I guess what you'd actually suggest is like below?
> >
> > if (ack_mask == 0)
> >     return 0;
> >
> > return regmap_read_poll_timeout(map, reg_sta,
> >                        val, (val & mask) == mask,
> >                        MTK_POLL_DELAY_US, MTK_POLL_TIMEOUT);
> >
> >
> > > > +}
> > > > +
> > > > [snip]
> > > > +
> > > > +int mtk_scpsys_ext_set_bus_protection(const struct bus_prot *bp_table,
> > > > +       struct regmap *infracfg, struct regmap *smi_common)
> > > > +{
> > > > +       int i;
> > > > +
> > > > +       for (i = 0; i < MAX_STEPS; i++) {
> > > > +               struct regmap *map = NULL;
> > > > +               int ret;
> > > > +
> > > > +               if (bp_table[i].type == INVALID_TYPE)
> > > > +                       continue;
> > >
> > > break? (but yes the one below in mtk_scpsys_ext_clear_bus_protection
> > > has to be continue).
> > >
> >
> > Thanks. I'll fix in next version.
> >
> > > > +               else if (bp_table[i].type == IFR_TYPE)
> > > > +                       map = infracfg;
> > > > +               else if (bp_table[i].type == SMI_TYPE)
> > > > +                       map = smi_common;
> > > > +
> > > > +               ret = set_bus_protection(map,
> > > > +                               bp_table[i].mask, bp_table[i].mask,
> > > > +                               bp_table[i].set_ofs, bp_table[i].sta_ofs,
> > > > +                               bp_table[i].en_ofs);
> > > > +
> > > > +               if (ret)
> > > > +                       return ret;
> > > > +       }
> > > > +
> > > > +       return 0;
> > > > +}
> > > > +
> > > > +int mtk_scpsys_ext_clear_bus_protection(const struct bus_prot *bp_table,
> > > > +       struct regmap *infracfg, struct regmap *smi_common)
> > > > +{
> > > > +       int i;
> > > > +
> > > > +       for (i = MAX_STEPS - 1; i >= 0; i--) {
> > > > +               struct regmap *map = NULL;
> > > > +               int ret;
> > > > +
> > > > +               if (bp_table[i].type == INVALID_TYPE)
> > > > +                       continue;
> > > > +               else if (bp_table[i].type == IFR_TYPE)
> > > > +                       map = infracfg;
> > > > +               else if (bp_table[i].type == SMI_TYPE)
> > > > +                       map = smi_common;
> > > > +
> > > > +               ret = clear_bus_protection(map,
> > > > +                               bp_table[i].mask, bp_table[i].clr_ack_mask,
> > > > +                               bp_table[i].clr_ofs, bp_table[i].sta_ofs,
> > > > +                               bp_table[i].en_ofs);
> > > > +
> > > > +               if (ret)
> > > > +                       return ret;
> > > > +       }
> > > > +
> > > > +       return 0;
> > > > +}
> > > > diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
> > > > index 915d635..466bb749 100644
> > > > --- a/drivers/soc/mediatek/mtk-scpsys.c
> > > > +++ b/drivers/soc/mediatek/mtk-scpsys.c
> > > > @@ -12,6 +12,7 @@
> > > >  #include <linux/pm_domain.h>
> > > >  #include <linux/regulator/consumer.h>
> > > >  #include <linux/soc/mediatek/infracfg.h>
> > > > +#include <linux/soc/mediatek/scpsys-ext.h>
> > > >
> > > >  #include <dt-bindings/power/mt2701-power.h>
> > > >  #include <dt-bindings/power/mt2712-power.h>
> > > > @@ -120,6 +121,7 @@ enum clk_id {
> > > >   * @basic_clk_id: provide the same purpose with field "clk_id"
> > > >   *                by declaring basic clock prefix name rather than clk_id.
> > > >   * @caps: The flag for active wake-up action.
> > > > + * @bp_table: The mask table for multiple step bus protection.
> > > >   */
> > > >  struct scp_domain_data {
> > > >         const char *name;
> > > > @@ -131,6 +133,7 @@ struct scp_domain_data {
> > > >         enum clk_id clk_id[MAX_CLKS];
> > > >         const char *basic_clk_id[MAX_CLKS];
> > > >         u8 caps;
> > > > +       struct bus_prot bp_table[MAX_STEPS];
> > >
> > > As with the previous patch, I'm not a big fan of having 2 approaches
> > > for something similar (bus_prot_mask vs bp_table), can we define a
> > > simple macro for this?
> > > e.g.:
> > > .bp_table = BUS_PROT_SINGLE(mask)
> >
> > Agree! I'll fix it.
> >
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
