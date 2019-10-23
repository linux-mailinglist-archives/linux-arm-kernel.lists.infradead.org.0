Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 297EAE11C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 07:42:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ISLLCDzq++tja8v8WMFvOMkw4qVbMJjFyUffH3EzIbE=; b=kSmv92LtsfY8YC
	T3s61ygwP0jGpGRoYQ6mujT+fbG7CNKvS6LhA2Ni9ySMe5yQ0LDgNbPs5sUFt1LXqNfjUyt3scuok
	jlYa1HEqLzG0ATZuJkGTJ8lko9dS4nXo4OJn4SWHOGQ34IZ1tXXSFuO3QpX9BBtFQHT+hqousOKeK
	NjKcIm86Kn+bYtIfRPMmp1zeHuYLlIPW/iilMm0r2FFv0MI5TeYCtG0PXyVECtxABtOey9hkpSBtM
	L4x2MkNWfvRgqa2ZdnTsenLH4cNCh40A9oqyCsRDo+FCSOoXfagnEQO+oG/8fTzTjPuTzyqnlkVJl
	yIeNHtMbDoERQVy7B55Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN9Pk-0007Gx-Ao; Wed, 23 Oct 2019 05:42:32 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN9PY-0007Fq-7W; Wed, 23 Oct 2019 05:42:22 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9N5gC3H022595;
 Wed, 23 Oct 2019 00:42:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1571809332;
 bh=loVH+PYRxm3OpLF9LdBwXFuK6Y4m05IaOaKEfYsJyAw=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=p58WL8S1GmDISYuKnhXNvZOeoUrdYkV463yym9NPfhRAo+iXa+g8Yy3fcFkrbFq25
 yYJ1bfHdTyIVAT+qswO8C0xpw5FLvVQpuJgSjvVlzOopFBeuQic9qIgtN37tpmlq4o
 7DZ7fqtNrh9Cic2tWE6XjqRuRNO/gF7vMzJfcSK0=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9N5gBAG020654
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 23 Oct 2019 00:42:12 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 23
 Oct 2019 00:42:01 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 23 Oct 2019 00:42:01 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9N5ecZS004724;
 Wed, 23 Oct 2019 00:40:39 -0500
Subject: Re: [PATCH v2 04/11] dt-bindings: phy-mtk-tphy: add a new reference
 clock
To: Rob Herring <robh@kernel.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>
References: <1567149298-29366-1-git-send-email-chunfeng.yun@mediatek.com>
 <1567149298-29366-4-git-send-email-chunfeng.yun@mediatek.com>
 <20190917202805.GA13405@bogus>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <32bc288e-dbbb-8930-4750-826e9e17d58c@ti.com>
Date: Wed, 23 Oct 2019 11:10:09 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190917202805.GA13405@bogus>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_224220_312958_01661AE7 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 18/09/19 1:58 AM, Rob Herring wrote:
> On Fri, 30 Aug 2019 15:14:51 +0800, Chunfeng Yun wrote:
>> Usually the digital and analog phys use the same reference clock,
>> but on some platforms, they are separated, so add another optional
>> clock to support it.
>> In order to keep the clock names consistent with PHY IP's, use
>> the da_ref for analog phy and ref clock for digital phy.
>>
>> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
>> ---
>> v2: fix typo of analog and needed
>> ---
>>  Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt | 7 +++++--
>>  1 file changed, 5 insertions(+), 2 deletions(-)
>>
> 
> Acked-by: Rob Herring <robh@kernel.org>

I see you've acked a couple of patches in the series. However the other
dt-binding patch neither has an Ack or NAK. Is there a specific reason or can I
merge the series?

Thanks
Kishon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
