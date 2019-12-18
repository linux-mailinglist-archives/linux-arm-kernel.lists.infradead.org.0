Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 477DB125365
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 21:24:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6F/F829hSVtKiTnHbJabxThqikcUWAuy/0da5CorCoM=; b=aYVv4DFNzvAHCT
	qtWFRVITW9yg/jF0Dn4hiLkUOoYXocy9aBtJV8749kC/F2Qweu7IDaj1WT54PwpAQvGahVAUS4MvL
	YfTmE3V1ZWvMrSfZkbms7+uz7c8ApowlB70ByTIZd713ZvyyqvEm0+fTee58RJKkTMeyQxSdpnbur
	wyF3cAixiE1kOlezSz1wKr3cYjtYvvfZoSgNyoJKdAWLJfIXaH9IrOCJfCY4F3SokaSBLmMEAJQdj
	PvQ+5YLyjHc71B+rCsXLWrFvO8F18o6dG64GiFjuYyHkehXaG79mcEFq6mSMv46bTz/6n+Pg0fOr1
	eHcizE4k+IF6rkeRvHlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihfrR-0005HV-TO; Wed, 18 Dec 2019 20:23:57 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihfrI-0005Gk-0A
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 20:23:49 +0000
Received: by mail-ot1-f66.google.com with SMTP id r27so3983553otc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 12:23:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=V4M27G+pEl3yUJbtQ0vcjxtkFqVokmfh8l26CP8uQpc=;
 b=bbFPTJ1FX/eZ9cp1Nq6gUyr+0VSfHPWMJRPN+8dMsixyGJBo8eHtXxwuFA6EjoldmB
 3uNbR3kva5qs7VaKwAMCgcwtkjkFi1gvUcY0dd11YS0BpUBrxJR4jlXY4EjPLBVmS/8m
 1FwXkyMOzysuPnbRQAjshTdpzeHL3HBK+HlsOpISq2VJHETHcwd+LHpJ49yVgFIzAsY6
 9sz+EkDsUIdVyC6hPhFFzIkWaFlKeMXqvpEeErYmuunodyF/jNV8/KIg9d7q9xXZoopI
 yHXHZ0EqF6RFLykjH4TKvdyUk/B82Vku/Hvny26fO6n2lZNT32RDq1IwPLECqwXVkBm/
 QT8A==
X-Gm-Message-State: APjAAAVdRdSTvcbgEqOO7ofcitNyBlS7Rofydrt3norevh+i5VQMA3qO
 lWvDKoWJzdhJgwmLUUyGMXrhsxQ=
X-Google-Smtp-Source: APXvYqwWVSGcbERyxqe72y3zKoDlTj6uKQZX3SkE5ooMSuV5NR5p4D7vbxRzK7qbzq59I91oDVnICQ==
X-Received: by 2002:a9d:7757:: with SMTP id t23mr4742036otl.315.1576700626882; 
 Wed, 18 Dec 2019 12:23:46 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 4sm1221723otu.0.2019.12.18.12.23.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 12:23:46 -0800 (PST)
Date: Wed, 18 Dec 2019 14:23:45 -0600
From: Rob Herring <robh@kernel.org>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: arm: at91: Document Kizboxmini and
 Smartkiz boards binding
Message-ID: <20191218202345.GA22591@bogus>
References: <20191209091339.32593-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209091339.32593-1-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_122348_040209_26746110 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 09, 2019 at 10:13:38AM +0100, Kamel Bouhara wrote:
> Document devicetree's bindings for the Overkiz's Kizbox Mini and
> Smartkiz boards, based on a SAM9G25 Atmel SoC.
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
> Changes in v2
> =============
> 	- Added Kizboxmini Base board documentation
> 	- Merged Smartkiz documentation as it is also a sam9g25 based
> 	board
> 
> Changes in v3
> =============
> 	- Made a single items list with all the sam9g25 based boards and
> 	put description into a comment.
> 	- Fixed duplicated item in enum list and checked with 'make
> 	dt_binding_check'
> 
> Changes in v4
> =============
> 	- Fix missing "-" before items list
> 
> Changes in v5
> =============
> 	- s/at91-kizboxmini_common.dtsi/at91-kizboxmini-common.dtsi/
> ---
>  Documentation/devicetree/bindings/arm/atmel-at91.yaml | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> index 6dd8be401673..8d50915330e8 100644
> --- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> +++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
> @@ -35,6 +35,16 @@ properties:
>                - atmel,at91sam9x60
>            - const: atmel,at91sam9
> 
> +      - items:
> +          - enum:
> +                - overkiz,kizboxmini-base # Overkiz kizbox Mini Base Board
> +                - overkiz,kizboxmini-mb   # Overkiz kizbox Mini Mother Board
> +                - overkiz,kizboxmini-rd   # Overkiz kizbox Mini RailDIN
> +                - overkiz,smartkiz        # Overkiz SmartKiz Board

Should be indented 2 fewer spaces. Otherwise,

Reviewed-by: Rob Herring <robh@kernel.org>

> +          - const: atmel,at91sam9g25
> +          - const: atmel,at91sam9x5
> +          - const: atmel,at91sam9
> +
>        - items:
>            - enum:
>                - atmel,at91sam9g15
> --
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
