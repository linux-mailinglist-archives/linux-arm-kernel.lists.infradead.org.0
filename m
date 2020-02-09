Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A2115698A
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Feb 2020 08:49:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qlM7kUuNDaDEn8MW2WO7Iq2JmP4cp0GcGgI/Jg0+1Rc=; b=XQ0BhQNzS+0zuL
	rlVzOudPDMhTIObIc7D1Hihyf+KE4z1T81wbmm7cB9mDGuYps6qNADtDk9LBRwqoIkg0X+8RuVyNH
	oV4q0JpJvtACndllxiSpYrxceyaT1q71ShucKiVUmiOovgYRzXAk/Ne3q/mcqOe2B9/q0v7TN3Rcl
	/jSGfVtkSHfDpHdoNH19ewPCkYecUILJRaFyAfa9iXO6Egqji/mvv/DFokjxgxGQI/Si9DY8+gQvy
	dOmIYO9J8LlO2QDdemzgZXcKctOX/H57ms8v2gORzO+esRbe7K+PJPxHhXluU/yAFFJItPWQ01Jxb
	dkb3ABY8aKKv8C7lb0XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0hKr-0004Yv-Ga; Sun, 09 Feb 2020 07:48:57 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0hKk-0004YV-PO; Sun, 09 Feb 2020 07:48:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581234551; x=1612770551;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=At9kaU6dhvsAg8nH3p10caC+DBQibDul+NDdCuPbgWk=;
 b=Xdf7emLADl82n7VL1VoQF/a2PJ8eJ2toMPo42xsHGql0AW6R1foUScXe
 s0O67tCpNxFK3PrFCyqMzxQmuhLW5IGTsS+hy6j3WTwiRosmWzbX/Q2Ni
 8TuYW8a030J95lZegHKxKkMORfnbEu9XBeo7k+Z7tiagrCv2uYTCsV7BJ
 u3xgbTwxzpY4Ysiqvmm6oVQwe1JH8B/ooXULWknzx/f7UQk7ReOWWRzVT
 YMpEGTly2AVog4ZrNekOPARVUEltpNM0Jr9TCrRbrGfelgAVqD5KLXshq
 haJeWB3o/6P9q0p5K3rj9DYttDkmMAw68dvDi8CGgQkoOumeyle0zGgCd w==;
IronPort-SDR: gGtsDolP0TGrEwxIr6HUpTE5yD1U8yv8M43ylMSS1x09rCYdulEhxLVRfDtAMzKwhiEh0DyAZ0
 owb95LrAbkqr4Xg6Rq1SFf+XOXiWklIYODebkZn1pebcn2kIT5tH0cWbV7OPuS9nJbZCIPjT6e
 RC98bnlAauheN4JhM6+TqNEVIG14HOTkPGpmcgm4GZv8zzD7Btgy0ZbGmE82d7s2Bbbccwd9Og
 u2hA4Qz9quE6EANIqBxx7yx7VsmWNuCVNiP2HCf3lvVU6Np0RRptf+wDPg/9wKeJ9080TVznkg
 q2M=
