Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDA2B16F550
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 02:52:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/z8WeiZx7Itsrcf0kPZVza1DmQlO7t/qjIGtnNqPORg=; b=UMwefRhDBOtcD3
	2c7nFoiU7OJmDE4VhtING85+HIjQXnq9DNQxZM/GveAxckNIk578ZccczfGAp08BH0q5944Ww0e/J
	n9Zzr3YGIbd4sqvdo+TKEpP3HsJayMdDgG+TBnl1N8RDxC6XyU0o/jRTIxEviaNnXWhPU1qQ9vREM
	w6jcqQhuVeCcG1ydickMzP56OxHQ7bXcWVFj1klvwDa8/H46STQPPM64gCUweZtOGAv6rA3Jv40RU
	wDqmfzmlUGXeLSWG0RfQR3I5lSfmaVZ1Z3Qpr/MTAZFOv3rO5YfGSAQ6goc/jAsMWJZZRbx5mNqPa
	S63qe+JTRnFaSSaNrGsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6lsK-0005Gg-J2; Wed, 26 Feb 2020 01:52:36 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6lsB-0005Fs-MW; Wed, 26 Feb 2020 01:52:29 +0000
X-UUID: 5dae918d64664bd3bb3bd22449050494-20200225
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=U5dy4O9U1YCjMd3HfOjbAbPOYUVKV3VTQCaAPmr7dCw=; 
 b=ePc0xyAXZnVrqibKNf4RZHSMGGRdn3Xdc5kY6BOrdY9gvxftmUulSAII38L6w1ezwq+jm6iPlc1i996Nsgo1oN2Oop0Bmk6DXw/q7hcg3anMxUzUBdo9KexkKm9AwCNezj27haHts3vArf5LN0Y4Km9aD/YTn5nqjJZf3snbSWA=;
X-UUID: 5dae918d64664bd3bb3bd22449050494-20200225
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 228932966; Tue, 25 Feb 2020 17:52:23 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 25 Feb 2020 17:52:59 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 26 Feb 2020 09:51:31 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 26 Feb 2020 09:52:29 +0800
Message-ID: <1582681939.16944.4.camel@mtksdaap41>
Subject: Re: [PATCH v8 1/7] dt-bindings: media: add pclk-sample dual edge
 property
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Wed, 26 Feb 2020 09:52:19 +0800
In-Reply-To: <20200225094057.120144-2-jitao.shi@mediatek.com>
References: <20200225094057.120144-1-jitao.shi@mediatek.com>
 <20200225094057.120144-2-jitao.shi@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_175227_749619_EDF6F9CD 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
 bibby.hsieh@mediatek.com, srv_heupstream@mediatek.com,
 David Airlie <airlied@linux.ie>, huijuan.xie@mediatek.com, stonea168@163.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 cawa.cheng@mediatek.com, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2020-02-25 at 17:40 +0800, Jitao Shi wrote:
> Some chips's sample mode are rising, falling and dual edge (both
> falling and rising edge).
> Extern the pclk-sample property to support dual edge.
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  Documentation/devicetree/bindings/media/video-interfaces.txt | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/video-interfaces.txt b/Documentation/devicetree/bindings/media/video-interfaces.txt
> index f884ada0bffc..da9ad24935db 100644
> --- a/Documentation/devicetree/bindings/media/video-interfaces.txt
> +++ b/Documentation/devicetree/bindings/media/video-interfaces.txt
> @@ -118,8 +118,8 @@ Optional endpoint properties
>  - data-enable-active: similar to HSYNC and VSYNC, specifies the data enable
>    signal polarity.
>  - field-even-active: field signal level during the even field data transmission.
> -- pclk-sample: sample data on rising (1) or falling (0) edge of the pixel clock
> -  signal.
> +- pclk-sample: sample data on rising (1), falling (0) or both rising and
> +  falling (2) edge of the pixel clock signal.
>  - sync-on-green-active: active state of Sync-on-green (SoG) signal, 0/1 for
>    LOW/HIGH respectively.
>  - data-lanes: an array of physical data lane indexes. Position of an entry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
