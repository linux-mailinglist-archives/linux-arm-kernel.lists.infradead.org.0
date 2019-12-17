Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6671232A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 17:38:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ohwkP6FXLqpvUh1hemTzaCUiR2wNe0ZVoYU34CWLb48=; b=WL1orizPhQVVaG
	U02pA1077309vo/56BdlyTzH4t+Xf6b6YQXsHHOVdc63zjALB3zvqBpTGZXXPPAT5faLXzg9j+Y5i
	ZdZr7bHvj7Sv4XscJVRe/bKCitx0+4QVC8pkzGH+jUWgVb1m2y8R+fhEZ8AytU85V0wkfTuJjVoD3
	v7YKK2wPi1Zbm9ORE8cJ3XT3qyihELVYxK/bxfBIPhFN2TJAuYKFXy1K1HO4tvT0iH/eGSeQJ7AlR
	vUu+XOWCfJDPZeb4ist+Gi7BDQo+xKuFILAodY6m8Ga/rlxMaqBEkLnOG/bKYC/oZioC6H/mGC/ix
	vB3q4UkOOGbc4o3Vy3mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihFrs-00072Z-KH; Tue, 17 Dec 2019 16:38:40 +0000
Received: from smtp1.de.adit-jv.com ([93.241.18.167])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihFrk-00072H-92
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 16:38:33 +0000
Received: from localhost (smtp1.de.adit-jv.com [127.0.0.1])
 by smtp1.de.adit-jv.com (Postfix) with ESMTP id 2422A3C057C;
 Tue, 17 Dec 2019 17:38:30 +0100 (CET)
Received: from smtp1.de.adit-jv.com ([127.0.0.1])
 by localhost (smtp1.de.adit-jv.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iZfVHM76q697; Tue, 17 Dec 2019 17:38:25 +0100 (CET)
Received: from HI2EXCH01.adit-jv.com (hi2exch01.adit-jv.com [10.72.92.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp1.de.adit-jv.com (Postfix) with ESMTPS id 116B13C00BB;
 Tue, 17 Dec 2019 17:38:25 +0100 (CET)
Received: from vmlxhi-102.adit-jv.com (10.72.93.66) by HI2EXCH01.adit-jv.com
 (10.72.92.24) with Microsoft SMTP Server (TLS) id 14.3.468.0; Tue, 17 Dec
 2019 17:38:24 +0100
Date: Tue, 17 Dec 2019 17:38:21 +0100
From: Eugeniu Rosca <erosca@de.adit-jv.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH v2 4/6] arm64: dts: renesas: r8a77961: Add SYS-DMAC nodes
Message-ID: <20191217163821.GA16268@vmlxhi-102.adit-jv.com>
References: <20191216124740.16647-1-geert+renesas@glider.be>
 <20191216124740.16647-5-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216124740.16647-5-geert+renesas@glider.be>
X-Originating-IP: [10.72.93.66]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_083832_469343_E8D4AAA4 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Eugeniu Rosca <roscaeugeniu@gmail.com>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 Eugeniu Rosca <erosca@de.adit-jv.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

On Mon, Dec 16, 2019 at 01:47:38PM +0100, Geert Uytterhoeven wrote:
> Add device nodes for the System DMA Controllers (SYS-DMAC) on the
> Renesas R-Car M3-W+ (r8a77961) SoC.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> v2:
>   - Group interrupt specifiers.
> 
> Test procedure (with "arm64: dts: renesas: r8a77961: Add i2c nodes"):
>   1. "hd /sys/devices/platform/soc/e60b0000.i2c/i2c-?/?-0050/eeprom",
>   2. See dma-controller interrupt count in /proc/interrupts has
>      increased.
> ---

Reviewed-by: Eugeniu Rosca <erosca@de.adit-jv.com>

Thanks!

-- 
Best Regards,
Eugeniu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