X-IronPort-AV: E=Sophos;i="5.70,420,1574092800"; d="scan'208";a="231219297"
Received: from mail-bn7nam10lp2109.outbound.protection.outlook.com (HELO
 NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.109])
 by ob1.hgst.iphmx.com with ESMTP; 09 Feb 2020 15:48:55 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ND/DEUcT7pQBN894IVly6txf+I8fm73a6uJtMthhkwneX1K4vpUgILqk5B9VHot42vJs5Z64qdXMzzF/dORErV9TV1vMj2/dutkZNE/UlxaXIp2MwuXICTBq6qNcFerfRnBY2S7an/CZXW7fb1W5WBBfoUxeyL9KWBYjthZh+cC9Tr0b7RMstThKgVEE4EyXjJ8hQNQPTRI2S4FLrU6uy4bSXDvkERDZQ+jdC6w6fOxWd5pxI3V0VXw3VcltGtpw/GcGA6uqQNPzkRTgmbeC+R0kKSIrEr0/vefeNRuqo2yLB0V/9wRlEf3OhWsKzwcdvAe1BV+tLRE1r0InESyB/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AGESSIVYuSZhh1/v9pO5zFVMaqah/JUohDbv7uUfDhs=;
 b=QBru3cryp9Z5/sOTBZCxR09UEPwRFH9cWvxfzsnvVgvhf7FaaE4FskLx++aF/ZdETF9WVt945dKXKWMDgTWUFkx5mER5JPL48qMA4Dou1/nOAIWaQMVt+fpztQKG91aBQqty4uY1mmWhrcq5ApKE/X1j+KXEqzLtXj8JsoV1zKNGwS3Od3xOZhfn7QbLb5d//KkVpBgrgsZ8n/X4zHI/zyLM6VP/xJn7J6Eupeg1KiidfKowXfZEcDOzXtnjUsLwlhunIeRsaZ1iype7uMjtHIzLAkS/PNVn67MmqKHEHed9xUuh3XBqrDt6ZLX9VR9UNUc6RjbRXJJ+DG+fdxqS3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AGESSIVYuSZhh1/v9pO5zFVMaqah/JUohDbv7uUfDhs=;
 b=KyX/AKCiZGRblSSVVt86d2PVEznknpRom54/671ppjyeO9sUBCSNy536JOdDI8tcy0gAOSWU+35eChYi0/oA3vUOfP1vx9smwcF4cZnczBtI3pXUUl9mHp1D2NIUdJA5uOCt+Bfi/e5hG9U05WnjZszy/L8AVufHgiGK1zOgqq8=
Received: from MN2PR04MB6991.namprd04.prod.outlook.com (10.186.144.209) by
 MN2PR04MB5726.namprd04.prod.outlook.com (20.179.21.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.24; Sun, 9 Feb 2020 07:48:37 +0000
Received: from MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::3885:5fac:44af:5de7]) by MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::3885:5fac:44af:5de7%7]) with mapi id 15.20.2707.028; Sun, 9 Feb 2020
 07:48:37 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Can Guo <cang@codeaurora.org>, "asutoshd@codeaurora.org"
 <asutoshd@codeaurora.org>, "nguyenb@codeaurora.org" <nguyenb@codeaurora.org>, 
 "hongwus@codeaurora.org" <hongwus@codeaurora.org>, "rnayak@codeaurora.org"
 <rnayak@codeaurora.org>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "kernel-team@android.com"
 <kernel-team@android.com>, "saravanak@google.com" <saravanak@google.com>,
 "salyzyn@google.com" <salyzyn@google.com>
Subject: RE: [PATCH 5/7] scsi: ufs: Fix ufshcd_hold() caused scheduling while
 atomic
Thread-Topic: [PATCH 5/7] scsi: ufs: Fix ufshcd_hold() caused scheduling while
 atomic
Thread-Index: AQHV3hnmgATiAPkOBk2rW7eA93U0SKgSfjAg
Date: Sun, 9 Feb 2020 07:48:36 +0000
Message-ID: <MN2PR04MB69919F988AA4F1B7BD36408BFC1E0@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <1581123030-12023-1-git-send-email-cang@codeaurora.org>
 <1581123030-12023-6-git-send-email-cang@codeaurora.org>
