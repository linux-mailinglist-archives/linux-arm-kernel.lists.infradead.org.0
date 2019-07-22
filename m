Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7359B70DAE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 01:53:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rBW7KX9mJWZDIzqXabJGOWG0/EPYNg3jcAxnVzBsq4E=; b=IEW02MxL7+YGhk
	8wxzis1OKIBU8rohwMoIn3q/B0iMkciQ4ykl2OOE6VqA+WQkUWKdV3p97E++E/ezuPNWxXmRGZhXF
	TbTbdXEdgRlVfsm6gi4JiOVdJAyNMuvj18FbkLooTUD0nm8BRqzLUAR6hvl16y2632HFY7TuK4zmR
	WOhGUp9Jc8S1NafcMkqTXAZj2hRu1RbBSTEmkSq9G39rCI0D3c7qtyL7upOnRJu7HmXTUJEUO9WxZ
	IR99tnwf6NSK8pYl/AaTq2eFoqxTAT6pVrhtMGDcAqv49aAFEHoHqYOt208C2wCgi/oAJ4n1tyU1+
	FurgDjsxVk7gJ6cxKJxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpi7N-0006XH-6i; Mon, 22 Jul 2019 23:53:21 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpi74-0006Ww-FD
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 23:53:03 +0000
Received: by mail-io1-f65.google.com with SMTP id f4so77924607ioh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 16:53:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HaUvZHRPCOC2S8HOXJy0x3pda31cOo40y2gnBhVmOj4=;
 b=Li6oaj0DpTbQkiLG5XwpIGP1H2XbHblHj7S7r2qESTwPf3qBg2bEvitsdnzsZ+7GHw
 4x6UBqIg3BXCsymguxVOVawEzqjJVzLdXkksC54jqHws6JEiK4pyTySlw4sBmvV9IsNR
 3OACxUvkf561qWn2AiV78TYgPY7hTtBc6CGf7O9nWW7TmL2MT+SE4ImS60r6okqc5O9K
 FhrmhO7B4K2tvNJIjVoCNsCU/VDyD5GSdqTgCez0oCdT57Tcrp1pcdT1iPjuawCJXN5O
 1xIO/EfVswpbPYaKUfgOvOssgIK0rCEJ9pSpR5feSL9lg06w2Au/X43IIoteVTYaADmE
 nJTw==
X-Gm-Message-State: APjAAAXKCSASuCwcMv5Qqmk6L2mpFrOr8rxciqM8uejPwK7Qrc687kUb
 v8fWC7olXfS95jkVRrveZQ==
X-Google-Smtp-Source: APXvYqxzZ6w7VsTX+lZvTdQtthtWohq+ukDLYC7IcHxx2PzdPFkCaSWEUxCSOKgJMJvjZ9AO2AlA9g==
X-Received: by 2002:a5e:a710:: with SMTP id b16mr72912914iod.38.1563839581403; 
 Mon, 22 Jul 2019 16:53:01 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id y18sm41470824iob.64.2019.07.22.16.53.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 16:53:00 -0700 (PDT)
Date: Mon, 22 Jul 2019 17:53:00 -0600
From: Rob Herring <robh@kernel.org>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH v2] pinctrl: msm8998: Squash TSIF pins together
Message-ID: <20190722235300.GA24879@bogus>
References: <503b2ae8-ead6-70cd-7b21-ce5f5166a23a@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <503b2ae8-ead6-70cd-7b21-ce5f5166a23a@free.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_165302_511108_3E221DED 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
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
Cc: DT <devicetree@vger.kernel.org>, Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Jonathan =?iso-8859-1?Q?Neusch=E4fer?= <j.neuschaefer@gmx.net>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 gpio <linux-gpio@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 10:57:06AM +0200, Marc Gonzalez wrote:
> TSIF is the Transport Stream Interface.
> First, rename tsif1 to tsif0, and tsif2 to tsif1.
> Then squash all 5 tsif0 pins into a single function.
> Same for tsif1.

Doesn't this break backwards compatibility? If so, you should say so and 
say why that's okay for this platform. In any case, whether it's a 
problem or not is up to the platform maintainer(s). 

> 
> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
> ---
> Changes from v1:
> - Reword commit message for clarity (hopefully)
> - Drop unrelated change in qcom,msm8998-pinctrl.txt
> - CC DT
> ---
>  .../bindings/pinctrl/qcom,msm8998-pinctrl.txt |  5 +-

Acked-by: Rob Herring <robh@kernel.org>

>  drivers/pinctrl/qcom/pinctrl-msm8998.c        | 76 +++++--------------
>  2 files changed, 20 insertions(+), 61 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
