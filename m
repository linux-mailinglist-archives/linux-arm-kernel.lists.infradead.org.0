Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C81011CA666
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 10:45:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:MIME-Version:In-Reply-To:
	Subject:To:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=/tAFvRfPWGNB458Su2XDH0+MCy4dg7zqMI6AvqEC8JQ=; b=nEeUtJyCoInr0E
	k0vnRFLZPE7yB3rF/BaZxSCk4qHeyA4kZajWCNERkBmzGp79fb2Upvam8p6ySkGiUpD2FJLBrpPxf
	PnlDAo+OP1gXLM0vaMUrWZ7y590eOxNDgpzc9grADBroVYaJwNV3gzNVcWlgBuMlab89de/G+XlK1
	QFpBuY5HLZBykp+l4cucrsYHrha/hh8v+fv9LQkJ/MJC7+NEqFeFwwsgrkZAkJUPsxBZV14Xt2dAC
	782tjDLaqwxyU9l3Ntsd88KFiTmhy8d6hnZ0iUF31ztfZtR3ZV6a/Qbose2/5oTTytS4Wi/6A8JgW
	3G7X3iAvTl3jXqHqTeDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWydR-0007qq-Dz; Fri, 08 May 2020 08:45:33 +0000
Received: from m176150.mail.qiye.163.com ([59.111.176.150])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWycw-0005AX-Ki
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 08:45:15 +0000
Received: from vivo.com (wm-10.qy.internal [127.0.0.1])
 by m176150.mail.qiye.163.com (Hmail) with ESMTP id 4293E1A3189;
 Fri,  8 May 2020 16:44:20 +0800 (CST)
Message-ID: <AEMAEgD6CFDEXGkP4OWX94rO.3.1588927460255.Hmail.bernard@vivo.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: =?UTF-8?B?UmU6UmU6IFtQQVRDSF0gZHJtL2V4eW5vczogcmVtb3ZlIG5vIG5lZWQgZGV2bV9rZnJlZSBpbiBwcm9iZSBbcmUtc2VuZCwgd2VsY29tZSBhbnkgY29tbWVudHNd?=
X-Priority: 3
X-Mailer: HMail Webmail Server V2.0 Copyright (c) 2016-163.com
X-Originating-IP: 157.0.31.122
In-Reply-To: <20200508075210.GA8789@ravnborg.org>
MIME-Version: 1.0
Received: from bernard@vivo.com( [157.0.31.122) ] by ajax-webmail (
 [127.0.0.1] ) ; Fri, 8 May 2020 16:44:20 +0800 (GMT+08:00)
From: Bernard <bernard@vivo.com>
Date: Fri, 8 May 2020 16:44:20 +0800 (GMT+08:00)
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZSFVNQk1LS0tLQkJKQ0lKSFlXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kJHlYWEh9ZQUhMTU5ITkNJTUJKN1dZDB4ZWUEPCQ4eV1kSHx4VD1lB
 WUc6PjY6Phw*TTg9Pz4jPBArTzQsI0JPCTRVSFVKTkNDQklMT01OSE1JVTMWGhIXVRkeCRUaCR87
 DRINFFUYFBZFWVdZEgtZQVlKTkxVS1VISlVKSUlZV1kIAVlBTUlPSjcG
X-HM-Tid: 0a71f374f3bc93b4kuws4293e1a3189
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_014511_969167_129B0E9A 
X-CRM114-Status: GOOD (  16.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.150 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: opensource.kernel@vivo.com, linux-samsung-soc@vger.kernel.org,
 Joonyoung Shim <jy0922.shim@samsung.com>, David Airlie <airlied@linux.ie>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Inki Dae <inki.dae@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



From: Sam Ravnborg <sam@ravnborg.org>
Date: 2020-05-08 15:52:10
To:  Bernard <bernard@vivo.com>
Cc:  Inki Dae <inki.dae@samsung.com>,Joonyoung Shim <jy0922.shim@samsung.com>,Seung-Woo Kim <sw0312.kim@samsung.com>,Kyungmin Park <kyungmin.park@samsung.com>,David Airlie <airlied@linux.ie>,Daniel Vetter <daniel@ffwll.ch>,Kukjin Kim <kgene@kernel.org>,Krzysztof Kozlowski <krzk@kernel.org>,dri-devel@lists.freedesktop.org,linux-arm-kernel@lists.infradead.org,linux-samsung-soc@vger.kernel.org,linux-kernel@vger.kernel.org,opensource.kernel@vivo.com
Subject: Re: [PATCH] drm/exynos: remove no need devm_kfree in probe [re-send, welcome any comments]>Hi Bernard.
>
>On Wed, May 06, 2020 at 08:49:03PM +0800, Bernard wrote:
>> Remove no need devm_kfree in probe.
>> The change is to make the code a bit more readable
>> 
>> Signed-off-by: Bernard Zhao <bernard@vivo.com>
>
>Could you take a closer look and fix similar patterns
>in the rest of the driver?
>For example in exynos_dpi_probe()
>
>Is would be nice to only have to review for this
>type of changes once, so one patch-set is preferred
>over single patches over time.
>
>You can add:
>Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
>
>to this patch when you re-send a new series.
>
>Thanks,
>	Sam

Hi
Sure, this is also a good chance for me to learn this code.
I will re-check this part of the exynos driver code to see 
if there are similar patterns, and then re-send a patch series.

Regards,
Bernard

>> ---
>>  drivers/gpu/drm/exynos/exynos_drm_dpi.c | 10 +++-------
>>  1 file changed, 3 insertions(+), 7 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/exynos/exynos_drm_dpi.c b/drivers/gpu/drm/exynos/exynos_drm_dpi.c
>> index 43fa0f26c052..e06f7d7a6695 100644
>> --- a/drivers/gpu/drm/exynos/exynos_drm_dpi.c
>> +++ b/drivers/gpu/drm/exynos/exynos_drm_dpi.c
>> @@ -181,10 +181,8 @@ static int exynos_dpi_parse_dt(struct exynos_dpi *ctx)
>>  			return -ENOMEM;
>>  
>>  		ret = of_get_videomode(dn, vm, 0);
>> -		if (ret < 0) {
>> -			devm_kfree(dev, vm);
>> +		if (ret < 0)
>>  			return ret;
>> -		}
>>  
>>  		ctx->vm = vm;
>>  
>> @@ -233,10 +231,8 @@ struct drm_encoder *exynos_dpi_probe(struct device *dev)
>>  	ctx->dev = dev;
>>  
>>  	ret = exynos_dpi_parse_dt(ctx);
>> -	if (ret < 0) {
>> -		devm_kfree(dev, ctx);
>> -		return NULL;
>> -	}
>> +	if (ret < 0)
>> +		return ERR_PTR(ret);
>>  
>>  	if (ctx->panel_node) {
>>  		ctx->panel = of_drm_find_panel(ctx->panel_node);
>> -- 
>> 2.26.2
>> 
>> 
>> [re-send, welcome any comments]
>> Regards,
>> Bernard
>> 
>> 
>> 
>> 
>> _______________________________________________
>> dri-devel mailing list
>> dri-devel@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/dri-devel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
