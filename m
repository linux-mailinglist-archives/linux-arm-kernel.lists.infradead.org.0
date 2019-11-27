Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB15910AEC2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 12:33:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G64KRcXSmbFtCMAGdXSZT/AnWKWZ2nymsNIJRCzGzHg=; b=s/UCSYPXjm4cRE
	baqdwu2zKMHU4Y74dP2H6xhMgiynJz+OX2Wb6MtCHSQOKIchC9ALeGtqwqsHmW2FLiBua93F1IOpK
	Dsd52jJqf/MQyfnYnQJhm0NmiONoDZdMScJlJsBuV7KqrECB7h3hdd/RoffqEqO+WL+5qmxd2t8/e
	tRfJO0lZ91swkACo0d4kAVCC8V4+lV1ug2NM47azEtANjvFAz0W7s4kqNMAAVWt4oXmTEYPxWY8m0
	D0CTOah84bwPd5akqEguGnWtdDiD/VAlDnPStfjfYeDYI746Y6GUJYbVOFyC4WadxNqILP3DOeGeY
	Z0D0QaAjyQ3PSf5qV3Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZvZt-0002cz-Ot; Wed, 27 Nov 2019 11:33:49 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvZk-0002cf-D9
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 11:33:41 +0000
Received: by mail-wm1-x341.google.com with SMTP id y5so7044722wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 03:33:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=b/oO5LgHIVezHDa0lWHiVZRMYVl3WjVpcB8Rma2bE0Q=;
 b=DSeeNl4igiUFnQKTSKwXvgHohVfm3OC/tKrYXjjxIPHl/mKpkRiGsJPZvB0LRQMR9/
 snerCB4pXivXSs9anz2HALpOv2YGaoW118K6PyfcfnYTaemYeB591cJoLMnYhBRclEY6
 EP2UpXz33jTdNZJF/IeZy2+EPIyJ2ogsioj3I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=b/oO5LgHIVezHDa0lWHiVZRMYVl3WjVpcB8Rma2bE0Q=;
 b=QXSyT5Wm4KxrRClhzUuWJMFdaBLDvDKfgxaa1hPrtHLnUbhkEKe3CduLzgiXtq35Sv
 EkiAomblatRRX7nRPO4OrJQgIBbbXjzhovRndMW6MzyoVfp8EZ8J/3S4XRRSMb1Zbkd3
 a9GJYY7jh28g4LesxQbLMyZe7BY+dPEB2dq28f7xpH1ont4nOCOoc2skdvyJScZkcvPu
 5V2EWd3FgFxRIH6mzui5hN932g8xKq/cwco2++cNWACKVw15SK4CRgEfU+bBsPIotuyi
 DD38cakm55hDARq0nNmA5UFzebFUzUwGGZ83w1oC1WcbnbWB+ruwPpXwpfkJlC5m717p
 cXvg==
X-Gm-Message-State: APjAAAVMllRxptvtjL5HEuujmAi//tyJPSf/YCeeb4uKky7VjBvgcUos
 5YrAK3dCdu5PpvD5UM4PXQQ6KQ==
X-Google-Smtp-Source: APXvYqxdj4Cb0sM2R96ZUr1ajQFtYGm88VO/1g5Vy4S4C3IPuqYDDBKqaecA00hOMA81KjJPgvGlUg==
X-Received: by 2002:a1c:3d8a:: with SMTP id k132mr3750438wma.144.1574854418904; 
 Wed, 27 Nov 2019 03:33:38 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id m15sm18702608wrq.97.2019.11.27.03.33.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 03:33:38 -0800 (PST)
Date: Wed, 27 Nov 2019 12:33:36 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Yannick Fertre <yannick.fertre@st.com>
Subject: Re: [PATCH] drm/bridge/synopsys: dsi: check post disable
Message-ID: <20191127113336.GB406127@phenom.ffwll.local>
Mail-Followup-To: Yannick Fertre <yannick.fertre@st.com>,
 Philippe Cornu <philippe.cornu@st.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 David Airlie <airlied@linux.ie>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 dri-devel@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1574850165-13135-1-git-send-email-yannick.fertre@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1574850165-13135-1-git-send-email-yannick.fertre@st.com>
X-Operating-System: Linux phenom 5.3.0-2-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_033340_445990_B1D875A2 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, David Airlie <airlied@linux.ie>,
 Philippe Cornu <philippe.cornu@st.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 11:22:45AM +0100, Yannick Fertre wrote:
> From: Yannick Fertr=E9 <yannick.fertre@st.com>
> =

> Some bridges did not registered the post_disable function.
> To avoid a crash, check it before calling.
> =

> Signed-off-by: Yannick Fertre <yannick.fertre@st.com>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/=
drm/bridge/synopsys/dw-mipi-dsi.c
> index cc806ba..1e37233 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> @@ -886,7 +886,8 @@ static void dw_mipi_dsi_bridge_post_disable(struct dr=
m_bridge *bridge)
>  	 * This needs to be fixed in the drm_bridge framework and the API
>  	 * needs to be updated to manage our own call chains...
>  	 */
> -	dsi->panel_bridge->funcs->post_disable(dsi->panel_bridge);
> +	if (dsi->panel_bridge->funcs->post_disable)
> +		dsi->panel_bridge->funcs->post_disable(dsi->panel_bridge);
>  =

>  	if (dsi->slave) {
>  		dw_mipi_dsi_disable(dsi->slave);
> -- =

> 2.7.4
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
