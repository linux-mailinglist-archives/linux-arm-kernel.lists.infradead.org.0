Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7615FB547D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 19:45:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cn56S38CKSLLiKbTiBuBjkh8SlqCfA+RKVLan4nCkK8=; b=E2crqLVyF6FHWM
	pxNKuauQFwaHR+5G77mWpKXd44dQoZrGyMpp7jqATecnfIXIZljtxYjZLXwZmHUW0UDo1ucXfTyKc
	4QPAlRZ06U3+8BPJBHS4o05QtDZS7vaOi6zKOmxE+85Puub1T0wxRiYltjkKHZiC3r17FQu7mm31s
	dFztq2ajYcAzrDI/QXSmnSwZjLZHLa0Kwr9iorZ4R6YXK6/TiaexwrJCLRNTilsLursaDpCjjk85e
	nnMdYpE9smVIg09jTpXSKGN9dExZnMzXPBPDGSjIX2CaMRhaAXyEIg3yiUYFBaYJNRUJp3NpLC60D
	PvCeev1er90Zyw56cEKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAHXJ-0001zO-Ig; Tue, 17 Sep 2019 17:45:09 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAHX0-0001yb-QO
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 17:44:52 +0000
Received: by mail-oi1-f196.google.com with SMTP id t84so3604279oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 10:44:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+s/qabISnLIEozB0TLnSZrtVp76uFpxD8hC7kDMMtxw=;
 b=ND+3zcPO9PQrP9XlLFJ3OVtL3dcXLH0ursh7nxDwyMQ8HHIfXA6qjSWtmVUreJLy59
 6cTd2qFT3/IPTASg3yGCftD+z2XLIYPGbKTg0EdSDgFLVITni8G4bWqjnt3a2VPddhZk
 dFI0CaBoYEpoN6y3qUgQfiFFTbfyZfjdjsx4gG3ck246aOKU0GvtzkGvCMEwk1jwq7tL
 JzZMavafHd9hbEctUDaetYVNfUaSgu0QVivnGyUX4yf19/BVyRhItaKYfYpvYUIi1Gko
 4Qh3ra2ZY7aDKGGpu8XrXDKH0cgNPjmnG+HxjlGbcgP7m9WIG8x1Br7kHhOJA1oeEdm/
 kBIw==
X-Gm-Message-State: APjAAAUgDccgf63t/rSVCx/FUL6RCWxHULpW/2eBxmdrmoFIp+te6aqX
 c4B3YRRjA79c+wB8Qq2CMQ==
X-Google-Smtp-Source: APXvYqxwPvuhSYF9WmTQ5yzniwr7QyMkew4qMpaPhUx862mTRMwS73K2MzJtuXEcyyYe6/cLMW/2ow==
X-Received: by 2002:aca:4a50:: with SMTP id x77mr4744338oia.115.1568742289567; 
 Tue, 17 Sep 2019 10:44:49 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j21sm876224otl.70.2019.09.17.10.44.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 10:44:48 -0700 (PDT)
Date: Tue, 17 Sep 2019 12:44:48 -0500
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v6 2/3] dt-bindings: arm: coresight: Add support for
 coresight-loses-context-with-cpu
Message-ID: <20190917174448.GA22479@bogus>
References: <20190913115312.12943-1-andrew.murray@arm.com>
 <20190913115312.12943-3-andrew.murray@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190913115312.12943-3-andrew.murray@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_104450_852957_46DFA47F 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Al.Grant@arm.com, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 coresight@lists.linaro.org, Leo Yan <leo.yan@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 13 Sep 2019 12:53:11 +0100, Andrew Murray wrote:
> Some coresight components, because of choices made during hardware
> integration, require their state to be saved and restored across CPU low
> power states.
> 
> The software has no reliable method of detecting when save/restore is
> required thus let's add a binding to inform the kernel.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  Documentation/devicetree/bindings/arm/coresight.txt | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
