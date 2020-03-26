Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F02E5194CBE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 00:26:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AwhpCXdjSCzNjqhV4E0zHGbDJHFqYu2rq6e1W0yYBwE=; b=ksoyDeF8mgyOm0
	idvNdmJOD5HZpHe1X4dLyxuA2h2x8kssdwXCpCkRgBSmKsbakMl6oogaUNqdgBTHzz9YQX+7a//Tb
	iqf0jV8pByPUa7QGNMisll7Ln8qBddCft4GPvzcQ8UbtNOTLD2Sno8UYkuIQ6uYxmtc4AtB+A9CdU
	NZT9Ny34ri/ZbdMsPBQSeDJaDDiTmiNVAq4uAI7OSuVaJC7vgXzrXqnBJnxkPRzn8uN/qSxShPUrn
	QMb8GIri82JG1A0yDBH0xnz0Lg4uVGaHVXiXeP3LH0kVekYMfni5Oz+QDcb/zhBC54Dzc5yX+Li/X
	Dw5+IRdPo3ZaChmB/oVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHbtQ-0003jx-77; Thu, 26 Mar 2020 23:26:32 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHbtC-0003ig-3G; Thu, 26 Mar 2020 23:26:19 +0000
Received: by mail-ed1-x541.google.com with SMTP id v1so9005554edq.8;
 Thu, 26 Mar 2020 16:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WqZyECE7b3l+/W5cG6aN6aQ7OERbPPJKLPh37gMr4P8=;
 b=ue1h1NgsTbotQg6qMgEzUEGsjz11gWWWp2SUopj+TH8eOOBmYryxsfc281mZqrloEv
 P76dythInNUEfdLKgr7SgCfjmFg6sE925yUai/7kD6iygiYW41tOLyueWqE41PZp/QQL
 FrX5esvWQpq4u2MT/46hJXxhdRYrB5LZG3OXoJRY8UAsN3fhBfF+Mmj+NBCYmBlhXkiB
 ee9g1chV624ys8iJxZOeJyLMD2lsOpr6uT72VNd2zFkDdFIzEQU1YJ3iJvKiaWZUvhxd
 8ctYZYkWyFiCfSr/Sev5oQ62jff2k4N93aiamR/xOeC6EwLqNDKHb5/vZDTffrPQMHeA
 j5uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WqZyECE7b3l+/W5cG6aN6aQ7OERbPPJKLPh37gMr4P8=;
 b=hF4JFD5Nnwlxz0Jz0VjWay3NlJ+YTW8HPf1w+bZqimV+pf7C+0OyMvjNnDSgaGhpoT
 H1P5+xRVJ4hIEOEhZLtEZj4SpHHWpHgnQeJF+Q6imfhxBYXP6zjsU+3TrzEo7HTjdm8O
 eACT7NwxotumlfShhE94gzfK/nyTP/0jqisLFm+kbD+vGYW7V+VXMkjmAAdR2sG3U7UQ
 P5Dd+4n4UXQeg27wNxRCM1mlclZ3mLA0QrtvV7iCBQd+pfDRKIuklhLAEu4vuY91jL//
 HvZT2bzNORel3X7OxbrJYjHb2XzM4KFVxXqgURL1jYrZpbIBcQ5bXekIzZXfyO0rfaaK
 YbjA==
X-Gm-Message-State: ANhLgQ1soppZwdYswzNhwFykNlNx7scrEpLgKpwp5i/GlJ/RirGD8p5G
 B9EGZE8E7zo/mqKUfSI0/zpalb/2szzezLCsiQTDWo5H
X-Google-Smtp-Source: ADFU+vszUtR++CH3qXXBapVjGUYTUgP4+oCVQrrF3dM3CXErGyDOKMkYURV1D0IJSRdLQ53DbhvctfJOG7ec6N875qg=
X-Received: by 2002:a17:906:491:: with SMTP id f17mr162602eja.30.1585265176806; 
 Thu, 26 Mar 2020 16:26:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200326134507.4808-1-narmstrong@baylibre.com>
 <20200326134507.4808-8-narmstrong@baylibre.com>
In-Reply-To: <20200326134507.4808-8-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Fri, 27 Mar 2020 00:26:06 +0100
Message-ID: <CAFBinCBhk+XvjGODBaNH7tzCfGktYdmk1wED8UC6cYmS3ucbig@mail.gmail.com>
Subject: Re: [PATCH v2 07/14] usb: dwc3: meson-g12a: refactor usb init
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_162618_137077_EB3BC321 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: balbi@kernel.org, khilman@baylibre.com, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Thu, Mar 26, 2020 at 2:45 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
[...]
> -static int dwc3_meson_g12a_usb2_init(struct dwc3_meson_g12a *priv)
> +static int dwc3_meson_g12a_usb2_init(struct dwc3_meson_g12a *priv,
> +                                    enum phy_mode mode)
>  {
>         int i, ret;
>
> -       if (priv->otg_mode == USB_DR_MODE_PERIPHERAL)
> -               priv->otg_phy_mode = PHY_MODE_USB_DEVICE;
> -       else
> -               priv->otg_phy_mode = PHY_MODE_USB_HOST;
> -
>         for (i = 0; i < priv->drvdata->num_phys; ++i) {
>                 if (!priv->phys[i])
>                         continue;
> @@ -284,9 +286,10 @@ static void dwc3_meson_g12a_usb3_init(struct dwc3_meson_g12a *priv)
>                         FIELD_PREP(USB_R1_P30_PCS_TX_SWING_FULL_MASK, 127));
>  }
There is something strange with dwc3_meson_g12a_usb2_init.
enum phy_mode mode is added here but it's not used inside this function

I also think that we should not pass enum phy_mode to
dwc3_meson_g12a_usb_otg_apply_mode
I'm aware that the original function used enum phy_mode inside but
this doesn't seem right:
we're not configuring a PHY there
instead we're setting up the OTG switch so I think we should use enum
usb_role instead

[...]
not part of this patch but should be:
there's a still a direct call to dwc3_meson_g12a_usb_init() in
dwc3_meson_g12a_resume()
I think that needs to be changed to priv->drvdata->usb_init(priv); as well

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
