Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0141B9EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 17:26:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=00Ph8iaCTVfSAo5AhMNSIscCnmgbPa2ZEuzlmblxdok=; b=ERHcWVOoJfpGyo
	2EBedOlT4KDJM12xGlr/8Dx2B+nl32DZ/JsmP04wRcd4uku7BWUIi1IgsC+NNSTVag7OGVjWD5VRL
	i8pHuYgSlk+wiJYop4hg3WPkT0FutyvauO4ZNiMqDpF0mV5yx0sZHEIDDzn5Dj6Pz4UwtiZKzWmas
	QLDoqYe8gl0Uxa0iAP9PRuCtQjtv5hADfx/fSLXbDDwdbGfyWBZxjuTdZM92YMyijgbun0lzPYov/
	kUDbYuNEaJpGYEgd6qfKXX3PGbo84d616mlcuPuLByteD4VreGXNCqIpQJbnQYqAVmdnWpRCz04Jf
	5AsQeBXfqMP7reVPiTCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCqc-0003mx-00; Mon, 13 May 2019 15:26:38 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCqV-0003mV-00
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 15:26:32 +0000
Received: by mail-ot1-f67.google.com with SMTP id g18so11889784otj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 08:26:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nIvktfd4Hu4J+EanMaRcVbjL4KHwX8r4JOA04Ck3E04=;
 b=hBzO1973NXryMFG7ZbCBAvAgA9SBbekWAaK6DJ+D3mvEl/Ve7nO9382iDbAXId49g/
 aLjYuaOQpDOvXJ3srUzs8C1Rw4ni2cIqZGMQ26sM3fPNz3iMmrD9jUjGZN34YEbwzFn5
 T4xr7BAx6qiTlxOolaFx4/B3BjYoDMbV3LY0GSAo3f4nwqgF7QOhwQ2vFVBxNw2dQaP9
 h1db3w6pw0yV6HVvehGXMaAPKb3jZNh8Lz2eFbS9Cr/v/G8H3ROdholJzfvHTvZcvoxd
 1jqkbOynVAM5mfKCGAYdDoh74XjxkQptZGEBxmbKv8CCsiIT3e8G23Ar/JnetCdrCPV7
 ZC2g==
X-Gm-Message-State: APjAAAUTqQAN3ojq9wiR++bSt7DVafg5bpMMXOlyC2JlMKEmesekVkf8
 McnMpD94vaHEKM8cIFchkw==
X-Google-Smtp-Source: APXvYqzOz0IJhiSIHUggaPIhdUeY+8qUhUMxIUjErgTOEdtsFRFR0DWcAUAIS2pzGbes4imV56PH3w==
X-Received: by 2002:a9d:12d7:: with SMTP id g81mr11173627otg.46.1557761190168; 
 Mon, 13 May 2019 08:26:30 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r15sm2003876oie.5.2019.05.13.08.26.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 08:26:29 -0700 (PDT)
Date: Mon, 13 May 2019 10:26:28 -0500
From: Rob Herring <robh@kernel.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH V4 1/3] dt-bindings: watchdog: move i.MX system
 controller  watchdog binding to SCU
Message-ID: <20190513152628.GA28757@bogus>
References: <1557192198-19640-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557192198-19640-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_082631_031838_42DBF702 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Peng Fan <peng.fan@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux@roeck-us.net" <linux@roeck-us.net>, dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 7 May 2019 01:28:12 +0000, Anson Huang wrote:
> i.MX system controller watchdog depends on SCU driver to support
> interrupt function, so it needs to be subnode of SCU node in DT,
> binding doc should be moved to fsl,scu.txt as well.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> No change.
> ---
>  .../devicetree/bindings/arm/freescale/fsl,scu.txt  | 15 ++++++++++++++
>  .../bindings/watchdog/fsl-imx-sc-wdt.txt           | 24 ----------------------
>  2 files changed, 15 insertions(+), 24 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/fsl-imx-sc-wdt.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
