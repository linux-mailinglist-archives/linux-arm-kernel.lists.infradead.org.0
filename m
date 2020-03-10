Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 720A0180214
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 16:41:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rTcf2aEGqn6g+qGx9QZ2X/v7reoHOl85Mbd6CoRoS90=; b=mN4PhyLkPe0vk9X8Z3GQO13lW
	5iX/BYUhClRuj+O6GO+A5KAngGyWSP7jH9Koo1i/MjTQCco3u1+CPV+/w1fV0zapuCeOpr4ZrJGTb
	ymxqDv/TfByJtaWNKlHx7fwDoiIdS82vpg+RRBTzNR0A56jHt33V023FhUnEJkPrunZe6SLgvsey+
	HwOtWeH5bUI5URWunM1iTRWGbITiAIUt/cnfKGYPo3WPbPGrU5GI8MA1Dfc+vt94yjUaYCw6pDqy+
	X9eALhyJtgKZdPKOew7HU3DAO2zvEmXNdgi6wMtfdLj1K6nacP1M6eyjW7sj19xA6W7wLFioJ/ppv
	KxVXt/5qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBh0a-0004QS-M4; Tue, 10 Mar 2020 15:41:28 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBh0Q-0004Pn-Hq
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 15:41:20 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02AFf771071642;
 Tue, 10 Mar 2020 10:41:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1583854867;
 bh=o8p5fgauZyRiTn5E7k0GtjXIgdIv7UAxDQEKWWWaJfY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Ra5+SIXXQfeVOZm3RvbV5swiBlvbReP7NTLQX/D8K+VqcBi9liQGpquLYWf9iw29J
 4ETfAYOode0Lsr6LyYcndg4kc9ygQL/UoqToEg+Mm/9Os5MJgYsXqFy0d+m4uILvmf
 6RtL7KddBk0DvyXZIsBQQg04LHxSa2E8YXiCrum0=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02AFf7mA050793
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 10 Mar 2020 10:41:07 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 10
 Mar 2020 10:41:07 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 10 Mar 2020 10:41:06 -0500
Received: from [128.247.81.242] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02AFf6vb119386;
 Tue, 10 Mar 2020 10:41:06 -0500
Subject: Re: [PATCH] bus: ti-sysc: Fix quirk flags for lcdc on am335x
To: Tony Lindgren <tony@atomide.com>, <linux-omap@vger.kernel.org>
References: <20200309181912.28645-1-tony@atomide.com>
From: Dave Gerlach <d-gerlach@ti.com>
Message-ID: <1196fb5a-ed41-51bb-67a4-dc9c7fe3ed36@ti.com>
Date: Tue, 10 Mar 2020 10:45:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200309181912.28645-1-tony@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_084118_679127_BEE83DAF 
X-CRM114-Status: GOOD (  19.72  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jyri Sarha <jsarha@ti.com>, "Andrew F . Davis" <afd@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Keerthy <j-keerthy@ti.com>, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tony,
On 3/9/20 1:19 PM, Tony Lindgren wrote:
> Commit adb72394e2ab ("ARM: OMAP2+: Drop legacy platform data for am3
> lcdc") dropped legacy platform data but we never added the quirks for
> SWSUP_SIDLE and SWSUP_MSTANDBY for lcdc for ti-sysc driver.
> 
> This breaks suspend/resume. Let's fix the issue by enabling the same
> quirks for ti-sysc driver as we had earlier with platform data.
> 
> Fixes: adb72394e2ab ("ARM: OMAP2+: Drop legacy platform data for am3 lcdc")
> Fixes: 23731eac9848 ("bus: ti-sysc: Detect devices on am335x when DEBUG is enabled")
> Reported-by: Keerthy <j-keerthy@ti.com>
> Cc: Jyri Sarha <jsarha@ti.com>
> Cc: Keerthy <j-keerthy@ti.com>
> Cc: Dave Gerlach <d-gerlach@ti.com>
> Cc: Tero Kristo <t-kristo@ti.com>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
> 
> This patch is against v5.6-rc series, it needs a merge conflict resolved
> for Linux next next is using -ENODEV instead of -1 for missing registers.


Tested with v5.6-rc5, can confirm that suspend looks OK now and is 
exited without "pm33xx pm33xx: PM: Could not transition all powerdomains 
to target state" message with this patch.

Tested-by: Dave Gerlach <d-gerlach@ti.com>

Regards,
Dave

> 
> ---
>   drivers/bus/ti-sysc.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
> --- a/drivers/bus/ti-sysc.c
> +++ b/drivers/bus/ti-sysc.c
> @@ -1266,6 +1266,8 @@ static const struct sysc_revision_quirk sysc_revision_quirks[] = {
>   	SYSC_QUIRK("gpu", 0x50000000, 0x14, -1, -1, 0x00010201, 0xffffffff, 0),
>   	SYSC_QUIRK("gpu", 0x50000000, 0xfe00, 0xfe10, -1, 0x40000000 , 0xffffffff,
>   		   SYSC_MODULE_QUIRK_SGX),
> +	SYSC_QUIRK("lcdc", 0, 0, 0x54, -1, 0x4f201000, 0xffffffff,
> +		   SYSC_QUIRK_SWSUP_SIDLE | SYSC_QUIRK_SWSUP_MSTANDBY),
>   	SYSC_QUIRK("usb_otg_hs", 0, 0x400, 0x404, 0x408, 0x00000050,
>   		   0xffffffff, SYSC_QUIRK_SWSUP_SIDLE | SYSC_QUIRK_SWSUP_MSTANDBY),
>   	SYSC_QUIRK("usb_otg_hs", 0, 0, 0x10, -1, 0x4ea2080d, 0xffffffff,
> @@ -1294,7 +1296,6 @@ static const struct sysc_revision_quirk sysc_revision_quirks[] = {
>   	SYSC_QUIRK("gpu", 0, 0xfe00, 0xfe10, -1, 0x40000000 , 0xffffffff, 0),
>   	SYSC_QUIRK("hsi", 0, 0, 0x10, 0x14, 0x50043101, 0xffffffff, 0),
>   	SYSC_QUIRK("iss", 0, 0, 0x10, -1, 0x40000101, 0xffffffff, 0),
> -	SYSC_QUIRK("lcdc", 0, 0, 0x54, -1, 0x4f201000, 0xffffffff, 0),
>   	SYSC_QUIRK("mcasp", 0, 0, 0x4, -1, 0x44306302, 0xffffffff, 0),
>   	SYSC_QUIRK("mcasp", 0, 0, 0x4, -1, 0x44307b02, 0xffffffff, 0),
>   	SYSC_QUIRK("mcbsp", 0, -1, 0x8c, -1, 0, 0, 0),
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
