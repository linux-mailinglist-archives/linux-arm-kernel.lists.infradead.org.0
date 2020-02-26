Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1139516F568
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 02:58:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J/BlsV/qZoBFRxsdxlQ6PNwm/2ckS7vggBcXx8R1aNo=; b=f+y81/uCosH6bI
	+0bjZqudzIXy3sBg1iM8/Ijq6od/yHQgJHQ+3Pw0asA9KFRJYg1EEZyc0A+atO2pw1nZ92NONUIE+
	eJIYCjwKlhV7+28uQ6hUrMOxst0h8GrDoe2mXs6jx7BUs09jaAdHUK5qV/zuwLckLk2GZXhnIaHgm
	KGVkEntpH12RQ3aIic1kUEp2Tqnd7iteuvRbldv5oKPHjWiaihjHMv2e1/cgnyYWnNQPZ2q7SExyO
	VoKkfJnG9cDRT4XSLDy5EA4O8GWnaJ89sHUe9EEUoAwb0ihKlQdeJ4og6yaVnVEHhsgHHYc0vyHUP
	h0Jf//+FNx+UoOveWZaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6lxy-0007Ft-IA; Wed, 26 Feb 2020 01:58:26 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6lxq-0007FJ-HM; Wed, 26 Feb 2020 01:58:19 +0000
X-UUID: 33b96651ba4d4d58b8a2b412bd4a2475-20200225
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=vf8T9NPJWFBx7DbraFo8ckmrgUSJi9hCexuNn4KVT70=; 
 b=Lc1aYqVxmjkvE/NuTc23T/B/hNlstQP00nsGSTODeMJj7NxIUrEad1qZ+NMG1tASggiTYGtQY4sEf5nFbOqhbShrF6Wpdy4b/YDu/mAVITfsjv3Jm8/P5rgV1MctUV6QMb/8Kj1G2TvFQb3RBzaYn8199qElzYw57qYTLiwuZew=;
X-UUID: 33b96651ba4d4d58b8a2b412bd4a2475-20200225
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2022579074; Tue, 25 Feb 2020 17:58:13 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 25 Feb 2020 17:58:49 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 26 Feb 2020 09:57:21 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 26 Feb 2020 09:58:19 +0800
Message-ID: <1582682289.27539.5.camel@mtksdccf07>
Subject: Re: [PATCH v3,1/8] arm64: dts: mt8183: add thermal zone node
From: Michael Kao <michael.kao@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Wed, 26 Feb 2020 09:58:09 +0800
In-Reply-To: <4fab7d40-d7d9-883e-1c50-0507ee1dd750@gmail.com>
References: <20200103064407.19861-1-michael.kao@mediatek.com>
 <20200103064407.19861-2-michael.kao@mediatek.com>
 <00c8be46-3ba1-571a-0230-7c722ce1901e@linaro.org>
 <1581391046.31005.12.camel@mtksdccf07>
 <270efbcf-51bb-629f-c64b-fa343b3d2988@linaro.org>
 <4fab7d40-d7d9-883e-1c50-0507ee1dd750@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_175818_584244_8E340C22 
X-CRM114-Status: GOOD (  19.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Zhang Rui <rui.zhang@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-02-20 at 21:57 +0100, Matthias Brugger wrote:
> 
> On 20/02/2020 12:52, Daniel Lezcano wrote:
> > On 11/02/2020 04:17, Michael Kao wrote:
> >> On Thu, 2020-01-09 at 12:31 +0100, Daniel Lezcano wrote:
> >>> On 03/01/2020 07:44, Michael Kao wrote:
> >>>> From: "michael.kao" <michael.kao@mediatek.com>
> >>>>
> >>>> Add thermal zone node to Mediatek MT8183 dts file.
> >>>>
> >>>> Signed-off-by: Michael Kao <michael.kao@mediatek.com>
> >>>> ---
> >>>>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 85 ++++++++++++++++++++++++
> >>>>  1 file changed, 85 insertions(+)
> >>>>
> >>>> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> >>>> index 10b32471bc7b..a2793cf3d994 100644
> >>>> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> >>>> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> >>>> @@ -570,6 +570,88 @@
> >>>>  			status = "disabled";
> >>>>  		};
> >>>>  
> >>>> +		thermal: thermal@1100b000 {
> >>>> +			#thermal-sensor-cells = <1>;
> >>>> +			compatible = "mediatek,mt8183-thermal";
> >>>> +			reg = <0 0x1100b000 0 0x1000>;
> >>>> +			interrupts = <0 76 IRQ_TYPE_LEVEL_LOW>;
> >>>
> >>> What is this interrupt for?
> >>
> >> The interrupts pin is designed in our SoC. But it is not used in our
> >> upstream thermal code now. There is also add the settings but not use
> >> for mt8173.dtsi. To align the thermal dtsi format, I follow the past
> >> experience to add the interrupt settings of this project first.
> > 
> > Assuming the interrupt can be set by the driver to fire when a specified
> > temperature is set, I suggest to change your driver to handle it so you
> > can get rid of the polling waking up the SoC every second.
> > 
> 
> For the record the interrupt is a required property by the binding description.
> 
> Regards,
> Matthias

After checking with interrupt owner, it is not required property for
thermal.
I will remove the property of hw-reset-temp and interrupt.
And also I will add new line to fix format.
These three change will resend v4 to fix them.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
