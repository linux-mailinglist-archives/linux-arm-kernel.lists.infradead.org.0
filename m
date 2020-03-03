Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B01E51785B2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 23:36:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pdqXF4p0LxYnYmFlzvmFzAg9R9aoarbo9gNUK3Om3Ts=; b=FmHZH6V4jV0UCg
	4vGWXaihwgIytea+Z/GaI6nB2StesBFLJEGDMLimp5RJ0ZS7woKbQ3sfxGXRy7LE/4T7Tq3LkMV0d
	cKvjCAkAZBhDtAFPgoj5qVgPicdvpNlv49X9DKFkkHLbhlNuaEvhrUB9bjoH8zGhs0xyR0Wa6oriV
	0TYhwhljbHgbrup92xYOHS4aeqbZKDBDmRWtU73Tv21U9qKjjvybDy+df40L8xACY7A/jCqqxtraj
	8Tut6g4Rgj8QjfjD5SbhFwDuNl9VuB50EOTpA9y1UnCs5o3JRsKOHqvv3Io8kvjO+SWBiz2sfqSme
	5DF6aeijbgJgNP2ReRag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9G9E-00041s-Ki; Tue, 03 Mar 2020 22:36:20 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9G98-00041Q-Ib
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 22:36:15 +0000
Received: by mail-ot1-f67.google.com with SMTP id j14so80811otq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 14:36:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jswyzVaGX0gLXelQ0bE73MWedKjiFHl8054jCn5Ou6o=;
 b=ZdqnmlIQ/3fN35fws4qKzKdBoPOlUbXrANk9v/uKY+G5V/3M9ldqOps1y+qWdff4Oj
 /8t5AI2jNRBNp84Ci3RFJlv075EdoKVV31iaDFvYR8TrM4FJqSwlK6/fhHnxLAchSSSj
 mqwCbAH0HM/I7rodDXMJdWLd3nFXB0Gv8GSP43cxNOYdneqCVY1f6aQU05dFVMVZpOwk
 /gjErjzCBf8auH1vdOVwbQL4Pn+od7LthNBO2dZ+GmbhgJ/LNVvRkeBlDIoY3TRlLwz/
 M5LQZyIdt1U5SKVWTKeFQEzKeYb9g1pyeFiHe0AUP2kQ9HDq/58XcIyZMu/eDmnY5W10
 jMSw==
X-Gm-Message-State: ANhLgQ24biSNu/xy998IO6gFfSJLA3C+8Awv7KYq7xdg82AjFKQFEp/d
 rlw1OiLWmfDOyFVDyKZLSeKOWXQ=
X-Google-Smtp-Source: ADFU+vvw+qDN1aLQe0w8OZRSpXaMjd0hvD0koKaHo/6g+ONvJLL7zXTQv/zYDr0EfWdXK7af7goXNQ==
X-Received: by 2002:a9d:3b09:: with SMTP id z9mr86170otb.195.1583274973853;
 Tue, 03 Mar 2020 14:36:13 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z3sm7043723oia.46.2020.03.03.14.36.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 14:36:13 -0800 (PST)
Received: (nullmailer pid 15769 invoked by uid 1000);
 Tue, 03 Mar 2020 22:36:12 -0000
Date: Tue, 3 Mar 2020 16:36:12 -0600
From: Rob Herring <robh@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] dt-bindings: arm: Convert UniPhier System Cache to
 json-schema
Message-ID: <20200303223612.GA15666@bogus>
References: <20200227123648.12785-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227123648.12785-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_143614_612834_1FB970D2 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 27 Feb 2020 21:36:48 +0900, Masahiro Yamada wrote:
> Convert the UniPhier System Cache binding to DT schema format.
> This is a full-custom outer cache (L2 and L3) used on UniPhier
> ARM 32-bit SoCs.
> 
> While I was here, I added the interrupts property. This is not
> used in Linux, but the hardware has interrupt lines at least.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
>  .../bindings/arm/socionext/cache-uniphier.txt |  60 -----------
>  .../socionext,uniphier-system-cache.yaml      | 102 ++++++++++++++++++
>  2 files changed, 102 insertions(+), 60 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/socionext/cache-uniphier.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/socionext/socionext,uniphier-system-cache.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
