Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4831B04EB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 10:56:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jiN01kulSyLsvWwW3fHUPpY5CKihrORiNytzbbHtfmI=; b=qxhuXJF31mvkJq
	+4feTDVz3zfHPPzItdnTTXQi5xkvAbtp/ldPOSzkSo5U5es0s2GktPrEOU3vs/Sq35ClT0wHdD7TH
	VWODW1A4TSLe3+vsUjDf/daUDhTRnt63B/VXtvO/CtrGgPzkTXX8cZNk6T/22svTKsJUhwoMFkwVI
	n7yb4wmORaEQvmgAQX5f1RimKZqiILfVMkZ5JKzhLzS1R2fQJeT7khKhoyUZBCLbZC6dd2g6HB/P1
	8ie+amKpym0WRZDAn4ww3jD9V+1JgzfCsl9aPvVLiyaCjhVPUAO8LS2IhN8k92BgVDz0oElTJVqEi
	iYujenC4ovWf6bGD4tYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQSDd-0004Y6-5u; Mon, 20 Apr 2020 08:55:57 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQSDS-0004Wq-8y
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 08:55:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1587372946; x=1618908946;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7ENCpieTz65E3lirF+44Xaw7VKX5VeIuFJZo3xfPyHM=;
 b=eZTkOKTqW3eEUY+h4tuWCpP0WgLmFtpD+xKy5Mi5A0PYNUk954epxEZs
 sh+VvqSVfPXTMrqbE5eUJ/niFGJVregnJCdzsekSSaHjP6ElV7X3U6RRC
 USQiMzexsqjX+/lOb48I3liwP+PslwgUIChPRtfxDHxjiOW5IgtLEfmVt
 juAOEu3Qa/9Ib8SMB+IVuE87XDOo6x9sFC4jLTMnKbMaG3oCzOk5fxFA8
 1Q/fcw2nnKghkhHQz2ygClplLi1a2nTyJydl0B58gCQtgUW/KbD4JyZ+f
 ZbUNRUhKPBZjQ5w8XGsNXHkiIJ0wwN01aGExHsRwxcMChBFXQsKcj0Mkp Q==;
IronPort-SDR: CZNVYqYLHZvCCa36i7y0L1IWrXI4znSYJMN73D6DxZTfTI8+2NTDumciNnM+gEcm4EGqnQij8F
 +b0qHzk1wf2H2SDIOpAi1aLqkATdj4TgPNdWg0K4yyi6HXKv+1IIaMUUht16SVZBA6YLANxByS
 Mt5sYaiZ1AOQPqbpNGBqCuLAHeUm4tKcyiEwq0Oweh70jwOH56BhPnyJ3sHJmnyiOpM56My2NM
 vDjtl++Y571jQ5OvCDaN3YZXGkuTNdu7tA+Kk34k+Gy7wDVFN1rQUZkULLMorCo7dKfJO54lW6
 AwE=
