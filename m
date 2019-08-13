Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 798648B822
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 14:10:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nwSHlk5+73N0zeCpN/2Is8/6zwqFB0DLWxf309llnIo=; b=T3BvYXLwduHxgNuYyQUfO397Y
	+u2D1o+vevhYsouUqnxV+NSli0z2haxa5ZxwbvqAJ0M4J9mc1p07XQ7fWORGIezbAnoy/uFgFSprz
	GZR61EGiYupXDXsp521vm5LqOWaJq4t6z11NfxvjaTvYbNY2HoRo009+GYrKAQcbicz7ar2WA1PaR
	2EuLkoCGYYc5a7x2WmWswq3VZaWTp5/lUFD+I4PFYtmCN/q1YeUWy8kwtmWMPHCCxTE3HmXlicMQv
	cyufQQ1L0W2zG2onbCSNq0kp3MQcUbhNPDzRlf97cIbkftT3E4UoS97ZVBQSUvpd7dq8LQ4KR+P3p
	8KUJXXNIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxVd0-0008CQ-3s; Tue, 13 Aug 2019 12:10:14 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxVcm-0007uD-Ut
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 12:10:02 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7DC9su1053904;
 Tue, 13 Aug 2019 07:09:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565698194;
 bh=cTM7S2PLpa3mnQ4eBvwPzdCvn8W5H1f6uFiW2fuHzLE=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=IwVoj/JJDYlvqMb88DXh1W4/LfS9IGheVUuU65L6FAgfn8e7qrdz7e/DjCyJFluLZ
 /4aDQ6gpwuTf+EYGnXRlcXzzOpUvzIO0WBWa4hcUclDsGloytKPIsIvBwRLc6dFkKX
 p4YfaSxpYzgqAkpPQKruHi/jYXrxN0jNay5ncj8Y=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7DC9sGS071766
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 13 Aug 2019 07:09:54 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 13
 Aug 2019 07:09:54 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 13 Aug 2019 07:09:54 -0500
Received: from [172.24.191.45] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7DC9pug081737;
 Tue, 13 Aug 2019 07:09:52 -0500
Subject: Re: [PATCH] soc: ti: pm33xx: Fix static checker warnings
To: Tony Lindgren <tony@atomide.com>
References: <20190626075014.2911-1-j-keerthy@ti.com>
 <20190813120453.GW52127@atomide.com>
From: Keerthy <j-keerthy@ti.com>
Message-ID: <e66d31bb-1e03-919a-184f-32a1a5124009@ti.com>
Date: Tue, 13 Aug 2019 17:40:29 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813120453.GW52127@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_051001_145128_50C50D48 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: d-gerlach@ti.com, linux-kernel@vger.kernel.org, t-kristo@ti.com,
 linux-arm-kernel@lists.infradead.org, ssantosh@kernel.org,
 dan.carpenter@oracle.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 13/08/19 5:34 PM, Tony Lindgren wrote:
> * Keerthy <j-keerthy@ti.com> [190626 00:50]:
>> The patch fixes a bunch of static checker warnings.
> 
> Sorry I just noticed that this one is still pending, applying
> into fixes.

Thanks Tony

> 
> Tony
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
