Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6381BBEA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 19:27:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=52J1GJvu/wD7IS/VTB2LtM5ZVhHIfcfnM9lfIyHMAwg=; b=Um2pLeZ8LCyQ6U
	RY6mZdi3uLyjke65RcB7UBHpakNXQyucltZ3wsBn/Xl4FNd053tU4eDnZ5cizq/Zaq994AKaRaEDz
	qpJKK9SvFuq15pakuRM0/tRXA5W+qPwtcDYvxdQDOdNrWo2H3xtQzTkzRhASoWqC9jMYNvjYnyvEb
	W7HFzp7LmV0Jg82pw/mV76cFEce3Afpfr8GTCucW/3/YdpPeC+J8hlsDsr/iledMrXwLUwUlWUwd2
	E6Oy8kO97bOYWFOlA7W11/NNHpfw+6JIntwM8PdlQTkeGs/yvnEJIPYXurjb3Pd/VOAdfSJ+O/4T/
	Uq9IrvRAEI38lbCA5+lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQEjA-0005Qq-PQ; Mon, 13 May 2019 17:27:04 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQEj4-0005Q8-6s
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 17:26:59 +0000
Received: by mail-ot1-f67.google.com with SMTP id u11so2116333otq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 10:26:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HKIMabYolh/CWr9ZVS4BaOdQjFc8s0quPHe3Wg+vCIE=;
 b=mhHL+pU0ooup5x7rntiILM/6XwEHVK34/W+bfsqvalIyYdcQZxrnud1zhcFO3kywCJ
 TYmQd8IbRAlafUPwfm6AuUjbqnWvaJUYg6Lyr8WicYKjEPO3pogUuptepBQpWPV5LgdV
 lpofilJCU/4jvyhpOxtk/X95jGE12edZPgZNhr5vcdb1ERtmhlMwCESvSErrwawX4vcv
 z2UCNbLjABtGjV2MbRntrAjJIF0dz1MK8usgbTHP9ljkZZyEgYSiP8tM0FkJPnSLdL0s
 6WzeEQZQrC+Q3Go7S3hafngCc+qJ9kW5ig0rPis0hdgenF5IZ1qW93ORqv5AUY1DLcAx
 Rb4Q==
X-Gm-Message-State: APjAAAXEsTZMknncs44MBt+vwFXmwSgWb6tZf8+6iE48XkG9LO2OTM1c
 Bt+e/jtiolwbkQIQYBbrTQ==
X-Google-Smtp-Source: APXvYqxyXc8m8ojecJr8JAPWWliXRCzCTj/jyi66UThIvubAV42LSZvfB+YZ9RO6ckrbWofzjD016Q==
X-Received: by 2002:a9d:6a8a:: with SMTP id l10mr16867947otq.197.1557768417211; 
 Mon, 13 May 2019 10:26:57 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y129sm5567619oig.27.2019.05.13.10.26.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 10:26:56 -0700 (PDT)
Date: Mon, 13 May 2019 12:26:55 -0500
From: Rob Herring <robh@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v3 08/14] dt-bindings: spi: imx: add new i.mx6ul
 compatible  name
Message-ID: <20190513172655.GA12061@bogus>
References: <1557249513-4903-1-git-send-email-yibin.gong@nxp.com>
 <1557249513-4903-9-git-send-email-yibin.gong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557249513-4903-9-git-send-email-yibin.gong@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_102658_250889_176C2810 
X-CRM114-Status: GOOD (  11.57  )
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
 "robh@kernel.org" <robh@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "plyatov@gmail.com" <plyatov@gmail.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 7 May 2019 09:16:25 +0000, Robin Gong wrote:
> ERR009165 fixed from i.mx6ul, add its compatible name.
> 
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> ---
>  Documentation/devicetree/bindings/spi/fsl-imx-cspi.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
