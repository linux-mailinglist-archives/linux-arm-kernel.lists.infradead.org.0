Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F2BB225F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 16:40:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Subject:From:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gOKpOXOmyKdz7rnp5XylbaZiv1seRqu9cnDCPp/DPbM=; b=UT0luiw36nMwKud7hY3tiPkyuS
	fOWoRGRtH1xa7OuUmPQ9Ugsae+3dB2iQQtPVzvBaoF9e6xbPiwMHe7rkl4CYYnS7a07+lRwNa0GZa
	EF/nuZGQd9HKDqyAAlQ1ebucnDVGDFiAI6C9liWjKxEEM9nwh246upKaXezmviuaOmBp0iPipdgyN
	PA9srlcVtah1d1mL2tEPW/liRUKdB3dOV0StZ4Pm/Heq3bhx1ERUmol6wM/NDiKwX1GtTLdCYZRAc
	qjs8th2Y/IaDemv9Tkmmr9oqN0Gc5hdb/fxJTpATVV/6aSPGDvYiIg7DcUVm1hoqjbHQnz2pGGMq/
	1tEdTu7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8mjw-0004wy-M8; Fri, 13 Sep 2019 14:40:00 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8mgV-0002Zr-SF
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 14:36:29 +0000
Received: by mail-oi1-f193.google.com with SMTP id v16so2775335oiv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 07:36:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:subject:references
 :in-reply-to:cc:cc:to;
 bh=XF/J+3ctjtlo/NlmrKY+nZTXf6q7nI9Vp8O8/m5fFYw=;
 b=nTSrPecjPWIDmJMOMhU3wakKVwzC3pNYl/N8OS16si7SBv23EkQOQy/Te51VoQ62ZK
 rZDGmTigH9vXUxkERb+aU3uT9esNHa63hRtbG35zrM6o1PP4Y3INwVIU2MEHSG3S/L0i
 R6sEvrt3R9nASV5vPVM29snvxm/s/Wy4xskWxcTyhRTys5F6XcSb6+QuXwV1tip0hPeo
 eEI00VIpn6yEbMf0Ea1G7IyHz069D9+ir0bxXiYZuTV/HEWOWEx05ffkoCmyQv/rxD03
 64JASIMeMa2erMfB5enBhTJUTXTqUGKHVx4mH152zy1bY47gG+loU7UEmRpWJBw5IvVo
 +fYg==
X-Gm-Message-State: APjAAAUBxfN0Kqrqx+np/oLa9mdSmHqi+Gwvry70Nd8rdGpIEyMZ3uH/
 AG2Yfj88TKccKRrjwvZxxg==
X-Google-Smtp-Source: APXvYqwebrpt6cNCRPnAVBk2egSEUvhDKhy/qsYCKODmPuxqc7VBU23iwhJZOOIBx5hQpU+pizh/yg==
X-Received: by 2002:aca:53cf:: with SMTP id h198mr3477800oib.160.1568385386903; 
 Fri, 13 Sep 2019 07:36:26 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l47sm9612669ota.56.2019.09.13.07.36.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2019 07:36:26 -0700 (PDT)
Message-ID: <5d7ba96a.1c69fb81.b5d1e.fd85@mx.google.com>
Date: Fri, 13 Sep 2019 15:36:25 +0100
From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] reset: uniphier-glue: Add Pro5 USB3 support
References: <1568080527-1767-1-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1568080527-1767-1-git-send-email-hayashi.kunihiko@socionext.com>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_073627_982827_D069BF9D 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: , Mark Rutland <mark.rutland@arm.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 10 Sep 2019 10:55:27 +0900, Kunihiko Hayashi wrote:
> Pro5 SoC has same scheme of USB3 reset as Pro4, so the data for Pro5 is
> equivalent to Pro4.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  Documentation/devicetree/bindings/reset/uniphier-reset.txt | 5 +++--
>  drivers/reset/reset-uniphier-glue.c                        | 4 ++++
>  2 files changed, 7 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
