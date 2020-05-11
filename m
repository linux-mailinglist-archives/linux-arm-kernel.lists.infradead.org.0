Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E71F1CD1AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 08:12:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YYm7jrt7k/eeeP9NDIpxj+pYtGS3xyMeeLMVhcaYLpQ=; b=tTKQOahBSHoWiu
	1d4/XuBQ/NAHkRMrKCwCercpHtPa52ycWlSKGSUKKxNOmUYNliBhznYnl8kbPJAMiG47GgAAHg9HF
	SbzBPgZRjUetlTxw6siC6WD4RAz28xqDJg0/9vDYsexjHiKBVzbBSi/+Z13j0JGDcFvx/dLnggJEl
	HaI6P+57IYCvT5aUVHEOunPWltMeMaCNGVPzXhUCxiew70zOXosrA7Bluo2Jo+pIyg2t3B4AMm2xt
	iJauRm2J6ucbICMz9eYakzzbbEYmdSF2RtzCSt1SLVsodaSg+eEDErig6f/r1Z2mPIsoGPREL1yc5
	Y79F6niqVMIGHdWCYnCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY1g9-0005H9-Oq; Mon, 11 May 2020 06:12:41 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY1g1-0005G7-Q1; Mon, 11 May 2020 06:12:35 +0000
X-UUID: a9211fb86025405f98e2290d35939a80-20200510
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=KXbgKqeV1jVjM680D36sEteF5YwDhnYQQbhiljtwUfA=; 
 b=XgEvgHZHesGhebPzMCYukgw1TLEmPm8Yjvynb3rikJ0PItXUNPlk/p0YMex37B/wfkJveNcwB0e3Wh9ek5WElssz4/qNkvLQ443NiDlGE2srSZ7IvdGKpeHomWdAtWSEjJlCS1R6S7WKwCZUHHdli2PfIbZnczFh1iUtLrr4rcs=;
X-UUID: a9211fb86025405f98e2290d35939a80-20200510
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 125597628; Sun, 10 May 2020 22:12:27 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 10 May 2020 23:02:25 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 11 May 2020 14:00:50 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 11 May 2020 14:00:50 +0800
Message-ID: <1589176850.21832.7.camel@mtksdaap41>
Subject: Re: [PATCH v14 01/11] dt-bindings: mediatek: Add property to mt8183
 smi-common
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Date: Mon, 11 May 2020 14:00:50 +0800
In-Reply-To: <7165ec9f-03ca-3020-2c34-246465094c46@collabora.com>
References: <1588752963-19934-1-git-send-email-weiyi.lu@mediatek.com>
 <1588752963-19934-2-git-send-email-weiyi.lu@mediatek.com>
 <7165ec9f-03ca-3020-2c34-246465094c46@collabora.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: E8D7064CEC30C202B634F9239908F66108878567A329A3426389968E2E92D1EB2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_231233_851249_50ACE121 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: James Liao <jamesjj.liao@mediatek.com>,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com, Rob
 Herring <robh@kernel.org>, Enric Balletbo Serra <eballetbo@gmail.com>,
 linux-kernel@vger.kernel.org, Fan Chen <fan.chen@mediatek.com>,
 devicetree <devicetree@vger.kernel.org>, linux-mediatek@lists.infradead.org,
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Wed, 2020-05-06 at 22:59 +0200, Enric Balletbo i Serra wrote:
> Hi Weiyi,
> 
> Thank you for your patch. Don't forget to cc <devicetree@vger.kernel.org>,
> otherwise this patch could be silently ignored.
> 

Thank you for reminding!

> On 6/5/20 10:15, Weiyi Lu wrote:
> > For scpsys driver using regmap based syscon driver API.
> > 
> > Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> > ---
> >  .../devicetree/bindings/memory-controllers/mediatek,smi-common.txt      | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt
> > index b478ade..01744ec 100644
> > --- a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt
> > +++ b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt
> > @@ -20,7 +20,7 @@ Required properties:
> >  	"mediatek,mt2712-smi-common"
> >  	"mediatek,mt7623-smi-common", "mediatek,mt2701-smi-common"
> >  	"mediatek,mt8173-smi-common"
> > -	"mediatek,mt8183-smi-common"
> > +	"mediatek,mt8183-smi-common", "syscon"
> >  - reg : the register and size of the SMI block.
> >  - power-domains : a phandle to the power domain of this local arbiter.
> >  - clocks : Must contain an entry for each entry in clock-names.
> > 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
