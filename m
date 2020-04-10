Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E561B1A4645
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 14:30:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KnCcoikYFLO1UFyL5tbtfPY8UCn1CfO1/Kmiq7+afeo=; b=jzGE1Pd+n3uzVV
	hDbiFBnPgVb89nxwbU+z6ywzMJEVlQcgQntWTadKBxxZVf9QbaZpdAgV6Zw/XrwAvZqZWsCK+Svi9
	QlVlFEL6phF7y6Fm5DXTP9U5Pr+DgN9p6ZvCewuOVZ7pRs9RHF7sBam5/mEAPx7V3pmWvh8w6PDue
	3iK/3UmlQu4QdONpUpZCF3ew22TfQeraOdqHtJR7XDcF/7QeevfbVyllm44aJaCrDHQwGSm6UAjPf
	hfthffS22WWp46ag5m58vDbrVWadvhqbkxOp0aP5RY4gl9KZjYps/zhhqhU+WQdwnABXtYomMKJ0Q
	OkJaZAhInpUmDnPI6sFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMsnv-0008Vj-M8; Fri, 10 Apr 2020 12:30:39 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMsnp-0008VA-MG
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 12:30:34 +0000
Received: by mail-lf1-x144.google.com with SMTP id s13so1247075lfb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 05:30:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/wxc7mReIW0I/9bGXTr0ixTFqsRHmu5x96+RkLeeN6c=;
 b=UhdOUThDXUsEVxm+BcFPoLrZbBISCqLbMnOIO/+ksl/iwGQHXK3T1IW0amcnMn/D7o
 b7WR7IVdaR1vh0IEOCs7T3aESfBr8WerWgHuOqOfwflaChJolVe2Q+1zMXQW3mwqvbkN
 hpa9JCs3OxbAtaB9qBquyWPyGIapVOVmhE5VzYsmd21eAqaHIXeZMlZ06TfMD/CMsKU5
 brdw62stUhFRn2sTkPcSf76O5ane6G7uKY+5oDpe/vwLH0R6CITKNsFX0iJL2PTjk6b5
 GZtH4lbj1RCvXIdLUmj70Y55HAF2B1rI6d4fJN459gL1mfBMRaXAq0AhE09Ux8rxpvBx
 VFPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/wxc7mReIW0I/9bGXTr0ixTFqsRHmu5x96+RkLeeN6c=;
 b=QszohjMBHvT4xm6d7H2+msWK+BeSX4vE2H5VQwctJI1iRcxd8CoP/nstI9bAAyVHUo
 Hf1Jh6CErALIhIScidGlKb4drS5XOX7ApQhOsbPunTsz1lvCAin2vMeUXfdY2FmnlxtB
 kvJes8GeOOM0Vsy4h2dUS2V1qaF1603B7io4GsdYZeCDYCs30GtoBBfrb/HJyYfI5hAl
 hLlG2wk9Xzb0ubXtEAb31wLosrYt+BmP+iCaBztVnyPC1GSg4RNGR/A4Xxsqj+3Q7I9F
 wNkoA44NSxh5F/oD+EZxBUoGXbz7W/18OKwS6OB5bVlZ56XuYhjgLhJdv1ZAri1+FGeT
 1EDg==
X-Gm-Message-State: AGi0PubRz8zywHIOizxhxG5W+hABFf6ez1kkh+GwZ03UfaTU1+j35Rkf
 dMlHKwyYjxlXU0tNdDjkUwEJeIFvQnB/y/Nh/eI=
X-Google-Smtp-Source: APiQypKbT1f0FIBVJXC+bXz14yNA1I+1UT6w/M7bmkAigetfHQuvslFLulfIjNzdwy6W3aAIolbWZMQR+WwhVNs5wLc=
X-Received: by 2002:ac2:57cc:: with SMTP id k12mr2456508lfo.69.1586521831805; 
 Fri, 10 Apr 2020 05:30:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200410004738.19668-1-ansuelsmth@gmail.com>
 <20200410004738.19668-3-ansuelsmth@gmail.com>
 <CAOMZO5AKYO3xLsp4k6_fJCV9qW=rAtRKEGWnxksixU794dOw8A@mail.gmail.com>
 <003401d60f28$3d045190$b70cf4b0$@gmail.com>
In-Reply-To: <003401d60f28$3d045190$b70cf4b0$@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 10 Apr 2020 09:31:00 -0300
Message-ID: <CAOMZO5B+rEoQD_ujt9cx9VXO-i2oqfW2UN2cVeB5hZB3aVpGeQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] drivers: pci: dwc: pci-imx6: update binding to
 generic name
To: Ansuel Smith <ansuelsmth@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_053033_732847_92ACC177 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Richard Zhu <hongxing.zhu@nxp.com>, linux-pci@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ansuel,

On Fri, Apr 10, 2020 at 8:07 AM <ansuelsmth@gmail.com> wrote:

> so no chance of changing this?

Reading the commit log I don't see any explanation as to why you need
to change the current bindings.

What is the motivation for doing this? Is this really worth it?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
