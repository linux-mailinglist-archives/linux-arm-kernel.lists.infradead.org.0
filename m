Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D95713A2E9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 09:23:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C7/NZLWC447fCN+DpfBbvSfoljoCc2BWTL3865qDt7k=; b=qEeSEb0fG7/R30
	OJyFDDpnMxSlIQ6ap/R7uT7XUb2fXM1cv4PGrLgdo13yOfh2vHyGghBoAkmGHj5VnW6drSM8SY8SW
	beSOye9mj4DrRZWyfHIlcAb/qoc0XCLSHfvYQCDVznVbUQUlxGUujMJAJmTqWcrqtvyNKjF3IFIIq
	yIpsPoTbyTm6Kd1vuQmCCmQJy4Jv9/XrxKOAgB+418BHpshFRB6cL16hL40y7EG76bKz4I0J0anhV
	AX/3lcMy7n188ytF4NFpzyNwO1CmrFgIycIxXHe7r1kiX/TUBquAKAELGerJjWwzHL9I2+sjhG9yd
	8a1+AIlirP46XMagjOGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irHTn-0000r6-HY; Tue, 14 Jan 2020 08:23:15 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irHTb-0000pS-Sm; Tue, 14 Jan 2020 08:23:05 +0000
X-UUID: 2887150b6aa44301a9de67b592fe3333-20200114
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=PSf/TrlUffkCTyRqTndCRzJKJpXu//HKIZ0YNx6bdFw=; 
 b=chYOECshBwzmZrReKl6nrMaK12VZosaCzK9yx74kTCHi8uBWtAmqLwjEnlMKZUtxJb+SNxYe2z5/FuqlVwF+yF6kLAUIqfSKhs9ylf3pCQ52l8Xc1ZD3l5aiSzDTxPPaqELJ+gJn5tYBcXw8bf1H3kaDX8c0PdpRMRTufXfDyJ4=;
X-UUID: 2887150b6aa44301a9de67b592fe3333-20200114
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1071186523; Tue, 14 Jan 2020 00:22:56 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 Jan 2020 00:22:54 -0800
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33DR.mediatek.inc
 (172.27.6.106) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 14 Jan 2020 16:19:45 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 14 Jan 2020 16:23:04 +0800
Message-ID: <1578990166.21256.35.camel@mhfsdcap03>
Subject: Re: [RESEND PATCH v5 01/11] dt-bindings: phy-mtk-tphy: add two
 optional properties for u2phy
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@a0393678ub>
Date: Tue, 14 Jan 2020 16:22:46 +0800
In-Reply-To: <20200110111006.GB2220@a0393678ub>
References: <1578448326-27455-1-git-send-email-chunfeng.yun@mediatek.com>
 <20200110111006.GB2220@a0393678ub>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 1AEB94C361A44643E233821C0E36D4AF5C4CF96D15DEF8217D3092ACDB6042B82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_002303_935298_E262146E 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.1 TO_MALFORMED           To: has a malformed address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kishon,

On Fri, 2020-01-10 at 16:40 +0530, Kishon Vijay Abraham I wrote:
> Hi,
> 
> On Wed, Jan 08, 2020 at 09:51:56AM +0800, Chunfeng Yun wrote:
> > Add two optional properties, one for tuning J-K voltage by INTR,
> > another for disconnect threshold, both of them are related with
> > connect detection
> > 
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > Acked-by: Rob Herring <robh@kernel.org>
> 
> Patch does not apply. I get the following errors
> error: patch failed: Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt:52
> error: Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt: patch does not apply
> error: Did you hand edit your patch?
> 
> Can you send them again in the right format?
I download this patch from https://patchwork.kernel.org/patch/11322505/
and fetch kernel5.5-rc5, then

git am --reject
RESEND-v5-01-11-dt-bindings-phy-mtk-tphy-add-two-optional-properties-for-u2phy.patch
Applying: dt-bindings: phy-mtk-tphy: add two optional properties for
u2phy
Checking patch Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt...
Applied patch Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
cleanly.

don't reproduce the error you encountered, can you tell me the steps you
apply the patch, thanks


> 
> Thanks
> Kishon
> > ---
> > v5: add acked-by Rob
> > 
> > v4: no changes
> > 
> > v3: change commit log
> > 
> > v2: change description
> > ---
> >  Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> > index a5f7a4f0dbc1..ce6abfbdfbe1 100644
> > --- a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> > +++ b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> > @@ -52,6 +52,8 @@ Optional properties (PHY_TYPE_USB2 port (child) node):
> >  - mediatek,eye-vrt	: u32, the selection of VRT reference voltage
> >  - mediatek,eye-term	: u32, the selection of HS_TX TERM reference voltage
> >  - mediatek,bc12	: bool, enable BC12 of u2phy if support it
> > +- mediatek,discth	: u32, the selection of disconnect threshold
> > +- mediatek,intr	: u32, the selection of internal R (resistance)
> >  
> >  Example:
> >  
> > -- 
> > 2.24.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
