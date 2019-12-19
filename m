Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCCC126C7A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 20:04:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3m+EKFT8mgxMNhqFrJKLXt6CfW0Mdux1776FAODSLd0=; b=dOADDaVeACPfg1
	VeAU64Rt8owVDek6/ODuS0at4ZglTNdreXHxtWYxbviC/ACqATEYfsofMHJW3qoItiYqltWaIPlDJ
	01bPC2dkJYT+U13qGRBmadjEDkibeNYkQ68KMb0X8WAEV7dbZ/rT1fu2zcO/LCxjjn1gma9/fQaYp
	d/cNHXwFHcTx266Hi99h/X6XtebzcHrW+oO64FYPik9le9P3xNFFdiHZiLjkIWu3hvD6oOZ0p/1AM
	47wK6j3OTnSrSHpCNl9zeW9j2N3R46mqPmH5tKasngF67qDIrY83JYS4E5RaekNoNiaNw2oOQLJS7
	VnVNlXMpAMQ67httWE2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii15s-00025i-II; Thu, 19 Dec 2019 19:04:16 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii15j-00025B-W5
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 19:04:09 +0000
Received: by mail-oi1-f195.google.com with SMTP id l9so768636oii.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 11:04:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KeFUqf0A6DIMzL1K80NCP97x3jQLHFRUKVr7gfJSL5I=;
 b=q5/v8e3+xfXfjHKPOgAe3mkfYhnE01L70p+QT3mSpcIfTuBe81PkmKqAd/epnmJkYO
 9jrvta/e5tot1uQ5HX4aZS05KOjCe8vefD5qeRC7PoIa78ygcsV17JZkvHZG5Pq5pb8H
 96cMdKMp6AsqiuJ6R5iK5Mx1lMhg4b+uruGmABdB+F8u4t5h44ailSX+m3FpZ0HwITeb
 QEzJm+l5QWuWc5/UR7xFFGx8JJU3Mp2bwTDeLjfgN8506XZXUxw9p6ESCTcOgANy1k3y
 LdrhQ1Ryxg2ds6eD2I241LL4US2u5CkVgYzwvnbOF5gc+N6Az2ujoWOoUEe7I9fXQNgu
 /1QA==
X-Gm-Message-State: APjAAAXX3muqewP/nzvO9nQzj8nhDIpsgbrT8RDGG6c5Gt0mW8kNhtaa
 y9p0RW6qtob0KY2Nl0Bivg==
X-Google-Smtp-Source: APXvYqz2K1ezcoQHOkwjBOve0kZcGoV4LnZnkgZ6Ei/DgEJFAsxpqjXbpjQ6k4RTXSpjUqwF/0stbg==
X-Received: by 2002:aca:cc08:: with SMTP id c8mr1077390oig.42.1576782246999;
 Thu, 19 Dec 2019 11:04:06 -0800 (PST)
Received: from localhost ([2607:fb90:bdf:98e:3549:d84c:9720:edb4])
 by smtp.gmail.com with ESMTPSA id a17sm2423295otq.49.2019.12.19.11.04.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 11:04:06 -0800 (PST)
Date: Thu, 19 Dec 2019 13:04:05 -0600
From: Rob Herring <robh@kernel.org>
To: Hanna Hawa <hhhawa@amazon.com>
Subject: Re: [PATCH v2 4/6] dt-bindings: arm: amazon: add missing alpine-v2
 DT binding
Message-ID: <20191219190405.GA15485@bogus>
References: <20191209161341.29607-1-hhhawa@amazon.com>
 <20191209161341.29607-5-hhhawa@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209161341.29607-5-hhhawa@amazon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_110408_030005_672B8E42 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, nm@ti.com, heiko@sntech.de, jonnyc@amazon.com,
 mchehab+samsung@kernel.org, ronenk@amazon.com, khilman@baylibre.com,
 hanochu@amazon.com, tsahee@annapurnalabs.com, devicetree@vger.kernel.org,
 antoine.tenart@bootlin.com, robh+dt@kernel.org, Jonathan.Cameron@huawei.com,
 tglx@linutronix.de, talel@amazon.com, linux-arm-kernel@lists.infradead.org,
 benh@amazon.com, barakw@amazon.com, hhhawa@amazon.com,
 gregkh@linuxfoundation.org, chanho.min@lge.com, linux-kernel@vger.kernel.org,
 davem@davemloft.net, dwmw@amazon.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 9 Dec 2019 16:13:39 +0000, Hanna Hawa wrote:
> Amazon Annapurna Labs Alpine family includes: Alpine-v1, Alpine-v2.
> 
> This patch adds the missing DT binding of Alpine-v2 in amazon,al.yaml.
> 
> Signed-off-by: Hanna Hawa <hhhawa@amazon.com>
> ---
>  .../devicetree/bindings/arm/amazon,al.yaml        | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
