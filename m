Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07ADDAFAF8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 12:59:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zYwBWXjq6iDUzHqycHM3wbGohVQQEqI2Bfx8h9a/LbU=; b=R7V2CtYQR3gyFA
	NtcjavogkMxubyV4NI4ivmSVbP7OZ7WQHezBlX7jZRVwJhuxEkd0WHvsT2SWWbhFb4+gXtQxX2Iwf
	/N6/KkuWJQP97pWICRSWk9vJRuDnQFGJOe32APxQV6fyky68qNwakEEwFNNQCJ4QF93kvPLJ60TcS
	BErPoIiLUbh5t147AnuVlt9wbIa1aeuOpW/2g+qLdszkgIlLlwUjmU6V3nrdcucmNXulEO4KvDYxY
	MPC+Uk71FSx0CPSoXEQv5WVdjAoU/MRCLuw2jtnrSX98zHrDYJsZxgIWchutqMgq8CyvpsKW8uwfc
	HmtEuOqOpTPJCoyCdP2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i80LE-0000bc-23; Wed, 11 Sep 2019 10:59:16 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i80Kj-0000ZX-Eg; Wed, 11 Sep 2019 10:58:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1568199525; x=1599735525;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aSRAPvoImxrBdDlO9eAb8jRWYPBwBmtRBBBBiMiK6Os=;
 b=IjzVgdyMqYxzVKODxZ2L58PeyNZQxNFaUh7Nb/YQiDAqNEO2aK9QMgX2
 LE+mG29/COsQtsIb1/effMnnUsUQ8CxOcotIpvE71uq33M7lFMije8O7s
 iX4T1XkAwOUc+DDpVzxtfjQcEmzjR2z7y9u7oaP+MOI1Ge1J1soduPBfJ
 GMX4A0Vdpd+bU1XL8px0sryt2zm55ESmKTykKXyqmZzw0vH+CWs1bmQU0
 uoE61cehe7hI+XHoFpqjAjfolPxNpG25IVuyrNkitOQ3DvW/ktRTCJKlT
 UpW3LDSBX6zHKnPtYIOwRNNZAl1nAj2HFkxejNBGiU1T1Dn/hACWbWx9h Q==;
IronPort-SDR: v7KA+uZ8q3QbIQR3DEQXVF8SAGan6OId7pX9BZj8HhJWD0LO5tIOIaHwm0NQy0he0q5kCc3nA4
 qVW9N+MennjciNtC0YAdBeTO9qnbSolZbERq2zKKeI4s0JNwALGV9FRZ55Ezm6U/yxXp8QAFNB
 T5GUoXx4fjaT8GiFdKf5kqWmsrkR8E925Qij6QNLMjU2qAWhScwb9NVLoILRR9BPOkbbFMLrHL
 k5A8rDAmEotQCFgD/2IhTqkvlOjgfJugl+UeSW1KcJS7k/BsfCtLhlSQVNiCwd1a1EfWGFCsYd
 hHs=
X-IronPort-AV: E=Sophos;i="5.64,493,1559491200"; d="scan'208";a="224767127"
Received: from mail-by2nam05lp2059.outbound.protection.outlook.com (HELO
 NAM05-BY2-obe.outbound.protection.outlook.com) ([104.47.50.59])
 by ob1.hgst.iphmx.com with ESMTP; 11 Sep 2019 18:58:41 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NJYY0ckbtusIRKE0i/U/+aDCrSm7wWGFbbHa7bbGBUFghRSZ+MfQbIFM6s8Xk2nRcGpR4WLwKxiQN9+EMjohn7buhQRC1HxQC1/e4U1yvj/9Z5FEzKRnz2manQTbrOwjszxFeT+E5gOEc2h6/+lS65aAdXg7m5Ru5cMz/ow7dk8laKJfYTDT81APXdg2QzMcr4e6rE5+WBNFabvrHVhEeUQtaahdGO+7rQeyhghrOcT0gsTYd5BrNbK3cs+BDRHKZOigPhVqndbCoCO7l3YVbNrSL1sZUpROVNZ3iNN5hAec06DRgf/0J9YCKomBPAhyqf/bErt+Ru3pQD+rDqtnpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AJ+ss0fLQiwQcyk/CvdwdaMXbGB4aGjA+lzY1r+vkXg=;
 b=jmnobwmEEWeoh6ebfAjTm7Ce8tW6jSprGqdFf9Dpylc17/I+7c9vlxzTW0X8dcwr0UvqrAN8BsPs1IBgMTGh4cMqrd+r+H/UQWq8HakJZLNHjgeDtUHJZGyw9pLMSmRhaIBAibgJ3FLJBUWRwR+QAIWF0xJtP6NxC5In27XsOOPGEZgQOfMp8DUCc/rU1BL1V9Nq2lOn78Cz6gW4j4axv1gTNLKWgjRhSWboMEFg44SdLEWoPQcN8WUmGQh0VQJgJbV9RhxN0bI8MscQPLoJd3vFmu64oxsj5VkF4hjFJ7Y+GBDyX1CKNLSR35wumtSwuoCC32B+6TJbYtgrt3QBcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AJ+ss0fLQiwQcyk/CvdwdaMXbGB4aGjA+lzY1r+vkXg=;
 b=eUTXQcC0Ta/AZK7eFPKxJXzDbOK1QK/SXReCJY35qEpfGoGmv2xkJ9N5Eh4FUFqzxFjKNR5xP10jontBhmXLEtUYrk23AMbdaZxRZkGGohbuhSCNJbjEfIRZCNIFN+WhYJY+O9Q0XDtbn5wxcQFhn9UmoLVZI6oJXY+c4GGXI8M=
