Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 910E9C8FEC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 19:29:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cViFlT6/IQFR3NwCwOSxu8mubfpQlgmNLV1qzDY82AA=; b=U9CcxLHlCw2HNj
	HJktZA/1mf6xdYwtt73stDaVq+6NnxKeGVOlWm5euH58P5tScHwVhxmJwzBBprlRjqAQqB/1IMGib
	gD295TJCDb1rErBqdvxzTQolYe+Ar8lU9i09/ioe94Ak2PHxqTmdqYxUe8ZhnRNpIpWriGtIGo8WN
	C34sQwJ/jsYdtXldgFv71TqlvdpzbUbpXPGA4B5Znh0alMzZiJGtaL3vWfz+n3OhAvwI+WZtdytHa
	12jQHu7qRR3G73F/ZaYC++oVmNDQF3BQmROefam9HgH2wol7Zi/IKi/xkJEDHt6HFusYrnzTFe+Tn
	WQ05vHZFTTqXmrtWzzkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFiRa-00060W-Na; Wed, 02 Oct 2019 17:29:42 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFiRU-0005ze-Mj
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 17:29:37 +0000
Received: by mail-wm1-f66.google.com with SMTP id 5so8106840wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 10:29:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=knUYYHU2RbGFZMJdC/t7iP8HF/H6gnHVaApA8Esfhxo=;
 b=hH4PrIq+ZHWcIcvsLSSv9ruIeIz+2nwONdCnCnMkxIH74ymFheLPJe7MWuJls+eaSB
 RDIWh+25Osco+dvqDpWNJBV7qrBYdjfrAd5LdCZ9g5P3u+3Ed7UN6D6XKhKqIdJuQ5bp
 aHSlySLc+23KP39MudfZ4ht1gYG/qWGSSo3mGpZynH510lOAX0EJ35Un5ST5RrsI+ZYb
 W3Oon/XbQlIWt/sRYj6uKV79KL8Qojlo8tggBvCZ7bzav7XpsgpeYmMDzzW9oqytPMUT
 feoMCrlDltPT3yZ/e5lXOXkCyLu0PCOhyoE4D6vRbcOQwMDoVSUsjx1duANZOhvNSwjT
 O3Vw==
X-Gm-Message-State: APjAAAVannHyMFBLke89zrw+NIc4YnJl7O+zIZFZRrwngOvhAujIv8Ex
 K/iYrTKgYCoouL3ZQN+1/mI=
X-Google-Smtp-Source: APXvYqyH9fArHRTfXWfzqVQgaYVpo3bxfKpOmbUVndDKpAsFqO6SiYYHhg1MSaFN+BTdgbZp7amG7Q==
X-Received: by 2002:a1c:f004:: with SMTP id a4mr3750737wmb.42.1570037374987;
 Wed, 02 Oct 2019 10:29:34 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id n8sm11547015wma.7.2019.10.02.10.29.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 02 Oct 2019 10:29:34 -0700 (PDT)
Date: Wed, 2 Oct 2019 19:29:31 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Lukasz Luba <l.luba@partner.samsung.com>
Subject: Re: [PATCH v3 3/4] ARM: dts: exynos: map 0x10000 SFR instead of
 0x100 in DMC Exynos5422
Message-ID: <20191002172931.GE21463@kozik-lap>
References: <20191002060455.3834-1-l.luba@partner.samsung.com>
 <CGME20191002060506eucas1p28c9670128f5adfb628d7e84ce55c6e60@eucas1p2.samsung.com>
 <20191002060455.3834-4-l.luba@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002060455.3834-4-l.luba@partner.samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_102936_745446_0F8F889F 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.66 listed in wl.mailspike.net]
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

On Wed, Oct 02, 2019 at 08:04:54AM +0200, Lukasz Luba wrote:
> There is a need to access registers at address offset near 0x10000.
> These registers are private DMC performance counters, which might be used
> as interrupt trigger when overflow. Potential usage is to skip polling
> in devfreq framework and switch to interrupt managed bandwidth control.
> 
> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> ---
>  arch/arm/boot/dts/exynos5420.dtsi | 2 +-

Thanks, applied but re-ordered with previous one. Applying first
interrupts enables the interrupt mode which does not make sense without
extended mapping

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
