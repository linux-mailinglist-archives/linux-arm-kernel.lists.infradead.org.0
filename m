Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E411BEF3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 23:05:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VVz3omulEyAjmlgS+YAqpR2RkKnhsX1x+KVKYwVkIWo=; b=B+RyrytQ4pGe7o
	Oq8GNPxaU7qnuDwLbjOgS1HiHjSJUOLNAdpVLflJ2iiPRxM1+8yvzZUBft/SVUH+dBaVRygGNfuKt
	JnrEdZbODbpkGlFbuoUPW7pZ268tijE2vEa3nZVqHmNaOu5K1k0m8BQKpm9HIkJL7NHktgCKOEIvT
	ydqaR5djExNiIvDbkC9YcW7unUVfVXxGREJ2CG7cAmzXsGjlX0GApNtNKocxIKJodS0HR3y1xiUHs
	wn6VHNot9LUDaQvmh30BrkValhxqTU3cdPeZPgYU60BM8RkBRZD9cixLVBi4cx0maKedwxBMh5zY3
	lCrOiWey0iw5xUKNWAyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQI8h-00019q-KC; Mon, 13 May 2019 21:05:39 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQI8a-00019W-UP
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 21:05:34 +0000
Received: by mail-oi1-f193.google.com with SMTP id t187so7163118oie.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 14:05:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8igH6VcpOe4MJRusI7X36IMlgRJzi9m9KzOWRsS5pa4=;
 b=GAqZ4LHN49h6IK9H+8oMCB+gEMJAmz3NF1KuJ4rp0QBD2EbMmFZ/PeB/o7vK0S9ilP
 HM4DYX8mBN3Pz6pfwde80aJD7SFOHzs4JuN50yfS05GY2amKDHI/xEfe1H2THdhu6IIN
 cKrCwzvz/elJgfHVV8OPb/9nz93UQib4rUFbU57J2sWkikaK8FscpeBz6P0ORV1wa6Ts
 SemwjromWixN2XGJpUkCA0Ss0dvBVsrfZNadRV2yiYTjVpqNFVyumKEPe/vg6Z3HcIiN
 jR22397+zC6Fx2Crh2dA7cfI0vCKuMtbAzhd2A65BSoWpYe7XUOfUj4vSzez6gsW62e6
 JAVg==
X-Gm-Message-State: APjAAAXBHtZrTcN1f13XnDyzoFthqUdZwgN+Fqd4/Y+QsKaetCqg75vr
 a/eB/QcJ/5e5KxRUBLYLYw==
X-Google-Smtp-Source: APXvYqxKflF7N+x1k0B3NpB3Xen8KZsgGRykLMEbCpQ44syZFjDZS8d2vIRTPJiuweyu7onVk6Xeew==
X-Received: by 2002:aca:4d48:: with SMTP id a69mr725895oib.113.1557781531618; 
 Mon, 13 May 2019 14:05:31 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k65sm5561527oia.16.2019.05.13.14.05.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 14:05:30 -0700 (PDT)
Date: Mon, 13 May 2019 16:05:30 -0500
From: Rob Herring <robh@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V2 1/4] dt-bindings: fsl: scu: add ocotp binding
Message-ID: <20190513210530.GA30749@bogus>
References: <20190508030927.16668-1-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508030927.16668-1-peng.fan@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_140532_981626_7FE2E5F4 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 "festevam@gmail.com" <festevam@gmail.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 8 May 2019 02:56:02 +0000, Peng Fan wrote:
> NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as
> system controller(SCU), the ocotp controller is being controlled
> by the SCU, so Linux need use RPC to SCU for ocotp handling. This
> patch adds binding doc for i.MX8 SCU OCOTP driver.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Aisheng Dong <aisheng.dong@nxp.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Ulf Hansson <ulf.hansson@linaro.org>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Anson Huang <anson.huang@nxp.com>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> 
> V2:
>  Move OCOTP to end, add example, add "scu"
> 
>  .../devicetree/bindings/arm/freescale/fsl,scu.txt  | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
