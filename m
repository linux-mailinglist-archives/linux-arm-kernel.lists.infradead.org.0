Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EAD43654A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 22:21:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rdfmyj3c/TTnK7r+/Z8W0ACha769TXcEGIFEcJOrQXQ=; b=RNK1HWooywzeyM
	7Jk6NrxNNYyeilobh6vQQAFIK3NKJLwTyhnidgPIKx+1O9PczeOc/iQ6jljupa+TeyS/IqPCBT8kl
	0Z/DLt3+YhwwHB37cv4u/pDuJTsfbuROYN2NsA5jJmNuZ1aVnnpuV90wJhsqJBtSgXHJfD3bfnwww
	kTid3EnN9BM5VzfvpX1Fdc+8qxjK+M5IMDFah7JxWl5zc+UOfwynaNczxkAcBfEw0B9Bv0g1PFhhp
	/7gH4yBV1Y2YibABAGDaxW+L88jdDt9VOquBSUka5+A7rOb1zzJldUP5cneLtCM8MG2M8ojtzi3vq
	jASIOg7TpC2V0oHdMYDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYcPJ-0001Gm-Qt; Wed, 05 Jun 2019 20:21:13 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYcPC-0001FW-Mb
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 20:21:08 +0000
Received: by mail-qk1-x742.google.com with SMTP id r6so83426qkc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 13:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Oow9DtVx6/e9vc91OkJJ9FrpnBvTPD2Rx2lgdcaFGT8=;
 b=gDJ/pCAVI21mCAOhscYUVpPPbSPZSdohQtVojLJOqXj6LyfNoLVKYA1EdTQBHcRnNV
 gY8GucJcSp74i+ayJHV+sn7wRmTb2V83nd3VxGipHMTNW5oGUZNerkQIOIo6H8ogVrcT
 MtKKHW8Iw1EWQc8olTokbrcD2OIpPNzoaMesSPt8hl1X0nF1osj2k2b2xX5mP2j7GYr8
 9RRw1U5V9bgLGTzeAmVAp6hIoNUhmQdKU4/BWYTtRym5973/zBT314jApMpyX9ipKAxO
 GtfUkDH9BW4veDlaFvbLLIjqemkU+31viOumlbu/QlmXG1RMgP5DQ5JARBVybS9Hzg1E
 AHRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Oow9DtVx6/e9vc91OkJJ9FrpnBvTPD2Rx2lgdcaFGT8=;
 b=uUhJgDjt3qE/BP6hy2CIRQAo4JCaA46VD28hfliS9DkjECKz2b2pDtuoiRH1WcHDdh
 YQrMTLpJhIB7+BtWR+58dWxStTDHSuL+nAcVv5ha74iN17gWdhCstM5aK1mWXowIgVPn
 fQ5DaT9EhBPduSdvBg/p1G/X25OcDlM3da6H54RMen483S7Qc7TbqX+0s8PsbeyK8Z93
 bByzjkiXOS+sWtvAKZlIMbcyPnjcKgNtQf1Ip/Zrci7f8DzoSvBwSRu7g3oEVhogey2s
 vI2bi5RzqfXQbMxQXNXmrymWDQEx3XHWCFrmX0KSCG2VhliS4v9LcAtDgJbpu/tPTvSQ
 Dmtg==
X-Gm-Message-State: APjAAAXC3anYRqMnY5X3pHECZwMxOa1yW/myUAKl60xBT+SCu6AQIzqB
 MrUgiaGoNKR81K62mlj7IRcLXQ==
X-Google-Smtp-Source: APXvYqzshz94DAwlN0c6S4f2hde5nvkY5P0IaQSC3xGDSITmSC2T+3xaW8ArBq7rZ6TYEskvjiotBg==
X-Received: by 2002:a37:f50f:: with SMTP id l15mr16279331qkk.343.1559766063140; 
 Wed, 05 Jun 2019 13:21:03 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id d5sm9881582qtj.3.2019.06.05.13.21.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 13:21:02 -0700 (PDT)
Date: Wed, 5 Jun 2019 16:21:01 -0400
From: Sean Paul <sean@poorly.run>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH 1/5] dt-bindings: drm/bridge/synopsys: dw-hdmi: Add
 "unwedge" for ddc bus
Message-ID: <20190605202101.GG17077@art_vandelay>
References: <20190502225336.206885-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502225336.206885-1-dianders@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_132106_792128_842819B1 
X-CRM114-Status: GOOD (  20.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Andrzej Hajda <a.hajda@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, mka@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 03:53:32PM -0700, Douglas Anderson wrote:
> In certain situations it was seen that we could wedge up the DDC bus
> on the HDMI adapter on rk3288.  The only way to unwedge was to mux one
> of the pins over to GPIO output-driven-low temporarily and then
> quickly mux back.  Full details can be found in the patch
> ("drm/bridge/synopsys: dw-hdmi: Add "unwedge" for ddc bus").
> 
> Since unwedge requires remuxing the pins, we first need to add to the
> bindings so that we can specify what state the pins should be in for
> unwedging.

Pushed to drm-misc-next along with patch 2. I'll let Heiko land the dts patches.

Thanks!

Sean

> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> 
>  .../bindings/display/rockchip/dw_hdmi-rockchip.txt         | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/dw_hdmi-rockchip.txt b/Documentation/devicetree/bindings/display/rockchip/dw_hdmi-rockchip.txt
> index 39143424a474..8346bac81f1c 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/dw_hdmi-rockchip.txt
> +++ b/Documentation/devicetree/bindings/display/rockchip/dw_hdmi-rockchip.txt
> @@ -38,6 +38,13 @@ Optional properties
>  - phys: from general PHY binding: the phandle for the PHY device.
>  - phy-names: Should be "hdmi" if phys references an external phy.
>  
> +Optional pinctrl entry:
> +- If you have both a "unwedge" and "default" pinctrl entry, dw_hdmi
> +  will switch to the unwedge pinctrl state for 10ms if it ever gets an
> +  i2c timeout.  It's intended that this unwedge pinctrl entry will
> +  cause the SDA line to be driven low to work around a hardware
> +  errata.
> +
>  Example:
>  
>  hdmi: hdmi@ff980000 {
> -- 
> 2.21.0.1020.gf2820cf01a-goog
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
