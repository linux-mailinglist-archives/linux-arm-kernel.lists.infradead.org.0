Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED251CEAB3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 04:18:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z02MbWq0+W53dKmgBzN7wOZnoILclS02G684V8UjfxE=; b=DORghenU2qqK4JZBh+WvrGMCj
	aeVmgrETQXBZfck2BrwmsWDq2Oy0G+EJJOJvndjAid0ACMaQIzmvqj7bSSPdyS+NhCAfPgJUXCXSI
	ca9lNv4YdcP6t1QSxWH478iUtPjIWc+Gq8FD7rmR6IGKOD86Z0aguyHcrf5Nvjuas00dCKOtueG04
	l7SwSE7fhHV6/VVu9MvWhTPPpYm7kjwm9h+ZTLZ00HfFeiMZ3okTdHU7Fzu1HSfVpTp+Umbv2ZKBw
	T3aD77Cs+Lljj83ED6+9lSxxfsHgNqLX/aKdofjX63QvrE/B9VsAURTE4oxxqOu2HE+YsjxwyICIx
	p1iuivgOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYKVO-0002WR-DH; Tue, 12 May 2020 02:18:50 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYKVE-0002Vb-Q8
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 02:18:42 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 12 May 2020 11:18:38 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 4E8B9180BB6;
 Tue, 12 May 2020 11:18:38 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Tue, 12 May 2020 11:18:38 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by kinkan.css.socionext.com (Postfix) with ESMTP id EDACE1A01BB;
 Tue, 12 May 2020 11:18:37 +0900 (JST)
Received: from [10.213.31.213] (unknown [10.213.31.213])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 67C7D120133;
 Tue, 12 May 2020 11:18:37 +0900 (JST)
Subject: Re: [PATCH net] dt-bindings: net: Convert UniPhier AVE4 controller to
 json-schema
To: Rob Herring <robh@kernel.org>
References: <1588055482-13012-1-git-send-email-hayashi.kunihiko@socionext.com>
 <20200512020126.GA22178@bogus>
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Message-ID: <600b83e2-8063-b8ca-5406-7bf854c45ab3@socionext.com>
Date: Tue, 12 May 2020 11:18:36 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200512020126.GA22178@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_191840_962610_2A017563 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 2020/05/12 11:01, Rob Herring wrote:
> On Tue, Apr 28, 2020 at 03:31:22PM +0900, Kunihiko Hayashi wrote:
>> Convert the UniPhier AVE4 controller binding to DT schema format.
>> This changes phy-handle property to required.
>>
>> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>> ---

(snip)

>> +  phy-mode:
>> +    $ref: ethernet-controller.yaml#/properties/phy-mode
>> +
>> +  phy-handle:
>> +    $ref: ethernet-controller.yaml#/properties/phy-handle
> 
> No need for these $ref, the 1st reference did this. Just:
> 
> phy-mode: true

Okay, "phy-handle" also replaces with "true".
I'll fix it in v2.

Thank you,
  
---
Best Regards
Kunihiko Hayashi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
