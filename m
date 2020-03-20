Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8F218CC06
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 11:58:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Message-ID:Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:To:Subject:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wSH56/wb3AdgNkcNt/Uzm2vpYDWNFbBQSstn+WPOhMc=; b=JZY8tdHPaN9qx66OX3+sqHo89R
	gPBLQ/djX9XS1bkjID+L0AKD00WveCSlSXC1HJ2rVBbqJmYwbChEWT3muG/sDi9cX6n8clpJ2nbRV
	bJZ33bcjuxYolFunfGbPEJVIzPoMrmRK0+HSq4ThtRUmPJgFL1efhImHnF99FuhudIHtvrQO5kxCK
	PjAa6hqLrRPLRHU6A3V5o6uO94aTwFgAtaDbtA6p+ad7mUQ1ZMOwZlVdTkX99XLidhP0GzHEQ+g5N
	iJo9fJclO7/H6FxEpcprbi7wJrnH7QijttDm6me5i9q2WWB61f38hNfSOtnWrp469uzpQ5mZ+mrOO
	+AvshYXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFFLc-00035K-QX; Fri, 20 Mar 2020 10:57:52 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFFLT-000352-H6
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 10:57:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1584701856;
 h=from:from:sender:reply-to:subject:subject:date:date:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QicbijMyMqBtatrNW/ts9lz3j5hsaxZysmxQ8V6gk80=;
 b=R4mJPtNNjB8EGhrmCHqdHlRkxTDkVYycwG01NeEmzRW7ArligFM1lFsmkRp/k+U9/DXxEx
 HnhmP20TFyWaYDaTxNlg2YEk5hDgyObNb6eBxIJRIsJl0x6JP6e0k0Xi2HAxfR3MPzrhyz
 qg1vj+WC0IJwtfj/hG4wrTGpTSBBVTc=
Date: Fri, 20 Mar 2020 11:57:25 +0100
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH v3 2/2] ARM: DTS: Add devicetree file for the Galaxy S2
To: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20200320094339.GB12976@kozik-lap>
References: <20200319173411.20607-1-paul@crapouillou.net>
 <20200319173411.20607-2-paul@crapouillou.net>
 <20200320094339.GB12976@kozik-lap>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_035743_760049_45159B72 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 MISSING_MID            Missing Message-Id: header
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
 Stenkin Evgeniy <stenkinevgeniy@gmail.com>, linux-samsung-soc@vger.kernel.org,
 Jonas Heinrich <onny@project-insanity.org>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Message-ID: <E1jFFLc-00035K-QX@bombadil.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,


Le ven. 20 mars 2020 =E0 10:43, Krzysztof Kozlowski <krzk@kernel.org> a =

=E9crit :
> On Thu, Mar 19, 2020 at 06:34:11PM +0100, Paul Cercueil wrote:
>>  From: Stenkin Evgeniy <stenkinevgeniy@gmail.com>
>> =

>>  Add devicetree file for the Exynos 4210 based Galaxy S2 (i9100 =

>> version).
>> =

>>  Signed-off-by: Stenkin Evgeniy <stenkinevgeniy@gmail.com>
>>  Signed-off-by: Paul Cercueil <paul@crapouillou.net>
>>  ---
>> =

>>  Notes:
>>      v2: - Change i9100 to GT-I9100
>>          - Remove redundant description in header
>>      	- Add chosen node with stdout-path
>>      	- Rename regulator nodes since there was no regulator-2
>>      	- Rename i2c-gpio-3 to i2c-gpio
>>      	- Use IRQ_TYPE_EDGE_FALLING instead of hardcoded '2'
>>          - Remove spi-cpol, spi-cpha as they glitch the LCD panel
>>      	- Make CS gpio active-low
>>      	- Update ehci node to add 'phys' instead of ports
>>      	- Remove duplicated ehci node
>>      	- Reorder nodes to appear in alphabetical order
>>      	- Remove useless newlines
>>      	- Remove regulator provided to touchscreen node since it does =

>> not expect any
>> =

>>      v3: - Change CPU regulator name to VARM_1.2V_C210 as in the =

>> datasheet
>>          - Remove unused gpios for the max8997 pmic
>>          - Remove redundant interrupts/interrupt-parent for max8997 =

>> pmic
>> =

>>   arch/arm/boot/dts/Makefile             |   1 +
>>   arch/arm/boot/dts/exynos4210-i9100.dts | 768 =

>> +++++++++++++++++++++++++
>>   2 files changed, 769 insertions(+)
> =

> Thanks, applied to dt-late. I already sent a pull request so this =

> might
> need to wait till next cycle. In such case I will carry this over =

> merge
> window.

Great, thanks!

-Paul



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
