Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 951E61945ED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 18:58:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6gnkksHOF6GUKSdKKWIdlyoJWuYbSfmotV54P55toDM=; b=P8oVxCRIwiQPza
	/jk6z/m4WCfGZ09snHuJ28zcPq5wIvcmcHDSqwdAdi4vOSdNpRpWTfPB9qLIKALGr6xzNuXSbxQeb
	D1vtHeptOoygn706g8Q23TRVwjl6WY5iKKw946igqbFFHNv08Xiyj0hP/yXUG6a7sAiHY7Sx6tZAX
	Z5pYXan+Wyeq0xXSYVExReRbAQBsPFAhdFdJXj2ZJ5n2azfKGUD5vE41loAdO/bRPcuLCeymjySxu
	pIGUGNduBSL3TqZjHazv2dEra9GFOmxDKQqnmK/lc4WlmNWtDNQuZk9jGErVcx+CahxWMlMDB5ko4
	AP/VJHJwmgldE9OZ4/eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHWlT-0002Lb-H5; Thu, 26 Mar 2020 17:57:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHWlF-0002Js-56; Thu, 26 Mar 2020 17:57:46 +0000
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com
 [209.85.219.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9E6A92070A;
 Thu, 26 Mar 2020 17:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585245464;
 bh=HDcqsps3y7sE+bgHTDL/9DN90HLJP7jG1o+L1gkMqcU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=c+xFFnm+etNnSRJ/Ah2FXe6leOx9wiOBgkJS7CvbgiEZgApTFpZ3/9Cdon8aSqb2g
 p6ZTb53C4xfj63XEAZyIeqabtx5o541mzYHoGP0rQMQUOL2TOlUa0B9TI7xwF3PW0w
 tVkCytw1QKCpW2IuTmyu2BRHJEWwR4Z8p97pPVeQ=
Received: by mail-qv1-f52.google.com with SMTP id g4so3477830qvo.12;
 Thu, 26 Mar 2020 10:57:44 -0700 (PDT)
X-Gm-Message-State: ANhLgQ1B+4qGlFPdIawMCL0WSf00Wn/tD7GH29o/8F1t9iZI07m5tp/f
 Ht6nx/CrlfRb2ZR1OLj+J9CJyLTBOggiqjnPqA==
X-Google-Smtp-Source: ADFU+vtKM5v5e4VeFhzjzjeoNb+xYN0ZFLlxsancYFl7GdsDvmsfoY88t4i3YV+NkEMqB3PBeSG500K8p1dCCg5Gp6M=
X-Received: by 2002:ad4:4829:: with SMTP id h9mr9006254qvy.135.1585245463794; 
 Thu, 26 Mar 2020 10:57:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200326161046.12111-1-narmstrong@baylibre.com>
In-Reply-To: <20200326161046.12111-1-narmstrong@baylibre.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 26 Mar 2020 11:57:32 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+zDO3vEkZ5r28_GbnUECo5BfRNFF5PJc9wL0x3mS3FGg@mail.gmail.com>
Message-ID: <CAL_Jsq+zDO3vEkZ5r28_GbnUECo5BfRNFF5PJc9wL0x3mS3FGg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: usb: dwc2: fix bindings for amlogic,
 meson-gxbb-usb
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_105745_218666_1DAB39FC 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 Linux USB List <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 10:10 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> The amlogic,meson-gxbb-usb compatible needs snps,dwc2 aswell like other
> Amlogic SoC.
>
> Fixes: f3ca745d8a0e ("dt-bindings: usb: Convert DWC2 bindings to json-schema")
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  Documentation/devicetree/bindings/usb/dwc2.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
> index 71cf7ba32237..b7b9ddcbc637 100644
> --- a/Documentation/devicetree/bindings/usb/dwc2.yaml
> +++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
> @@ -49,7 +49,9 @@ properties:
>        - items:
>            - const: amlogic,meson8b-usb
>            - const: snps,dwc2
> -      - const: amlogic,meson-gxbb-usb
> +      - items:
> +          - const: amlogic,meson-gxbb-usb
> +          - const: snps,dwc2
>        - items:
>            - const: amlogic,meson-g12a-usb

Perhaps combine at least all the amlogic ones to a single entry.

>            - const: snps,dwc2
> --
> 2.22.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
