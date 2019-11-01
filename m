Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB708EBDAC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 07:10:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mfeL35lO/YGK/BJc4wS++j8s2IQ83VoqQ3WO22s0e7c=; b=caGun8zzLvZPz1
	zhtdtH2yQYJNVrJFkAzx8ITVBESt7UFuRi0v4W64ozb6yjJIKK6EJT87o9aysnunIqriv6nUreXeK
	ZKZqQtdEVHTEP+VU3hrXAMIMZbObnXvoh6JFT2zHF714dHDihF3iWwucm+SJ1//D5NLcIdHMIc39T
	a0QzAgRvTmdofaaoymxpfKg+5713NpPE5IIF5/3rpPSEU2f0YGilOyx9qiZ2I4vnT2qCZB8vREQof
	MS5HSyzBo32iDnKnSE+3Cr0M2SF4OnJXi5NGXnlcs0HtY7a9JvLYNEU+Kn+CFArUXit763xRbq2uw
	HHCSa9hBltPRijMzad0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQQ92-0006Qp-73; Fri, 01 Nov 2019 06:10:48 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQQ8R-0005ZT-QU; Fri, 01 Nov 2019 06:10:17 +0000
X-UUID: 24e65507c1494c7aa813e1e79f3bcbee-20191031
X-UUID: 24e65507c1494c7aa813e1e79f3bcbee-20191031
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <roger.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1339201955; Thu, 31 Oct 2019 22:10:06 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 31 Oct 2019 23:09:59 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 1 Nov 2019 14:09:57 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 1 Nov 2019 14:09:57 +0800
Message-ID: <1572588602.6939.1.camel@mtksdaap41>
Subject: Re: [PATCH v5 3/3] PM / AVS: SVS: Introduce SVS engine
From: Roger Lu <roger.lu@mediatek.com>
To: Pi-Hsun Shih <pihsun@chromium.org>
Date: Fri, 1 Nov 2019 14:10:02 +0800
In-Reply-To: <CANdKZ0dAWWy7QMMZhNHAha5ZpcBo1GHebPc5_FRu5gvBc569QA@mail.gmail.com>
References: <20190906100514.30803-1-roger.lu@mediatek.com>
 <20190906100514.30803-4-roger.lu@mediatek.com>
 <CANdKZ0dAWWy7QMMZhNHAha5ZpcBo1GHebPc5_FRu5gvBc569QA@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 37EE6EFD37277920D5707B79253F0016321E83FB9A72C31F0E381067B1C135692000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_231012_082260_FFF00FF9 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nicolas Boichat <drinkcat@google.com>,
 Angus Lin <Angus.Lin@mediatek.com>, Kevin Hilman <khilman@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 HenryC Chen <HenryC.Chen@mediatek.com>, yt.lee@mediatek.com, Fan
 Chen <fan.chen@mediatek.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS" <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek
 SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Nishanth
 Menon <nm@ti.com>, "moderated list:ARM/Mediatek SoC
 support" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear Pi-Hsun,

Thanks for reminding me. I'll add dev_pm_opp_put(opp) in the next
patchset.

On Mon, 2019-10-21 at 15:51 +0800, Pi-Hsun Shih wrote:
> Hi Roger,
> 
> On Fri, Sep 6, 2019 at 6:06 PM Roger Lu <roger.lu@mediatek.com> wrote:
> > ...
> > +static int svs_resource_setup(struct mtk_svs *svs)
> > ...
> > +               for (i = 0, freq = (u32)-1; i < svsb->opp_count; i++, freq--) {
> > +                       opp = dev_pm_opp_find_freq_floor(svsb->dev, &freq);
> > +                       if (IS_ERR(opp)) {
> > +                               pr_err("%s: error opp entry!!, err = %ld\n",
> > +                                      svsb->name, PTR_ERR(opp));
> > +                               return PTR_ERR(opp);
> > +                       }
> > +
> > +                       svsb->opp_freqs[i] = freq;
> > +                       svsb->opp_volts[i] = dev_pm_opp_get_voltage(opp);
> > +                       svsb->freqs_pct[i] = percent(svsb->opp_freqs[i],
> > +                                                    svsb->freq_base) & 0xff;
> 
> Should have dev_pm_opp_put(opp); here.
Sure. Thanks.

> 
> > +               }
> > +       }
> > +
> > +       return 0;
> > +}
> > ...
> > +static int svs_status_proc_show(struct seq_file *m, void *v)
> > ...
> > +       for (i = 0, freq = (u32)-1; i < svsb->opp_count; i++, freq--) {
> > +               opp = dev_pm_opp_find_freq_floor(svsb->dev, &freq);
> > +               if (IS_ERR(opp)) {
> > +                       seq_printf(m, "%s: error opp entry!!, err = %ld\n",
> > +                                  svsb->name, PTR_ERR(opp));
> > +                       return PTR_ERR(opp);
> > +               }
> > +
> > +               seq_printf(m, "opp_freqs[%02u]: %lu, volts[%02u]: %lu, ",
> > +                          i, freq, i, dev_pm_opp_get_voltage(opp));
> > +               seq_printf(m, "svsb_volts[%02u]: 0x%x, freqs_pct[%02u]: %u\n",
> > +                          i, svsb->volts[i], i, svsb->freqs_pct[i]);
> 
> Same here.
Sure. Thanks.

> 
> > +       }
> > +
> > +       return 0;
> > +}
> > ...



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
