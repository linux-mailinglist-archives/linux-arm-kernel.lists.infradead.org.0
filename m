Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B68E92E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 23:13:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2znpAhNTt3BaNJWCPzA5wd0pHxcD5b15g5bjL0c61CY=; b=tEzthFYUT7ei4C
	V4pGdhWSYHyQ5DlIQcnAhL8//bubfeXlnU7yFcj+RjT4y/V5wLOA7KM2aUceZCD0SwkVhbioY/r2Y
	ki70PrCA1SagFE+et08+2/urmE5C60dSKxUUKOcc8ShNo4fyv/VGsQFtgbePog6x3tVYtKuO6gJAl
	cHJBIRZcCxQxJU5ZPYyqk/Wq97bF5afWenCgFDOO7aikLNBzCCAxPTBc9I2nGalwRgtmFdEFV2hqt
	YA3XvIuPQt2PnWXGMYBjEA+15mmmryQ9IEEnQzZzdazQeyofk0SgpAng2LmiP3jS8d0QLnoIOwM2L
	Hc19VvQmmj1US80+U0aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPZjv-0000kS-1y; Tue, 29 Oct 2019 22:13:23 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPZjg-0000ja-W2
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 22:13:10 +0000
Received: by mail-oi1-f193.google.com with SMTP id y194so254740oie.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 15:13:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oKV+VkD2DdLQv5MCcveFFga4dSybCX7/fU89+oYDxR8=;
 b=qpEqmk7aKVSeW9Es71B6oICU4m37v8yghI4IlnsVJwSIzYI7Qvd9iI2IoyCAwAtyxh
 Jj1uuHjpBNASNc/k6nPTidJGHQBxFfiUIUx4DGeQ83t+CldJjjaHGIQrBZj8aqjnwWAN
 j3xRCBTPZvxRiZUqzjEqsMVa5uwFEcc0E8U8QLKCetNOl5GX4VRIhbF3Br9Kzg/6kEhb
 7cK9Y9D42WXpzNGTRUfO4JYm76VTDxgTkFX1d9eo2qQqf0aldoi/V3Y/j+hgrWujIFRb
 Z3nqx0ZeOwAJ6128L+PNtF5yoM3w5UgRJ14cdjOX50hSf5S24UHxV9UgbBZy2/oCKXep
 rVEQ==
X-Gm-Message-State: APjAAAX/opuL+PCi79EEwbMnCdK7e9vmCPLubz0GA5LlLIoTzliumCWt
 DaBIkDrXq85jJSuFZnJzkA==
X-Google-Smtp-Source: APXvYqxsN+GBu3MaKoONq+C2yXPVIcU2r2yLhUUeyvn7t7rGsRioCNtBVsty+HQhQ1Qf7BrTURpZhA==
X-Received: by 2002:a05:6808:8e:: with SMTP id
 s14mr6236745oic.57.1572387187587; 
 Tue, 29 Oct 2019 15:13:07 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o23sm91770otp.79.2019.10.29.15.13.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 15:13:06 -0700 (PDT)
Date: Tue, 29 Oct 2019 17:13:06 -0500
From: Rob Herring <robh@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH v3 2/4] dt-bindings: crypto: Add DT bindings
 documentation for sun8i-ss Security System
Message-ID: <20191029221306.GA26741@bogus>
References: <20191025185128.24068-1-clabbe.montjoie@gmail.com>
 <20191025185128.24068-3-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025185128.24068-3-clabbe.montjoie@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_151309_032358_CD8B709B 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 robh+dt@kernel.org, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, p.zabel@pengutronix.de, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 25 Oct 2019 20:51:26 +0200, Corentin Labbe wrote:
> This patch adds documentation for Device-Tree bindings of the
> Security System cryptographic offloader driver.
> 
> Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> ---
>  .../bindings/crypto/allwinner,sun8i-ss.yaml   | 61 +++++++++++++++++++
>  1 file changed, 61 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/crypto/allwinner,sun8i-ss.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
