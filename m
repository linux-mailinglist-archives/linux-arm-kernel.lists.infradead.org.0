Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4C6F236D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 01:44:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08W+jwT/Z+a24dKcCABwN7vxgC0mrND+ejh6tMPdiuc=; b=oqjGCWrsBXJb/E
	Nb/gjPVh1EUgidj0tnk3nfA0K+VapF6aC9RVquK4+NsKfb3HF/zFHnp0zW36W18HlGThxU4yEL4MD
	89f3Xv10CBQBIrMTley+q1GIQ8craoG4thT8MPU8y5BXgyuXYfEFIiPRD9OzEzoYS0AQ05etJGt6S
	+D1tBe1LjCxFsuklmTf1usal/TEJpBkmcoULo+lZOsGCzcR3lqWFayPYY/nPkxIHCrxumpJHAP6Fv
	EkqqY2ab8aMQd0ykP1rh8Q1hbYefnTyW8ZDK6CqfpVpBduJIzB2NZzvCLr7cNgPN3lTu0RtXxf9VD
	lkN5X5MY36i4qpo2c4JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSVuK-0004wL-7B; Thu, 07 Nov 2019 00:44:16 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSVu8-0004vh-N7
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 00:44:05 +0000
Received: by mail-ot1-f68.google.com with SMTP id t4so513161otr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 16:44:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:content-language
 :user-agent;
 bh=0Caqne9b0+WL4rLkBbGp1GBAkgiKkmuIY6NX34hcg68=;
 b=by20ixSgqRtDnk7KTbV8cWjyC6Oww+heBHQ4GeV9jfq0DzmCbhgY2y3FWpxsOiD/C3
 YTPFHOi+47M5ArVj/K/d777bNFBACPrLvCf20Qmcgcs9wBGXKiX6DtH3YBZXu9+7E6fL
 CuXNhaO0y5yK1dDUudJn2C5hTYAFrMIYscAbwLaME0xxhogJ3EOdW2siixGjTb/ivsuK
 RvTxV7YDASKNL65EsAFJLhR8htSSHqWjPcPvnrF9CwnG18D6P4msbWsQhUNGJbYtZBPW
 kNmLX8Y6AKsCMV2TNzqr1PoC9ppiZnPC/i0wiooh96fmwmMndXR+fYz3+2UVToF+Wsm7
 NsGQ==
X-Gm-Message-State: APjAAAX5hKt6875/qiwc7JUEBpfOmghcOGpxGMWmLAZq29fTcd4vtvAg
 4AWiojlxVMrzmnZ2VCL9jA==
X-Google-Smtp-Source: APXvYqx92yPoPX4sYPoYWxsUDxAEC9WbCWpCzZTCzN77i7Mtz6MGpHeFiBva2FYZd5mcftwDWyN+yA==
X-Received: by 2002:a9d:6452:: with SMTP id m18mr465800otl.325.1573087443454; 
 Wed, 06 Nov 2019 16:44:03 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m12sm131094oih.46.2019.11.06.16.44.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 16:44:02 -0800 (PST)
Date: Wed, 6 Nov 2019 18:44:02 -0600
From: Rob Herring <robh@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] dt-bindings: mmc: fsl-imx-esdhc: add imx8m compatible
 string
Message-ID: <20191107004402.GA13364@bogus>
References: <1572949321-8193-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572949321-8193-1-git-send-email-peng.fan@nxp.com>
Content-Language: en-US
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_164404_755409_AC23A0A4 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 Abel Vesa <abel.vesa@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 5 Nov 2019 10:23:36 +0000, Peng Fan wrote:
> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add imx8mq/m/n compatible string
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> 
> V1:
>  imx8mq/m/n.dtsi already use this compatible string,
>  but not listed in binding doc, so add it.
> 
>  Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
