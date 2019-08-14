Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 342F48D1B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 13:04:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TQr9WibZebAhZA5ISfZHf6wvbQ737xEHnfRR0y4F/aU=; b=Xe9eF842rwKMEy
	kfCUXFaq+PXWyu6jh92mUnU6zNVjgT13mVnTldT86FHq7vmD8WApJ4/XOGCU16f2Whdf/n4Uk+0zJ
	KDVi5UU61NrFXun2hmIl8Whi/bRYy6P808fdbP6t1MP4wapdq37c/Z7/wFNBVjFgfkm+OEM0uXcKG
	AV/CL+cR7B63phLWWjbInJjceD1vyWJxgYKXNB9T5s5kFdG2+wIWMu7WHx7HeDAGjqY5TCKt75G+b
	OOc9E/wa9YK1xnRjDGUyumbNdnq+Q5UIS2Tz7z9yvR84RjN8kfc4w/lDZoLRmuKxM/SoOZ6sdueI7
	pcV4cr3tJZSsd4gEvnCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxr4U-0004ZM-Hf; Wed, 14 Aug 2019 11:04:02 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxr4M-0004YW-Sn
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 11:03:57 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id EBDEE5C004F;
 Wed, 14 Aug 2019 13:03:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1565780629;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=h+qnFbGtGsBoI06RuDeq2XvqPu5SKHuKdbyype/t5fw=;
 b=hgI799WtcMNEQuwaU/xBtLvzbOMKG140rFlj52Xnp+/uaD37LtZnWXYmQKB7r5qoPGW/6g
 HrlgwxigfioiacwLCzd02Rrd0wj63zXrEkWSGNsOYESfloYMujDsb0DJ0NH8HoOdRT0Auf
 YWjsYI2r6L8mvxJw/Auzh7E4/S4RHvo=
MIME-Version: 1.0
Date: Wed, 14 Aug 2019 13:03:49 +0200
From: Stefan Agner <stefan@agner.ch>
To: Robert Chiras <robert.chiras@nxp.com>, robh+dt@kernel.org, Mark Rutland
 <mark.rutland@arm.com>
Subject: Re: [PATCH v2 09/15] dt-bindings: display: Add max-res property for
 mxsfb
In-Reply-To: <1565779731-1300-10-git-send-email-robert.chiras@nxp.com>
References: <1565779731-1300-1-git-send-email-robert.chiras@nxp.com>
 <1565779731-1300-10-git-send-email-robert.chiras@nxp.com>
Message-ID: <491aff3d08f24ab4d79a4f8c139d2e44@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_040356_031887_42DAD455 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-08-14 12:48, Robert Chiras wrote:
> Add new optional property 'max-res', to limit the maximum supported
> resolution by the MXSFB_DRM driver.

I would also mention the reason why we need this.

I guess this needs a vendor prefix as well (fsl,max-res). I also would
like to have the ack of the device tree folks here.

--
Stefan

> 
> Signed-off-by: Robert Chiras <robert.chiras@nxp.com>
> ---
>  Documentation/devicetree/bindings/display/mxsfb.txt | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/mxsfb.txt
> b/Documentation/devicetree/bindings/display/mxsfb.txt
> index 472e1ea..55e22ed 100644
> --- a/Documentation/devicetree/bindings/display/mxsfb.txt
> +++ b/Documentation/devicetree/bindings/display/mxsfb.txt
> @@ -17,6 +17,12 @@ Required properties:
>  Required sub-nodes:
>    - port: The connection to an encoder chip.
>  
> +Optional properties:
> +- max-res:	an array with a maximum of two integers, representing the
> +		maximum supported resolution, in the form of
> +		<maxX>, <maxY>; if one of the item is <0>, the default
> +		driver-defined maximum resolution for that axis is used
> +
>  Example:
>  
>  	lcdif1: display-controller@2220000 {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
