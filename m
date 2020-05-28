Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2671E6D96
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 23:24:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MoIMD+kCapP90yotKJOE0g/WTvxLcmEQEQSxLZGXph8=; b=CCZlxw4iQTfe5l
	wvtnd1urP8ODplNjC3eEINztYNPRKW8mjqOgsxrgHd8kWY9QCxdV+Rus+JIXJx8JK1+lJlCidYpOy
	rJlHh/Efz6Y4swPVr3e98ewV2gm0513RZYHWbwCinZLt3u1B6VtyXzgYCNsaInY3bDCm2CiQkMPEw
	kQp3ov4JaWputWJp4jm6EeXSUV9aM7+Dm2HCAZltHr+0+fVZK3z1cwJJyxBz1QvRAXc/OkhjnoFEE
	lt4otBdEdIptnsfOo4kCO00rfsjGPPiCWaiFz0668dUA0i1b9RoQNu00skrZU1W+BJ7bGyRNOp81c
	T4XFpegvg0dGt1sOL+oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeQ19-0007mH-Tk; Thu, 28 May 2020 21:24:47 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeQ0y-0007lV-3g
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 21:24:37 +0000
Received: by mail-il1-f193.google.com with SMTP id j3so375783ilk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 14:24:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=e1ym1YauAZZrFVqJD4LN1RKW6wk5ShihqT0BZZ1ZIYA=;
 b=M1+o/D5ocXZlnYfcyv7/ae0G97c3pGI9ygjeAbMWd6RGcqb1LMPSm8jxAB26MDOjgd
 IrLVumYCgWUDagIBoLK/C/cnLE2Nbqpo2u/KYODXkz5J2OUzm6hg7F7pSKn7QY/gUy/4
 IRm8tanhNmf3DBHvw7ZnILyab0ZGLTritR/FIm3eZqZkaAlgYw7EnKAhMjS/YK0gjDeL
 JWqAgxFtt5Bh4OH5ixx8cofPWFs/8pTyp/cMEbeBQ6mZ0JsTv+IzMq9A3iYt1NLz+3F5
 YVdVTU+FEJVFXNQZiYNboeiQyf1HH9bB4ssdRY78z21oeZ8MaSszathk1D+6niPWhUlO
 i+UA==
X-Gm-Message-State: AOAM532VCdyRlFhW47xIWM1fjriztueSRv+TwhVElJftUZbk/yeGVOZ0
 0v1+uZXJ+J1Jt9WLuaJ+/g==
X-Google-Smtp-Source: ABdhPJzLys4LqNNTM+uXr3P8ZG3ucUPZYA0MiBD/sMuIalmC121EG5wOG16FEhWuQR9/riSxL5LU9Q==
X-Received: by 2002:a92:850c:: with SMTP id f12mr4799867ilh.86.1590701075373; 
 Thu, 28 May 2020 14:24:35 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id 17sm3730810ill.14.2020.05.28.14.24.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 14:24:34 -0700 (PDT)
Received: (nullmailer pid 711562 invoked by uid 1000);
 Thu, 28 May 2020 21:24:33 -0000
Date: Thu, 28 May 2020 15:24:33 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] dt-bindings: gpio: Convert mxs to json-schema
Message-ID: <20200528212433.GA711514@bogus>
References: <1589934035-5309-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589934035-5309-1-git-send-email-Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_142436_153052_F2D0E6F6 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 bgolaszewski@baylibre.com, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 20 May 2020 08:20:35 +0800, Anson Huang wrote:
> Convert the MXS GPIO binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/gpio/gpio-mxs.txt          |  88 -------------
>  .../devicetree/bindings/gpio/gpio-mxs.yaml         | 136 +++++++++++++++++++++
>  2 files changed, 136 insertions(+), 88 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/gpio/gpio-mxs.txt
>  create mode 100644 Documentation/devicetree/bindings/gpio/gpio-mxs.yaml
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
