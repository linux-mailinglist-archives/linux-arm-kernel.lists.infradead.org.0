Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2517046888
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:01:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IpAcGhIe4HBRLWELXdAJ8UjUIvy/M4pThd/y3oFPqm4=; b=EVFYJpR2G64Eiy
	xSqrRglAMnjos1RYesbv5hAs9VLCzC4K5tuZgqvTySsXuXMKxqDA7XvOwDJ+oZK8ZN9h4wgwzkmod
	VBoQQjdBdcEo2gdMy2oHVRKKx/lGZECXnFdT+OnnQiRGsiNy898Pa72qq6vbixRuPjYQ5O46JLxEP
	Z1FjK1USKrhkioRon0dco8Cnmoh8+eGcz/2oDpJJf7MUU9QTYGbgf6vabOlNxbkV86PJoQoHX4xGR
	2H4KcPAfxND3n8F9IjMh3PSpP8gbf9oZXVGWVvafLLBQyYr3he0PxVG+/rr4QYPfOS6CFgtZRiZsC
	TlrlTxRp2Qw4pvLfAWPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbsNo-00048b-6M; Fri, 14 Jun 2019 20:01:08 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbsNf-00046p-CP
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:01:00 +0000
Received: by mail-qt1-f193.google.com with SMTP id 33so3906995qtr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 13:00:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eB18U3DxOdsmPtgK5EfLEq54rx6Rwk5ZlbGeYQvoBGc=;
 b=dNTeObq+TEG/PVz5RP4vpp3m4N/vIdZqzHNRCz+mM31DHY78WF0XX3NjIbSBmv3yqf
 WmK4EGbAoscxkysyR8ISg35khFWEZWVh50CV1rxAVPVfUAChGxuE2GuIvnB2P0o6oXUS
 JV0Z55yP7ZEZCwFbz5BYnhWnICgmO7Pblb23rRVJrGAS4grtlCBlfsVWzZsODDEtJu7b
 uJW0xPyiBadMd3m8KyOprDGCkpodZc7dJj9ypHPRPMNU2nuCP2wu2HOEUNW6y+XhzlpZ
 DPQZlnTwtodA9Aq6l/CdBrGinPfNKNLxkIApckjoHHixMULLz4XB6dntOU5HRinuaya0
 Lfjw==
X-Gm-Message-State: APjAAAXyTFOGDZX1K8vsohgdvN5ajN8s11jzVXyy4wKGsr/qA3F6zZHs
 BuWPabL/rl83o5HtOyUmQ2XoRCIM/Q==
X-Google-Smtp-Source: APXvYqzW+x16AqmtwTMocoooXQV8wwZ0g2afvcGwk5AwhPvYq70dh12nNiLJH569SFP7sRSoYwKl4Q==
X-Received: by 2002:a0c:afa4:: with SMTP id s33mr9531897qvc.194.1560542453169; 
 Fri, 14 Jun 2019 13:00:53 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id a11sm2039583qkn.26.2019.06.14.13.00.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:00:52 -0700 (PDT)
Date: Fri, 14 Jun 2019 14:00:51 -0600
From: Rob Herring <robh@kernel.org>
To: Daniel Baluta <daniel.baluta@nxp.com>
Subject: Re: [PATCH 2/3] dt-bindings: sound: Clarify the usage of clocks in SAI
Message-ID: <20190614200051.GA12858@bogus>
References: <20190528132034.3908-1-daniel.baluta@nxp.com>
 <20190528132034.3908-3-daniel.baluta@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528132034.3908-3-daniel.baluta@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_130059_426985_55B11856 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, "timur@kernel.org" <timur@kernel.org>,
 "Xiubo.Lee@gmail.com" <Xiubo.Lee@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "tiwai@suse.com" <tiwai@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "nicoleotsuka@gmail.com" <nicoleotsuka@gmail.com>,
 "broonie@kernel.org" <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 May 2019 13:21:01 +0000, Daniel Baluta wrote:
> SAI might have up to 4 clock sources selected by an internal
> CLK mux.
> 
> On imx6/7 mclk0/mclk1 are the same, while on imx8 mclk0 and
> mclk1 are coming from different sources.
> 
> Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> ---
>  Documentation/devicetree/bindings/sound/fsl-sai.txt | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
