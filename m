Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF29818090A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 21:19:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gwiTCy0gfLePhQ48WMaNqFKurJN9+G1pYXpbtGFsQ0M=; b=grpWxDEBoXdyo4
	dVQnHqnBuDh3/MgGrpyVi9NzeSaf8VdRpQbqkbitG8kfzCW+UXKcO+OCc4eTS8cxVS+YzjK7/Rzh6
	XNhNUr6A4YnoF6QwnJn2gP8ld1ZSF02rKYiGTE6gWj2WmuT+L857uH9AjVfP1z+pR+O1Df50PEZ7E
	X6+vIZ9+B5sizZDIgB/AFi0g1aT76qO/SleQHwa3tQI7/sRqmsrzjKlFzprJ8DmO4PMVpWtVsroSl
	q19miVGoiIDjfnag1PpPDVgu5Y6fDM2/padX4pI+zQ8QpQO3mC1jvV61sOHqAbTtn5XYv5RuxKcEM
	AXNooxKRuMMC4wXZTw5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBlLZ-0004Qm-Ri; Tue, 10 Mar 2020 20:19:25 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBlLQ-0004QT-1I
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 20:19:17 +0000
Received: by mail-oi1-f196.google.com with SMTP id k18so2230966oib.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 13:19:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AFq1DdnvEPEiWUIBZ8XMuzd1FRD5fPx8e3pkYB6x7lA=;
 b=DlQv6daAL3CdMtZFjW7PDvKM4IreQ+2dhi0RQsOg19F3dryzK0YXC3wBcN4f+53fsi
 TiAOZwpovikvLT8Lqc24tR5BUNr2HYCNmxYPWf2H4MLJY3vBqjvj04M2wAK74UKEChIS
 xSlKcdCh6L8hvrIwz4g9ZpcvbRqVQAm+1TL89EFS/2PJhCOCKbPMdQZYzeZb8UC4nAh/
 Ezrn0pxUoSTy5vkj/n9K9rWgVYD61W+GmpbFFy3oZY/+SouV0tYFuvri7e3p2bu9OlKt
 6MMNrLryFdWjbe6R6qSISm3nQfvreurfgWfVU0zzddNtj/idcR/OhGhpSZwULFUEIwfb
 yRjA==
X-Gm-Message-State: ANhLgQ2dJ3542ykZtu8GPLG8pzYegbg6MUhUy5JdV83oAhqk3dak/EPr
 Ob5uKoiXQqXEMROimhjlVQ==
X-Google-Smtp-Source: ADFU+vvvg/ETQnv8QslVQHIZ0sV61kxtcOyz2SY3bt9I0ZnGmiT8R7zO6pDr8Jh91tKE6yR0zXuznA==
X-Received: by 2002:aca:600b:: with SMTP id u11mr2481775oib.6.1583871554816;
 Tue, 10 Mar 2020 13:19:14 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l1sm288460otp.76.2020.03.10.13.19.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 13:19:13 -0700 (PDT)
Received: (nullmailer pid 2066 invoked by uid 1000);
 Tue, 10 Mar 2020 20:19:12 -0000
Date: Tue, 10 Mar 2020 15:19:12 -0500
From: Rob Herring <robh@kernel.org>
To: Abel Vesa <abel.vesa@nxp.com>
Subject: Re: [RFC 10/11] reset: imx: Add audiomix reset controller support
Message-ID: <20200310201912.GA31651@bogus>
References: <1583226206-19758-1-git-send-email-abel.vesa@nxp.com>
 <1583226206-19758-11-git-send-email-abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583226206-19758-11-git-send-email-abel.vesa@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_131916_074989_6333944C 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Mike Turquette <mturquette@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Lee Jones <lee.jones@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 03, 2020 at 11:03:25AM +0200, Abel Vesa wrote:
> The imx-mix MFD driver registers some devices, one of which, in case of
> audiomix, maps correctly to a reset controller type. This driver registers
> a reset controller for that. For now, only the EARC specific resets are added.
> 
> Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
> Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/reset/Kconfig                          |   7 ++
>  drivers/reset/Makefile                         |   1 +
>  drivers/reset/reset-imx-audiomix.c             | 122 +++++++++++++++++++++++++
>  include/dt-bindings/reset/imx-audiomix-reset.h |  15 +++

This should be in a binding patch which makes me wonder where is the 
binding patch?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
