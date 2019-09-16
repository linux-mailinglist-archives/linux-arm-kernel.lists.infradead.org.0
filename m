Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A52C0B346E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 07:33:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1lFIgsNniQQJQ62CWVG3Qj5EUm3McUXZIb//4YISxew=; b=Si5Ha1OWgDFtC5
	Vffx6/5E64gF9J2tME0V2vlFgGSlXfJYL9rWShI8uUvfZOb3S546ex2Xq7lSQO32MjUd6Yt8ZqVBa
	Tg0QmAE6i4wtMYS44vrEBKUxik3ET2eQ3OcfvGa+PvNwwZtuP/Q8C/6HrlFcUMeSqn3J0JWYcUUi+
	6mM8DmLzenxqr9LUZ1RA3oqUxIbqJMdtPTGYtWVQ55RkAZMxafiuewhbwd8BkUIvsMQROlsa64/rW
	bN+Xqzz61zWZeFBICzfjurJzcVx+ZE0Dafe9xxHYInFThSxMPhO1sI89emZZ6n1pT9Vz5ppyWWuvx
	zFgKEhJrV7ykNpN6g2CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9jdx-0004IH-Jd; Mon, 16 Sep 2019 05:33:45 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9jdj-0004HQ-2B; Mon, 16 Sep 2019 05:33:33 +0000
X-UUID: 38392945df964b54b8b91260cbeb214c-20190915
X-UUID: 38392945df964b54b8b91260cbeb214c-20190915
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 493585654; Sun, 15 Sep 2019 21:33:25 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 15 Sep 2019 22:33:23 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Sep 2019 13:33:22 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 16 Sep 2019 13:33:22 +0800
Message-ID: <1568612002.14078.1.camel@mtksdaap41>
Subject: Re: [RFC PATCH V4 3/4] dt-bindings: mt8183: Add sensor interface
 dt-bindings
From: Yingjoe Chen <yingjoe.chen@mediatek.com>
To: Louis Kuo <louis.kuo@mediatek.com>
Date: Mon, 16 Sep 2019 13:33:22 +0800
In-Reply-To: <20190915065004.20257-4-louis.kuo@mediatek.com>
References: <20190915065004.20257-1-louis.kuo@mediatek.com>
 <20190915065004.20257-4-louis.kuo@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_223331_112426_13A284A8 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 christie.yu@mediatek.com, srv_heupstream@mediatek.com,
 Jerry-ch.Chen@mediatek.com, tfiga@chromium.org, keiichiw@chromium.org,
 jungo.lin@mediatek.com, sj.huang@mediatek.com, yuzhao@chromium.org,
 hans.verkuil@cisco.com, zwisler@chromium.org, frederic.chen@mediatek.com,
 matthias.bgg@gmail.com, linux-mediatek@lists.infradead.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 2019-09-15 at 14:50 +0800, Louis Kuo wrote:
> This patch adds the DT binding documentation for the sensor interface
> module in Mediatek SoCs.
> 
> Signed-off-by: Louis Kuo <louis.kuo@mediatek.com>
> ---
>  .../bindings/media/mediatek-seninf.txt        | 30 +++++++++++++++++++
>  1 file changed, 30 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek-seninf.txt
> 
> diff --git a/Documentation/devicetree/bindings/media/mediatek-seninf.txt b/Documentation/devicetree/bindings/media/mediatek-seninf.txt
> new file mode 100644
> index 000000000000..bf2eb801cb47
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/mediatek-seninf.txt
> @@ -0,0 +1,30 @@
> +* Mediatek seninf MIPI-CSI2 host driver
> +
> +Seninf MIPI-CSI2 host driver is a HW camera interface controller. It support a widely adopted,
> +simple, high-speed protocol primarily intended for point-to-point image and video
> +transmission between cameras and host devices.
> +
> +Required properties:
> +  - compatible: "mediatek,mt8183-seninf"
> +  - reg: Must contain an entry for each entry in reg-names.
> +  - reg-names: Must include the following entries:
> +    "base_reg": seninf registers base
> +    "rx_reg": Rx analog registers base

Everyone here is a reg. Adding _reg prefix for everyone looks redundant.
Same for clock-names.


> +  - interrupts: interrupt number to the cpu.
> +  - clocks : clock name from clock manager
> +  - clock-names: must be CLK_CAM_SENINF and CLK_TOP_MUX_SENINF.
> +    It is the clocks of seninf
> +


Joe.C


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