X-IronPort-AV: E=Sophos;i="5.72,406,1580745600"; d="scan'208";a="136004593"
Received: from mail-bn8nam11lp2169.outbound.protection.outlook.com (HELO
 NAM11-BN8-obe.outbound.protection.outlook.com) ([104.47.58.169])
 by ob1.hgst.iphmx.com with ESMTP; 20 Apr 2020 16:55:44 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KHC5dMkAY5zWKEmdUyJ5cXcwh8PfyFYz2FY00Qw6AyLvvJ0Rvf7iE0j0k1OS3EXeO8qe3AU/G+P0yxwbYz4Zl/1xN3U/KDpd8vLsAXvFxui5S05TxTqJ9cQgw1slsJPJo0oxugygdTOq0y0aOuGDmqXje2SjmO4RNerotkWkMhNcTXb5c3WpPhqp5/5PM/BCXBIOWT3zK+y+7JHNJEouY+bGYmtGeWIPSxNlAFaKw8yA27T0RVNmgfotSsmT8DGKuZs049zGvllRAGKUUCm1IQLxUBuz9iQpRwbqOjEtmLrQDakaAGkI/hUKOimSHXRXlaR/UtO/yKlrzIBpOADfUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7ENCpieTz65E3lirF+44Xaw7VKX5VeIuFJZo3xfPyHM=;
 b=MFaTlTUen8USkQwfKi81AUb+TAx8GeeXkm4yECpo+mC0v1QuNcPdEB9MBMLw3xFFMKgGKsE1tAl22TkP1CyAgIX9UXDWSo3LJzNqIEXFGy6935f68B6xWYmlYXcsTR/+s3NDiWla9cJh3xF21AFUE3oyJOnN8B2+3GP3QEnNYWXieYkmpnWHO/HvR1dLNWWtoS1nG3oiYlnmhwsQw242uPn2jNRzugUs+53GDWvmFEsAS7/Temy7dERxa6KlTYxuEbKfhgpaQUFQBdkgi9W2Him4R9zI99HHTAOjl5a5swKKE3dNshxyHb805L/gp+OQfm27KVbEl0OO1sP+O1gC3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7ENCpieTz65E3lirF+44Xaw7VKX5VeIuFJZo3xfPyHM=;
 b=feZwAkDUSIsUHGyVC/VEJNkfExy0FEyOqoZtvIzzsBXf+61C61rbUD/Wf/6SHc6yvbim321P27/bUVNAGBdxYBfzje1E5WLThUUE/ZxIC0hbdvK+1Si3JyLCselZtZC2VynSeae58ooutL9A8nxPR3+izVVOJlTlv02WX5/JZXQ=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB4733.namprd04.prod.outlook.com (2603:10b6:805:a5::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Mon, 20 Apr
 2020 08:55:42 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b%5]) with mapi id 15.20.2921.027; Mon, 20 Apr 2020
 08:55:42 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Alim Akhtar <alim.akhtar@samsung.com>, "robh@kernel.org" <robh@kernel.org>
Subject: RE: [PATCH v6 05/10] scsi: ufs: add quirk to fix abnormal ocs fatal
 error
Thread-Topic: [PATCH v6 05/10] scsi: ufs: add quirk to fix abnormal ocs fatal
 error
Thread-Index: AQHWFOOBFbSRs7BAOkOiLBrzlbkq96iBrgCA
Date: Mon, 20 Apr 2020 08:55:42 +0000
Message-ID: <SN6PR04MB46408CF4DD05DB9B48DFE412FCD40@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200417175944.47189-1-alim.akhtar@samsung.com>
 <CGME20200417181016epcas5p2ee7ac86d743ceee9076690dc5b1e2f08@epcas5p2.samsung.com>
 <20200417175944.47189-6-alim.akhtar@samsung.com>
