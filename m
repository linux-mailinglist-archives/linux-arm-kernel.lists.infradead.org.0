Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B3398637
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 23:04:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vxa9escad6rVVznvkxh2cBWN2NSs8ZXmIU2/do0le2M=; b=Aai3AluzOGd5gJ
	D1xehYdOiMx4VRaSTrXN1ZaIBebuJoT3XNsoY5kVsi/CwM5Y0JiWI5n06tzSVxetiKER/DfcjSL3x
	qfmhLrOaPRGuiZaQkj5QHgzah4ThPj0ZN6XUiqo13qlN9D+ozoj7W3Gr9CJLmEK3qYlhvFwbOGJR5
	wZwhEIz8Dt96vCU0hVV/6po+RptYONPzq/CfqI0fOSgDqFsHM2WvATiH/6qbF3+FKjmU5AqJExGlC
	4C056Mi4/RYhY1AfIG26kmJftsJZ7XqlOWoyBX7KMuN8fWWepCOZIZwnqC2leBLzchKZl6glscFYJ
	aJVFt9lyVfjci1E2JWKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Xlw-00027K-7E; Wed, 21 Aug 2019 21:04:00 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Xln-00026g-Lc
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 21:03:53 +0000
Received: by mail-ot1-f68.google.com with SMTP id r20so3411119ota.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 14:03:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=m90Mz/jvgDnOaaZcenPIYWv0B9+uDzU9ODuqNid723o=;
 b=OWOZIg4a2K3r51YrwmfWXOXmDIo4BpND5JfrxQ5TxDp+WNG57IGQ0pub8wpYtd/TRA
 PMlnBCcnY3xRKtHow8E/xM+5s+4+lUdPe2W8tEZLJ47yaRuaog51aNzT3EIY9MHy9KkG
 neY75ZF+faENNhWtLTf31tIXD1s7dEK1AZSC6XZLIZ3iuG8kOmN9oGXfwevH7Wn2zuk+
 232vbmSSPmpj7vFizhSoN/UP3oJAOEhCxagEjzblj2CM+J2zMqg3pnPBmeO12EUx7ras
 k634CBz/N4nxNwyDOiMaa+JBF+N3Q6VV03zHKX3H4x7i8Sg4dgcunH6G4SWXrhRi07D2
 X1+Q==
X-Gm-Message-State: APjAAAXUaX30B/i4t6YQ9X97bdwgNst3V9VNuOVcuQ9RPXoRPBt4+/Y5
 D/Wrk4Q5HcUp7x4W2igaKA==
X-Google-Smtp-Source: APXvYqzE8iHGPxCpvJfgsISvdD+N8D0mhA2Bfm65nD7V8XzgvQjLdrKSopb9P7aa7/RBblZDxVuz1Q==
X-Received: by 2002:a9d:76d3:: with SMTP id p19mr28757086otl.18.1566421430686; 
 Wed, 21 Aug 2019 14:03:50 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c11sm6897992otr.54.2019.08.21.14.03.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 14:03:50 -0700 (PDT)
Date: Wed, 21 Aug 2019 16:03:49 -0500
From: Rob Herring <robh@kernel.org>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH 02/19] dt-bindings: arm: mrvl: Document MMP3 compatible
 string
Message-ID: <20190821210349.GA29732@bogus>
References: <20190809093158.7969-1-lkundrak@v3.sk>
 <20190809093158.7969-3-lkundrak@v3.sk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809093158.7969-3-lkundrak@v3.sk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_140351_845410_457EE4A0 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-kernel@lists.infradead.org, Olof Johansson <olof@lixom.net>,
 Thomas Gleixner <tglx@linutronix.de>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 11:31:41AM +0200, Lubomir Rintel wrote:
> Marvel MMP3 is a successor to MMP2, containing similar peripherals with two
> PJ4B cores.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> ---
>  Documentation/devicetree/bindings/arm/mrvl/mrvl.txt | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/mrvl/mrvl.txt b/Documentation/devicetree/bindings/arm/mrvl/mrvl.txt
> index 951687528efb0..66e1e1414245b 100644
> --- a/Documentation/devicetree/bindings/arm/mrvl/mrvl.txt
> +++ b/Documentation/devicetree/bindings/arm/mrvl/mrvl.txt
> @@ -12,3 +12,7 @@ Required root node properties:
>  MMP2 Brownstone Board
>  Required root node properties:
>  	- compatible = "mrvl,mmp2-brownstone", "mrvl,mmp2";
> +
> +MMP3 SoC
> +Required root node properties:
> +	- compatible = "marvell,mmp3";

Please convert this file to DT schema before adding new SoCs.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
