Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B38F51F725E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 05:05:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xq5PEOKS7UigJSVJbsClHMCpnrpplHt+L5bSTXRt3W4=; b=txR6H0iUgCA8ed
	QNiCBsezDCyILQvczMp5y05BYHaYRV49jn9jOKPWsj33aTSBcBwmS6Fod0UVt+wd1XPdMKjngekp/
	t2h3niFUC8F4xz1qKLqJzdM+fOZ32/XgXbRndeykzrxeiwgz0VF3ztT9e2xFhy+FAjW3MFFPkSQxh
	PQ/1fyUwW0E03tS0sUCI0a7xryGCdn+SkC0ozd+E9hDiLPnINQ2ZFO9hDQwcnuDoFgUEKqGCVEdxr
	TNskuIHsap9xG6O/78cF9DZ3TpEZUh2mdi/SJwP+Y6cVfT1KOcoxoCjxWaJFZb0LbbFvHnB9zjV2L
	2eVAwFoDDZAPh1Zivfmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jja02-0004xw-Vt; Fri, 12 Jun 2020 03:04:58 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjZzs-0004we-Rf; Fri, 12 Jun 2020 03:04:50 +0000
X-UUID: a0a94743c2d247fb80686d977340cd5d-20200611
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=4ugaD47iUL4BuPnMM1qrVPvyuTBGu1L6KG0vHWf0DCc=; 
 b=rPRWkJxBR1yYN75ni+N1ZK1CPz2zpQccPkSTbyJiJnKOxG70PpMbuijmNTC8y+u6jg1G3EIW+SH4WLGoqXH3Vk7qjuorjhVF2dbkojBksaEo27rYn5B7vLbRjFxzUsEOmY9rYpXNWjFgFsEREo8/K5C6e3Ga12x3psZCiO7VNzU=;
X-UUID: a0a94743c2d247fb80686d977340cd5d-20200611
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 99498391; Thu, 11 Jun 2020 19:04:39 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 11 Jun 2020 20:03:58 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 12 Jun 2020 11:03:56 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 12 Jun 2020 11:03:56 +0800
Message-ID: <1591931042.32738.26.camel@mtkswgap22>
Subject: Re: [PATCH 2/2] soc: mediatek: devapc: add devapc-mt6873 driver
From: Neal Liu <neal.liu@mediatek.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Fri, 12 Jun 2020 11:04:02 +0800
In-Reply-To: <CAAOTY_8gOjr9nBUVA6oNu0v+D0Rc0AbhJ41wBCvDpMme+kuHmA@mail.gmail.com>
References: <1591698261-22639-1-git-send-email-neal.liu@mediatek.com>
 <1591698261-22639-3-git-send-email-neal.liu@mediatek.com>
 <CAAOTY__g3Fnwsoqx=x_tgdMii5K_L9TmF_9048XbAOSJwb-Cxg@mail.gmail.com>
 <1591867563.27949.9.camel@mtkswgap22>
 <CAAOTY_8gOjr9nBUVA6oNu0v+D0Rc0AbhJ41wBCvDpMme+kuHmA@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 005BB3DA2D65FC5B57A0519DAAFE8FDBD2C12F6D6217733C280C03F26BF6CFFA2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_200448_900891_00621757 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 wsd_upstream <wsd_upstream@mediatek.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Neal Liu <neal.liu@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chun-Kuang,