In-Reply-To: <20200417175944.47189-6-alim.akhtar@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0bc995dd-9bda-42b4-ea2f-08d7e5089b7b
x-ms-traffictypediagnostic: SN6PR04MB4733:
x-microsoft-antispam-prvs: <SN6PR04MB473356A7580FD048F7C235F0FCD40@SN6PR04MB4733.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 03793408BA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(366004)(39860400002)(136003)(346002)(376002)(396003)(86362001)(7416002)(316002)(54906003)(110136005)(33656002)(81156014)(5660300002)(4326008)(52536014)(478600001)(6506007)(2906002)(76116006)(71200400001)(55016002)(26005)(66446008)(8936002)(64756008)(66556008)(66476007)(66946007)(7696005)(9686003)(8676002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FTsXLKjHAJT9hPSO6Qa4TxXgWcCdtUaYG9j+Wp3gQPJdUlYxXnNXEV+PBSlX27hIXd++hr5TwuVy+yifUKrzYdRkS9xystEqxV+kAJnXgb/AutAeIQel+VSwGFRrWYT9G7B897xEOrsiYTb6g6zRd1PFhJTKQbAM7UIzBZbZRsBoN899zL4IXDU56bWvXzxOCuMHzftx3rp2BIIVf7rPaIY0JrSCbqIWPHxhAvokzy1U7yCEUZA6/zDPJx1ActDdTB6nU0s0IylNM5wtmRNmbNxqfWA4TyfAN8T5E+CHzis4TzJW0xFobNXgbpOZjr00MM9cCU+/kSf9wFzt/K0oxv/X64zxPLhYPKZoL7q8GzXJumQjnjvGV/j/bsp9ljCGhCBQi2pYzF3YmdBy6GrCd/MUC0D6XW5bIaN2/B50etfDUSX1tab5/PrWICtK3FbG
x-ms-exchange-antispam-messagedata: f2peM62ZgmZuvIQqC2rivO9WXougPxhAShMrfrUSPAnMUmD4SeIgVfZ5k8pBwID0rBLxUNCrWnRmsslO5kG/UOboRNUqqshCUlqDJgny2sYmAWzyHcX+aMBGBD8W2tb5ZpYcy2QkPzLX+bMdUM4JZw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bc995dd-9bda-42b4-ea2f-08d7e5089b7b
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2020 08:55:42.6243 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8hu7uNwztGfTHpul0IKvuqCVMxSMCazodP5I2H9Ijg1V8xAFoxzzZJ+DdkFScecYrkP0LS5PzUYj4kWnUOsTEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4733
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_015546_349983_952854F4 
X-CRM114-Status: GOOD (  21.30  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [212.25.79.133 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "kwmad.kim@samsung.com" <kwmad.kim@samsung.com>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "stanley.chu@mediatek.com" <stanley.chu@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> 
> From: Kiwoong Kim <kwmad.kim@samsung.com>
> 
> Some architectures determines if fatal error for OCS
> occurrs to check status in response upiu. This patch
Typo - occurs

> is to prevent from reporting command results with that.
> 
> Signed-off-by: Kiwoong Kim <kwmad.kim@samsung.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  drivers/scsi/ufs/ufshcd.c | 6 ++++++
>  drivers/scsi/ufs/ufshcd.h | 6 ++++++
>  2 files changed, 12 insertions(+)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index b32fcedcdcb9..8c07caff0a5c 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -4794,6 +4794,12 @@ ufshcd_transfer_rsp_status(struct ufs_hba *hba,
> struct ufshcd_lrb *lrbp)
>         /* overall command status of utrd */
>         ocs = ufshcd_get_tr_ocs(lrbp);
> 
> +       if (hba->quirks & UFSHCD_QUIRK_BROKEN_OCS_FATAL_ERROR) {
> +               if (be32_to_cpu(lrbp->ucd_rsp_ptr->header.dword_1) &
> +                                       MASK_RSP_UPIU_RESULT)
> +                       ocs = OCS_SUCCESS;
> +       }
> +
Not sure that I follow what this quirk is all about.
Your code overrides ocs by open coding ufshcd_get_rsp_upiu_result.

Normally OCS is in utp transfer req descriptor, dword 2, bits 0..7.
My understanding from your description, is that some fatal error might occur,
But the host controller does not report it, and it still needs to be checked in the response upiu.
Evidently you are not doing so.
Please elaborate your description.

P.S.
The ocs is being evaluated in device management commands as well,
Isn't this something you need to attend?

Thanks,
Avri

>         switch (ocs) {
>         case OCS_SUCCESS:
>                 result = ufshcd_get_req_rsp(lrbp->ucd_rsp_ptr);
> diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> index a9b9ace9fc72..e1d09c2c4302 100644
> --- a/drivers/scsi/ufs/ufshcd.h
> +++ b/drivers/scsi/ufs/ufshcd.h
> @@ -541,6 +541,12 @@ enum ufshcd_quirks {
>          * resolution of the values of PRDTO and PRDTL in UTRD as byte.
>          */
>         UFSHCD_QUIRK_PRDT_BYTE_GRAN                     = 1 << 9,
> +
> +       /*
> +        * This quirk needs to be enabled if the host controller reports
> +        * OCS FATAL ERROR with device error through sense data
> +        */
> +       UFSHCD_QUIRK_BROKEN_OCS_FATAL_ERROR             = 1 << 10,
>  };
> 
>  enum ufshcd_caps {
> --
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
