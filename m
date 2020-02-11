Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF66158E2F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 13:16:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5+VKkMlCYaTpBHqTGR9Sxbmnx9HQbG0Ecm/D6DpzdQg=; b=B21LI5vTIMM4lJxITXOn2vU8TS
	TFURNELKQuX0NSewVnWWq9+7gmP1esEgewC60Dg6hS+dvkYERmeN8v9DXN6Z3XXfmJkElbYShwuwW
	l++6L0PsncLbWUCjk9AhE1W1UiKEK48inF2MoiI/f5pvcQ9K46Xlj0tEv9gv3B/qlp1QB/DVybGnT
	+f0+Fgv62G36qiu1cgp4KGsnY2N4i/m6/gq1oy4nFSShinvcPCb/P+m00v/WYzh6EXB2cC9ogiS4B
	P6CkXPQbb+vcaL/9p3WXWuYGd1dvFHwnS19LvfS9HgLZrMr5kl8uN8ZkMnEs2M7lYI5k6VOD9bkw+
	L/mTz8Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1UT5-00078h-Qb; Tue, 11 Feb 2020 12:16:43 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1USx-00076t-28
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 12:16:37 +0000
Received: by mail-wr1-x443.google.com with SMTP id z3so12117716wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 04:16:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=GUGVeWyTamE7UDj1FKSQ+oAogvWYH8rVlMddW6H23bo=;
 b=W1+92dChYL38m0QO++WYETYen2Fxo5eUiRgk2TXSr9E1riiBm5WQ5epUQwHBYgg5Q4
 Fgj6CeZHrKZuTII/KbyWNpNova/3fm1WK1YB+EWM8MuFQoeiwyXsLJu0xxmMw9kbhEL4
 N+BG29zaELbKteYXpKNUVouXWqrCxd5WW3WFjRtmzzSrfidgwlKwdgtgeFF3LLuBCshQ
 NsNnPCC8kBXMywXCzzhUC8bhTGFWah1fLdtCgVoXTbrQBFhSImu2zH4Mi9an7sS70ecf
 guw+cYpi5JzNhlxU5nEkl4Bn6jGt9i+ZXNRTWOE0w9X/DDON7Hc1CAW1ZmHeiLROLJ7U
 CTjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=GUGVeWyTamE7UDj1FKSQ+oAogvWYH8rVlMddW6H23bo=;
 b=jID23/0buI1V25B+LYpkcOIbBa4wujykI/BXCqGd08N9mXT9EceSX8yTT2hEWZch/Y
 arpEzTmlbqDNfF9jmJgahfYKNPjbARmcBPc2dj+flM5DKojtpfc+GUU23qPo5RTKV4v+
 Df/WxZQx2VvhtJhnOM+vc7fi+el7qbdNlhFrz5760ylxQ6Z9OjObfdwCRQcjP53VdiQA
 qKFZ2yIQHTqwYFdSRD73WjVp1zu8aaNrAPGmUDqdfXWauO7tbTUAdtZwuzb5ao8x/kAq
 AMBs701dP95pIkz2+uhQjZduk5SeUzCbOZrcaSVSjVYHD0p15fzjLskmvtMwl+OrRFNk
 g6uw==
X-Gm-Message-State: APjAAAVn9zTSQ81LQAhiaXvhr4C5Ve6h06AVZqW278vuG/UKeYkaGH1x
 8xPejpRKHBu5cysMarbNrtaRyw==
X-Google-Smtp-Source: APXvYqwfT/nPvnV/mY2Ya9vBY1B2CXqBG3HndSvJlIoc9nkQdXy7phO8sDESz0qr6Hw1YB1/L4rIrw==
X-Received: by 2002:adf:82ce:: with SMTP id 72mr8363015wrc.14.1581423391418;
 Tue, 11 Feb 2020 04:16:31 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id c4sm3446467wml.7.2020.02.11.04.16.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 04:16:30 -0800 (PST)
References: <1581419454-12667-1-git-send-email-hanjie.lin@amlogic.com>
 <1581419454-12667-2-git-send-email-hanjie.lin@amlogic.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Hanjie Lin <hanjie.lin@amlogic.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Rob Herring <robh@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Kevin
 Hilman" <khilman@baylibre.com>
Subject: Re: [PATCH v8 1/3] dt-bindings: phy: Add Amlogic A1 USB2 PHY Bindings
In-reply-to: <1581419454-12667-2-git-send-email-hanjie.lin@amlogic.com>
Date: Tue, 11 Feb 2020 13:16:29 +0100
Message-ID: <1jpnelb9pe.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_041635_134833_10A54E60 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Victor
 Wan <victor.wan@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-usb@vger.kernel.org, Yue Wang <yue.wang@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Liang Yang <liang.yang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jian Hu <jian.hu@amlogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Tue 11 Feb 2020 at 12:10, Hanjie Lin <hanjie.lin@amlogic.com> wrote:

> Add the Amlogic A1 Family USB2 PHY Bindings
>
> It supports Host mode only.
>
> Signed-off-by: Yue Wang <yue.wang@amlogic.com>
> Signed-off-by: Hanjie Lin <hanjie.lin@amlogic.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/phy/amlogic,meson-g12a-usb2-phy.yaml         | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb2-phy.yaml
> index 57d8603..3b7e763 100644
> --- a/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/amlogic,meson-g12a-usb2-phy.yaml
> @@ -14,6 +14,7 @@ properties:
>    compatible:
>      enum:
>        - amlogic,meson-g12a-usb2-phy
> +      - amlogic,meson-a1-usb2-phy
>  
>    reg:
>      maxItems: 1
> @@ -49,6 +50,20 @@ required:
>    - reset-names
>    - "#phy-cells"
>  
> +allOf:

Is 'allOf' really needed when there is only one if clause ?

> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - amlogic,meson-a1-usb-ctrl
> +
> +    then:
> +      properties:
> +        power-domains:
> +          maxItems: 1
> +      required:
> +        - power-domains
> +
>  examples:
>    - |
>      phy@36000 {


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
