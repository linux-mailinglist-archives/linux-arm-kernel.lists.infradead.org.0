Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B411042BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 19:00:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGjqZpbb2L4U15/+LnOO2KgHleCllbUB45vbiOptFZg=; b=SovukhLO6AprMY
	oej2DPsylHU2JLegJDaGBPGUhAePnY9WkQirnWIFggpbWK//c5paUTFQ9FBbZGkOxvdRAHA4hDeVp
	4roCSy6Fr2D2s4vMy+djiGusyWpi09GWkT8L2HkhYAJLkcdwj90kZhKYiKxJi98jigMcn/bVaJNjP
	stm4IDkuexRtRghseGLWECb1HMbQ1xZ+zNWu/My0lCAk2RFYlpmUfMjcbC9zxzMS/8S0W0WYpJ4BP
	5h+E3y0KlOx8KWfNO+zODb2fUily506MN9qinlUHyZszfF1hnooA8psmM0POiPlQY7HGCmdBlVa8P
	pNlxa3PmX+Nqb+gzXb9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXUH9-0006Dv-In; Wed, 20 Nov 2019 18:00:23 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXUGr-0005VC-5i
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 18:00:06 +0000
Received: by mail-oi1-f195.google.com with SMTP id o12so562095oic.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 10:00:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=x8ePvXP6yBjIswFN0sdVge4OwEb8RGh4Ff5OcAFkAGM=;
 b=KO46qrQIs+Pr4FdEItu6qMi5QIP5EwYimZdhOOY/ERJIoYoO+NYMw0myAg1ccJQLj7
 5iKS9q1kfdclLcWJBAzK4pK0jaDnKzHYCINY9gOIh6xNNdpLu0/2NC9Em7+XBtUQcsL7
 bIxUgmyjUzg0DwhFJ4QhWlhI2xpLRn4wxio1mQ5SPEgMrE7WYUo9eXGjOlZu+j30ac3F
 jsjMvGtWf+nxXhKtIIO2n5ZzLPbnYYR5P3ZuNC3aQju2Z7XD/bAvC1JBdFY/r4Eb3JE6
 rrgcRWjBnk0eUWPvuNVIsciKDf2TvMncm5Yo22nqzFjC96uEg2CgyOWy3K/0yWyFWPQV
 GUhw==
X-Gm-Message-State: APjAAAXPXyvqAFM7dlO1jAVcWC7z2XfObTT3A3EzgDE/JoImGTmqOllD
 d8E4bRtOD9ZQpofg/EPizQ==
X-Google-Smtp-Source: APXvYqzDJfTkwXh/5EwhxyVPxH0tUWubEzVqDD9sGhy5+DHuWlRO4ADPw/t8mbBv7JzFCN3xOHULzg==
X-Received: by 2002:a54:4407:: with SMTP id k7mr4009997oiw.129.1574272802323; 
 Wed, 20 Nov 2019 10:00:02 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m20sm5915810otr.47.2019.11.20.10.00.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 10:00:01 -0800 (PST)
Date: Wed, 20 Nov 2019 12:00:01 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH] dt-bindings: rng: Convert stm32 RNG bindings to
 json-schema
Message-ID: <20191120180001.GA9839@bogus>
References: <20191115100854.17938-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115100854.17938-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_100005_489366_AFF43715 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, lionel.debieve@st.com, alexandre.torgue@st.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, mpm@selenic.com,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 herbert@gondor.apana.org.au
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 15 Nov 2019 11:08:54 +0100, Benjamin Gaignard wrote:
> Convert the STM32 RNG binding to DT schema format using json-schema
> Remove interrupt from the json-schema because it is not used by the driver.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  .../devicetree/bindings/rng/st,stm32-rng.txt       | 25 -----------
>  .../devicetree/bindings/rng/st,stm32-rng.yaml      | 48 ++++++++++++++++++++++
>  2 files changed, 48 insertions(+), 25 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/rng/st,stm32-rng.txt
>  create mode 100644 Documentation/devicetree/bindings/rng/st,stm32-rng.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
