Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D368E18A7CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 23:11:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JJc/rfjgzNwFnNoUprtI0fuZyQhgf0e/BaIKASD7W04=; b=AOUlFo7orX5RMA
	hhhptnOivBuMb748IkDMRGmcXxPVyJjqqOmpSSQYE5j/zctMpyIVSOOB5LC4ZaFDU8TOY+gBpNOEn
	08KcyBTO0kHNQ0uypyofsMU9FehhXiCkfDTTnvOkv0GLUFCZPR/3PE9p12ylVJ/KsxQAvTK/GAVDw
	auMTxuL4SPsBwRPU6vgDakeQ12dyILgsVoBSZw7wwLdRJ9PKwtWq++fBmBmZ/unHzbWyCevTY3zgk
	jMegDbysDcnrbsO0v8LOgNINSDhGUrrwM++ps03VX/lTnSUXRcurTfgYHjr3Azp8DY3/vrOxBNI1j
	gG+lDgbfQZ/KW1zhBMRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEguC-0008I9-MG; Wed, 18 Mar 2020 22:11:16 +0000
Received: from mail-eopbgr750059.outbound.protection.outlook.com
 ([40.107.75.59] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEgtz-0008Gn-0m; Wed, 18 Mar 2020 22:11:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FC4I5stk2RLRZJQN2BLDlkx3J2COzWLsh0/pHgKxaryRFIm18d0cpzj7MHkOtnvVfFEiGkCs59kbmrU4zoc5x5vgPYPGrR6ehp+IR2sbXGRJa/lOdJ7Bcrb6ffWU9p3rMAFwWBG6IbZ4izZW+tY9NWIY8IRLGrBxHgTV/fxsMmySMAJiymC0lHvyXoKD74l1ckmRVjJmo81D2XEZw22MWaZq71AdW3Kqlu6MezWgR8p7eEdipELlsWzhvxA7c6NMj8L6qu+CwbxZY+E8W6HyQaO2wB4XqXEtGsDxrCmxxL+sWFNtYKNEwKMbFkcPDpw72LQc6choyWfRDXMxYIWkpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=go/vcjLmvP1u+5ACtJC3EOXj+oGcQTyyQCblrOo76HU=;
 b=SOV3GaX4q1MwHo2xMpdvfcoInlinSWQQYLoC3isrDOdMrsRmkaym1Sqf2ucoXC4EAdoqwiR9XJTeldiTap8GOVQntjIiVbvhfLIttiMsh4Wi4wa/43MxbDX2dFpOH/MRmAZ/tledAw29k0TQ+APlhH+pd/fTMx/CwDP+c93gDq9rFJv/zeS5SCQGRncs0Zb9Q0uLVxT1BPqOzTjE75zNHdxAg90mqfIG44PLaQnnbpUlacKcFP1nbXCJgbfQWoqrt5fZm90EVaou/32v8El70t2t2x1wXF2PGEDuOtZ8J7EmaEyFWVKCWCwpacz81gz8Ejqt1ZG8pL6P6M+JNvxNqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=micron.com; dmarc=pass action=none header.from=micron.com;
 dkim=pass header.d=micron.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=micron.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=go/vcjLmvP1u+5ACtJC3EOXj+oGcQTyyQCblrOo76HU=;
 b=RvdYJOmQYA+15kV1D5+5Liix1BkmvdDpBFijbAAidswc2oUPvfN35jvtGF5cL1bQbHKkoNmM1VPge5EuLCGK6Lw2zXd4yxRCcDucamdkBoSgyZz+GGCXsE4flLaOIGINBvueD4vk1ITG76nXCYgFgQpgMcEI1P2qP7/3h8UgUys=
Received: from BN7PR08MB5684.namprd08.prod.outlook.com (2603:10b6:408:35::23)
 by BN7PR08MB6068.namprd08.prod.outlook.com (2603:10b6:408:36::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.16; Wed, 18 Mar
 2020 22:10:58 +0000
Received: from BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::589d:e16:907b:5135]) by BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::589d:e16:907b:5135%5]) with mapi id 15.20.2814.025; Wed, 18 Mar 2020
 22:10:58 +0000
From: "Bean Huo (beanhuo)" <beanhuo@micron.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.peter~sen@oracle.com"
 <martin.peter~sen@oracle.com>, "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>, "jejb@linux.ibm.com"
 <jejb@linux.ibm.com>, "bvanassche@acm.org" <bvanassche@acm.org>
Subject: RE: [EXT] [PATCH v7 3/7] scsi: ufs: introduce common and flexible
 delay function
Thread-Topic: [EXT] [PATCH v7 3/7] scsi: ufs: introduce common and flexible
 delay function
Thread-Index: AQHV/RGnPsqiA4EvtEeou0tltjIAGahO6EyQ
Date: Wed, 18 Mar 2020 22:10:58 +0000
Message-ID: <BN7PR08MB5684DA8C4FB4304CDAE39440DBF70@BN7PR08MB5684.namprd08.prod.outlook.com>
References: <20200318104016.28049-1-stanley.chu@mediatek.com>
 <20200318104016.28049-4-stanley.chu@mediatek.com>
