Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D36351DD7CC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 22:00:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HL862eNLotRgBb50PQglEbTI3L5fhabO5K+ecfSuINI=; b=j+nGoa08UY8tMk
	qnjm/7m4X4YM5f1JRDvv8dL3zU2UicrP5tGQfQCQ7DlfkZojgvMdrVqjy5ZcX6osUDpnviyQnseTL
	6Nr2a+st+Ca6RMBnOwKzWU/9DJztVg1Gmuy1BWXiOausPHFpXrCB+TwK4QP5gPZAh0mkMOjr5DUKh
	/k7gIn7q8u5fVjEYIHMcERwNMbUUE9+scHKUE67BEY9dWPcEUySlRx9m8cjuclDUt5e131tpt3Eww
	9RiKbX+trjaCFmF+uLSNYkX7NxYlSQlMQF24P5B839WCGq70+kTkjIJ46S575gxjAvzCE0suv6CmX
	S3c89kTJRnKRhrmVAx3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbrMb-0006lY-7u; Thu, 21 May 2020 20:00:21 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbrML-0005zS-Vn
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 20:00:07 +0000
Received: by mail-io1-f67.google.com with SMTP id j8so8874134iog.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 13:00:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/OBbI+6GWlC3oOe3NnwlkfXbsrp49bIWsk0Mjef2X1w=;
 b=nRiMpzwbioAKieQQwVZhpEgFRTUE+Uwwsid1MGCONWMTyRFQabqYKhQMHFei3hTwiy
 3q2V+qP3QHo/r6/RGBcEjQrqIQdHWvzNf6XE+4g3j80k9xjVgNGAi6ji7NUxlfCMo9sQ
 srefUDSCIcy2b8MGK8NU7dwJ0a/OfiOX2Zg9ksmSWyPYz5H19apB+GocmYoVGHknuRZR
 i6O9RlgvJZN01aacCrWMf84rWVxvLYa4R6ucJ0ayL4uE3auUJMbh/vsZC8ZpqMw6c/e6
 UMjVpoIBI3VEEVNeo/pQOJ0fer8Sw/EoHc+/IugjO4e/nGvCmC0sztHG+u69SEKXH02w
 OMqQ==
X-Gm-Message-State: AOAM531wulpsMBvw1WHVZ10eDRxjai8+Js6Q78X2c4qCawJQNDGXwCC0
 eFFCw6o1c0OanV7AfsilyQ==
X-Google-Smtp-Source: ABdhPJwzyw5pKWXUrC5O7c3oRIN0AOpnS71xcVe2dTARhkJ5T/JDIfApn3beqjgjWsFowWuLOQ4ZLQ==
X-Received: by 2002:a6b:1cc:: with SMTP id 195mr225126iob.177.1590091205067;
 Thu, 21 May 2020 13:00:05 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id j17sm3239598ilq.79.2020.05.21.13.00.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2020 13:00:03 -0700 (PDT)
Received: (nullmailer pid 2801685 invoked by uid 1000);
 Thu, 21 May 2020 20:00:02 -0000
Date: Thu, 21 May 2020 14:00:02 -0600
From: robh@kernel.org
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH v8 5/5] dt-bindings: arm: fsl: add different Protonic
 boards
Message-ID: <20200521200002.GA2800876@bogus>
References: <20200520154116.12909-1-o.rempel@pengutronix.de>
 <20200520154116.12909-6-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520154116.12909-6-o.rempel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_130006_037240_8EB2088C 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 20 May 2020 17:41:16 +0200, Oleksij Rempel wrote:
> Add Protonic PRTI6Q, WD2, RVT, VT7 boards.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 


Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
