Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1471D1EA6F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 17:38:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qAJDfOecFundcvttZZ4e38zZuKcQQnKBdJLe2r8vHc8=; b=YS0K73kQoc6lV2
	kqes0CFA6mIac8J+lL0DcopW91r0EIo+mCQiI4u8/86gWoKrD/g84w3iRr31tvXdkG75TN0tmhkvj
	2mKshSwAkcXMLRRX0hDKof+Zc2wjgYumtfAtDjKnqhdJKezah9x1d1jm7aMalyp26BZpf+Jnxth/v
	0h+teG2kVamiBWC7BH4BfYTvW/Gbd9BOl0E2P/ssO0X5cbf3XR+4Htmz1kPOndpAbKNILCH7dl4m7
	R1KRPmKjwSHp2zyOQqj/kUlgMqckGzDP6HJ5/Clazz8y1+KLpWLmalcDEU6pIVzVAYtSjqireYs9P
	7TOxwnpLHLcYd0NBT6Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfmVu-0000h2-EQ; Mon, 01 Jun 2020 15:38:10 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfmVp-0000fR-0h
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 15:38:06 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 051Fc0Ft087726;
 Mon, 1 Jun 2020 10:38:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1591025880;
 bh=FMpU1xx24EePgAl2kXzZ81j+MBqD4TefOkKVPf0sNbU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=qIcfCZZ6Hk9VT5G0kTW95lEhS9Zbwoqq+Ru06Mx6xfdhGN1ofKp6Pjhrj4fdAOrKZ
 RwodBkLORFAEZMKnl9DB93me7UAe7K+KagnN6T4lzRaJViMu4s2MHdjN4ZiqMwnuVB
 4fatF2YgWATTeTyAfp7gcsos9bfqLA12MJtLaBok=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 051Fc05b104663
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 1 Jun 2020 10:38:00 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Jun
 2020 10:37:59 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Jun 2020 10:37:59 -0500
Received: from [10.250.232.87] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 051Fbu0P021566;
 Mon, 1 Jun 2020 10:37:57 -0500
Subject: Re: [PATCH v3] arm64: dts: ti: k3-am654-main: Update otap-del-sel
 values
To: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
References: <20200519082027.5726-1-faiz_abbas@ti.com>
From: Faiz Abbas <faiz_abbas@ti.com>
Message-ID: <2157ce88-89bc-1c0f-fcd4-8206e5e17bfe@ti.com>
Date: Mon, 1 Jun 2020 21:07:56 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200519082027.5726-1-faiz_abbas@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_083805_182893_A399EFCB 
X-CRM114-Status: GOOD (  11.13  )
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
Cc: t-kristo@ti.com, nm@ti.com, robh+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 19/05/20 1:50 pm, Faiz Abbas wrote:
> According to the latest AM65x Data Manual[1], a different output tap
> delay value is optimum for a given speed mode. Update these values.
> 
> [1] http://www.ti.com/lit/gpn/am6526
> 
> Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
> ---
> 
> v3: Updated values to the latest data manual revision
> 
> v2: Updated to the latest mainline kernel
> 

Can this patch be picked up?

Thanks,
Faiz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
