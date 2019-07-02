Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 956FF5CD1D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 12:00:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FKsl5qziQEsn6x8+Xfgg1aWEsh88lxuQNcTk7khER1s=; b=ZHdpwItuRSAQS3
	nXDvdftC3Fo943twMoS99XQzQ6lhUGOxPsyPcBiNhZMYVfIAqePuxZARTLxkw1C41AdyxggVDzrVs
	7r76lqXYiObnyPwpAoBOxi/C1AIVfPMkfKbUW6aVcfp1qaA7DRXhwMn85CJeLENY/WrRJUQytwHId
	glAof5qYtQbknsbBhCHx1OkaXMdt+9bFRvEn/AFiuNXzdCkLZkvnr6AmjEca3VxVCmWkSxvGqKch2
	4Kf6vN3Qj2iiUPgVEiUvfpP2deQ82Hzni3oINQXzno6UI2HP35fuoa7R1oRxXbcOcYO5YXLV0jK+o
	mIqDqjUUgSZ3i7IrygIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiFaj-0000vo-QA; Tue, 02 Jul 2019 10:00:49 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiFaJ-0000fz-8j; Tue, 02 Jul 2019 10:00:25 +0000
X-UUID: ef8ad09672cb40dfb8dabfb2abdca48f-20190702
X-UUID: ef8ad09672cb40dfb8dabfb2abdca48f-20190702
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1426882143; Tue, 02 Jul 2019 02:00:18 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 2 Jul 2019 03:00:17 -0700
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 2 Jul 2019 18:00:15 +0800
Message-ID: <1562061615.29303.2.camel@mtkswgap22>
Subject: Re: [PATCH 1/3] add doc and MAINTAINERS for poweroff
From: Ryder Lee <ryder.lee@mediatek.com>
To: Frank Wunderlich <frank-w@public-files.de>, Sean Wang
 <Sean.Wang@mediatek.com>
Date: Tue, 2 Jul 2019 18:00:15 +0800
In-Reply-To: <20190702094045.3652-2-frank-w@public-files.de>
References: <20190702094045.3652-1-frank-w@public-files.de>
 <20190702094045.3652-2-frank-w@public-files.de>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_030023_361251_95AF8BD2 
