Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66041A68A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 14:37:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0YFdKVeFOYMvU9dB7585pvMdelJhH9DMVP6eP1net34=; b=C2ovjfPuO/VC+t
	F7xAF//gZh2as8S0jOtHSS0fuCWsD+RjG/6CNEpaacPBxfEWrtQS6PAFugBV7qmJFSsNRHoz8UEzF
	sBaXC8t6dh6GkGOB1OceksT0KGZmgh8Xgr05ro24pEhgyy5nKTTgiKOEXqmMCQHZDi+xA4/Yzb+fu
	WV63+MEbmqDgaU/9vSwowF0jvmZbXMM46zEETheWW9D11s/t/CDKsRr8OLey0Ahbkv/U2JUraiUuv
	YQLxOV86Kz8v0xrSH5HDFd/CV8FwANNiEBws4kcg/MXlPMcQINjVsefAejqbxVS/euWwEtBMjKUPP
	CYtwwu/YpeiQJyHfU4Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i583l-0003Nd-3p; Tue, 03 Sep 2019 12:37:21 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i583Y-0003MJ-T9; Tue, 03 Sep 2019 12:37:10 +0000
X-UUID: e5bfbae2f5934696853f8d98e60d9e7a-20190903
X-UUID: e5bfbae2f5934696853f8d98e60d9e7a-20190903
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <henryc.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2098847012; Tue, 03 Sep 2019 04:36:59 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Sep 2019 05:36:58 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Sep 2019 20:36:51 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 3 Sep 2019 20:36:51 +0800
Message-ID: <1567514210.31403.8.camel@mtksdaap41>
Subject: Re: [PATCH V3 08/10] dt-bindings: interconnect: add MT8183
 interconnect dt-bindings
From: Henry Chen <henryc.chen@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Tue, 3 Sep 2019 20:36:50 +0800
In-Reply-To: <20190902033045.GA10734@bogus>
References: <1566995328-15158-1-git-send-email-henryc.chen@mediatek.com>
 <1566995328-15158-9-git-send-email-henryc.chen@mediatek.com>
 <20190902033045.GA10734@bogus>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_053708_950997_7DCA7CEC 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Nicolas Boichat <drinkcat@google.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 James Liao <jamesjj.liao@mediatek.com>, Viresh Kumar <vireshk@kernel.org>,
 linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 Fan Chen <fan.chen@mediatek.com>, devicetree@vger.kernel.org,
 Ryan Case <ryandcase@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Georgi Djakov <georgi.djakov@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-09-02 at 14:38 +0100, Rob Herring wrote:
Hi Rob,
> On Wed, Aug 28, 2019 at 08:28:46PM +0800, Henry Chen wrote:
> > Add interconnect provider dt-bindings for MT8183.
> > 
> > Signed-off-by: Henry Chen <henryc.chen@mediatek.com>
> > ---
> >  .../devicetree/bindings/soc/mediatek/dvfsrc.txt        |  9 +++++++++
> >  include/dt-bindings/interconnect/mtk,mt8183-emi.h      | 18 ++++++++++++++++++
> >  2 files changed, 27 insertions(+)
> >  create mode 100644 include/dt-bindings/interconnect/mtk,mt8183-emi.h
> > 
> > diff --git a/Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt b/Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt
> > index 7f43499..da98ec9 100644
> > --- a/Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt
> > +++ b/Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt
> > @@ -12,6 +12,11 @@ Required Properties:
> >  - clock-names: Must include the following entries:
> >  	"dvfsrc": DVFSRC module clock
> >  - clocks: Must contain an entry for each entry in clock-names.
> > +- #interconnect-cells : should contain 1
> > +- interconnect : interconnect providers support dram bandwidth requirements.
> > +	The provider is able to communicate with the DVFSRC and send the dram
> > +	bandwidth to it. shall contain only one of the following:
> > +	"mediatek,mt8183-emi"
> >  
> >  Example:
> >  
> > @@ -20,4 +25,8 @@ Example:
> >  		reg = <0 0x10012000 0 0x1000>;
> >  		clocks = <&infracfg CLK_INFRA_DVFSRC>;
> >  		clock-names = "dvfsrc";
> > +		ddr_emi: interconnect {
> 
> The EMI is a sub-module in the DVFSRC? This is the DDR controller or 
> something else?
Yes, EMI is a sub-module in the DVFSRC, the EMI through interconnect
framework to collect DRAM bandwidth from other device drivers and will
send the bandwidth result to DVFSRC driver.
> 
> 
> > +			compatible = "mediatek,mt8183-emi";
> > +			#interconnect-cells = <1>;
> > +		};
> >  	};
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
