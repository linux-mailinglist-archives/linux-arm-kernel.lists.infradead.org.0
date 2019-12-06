Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57194114E3B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 10:35:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3S4d63n2oYzvxPGo5RLgCs8Jua3Rsx5DDoGXKpKOwvM=; b=SvpddmJJNCvN7b
	HXoUdI2mv8Wi1uZ9XHZMeF3j9/aA+bDIvIx85f8Qy7knOf1d86FDhr8oGk38+smBByzhdYsQ/y/zZ
	WidPAKTfRt/rnpgBWqDreSC6aM5ExbtdzvCBJNLY9Vb4udZH3LL2UFWsET8xsp+bMkcWk/yT3j30J
	VkX7A0rExD3qxv/zTdyJXTL2v5CMwHX5HJBriiJ8gmzQkgf/8ZhqRzAzRrGaUhHTFlL8JUKr+wPt9
	M2QTbxH/9Ex1s0zdBLG4o5IldqOeW/ryBvpAgkJJV6qqYOrl1o72V92IOzu2nQECzVZiwsQyIFNO0
	Uol39ranWvTVdgkZFdLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idA1e-0001As-T5; Fri, 06 Dec 2019 09:35:50 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idA1T-00018u-J7; Fri, 06 Dec 2019 09:35:40 +0000
X-UUID: 53829ed671054a31b02ef0970f3a8bd5-20191206
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=vR5+TmnGL8k18O3RfwhBu/Xl8JNbLQTJoi3SA28TkwA=; 
 b=IT0M4fxlf04vCZUmXKfd8p6Z8eU6EiLiGcyUDVQ6sv7ieEMEZWYZffaAQqurBHjuGJcLBxwn14KQrJrLgxSP+PGNPcr/2MEROwY97f8qMMA1huT6oSkCJkH1RlJfhQa4kDm6cPr3ey97YuPFT+Ejf+U7rMeffl/Mcgl9aq6hA2Q=;
X-UUID: 53829ed671054a31b02ef0970f3a8bd5-20191206
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 143918802; Fri, 06 Dec 2019 01:35:33 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Dec 2019 01:36:20 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Dec 2019 17:35:27 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 6 Dec 2019 17:34:50 +0800
Message-ID: <1575624927.1631.7.camel@mtksdccf07>
Subject: Re: [PATCH v2 7/8] thermal: mediatek: add another get_temp ops for
 thermal sensors
From: Michael Kao <michael.kao@mediatek.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Fri, 6 Dec 2019 17:35:27 +0800
In-Reply-To: <CAJMQK-ivho3T1hnD9axV2EMKT3Srs_5zAXLqwts8nojY15fBGg@mail.gmail.com>
References: <1557494826-6044-1-git-send-email-michael.kao@mediatek.com>
 <1557494826-6044-8-git-send-email-michael.kao@mediatek.com>
 <CAJMQK-ivho3T1hnD9axV2EMKT3Srs_5zAXLqwts8nojY15fBGg@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: B074D70E04D46F7F6E1F3B63CE826B399628CA35CC3E3E458B7FA485D552647E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_013539_639495_2F6650A5 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 lkml <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-11-21 at 15:00 +0800, Hsin-Yi Wang wrote:
> On Fri, May 10, 2019 at 9:27 PM michael.kao <michael.kao@mediatek.com> wrote:
> 
> > -       tzdev = devm_thermal_zone_of_sensor_register(&pdev->dev, 0, mt,
> > -                                                    &mtk_thermal_ops);
> > -       if (IS_ERR(tzdev)) {
> > -               ret = PTR_ERR(tzdev);
> > -               goto err_disable_clk_peri_therm;
> > +       for (i = 0; i < mt->conf->num_sensors + 1; i++) {
> > +               tz = kmalloc(sizeof(*tz), GFP_KERNEL);
> > +               if (!tz)
> > +                       return -ENOMEM;
> > +
> > +               tz->mt = mt;
> > +               tz->id = i;
> > +
> > +               tzdev = devm_thermal_zone_of_sensor_register(&pdev->dev, i,
> > +                               tz, (i == 0) ?
> > +                               &mtk_thermal_ops : &mtk_thermal_sensor_ops);
> > +
> > +               if (IS_ERR(tzdev)) {
> > +                       if (IS_ERR(tzdev) != -EACCES) {
>                                 PTR_ERR(tzdev)
> 
> > +                               ret = PTR_ERR(tzdev);
> > +                               goto err_disable_clk_peri_therm;
> > +                       }
> > +               }
> 
> This for loop adding thermal zone sensors will not work for mt8173. It
> assumes that thermal-zones in dts have subnodes (eg. cpu_thermal,
> tzts..) amount equal to num_sensors+1. Otherwise tzdev would be
> -ENODEV and thermal failed to be probed.
> In mt8183 this is fine, since each thermal zone only has one sensor,
> but in mt8173, some sensor appears in multiple thermal zones.
> 
> In order to let the change also works for 8173, I think if the error
> is -ENODEV, and the id is not 0 (0 is cpu_thermal), prompt a warning
> instead of failing. Eg.
> 
>                 if (IS_ERR(tzdev)) {
> +                       if (i > 0 && PTR_ERR(tzdev) == -ENODEV) {
> +                               dev_warn(&pdev->dev, "can't find
> thermal sensor %d\n", i);
> +                               continue;
> +                       }
>                         if (PTR_ERR(tzdev) != -EACCES) {

OK, I will update this patch.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
