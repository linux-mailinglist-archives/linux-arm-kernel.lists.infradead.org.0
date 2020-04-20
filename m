Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8388E1B1951
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 00:21:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I+lKjoz/4qvzAfPP9xZDG+CUNKRUYchs4NQl6HBLblY=; b=mYvbbzk6Ald+xz
	gs7WM9BbS4Zi2Sy32AKzRNycAwgTZT6Z9XBYRLt6jTEd4Vdq8dfNZBSxQRRQLSUBA9MjCsEF8RnuE
	EPqmx8xO8gbhyHNBGbxEaLO7qY2lL1IBh9yXh2jVaQcodQMqWagTf54v+FbHcjVkO97b+o+22TU1I
	mWXEfbp+WhzIeCJuBPfZRobX5+Vm4mdve67A36okuf05JgvNvUDJCugVjrp2OXfvSqZDBlZ97nmvS
	xC/BhaTgEH9PB01rQmCVcNC2bZQUilujr4Z14CGLIUj828yZ06KZhOR7dXmM2/0Tp/U5e0aC5+fTj
	G5hHlsPXT7EAcJcWemJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQemx-0005hO-MZ; Mon, 20 Apr 2020 22:21:15 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQemm-0005gj-T1
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 22:21:06 +0000
Received: by mail-ot1-f67.google.com with SMTP id e20so9633754otl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 15:21:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uJ0ZsBgxEkcMHz3xmP0pqIOLKyjGmk0/vhj0hq2pCQU=;
 b=iVCmvNzgdXADrzQNw7XUeejG8JsOe6/OTivZhtZK/W8ZheCzTcCQDGd3/uFrFpFRCP
 fJf9pZsFLbNpkkM5w241k9MP17HACWZsaYVwnLKzM7q0kV344XQYhx+BJdPlKt5rC8VM
 5ZXlT8poDY+I2lLZDaNYENQV1KvmvBwq6tdCe/75UPoRQBtCWio9mvuqf6pUlgZxd67N
 I1M0hb9uVc5BcTA+L8Z4lR/OJZQAqELCzbwQVIclY6f+KhxDM8FwjCQ0veJ5dGy5b23s
 M3DriQQyVsbNmqRBt+RCWbSkbnHTTuhgszmTPMVfdhFgXlgQGsgQ5p7DG1ctn1wBNjs9
 1UWw==
X-Gm-Message-State: AGi0PuY/oRwDYL0iWwGct4H+JwUGblHz04rO/yBaKfhf6htGGbehUCm6
 WukrTQleqkqnt70RMjmz+g==
X-Google-Smtp-Source: APiQypK6mA7ViCuT9PSsCzl82bf8op0UEzG26RywzG77OoyLaJIecAesBlogXZYyw4vHODRoiQzYoQ==
X-Received: by 2002:a9d:5a10:: with SMTP id v16mr10849175oth.253.1587421264232; 
 Mon, 20 Apr 2020 15:21:04 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n184sm198794oia.40.2020.04.20.15.21.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 15:21:03 -0700 (PDT)
Received: (nullmailer pid 3065 invoked by uid 1000);
 Mon, 20 Apr 2020 22:21:02 -0000
Date: Mon, 20 Apr 2020 17:21:02 -0500
From: Rob Herring <robh@kernel.org>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: counter: microchip-tcb-capture counter
Message-ID: <20200420222102.GA1214@bogus>
References: <20200415130455.2222019-1-kamel.bouhara@bootlin.com>
 <20200415130455.2222019-3-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415130455.2222019-3-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_152104_933999_5B3DAFAA 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-iio@vger.kernel.org,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 03:04:54PM +0200, Kamel Bouhara wrote:
> Describe the devicetree binding for the Microchip TCB module.
> Each counter blocks exposes three independent counters.
> 
> However, when configured in quadrature decoder, both channel <0> and <1>
> are required for speed/position and rotation capture (yet only the
> position is captured).

This is a child of the TCB, right? If so, it needs to be merged with the 
TCB schema Alexandre is working on.

> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
> Changes from v3:
>  - Updated the brand name: s/atmel/microchip/.
> 
> Changes from v2:
>  - Fixed errors reported by dt_binding_check
> 
>  .../counter/microchip-tcb-capture.yaml        | 33 +++++++++++++++++++
>  1 file changed, 33 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/counter/microchip-tcb-capture.yaml

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
