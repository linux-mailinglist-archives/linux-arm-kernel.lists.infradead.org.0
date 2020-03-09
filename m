Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B48617DA1C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 08:56:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NdQE4meo+gDj8+hklZk3QlkSc92CgfSVDaMnuJ4tMKM=; b=aSOI65R1atLOaj
	fU1ys87AUybyFMtcIcbOixwx0yjaMpen5SXZi62p0MfcQZVb1YEL5zjQb1nlOcr3KivphGxB9zOqW
	Z8pRZWPYwL3i6l8b1JZr9bWHvoJ9kOLXK6RxSWHGBY/BjxCaduDTC5xxDzluGtGt8MzrPA0lEiQtL
	6tYX3J10Mb4h6RJTa6B1ujGWFjPsKQBTN0TbW/+kSLBKpFZTfSpPj9S1fHWMY4q5a7+dkPYBRxkMK
	tT96YtbQW4AayzXMVSGt0wQBhixMBuzxvG0GtDasnov7+1ym3L0pwdnooYLwI8morygZkqlSDqEG3
	nfnT/Fqe5PNpqWw0ZT0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBDGd-000563-Pv; Mon, 09 Mar 2020 07:56:03 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBDGV-00055O-DL; Mon, 09 Mar 2020 07:55:56 +0000
X-UUID: cbb1a81486114dd8a3380419321c1c36-20200308
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=d0wnLlS3PKlRwicESnqS4F2qX7BxraxwO4F/6cuzvFM=; 
 b=GqfUcdR9MCWpnbgw4rLso8SUipYFib64zGOBH0bgByrx7i3JuVgRrZ1o87yYSKMA2JNeln/SsFZCHhy65EZakGf8pwVbTVcBifChPhkABtFrNFYOcwbTEyophI4NtNVV/fNkKy4Z4UtKSASNQRwzmRhyzmw/tgL53INdtdZ5c54=;
X-UUID: cbb1a81486114dd8a3380419321c1c36-20200308
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <nick.fan@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1424799485; Sun, 08 Mar 2020 23:55:41 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Mar 2020 00:55:39 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Mar 2020 15:54:27 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 9 Mar 2020 15:55:55 +0800
Message-ID: <1583740539.3995.15.camel@mtksdaap41>
Subject: Re: [PATCH v4 1/7] dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
From: Nick Fan <nick.fan@mediatek.com>
To: Steven Price <steven.price@arm.com>
Date: Mon, 9 Mar 2020 15:55:39 +0800
In-Reply-To: <20200306144336.GA9234@arm.com>
References: <20200207052627.130118-1-drinkcat@chromium.org>
 <20200207052627.130118-2-drinkcat@chromium.org>
 <20200225171613.GA7063@bogus>
 <CANMq1KAVX4o5yC7c_88Wq_O=F+MaSN_V4uNcs1nzS3wBS6A5AA@mail.gmail.com>
 <1583462055.4947.6.camel@mtksdaap41>
 <CAL_JsqLoUnxfrJh0WCs0jgro1KHAjWaYMsaKkKfAKA2KJ252_g@mail.gmail.com>
 <20200306144336.GA9234@arm.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_005555_465998_006230F3 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Nicolas Boichat <drinkcat@chromium.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Devicetree List <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 lkml <linux-kernel@vger.kernel.org>, Sj Huang <sj.huang@mediatek.com>,
 Mark Brown <broonie@kernel.org>, "moderated
 list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>, Daniel
 Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>, Matthias
 Brugger <matthias.bgg@gmail.com>, linux-arm
 Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-03-06 at 14:43 +0000, Steven Price wrote:
> On Fri, Mar 06, 2020 at 02:13:08PM +0000, Rob Herring wrote:
> > On Thu, Mar 5, 2020 at 8:34 PM Nick Fan <nick.fan@mediatek.com> wrote:
> > >
> > > Sorry for my late reply.
> > > I have checked internally.
> > > The MT8183_POWER_DOMAIN_MFG_2D is just a legacy name, not really 2D
> > > domain.
> > >
> > > If the naming too confusing, we can change this name to
> > > MT8183_POWER_DOMAIN_MFG_CORE2 for consistency.
> > 
> > Can you clarify what's in each domain? Are there actually 3 shader
> > cores (IIRC, that should be discoverable)?
> 
> The cover letter from Nicolas includes:
> 
> > [  501.321752] panfrost 13040000.gpu: shader_present=0x7 l2_present=0x1
> 
> 0x7 is three bits set, so it certainly looks like there are 3 shader
> cores. Of course I wouldn't guarantee that it is as simple as each power
> domain has a shader core in. The job manager and tiler also need to be
> powered somehow, so they are either sharing with a shader core or
> there's something more complex going on.
> 
> Steve
> 
There are actually five power domains in total for MT8183 GPU.

There are 3 shader cores in MT8183.

They can be listed as following for each power domain:
1.MT8183_POWER_DOMAIN_MFG_ASYNC : SOC bus logic
2.MT8183_POWER_DOMAIN_MFG : GPU job manager & tiler
3.MT8183_POWER_DOMAIN_MFG_CORE0 : GPU shader core 0
4.MT8183_POWER_DOMAIN_MFG_CORE1 : GPU shader core 1
5.MT8183_POWER_DOMAIN_MFG_2D : GPU shader core 2

There are other power domain dependency can be reference in the
following link.
https://lkml.org/lkml/2019/2/1/166

You can check the power domain dependencies as following
==========================================================
+static const struct scp_subdomain scp_subdomain_mt8183[] = {
+	{MT8183_POWER_DOMAIN_MFG_ASYNC, MT8183_POWER_DOMAIN_MFG},
+	{MT8183_POWER_DOMAIN_MFG, MT8183_POWER_DOMAIN_MFG_2D},
+	{MT8183_POWER_DOMAIN_MFG, MT8183_POWER_DOMAIN_MFG_CORE0},
+	{MT8183_POWER_DOMAIN_MFG, MT8183_POWER_DOMAIN_MFG_CORE1},
==========================================================

Thanks

Nick Fan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
