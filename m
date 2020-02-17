Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C2B160FB5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 11:15:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6BFeWUJQNlyDsFYyA0H9qrlT/ekFhJdqCBi0qHRcfI=; b=n3rt9EbajPWobd
	uH+qHWeN2ABPt3czLbYO3HNcrkcsMDTTuObTtctaJi5BN+Sus4tYV6k7JblLD4syhio4PxcVIQa/0
	CNbK9cTdwrH/dVRou+QkfPJlt79KWix1/HlQqPptL9MbHanmg+Jihc+9xBSIhRg7+YWVMte1lrBCt
	DZ8mRuYgjsWdkVepNttxb/Itsopxr0Z04q9A9XNA+XJSXZb8mTL1uP5AjM4qAr9VQvYTWSqnLzlvD
	OZnFn7gauu8skbuEeBQ3mQ8GNDA9G+wEIctlP5ULtlBmyMDTLNpVqWlRqg1alJsulC+iwoqiCsH2Y
	M9JVZ3Lwz6RDQMSPOH6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3dRA-0003RQ-Cw; Mon, 17 Feb 2020 10:15:36 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3dR2-0003Pz-7q; Mon, 17 Feb 2020 10:15:29 +0000
X-UUID: 7957a477d40e4ef0b46a597c51d8746f-20200217
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=ABI0N2j/Jh+drizYMIhvk5l8R+23rLL1RNKJu4e6TbI=; 
 b=G+b/IfdwcG3M8LNEPiHJAT5OhXWEJsTb08T16n0eZiJnYalDcqUirVFDMgpUxjL4aOVuSxItbkeWmV8Br9pdESUwUaPsik++imSBJfsgqJK9wCrYYj1hs9dM/+QJU0k1Xc4jQ7RVZxjKwKA+3uFKqkZgovD92Nv2XIbHxHBbvM4=;
X-UUID: 7957a477d40e4ef0b46a597c51d8746f-20200217
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <yong.liang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1203119227; Mon, 17 Feb 2020 02:15:24 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 02:15:43 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33DR.mediatek.inc
 (172.27.6.106) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 17 Feb 2020 18:11:01 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 17 Feb 2020 18:14:35 +0800
Message-ID: <1581934493.27500.4.camel@mhfsdcap03>
Subject: Re: [PATCH 1/1] amr64: dts: modify mt8183.dtsi
From: Yong Liang <yong.liang@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Mon, 17 Feb 2020 18:14:53 +0800
In-Reply-To: <b0345cfc-0e7c-65a8-5ff3-ea064b6c8905@gmail.com>
References: <Add watchdog device node>
 <20200217081922.22544-1-yong.liang@mediatek.com>
 <20200217081922.22544-2-yong.liang@mediatek.com>
 <b0345cfc-0e7c-65a8-5ff3-ea064b6c8905@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: C869A12EC30298FAB5FD83CF057EFEA45400B4271D34EE09E02F69FD808CD1172000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_021528_290852_E2759E9E 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-02-17 at 18:05 +0800, Matthias Brugger wrote:
> 
> On 17/02/2020 09:19, Yong Liang wrote:
> > From: "yong.liang" <yong.liang@mediatek.com>
> > 
> > Add watchdog device node
> > Document base on http://lists.infradead.org/pipermail/linux-mediatek/2020-January/026415.html
> > 
> 
> Commit message shouldn't contain links to the mailinglist this is additional
> information just for review and should go after '---'
> 
> 
> > Signed-off-by: yong.liang <yong.liang@mediatek.com>
> > ---
> 
> Next time please put reference to series your patches are based on here :)
> 
> I fixed the commit message (the subject wasn't really usefull, I fixed that too)
> and pushed it to v5.6-next/dts64
> 
> Thanks,
> Matthias

  Hi Matthias:
     So this patch confirmd to be merged?
     Thansk you very much!
> 
> >  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > index 10b32471bc7b..8b59e0eba2eb 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > @@ -253,6 +253,13 @@
> >  			#interrupt-cells = <2>;
> >  		};
> >  
> > +		watchdog: watchdog@10007000 {
> > +			compatible = "mediatek,mt8183-wdt",
> > +				     "mediatek,mt6589-wdt";
> > +			reg = <0 0x10007000 0 0x100>;
> > +			#reset-cells = <1>;
> > +		};
> > +
> >  		apmixedsys: syscon@1000c000 {
> >  			compatible = "mediatek,mt8183-apmixedsys", "syscon";
> >  			reg = <0 0x1000c000 0 0x1000>;
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
