Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC9DFBCD4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 01:04:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	MIME-Version:Date:To:From:In-Reply-To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AhnUVY7bb9888yMFDtaqbSSBfUpd7DBjIO2352Jw8yY=; b=dVf0pALXVeFzDU
	8QxsO9Tyt7nrI6zxlnCalDa2pSAhXQfwEAI4SHkZy341hVPrWEUh1kgPz4adJu+6fTrr87QT70uzD
	2/02HOcnsfWwvU2y5Ej4B/+5J2kuxADmKMccK8nHpEAxgxQ63y92L2VpYsG0JQTutTszk6D/xJ/jz
	uW1XqDixeZnJdh/SDFTWVJr1wmdIBdal7stsJWSU77pVCRlqEADeu6x8bC8B8ryBxYgJI5GMzmO7o
	4UZdZgdka59o03N0iWHcE9+0cq1obiI9kgZX8JXZqaGaIj6bdcE1T4aBPvZtIdgkekCOU2a46tEb1
	0ITgBieAHnP9Anp4yKMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV2cn-00063k-W1; Thu, 14 Nov 2019 00:04:37 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV2cY-00063E-0U
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 00:04:23 +0000
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 xADNuS9j135154
 for <linux-arm-kernel@lists.infradead.org>; Wed, 13 Nov 2019 19:04:20 -0500
Received: from smtp.notes.na.collabserv.com (smtp.notes.na.collabserv.com
 [192.155.248.82])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2w8utg0ce0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 13 Nov 2019 19:04:20 -0500
Received: from localhost
 by smtp.notes.na.collabserv.com with smtp.notes.na.collabserv.com ESMTP
 for <linux-arm-kernel@lists.infradead.org> from <miltonm@us.ibm.com>;
 Thu, 14 Nov 2019 00:04:19 -0000
Received: from us1a3-smtp06.a3.dal06.isc4sb.com (10.146.103.243)
 by smtp.notes.na.collabserv.com (10.106.227.105) with
 smtp.notes.na.collabserv.com ESMTP; Thu, 14 Nov 2019 00:04:10 -0000
Received: from us1a3-mail228.a3.dal06.isc4sb.com ([10.146.103.71])
 by us1a3-smtp06.a3.dal06.isc4sb.com
 with ESMTP id 2019111400040938-1142723 ;
 Thu, 14 Nov 2019 00:04:09 +0000 
In-Reply-To: <20191113155237.30646-3-i.mikhaylov@yadro.com>
From: "Milton Miller II" <miltonm@us.ibm.com>
To: Ivan Mikhaylov <i.mikhaylov@yadro.com>
Date: Thu, 14 Nov 2019 00:04:09 +0000
MIME-Version: 1.0
Sensitivity: 
Importance: Normal
X-Priority: 3 (Normal)
References: <20191113155237.30646-3-i.mikhaylov@yadro.com>,
 <20191113155237.30646-1-i.mikhaylov@yadro.com>
X-Mailer: IBM iNotes ($HaikuForm 1054.1) | IBM Domino Build
 SCN1812108_20180501T0841_FP62 November 04, 2019 at 09:47
X-LLNOutbound: False
X-Disclaimed: 46159
X-TNEFEvaluated: 1
x-cbid: 19111400-9463-0000-0000-00000173B243
X-IBM-SpamModules-Scores: BY=0; FL=0; FP=0; FZ=0; HX=0; KW=0; PH=0;
 SC=0.40962; ST=0; TS=0; UL=0; ISC=; MB=0.002686
X-IBM-SpamModules-Versions: BY=3.00012103; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000292; SDB=6.01289727; UDB=6.00684066; IPR=6.01071925; 
 MB=3.00029520; MTD=3.00000008; XFM=3.00000015; UTC=2019-11-14 00:04:17
X-IBM-AV-DETECTION: SAVI=unsuspicious REMOTE=unsuspicious XFE=unused
X-IBM-AV-VERSION: SAVI=2019-11-13 22:35:31 - 6.00010644
x-cbparentid: 19111400-9464-0000-0000-000049232CB6
Message-Id: <OF20F73C7F.F32D5A9E-ON002584B1.00836403-002584B2.0000614A@notes.na.collabserv.com>
Subject: Re:  [PATCH 2/2] mmc: sdhci-of-aspeed: add inversion signal presence
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-11-13_06:, , signatures=0
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_160422_173961_1C2680E8 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
 linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/13/2019 around 09:57AM in some time zone, Ivan Mikhaylov wrote:
>Change the default .get_cd callback. Add inverted signal card
>detection
>check.
>
>Signed-off-by: Ivan Mikhaylov <i.mikhaylov@yadro.com>
>
>diff --git a/drivers/mmc/host/sdhci-of-aspeed.c
>b/drivers/mmc/host/sdhci-of-aspeed.c
>index 8962f6664381..8eded8a6ed8d 100644
>--- a/drivers/mmc/host/sdhci-of-aspeed.c
>+++ b/drivers/mmc/host/sdhci-of-aspeed.c
>@@ -31,6 +31,7 @@ struct aspeed_sdc {
> struct aspeed_sdhci {
> 	struct aspeed_sdc *parent;
> 	u32 width_mask;
>+	u8 cd_inverted;

The mmc core/host.c checks the device tree and stores the
result as mmc->caps2 & MMC_CAP2_CD_ACTIVE_HIGH

This appears to be accessale as sdhci_host->mmc->caps2.

Please reuse this bit like the other drivers.

> };
> 
> static void aspeed_sdc_configure_8bit_mode(struct aspeed_sdc *sdc,
>@@ -143,6 +144,21 @@ static inline int
>aspeed_sdhci_calculate_slot(struct aspeed_sdhci *dev,
> 	return (delta / 0x100) - 1;
> }
> 
>+static int aspeed_get_cd(struct mmc_host *mmc)
>+{
>+	struct aspeed_sdhci *aspeed_sdhci;
>+	struct sdhci_pltfm_host *pltfm_priv;
>+	struct sdhci_host *host = mmc_priv(mmc);
>+
>+	int presence = !!(sdhci_readl(host, SDHCI_PRESENT_STATE)
>+			 & SDHCI_CARD_PRESENT);
>+
>+	pltfm_priv = sdhci_priv(host);
>+	aspeed_sdhci = sdhci_pltfm_priv(pltfm_priv);
>+
>+	return presence ^ aspeed_sdhci->cd_inverted;
>+}
>+
> static int aspeed_sdhci_probe(struct platform_device *pdev)
> {
> 	struct sdhci_pltfm_host *pltfm_host;
>@@ -183,6 +199,13 @@ static int aspeed_sdhci_probe(struct
>platform_device *pdev)
> 		goto err_pltfm_free;
> 	}
> 
>+	dev->cd_inverted = 0;
>+	host->mmc_host_ops.get_cd = aspeed_get_cd;
>+	if (of_property_read_bool(pdev->dev.of_node, "cd-inverted")) {
>+		dev->cd_inverted = 1;
>+		dev_info(&pdev->dev, "aspeed: sdhci: presence signal inversion
>enabled\n");
>+	}
>+
> 	ret = mmc_of_parse(host->mmc);
> 	if (ret)
> 		goto err_sdhci_add;
>-- 
>2.20.1
>
>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
