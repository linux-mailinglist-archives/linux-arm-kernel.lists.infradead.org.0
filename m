Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A17F3123B45
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 01:02:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iNO088h3o/xdmESUgZiRTHSwHVXScmg4wDjuZfJNcAo=; b=UoUEDMlaHruGba
	JINgVjrzpJKOml50nzLLw/VOeuSvqWjYvS3Hfk8ohndPn9uzxsXUXVLmMJDRWknC1MKcbGk24YzvQ
	Ea0aHPV2dYA6+hLoxepokm/CZxFvrEUtlHLOVlVpnuSgAEuivbLXNCyODIaO5sGhnHt8g8Ir7gask
	tqSmL6ApAvIf/lw6UATqOQ2Twyizzb0ZwCz79t+76gjVXxVcz9CiaS7GbrwhLLVheNmeL9oWNZifQ
	2+bq57dRDWxLZKufIg7bZVYYVghvKQvohDbFvYvl8GXUdMwOxvIEayKwsj7lXR7ER2P02X4WuGmRh
	dKDsV2h/owOC18Ob2bMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihMmz-0000iG-Q9; Wed, 18 Dec 2019 00:02:05 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihMmi-0000c5-Hk
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 00:01:49 +0000
Received: by mail-oi1-f193.google.com with SMTP id j22so121062oij.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 16:01:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JP0u5snGp+xc8yKUTmrKXjEUcHiiNAHT0AftIoZKcgY=;
 b=OkukrdSdEjYuxPU7vbXHj69G3bKU4ROL8433/I6UNKNTAs18dO7VrNr/VoYSaF4N+l
 5qszmjRKzDrR73iYSWXiAXdCMYkH2xCiQDP06YmPbLLEi00R/p9hjrwkpraHyWgmLD6l
 pVnCJ668V4Un5ArNAc3DAXFjQ41e0M2eqDluKC9HHLMAZC2wj94giK6MMXGA2uHnpQ1y
 QNieTtCqcVgde8g0HgA3R9Bk6HSVxaivrt4Uv7qgpy1h9yO2T1t9ZdjMotjNsKTrxiNa
 lFn9kD9mg9csq5yrj1OPk2mwhP82lHElt1iNrlOQfIkmNK0vx6vPs+8jsaw12TxgVONN
 f5Cw==
X-Gm-Message-State: APjAAAU7zG7zNpbxSNMMKiRZQPidfgdS1MO0Ew+tWtlro/eaJVkyABVi
 efMGg5Bh7FMqKgEuqOMFgw==
X-Google-Smtp-Source: APXvYqwuKoimb/fkC26Ulk74P68DdyeLLteEpSMqe8rqs1CwILHTcp7X1D54Jd94iGGt4cUdrtCBCg==
X-Received: by 2002:aca:bb08:: with SMTP id l8mr3144897oif.47.1576627307437;
 Tue, 17 Dec 2019 16:01:47 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m11sm169161oie.20.2019.12.17.16.01.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 16:01:46 -0800 (PST)
Date: Tue, 17 Dec 2019 18:01:46 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH 3/6] dt-bindings: dma: Convert stm32 DMAMUX bindings to
 json-schema
Message-ID: <20191218000146.GA24153@bogus>
References: <20191217092201.20022-1-benjamin.gaignard@st.com>
 <20191217092201.20022-4-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217092201.20022-4-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_160148_612604_482A6F86 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, vkoul@kernel.org, robh+dt@kernel.org,
 mcoquelin.stm32@gmail.com, dmaengine@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 17 Dec 2019 10:21:58 +0100, Benjamin Gaignard wrote:
> Convert the STM32 DMAMUX binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  .../devicetree/bindings/dma/st,stm32-dmamux.yaml   | 52 ++++++++++++++
>  .../devicetree/bindings/dma/stm32-dmamux.txt       | 84 ----------------------
>  2 files changed, 52 insertions(+), 84 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/dma/st,stm32-dmamux.yaml
>  delete mode 100644 Documentation/devicetree/bindings/dma/stm32-dmamux.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