Received: from MN2PR04MB6991.namprd04.prod.outlook.com (10.186.144.209) by
 MN2PR04MB6256.namprd04.prod.outlook.com (20.178.249.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.18; Wed, 11 Sep 2019 10:58:40 +0000
Received: from MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::9c2b:ac1b:67b8:f371]) by MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::9c2b:ac1b:67b8:f371%2]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 10:58:40 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "pedrom.sousa@synopsys.com"
 <pedrom.sousa@synopsys.com>, "sthumma@codeaurora.org"
 <sthumma@codeaurora.org>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>
Subject: RE: [PATCH v1 3/3] scsi: ufs-mediatek: enable auto suspend capability
Thread-Topic: [PATCH v1 3/3] scsi: ufs-mediatek: enable auto suspend capability
Thread-Index: AQHVaIUfaMagE2Xcm0+QDfyXudWRvKcmTkCA
Date: Wed, 11 Sep 2019 10:58:39 +0000
Message-ID: <MN2PR04MB6991A6F223D9C711A3D00B21FCB10@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <1568194890-24439-1-git-send-email-stanley.chu@mediatek.com>
 <1568194890-24439-4-git-send-email-stanley.chu@mediatek.com>
In-Reply-To: <1568194890-24439-4-git-send-email-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b51b2ca7-621d-4a24-14b0-08d736a70117
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6256; 
x-ms-traffictypediagnostic: MN2PR04MB6256:
x-microsoft-antispam-prvs: <MN2PR04MB6256D8B81C122B49CC8DAC80FCB10@MN2PR04MB6256.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(366004)(346002)(39860400002)(136003)(199004)(189003)(7696005)(66446008)(66066001)(66946007)(76176011)(26005)(3846002)(71200400001)(11346002)(71190400001)(7736002)(9686003)(74316002)(6436002)(6246003)(476003)(486006)(55016002)(33656002)(186003)(446003)(53936002)(229853002)(305945005)(52536014)(99286004)(2201001)(86362001)(2906002)(15650500001)(66556008)(8676002)(76116006)(66476007)(2501003)(64756008)(8936002)(6116002)(25786009)(102836004)(6506007)(54906003)(110136005)(81156014)(14444005)(256004)(7416002)(81166006)(316002)(4326008)(478600001)(5660300002)(14454004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6256;
 H:MN2PR04MB6991.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: oAcjlwO4DDWbo/Vqzu3awyDp6j2TM1LXxLvihCpUOCeltip/4BVd9jzkN8SBQ9lEEV7Tk++mu39x0rIUJP4bbxeb3Aftac4nNAj9oV97G3TuQ0Lu+LZqE7lU8ULDzA6bGtqaCWykkCz3RCx1AhdWWP/D43SqDiZ5g4S/C8LBPavpWeguo0xsTI6oBkhMAwZKCDxQHyLdds8AmtJomt0PDeDoQJaI+QEaPF/LdcZznDXXhOJqDnPXA/u5BDOOvQMp37T5yXs1Zghop92aBANiXyQjoed5ZN5UdSuGdhpVi0L3wh+MbG8fT/16PZlFxvwWWT6Dg9VRItGAYbkwZ5eyeHDjIqHPbXu81FxTWcMKXBi2L25jvQp9dOweceeXbiwL7mnpoEXHFnFKLRJ/VNtgQUmawQJWvZromsL2DRZPCSw=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b51b2ca7-621d-4a24-14b0-08d736a70117
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 10:58:39.9560 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sWVUDxDp9S+y4+jMPrpGrgu/k9WzMSRwNhsBmp2bg16odv7/KlyFt0pVmgh3cm6huhR8MWptyP1SLAmpVCObMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6256
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_035845_850403_5BAF9B39 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "subhashj@codeaurora.org" <subhashj@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "vivek.gautam@codeaurora.org" <vivek.gautam@codeaurora.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> 
> Enable auto suspend capability in MediaTek UFS driver.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>

> ---
>  drivers/scsi/ufs/ufs-mediatek.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
> index 0f6ff33ce52e..b7b177c6194c 100644
> --- a/drivers/scsi/ufs/ufs-mediatek.c
> +++ b/drivers/scsi/ufs/ufs-mediatek.c
> @@ -117,6 +117,11 @@ static int ufs_mtk_setup_clocks(struct ufs_hba
> *hba, bool on,
>         return ret;
>  }
> 
> +static void ufs_mtk_set_caps(struct ufs_hba *hba) {
> +       hba->caps |= UFSHCD_CAP_RPM_AUTOSUSPEND; }
Even a one-liner deserve new line for its closing brackets

> +
>  /**
>   * ufs_mtk_init - find other essential mmio bases
>   * @hba: host controller instance
> @@ -147,6 +152,8 @@ static int ufs_mtk_init(struct ufs_hba *hba)
>         if (err)
>                 goto out_variant_clear;
> 
> +       ufs_mtk_set_caps(hba);
> +
>         /*
>          * ufshcd_vops_init() is invoked after
>          * ufshcd_setup_clock(true) in ufshcd_hba_init() thus
> --
> 2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
