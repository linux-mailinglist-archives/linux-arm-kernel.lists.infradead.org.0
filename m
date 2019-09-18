Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BB6B63DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 14:59:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sxEAn49GzgNUpebha4MGCfjR8zSSS6ToasTj8n3tFz4=; b=pEdrJGfOyxCEpE
	ToFNvAAJeufKmMxsz/UkMYpkWxp8eJIt+aOpYRjq4TNh9TAn0Ayu3j1RTACD2bhZ4k6NAYmTT0laM
	DBdBIJ+Yk6H1dz2D4Cbet/HXKo5zZwzqTsxJgDZWrIwuu7Y8Xh8LTVWVFFvywCGJPswbi39n4QEzE
	tCCZcLMiao2vJH0HNoms3FGDXkG8fdVv378lBMaEosHulNxKD6NxHN1KaLyZ8QTs8GwTvImgC1QUs
	fbErSJs3EUNy+rUWkU/ybt92YSptgxzzj2ebYiqfuxeMe7eSgPQ9x3DF+/IcaFtEioAQXcRNLv5st
	EOCdzy4XrRPspQMQrW8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZXz-0004Vv-Oh; Wed, 18 Sep 2019 12:59:03 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZW9-0003dY-MG
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 12:57:11 +0000
Received: by mail-ot1-f68.google.com with SMTP id z6so6228134otb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 05:57:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=I/3A/KYxXjH6WVBi/Ulo343XXTJEHgBjD05uTJuwbkA=;
 b=KU4djQ5Mw4M08k625hyRYsOdQvQEcuNsbtqn9iM/+lFQ3+F0tTT238z6xcEzJoeavt
 CdbmcOw9C6wiKelLWcxYjIip7gtYfXYNirqXRZbjHtQqItz98DtoPZkkKR+jd2Q5nCb7
 g1AOJ3nvyUzaEM8Dq1pXm+vWLwW6++cCTNTw7gN+8L8qtzsxlFdvJrhtNlhnkPsOpUlr
 oQy1q3bLMiGfbJvB25rqt6YeNZu+YNVvj+H0xafVPSnbDNQ1zBKSsCrQVHSrB1lZK7s/
 9rKTf4llZ0cOFt2tFmBftCXGkAaUKuO2S265k25cr4XB6yoAWGrfPCnzRIZEj2jUQ9DX
 JmTw==
X-Gm-Message-State: APjAAAXOGeg81sL6vbC500K9GjV4YEsQjo4KnCrjWkGSOQ6YtaHVLYgZ
 cN5dkX/ZBL530iT398/FgA==
X-Google-Smtp-Source: APXvYqwodEE5j8qxHT+M0f5nu7yacK3VYOvyqgfXVZo7lYSUguw8ryUfGATRRot+StM8ES+dd2srMw==
X-Received: by 2002:a9d:7145:: with SMTP id y5mr2852899otj.290.1568811428522; 
 Wed, 18 Sep 2019 05:57:08 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s66sm1776848otb.65.2019.09.18.05.57.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 05:57:07 -0700 (PDT)
Date: Wed, 18 Sep 2019 07:57:07 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 06/11] dt-bindings: arm: samsung: Convert Exynos
 Chipid bindings to json-schema
Message-ID: <20190918125707.GA31634@bogus>
References: <20190907092007.9946-1-krzk@kernel.org>
 <20190907092007.9946-6-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907092007.9946-6-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_055710_001327_E62FD307 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?utf-8?B?UGF3ZcWC?= Chmiel <pawel.mikolaj.chmiel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat,  7 Sep 2019 11:20:02 +0200, Krzysztof Kozlowski wrote:
> Convert Samsung Exynos Chipid bindings to DT schema format using
> json-schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  .../bindings/arm/samsung/exynos-chipid.txt    | 12 ---------
>  .../bindings/arm/samsung/exynos-chipid.yaml   | 25 +++++++++++++++++++
>  2 files changed, 25 insertions(+), 12 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/samsung/exynos-chipid.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
