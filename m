Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E86197B37
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 13:49:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HR75zU/oHFxYY2k4CgoDvnZefw+4GZWlPUy27UMI3DE=; b=gX3SVm4lII2sLP
	L06HClS+F+tjqR98JrTYvhRLqsLwW6NSgCjMyDOWKjj1qfL/gxEvN1XZECyRjS8YAwwF6dbvFxctO
	34GC6TStwVLlcb0OpMRJJLcIBrz3mitteW0XPLOD0ZLUW9lGnAIRwuj2k8QrE8AXCN1uCMczxnzVl
	smxdB6oRfyCsVRjEPG6fm4a3k4cY0qDBBWUztO7kqcQvysuyDj0NCv8Tun9Xn/uYJnTzHlNYEQ8Ey
	Ot5OlPpXj0uOZBefHBuiTXVb4i9Sr1jkM64tj9deqR2Rr7urjkfZQq8whyd96QjZa08xaz4ElYPg9
	HHfQyLhwFwSFORilW/qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIsvI-0007od-D4; Mon, 30 Mar 2020 11:49:44 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIsv4-0007nc-Lj; Mon, 30 Mar 2020 11:49:33 +0000
Received: by mail-lj1-x242.google.com with SMTP id i20so17702016ljn.6;
 Mon, 30 Mar 2020 04:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3LI716UXF6bfo4VYqoP3VeDTvzHtXiCh3tM1tgh2v+k=;
 b=nsExSjXHqIvgbyHEhZzSlHZ6qD7wnb3b7lQ2UUHlFb5MZvlWcVzdj0RPl6mpt8ALgm
 lr8frOmesionfQ+vaY8rFIX8GvC8Q7ZgFYyxVx1tlnkK8QSOZPHwLZ/2A+Zbwa2KICUA
 g9VnqDbo0OoQPSqFcQsSYwvzTEzLmQlPT6RyfE5yy6S3DEVF/X8MOTnUv1G5iBt/D9M5
 Xuy8PBJUBLjxWgO0vVHF69ZxuHLj13gwdEuSc3LZcVW5XIK3hJkUaWz9lZ54g7h7D+jG
 oSxXr/rvj7FpRtkUM4BALSUJbOlZX1oJH0VblPEPkpwEyAfpIGByujN/jXC47U8bS0cz
 q4fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3LI716UXF6bfo4VYqoP3VeDTvzHtXiCh3tM1tgh2v+k=;
 b=rVEkZ1zuLzWONm1LhUvaz+OYn5GZYJf+80G80oKcHNeohTwhc4Jse1Dr7yHDxdyDz/
 n50myB8KliAh1Z143o216NO2IPCErda1Ba1HVMAu3/SPtPgL7t0qIjWmSFMnOnUjqCAf
 r1O+sAWtJPe7kfsVXP9VV33byVTSlZ+5YmN3Ip9lis/zgcalw7lpIsy9u0SorPLVDMYm
 nOiM7A7rkKo4ylxw9eUA+ULYQ85HhYomXaPHULDTVcWXnaIUmTotq2UUxd0cg2ty3vGf
 lrMPbyrc5J79fzxZtpgGom7IUuKlaaUtwJIW0rVF61C7dxlifELh974PTRdxVv3i0qz2
 yICQ==
X-Gm-Message-State: AGi0PubluqlSMOfcu5qOY5ku7N3Ys5AeEl8ZT4+k4jwWLYrbE6A/xNGl
 IIRQxy7utm6NxZC8UkiARtqhUVIR+geJU6sKhkI=
X-Google-Smtp-Source: APiQypJcW+KgRk6o/Ou48vwV4luc+5i+/EZubfDgsinD6eEi6d3RUluGeVWMrjQtxj/UdvutLn1NA3q5aclTGJP/Ah4=
X-Received: by 2002:a05:651c:30b:: with SMTP id
 a11mr6771326ljp.164.1585568968812; 
 Mon, 30 Mar 2020 04:49:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200330113542.181752-1-adrian.ratiu@collabora.com>
 <20200330113542.181752-5-adrian.ratiu@collabora.com>
In-Reply-To: <20200330113542.181752-5-adrian.ratiu@collabora.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 30 Mar 2020 08:49:19 -0300
Message-ID: <CAOMZO5CEZSBfhb9xAdf=sDhUnmSeuWSsnUQArz=a1TPzytLAeQ@mail.gmail.com>
Subject: Re: [PATCH v5 4/5] drm: imx: Add i.MX 6 MIPI DSI host platform driver
To: Adrian Ratiu <adrian.ratiu@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_044930_746070_BC3E2798 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Sjoerd Simons <sjoerd.simons@collabora.com>,
 Andrzej Hajda <a.hajda@samsung.com>, Martyn Welch <martyn.welch@collabora.com>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel <linux-kernel@vger.kernel.org>,
 DRI mailing list <dri-devel@lists.freedesktop.org>,
 Emil Velikov <emil.velikov@collabora.com>, linux-rockchip@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adrian,

On Mon, Mar 30, 2020 at 8:34 AM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
>
> This adds support for the Synopsis DesignWare MIPI DSI v1.01 host
> controller which is embedded in i.MX 6 SoCs.
>
> Based on following patches, but updated/extended to work with existing
> support found in the kernel:
>
> - drm: imx: Support Synopsys DesignWare MIPI DSI host controller
>   Signed-off-by: Liu Ying <Ying.Liu@freescale.com>
>
> - ARM: dtsi: imx6qdl: Add support for MIPI DSI host controller
>   Signed-off-by: Liu Ying <Ying.Liu@freescale.com>

This one looks like a devicetree patch, but this patch does not touch
devicetree.

> +       ret = clk_prepare_enable(dsi->pllref_clk);
> +       if (ret) {
> +               dev_err(dev, "%s: Failed to enable pllref_clk\n", __func__);
> +               return ret;
> +       }
> +
> +       dsi->mux_sel = syscon_regmap_lookup_by_phandle(dev->of_node, "fsl,gpr");
> +       if (IS_ERR(dsi->mux_sel)) {
> +               ret = PTR_ERR(dsi->mux_sel);
> +               dev_err(dev, "%s: Failed to get GPR regmap: %d\n",
> +                       __func__, ret);
> +               return ret;

You should disable the dsi->pllref_clk clock prior to returning the error.

> +       dsi->mipi_dsi = dw_mipi_dsi_probe(pdev, pdata);
> +       if (IS_ERR(dsi->mipi_dsi)) {
> +               ret = PTR_ERR(dsi->mipi_dsi);
> +               dev_dbg(dev, "%s: Unable to probe DW DSI host device: %d\n",
> +                       __func__, ret);
> +               return -ENODEV;

Same here. You should disable the clock. Shouldn't you return 'ret'
here instead of -ENODEV?

> +module_platform_driver(imx_mipi_dsi_driver);
> +
> +MODULE_DESCRIPTION("i.MX6 MIPI DSI host controller driver");
> +MODULE_AUTHOR("Liu Ying <Ying.Liu@freescale.com>");

The freescale.com domain is no longer functional.

Ying Liu's NXP address is victor.liu@nxp.com. You could probably add
your entry as well.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
