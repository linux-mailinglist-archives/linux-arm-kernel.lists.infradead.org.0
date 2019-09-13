Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 707AAB1CCF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 14:02:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=McAmTBeENeoEkQ399fXkp6xbRXHaNtOkdAS2FHTpfk0=; b=D8L4nFeXpW0pfp
	vHK/qWu9QKFT/sqkYxh17bDUaHPJTKswGWP/W6hbplg6VkjtjeuS6O2iHeSIaQZjQP72354BWS7fA
	I7UdU9DokqfUJylHpJPO7PjBn+fvrcbunYfz59L11WPkN6oGVvPE+u2l4AsxSA+BXein+Bw+NsGXX
	ZquiO5WBBGcKr5TgBPWvlw5It8d9eQXFyjRMfqYTo7WBeX66lj3RLovXz2/JnJ5IlnuzXedD51zPY
	ImkjuPsYr8b4nUzjEDghcYReut63a5SR4ag8xbwmTWmupODemCQS+Q5TJLYmcaveJ38Aq3QU6qGcX
	Hi4QQKssCThnC+WcEt0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8kHg-0003me-0a; Fri, 13 Sep 2019 12:02:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8kHO-0003mF-CC
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 12:02:23 +0000
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3477F2089F
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 12:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568376141;
 bh=f1icbhyLjDTw18ni73/UkubJFKFg7NU5Nz1H8j36deE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=khu/4l2AR5/wD9c4lxk37FnlVEsQufdiq4tIoPbX/mbmqLoivPTrDckQ5K0AM8B/A
 qGBbzduXGLgm99Tx8CRhEfz9BYzBOFuzbDV/fjA9fO+SOHZ7pEVXjpQTxRa6aCu7Lf
 0G0jf/JZDmg3q6N7Jg3Xf7CgxeGxsw1F/cOZVYJ0=
Received: by mail-qt1-f179.google.com with SMTP id o12so33582290qtf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 05:02:21 -0700 (PDT)
X-Gm-Message-State: APjAAAUtloRHkHokwp1xzgC/EFLvghOHqSuk9W49l2KOfgxbxq3DE+Ot
 IWOz2V9PQeIrEB9rdTnGpgVZIqgON9u+hq3z7A==
X-Google-Smtp-Source: APXvYqxhImx0WCWl6gHAKAv4CO2JaiSe49Yyuisx+y0vlZXmgIej0DwlltGO3tbu29OwjF0BKoB68pGatJWBjYAsUlY=
X-Received: by 2002:ac8:6941:: with SMTP id n1mr2485052qtr.143.1568376140388; 
 Fri, 13 Sep 2019 05:02:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190908120528.9392-1-horms+renesas@verge.net.au>
In-Reply-To: <20190908120528.9392-1-horms+renesas@verge.net.au>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 13 Sep 2019 13:02:08 +0100
X-Gmail-Original-Message-ID: <CAL_JsqLN66LK3=4K9dLtHWd=nOAJ7ofKH6TKp058gqOV32rj8g@mail.gmail.com>
Message-ID: <CAL_JsqLN66LK3=4K9dLtHWd=nOAJ7ofKH6TKp058gqOV32rj8g@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: arm: renesas: Convert 'renesas,
 prr' to json-schema
To: Simon Horman <horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_050222_442592_51E52FA2 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Yoshihiro Kaneko <ykaneko0929@gmail.com>, Magnus Damm <magnus.damm@gmail.com>,
 "open list:MEDIA DRIVERS FOR RENESAS - FCP"
 <linux-renesas-soc@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 8, 2019 at 11:14 PM Simon Horman <horms+renesas@verge.net.au> wrote:
>
> Convert Renesas Product Register bindings documentation to json-schema.
>
> Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
> ---
> Based on v5.3-rc1
> Tested using:
>   make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/renesas,prr.yaml
>
> v2
> * Use simple enum for compat values
> * Drop "" from compat values
> * Only supply 'maxItems' property to 'reg'
> ---
>  .../devicetree/bindings/arm/renesas,prr.txt        | 20 -------------
>  .../devicetree/bindings/arm/renesas,prr.yaml       | 35 ++++++++++++++++++++++
>  2 files changed, 35 insertions(+), 20 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/renesas,prr.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/renesas,prr.yaml

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
