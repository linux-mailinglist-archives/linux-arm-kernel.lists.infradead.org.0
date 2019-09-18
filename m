Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94999B63DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 14:58:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jjD5xVOsQ9u36KflmRrF23TNO2ttANKDwV/PoVwx+TM=; b=bk/XUrsZKoY1LO
	sc7N6tJQwwFHVBsxcLW6f1KUNu0xWNaZmhtVczv35b1ZG4p1er5NtapjjnmQUuvzboe7x7CXBrqhp
	C6qe1zV9QUOBkw3TY1dfLhsL+A0a5h/jMpxy3wf/UEtu59nqcBXHJMkblBpEzvG8x29CpfocDbF9i
	eVoSqrfdXBEtkPyygOEfIdKpQIUTR3Vo/CQ8ddForQqoCqTAPFYwMeQhx3LtJ7F57A1fKY+Tm+sWC
	jCE8Nh9+8xQMdQJGHyUHeu6QVfvQROw7Ab302C2McCzmKi7IJxghibNHoGaEXXPu8N3N8xT4OA/tz
	N8wUg76FTnApe3tUXLPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZXg-0004J8-0b; Wed, 18 Sep 2019 12:58:44 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZVk-0003ZD-8c
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 12:56:45 +0000
Received: by mail-ot1-f66.google.com with SMTP id g25so6275910otl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 05:56:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=U7pQxKwjOEeyYJrXJC0BD22K8VmAu7IgDiqHUePINFM=;
 b=sENi30h1x9Dt7o7rV4XJObSPwiK+OrfyUltkeR8VvB7f3mUuK13GZr9pM/Y9zXcckX
 VOrzcV9N3JnN3re9xI5I532MHHGN5jY5VNweTGUnZKMXnlyOG8XbsJaMfEdLFAJiUeSD
 J4qjKz4WdJHxEzIwO6ccr1rHF/dzNNZMaDHww/6qT5OwxOm5j3ntYLJBoQwR6YSbOO76
 a/fn8AcCyP1wIkaGFdy1t3AZ0ctkam+n6jrgkyiYgr1QJ2VzShkeBvF13dk+ODYLlou/
 d1Fm2jeNzbMUgtfVjhDm2lsRXUlb+MME5q5WrVdT9fOKqE5OnbWiUyStMeIDXLDDhJV6
 GY5A==
X-Gm-Message-State: APjAAAUD5pP8rpwwIzqRwj5bil/ahSMtSuCfU8kSIvr2wdIKhQtL/5AI
 nNJK/XZMOXDudCH6YEv2iQ==
X-Google-Smtp-Source: APXvYqyip6TGA28B6dtl1XpdNeVPYRX49rJ6hf7F7wfTaXVf9y3jevzFuGlE8KuQJPlzCjScPp0GUg==
X-Received: by 2002:a05:6830:1202:: with SMTP id
 r2mr2857953otp.85.1568811403648; 
 Wed, 18 Sep 2019 05:56:43 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v6sm1751435oie.4.2019.09.18.05.56.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 05:56:42 -0700 (PDT)
Date: Wed, 18 Sep 2019 07:56:42 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 05/11] dt-bindings: arm: samsung: Document missing
 Exynos7 boards bindings
Message-ID: <20190918125642.GA30545@bogus>
References: <20190907092007.9946-1-krzk@kernel.org>
 <20190907092007.9946-5-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907092007.9946-5-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_055644_453433_C605596D 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
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

On Sat,  7 Sep 2019 11:20:01 +0200, Krzysztof Kozlowski wrote:
> Add missing documentation of ARMv8 Samsung Exynos7 SoC based boards
> bindings.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  .../devicetree/bindings/arm/samsung/samsung-boards.yaml     | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
