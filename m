Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C166639A74
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 05:51:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nWmyfijDIwWzNNvjPc8EdrpDRl/xzJsSNEDh7/5mHqs=; b=Ius70l0mubO+/gTu39iBKfFmh
	J6Ffhn5nr0yedSd1WFYOGmI1BZDDxBZlQqiJkYIb6MxQW1wF/2PGZ1jnnP+6Y+MgfR4KM+R57Z8eY
	C227Vug14r4JYY1CG7UwM2vFwJY7lzfC4nvC0ujmz/+g/B+CIG688Q6oY1XKXMSriqUQXt5PITiM0
	EpVFzkzlMZn1lDgXD04mS3k0w0MGTSUTiDCxs8oP14JitPr/+Rlz2pLUvLfLbUxDRGwtQpabgC3Ok
	PJALDSOjgChBmWPS/+xp1IMwMdNPaHHKW/xTLpod54OJLK1B5ltAt7pe9L0VVbLUcSivBkeYp8Iw5
	sVhTHHVPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZSOO-0000gi-Ps; Sat, 08 Jun 2019 03:51:44 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZSO0-0000WM-1T
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 03:51:21 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x583pFqT086258;
 Fri, 7 Jun 2019 22:51:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559965875;
 bh=k9uAGfNmCZMx2i8iIVnU8ifAQs1wiMos3XiiVhnmPYw=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=ErIZp655yzFoXvDbdTJOcOZPNLWiwxb0qoGtdpmVxzvg7IcSmJvq+vL9r8fihdBQv
 gfAFZw9uEil4PR/iwutbUeNI8HmmO9By+TOmH6TSDjxaxR+7nc37XcqF3ZWRpLzY7j
 mKZ9hheB2lRtpE4gPk9UnTbRUR3VFz1l9sBD2r9k=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x583pFo4130929
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 7 Jun 2019 22:51:15 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 7 Jun
 2019 22:51:15 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 7 Jun 2019 22:51:15 -0500
Received: from [172.22.216.123] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x583pANr058884;
 Fri, 7 Jun 2019 22:51:11 -0500
Subject: Re: [RFC RESEND PATCH v2 1/4] dt-bindings: gpio: davinci: Add k3
 am654 compatible
To: Linus Walleij <linus.walleij@linaro.org>, Tero Kristo <t-kristo@ti.com>
References: <20190606095620.6211-1-j-keerthy@ti.com>
 <20190606095620.6211-2-j-keerthy@ti.com>
 <CACRpkdY-yK3+uZvq1Xk7qJ2Nd7mgRkQ9C22AYO4AiZP5Cs719w@mail.gmail.com>
From: keerthy <j-keerthy@ti.com>
Message-ID: <bcaf05c2-e4a2-8fe6-50f8-9df603d65a21@ti.com>
Date: Sat, 8 Jun 2019 09:21:09 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CACRpkdY-yK3+uZvq1Xk7qJ2Nd7mgRkQ9C22AYO4AiZP5Cs719w@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_205120_155355_2B7BCAB6 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: ext Nishanth Menon <nm@ti.com>, "open list:OPEN FIRMWARE AND
 FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Lokesh Vutla <lokeshvutla@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/8/2019 4:09 AM, Linus Walleij wrote:
> On Thu, Jun 6, 2019 at 11:55 AM Keerthy <j-keerthy@ti.com> wrote:
> 
>> The patch adds k3 am654 compatible, specific properties and
>> an example.
>>
>> Signed-off-by: Keerthy <j-keerthy@ti.com>
> 
> Patch applied with the three others, so now all
> GPIO changes are in tree.
> 
> Please funnel all the DTS changes through ARM SoC.

Thank you Linus!

Tero,

Could you pull the dts changes on top of intr dts patches.

Regards,
Keerthy
> 
> Yours,
> Linus Walleij
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
