Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9F1C8FCA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 19:23:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+LMOG3NMaLbFR53fna78jxoCTeT2jtPTZIhaMog2zj4=; b=Yhp8ygZoBwqzTU
	JYum5WmDIlsHhZyI3wK4ApcYYE0MDPwjfP9cfx7frxoHKglt40jNkvkM7QFx7ElXZcsEC9VwGIXr3
	t+xsuwxootsjpByPbNP4gfvFCzD5lz3E7RDB6Qs1m2orQ4yHtUUC1mwBSAkxDQwTgOf2z484jvbp4
	IwzaithYs/eGlNI/ypPFaRU0zE32GttGFUsdmNcpxHBDiklpwzsxF41pHq5iWOnkyxubh0e9uamky
	1gWUK6BHrJb2H2cFuKCRsATbQbuVjgWXAbZ3paD7cVTVzKbDAcr63O6HVfC6ERk0pqU7DT1hVvAGQ
	glV8mOPdbOMrpvYSu5Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFiLb-0001qx-QC; Wed, 02 Oct 2019 17:23:31 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFiLU-0001py-PR
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 17:23:26 +0000
Received: by mail-wr1-f67.google.com with SMTP id b9so20609373wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 10:23:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nzNAW4QY/zCjsjZa28ydl9OQI+8F/1QiLCLBnRQrEao=;
 b=oSf4tJDsPweVSaF3C3HoESwGsrnOs6MDs5THaa8bjL8aE8+uRz4XSWU/7o/w9hDWjc
 AsU7M5ECZafqHdD0ncnVbZzBf5kgiRn8TZY3DJSwhPPscPkzrSqsGU6R0pyznGotHoWc
 6p71vMTasLdknTYwZ+lA0ITFKL/XnLJ2IYKRJywvYr0wi4s+h3BbnxntR7/caTZPzol+
 CYrycc9lhft49kDo+6udKmxH/W+1ljHgQM4zwGiKMsZCRKjQ2CdqvUioslOpbEWjjFnL
 4eGhkl2On83jT/WMX50fGSnIxLWkyfUfWB7a3+yMAXz1wZo+JrI5CXf7L56yax/pq7qb
 zVxg==
X-Gm-Message-State: APjAAAUvWKjhXlM+Xzwi/Mtp7pSAk0DtgGrWwbDCU6CYmhzaITp5FSoH
 wu+XUpEy2py+A2tkBMGLmrxRRkLS
X-Google-Smtp-Source: APXvYqwNucqhWJvk5ezJtj648rwbekIqzLM6WPWAfMSVXhINx3Syw+zxmOe53m4oBLNZvolGL2J00w==
X-Received: by 2002:adf:e988:: with SMTP id h8mr3602872wrm.354.1570037003007; 
 Wed, 02 Oct 2019 10:23:23 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id 79sm10111624wmb.7.2019.10.02.10.23.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 02 Oct 2019 10:23:22 -0700 (PDT)
Date: Wed, 2 Oct 2019 19:23:19 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Lukasz Luba <l.luba@partner.samsung.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: memory-controllers: Add Exynos5422
 DMC interrupts description
Message-ID: <20191002172319.GC21463@kozik-lap>
References: <20191002060455.3834-1-l.luba@partner.samsung.com>
 <CGME20191002060504eucas1p2f023677bb85a7f6a1efebf891e8d81df@eucas1p2.samsung.com>
 <20191002060455.3834-2-l.luba@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002060455.3834-2-l.luba@partner.samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_102324_827925_033C201C 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
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
 willy.mh.wolff.ml@gmail.com, linux-samsung-soc@vger.kernel.org,
 b.zolnierkie@samsung.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, cw00.choi@samsung.com,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 08:04:52AM +0200, Lukasz Luba wrote:
> Add description for optional interrupt lines. It provides a new operation
> mode, which uses internal performance counters interrupt when overflow.
> This is more reliable than using default polling mode implemented in
> devfreq.
> 
> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> ---
>  .../bindings/memory-controllers/exynos5422-dmc.txt    | 11 +++++++++++

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
