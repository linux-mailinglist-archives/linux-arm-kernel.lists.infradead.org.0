Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B03EC1CA665
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 10:45:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0eJsexMJrE91Nbjt7FZfS/m/kONohLP06rHwmY6AmJQ=; b=qSU6s+BxzpVWugu7XXt58LQvt
	q5F5rhfNgiupMdXAVJW63PsqpV2XgTgTZrAtkG5c2RHkVOhaS/vJz77Rf31fyfmXrmAZ4yEorgsPf
	X151meAjvR4Fx7Huby57/8opq8kZAcTTeLMx8njFbimXEs3LcBphg7bggNuTuvm7GeFolvMdK0ITH
	Jok/iMs9k2FIqsvl7cB1LXHN+SIHt4azwZy4V8uAHKfFVmfnka2Hv3FBs/2mkUQqBl5bVsIb7fHtJ
	hP27N+VppRAH89bl/GdxB0/4xLWzRMm6tQ40y42zZXAQj1k60VZFug8tRu3+/AoGN+C9bEwWk+cxC
	ztc0EmSdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWydD-0005Ab-AE; Fri, 08 May 2020 08:45:19 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWycp-0005A5-Dl
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 08:44:56 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 08 May 2020 17:44:54 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id A72DF180139;
 Fri,  8 May 2020 17:44:54 +0900 (JST)
Received: from 172.31.9.53 (172.31.9.53) by m-FILTER with ESMTP;
 Fri, 8 May 2020 17:44:54 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by iyokan.css.socionext.com (Postfix) with ESMTP id 1FB14401DC;
 Fri,  8 May 2020 17:44:54 +0900 (JST)
Received: from [10.213.29.153] (unknown [10.213.29.153])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 95917120136;
 Fri,  8 May 2020 17:44:53 +0900 (JST)
Subject: Re: [PATCH net] dt-bindings: net: Convert UniPhier AVE4 controller to
 json-schema
To: David Miller <davem@davemloft.net>, robh+dt@kernel.org
References: <1588055482-13012-1-git-send-email-hayashi.kunihiko@socionext.com>
 <20200501.152130.2290341369746144284.davem@davemloft.net>
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Message-ID: <846aef8c-50b4-e264-9a9e-7d7f25729a94@socionext.com>
Date: Fri, 8 May 2020 17:44:53 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200501.152130.2290341369746144284.davem@davemloft.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_014455_568490_F93FD106 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: yamada.masahiro@socionext.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi David, Rob,

On 2020/05/02 7:21, David Miller wrote:
> From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> Date: Tue, 28 Apr 2020 15:31:22 +0900
> 
>> Convert the UniPhier AVE4 controller binding to DT schema format.
>> This changes phy-handle property to required.
>>
>> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> 
> DT folks, is it ok if I take this into net-next or do you folks want to
> take it instead?
Rob, how about this?
I think net-next is preferable.

Thank you,

---
Best Regards
Kunihiko Hayashi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
