Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADC2F0D0F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 04:29:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PBeukumzw+c+7NP+5E7Lh/wdXgIRnl75KPP3bgP7sYg=; b=OpzWKhIO2iFW/X
	Q74zXAX1nnJmTaG32QHAmi8KdNGibutZaygcNQrUpelLO8Qkkd5O8/NkprTHH/FBKUpkdAQ0WcHun
	g49Bj7D/shvOHGM7m/C+ASQBeOVMovndAKUJ/7bhaDFfumHb+wlr6I9zfhegdJ02TSKgTr/DtzS23
	1KefSsC/i3dR4p5bx//12P83rRJTENzC8qjcTZ65MHcIRFf1P5nPBBDtt8WQkTpYW95gyVBWbUtLr
	isph5F6SapGOZjfMaK8xiTy8lLPrlKMtH0l/ogVscGDIPxLhw4jrwNJGD2pHsZB7t5l+WBL7QRaZH
	Gsavr9OxyjFfKXYy4XLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSC0b-0005ps-Bd; Wed, 06 Nov 2019 03:29:25 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSC0W-0005pU-1F
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 03:29:21 +0000
Received: by mail-oi1-f195.google.com with SMTP id n16so19702650oig.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 19:29:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YqC9TqSkya1o/KJL8zpucATnY1j4nIoBdkUAmUprxs0=;
 b=SpVS5rUep4Hu4WRtEk53wHdigocafnxPtctxo58QKsMrhvtLSL/BrBruRUb9T1q7tQ
 r3QGLpt2aXBumWvAyGzE0GYajT7b3/PsYXuedAFjLwzILZ2LWFodS3NP5dtMCTIFEA2C
 Dsuv7vX42QnmSjZ+acLQK0Rq2ZP7mCOoT5roLL3EWU5bVM53WMUVZ7oqG7Ktppn6hQTh
 otTcDqw14EF+koCdd49nwWmNOB+QcAd5UXuhRVLKu6d2pt50rOmK+KnaEqqRwR9jUvvY
 MutAT+SqV+YSfL80JyHY5oMzM9l3aaLtodtiUrKzFsUfYE7Vo/7Ujtts06PkBEqDKnq7
 snOQ==
X-Gm-Message-State: APjAAAVyShBwVIbtEDhhG3hoPx87k87CzCBPoTgOOaqGRN1+3GCPtIGn
 uE0jn2w1vaT828cEbdPnsA==
X-Google-Smtp-Source: APXvYqx/nF0CpBAElSmOBIYblIaOc2Wf6Sp7yrh2qYVI6M6XfnHyx1svrejcYxe9WS6YADmSZrE0LQ==
X-Received: by 2002:aca:49c7:: with SMTP id w190mr285191oia.117.1573010959021; 
 Tue, 05 Nov 2019 19:29:19 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 88sm3097164otp.59.2019.11.05.19.29.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 19:29:18 -0800 (PST)
Date: Tue, 5 Nov 2019 21:29:17 -0600
From: Rob Herring <robh@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH 1/2] dt-bindings: iio: stm32-adc: add max clock rate
 property
Message-ID: <20191106032917.GA25856@bogus>
References: <1572279108-25916-1-git-send-email-fabrice.gasnier@st.com>
 <1572279108-25916-2-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572279108-25916-2-git-send-email-fabrice.gasnier@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_192920_074003_CF740CB5 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 alexandre.torgue@st.com, linux-iio@vger.kernel.org, pmeerw@pmeerw.net,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 28 Oct 2019 17:11:47 +0100, Fabrice Gasnier wrote:
> Add optional dt property to tune maximum desired analog clock rate.
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
>  Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
