Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56552E5789
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 26 Oct 2019 02:20:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ua+G8oXuRcAbaLLE53gj+7lNvMGsSp13YgodHh4DDmk=; b=O9pjvSkX1e9ipq
	VJ/KXsLY3pJ922kgiy2QR/bWgttswJs8Dopy7khuioqHQKdMhkLm9cc7TiGMzYrxiPrPr/4eu8+JJ
	rt4rfAYow2Xsl0NtZxSVzIbp4iL2zOqZi80IbMAEZBOVTHyW29x112rZ2P+WuRP3FprvvtFrBSBtL
	U3ubfBmURVho8I/Nov4miw7c28ZZqnovyIT/gBQ48MQPSzLjnG2Jmuf8KYh7NWy8+3ujmridLiPlp
	FcADqnlKF3SVm/PYH0jJ99wtkfqpBhLCYglUJ8kFemfHzJ6ZwcpnUrvQ8mCrciViOu588zsUEcAz3
	pAVM2Y5Gd1YNIx6S5JUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO9oi-0006Tv-2p; Sat, 26 Oct 2019 00:20:28 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO9oW-0006TQ-6w
 for linux-arm-kernel@lists.infradead.org; Sat, 26 Oct 2019 00:20:17 +0000
Received: by mail-oi1-f194.google.com with SMTP id n16so487469oig.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 17:20:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=h/J2B0yYUN6lQ3+j00TFPx6nzTJjHyfDdiEZjRSCAiU=;
 b=SFDlKW3wvvqP2Vk7JtSa9oAcgP7ifOn0hfawOtZRyhlpNqQuSVhf0KIe60dSfpnmRE
 enlZtSQvBkASoNF1CkpVOg9kPPl3IEINda/aRS2t5cscU0A1Gqb8R4GoYTxWMptpcDeH
 +R3XP95gaZo/fnZForAPR7ZseLwAqhKkiOHT1ikPtrsNt24+Mkxc0yq2ZvSD3BamTta6
 VM9tXIaIk3BDI/dvo+XbFrv1UtE61ypxgfzWeuK7ZidR0o1g+89k3d5MO3+xfBUC/BGh
 ptsmscqZF0zHBKXfzUCSJjBefyHx5mY1lPaA/3oOXYPaXCfHFOMCb28RkXmjKv5uZOu7
 LlcQ==
X-Gm-Message-State: APjAAAWAPhq3DVwOyWFvYC6tm819mY/8J84NrJBpihLOxxHhhhqcCS3w
 /IpdK9x+wY9ESc2PnNDwkg==
X-Google-Smtp-Source: APXvYqykZgHOYWE2/IgupIMeUG1s5/ApoBdLr8/q2JSP4zWGsxaK/+y42vogYbYJSsUjExGJWvAz+g==
X-Received: by 2002:aca:3846:: with SMTP id f67mr5267965oia.71.1572049215495; 
 Fri, 25 Oct 2019 17:20:15 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t30sm1285564otj.40.2019.10.25.17.20.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 17:20:14 -0700 (PDT)
Date: Fri, 25 Oct 2019 19:20:14 -0500
From: Rob Herring <robh@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH v2 2/4] dt-bindings: clock: Add r8a77961 CPG Core Clock
 Definitions
Message-ID: <20191026002014.GA11459@bogus>
References: <20191023122941.12342-1-geert+renesas@glider.be>
 <20191023122941.12342-3-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023122941.12342-3-geert+renesas@glider.be>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_172016_252165_93F92A6F 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
 Geert Uytterhoeven <geert+renesas@glider.be>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-renesas-soc@vger.kernel.org,
 Eugeniu Rosca <erosca@de.adit-jv.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 23 Oct 2019 14:29:39 +0200, Geert Uytterhoeven wrote:
> Add all Clock Pulse Generator Core Clock Outputs for the Renesas R-Car
> M3-W+ (R8A77961) SoC, as listed in Table 8.2b ("List of Clocks [R-Car
> M3-W/R-Car M3-W+]") of the R-Car Series, 3rd Generation Hardware User's
> Manual (Rev. 2.00, Jul. 31, 2019).  A gap is added for CSIREF, to
> preserve compatibility with the definitions for R-Car M3-W (R8A77960).
> 
> Note that internal CPG clocks (S0, S1, S2, S3, SDSRC, SSPSRC, and POST2)
> are not included, as they are used as internal clock sources only, and
> never referenced from DT.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
> v2:
>   - Add Reviewed-by.
> ---
>  include/dt-bindings/clock/r8a77961-cpg-mssr.h | 65 +++++++++++++++++++
>  1 file changed, 65 insertions(+)
>  create mode 100644 include/dt-bindings/clock/r8a77961-cpg-mssr.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
