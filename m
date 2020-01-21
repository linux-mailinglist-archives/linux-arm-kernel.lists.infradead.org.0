Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FA11446CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 23:01:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S+IuSos0bibzsAwnduGjpj8rbyzP2nn6aiMKcf36aD8=; b=J4BqN4zT7i7C4A
	IEIM2SpcZgewFpfznKKQ91jjn4ZhRaq38vXGJva8PNWVIoRDRGFfY8zlkOPyA41bz5mlSrWjb535n
	BrBU0uoON6QsSncGBv/tMaBIuYQvkbOMUVwZMYIKsslBf/Rh86nrmNArFd/G/lFyAi5rwA64EibHC
	owXpfd4wFP7Y39MaOYTybh9+23AzgKr65yI8wk+VVqvoUGODAWjtuaCJxRORG64Y+Ik33LHvbsW8b
	aannhagj2kz807uSjOJ44LPn3dTTANDdWF8RTLyBVmyTyAKPpXCSTqnHwzCAnTDG45C6mygnnQeLR
	h42i4GFvl9lpbTKC+bnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu1aR-0005eH-3i; Tue, 21 Jan 2020 22:01:27 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu1Zn-0005ME-HM
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 22:00:53 +0000
Received: by mail-oi1-f195.google.com with SMTP id i1so4139834oie.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 14:00:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=p2Aap5NFUqMa77n/+b3hDbspOjP5JJgkLK77uRQX50E=;
 b=iS7gPWlFJ4Vp2dYoNIaSa195Rj8sZbmQqEPXPuP91YFRLekrzZeAZU2FGvv/ec7adF
 dPazlxgfS176x0MW8BwOllhgQ3oCjExTlEMf/S/5I16rct+lAoK4SeZ0LHdAb/aF0vSJ
 0m1G4hARUIifSFZSgk/ZL8YdEttiNIFXWzExIRb/ne2OlRSP1Rmjo8Md4M+kDiq+2DeY
 v5QZSNdMhtc13WeA3nLHQRa05HOOugrpOSeI9/Jx3OJnFDV2nWq8eAD7Uyto5chg6i6B
 EN8iMUlqSFRgnYl2HWHbL6G+Bx6dd2ijM3Ilei9nCPxOWjkFjxk/nH20DTbRb/bxXXjP
 7dtg==
X-Gm-Message-State: APjAAAW32t4NxMZjIb8gVY+9rn/87Tupr7VAb6r0GPJJojzYvJAFzZ77
 shrHSAQXQN8ZWHE6Tvy6+w==
X-Google-Smtp-Source: APXvYqxKBYMeO352fDo1BAP8tkycFEuGstxKeRhGS0pwBdWJpiC1n2wUfiMqntTT/6xQkubrVGgV4w==
X-Received: by 2002:aca:3241:: with SMTP id y62mr4611216oiy.31.1579644046532; 
 Tue, 21 Jan 2020 14:00:46 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n2sm12341870oia.58.2020.01.21.14.00.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 14:00:46 -0800 (PST)
Received: (nullmailer pid 13995 invoked by uid 1000);
 Tue, 21 Jan 2020 22:00:45 -0000
Date: Tue, 21 Jan 2020 16:00:45 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 1/3] dt-bindings: clock: Convert i.MX8MQ to json-schema
Message-ID: <20200121220045.GB13566@bogus>
References: <1578965167-31588-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578965167-31588-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_140047_591018_62EA5072 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, sboyd@kernel.org,
 festevam@gmail.com, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 Jan 2020 09:26:05 +0800, Anson Huang wrote:
> Convert the i.MX8MQ clock binding to DT schema format using json-schema
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- Correct the compatible string, should be "fsl,imx8mq-ccm";
> ---
>  .../devicetree/bindings/clock/imx8mq-clock.txt     | 20 ------
>  .../devicetree/bindings/clock/imx8mq-clock.yaml    | 72 ++++++++++++++++++++++
>  2 files changed, 72 insertions(+), 20 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/clock/imx8mq-clock.txt
>  create mode 100644 Documentation/devicetree/bindings/clock/imx8mq-clock.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
