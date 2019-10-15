Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FF9D7F7F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 21:01:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oJOn/1FV4+0nF9u75y5alUral433OItLjSvLB4E9Sqc=; b=j4cTcHqSR/k4la
	9YaXn4vfmNvpWgRxKSdi8A8YOK3EriInoT/KS8e1QKGF8v31bHX/OcUgiB011D1/qUcK9ObuWWXV5
	aXiN8B9Ja6izBQFbfQhrjug9TqsZyrK5Lg1FrzbnbeY1868/J4T0ewyqAu8knHOavF8Til5hj7KM5
	qMHQsXqdiGP1rEmdZpEuSvcWWY6G4jZ7T8X9oNm865lphvEkNnNMRsBycGJeutaUkXN9xm1G3iTeD
	AKEieVb2afQVGMeNNSi9rD3n0j7+KotpK4qHoLMY+esNLDfu4dmwuPaY5I5JWu9c7Byos8gpr1egZ
	3yhdMVxapBuZA0T2Ji6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKS4J-00037z-No; Tue, 15 Oct 2019 19:01:15 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKS3r-0002OJ-Kt; Tue, 15 Oct 2019 19:01:00 +0000
Received: by mail-ot1-f65.google.com with SMTP id e11so17905229otl.5;
 Tue, 15 Oct 2019 12:00:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hp+e/XzrZOsUlcsoMFFN5qSzcFIMEZCM+YYALCx114o=;
 b=ZAuHlFn58C52QIUY7Nuz7jzP7kk1xOWdyw/sEH2cogJy7b/o3RfP1VN472+EL4cgu1
 GP/DtzACE2HyfbyO/G6bDZGoXvpShemllZZtXM/ALxuseDQ+7RJG5ZLRerTvfV6mgHxo
 KkN4YToU+aqWlVTfBRb1XZacwz6m+Op8Gl7njAUHycJdim48VyfoSMpT2wc5Wqpb27Sd
 QQvNVUbRhkk+EF9cyzTokS1mckpwFGxBPV77d4iYs+MeNCOB7xwkuPBhFooOvpRg3puN
 P/WEaB4+IPGeJsEKslGQv+S7rpadT8O9Xuug0oe4rP7486waLS+H4aSUnplgJWcSQuMz
 ztuA==
X-Gm-Message-State: APjAAAVygnjHwMaQMC9RYDJzHTQjntn4MQZPR156uA99h902IvtDPu1O
 JiIPw0gVbzzZO1xx0pTBLw==
X-Google-Smtp-Source: APXvYqz2lsFOsoKMnXxtnOj8CPhDijUN329kcBws3qA3JeZj1vIj2mFKXCylZvqBmzugsYRfMd4HuQ==
X-Received: by 2002:a9d:5907:: with SMTP id t7mr20286521oth.118.1571166046567; 
 Tue, 15 Oct 2019 12:00:46 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 23sm25341oir.50.2019.10.15.12.00.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 12:00:45 -0700 (PDT)
Date: Tue, 15 Oct 2019 14:00:45 -0500
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 4/7] dt-bindings: interrupt-controller: Add
 brcm,bcm7211-l1-intc binding
Message-ID: <20191015190045.GA28661@bogus>
References: <20191001224842.9382-1-f.fainelli@gmail.com>
 <20191001224842.9382-5-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001224842.9382-5-f.fainelli@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_120047_701036_D2236B7B 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>, Scott Branden <sbranden@broadcom.com>,
 Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Anholt <eric@anholt.net>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Ray Jui <rjui@broadcom.com>, Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  1 Oct 2019 15:48:39 -0700, Florian Fainelli wrote:
> BCM7211 uses a very similar root interrupt controller than what exists on
> BCM2836, define a specific compatible string to key off specific
> behavior.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  .../bindings/interrupt-controller/brcm,bcm2836-l1-intc.txt    | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
