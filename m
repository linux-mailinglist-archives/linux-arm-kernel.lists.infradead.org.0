Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B04C770C6A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 00:11:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t5W8JZ/AmhefOOFDA9I1z+fSTtyooM04bB8lj3pzF9c=; b=riIFLzbuX8DW7E
	QD4PGV5c6xnMh4N4HtVOeWrSpVqoFk7bHi0gcV2977LTCKtTHZsrsU2U3a+9txS/Z18xE6h25URKI
	20Nb1CUBmnsC1Sxoo6HxPaRreP/QaFxgRz6sjXDuRPQ/olIKldzGoXoUlySV+liqegOI/aS6MDDDh
	jRAate6xhGc9K8C3bb46fOl7AfhMteut103yJCD/8RCHnX3ZfXY+akNSiEcKO9D6jWFGh0xz+V/Ep
	yV70PS6jcaoDYJWUrXfxbeYNIqpWK21ZXFVlCZgwt8gPNYZbELmJmMZNsc9hPcjlooQreB0wJFi4K
	Q7kGhDyhd0emw7NfpT8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpgXF-0005jG-La; Mon, 22 Jul 2019 22:11:57 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpgW7-0005Z0-HH; Mon, 22 Jul 2019 22:10:49 +0000
Received: by mail-io1-f66.google.com with SMTP id g20so77466397ioc.12;
 Mon, 22 Jul 2019 15:10:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=so3TguXhHjajKSvaOLSucOk7rXy936Gzk4d2QA02XtA=;
 b=aYiOm07Aje8ejnRiuunf4GtNEdwY6bSmqtOxqsvPLO+W2pX5KLo6Fqp0jk8P2GEHrn
 eYjlLCatjMuNsfxfCYjvFt4On5IlrZd8D/aaU5IaO4DX44Nd/bwJR5AC/egATdZYZoLA
 UZr86ITuqzO2jA2hsssJgwpaWeyN4UwqIB4azJKBwk1va3XAyHjOCQ89uRfRlWYnSG4R
 Fixdn0kMgDBRMPOSFRVUQ8TDV+TrlatMp9Y0j2J6XFZgAj0wHPbJGiApSyxJ2ctDgLTX
 SFsFcIeytNYpYbA11CViNwEks4K2NmqoveiCLGeVHeEY7ukjNBezr8CrD/Wg9gLrFeZ6
 a/7A==
X-Gm-Message-State: APjAAAV8iw4ZAK6XJ1nBTOJxoMG6/nZvai75D1CcyD3uiSvsvI79VPBf
 0OOdr0gAtn0RXXQLi30CHw==
X-Google-Smtp-Source: APXvYqwhN7RA27SVa6mIjcHdSIUhlwnMBkhE2+F2OczdEmCOQCiFU41dl37RKc0vjcv14UOGyFPR+g==
X-Received: by 2002:a5d:8890:: with SMTP id d16mr20374962ioo.274.1563833446531; 
 Mon, 22 Jul 2019 15:10:46 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id s2sm29616314ioj.8.2019.07.22.15.10.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 15:10:45 -0700 (PDT)
Date: Mon, 22 Jul 2019 16:10:45 -0600
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [RFC 05/11] dt-bindings: soc: amlogic: clk-measure: Add SM1
 compatible
Message-ID: <20190722221045.GA30948@bogus>
References: <20190701104705.18271-1-narmstrong@baylibre.com>
 <20190701104705.18271-6-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190701104705.18271-6-narmstrong@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_151047_749752_FE9D608F 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  1 Jul 2019 12:46:59 +0200, Neil Armstrong wrote:
> Add the Amlogic SM1 Compatible for the clk-measurer IP.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  Documentation/devicetree/bindings/soc/amlogic/clk-measure.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
