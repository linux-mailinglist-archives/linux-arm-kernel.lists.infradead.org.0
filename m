Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB77AA597
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 16:17:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EOVy5/GmU2Z2cacc0vmfxUkGOylR3cJUOQRBIgC01fQ=; b=fNKoqZhY905aepFGtIKwk92Mp
	7sckhd6q4+hAjEWiSrMdH23XFqbPRY2xDyQjQrvdn3raG5rjmNY+4e1Q6874VHikVzE8V33BsWX/p
	mhiaiz/AD7qvgJem0EToK+7Fl5jNCpxYxIAQFRuXnLv8PbviN+RI9ESixQEFrLezHzGYTYrhWV+pL
	5JvDv7EMPOwxqW4bd3T+wTBmo/3GwCNgNyLt06kV9xzjdnnKAr7Tp5+lid5U572L8EkTUfaCf0QmB
	C5eY1VPQamd/VgxrRlUXzE7Yn+hzr+sqPxJqkZHRFic6GSImp7FYfo7DaavCvAh9yD+/tAsFWxrj4
	uu+pqZo6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5sZk-0003PB-Nl; Thu, 05 Sep 2019 14:17:28 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5sZb-0003Ol-Hx
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 14:17:20 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x85EHF6q066539;
 Thu, 5 Sep 2019 09:17:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567693035;
 bh=ub+LpZSR2SqSnDTZYERv7a6nXgZCl/QfTXbE8sjKO10=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=jkRJNor/c//NIjSOu2F8t0GecbA3rmd/dTZM1I1uP2YjUNdtSlFyQGTDRm9uataKz
 xfiha8TFkN8MrbcAr3s8LDQvlhyGJtIzrD+azaihHuMhi4HkdJAb/qCRntw9a9Pq7y
 RiNzAl0LUP90NvcSOwe8j9ck78Ybh+3+QPEydLsA=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x85EHF1r089155;
 Thu, 5 Sep 2019 09:17:15 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 5 Sep
 2019 09:17:13 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 5 Sep 2019 09:17:13 -0500
Received: from [10.250.98.116] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x85EH9Sc113593;
 Thu, 5 Sep 2019 09:17:10 -0500
Subject: Re: [PATCH] bus: ti-sysc: Fix clock handling for no-idle quirks
To: Tony Lindgren <tony@atomide.com>, <linux-omap@vger.kernel.org>
References: <20190905140337.19373-1-tony@atomide.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <49ce192d-697b-48e2-2b18-47acb370739b@ti.com>
Date: Thu, 5 Sep 2019 17:17:04 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190905140337.19373-1-tony@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_071719_701422_B3873806 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Keerthy <j-keerthy@ti.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/09/2019 17:03, Tony Lindgren wrote:
> NFSroot can fail on dra7 when cpsw is probed using ti-sysc interconnect
> target module driver as reported by Keerthy.
> 
> Device clocks and the interconnect target module may or may not be
> enabled by the bootloader on init, but we currently assume the clocks
> and module are on from the bootloader for "ti,no-idle" and
> "ti,no-idle-on-init" quirks as reported by Grygorii Strashko.
> 
> Let's fix the issue by always enabling clocks init, and
> never disable them for "ti,no-idle" quirk. For "ti,no-idle-on-init"
> quirk, we must decrement the usage count later on to allow PM
> runtime to idle the module if requested.
> 
> Fixes: 1a5cd7c23cc5 ("bus: ti-sysc: Enable all clocks directly during init to read revision")
> Cc: Keerthy <j-keerthy@ti.com>
> Cc: Vignesh Raghavendra <vigneshr@ti.com>
> Reported-by: Keerthy <j-keerthy@ti.com>
> Reported-by: Grygorii Strashko <grygorii.strashko@ti.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>   drivers/bus/ti-sysc.c | 48 +++++++++++++++++++++++++++++++++----------
>   1 file changed, 37 insertions(+), 11 deletions(-)
> 

Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>

Thank you, Tony.

-- 
Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
