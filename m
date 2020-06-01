Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 679861EA2D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 13:37:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G9YCfqsXEu32icwCZabKGtmaZlfciQGuZRFTA1dPxOQ=; b=Rx6QKTj58bnE93
	Kx2YrOjLH1xX9WGPQIypxgtPZWHPGcsPYqAqMqMhm+mf9pU/diIeHFgjUb+hCgcgih8GdWJ6FxWjs
	Ly5jKQcefMylnHYSBgAanNINkG/B5sWo6b9sb/zzfH5HutyvC5N7Rwy64OU+r6W+hrRBWmhkgHQIV
	cp9Zew0SgnEiqYaQMmnMj9rodxQ/aezsSAQl2AlSYEVVQAXz3y5PcaMoiZA6TdsiUpj/OEbPVpZMK
	YFQNZEW1N0cIsy7INo0Iwk/AjpHTX+nMUAVC+vHPZOSrYLfhYe9Fx9GTgcKlfQxQoKlkJFIs/bbrl
	meyJA+GkDHyi5XB89GCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfiko-0006KZ-9j; Mon, 01 Jun 2020 11:37:18 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfikT-00065g-TM
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 11:36:59 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 051BabHg016181;
 Mon, 1 Jun 2020 06:36:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1591011397;
 bh=nhyN4kFXRzwTvGNPM/HdbJ8OsCx4CPb4PhZFer6fqio=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=y9ub56HN5+zlmytwi7FoDdqwjzaSKk2HY7FXfPSX9WhXE98tfyWVZKNdngmv3nK4g
 UNMSATCzIJlJasmIUfYDA0LJO2UbA3HMWlSQIaM640jYQR4Ev3CmNT63LKHtM9LzqI
 O8TNiiJNE9WVAl8BLqA+vmNlPEPmXyiJEBxsRO0Y=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 051BabqK009016
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 1 Jun 2020 06:36:37 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Jun
 2020 06:36:36 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Jun 2020 06:36:36 -0500
Received: from [10.24.69.20] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 051BaX6w086316;
 Mon, 1 Jun 2020 06:36:33 -0500
Subject: Re: [PATCH 04/12] dt-bindings: irqchip: ti, sci-intr: Update bindings
 to drop the usage of gic as parent
To: Marc Zyngier <maz@kernel.org>
References: <20200520124454.10532-1-lokeshvutla@ti.com>
 <20200520124454.10532-5-lokeshvutla@ti.com> <20200528221406.GA769073@bogus>
 <f803f646-2a55-4f15-9682-1dc616d7c714@ti.com>
 <4ea8c6110a16900220a65f1d44145146@kernel.org>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <3f253e25-2ee7-96f2-3158-7f6be0710a33@ti.com>
Date: Mon, 1 Jun 2020 17:06:32 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <4ea8c6110a16900220a65f1d44145146@kernel.org>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_043658_028429_65D070EA 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nishanth Menon <nm@ti.com>, Rob Herring <robh@kernel.org>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 29/05/20 3:48 pm, Marc Zyngier wrote:
> On 2020-05-29 11:14, Lokesh Vutla wrote:
>> Hi Rob,
>>
>> On 29/05/20 3:44 am, Rob Herring wrote:
>>> On Wed, May 20, 2020 at 06:14:46PM +0530, Lokesh Vutla wrote:
>>>> Drop the firmware related dt-bindings and use the hardware specified
>>>> interrupt numbers within Interrupt Router. This ensures interrupt router
>>>> DT node need not assume any interrupt parent type.
>>>
>>> I didn't like this binding to begin with, but now you're breaking
>>> compatibility.
>>
>> Yes, I do agree that this change is breaking backward compatibility. But IMHO,
>> this does cleanup of firmware specific properties from DT. Since this is not
>> deployed out yet in the wild market, I took the leverage of breaking backward
>> compatibility. Before accepting these changes from firmware team, I did
>> discuss[0] with Marc on this topic.
> 
> And I assume that should anyone complain about the kernel being broken
> because they have an old firmware, you'll be OK with the patches being
> reverted, right?

I am assuming there is no one to complain as there is no product available yet
with upstream kernel. Internally everyone is aware of the changes. So, yes I
would agree with you to revert the changes if someone really needs it. :)

Thanks and regards,
Lokesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