[snip]
> > > > +/*
> > > > + * devapc_violation_irq - the devapc Interrupt Service Routine (ISR) will dump
> > > > + *                       violation information including which master violates
> > > > + *                       access slave.
> > > > + */
> > > > +static irqreturn_t devapc_violation_irq(int irq_number, void *dev_id)
> > > > +{
> > > > +       u32 slave_type_num = mtk_devapc_ctx->soc->slave_type_num;
> > > > +       const struct mtk_device_info **device_info;
> > > > +       struct mtk_devapc_vio_info *vio_info;
> > > > +       int slave_type, vio_idx, index;
> > > > +       const char *vio_master;
> > > > +       unsigned long flags;
> > > > +       bool normal;
> > > > +       u8 perm;
> > > > +
> > > > +       spin_lock_irqsave(&devapc_lock, flags);
> > > > +
> > > > +       device_info = mtk_devapc_ctx->soc->device_info;
> > > > +       vio_info = mtk_devapc_ctx->soc->vio_info;
> > > > +       normal = false;
> > > > +       vio_idx = -1;
> > > > +       index = -1;
> > > > +
> > > > +       /* There are multiple DEVAPC_PD */
> > > > +       for (slave_type = 0; slave_type < slave_type_num; slave_type++) {
> > > > +               if (!check_type2_vio_status(slave_type, &vio_idx, &index))
> > > > +                       if (!mtk_devapc_dump_vio_dbg(slave_type, &vio_idx,
> > > > +                                                    &index))
> > > > +                               continue;
> > > > +
> > > > +               /* Ensure that violation info are written before
> > > > +                * further operations
> > > > +                */
> > > > +               smp_mb();
> > > > +               normal = true;
> > > > +
> > > > +               mask_module_irq(slave_type, vio_idx, true);
> > > > +
> > > > +               if (clear_vio_status(slave_type, vio_idx))
> > > > +                       pr_warn(PFX "%s, %s:0x%x, %s:0x%x\n",
> > > > +                               "clear vio status failed",
> > > > +                               "slave_type", slave_type,
> > > > +                               "vio_index", vio_idx);
> > > > +
> > > > +               perm = get_permission(slave_type, index, vio_info->domain_id);
> > > > +
> > > > +               vio_master = mtk_devapc_ctx->soc->master_get
> > > > +                       (vio_info->master_id,
> > > > +                        vio_info->vio_addr,
> > > > +                        slave_type,
> > > > +                        vio_info->shift_sta_bit,
> > > > +                        vio_info->domain_id);
> > >
> > > Call mt6873_bus_id_to_master() directly. For first patch, make things
> > > as simple as possible.
> >
> > In devapc_violation_irq() function, we use common flow to handle each
> > devapc violation on different platforms. The master_get() has different
> > implementation on different platforms, that why it called indirectly.
> >
> > Once we have new platform, we only have to update devapc-mtxxxx.c
> > instead of common handler flow.
> 
> You just upstream one SoC now, so I have no information of 2nd SoC.
> Without the 2nd SoC, how do we know what is common and what is SoC special?
> So the first patch should not consider the things which does not exist yet.
> 
> Regards,
> Chun-Kuang.
> 

It has lots of refactoring work need to do if you really want make it
"simple". Could I explain more details and let you judge it is simple
enough?
For most MediaTek DEVAPC hw, the violation interrupt handling sequence
is shown below.

1. Domain processor receives a interrupt issued by DEVAPC.
2. Software read the violation status and identify it.
3. Software read the debug information which are stored in hw register.
	a. debug information includes master ID, domain ID, violation
address, ...
4. Transfer debug information to human readable strings.
5. Extra handler to dispatch owner directly.

What we really care is which master violates the rules, and which slave
had been accessed unexpectedly.

Here are platform specific information:
1. Slaves layout (platform devices)
2. hw register layout which are stored violation information
3. Master ID mapping table
4. Domain ID mapping table

Hope these steps could help you understand what is common and what is
SoC specific. If you want to see the 2nd SoC's driver, I can also send
it for you to take a look.

Thanks,
Neal

> >
> > >
> > > > +
> > > > +               if (!vio_master) {
> > > > +                       pr_warn(PFX "master_get failed\n");
> > > > +                       vio_master = "UNKNOWN_MASTER";
> > > > +               }
> > > > +
> > > > +               pr_info(PFX "%s - %s:0x%x, %s:0x%x, %s:0x%x, %s:0x%x\n",
> > > > +                       "Violation", "slave_type", slave_type,
> > > > +                       "sys_index",
> > > > +                       device_info[slave_type][index].sys_index,
> > > > +                       "ctrl_index",
> > > > +                       device_info[slave_type][index].ctrl_index,
> > > > +                       "vio_index",
> > > > +                       device_info[slave_type][index].vio_index);
> > > > +
> > > > +               pr_info(PFX "%s %s %s %s\n",
> > > > +                       "Violation - master:", vio_master,
> > > > +                       "access violation slave:",
> > > > +                       device_info[slave_type][index].device);
> > > > +
> > > > +               devapc_vio_reason(perm);
> > > > +
> > > > +               devapc_extra_handler(slave_type, vio_master, vio_idx,
> > > > +                                    vio_info->vio_addr);
> > > > +
> > > > +               mask_module_irq(slave_type, vio_idx, false);
> > > > +       }
> > > > +
> > > > +       if (normal) {
> > > > +               spin_unlock_irqrestore(&devapc_lock, flags);
> > > > +               return IRQ_HANDLED;
> > > > +       }
> > > > +
> > > > +       spin_unlock_irqrestore(&devapc_lock, flags);
> > > > +       return IRQ_HANDLED;
> > > > +}
> > > > +
> >
> > [snip]
> >
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
