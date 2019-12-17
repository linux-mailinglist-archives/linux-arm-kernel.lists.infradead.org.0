Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBCD123AF1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 00:35:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nvZc/Xu9T1C31jsoEqe69Y5TRPeCspQwPHsfjd2ztBE=; b=s9Skrt0fJxzZII
	g34hSt3GlzodAZcXZDlxf8wTU/NAfp2wmZXI8I4zeAAoy05oCbd984ogGloh7fb8T0G0/jyk7i1f0
	KOig6nh/oIfbkxoe3gr2YL5k//dJ2/Npwg83C+Q5DyzDstApKVM1BVRkjogzcPRccsFINoWwQFCIx
	v7SJ1td6w8isCMHYMVJRH/nMH8xcxdDftakNq9CSJm0xPWcBhaENuryKu62jpt0ii8Byj894aCSac
	x4aK+2U8VMxNb0jT30emkSiuMFpFJg56nT4ML2ScGhaBSMQQWGAVyBfoX7Y+bW/WnIiISMFeqSGHV
	0qH+eDFzlPmbNn6vse+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihMNK-0007zJ-O7; Tue, 17 Dec 2019 23:35:34 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihMNB-0007yZ-6O
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 23:35:26 +0000
Received: by mail-oi1-f195.google.com with SMTP id b8so99394oiy.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 15:35:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BI73ZBRjjqR0+V9ow7XsG6Zpq8G1O7yVR3mkt4nqq1I=;
 b=BVYJti8jyiTzKfTCywHlr/OgOIpJZC2zEjga7sWxoxovKm489PZMER1utIhVdlntEI
 RIpnOOCmUK8QDZmMNb2IGgC/ytPHO1FsDHf0xZ3YClWJOhrcqXY/+iygiyGhZ5+BJ44N
 M1JT6byTAZ+QEenotfV/UBd/TmGEJq/9eg0ukQRCas3aHf/xeZGv9GBy1nYtH1IlhI1d
 0C5HbrXdSR1qWYS+o63RDrLYPyJoUTYWM1m+/1etOVSpsj6n6dZ4RqReEqF66PfmZngm
 pi921CJhBIQSK6YKNjAIf5h1D8rZsQPplBB/3WU79S/cSnmeErUdvmRuwDDr52lUr21f
 i26g==
X-Gm-Message-State: APjAAAUUcFWbZ37pcSCWjmzj+CyaBSX3Y0RYEXO6lRuvxSukg4mnn/uX
 k0SiEEuOPv9iB+peCQ/d3w==
X-Google-Smtp-Source: APXvYqyRMza5p9FcM6gHlmpJkzd8vwIoG+HS9nMq49ZnmHNRYgI1aLev14QmXW//C7ZTMozv5ATcsw==
X-Received: by 2002:a05:6808:3ca:: with SMTP id
 o10mr3165499oie.14.1576625722498; 
 Tue, 17 Dec 2019 15:35:22 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o16sm17262oic.7.2019.12.17.15.35.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 15:35:21 -0800 (PST)
Date: Tue, 17 Dec 2019 17:35:20 -0600
From: Rob Herring <robh@kernel.org>
To: Pascal Paillet <p.paillet@st.com>
Subject: Re: [PATCH v3] regulator: Convert stm32-pwr regulator to json-schema
Message-ID: <20191217233520.GA31425@bogus>
References: <20191205161359.20755-1-p.paillet@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191205161359.20755-1-p.paillet@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_153525_233757_D65572C0 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, p.paillet@st.com,
 Mark Brown <broonie@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 5 Dec 2019 17:13:59 +0100, Pascal Paillet wrote:
> Convert the stm32-pwr regulator binding to DT schema format using
> json-schema.
> 
> Signed-off-by: Pascal Paillet <p.paillet@st.com>
> ---
> Changes since v2:
> remove /schemas/types.yaml#/definitions/phandle-array for supply
> 
>  .../regulator/st,stm32mp1-pwr-reg.txt         | 43 -------------
>  .../regulator/st,stm32mp1-pwr-reg.yaml        | 64 +++++++++++++++++++
>  2 files changed, 64 insertions(+), 43 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.txt
>  create mode 100644 Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
