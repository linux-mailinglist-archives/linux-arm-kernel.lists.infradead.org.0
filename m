Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 748051054EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 15:58:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zmspjV9PmjavBKhqzisvfUh/L0MA9wD2Jto6q+Ojoak=; b=qE2+U/ZGfTlLSg
	QWpHXPbIC8Eg62HSWNuOkQdYIUoXOK2B+DTwCxai6DjbAKdr/AvqpLtxvOq5zGqjtvnEAcKwiQWyl
	b6vwQX1Rh5H7PxChmD/2xyhiPKXrlZWp2kPsv7YR7ZQg4o4ay+Atw0FMPhcjotpbyJN1K+E9KkH2F
	Wn2yC6n61lFN+jDCeg32np1YuCxV7o1eFNxgH5AIxnj8Vl665xpmtCwMXfpRvhmvuUgEmgtISAFia
	cEyEWU0/H7rsU6ugxWkRmGvf0dOJyTR35E8Py0u+hBKff7zMEFZ0s7+ICzkAznsTFf1pPOyV8UQiz
	wdKrWJnv4ClWBwfO3a8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXnug-0002Xq-Oe; Thu, 21 Nov 2019 14:58:30 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXnuX-0002Wy-3M
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 14:58:22 +0000
Received: by mail-ot1-f66.google.com with SMTP id m15so3153454otq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 06:58:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7EIsUYwJkB766iLScM9zDv7o8KxiAB6USuY8ETmVybU=;
 b=h3IjWxSCXZuNZWotbGYfYvvoEEem0PJgiEXETpfseLRJtGKQjG7lpMNviwIW3avFZo
 P2Ji7U0f2fRYjWwZw24yg5/dpYqBCS8u0B6uC5mswQcotIIQZ/dLGo6Yli+OkEpvntR3
 9SaN/rlwPItMyyh+FjP+qgsB6c61I0047MQVEfUTsMKytcu/6l/T563ogTgjHQDaNUvD
 xdFXUxtXvlCeybB3GYsMJyZi4j7reHtSoG7LZTfAlvR4pPpA+62xPC5vIS7de2AGbd6h
 xYjlrKAdNRgic5QDocRjOxkEvq4BONIuxn2rFpL4AvTrnNq9kqtJJGFHTZHjGSvS+L8P
 Ineg==
X-Gm-Message-State: APjAAAX75y78iC/yzD+SVZLPhFIWM7NeXWlfyaipTMcDg3UQLPpa2HaG
 CFpQ+6mYjK2x3WEE9GLpzw==
X-Google-Smtp-Source: APXvYqzCaXK7A81tARs+0Mx+z8Ukzrqn/rzZHEMewuSJwm726s/GHLxW8FN20eTgJW6E10YMzqCV4g==
X-Received: by 2002:a9d:7399:: with SMTP id j25mr7203672otk.155.1574348296793; 
 Thu, 21 Nov 2019 06:58:16 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n5sm957812oie.16.2019.11.21.06.58.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 06:58:15 -0800 (PST)
Date: Thu, 21 Nov 2019 08:58:15 -0600
From: Rob Herring <robh@kernel.org>
To: Arnaud Pouliquen <arnaud.pouliquen@st.com>
Subject: Re: [PATCH v2] dt-bindings: remoteproc: convert stm32-rproc to
 json-schema
Message-ID: <20191121145815.GA4284@bogus>
References: <20191121095225.26775-1-arnaud.pouliquen@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121095225.26775-1-arnaud.pouliquen@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_065821_140752_1C67CCD9 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, linux-kernel@vger.kernel.org,
 Fabien Dessenne <fabien.dessenne@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 21 Nov 2019 10:52:25 +0100, Arnaud Pouliquen wrote:
> Convert the STM32 remoteproc bindings to DT schema format using
> json-schema
> 
> Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
> ---
>  .../bindings/remoteproc/st,stm32-rproc.yaml   | 131 ++++++++++++++++++
>  .../bindings/remoteproc/stm32-rproc.txt       |  63 ---------
>  2 files changed, 131 insertions(+), 63 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/remoteproc/st,stm32-rproc.yaml
>  delete mode 100644 Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
