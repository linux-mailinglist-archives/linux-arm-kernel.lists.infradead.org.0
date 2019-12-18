Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA0F123CF9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 03:14:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7WpNWAopIQlwfDcJ9CeVRZsOiCNmqakAyTIblwAGzPk=; b=fgMfAZFJ+b2fI0
	xnDWOTIa5nlWlLQP+sLWD7orm1CfZ6yMM1TteoH/AyG+Kwasg2KpC8Ksnu23IzqsSN5112GWPScU3
	PPJ/MYlPzHp2L+56hJdb3i4WQv8rcPUjTAlavPldeq5ojGvMgO5DncAtGL55oxK+dkcNQ5H2b5O5t
	86JnS00lpSamImVUbSKqd9Ja+rBtfuCi29TYWrue0ABOjb3u/lzmLAYfT56iVsPEXiR8esqn2BIAx
	D/bd38Ia5pKWniOHO+GT9jiXGRLGBpOe2W/0wyZNWbHFy33NE29u08OnCVw6q65mxbXtefaqGryx/
	llntEbrshRut4ioXPwLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihOqi-0004OP-0T; Wed, 18 Dec 2019 02:14:04 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihOqY-0004Ne-3S
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 02:13:55 +0000
Received: by mail-oi1-f193.google.com with SMTP id a67so301158oib.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 18:13:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LPBOmy7W/ZFe0ELwwz580Y4hQoxgj9ncwGmvv/HKHek=;
 b=RX9jcD1lBx9h1p6+QbwYinmuyd23dctnwIuePf/79w+s5J9CPJ3FTe7Mksv++wILBP
 ULswTrPabCpmYLunaBY1mQgDxpjtU9beaIKiLTiAx7KN2UpXwHGf3a2hYyqNuMd0Ag4B
 1gtzB7wBTUnsyYdCRy3tnkSq717yGH6CwfCXG8Pp3977u1hTrVUIzAziuMYbfTNQ3NIp
 TXcQ0RTNsCHRJg5jPMAVwvIVbOLbS4aeMbAMAoVeJFpp4v5eWGkk9Eu+y+noeulQBbua
 0Kr1APIn31D9uDshas5sWQyb8Bz9fpJ3YEyBeZMXi62agg4pWm/GxbxePJ6W8bO7QNBV
 hCow==
X-Gm-Message-State: APjAAAXzBRAfIy06iC5xQMrFwngNlz1cyaspQDMqlJyG0bAEyHWnhvYn
 dm/F2PscrhajA94i/7/0ZQ==
X-Google-Smtp-Source: APXvYqz7hA2CoDvvetbOQ4+F/q4I9CRdUWC0eiBMNhIaRXad6ue52NPnIHqnVn/hvXCON7ayOwtNyQ==
X-Received: by 2002:aca:61c4:: with SMTP id v187mr157794oib.8.1576635232618;
 Tue, 17 Dec 2019 18:13:52 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id x16sm252374oto.41.2019.12.17.18.13.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 18:13:52 -0800 (PST)
Date: Tue, 17 Dec 2019 20:13:51 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH] dt-bindings: ata: Convert Allwinner AHCI controller to a
 schema
Message-ID: <20191218021351.GA27803@bogus>
References: <20191213074938.27285-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213074938.27285-1-maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_181354_154341_FEEF0842 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
 Maxime Ripard <mripard@kernel.org>, linux-ide@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, axboe@kernel.dk,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 13 Dec 2019 08:49:38 +0100, Maxime Ripard wrote:
> The Allwinner SoCs have a AHCI controllers that is supported in Linux, with
> a matching Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../devicetree/bindings/ata/ahci-platform.txt | 12 ----
>  .../ata/allwinner,sun4i-a10-ahci.yaml         | 47 +++++++++++++
>  .../ata/allwinner,sun8i-r40-ahci.yaml         | 67 +++++++++++++++++++
>  3 files changed, 114 insertions(+), 12 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/ata/allwinner,sun4i-a10-ahci.yaml
>  create mode 100644 Documentation/devicetree/bindings/ata/allwinner,sun8i-r40-ahci.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
