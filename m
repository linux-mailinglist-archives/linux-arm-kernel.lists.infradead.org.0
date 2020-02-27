Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D95201724E3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 18:19:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YOimOFfR0KWU64zztQnxpyx2XEpM8OK6q3bUplgiQFU=; b=glRaIaB01q0SqS
	Lx3QSGZaVKIZ2VnDvqkhCocTZirZkkPxcfqa8s0FGP6MXLMWhylrWKt+dbIcCDU9rgkWtm+ie569d
	M6iiTC7aHBHFge38a1+1Nk3EfXzz/81ILFWTCaSFqw5uwuiyE4uApvFny2nE/kjZM9Hp5kcRJ9H8D
	sOXlIC2zq2egCYF0rq/wxZ4mrMPcV63uCTEsgjXsGVpfl+b+WixdwiLEMx+pretyMvYyspMGp6E+4
	6V5KQIcoiabOY5DPel0C/PQdcn0O+MwSdksrxKjurkVPihS9/SDVRFp/WjWigYlFli5432f48WWnJ
	AL7a/7zq7KGj7G3e0m2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Mog-0006Lh-H4; Thu, 27 Feb 2020 17:19:18 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7MoV-0006K8-64; Thu, 27 Feb 2020 17:19:08 +0000
Received: by mail-oi1-f193.google.com with SMTP id d62so4023637oia.11;
 Thu, 27 Feb 2020 09:19:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EEa7ye+4SNg6W5sroyNYrJMOxOtx09zWUa0ioGPqjd8=;
 b=ra2BgRPwpG7mTV7Ct7R/vM/kTSF4IEJOyDiYUXbhyr0ah5FsImG2G1HIj7dcvhqX6r
 yovxqMygv219o3mLTZFp/UmqTDrN64SKuoBE+biV/IaLK6XiIgyy0vBJqpkJrjHAwgjd
 HWibcKO3go8kGP+hrQtCJImVPsdJ4K/yPObpnCfnoIgvTmoeTz5eZCSCMO8z4kdZe0RO
 2XVQaDG/1Dd/y42feA4qd2bikIT8dLe/rBE+6E5M3TV/2xx4L4+usZmBjmr0ONmNXN11
 24BbdSte5CjH8BXGJWqt929APOhM2URxCPHWX5PShAFgjDCDqa+kkyg4/ipr/QoLdoW/
 YrEw==
X-Gm-Message-State: APjAAAVD2OEQy+FRj8il4dbHA9Rab7X8YLn5JDf1TLI05RXSikkeJj/v
 EZ+zIkZ4opPHKWsb8n90MA==
X-Google-Smtp-Source: APXvYqyivrbnGPADBq2gCXjpZ0Ulx7DPwJxfGsdNrYwEE5j4rbjAGXZ2yhl3jW4hSxNtdbA1D1ycUA==
X-Received: by 2002:aca:3857:: with SMTP id f84mr58985oia.150.1582823946480;
 Thu, 27 Feb 2020 09:19:06 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k201sm2165169oih.43.2020.02.27.09.19.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 09:19:06 -0800 (PST)
Received: (nullmailer pid 18856 invoked by uid 1000);
 Thu, 27 Feb 2020 17:19:04 -0000
Date: Thu, 27 Feb 2020 11:19:04 -0600
From: Rob Herring <robh@kernel.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [PATCH v9 3/5] dt-bindings: display: mediatek: dpi sample data
 in dual edge support
Message-ID: <20200227171904.GA17829@bogus>
References: <20200226053238.31646-1-jitao.shi@mediatek.com>
 <20200226053238.31646-4-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226053238.31646-4-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_091907_225987_045B9316 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 srv_heupstream@mediatek.com, David Airlie <airlied@linux.ie>,
 huijuan.xie@mediatek.com, stonea168@163.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, cawa.cheng@mediatek.com,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 01:32:36PM +0800, Jitao Shi wrote:
> Add property "pclk-sample" to config the dpi sample on falling (0),
> rising (1), both falling and rising (2).
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,dpi.txt       | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
> index a7b1b8bfb65e..4299aa1adf45 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
> @@ -20,6 +20,7 @@ Required properties:
>  Optional properties:
>  - pinctrl-names: Contain "gpiomode" and "dpimode".
>    pinctrl-names see Documentation/devicetree/bindings/pinctrlpinctrl-bindings.txt
> +- pclk-sample: refer Documentation/devicetree/bindings/media/video-interfaces.txt.
>  
>  Example:
>  
> @@ -37,6 +38,7 @@ dpi0: dpi@1401d000 {
>  
>  	port {
>  		dpi0_out: endpoint {
> +			pclk-sample = 0;

Not valid dts syntax: <0>

>  			remote-endpoint = <&hdmi0_in>;
>  		};
>  	};
> -- 
> 2.21.0
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
