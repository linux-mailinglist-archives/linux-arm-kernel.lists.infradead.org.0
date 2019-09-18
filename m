Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46ABDB63BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 14:57:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1O93do3bKLhZUdD+qIN/0Qua2myNwwnbePqWuD5qFek=; b=dIAlUsR4AoK+hx
	xdROLTFYckA0wi2Xb0GyhQ95LpK6xPCjj1sXoGEskidbSz+4PMICnwvfo9Qr/ncw1FfklX9IymQk4
	lDNNdP4eu0uAxhTOpWZHmLDKY4AlCJReCIAon0T+W5oJHiBrnzE1CYxh3K8qJd4Qza0zc63PweSZu
	FKlv/pe8T8+PnXqgHnbkYCoFKHqhdj/RGCoeozrAqAvQB/R5L+s8+cz2mN1owtPv+zzXAVG6qcwFb
	9AuyWfiqSZxxQMO3D4hVWy82sufpCF2d44y/Tpm1ptaJcFB/2X62h9+epyjQ/306TTYGX5nA4HuNj
	4YWKo5+Y7g/VEV8dNNKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZVV-0003I2-Jv; Wed, 18 Sep 2019 12:56:29 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZUz-0003Ha-7J
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 12:55:58 +0000
Received: by mail-ot1-f66.google.com with SMTP id g25so6273983otl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 05:55:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=V/obFJ4bRJSXxsoxYo8c1RjJKF4/g7ZOMR6n3vmjX6U=;
 b=M7q4OXGhUu4+e/EApkSLjo7zyNVuObVmLhBKbZxj+5uE8Tf+iB1mBSDU8DCP1hoHDi
 Y8XKLgO2Qkc319PtdD+e4xFdkbCToKeION2mVz6qdURpFfuV/NgUq3vmIFxHPJZnSup0
 ZoF2DEN3iKwm8S+HFebMhe4Jw1X329G187UwtCaRYN5QbnxOpKDO1fVW6uCBrVlKFj+/
 b0azCAd+RBLfuU4q0u9egOOp8gHeJBsXFfHu9JaQy752tAOoYMOoExUO65kI/VlBKWnp
 YKM6ipjkYC/8+fuYvYy1d2Jw+Y7hMWAo9glhg4Qxgghxt6uIpTXg1+vHt6OJU58WR/6Q
 Qo/A==
X-Gm-Message-State: APjAAAX22tkyxPXRg6QX1X8rsJEV4AdLRhrZmAh5No/EUdXmne+Mbz/l
 nxFecEvic6ciw9+3a382rg==
X-Google-Smtp-Source: APXvYqxOHB0PcqdAJMdo7FeOOcdzjuKXsZBGXz1rEkmccxms8AlGyUA04EUXrePTyTv9JVzD6d+GJQ==
X-Received: by 2002:a9d:57c1:: with SMTP id q1mr420848oti.144.1568811356250;
 Wed, 18 Sep 2019 05:55:56 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 38sm1824269otw.28.2019.09.18.05.55.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 05:55:55 -0700 (PDT)
Date: Wed, 18 Sep 2019 07:55:55 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 01/11] dt-bindings: power: syscon-reboot: Convert
 bindings to json-schema
Message-ID: <20190918125555.GA28572@bogus>
References: <20190907092007.9946-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907092007.9946-1-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_055557_275658_DB8E3CDE 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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

On Sat,  7 Sep 2019 11:19:57 +0200, Krzysztof Kozlowski wrote:
> Convert the Syscon reboot bindings to DT schema format using
> json-schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v1:
> 1. Remove unneeded maxItems from uint32 fields,
> 2. Simplify if-else-then.
> ---
>  .../bindings/power/reset/syscon-reboot.txt    | 30 ----------
>  .../bindings/power/reset/syscon-reboot.yaml   | 60 +++++++++++++++++++
>  2 files changed, 60 insertions(+), 30 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/power/reset/syscon-reboot.txt
>  create mode 100644 Documentation/devicetree/bindings/power/reset/syscon-reboot.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
