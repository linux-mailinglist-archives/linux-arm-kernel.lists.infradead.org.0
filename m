Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5907E12FEE2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 23:34:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/bSKgtnJPHQARQZ5P+oaVOI9AAugcz2BXbw/Nq2raPU=; b=I08H03wtTQx9k+
	Aa4rObk5USiwBHO00ND7gGXaBDEntTQgvw3tXaIqKQGbYF3XDQ2un056aIKPZxbXbOuubv2sIf5kb
	TAay8bkl5DDHM0pdBCDaQQkpy1VAkjHQlVMruM0cWw+gYv4oE1ZuNWqO6Wpril6CC0Hp24bJw/dND
	gwhyGnZe84EWhja+UtS9cEdHLMdt2HZn0EEG/g5GwTh/nUW+6sUtFtd6kLYki0CmN+l4sB7Y6oPAA
	kmZFfJtnmb8z4Cl/y5RUcje1KCwdMPZndYg+1RB7T6skkmWQDi+7aNTGOjRvocusHyu+MlTon8/V+
	GKtze2oBuBpgIQfIh81g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inVWb-00048A-3e; Fri, 03 Jan 2020 22:34:33 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inVWT-00047S-Vh
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 22:34:27 +0000
Received: by mail-il1-f195.google.com with SMTP id f5so37864718ilq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 14:34:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Z/2Xg5vRSUumZDtJtIhcj+vGbHinC6E/xmYbVuQQYS8=;
 b=dhEgtdGK//n1g5xIaLKO8r4amGTHMH3Lg+K5sMC5xNZlYkTkRrljd8Zu00p7cC4GU6
 me+tRTRANN74UWDl2B9XHD6x9ADOn8UhoNB+4yWMOZc/t8vqZlWjD/I5mZoMGJzrlugh
 V/NK/Bw8F7U8Bw5NENQWBofhvHZRWiRI6OASqO+6upJqnslgtn1xympV3UO0TRB2XBxF
 Hemxwq76MDZmEeTDHIS4/C4s4Zm5xZ+qTJMPngWQbW3eeKhxLX3q02g2tFbVJ7iboify
 hZUC9zX1/JqAaumZdEumTVO30T7U9/l8/sPm5qjIF5rfiaGJ8wChS3rFHEnMbTXNaU8i
 I3og==
X-Gm-Message-State: APjAAAWRyAJ4VM0RcqULcCNomK9k+xDY5DBmwh7tCThVN40TOpW4wiOm
 X1wv0Km+eng3RikMoKJR/iohsP8=
X-Google-Smtp-Source: APXvYqz5SK6FmLZ3X1RuU2Bv07Oy/kZV3/LCZEh3uFmTsLJf9VYcXM+7ftiwGpfw73FIHjO/IUI7Qg==
X-Received: by 2002:a92:3b98:: with SMTP id n24mr56506767ilh.108.1578090864863; 
 Fri, 03 Jan 2020 14:34:24 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id s10sm15251232iop.36.2020.01.03.14.34.22
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 14:34:23 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2219a5
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Fri, 03 Jan 2020 15:34:21 -0700
Date: Fri, 3 Jan 2020 15:34:21 -0700
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v5 13/14] dt-bindings: phy: Document WIZ (SERDES wrapper)
 bindings
Message-ID: <20200103223421.GA9017@bogus>
References: <20191216095712.13266-14-kishon@ti.com>
 <20200102095631.1165-1-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200102095631.1165-1-kishon@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_143426_016247_F46591B2 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jyri Sarha <jsarha@ti.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Swapnil Kashinath Jakhade <sjakhade@cadence.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2 Jan 2020 15:26:31 +0530, Kishon Vijay Abraham I wrote:
> Add DT binding documentation for WIZ (SERDES wrapper). WIZ is *NOT* a
> PHY but a wrapper used to configure some of the input signals to the
> SERDES. It is used with both Sierra(16G) and Torrent(10G) serdes.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> [jsarha@ti.com: Add separate compatible for Sierra(16G) and Torrent(10G)
>  SERDES]
> Signed-off-by: Jyri Sarha <jsarha@ti.com>
> ---
> Changes from v4:
> *) Fixed the indentation as suggested by Rob v4
> 
>  .../bindings/phy/ti,phy-j721e-wiz.yaml        | 204 ++++++++++++++++++
>  1 file changed, 204 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
