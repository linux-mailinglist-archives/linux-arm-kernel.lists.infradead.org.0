Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3419D14A763
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 16:40:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N4b06YnB66A7ch5S8RWDMdNCLeFxAp7fxpQY8BDKn3U=; b=q/WHkw5B2x3meL
	38ti+S9DxwhwVT3dvqr3F6ROnuNzg/naiXHcszkAQM25kM+X0L2vKdp7He0gL28ytFHUdneCSdVVc
	amUiSZC3Ll17jVZ97PBsDN9QWi8BBX9w73wwbB9HxI22ypc8ai/KX2ln84PW1mj8ZBzpHSbkHLNLX
	F7t9TTqVJWq80MmoR6XKREr2tb0dYeTc46HDOus5MEqcqsK+8q8sMvGBp4izElOuod+XJwf/EbH3l
	0Gqcd1evQv7ei/b0+TWJXotbQjH0fxlunv1hOUu+/bCxuEdMBFcXgtHUhuQYXGibCy9My9HeEBdKg
	GCgsE3D3TKhiZ6RrZHVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw6Uy-0005lW-2p; Mon, 27 Jan 2020 15:40:24 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw6Uh-0005G9-EG; Mon, 27 Jan 2020 15:40:08 +0000
Received: by mail-oi1-f194.google.com with SMTP id 13so6998305oij.13;
 Mon, 27 Jan 2020 07:40:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RwQwZevFlTrDSdjxtAiHikYO0hvJy4VPiNd1u9KWS3w=;
 b=m55ehtesZ3Zo9Q0AixvIyMoXOkmlxIWwMF2nz7Hc0LNuykvLCeVZsO7ZVsODXRKrTs
 Vo9EGSG355E7bSgEHwJB3jZzpxy9N3fpkVAi8NWKLbFMy2QEtYMbUkC0q8w0Uf8MTiDO
 B55PKVpKwEKXF18nmo2owKG73pbc2gFr+MHTR2J3jVzaXmAdDOXQxttyi0mEx1MYTLsM
 VJV/MrU/6kD3YbCuHBhIt4nHPAHWaObeoNaDlUoyQSobGSizyK27TA8Pz9tniMtk6Fo9
 NUy/hGhs9d8d7T9BBxsyEDVTWn85H4/me5aecqlTvE5mHAwZ2WAFrDLXr3QjvuzO3Uu2
 pLPQ==
X-Gm-Message-State: APjAAAUMXt/MqH59PsUgUz7YrJrne+/uRVhRD+aopeezY8dR5TTdbYDy
 oX5ggOrLK9R0R9fItvEsTCX1IMU=
X-Google-Smtp-Source: APXvYqwFoO1WzM9OhkG/CQ093ljC7Z7jRg+UOvp1qnPiv8ZdQXf5MpbHaGx5yl1kPWlgf3o82vpzUw==
X-Received: by 2002:a54:410e:: with SMTP id l14mr7569492oic.42.1580139606090; 
 Mon, 27 Jan 2020 07:40:06 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d131sm4924900oia.36.2020.01.27.07.40.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 07:40:05 -0800 (PST)
Received: (nullmailer pid 5257 invoked by uid 1000);
 Mon, 27 Jan 2020 15:40:04 -0000
Date: Mon, 27 Jan 2020 09:40:04 -0600
From: Rob Herring <robh@kernel.org>
To: Hanjie Lin <hanjie.lin@amlogic.com>
Subject: Re: [PATCH v7 2/5] dt-bindings: usb: dwc3: Add the Amlogic A1 Family
 DWC3 Glue Bindings
Message-ID: <20200127154004.GA5197@bogus>
References: <1579489086-157767-1-git-send-email-hanjie.lin@amlogic.com>
 <1579489086-157767-3-git-send-email-hanjie.lin@amlogic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579489086-157767-3-git-send-email-hanjie.lin@amlogic.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_074007_483233_2D66E8E2 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jian Hu <jian.hu@amlogic.com>, Liang Yang <liang.yang@amlogic.com>,
 Qiufang Dai <qiufang.dai@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Kevin Hilman <khilman@baylibre.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 20 Jan 2020 10:58:03 +0800, Hanjie Lin wrote:
> The Amlogic A1 SoC Family embeds 1 USB Controllers:
>  - a DWC3 IP configured as Host for USB2 and USB3
> 
> A glue connects the controllers to the USB2 PHY of A1 SoC.
> 
> Signed-off-by: Yue Wang <yue.wang@amlogic.com>
> Signed-off-by: Hanjie Lin <hanjie.lin@amlogic.com>
> ---
>  .../bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml  | 23 ++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