In-Reply-To: <20200318104016.28049-4-stanley.chu@mediatek.com>
Accept-Language: en-150, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcYmVhbmh1b1xhcHBkYXRhXHJvYW1pbmdcMDlkODQ5YjYtMzJkMy00YTQwLTg1ZWUtNmI4NGJhMjllMzViXG1zZ3NcbXNnLTU1ZTUwZTVhLTY5NjUtMTFlYS04YjhkLWRjNzE5NjFmOWRkM1xhbWUtdGVzdFw1NWU1MGU1Yy02OTY1LTExZWEtOGI4ZC1kYzcxOTYxZjlkZDNib2R5LnR4dCIgc3o9IjgyMCIgdD0iMTMyMjkwNDMwNTUyMzY1ODI1IiBoPSJEWDJGckVFYmpaRVV1RVFzY2s1cERYRVl0aHM9IiBpZD0iIiBibD0iMCIgYm89IjEiIGNpPSJjQUFBQUVSSFUxUlNSVUZOQ2dVQUFIQUFBQUFCMjBFWWN2M1ZBWGpSM0EwTWlBNHNlTkhjRFF5SURpd0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUJBQUFCQUFBQTlybW53UUFBQUFBQUFBQUFBQUFBQUE9PSIvPjwvbWV0YT4=
x-dg-rorf: true
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=beanhuo@micron.com; 
x-originating-ip: [165.225.86.143]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cba44085-4b41-4600-d544-08d7cb893cb2
x-ms-traffictypediagnostic: BN7PR08MB6068:|BN7PR08MB6068:|BN7PR08MB6068:
x-microsoft-antispam-prvs: <BN7PR08MB60686D84E1CA98919A7C8CA1DBF70@BN7PR08MB6068.namprd08.prod.outlook.com>
x-ms-exchange-transport-forked: True
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 03468CBA43
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(39860400002)(136003)(346002)(366004)(199004)(7416002)(54906003)(86362001)(7696005)(8936002)(6506007)(316002)(33656002)(55236004)(110136005)(81166006)(81156014)(8676002)(4744005)(55016002)(9686003)(4326008)(71200400001)(478600001)(26005)(66476007)(5660300002)(66556008)(52536014)(64756008)(2906002)(66446008)(66946007)(76116006)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR08MB6068;
 H:BN7PR08MB5684.namprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: micron.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IIqAvuigpFmNvdL0ij2tUSPjCADACWDOu5XU7WW8eVsXw+oFRxlPooZ7vA5wwlkDzaPI5GaKgjwEFfIWHxRBQCNK0rUTyrDv6xTkxeTn7JQbgg0WyMbV38zKaa3cRnAvnAy7N2Mb5oBfZvqnVRUFN1/mBq4hqJ24fpfQISZJL/nkiKXigXBg3irqZJkT4YHBbOp4RdmDuVkEcaeJMswQT9cWqRp9mjdr6cUa+bY36HGLqM4bSpP07CIZx0YJzpuZmXucRJOfzpduuL+AP6BfFtxs1zxGP9FcLXjI2MiMzpr+AgAa48i1CNsQotLnyGRXFLEY7UZf+goSNbwtBz6YW+UDzOPVsSQNx7gcGAbYns81WY5o+2CotQVDG5J8mzShrL4d91WwNp2I5zNvyd2uauqKEzS1I5mSZ5RtaNBjj7x9w/vAVBj0TE/rH8fRyqxt
x-ms-exchange-antispam-messagedata: OIe5Mtomfad8gWM8IcNIT832OfApL/tlGsdoPIKtm6Q1AgAlrTS1ymCVfehSxDxE7zzRYqh7sF2GpYUurlbpGVx4DU1hpmyGeDYmQTf57tkQAJCguUoluuDhFz0X4+U4yrua+vkB28SqJT+6k9LX9w==
MIME-Version: 1.0
X-OriginatorOrg: micron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cba44085-4b41-4600-d544-08d7cb893cb2
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2020 22:10:58.3886 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f38a5ecd-2813-4862-b11b-ac1d563c806f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nI483cqyW9nl0yQ0mJobtnpRJTr2PZiQNx5vm1/XIQ9Jyerx5h3hT9BREhpq+rEIT34CH0YgySYK8qR/I1Q4eA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR08MB6068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_151103_137793_651EBEAA 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.59 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Stanley
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c index
> 314e808b0d4e..a42a84164dec 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -597,6 +597,18 @@ static void ufshcd_print_pwr_info(struct ufs_hba *hba)
>  		 hba->pwr_info.hs_rate);
>  }
> 
> +void ufshcd_delay_us(unsigned long us, unsigned long tolerance) {
> +	if (!us)
> +		return;
> +
> +	if (us < 10)
> +		udelay(us);
> +	else
> +		usleep_range(us, us + tolerance);
> +}
> +EXPORT_SYMBOL_GPL(ufshcd_delay_us);
> +
In this way, the callers of ufshcd_delay_us(), can directly call udelay() or usleep_range(), what is exist meaning of ufshcd_delay_us()?

//Bean


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
