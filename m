Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0CC19895
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 08:48:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cfjedmvwVVz8CIrN8J67Seq8I9+lHcM8rV5evfJ/Xac=; b=i28AmTd72mq3R2
	4qrSiStXtvdBI44gYj2Pz5+wrXPKYZIKzXaKhYpgA1g1vrMIDtMLi7IGM9trTHra1toG4KbmuSnYF
	Paps0CeVXPu8MAV+kH1NxCadUDgtIX8uHJ3Sf+uxCPGvpsK+66Hrkb/8dicX0EmR3sBqZvHDd+HOt
	9BMevPvcWevJqy0DNS8/H7fP8j379BHmY4NBy53ZSpMv2wG4zBJDkkz2ahuazIkyxtvYBn27zpJiM
	qWCiBM3PUSYZyPMeoyHNsHg3hL2T1Y512UgAcsHgh9iQhMQPcymB0T9VUFO++p1PakxeRQkJ4B0m7
	xp7RJLxxtXQeO2o23juQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOzKw-000179-I4; Fri, 10 May 2019 06:48:54 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOzKo-00016N-Vg; Fri, 10 May 2019 06:48:49 +0000
X-UUID: 706175521b4b436b941bfc19678885fe-20190509
X-UUID: 706175521b4b436b941bfc19678885fe-20190509
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1839853325; Thu, 09 May 2019 22:48:40 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 9 May 2019 23:48:38 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 May 2019 14:48:30 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 10 May 2019 14:48:30 +0800
Message-ID: <1557470910.20990.7.camel@mtksdaap41>
Subject: Re: [PATCH v5 04/12] dt-binding: gce: add binding for gce event
 property
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Fri, 10 May 2019 14:48:30 +0800
In-Reply-To: <1557458857.29102.1.camel@mtksdaap41>
References: <20190507081355.52630-1-bibby.hsieh@mediatek.com>
 <20190507081355.52630-5-bibby.hsieh@mediatek.com>
 <1557292247.3936.5.camel@mtksdaap41> <1557458857.29102.1.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_234847_028848_3DD6BD9F 
X-CRM114-Status: GOOD (  21.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, srv_heupstream@mediatek.com,
 kendrick.hsu@mediatek.com, Daoyuan Huang <daoyuan.huang@mediatek.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Daniel Kurtz <djkurtz@chromium.org>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>, YT
 Shen <yt.shen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Houlong Wei <houlong.wei@mediatek.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Jiaguang Zhang <jiaguang.zhang@mediatek.com>,
 Frederic Chen <Frederic.Chen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, ginny.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Bibby:

On Fri, 2019-05-10 at 11:27 +0800, Bibby Hsieh wrote:
> Hi, CK,
> 
> On Wed, 2019-05-08 at 13:10 +0800, CK Hu wrote:
> > Hi, Bibby:
> > 
> > On Tue, 2019-05-07 at 16:13 +0800, Bibby Hsieh wrote:
> > > Client hardware would send event to GCE hardware,
> > > mediatek,gce-event-names and mediatek,gce-events
> > > can be used to present the event.
> > > 
> > > Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> > > ---
> > >  Documentation/devicetree/bindings/mailbox/mtk-gce.txt | 9 +++++++--
> > >  1 file changed, 7 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
> > > index 8fd9479bc9f6..76491f194c56 100644
> > > --- a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
> > > +++ b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
> > > @@ -35,6 +35,9 @@ Required properties for a client device:
> > >  Optional propertier for a client device:
> > >  - mediatek,gce-client-reg: u32, specify the sub-system id which is corresponding
> > >    to the register address.
> > > +- mediatek,gce-event-names: the event name can be defined by user.
> > 
> > gce-event is like an interrupt from client hardware to GCE hardware, we
> > do not give a name to an interrupt, so do we need to give a name for
> > gce-event?
> > 
> 
> Yes, we need to know the name of gce-ecent.
> The name can help users to figure out the problems when GCE meet the
> event time out errors.

For debug, driver does not need this information. In your example, The
event 'CMDQ_EVENT_MDP_RDMA0_SOF' is used by rdma driver. I think rdma
driver should know why it need this event (it want to know whether 'rdma
is starting to work (SOF)'), so when this event is time out, rdma driver
should know what is timeout (it knows RDMA_SOF is timeout).

Regards,
CK

> 
> 
> > Regards,
> > CK
> > 
> > > +- mediatek,gce-events: u32, the event number defined in
> > > +  'dt-bindings/gce/mt8173-gce.h' or 'dt-binding/gce/mt8183-gce.h'.
> > >  
> > >  Some vaules of properties are defined in 'dt-bindings/gce/mt8173-gce.h'
> > >  or 'dt-binding/gce/mt8183-gce.h'. Such as sub-system ids, thread priority, event ids.
> > > @@ -57,8 +60,10 @@ Example for a client device:
> > >  		compatible = "mediatek,mt8173-mmsys";
> > >  		mboxes = <&gce 0 CMDQ_THR_PRIO_LOWEST 1>,
> > >  			 <&gce 1 CMDQ_THR_PRIO_LOWEST 1>;
> > > -		mutex-event-eof = <CMDQ_EVENT_MUTEX0_STREAM_EOF
> > > -				CMDQ_EVENT_MUTEX1_STREAM_EOF>;
> > > +		mediatek,gce-event-names = "rdma0_sof",
> > > +					   "rsz0_sof";
> > > +		mediatek,gce-events = <CMDQ_EVENT_MDP_RDMA0_SOF>,
> > > +				      <CMDQ_EVENT_MDP_RSZ0_SOF>;
> > >  		mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0x3000 0x1000>,
> > >  					  <&gce SUBSYS_1401XXXX 0x2000 0x100>;
> > >  		...
> > 
> > 
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
