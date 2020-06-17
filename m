Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80EED1FD846
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 00:05:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n5k2j8kBcDJ4pRgkkT8wPFyrGw5z9CDAegNlBVSlO8M=; b=dceiQ8IzWVbifL
	qjmq/FxtqkKMz/w0TxDx34fndgV+eBbiqzWOBlWGFyvilghD9qpyFaeMEocBIW7fre3vidmmNdnwq
	jxvozQW7Su+wMjvaHYRVKHHi4XDKeBjZA/gqIt7WQgV3q49NgVYiDFaUF1kNYpW9EeooAPA2bUY38
	kseofFPGPKJWYGGYGCnYwQ0rSWUzmcJqX6eL0AbkO2dBNK11Gj0DgR/Jn/eu//sY8EG/n1alJKtYz
	Uo14bff2ek8JlyeU3JYmjQEx2IAPT1Aj3v+zsWGdhElF13IUlUK23P2UM/IL8bbpqk+0Jt4IypF4P
	GBkQXGhTm5t6SIrX+OYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlgBl-0006qW-WD; Wed, 17 Jun 2020 22:05:46 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlgBW-0006p7-F1
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 22:05:31 +0000
Received: by mail-io1-f65.google.com with SMTP id i25so4839118iog.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 15:05:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=bIUyJbST3ILF2B5W5XHarSpDJ5TWO+TqPDggu/ATjbE=;
 b=N6J0fb6OLwJ14Y5kKpvwCGXvFn2pUgpKd+B60I43ghIz2z2JLdQIvd2nHSVkZ/Nizn
 K0KgchMHumrgZLWhqYzf97+hEVEQhj1CTjDcBb6ugvE+fYDVNq6AZKc72IFPKORazFi3
 ktgs+CakKrVtyAY8rpxnP0FZlbNNbZa2N/ILe+uddkOvQ3j6taQ7bFPEOBzkoc/Tkxmj
 j/C2MrFx07sHt+/bDeghgqQ2cf2aa6xz2fSoqC+VwCF9FMYbVLYvNb4dhkiconcamOKj
 Uf6h1VvUPVA22eZ68e41OZ2byhF/Qq32S/2YGMycIK/JD5rz0oMfwtyV3L0Pj2PyhORD
 T1+w==
X-Gm-Message-State: AOAM531z7br8D7mpcXVIbJDKOOmDN4ZTqBY4dmTtQkvdzwk3G1M1jUkx
 SM8QxDq/zQI5S7MdogmH9w==
X-Google-Smtp-Source: ABdhPJy+l4gL0/jpC1lHY9VpNr7LIfu5zc9ll9NHo0F7QdjgaK+SdSHKI5mgaI6ATemem9fRGF4/Iw==
X-Received: by 2002:a02:3402:: with SMTP id x2mr1362929jae.11.1592431526609;
 Wed, 17 Jun 2020 15:05:26 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id d11sm636626iod.11.2020.06.17.15.05.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 15:05:26 -0700 (PDT)
Received: (nullmailer pid 2913414 invoked by uid 1000);
 Wed, 17 Jun 2020 22:05:24 -0000
Date: Wed, 17 Jun 2020 16:05:24 -0600
From: Rob Herring <robh@kernel.org>
To: Jonathan Marek <jonathan@marek.ca>
Subject: Re: [PATCH v2 1/8] dt-bindings: arm-smmu: Add sm8150 and sm8250
 compatible strings
Message-ID: <20200617220524.GA2913365@bogus>
References: <20200609194030.17756-1-jonathan@marek.ca>
 <20200609194030.17756-2-jonathan@marek.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609194030.17756-2-jonathan@marek.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_150530_501296_304D043B 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, open list <linux-kernel@vger.kernel.org>,
 "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 Will Deacon <will@kernel.org>,
 "moderated list:ARM SMMU DRIVERS" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 09 Jun 2020 15:40:19 -0400, Jonathan Marek wrote:
> Add compatible strings for sm8150 and sm8250 iommus to documentation.
> 
> Signed-off-by: Jonathan Marek <jonathan@marek.ca>
> ---
>  Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
