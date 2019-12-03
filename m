Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C04B10F840
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 08:02:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1HTZff5URYbfjfaCQjgGzJTh19Wcemg4RQbu87ExifI=; b=HjoJi4YYg/YbmJ
	4hPaBc2blEH1JLerCeZtSNGfzsLV69sf8yMvrOTh9xTRPpIrRa7l4hxbMetsjGSKhiTbmWIz54h5a
	VykNhP4lheda2XlyHHaQKiq2tqQvRh9MIj/C6YXgMzlJcWiP6mwY82dQbARkOQLhLov1o3S7Ciixw
	PdHRe/7YXB2/ckzK9mFjlzQB9pHaRw2n1mqc2K6b+cw5mF9DXDiX2OJ24fRRFfa4cjeMNrycQeIus
	ByrdEx+GWUDyCWmhgLwxsenhCjPL1PDYbzlxhN/o7B7l6uSbT83MG6oG5AlLBkJkpqIMIDHttQWOq
	fkP+Habj5wgyCe4x6sTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic2CJ-0001IM-Q8; Tue, 03 Dec 2019 07:02:11 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic2CC-0001HW-HL
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 07:02:05 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: sXlx3woo87bn8n13DyiB7JOkMCWIdXI0/a627Q8iPGDmP7TpoDXyjK5UJ3Bdemcn+hiMVlAbpY
 K2wzg3hVsxsEvjxq9awRD1DGtL7cSG3L2hGG1OrITol5wFnUTuIqd6p6rFeUS+baggxvr+mBAu
 0KDwGhFtF5WQeLNVPE8PeGcmLiZUUjx1FtD5NrADRKcLcXJCXBnvitS6ivfc1CwBxqVlUhtsd5
 CPS84MPsBzg7M3jaRWW/hHRfpLGfO46qboHvYWEgBOmKqRAyExZOBIeZL43eq0ct1XlimcT/1M
 LeQ=
X-IronPort-AV: E=Sophos;i="5.69,272,1571727600"; d="scan'208";a="57262689"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 Dec 2019 00:02:01 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 3 Dec 2019 00:01:30 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Tue, 3 Dec 2019 00:01:30 -0700
Date: Tue, 3 Dec 2019 08:01:21 +0100
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Eugen Hristev - M18282 <Eugen.Hristev@microchip.com>
Subject: Re: [PATCH v2 2/3] i2c: at91: fix clk_offset for sam9x60
Message-ID: <20191203070121.ebba7qc7mvo6jcgy@M43218.corp.atmel.com>
Mail-Followup-To: Eugen Hristev - M18282 <Eugen.Hristev@microchip.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "peda@axentia.se" <peda@axentia.se>,
 Codrin Ciubotariu - M19940 <Codrin.Ciubotariu@microchip.com>,
 Nicolas Ferre - M43238 <Nicolas.Ferre@microchip.com>
References: <1575276957-5615-2-git-send-email-eugen.hristev@microchip.com>
 <1575277244-6507-1-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575277244-6507-1-git-send-email-eugen.hristev@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_230204_608460_87F07AE4 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "wsa@the-dreams.de" <wsa@the-dreams.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>, Codrin
 Ciubotariu - M19940 <Codrin.Ciubotariu@microchip.com>,
 "peda@axentia.se" <peda@axentia.se>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 02, 2019 at 10:01:17AM +0100, Eugen Hristev - M18282 wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> In SAM9X60 datasheet, FLEX_TWI_CWGR register rescription mentions clock

typo here: description

> offset of 3 cycles (compared to 4 in eg. SAMA5D3).
> This is the same offset as in SAMA5D2.
> 
> Fixes: b00277923743 ("i2c: at91: add new platform support for sam9x60")
> Suggested-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

Thanks

> ---
> 
> Sorry, wrong subject line. Modified to SAM9X60 .
> 
> 
>  drivers/i2c/busses/i2c-at91-core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-at91-core.c b/drivers/i2c/busses/i2c-at91-core.c
> index e13af48..5137e62 100644
> --- a/drivers/i2c/busses/i2c-at91-core.c
> +++ b/drivers/i2c/busses/i2c-at91-core.c
> @@ -174,7 +174,7 @@ static struct at91_twi_pdata sama5d2_config = {
>  
>  static struct at91_twi_pdata sam9x60_config = {
>  	.clk_max_div = 7,
> -	.clk_offset = 4,
> +	.clk_offset = 3,
>  	.has_unre_flag = true,
>  	.has_alt_cmd = true,
>  	.has_hold_field = true,
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
