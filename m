Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C3E1D7217
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 09:43:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0xcqTRTIWOuXFsU0KyypqKFxJRpO3JYTW4bVpBdX9RA=; b=aHJYIGAJHQyrh9j2CbX6kY1X3x
	fKLq8Ek+1VipiJ/YoinD9n50D2Q5ntCwsUF2BdmL6S1lU8A0NKNUS3l8hf0I0c5pZ7Hju8cQ+3Spa
	fDhnIfjChOL7DXZJrCbxjZeGMNfl1HAoqvBQIoJPSKojCXZdhZU7oDsldFn3C5EeWQTQf7rSjWyzy
	NBK+TExeGKNMgGSjU/5LYZ77kE0+fQdZ9akXXul2BXG0hFohhg1pEgcNmprbQOSHlV/pSTQiMrBsK
	RghiRkN7Je++yGZxdP/+5M/+98EISK/bCBX7lK0TkBZWdV7FuGDFZ30n8yt7ukpQ8R+/ZDmLHiXvt
	IGkh3w8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaaR1-0000gB-7Q; Mon, 18 May 2020 07:43:39 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaaQq-0000fI-0d
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 07:43:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589787807; x=1621323807;
 h=references:from:to:cc:subject:in-reply-to:date:
 message-id:mime-version;
 bh=FKJAh1HkVv8d/p5YjXylM2nem6uVcaMiV5E5Xj3YJxg=;
 b=WXCgwT6+sAla5aVtRz3FFeohbujP7Ev/w6W1n+SdYqNpFQoLS/Bwyj+9
 RK27KuJKg2IGJJGKZOeiYKJMNPBO0kkbHgXpMIT2428hr6dHkxAcZT08i
 ZmVLDhGe9ojVnRzZwa+GFizN4pPYRdoPaTfeUWHpxPOfUcT/h6VZB3QU5
 GgxHoxBk82zaJVPkAUdsREJvibSud6CPHON6nt9WzQ7+zUDv+O5QWCxaK
 ftI70IdbIxdg3RACusZv0anxRrhx0MFCvLOI+XLWkxEDUM9OiUnWvAFZW
 mgPu4pR+gnp2Dkdic76mx0fhfn96gTUTbYq9zCjkwvvlcBiaER34qbAJR g==;
IronPort-SDR: 9nIYTc6j7tSmHkUO/HDAiU7Hl4ptKImLP7FdPLXeUtwqYerLqPzqdExoE6E93pFxzBah3KHWWG
 Q9JPG+I2MEL3gHJXGrutIvVYPjZUo1UEB3ylMVbpbguzVvgclguDsT6B3iZUd/aTMSYKFy83vM
 CmUy67KdBD33r96EVfEhNlaspRBqwP35OdPswMyZsL8Gqtsd2knoZobWdvb4W8vZXCFq31c9xV
 fWceeyx3oQjJyQHT8TKz77OVnpKjLO40OSg3akb7hIM2OYZrCRcRG94HfDVpY9JW6g17CLZwRG
 ScA=
X-IronPort-AV: E=Sophos;i="5.73,406,1583218800"; d="scan'208";a="73738900"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 May 2020 00:43:22 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 18 May 2020 00:43:22 -0700
Received: from soft-dev15.microsemi.net.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 18 May 2020 00:43:17 -0700
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
 <20200513125532.24585-7-lars.povlsen@microchip.com>
 <2d230dab95ee96727a42f9c242c93c18@misterjones.org>
 <871rnlp740.fsf@soft-dev15.microsemi.net>
 <18c0d9ef-9a2b-31d0-b317-f051bb26a907@arm.com>
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 06/14] arm64: dts: sparx5: Add basic cpu support
In-Reply-To: <18c0d9ef-9a2b-31d0-b317-f051bb26a907@arm.com>
Date: Mon, 18 May 2020 09:43:16 +0200
Message-ID: <87wo59ofhn.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_004328_103531_0F94BC52 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Olof
 Johansson <olof@lixom.net>, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-gpio@vger.kernel.org, SoC Team <soc@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, Marc Zyngier <maz@misterjones.org>,
 Steen Hegelund <Steen.Hegelund@microchip.com>, linux-clk@vger.kernel.org,
 Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Robin Murphy writes:

> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>
> On 2020-05-15 16:09, Lars Povlsen wrote:
> [...]
>>>> +             cpu0: cpu@0 {
>>>> +                     compatible = "arm,cortex-a53", "arm,armv8";
>
> Side note: only one compatible string for the real CPU please, running a
> DT bindings check should complain about that.
>

I'll change this.

>>>> +                     device_type = "cpu";
>>>> +                     reg = <0x0 0x0>;
>>>> +                     enable-method = "spin-table";
>>>
>>> Really? This is 2020, not 2012 any more. Surely a new platform
>>> boots using PSCI, and not *this*.
>>>
>>
>> We don't currently support PSCI. The platform does not have TrustZone,
>> hence we don't use ATF.
> AIUI, part of the purpose of ATF is to provide a nice standardised
> platform interface regardless of whether you care about Secure software
> or not. It shouldn't take much to knock up a trivial ATF port that just
> uses an internal spin-table for its PSCI backend - in fact I suspect
> that's probably just a copy-paste from the RPi3 port ;)
>

I'll change this to PSCI if that's whats expected these days. We
actually already have an ATF port. I fully understand the desire to
standardize on PSCI.

> Robin.

-- 
Lars Povlsen,
Microchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
