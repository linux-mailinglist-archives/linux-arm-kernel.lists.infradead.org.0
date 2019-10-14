Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CADD6828
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 19:16:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cKEKccZmSsh3YHcDp4XShCnIOjktYIWaNgGjvNFSVtM=; b=krddIV4z1JXFuM
	SJ1M3li8Uk05dy4HhyDNTvmd7nmTZZFddWwQAEgIpkUAqOw88XP9010gfoFooX9kpuNNH7MWaUCJy
	SxaTlCTHJ1JnIykYJPUEDBvN2iVqVx6TgZJZqYZFMu1FhM1qEF9K891A46NFkG2SqpYNMTKldne4Z
	U+f6c5uN0N0c5GnC1aDr+0CwJz6nuBKMoSDqgOd8q5MmAfy+4tmpEF0zGr/TiJ63pAxWRAQBOhEAn
	pn4r8ocnKSRp+ccTqWepGFHlIWwV14lAb6n+dLopzqts0hv0vC1UnkaxThgA+PpSzPk2WzcIBO4bF
	DjfHJ7q5NrNLSvIsetAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK3xn-0001SM-62; Mon, 14 Oct 2019 17:16:55 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK3xf-0001Rv-8H
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 17:16:48 +0000
Received: by mail-oi1-f195.google.com with SMTP id i16so14392890oie.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 10:16:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=a8hIcdl2e+um++/nUAcgtky3A53BnPYT6tM1T8gzirE=;
 b=EJm04Lf5r8wFPfWTyuMwIHnP/nkxFR/aCfifX48erywIGD3PuQnlhF268A3j9qMC63
 9dmBkQYV8VwPw2nOAOZwAkuvfph+MIneP/6YYoxDbzRjXlBronzrM+7kZK1XwOuIIxNY
 2TzNV7py8vM39uNDlh6/2PpBxendwbqVnRcCRYa3Oaw3iAmTbQUzZ1IMacxz4SUpjHnP
 OIkc7GCgujJrz0B2As9YWFHXpLVifQYT87T9PKo/eH31guu5NucBMiCvxmtoRAfZnbI7
 dTwsax6tcc4GYmK72+G9u06QMEZsnOw7tBtj3BrmDBXBlIbuWVSbmDlZ5syp7FFocG7X
 Dazg==
X-Gm-Message-State: APjAAAV9wltW69K/p1j6pl+0tnvryF+L06HdLUCcdiguG6x2s18A/6IV
 hvQ/IQ/7F4BUJorHVzkTVw==
X-Google-Smtp-Source: APXvYqzQz9wZdnGUi/ME0QUo9eS9TqcibXX1bHdajNQOR2xvzskepx0v/CFKXkThQgariekycHrvyQ==
X-Received: by 2002:aca:b841:: with SMTP id i62mr24164992oif.123.1571073405919; 
 Mon, 14 Oct 2019 10:16:45 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z185sm5729184oia.50.2019.10.14.10.16.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 10:16:45 -0700 (PDT)
Date: Mon, 14 Oct 2019 12:16:44 -0500
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v3] dt-bindings: hwlock: Convert stm32 hwspinlock
 bindings to json-schema
Message-ID: <20191014171644.GA4140@bogus>
References: <20191014091756.23763-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014091756.23763-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_101647_289317_4D655041 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: ohad@wizery.com, mark.rutland@arm.com, alexandre.torgue@st.com,
 devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 14 Oct 2019 11:17:56 +0200, Benjamin Gaignard wrote:
> Convert the STM32 hwspinlock binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
> change in v3:
> - use (GPL-2.0-only OR BSD-2-Clause)
> 
> change in v2:
> - use BSD-2-Clause license
> - use const for #hwlock-cells
> - add additionalProperties: false
> 
>  .../bindings/hwlock/st,stm32-hwspinlock.txt        | 23 ----------
>  .../bindings/hwlock/st,stm32-hwspinlock.yaml       | 50 ++++++++++++++++++++++
>  2 files changed, 50 insertions(+), 23 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/hwlock/st,stm32-hwspinlock.txt
>  create mode 100644 Documentation/devicetree/bindings/hwlock/st,stm32-hwspinlock.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