X-CRM114-Status: GOOD (  21.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Josef Friedl <josef.friedl@speed.at>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+Sean

On Tue, 2019-07-02 at 11:40 +0200, Frank Wunderlich wrote:
> From: Josef Friedl <josef.friedl@speed.at>
> 
> poweroff for BPI-R2
> Suggested-by: Frank Wunderlich <frank-w@public-files.de>
> 
> Signed-off-by: Josef Friedl <josef.friedl@speed.at>
> ---
>  .../devicetree/bindings/mfd/mt6397.txt        | 10 ++++++-
>  .../bindings/power/reset/mt6323-poweroff.txt  | 20 +++++++++++++
>  .../devicetree/bindings/rtc/rtc-mt6397.txt    | 29 +++++++++++++++++++
>  MAINTAINERS                                   |  6 ++++
>  4 files changed, 64 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt
>  create mode 100644 Documentation/devicetree/bindings/rtc/rtc-mt6397.txt
> 
> diff --git a/Documentation/devicetree/bindings/mfd/mt6397.txt b/Documentation/devicetree/bindings/mfd/mt6397.txt
> index 0ebd08af777d..44acb9827716 100644
> --- a/Documentation/devicetree/bindings/mfd/mt6397.txt
> +++ b/Documentation/devicetree/bindings/mfd/mt6397.txt
> @@ -8,6 +8,7 @@ MT6397/MT6323 is a multifunction device with the following sub modules:
>  - Clock
>  - LED
>  - Keys
> +- Power controller
> 
>  It is interfaced to host controller using SPI interface by a proprietary hardware
>  called PMIC wrapper or pwrap. MT6397/MT6323 MFD is a child device of pwrap.
> @@ -22,8 +23,10 @@ compatible: "mediatek,mt6397" or "mediatek,mt6323"
>  Optional subnodes:
> 
>  - rtc
> -	Required properties:
> +	Required properties: Should be one of follows
> +		- compatible: "mediatek,mt6323-rtc"
>  		- compatible: "mediatek,mt6397-rtc"
> +	For details, see Documentation/devicetree/bindings/rtc/rtc-mt6397.txt
>  - regulators
>  	Required properties:
>  		- compatible: "mediatek,mt6397-regulator"
> @@ -46,6 +49,11 @@ Optional subnodes:
>  		- compatible: "mediatek,mt6397-keys" or "mediatek,mt6323-keys"
>  	see Documentation/devicetree/bindings/input/mtk-pmic-keys.txt
> 
> +- power-controller
> +	Required properties:
> +		- compatible: "mediatek,mt6323-pwrc"
> +	For details, see Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt
> +
>  Example:
>  	pwrap: pwrap@1000f000 {
>  		compatible = "mediatek,mt8135-pwrap";
> diff --git a/Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt b/Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt
> new file mode 100644
> index 000000000000..933f0c48e887
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt
> @@ -0,0 +1,20 @@
> +Device Tree Bindings for Power Controller on MediaTek PMIC
> +
> +The power controller which could be found on PMIC is responsible for externally
> +powering off or on the remote MediaTek SoC through the circuit BBPU.
> +
> +Required properties:
> +- compatible: Should be one of follows
> +       "mediatek,mt6323-pwrc": for MT6323 PMIC
> +
> +Example:
> +
> +       pmic {
> +               compatible = "mediatek,mt6323";
> +
> +               ...
> +
> +               power-controller {
> +                       compatible = "mediatek,mt6323-pwrc";
> +               };
> +       }
> diff --git a/Documentation/devicetree/bindings/rtc/rtc-mt6397.txt b/Documentation/devicetree/bindings/rtc/rtc-mt6397.txt
> new file mode 100644
> index 000000000000..ebd1cf80dcc8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/rtc/rtc-mt6397.txt
> @@ -0,0 +1,29 @@
> +Device-Tree bindings for MediaTek PMIC based RTC
> +
> +MediaTek PMIC based RTC is an independent function of MediaTek PMIC that works
> +as a type of multi-function device (MFD). The RTC can be configured and set up
> +with PMIC wrapper bus which is a common resource shared with the other
> +functions found on the same PMIC.
> +
> +For MediaTek PMIC MFD bindings, see:
> +Documentation/devicetree/bindings/mfd/mt6397.txt
> +
> +For MediaTek PMIC wrapper bus bindings, see:
> +Documentation/devicetree/bindings/soc/mediatek/pwrap.txt
> +
> +Required properties:
> +- compatible: Should be one of follows
> +       "mediatek,mt6323-rtc": for MT6323 PMIC
> +       "mediatek,mt6397-rtc": for MT6397 PMIC
> +
> +Example:
> +
> +       pmic {
> +               compatible = "mediatek,mt6323";
> +
> +               ...
> +
> +               rtc {
> +                       compatible = "mediatek,mt6323-rtc";
> +               };
> +       };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 01a52fc964da..ec6ff342aa3c 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -9920,6 +9920,12 @@ S:	Maintained
>  F:	drivers/net/dsa/mt7530.*
>  F:	net/dsa/tag_mtk.c
> 
> +MEDIATEK BOARD LEVEL SHUTDOWN DRIVERS
> +M:	Sean Wang <sean.wang@mediatek.com>
> +L:	linux-pm@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt

It's odd that there's no Sean's SOB tag in the series but add him in the
entry.

>  MEDIATEK JPEG DRIVER
>  M:	Rick Chang <rick.chang@mediatek.com>
>  M:	Bin Liu <bin.liu@mediatek.com>
> --
> 2.17.1
> 
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
