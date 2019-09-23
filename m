Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA8FBAE57
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 09:14:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O7U2k9EB8ZtDSxRXIvmeUmxwcwL+Rm7PUEljQkTy3e0=; b=QTC+tKZLzk7s59
	kvu0DTWCUCs5gUNurTmUceTiEcwPBlcMnDGmQRI2vQ3crQ+pRkaRoaQHrdi9ck+Olbjfg14Tk4BKs
	m/UFoLCs8SVbzqs526ibwbe/loNmwmpq2L4RAHcMbcXYauxZqV5yMieH39aMiAbSOF0VAYpbdrUDp
	4DTQczCebyMtgS2/jbBQKhgAi/WW9vyfXNK61VaBYlOvJrsydYSbBPKNEUVUNFvg748yc6Obzlch9
	0HRjCrX3Bf20ussrCbR7gaiBLVWdPMOfJLVPSxpfkOKZzqa2dZtWiWKraGzlev9a6pJT1kYUVGop4
	c6lWHmDH8l23KUs5D+fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCIY3-0001Dr-Lc; Mon, 23 Sep 2019 07:14:16 +0000
Received: from mail-wr1-f41.google.com ([209.85.221.41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCIXD-0001Cu-Cn
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 07:13:37 +0000
Received: by mail-wr1-f41.google.com with SMTP id r3so12598502wrj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 00:13:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VSmtFloVdT4HdH3hqBjqDRmLKrDCbhhNO9xFa74XQG8=;
 b=ajrQedPr7HWPQ3gwFpCx7+ilDzn9AN4LOn+jj1kFNFLdXK4EMiOhZOQ12cd6M1SkN1
 ngakBqLXUlB3xC1wdjVuNEQOdd1IO9w2bJ2lq/V4UlPBkHFypoe28EXSYBr0YPC3iC9h
 T+xHjBNFOX0dae21uOmWhZn+KVmBeS2bWWp/zkKNApDT6wAFZNjc5ZzfXrqCeQGFeNHh
 JRmepkrWPTAyy7yVfEP/DaXQwmekhRnGbs9vFXfu7FFVLAedBC9nQtYyzzxZs3E9JVHa
 7qxhO8WafT4J3kxTjHn/LlTaQ8D3o9axFNjKx8NmmjYMPAxY6OOT5ySYosNSgigcXl+q
 be+g==
X-Gm-Message-State: APjAAAXt/HOGnLBhIn0zx8GMJ9d3E3e0UIxsqW0frLD9kWqSxwn4EUnQ
 6S99IucUY0oUOnVTUbq7/28=
X-Google-Smtp-Source: APXvYqzX7JpyywmwssCCGsX2MCih3fvE8W7RgPMGaeHxIMgUzIQu7rnAOAOtO0lypZquJEuBiDcaVQ==
X-Received: by 2002:a5d:5381:: with SMTP id d1mr9285624wrv.315.1569222800656; 
 Mon, 23 Sep 2019 00:13:20 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id a18sm20701185wrh.25.2019.09.23.00.13.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 00:13:19 -0700 (PDT)
Date: Mon, 23 Sep 2019 09:13:17 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [RFT v3 4/8] ARM: dts: exynos: Remove MCT subnode for interrupt
 map on Exynos4210
Message-ID: <20190923071317.GA4246@pi3>
References: <20190921170152.5033-1-krzk@kernel.org>
 <CGME20190921203810epcas3p39f3d9e3224d2c5ef61c1e18df2ab403d@epcas3p3.samsung.com>
 <20190921170152.5033-4-krzk@kernel.org>
 <c1d02aa3-b5f2-1c5b-0b7b-8749e7c0ce9a@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c1d02aa3-b5f2-1c5b-0b7b-8749e7c0ce9a@samsung.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_001326_954183_256B9FB5 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.41 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sylwester Nawrocki <snawrocki@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 08:56:46AM +0200, Marek Szyprowski wrote:
> Hi Krzysztof,
> 
> On 21.09.2019 19:01, Krzysztof Kozlowski wrote:
> > Multi Core Timer node has interrupts routed to two different parents -
> > GIC and combiner.  This was modeled with a interrupt-map within a
> > subnode but can be expressed in an easier and more common way, directly
> > in the node itself.
> 
> Maybe we should simply use 'interrupts-extended' based approach and 
> simplify mct node even more (get rid of interrupt-parent, interrupts, 
> size/address cells)?

Indeed, that looks like the tool for this job. Thanks for hint, I'll try
it.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
