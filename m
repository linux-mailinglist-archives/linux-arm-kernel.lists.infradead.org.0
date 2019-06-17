Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA0D48555
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 16:28:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PjRRjkF5svE0/nZBJ8dGQyge0pIrZ5XNulOJ3Jgc3Y4=; b=KIJfiogvqEznob7AMJPApVB6b
	FUYsj0bUj8cQero841K2NyeKHJYkSez3ISv/5oUAVThedbzngrlH1MGx2vUqCiD2dnVM+wEFcriAE
	8n4iLDFG0jrHKbyR2b7xqKLHJnecYirQm54o8f9iMPVqIIZmTlKD6inhQUHIRGUVPJx8p0P7SYeQL
	4Yxz16gK7hPh+Jr7RXAV1qTVK+si8GTPyug0ac4OIGisMVzlvZ3Kdc9wY1nyN8v0Ravrm0/4nGa7P
	06fFNj5OoacWHdrYNPJARSUdr1zJmliV00SA/LTCNC0FSZEXTVqlcYBEnDqpu/xgddrtxmaW4wf/8
	h7Lt+maRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcscO-00012J-MN; Mon, 17 Jun 2019 14:28:20 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcsc3-00011g-Is
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 14:28:00 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5HERvpF067026;
 Mon, 17 Jun 2019 09:27:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560781677;
 bh=qu4EIJzsqvFnFCLTxt7GEkoeq2YaEXRCexOLDNeMZ9c=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=GEd9PaIjP1JfTWpr2FxG12RuW1y2L4JsrovbAMJnv4q9BQhVjrMqTEt1YvMJbY/mF
 RI0G9Y8vWbE2AE7PTkP7t4c3PayqywTgD7vzT1/Q6l41Uda8T4pRGSftKxCKV1Qt05
 XtLmMwYl1cyJM3O7S1YiEMtmWbhOPi31ZLPviwwA=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5HERvgB022277
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 17 Jun 2019 09:27:57 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 17
 Jun 2019 09:27:55 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 17 Jun 2019 09:27:55 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5HERqXT061958;
 Mon, 17 Jun 2019 09:27:53 -0500
Subject: Re: [RFC RESEND PATCH v2 1/4] dt-bindings: gpio: davinci: Add k3
 am654 compatible
To: keerthy <j-keerthy@ti.com>, Linus Walleij <linus.walleij@linaro.org>
References: <20190606095620.6211-1-j-keerthy@ti.com>
 <20190606095620.6211-2-j-keerthy@ti.com>
 <CACRpkdY-yK3+uZvq1Xk7qJ2Nd7mgRkQ9C22AYO4AiZP5Cs719w@mail.gmail.com>
 <bcaf05c2-e4a2-8fe6-50f8-9df603d65a21@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <1b2bf190-4474-fd65-8a6b-58d2539c1b10@ti.com>
Date: Mon, 17 Jun 2019 17:27:51 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <bcaf05c2-e4a2-8fe6-50f8-9df603d65a21@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_072759_707757_F1259464 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On 08/06/2019 06:51, keerthy wrote:
> 
> 
> On 6/8/2019 4:09 AM, Linus Walleij wrote:
>> On Thu, Jun 6, 2019 at 11:55 AM Keerthy <j-keerthy@ti.com> wrote:
>>
>>> The patch adds k3 am654 compatible, specific properties and
>>> an example.
>>>
>>> Signed-off-by: Keerthy <j-keerthy@ti.com>
>>
>> Patch applied with the three others, so now all
>> GPIO changes are in tree.
>>
>> Please funnel all the DTS changes through ARM SoC.
> 
> Thank you Linus!
> 
> Tero,
> 
> Could you pull the dts changes on top of intr dts patches.

Queued patches #2...#4 towards 5.3, thanks.

-Tero

> 
> Regards,
> Keerthy
>>
>> Yours,
>> Linus Walleij
>>

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