In-Reply-To: <1581123030-12023-6-git-send-email-cang@codeaurora.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f822112a-e7d7-4444-e322-08d7ad3478c9
x-ms-traffictypediagnostic: MN2PR04MB5726:
x-microsoft-antispam-prvs: <MN2PR04MB5726704F56CAE376CF0F864BFC1E0@MN2PR04MB5726.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0308EE423E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(396003)(376002)(136003)(346002)(39860400002)(199004)(189003)(8676002)(6506007)(33656002)(478600001)(26005)(54906003)(110136005)(8936002)(316002)(76116006)(66446008)(64756008)(66556008)(66476007)(66946007)(186003)(81156014)(81166006)(9686003)(86362001)(2906002)(71200400001)(55016002)(5660300002)(7416002)(52536014)(7696005)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5726;
 H:MN2PR04MB6991.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HcM50yhcU3R1FXDxt7ACLfAyV22qIUlTF9MQyi3/hkeFB4M3dK2ASJh8zqbIpOdn+7fXutfCSvojRgw5FvR1IYdI9txYBd1EWJ/ipjywLELjo6t1522CBaAHL4GuE6zqWCy+icgOIYM9lvR7xmvaQfpuaKWpUh6p2gQ0VwbQk5QM+aehDdSEgZ2SPjFAiVOeobHFvCFvwCLjwCxFW4vle4OtrFJ7RD1l3dUhagYFo04GpVR1YKrzbrX7iyOYAAY5yS19q3EQonaSZsHZnv4bTX+rhjrdWrESPZ8J2u5izm0KMZ/n5UD060fcjv6QdfC2JEikVEdtDUhXwDRCjEzwVPI7IGcW1ySSZUsJ7fO9nB3bajLNBH440hclSeJWDJGPpSiJwLRmSomSaGMQ3yq5GeGqfbAaMQEBnyJHu9Ki9qMhbJwm7k3PfctQfd3vum3c
x-ms-exchange-antispam-messagedata: JxiZLUeFm+9dFRGtRAXTjyQZNTuUpc7B5I8Kc1VunK/YFY/p+Ubp6VIZIBRQNEzYPYxr271NwBrbFLtgZen8zmYLeQGcKwNXUUsHNFwnJkcw6PPa22BpdZuu52D20lGes8aJq9V6EeNrsx05+v/m6Q==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f822112a-e7d7-4444-e322-08d7ad3478c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Feb 2020 07:48:36.8752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dI5cE8FmZagzBaGQ35IXmAFWNbKZl3R6Sj34BPJzgwZPVVNTaIqF/Nv45FvkHiCf7ExCdKxJVqZZOfGzbzl6AA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5726
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_234850_887274_8C0BAA66 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Bart Van Assche <bvanassche@acm.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Venkat Gopalakrishnan <venkatg@codeaurora.org>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 open list <linux-kernel@vger.kernel.org>, "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Tomas Winkler <tomas.winkler@intel.com>,
 Stanley Chu <stanley.chu@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, Bean Huo <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



You didn't address any of my comments to this patch.

Thanks,
Avri 
> 
> The async version of ufshcd_hold(async == true), which is only called
> in queuecommand path as for now, is expected to work in atomic context,
> thus it should not sleep or schedule out. When it runs into the condition
> that clocks are ON but link is still in hibern8 state, it should bail out
> without flushing the clock ungate work.
> 
> Signed-off-by: Can Guo <cang@codeaurora.org>
> Reviewed-by: Hongwu Su <hongwus@codeaurora.org>
> Reviewed-by: Asutosh Das <asutoshd@codeaurora.org>
> Reviewed-by: Bean Huo <beanhuo@micron.com>
> Reviewed-by: Stanley Chu <stanley.chu@mediatek.com>
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index bbc2607..e8f7f9d 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -1518,6 +1518,11 @@ int ufshcd_hold(struct ufs_hba *hba, bool async)
>                  */
>                 if (ufshcd_can_hibern8_during_gating(hba) &&
>                     ufshcd_is_link_hibern8(hba)) {
> +                       if (async) {
> +                               rc = -EAGAIN;
> +                               hba->clk_gating.active_reqs--;
> +                               break;
> +                       }
>                         spin_unlock_irqrestore(hba->host->host_lock, flags);
>                         flush_work(&hba->clk_gating.ungate_work);
>                         spin_lock_irqsave(hba->host->host_lock, flags);
> --
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora
> Forum,
> a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
