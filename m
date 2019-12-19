Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D35AC126E83
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 21:13:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SdGg3Ph7vJ489DQNBg/Ly5z8L6EpYO8t4SQeFn2PCWQ=; b=qQU5ceE87/ZEnd
	PjMRgSrsIp7paZ8WnMC6Wvdbs92WOzqWxq9wUwU5ac7WG3I/k0CzTCrQgXdqcfLfvSGlBoBtcAj2t
	7/qMoFwwHXAWei4KAvG5RBk/GKEcxjuY1i7V5E3m4C+P9igsnSKmoCgMbPiBvy08WleR/9SKcGMhb
	YAd0HKMNM6jVhWwC/WpqN2SGC5k4fHDBCbO1PYs1GELhNCpm1OtVODsAziN2cIxK7EmJyliI4prSH
	SRXm3KCAVUYPLjgte03FhSFROAiyvZOkXNsTxDnxYkbJG9UJ6SgeQO0+M8r4r/TXFN9ElA0ZG7TKo
	JcOWyUr/q6vM64NsCFXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii2BE-0003qO-E1; Thu, 19 Dec 2019 20:13:52 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii2B5-0003pO-Ox
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 20:13:45 +0000
Received: by mail-ot1-f68.google.com with SMTP id b18so8701981otp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 12:13:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:content-language
 :user-agent;
 bh=2exayYeaNZtgQGFmqcZGnZK76NHNb4vFc7u1qrZvIf0=;
 b=XlHEbIzJCSAQjnE+cwhBWnTK7fW4o3UHuTg78yaChgSkmeaaO2pGT7QBaym+1QD30M
 5PESbdneEyX9Hn2iEuPZDH0u+PfqAPmJr686L7z0zmSu2LR30mxUb8qtuhe3TIsfb4Pr
 g+mP0c0OeREFRzHW5NmhMRiQMbywHk+bNDvrkGac/fNAmi6FKwrNpTi+GB0KwCuQNXOn
 S2n3DRsTcBJ+9TtXVlAep6biwdKVbni9GvDlEewoAE3CZqVsuHJHpRsErDSryS+uuPdl
 7OMxDwK7jOA4qK+xbe87DSRWpVtvHIwywaQTkPJWxGdcwrWjwH/3+clCNXrZM4TuLyLD
 nn1A==
X-Gm-Message-State: APjAAAWHqZjI8cxpeWfkfjZyIydNkPSXDq89FX8+qXUmEVBMIkqwEmaB
 0G0fx86jvBkzl2oC+j/pjXIRFRllja/Y
X-Google-Smtp-Source: APXvYqyIbNokEdgRSN9icS+W0eFCaLPDJrnwYXGGXJ6e0m0OSnKfrq3BWkt8qxc48c3/cbtWC3B/Fw==
X-Received: by 2002:a05:6830:18f1:: with SMTP id
 d17mr5567978otf.298.1576786422699; 
 Thu, 19 Dec 2019 12:13:42 -0800 (PST)
Received: from localhost (ip-184-205-110-29.ftwttx.spcsdns.net.
 [184.205.110.29])
 by smtp.gmail.com with ESMTPSA id r17sm2381229otq.70.2019.12.19.12.13.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 12:13:42 -0800 (PST)
Date: Thu, 19 Dec 2019 14:13:40 -0600
From: Rob Herring <robh@kernel.org>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: Re: [PATCH] arm64: dts: imx8mm: Add missing mux options for UART1
 and  UART2 signals
Message-ID: <20191219201340.GA13183@bogus>
References: <20191210141516.6983-1-frieder.schrempf@kontron.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210141516.6983-1-frieder.schrempf@kontron.de>
Content-Language: en-US
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_121343_810400_F360FE70 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 10 Dec 2019 14:15:17 +0000, Schrempf Frieder wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> According to the reference manual and the "Pins Tool" from NXP, the
> signals for UART1 and UART2 can be muxed to the SAI2 and SAI3 pads
> respectively. Let's add the missing options.
> 
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
