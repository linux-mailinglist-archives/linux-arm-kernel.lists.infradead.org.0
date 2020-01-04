Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70252130481
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 22:10:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=deIlyjp+NyPKLs/UUqj/KGGHDW+54Y6UY1w/gUu0Ea4=; b=feuN/SiRfvMJ+o
	2N7w1u/nzDNMfH1ZCw1ZNZOSAR90w6cRWXEHy9186BGQmrfhB5ZJN6ud6sjMGvbTDhVn+YYqHpHOw
	327tph8/9D035Kl6Y3Wx5or9eKWwnKj5zViysclSjZ22AI9dr+BzVXW/NoFtLggAjtuEoWtEQL8mh
	QcOpDivNNf3YEF606+A6ThSEAucAWsH3hxoLzl24H2tgjWcLppUhSlVX/VF46h+6Cm+krVHqPfkTV
	Px1VqUlPpXMZSbM4B4YiBZVL57JlhOmUb794hqRPkxksWAeGmliTOdHvt2wERU0SLQSciIMKR+FgU
	QQNVXNzy2CjpYQvC2YRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inqgd-0006bA-CI; Sat, 04 Jan 2020 21:10:19 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inqgW-0006ak-9e
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 21:10:13 +0000
Received: by mail-io1-f67.google.com with SMTP id v3so44764054ioj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 Jan 2020 13:10:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cJWxvFKjFmedV29LeJwhs6R1fNWpIXjZCncfQO681ro=;
 b=ouTH8YRD2WASrzLnKUrVAU9hPLl4WYprXZtdsupttjFigXZD13NT3B6L0GHwWHNtCM
 vLeLr6cSVVIiqSR/KCaQ/8OUOs6LWwPCw/msLqLiBdKlOSK/1sMd61pYKI/ZSrKuI8yM
 g37X3pQd1aYEJb/LuWn6PkSSXGYpqkYH4yR/HIO69rBFR0qTpZHructj2uLbonZTgbZc
 dp4sBnbhC28iPuN2HMgJyifkhxQMzqSVc9eYOtGRXAe/XlYWbMh1sKX88y2JzgYU+C/n
 7oOs71iFFXQkLRsXYAJybBajAV/c2L3V8Vsd2Hmgi58+pf3RCgAo/idqZdQHQ/g7MvBk
 lorA==
X-Gm-Message-State: APjAAAU9vL/z8wxhdrVdMw8/4c3uPK/2t6KJchhLU9k+4VdRv9O7nCTs
 dRMfkhsiLwVI1vpESjBTG0x4DWc=
X-Google-Smtp-Source: APXvYqw3H+ylE1vphCR2ta0BmUpX2CwmMnY0F7SwB6B6OfQfqqwx9TTnj12YeKJZOv1+ZEEfQGdT6Q==
X-Received: by 2002:a02:cd0d:: with SMTP id g13mr76915047jaq.110.1578172211364; 
 Sat, 04 Jan 2020 13:10:11 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id l16sm15836120ioj.70.2020.01.04.13.10.10
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jan 2020 13:10:10 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2219b7
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Sat, 04 Jan 2020 14:10:09 -0700
Date: Sat, 4 Jan 2020 14:10:09 -0700
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: reset: Document BCM7216 RESCAL reset
 controller
Message-ID: <20200104211009.GA18324@bogus>
References: <20200103190429.1847-1-f.fainelli@gmail.com>
 <20200103190429.1847-2-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200103190429.1847-2-f.fainelli@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_131012_338703_7EC426BF 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 linux-kernel@vger.kernel.org, Jim Quinlan <jim2101024@gmail.com>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  3 Jan 2020 11:04:28 -0800, Florian Fainelli wrote:
> From: Jim Quinlan <jim2101024@gmail.com>
> 
> BCM7216 has a special purpose RESCAL reset controller for its SATA and
> PCIe0/1 instances. This is a simple reset controller with #reset-cells
> set to 0.
> 
> Signed-off-by: Jim Quinlan <jim2101024@gmail.com>
> [florian: Convert to YAML binding]
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  .../reset/brcm,bcm7216-pcie-sata-rescal.yaml  | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reset/brcm,bcm7216-pcie-sata-rescal.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
