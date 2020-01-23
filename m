Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A17C146B99
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 15:44:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UyiF3HPDT/z6IBt4nsuHEJr4wIYQd6GrxZge0fqN6HI=; b=fk7Fh2AJnBr4jc
	1jmw9zYpLDuQ7oSgbegw2PdmnvMrL3hmkD75upQCEcab4yuz/MQgJcQvi+CaK5vREMn7mp+Q5v70c
	3HLiM6bGotzyY2AElVjtINy98/wZR1MKaWm0dKq7WDv7z2BWSfbVdD27fNyoFmEauX080R9r5vADz
	sTsqxNlI/xNwPFTRmKfSi84jTKdMI1pnb0ItYKtDqh2a9bYqQaNXiQXYT1FgWR8tFmzQ+FJIgADQg
	05xvPRBFWjAFJ8+AdsBFFaHj2xzVzvVT9y7riwwiANzTBJ3WVzcyD+MhkV/yLh+rXxJAIa9slmD7C
	ngt59X9+b9PFCSytNvgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iudiZ-0006BN-0S; Thu, 23 Jan 2020 14:44:23 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iudiO-0006Ar-Qn
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 14:44:13 +0000
Received: by mail-ot1-f66.google.com with SMTP id r9so2886791otp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 Jan 2020 06:44:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=h4oHzrFYKqp+VGW1bsUiQD/W3J5scTqNZ8AL4zNgxc0=;
 b=p174Zb9U+sBh7tVeUNXve115OvHrhc020mNmupfd7PLs/Sl07Sj2NapghNrLLS2ph8
 JpAyHNqI/ddoa3WkCmdvBFl83QYenJy4Eh0opphouAMkIRqHQPE/vIeC6/sMypxECahT
 LqYFxFFdy9FvKi6TgcZk3kgw+TFTsZXSaP1OSUbejLYNoWA4ojQ25fQpItReAqpJ7FNg
 JzLEfmSjxfpDHOnMMX5blikcOeMkpPlhrQUsG5iDqzhB6gXd8Qma1H8P9PA+JrHrSHgG
 V8hYitsGfnwSJTsd2iBZWylH95C4LL6cwvIyFBHr9d0SrsSN65Y7cDvkGBL2r6ZBjrdi
 1rUQ==
X-Gm-Message-State: APjAAAVfrw+j5MZtB+L64SVTfED0OUaezOWUxIRTEvgUt2yNaDT+YaXS
 2moVwcpZm9JYrneDnisxFg==
X-Google-Smtp-Source: APXvYqznkYyQ82Iaq8fFB0N1PdBN29CchqSiaNIZ4ovIW3gdQxYo3Z67i87qruav9akbSEbbJRCETA==
X-Received: by 2002:a05:6830:1d91:: with SMTP id
 y17mr11150667oti.276.1579790652164; 
 Thu, 23 Jan 2020 06:44:12 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p24sm851505oth.28.2020.01.23.06.44.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jan 2020 06:44:11 -0800 (PST)
Received: (nullmailer pid 13653 invoked by uid 1000);
 Thu, 23 Jan 2020 14:44:11 -0000
Date: Thu, 23 Jan 2020 08:44:11 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 1/3] dt-bindings: iommu: Add Allwinner H6 IOMMU bindings
Message-ID: <20200123144411.GA13589@bogus>
References: <cover.b2a9e1507135d81e726fcbb65137665a7f0ab74f.1579696927.git-series.maxime@cerno.tech>
 <3022a8d9d60f35db072b39313ec46708a567a9c5.1579696927.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3022a8d9d60f35db072b39313ec46708a567a9c5.1579696927.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_064412_875099_67F4076E 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime@cerno.tech>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 22 Jan 2020 13:44:07 +0100, Maxime Ripard wrote:
> The Allwinner H6 has introduced an IOMMU. Let's add a device tree binding
> for it.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml | 61 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 61 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iommu/allwinner,sun50i-h6-iommu.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
