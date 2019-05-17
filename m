Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B09C2192D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 15:27:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QXWGSVsW/1xMZ4lv35MF9H7aPUSaCZOEaHE9fgeYBCA=; b=G+Z34irT1Gm7B9
	xXB/kbn2IbwelezMddhNfyC2z4QX80TOvX8QkwqDpVU/wWXC9a1atOwvfVCk7nn5Ol5rG0H6Lw3J1
	xi0OZ4L486hlvk6sHyPyvn8aGbgxIH77jYnC7IvGEcJ4yODg22Fwfqie8q6wDjb1VTE0tZ4b+8HKx
	6g0FwdoAj/mUsYhLnW1CZ9imDdL4aNybGsRERzs+SzRXG3K+VFOnxWQLOWH3lskIQKaKcRSiYpmPV
	y+nEqaVjg4LKmDV0OBpoQBnDN8W2Z0DS2ubftedpKwulPw69x5GfX8VzUPP0ik4KQp39Dz7mPlWtt
	fcYdH5SUly/4hny/ihfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRcta-0005tQ-Cl; Fri, 17 May 2019 13:27:34 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRctS-0005sd-Tp; Fri, 17 May 2019 13:27:28 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 06:27:26 -0700
X-ExtLoop1: 1
Received: from kuha.fi.intel.com ([10.237.72.189])
 by fmsmga001.fm.intel.com with SMTP; 17 May 2019 06:27:21 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation);
 Fri, 17 May 2019 16:27:21 +0300
Date: Fri, 17 May 2019 16:27:21 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [v3 PATCH] dt-binding: usb: add usb-role-switch property
Message-ID: <20190517132721.GB1887@kuha.fi.intel.com>
References: <c3596e996c9ab39c6b9bc14b93309244c4a55014.1557306151.git.chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c3596e996c9ab39c6b9bc14b93309244c4a55014.1557306151.git.chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_062727_005609_9B6D5C18 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Yu Chen <chenyu56@huawei.com>, linux-kernel@vger.kernel.org,
 Biju Das <biju.das@bp.renesas.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Min Guo <min.guo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 05:17:44PM +0800, Chunfeng Yun wrote:
> Add a property usb-role-switch to tell the driver that use
> USB Role Switch framework to handle the role switch,
> it's useful when the driver has already supported other ways,
> such as extcon framework etc.
> 
> Cc: Biju Das <biju.das@bp.renesas.com>
> Cc: Yu Chen <chenyu56@huawei.com>
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Who is meant to pick this? Can you include this in your series where
you introduce that USB Type-B GPIO connector driver?

FWIW:

Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

> ---
> v3:
>     add property type, modify description suggested by Heikki
> 
> v2:
>     describe it in terms of h/w functionality suggested by Rob
> 
> v1:
>     the property is discussed in:
>     [v2,2/7] dt-bindings: usb: renesas_usb3: add usb-role-switch property
>     https://patchwork.kernel.org/patch/10852497/
> 
>     Mediatek and Hisilicon also try to use it:
>     [v4,3/6] dt-bindings: usb: mtu3: add properties about USB Role Switch
>     https://patchwork.kernel.org/patch/10918385/
>     [v4,6/6] usb: mtu3: register a USB Role Switch for dual role mode
>     https://patchwork.kernel.org/patch/10918367/
> 
>     [v6,10/13] usb: dwc3: Registering a role switch in the DRD code
>     https://patchwork.kernel.org/patch/10909981/
> ---
>  Documentation/devicetree/bindings/usb/generic.txt | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/usb/generic.txt b/Documentation/devicetree/bindings/usb/generic.txt
> index 0a74ab8dfdc2..cf5a1ad456e6 100644
> --- a/Documentation/devicetree/bindings/usb/generic.txt
> +++ b/Documentation/devicetree/bindings/usb/generic.txt
> @@ -30,6 +30,10 @@ Optional properties:
>  			optional for OTG device.
>   - adp-disable: tells OTG controllers we want to disable OTG ADP, ADP is
>  			optional for OTG device.
> + - usb-role-switch: boolean, indicates that the device is capable of assigning
> +			the USB data role (USB host or USB device) for a given
> +			USB connector, such as Type-C, Type-B(micro).
> +			see connector/usb-connector.txt.
>  
>  This is an attribute to a USB controller such as:
>  
> -- 
> 2.21.0

thanks,

-- 
heikki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
