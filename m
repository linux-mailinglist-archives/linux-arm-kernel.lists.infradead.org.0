Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE64211E2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 03:56:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ucEF/EK7mipgrRh7R+TYqlwx0HCL7mL0BGbKAuNp4AE=; b=bIjEPFCfI/FCJn
	dXbnjdq+lMz4Mb/oiFURmkko0IbNLhRGsP8W4s3bTa1WsFlSSAy2ubcx9TjvuGp1TBtsvtHiZF9sB
	xxURlMMphvcqlPTWotjrhGkJiBvEIAXQIey3OP+i2BL2uDNYHUvuoGgn6ve2t2CNKH6P9HkPB77it
	wls79/F6zHWA5H+XJ0RExNTyUJZSml1y5jNuV672KCTUdLOKNPKkkWsgvn8ql1TTFkSWtZfEVQvYw
	nk3O59K2vZcTmTH7RoroDvfNt3TxwKSyMz8msDbeW2OwKIXvfkcCgusYeULSJ/+g1jZ2skVhzgtCj
	O4/9EiwE/nLOotGL1SHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRS6l-0004gG-MA; Fri, 17 May 2019 01:56:27 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRS6d-0004fh-Ma; Fri, 17 May 2019 01:56:21 +0000
X-UUID: a66b67a812c346169d4212313e5cb2da-20190516
X-UUID: a66b67a812c346169d4212313e5cb2da-20190516
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1631329671; Thu, 16 May 2019 17:55:56 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 18:55:54 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 17 May 2019 09:55:52 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 17 May 2019 09:55:52 +0800
Message-ID: <1558058152.14401.9.camel@mtksdaap41>
Subject: Re: [PATCH v6 03/12] dt-binding: gce: add binding for gce subsys
 property
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Fri, 17 May 2019 09:55:52 +0800
In-Reply-To: <20190516090224.59070-4-bibby.hsieh@mediatek.com>
References: <20190516090224.59070-1-bibby.hsieh@mediatek.com>
 <20190516090224.59070-4-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2233925153F968BAF379E936D0CC7EEFD651D7AB7668FE71064DB89A525084492000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_185619_735881_4173FF3C 
X-CRM114-Status: GOOD (  15.54  )
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
 Daoyuan Huang <daoyuan.huang@mediatek.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Daniel Kurtz <djkurtz@chromium.org>,
 Houlong Wei <houlong.wei@mediatek.com>, YT
 Shen <yt.shen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Dennis-YC Hsieh
 <dennis-yc.hsimediatek/mtkcam/drv/fdvt/4.0/cam_fdvt_v4l2.cppeh@mediatek.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Jiaguang Zhang <jiaguang.zhang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, ginny.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Bibby:

On Thu, 2019-05-16 at 17:02 +0800, Bibby Hsieh wrote:
> tcmdq driver provide a function that get the relationship

What is 'tcmdq'?

> of sub system number from device node for client.
> add specification for #subsys-cells, mediatek,gce-subsys.

The property name is mediatek,gce-client-reg.

Regards,
CK

> 
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  .../devicetree/bindings/mailbox/mtk-gce.txt       | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
> index 1f7f8f2a3f49..dceab63ccd06 100644
> --- a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
> +++ b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
> @@ -21,11 +21,19 @@ Required properties:
>  	priority: Priority of GCE thread.
>  	atomic_exec: GCE processing continuous packets of commands in atomic
>  		way.
> +- #subsys-cells: Should be 3.
> +	<&phandle subsys_number start_offset size>
> +	phandle: Label name of a gce node.
> +	subsys_number: specify the sub-system id which is corresponding
> +		       to the register address.
> +	start_offset: the start offset of register address that GCE can access.
> +	size: the total size of register address that GCE can access.
>  
>  Required properties for a client device:
>  - mboxes: Client use mailbox to communicate with GCE, it should have this
>    property and list of phandle, mailbox specifiers.
> -- mediatek,gce-subsys: u32, specify the sub-system id which is corresponding
> +Optional properties for a client device:
> +- mediatek,gce-client-reg: u32, specify the sub-system id which is corresponding
>    to the register address.
>  
>  Some vaules of properties are defined in 'dt-bindings/gce/mt8173-gce.h'
> @@ -40,6 +48,7 @@ Example:
>  		clocks = <&infracfg CLK_INFRA_GCE>;
>  		clock-names = "gce";
>  		#mbox-cells = <3>;
> +		#subsys-cells = <3>;
>  	};
>  
>  Example for a client device:
> @@ -48,9 +57,9 @@ Example for a client device:
>  		compatible = "mediatek,mt8173-mmsys";
>  		mboxes = <&gce 0 CMDQ_THR_PRIO_LOWEST 1>,
>  			 <&gce 1 CMDQ_THR_PRIO_LOWEST 1>;
> -		mediatek,gce-subsys = <SUBSYS_1400XXXX>;
>  		mutex-event-eof = <CMDQ_EVENT_MUTEX0_STREAM_EOF
>  				CMDQ_EVENT_MUTEX1_STREAM_EOF>;
> -
> +		mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0x3000 0x1000>,
> +					  <&gce SUBSYS_1401XXXX 0x2000 0x100>;
>  		...
>  	};



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
