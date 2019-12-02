Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D45B810E83D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 11:10:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5Quuj2mNM6HbABId2ji2Bq4dRPfByvyR1I5b7IgjKDQ=; b=pa/9QqrlCCk76gm3wEh+8U4xd
	+o0IOuWcunfnn3QcOsKj3VRnAHcC2FTIjDm5OuRWY4PhciyDc0+KLMrgdqF5nelaXKxS1B7l3v7+r
	HQtqhdRieOHst+VwhyRo+DHgcnGxcS7gbcLXG00ZSZ4YsO/mBf+fLoQEmQiVvYssV4bqlMrxOQBWA
	V2RCRNeVfwJumBOlkjLKdQYVWN/UyJ1AKZWixA/6BLH84uiyHH3DTdskUGC0CjqgulyakKrFOmCFR
	RxhGvWyn7471arrpr1y35JlUPJnIEuQVdgQIh9QlmoqZ6mAl11h/od4RnZfw8kPVnCgV7WHFutjl0
	77Rs7Fofg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibiej-0007A4-MT; Mon, 02 Dec 2019 10:10:13 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibieZ-00061S-I0
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 10:10:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1575281398; x=1577873398;
 h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dcMlRchRs9pIubCP3/GPB/ItCrb4ovf+lp/564b6xqg=;
 b=m+qZcbJrbbfK6SKzS+MuEvnthCFnCoUCcxSfJ1iaOhMReX9pcChKJQA7pEtlf0Tp
 XITTHoEpCbhNnIqo+UYqLRDwzpj+gS++SLfXHl9fsYpUupYPIBb6ZmssM9A7KbsT
 sEj1hu9bn1DopGtg/ijCu5S6Q0UXm5QEwcZawXhinYQ=;
X-AuditID: c39127d2-df9ff7000000408f-2a-5de4e2f592c9
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id E7.AC.16527.5F2E4ED5;
 Mon,  2 Dec 2019 11:09:57 +0100 (CET)
Received: from [172.16.23.108] ([172.16.23.108])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019120211095735-23487 ;
 Mon, 2 Dec 2019 11:09:57 +0100 
Subject: Re: [PATCH 1/3] ARM: dts: imx6: phycore-som: fix arm and soc minimum
 voltage
To: Marco Felsch <m.felsch@pengutronix.de>
References: <20191129164859.15632-1-m.felsch@pengutronix.de>
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <ec29daf9-d87f-276f-2927-da66b153840f@phytec.de>
Date: Mon, 2 Dec 2019 11:09:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191129164859.15632-1-m.felsch@pengutronix.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 02.12.2019 11:09:57,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 02.12.2019 11:09:57, Serialize complete at 02.12.2019 11:09:57
X-TNEFEvaluated: 1
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrBLMWRmVeSWpSXmKPExsWyRoCBS/froyexBvMmqFk8u3mLzeLhVX+L
 VVN3slhsenyN1aLr10pmiw+7rjJbtO49wm7xYou4A4fHzll32T2eTpjM7rFpVSebx+Yl9R4b
 3+1g8uj/axDAFsVlk5Kak1mWWqRvl8CVMef6CuaCx7wVv9/3MDUwfuLqYuTkkBAwkTj3dAN7
 FyMXh5DAVkaJCd2NTBDOKUaJGXO6WUGqhAXCJdatWcwCYosIaEn8bf/PClLELHCeUeLyuwaw
 IiEBG4nOtRfYQWw2ASeJxec72EBsXqD4hNdTwGwWARWJmU+ngA0SFYiQeL79BiNEjaDEyZlP
 wOKcArYSfz//BrtCQqCRSWLvjm9sELcKSZxefJYZxGYWkJfY/nYOlG0mMW/zQyhbXOLWk/lM
 ExiFZiGZOwtJyywkLbOQtCxgZFnFKJSbmZydWpSZrVeQUVmSmqyXkrqJERg7hyeqX9rB2DfH
 4xAjEwfjIUYJDmYlEd7rSg9jhXhTEiurUovy44tKc1KLDzFKc7AoifNu4C0JExJITyxJzU5N
 LUgtgskycXBKNTCGsE80nrzlyZGPB/7nOQv9UF0cuOiB+OlVGzp5HcKmsxTv+G7wVeJCcOO/
 SRFHV7u6TLx0Z5GETPP6tzEXksyNb61ctvbVZGnzd18SCopepr29Hh1y4X9LzvY5q60e3dlt
 8t1Kp3PW0TXnexfXH9i8UXvCVaaZOT38TNk5dyXLvVUDvmVU+L+IU2Ipzkg01GIuKk4EAI32
 g6OLAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_021005_675223_6BFB107D 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: s.christ@phytec.de, chf.fritz@googlemail.com, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, c.hemp@phytec.de,
 shawnguo@kernel.org, festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marco,

your proposed setting is only valid for the LDO enabled case but not for the 
case where the LDO's are in bypass mode. Is that intended? In bypass mode it 
actually needs to be 0.925 V min for ARM and 1.15 V min for SOC.

Did you experience an issue with the current settings or is this just a 
cosmetic change?

Regards,
Stefan


On 29.11.19 17:48, Marco Felsch wrote:
> The current set minimum voltage of 730000mV seems to be wrong. I don't
> know the document which specifies that but the imx6qdl datasheets says
> that the minimum voltage should be 1.05V for VDD_ARM (LDO enabled, lowest
> opp) and 1.275V for VDD_SOC (LDO enabled, lowest opp).
> 
> Fixes: ddec5d1c0047 ("ARM: dts: imx6: Add initial support for phyCORE-i.MX 6 SOM")
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>   arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> index 6486df3e2942..46d4953c5588 100644
> --- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
> @@ -107,14 +107,14 @@
>   		regulators {
>   			vdd_arm: buck1 {
>   				regulator-name = "vdd_arm";
> -				regulator-min-microvolt = <730000>;
> +				regulator-min-microvolt = <1050000>;
>   				regulator-max-microvolt = <1380000>;
>   				regulator-always-on;
>   			};
>   
>   			vdd_soc: buck2 {
>   				regulator-name = "vdd_soc";
> -				regulator-min-microvolt = <730000>;
> +				regulator-min-microvolt = <1275000>;
>   				regulator-max-microvolt = <1380000>;
>   				regulator-always-on;
>   			};
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
