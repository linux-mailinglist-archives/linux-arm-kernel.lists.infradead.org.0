Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5BE1BD9DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 12:40:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m1d241JOdyxyp5BEykWFXakM5rWT7SoNO4I/wkM2HOU=; b=mGk8mrAixNuk/A
	QWawMquaqZuNJ+Yb7azhxyjq6oUkDLds1jlYPfKqJuObS2kfe0V/kqVn7JGAJ9eUcKjOG7LBzVfCh
	aSSUgF7dZtezkGCUJ6tJbsUWwrBiVAEcNk1SonMI86+GNPRp7wnEaj3DdWlxqwCTv6A2y7UKyAlAJ
	EXXDh6T/DtXr5ZDnf0L4qyoIOHh2gox62DUcgI/ek3dz/eqDRjg5UGL6DolYAQqhkhtWvT+nQmwnK
	UcMjesw5QRWjf5chTb4mZl45YNYUwznbWdXQTcCGWp6KCx9QtR3E1e5QJxw9QtOwcs32wUgXNbbyt
	9ywR/9Q/XPcAXT7hy0lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTk8m-00079X-I0; Wed, 29 Apr 2020 10:40:32 +0000
Received: from mail-bn8nam11on2061.outbound.protection.outlook.com
 ([40.107.236.61] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTk88-0004T4-7g; Wed, 29 Apr 2020 10:39:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UorJrUs4OFmvU5hG9pvaKCDtz8Rh1Eby3CPSXXpxvpo8uK9YPaRHFTHsSLMp3IthuR3HaZojXB9kRFLuFIM9+XXdTdvwKpXVN+R+J0tTgQ2zLx697V7Z0qTuOYBBuEYURUt3OPRujcF3Dx4522AOt+TOpSausv8nQbZ+NRq6DXDJJylh31r7UURaslVvoNDOeAuBzrB6aAbC3OaVC8mi9UQGT79KUvuHnkpHNtNaQ/5lu3dBKWDW+vtGVAKzrjy9JJEnZniiS5mh1QKFdWJRDDKerSEUvtHx++2uzUGnCZ4WzUop3JqtsWj+1uITZ3+ux4UBfQiJs+7oM8sFA0ygpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4dlbxv0UiZp39mFgTpWb+W2ktS+gFZ1x1aaqYDwEgC0=;
 b=coDYuV/oJFoC/oiDmMfVW0ZLNC0Y3vsJR4OdWdbd5lh/V3byRWJA1C0MbVqIHuCZIbGL5yAqe32O1TI1sHqgHHvErW7h0OE+DZgbl7jU1yIQR86Rfl1D2aorCYOtqdEAtNskt7d6DfKkZAynZDSe6CQ7Ntu2Sua+vBBUcUdv59ZsUfr9C0/cCiFt0S09A6B8nTisrsB3cBW/36nWba4DaUUsSXRkVzM02Px5zjVF0V78eR63ZCh8Zy349t+j4Eccxh7C5+o0bOyf9mbZw2ApFPur9RKEfRXuy2EklUVkDwK+UdzcPyJHx9kxICBXKcp34Xn76Nr24AHeNqdzuPW3vA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=micron.com; dmarc=pass action=none header.from=micron.com;
 dkim=pass header.d=micron.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=micron.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4dlbxv0UiZp39mFgTpWb+W2ktS+gFZ1x1aaqYDwEgC0=;
 b=Nyq5Pu9uza6Me08UqV0tfnQdK07553TmdE1rKNbGeloYAKgzxXLGkvUeCh5AD8IRkKmPhiT4YxGgQRncRoM9PUyj/cXs0MqxmZSDA9QK1ByZkNseYj3+5b+WqcENgAzVzQ3zI3F1JIc5AF1jz1gy1mRk2I0qiCuXULvvN64GEhc=
Received: from BN7PR08MB5684.namprd08.prod.outlook.com (2603:10b6:408:35::23)
 by BN7SPR01MB2.namprd08.prod.outlook.com (2603:10b6:406:af::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.19; Wed, 29 Apr
 2020 10:39:43 +0000
Received: from BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::9ca2:4625:2b46:e45c]) by BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::9ca2:4625:2b46:e45c%4]) with mapi id 15.20.2958.020; Wed, 29 Apr 2020
 10:39:43 +0000
From: "Bean Huo (beanhuo)" <beanhuo@micron.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>, "jejb@linux.ibm.com"
 <jejb@linux.ibm.com>, "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Subject: RE: [EXT] [PATCH v1 3/4] scsi: ufs: add LU Dedicated buffer type
 support for WriteBooster
Thread-Topic: [EXT] [PATCH v1 3/4] scsi: ufs: add LU Dedicated buffer type
 support for WriteBooster
Thread-Index: AQHWHU4js/KCzjn0Y0mn6kvIf9GJz6iP5o5Q
Date: Wed, 29 Apr 2020 10:39:43 +0000
Message-ID: <BN7PR08MB5684630793F03282E4C6F3D7DBAD0@BN7PR08MB5684.namprd08.prod.outlook.com>
References: <20200428111355.1776-1-stanley.chu@mediatek.com>
 <20200428111355.1776-4-stanley.chu@mediatek.com>
In-Reply-To: <20200428111355.1776-4-stanley.chu@mediatek.com>
Accept-Language: en-150, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcYmVhbmh1b1xhcHBkYXRhXHJvYW1pbmdcMDlkODQ5YjYtMzJkMy00YTQwLTg1ZWUtNmI4NGJhMjllMzViXG1zZ3NcbXNnLWI5MDUxZjdiLThhMDUtMTFlYS04YjkzLWRjNzE5NjFmOWRkM1xhbWUtdGVzdFxiOTA1MWY3Yy04YTA1LTExZWEtOGI5My1kYzcxOTYxZjlkZDNib2R5LnR4dCIgc3o9IjQxMiIgdD0iMTMyMzI2MzAzNzgyNDkxNjM1IiBoPSJ5d3Z4Z0JGbStYRXhBZXpVdkRSL0NSRFlGS1E9IiBpZD0iIiBibD0iMCIgYm89IjEiIGNpPSJjQUFBQUVSSFUxUlNSVUZOQ2dVQUFIQUFBQUR6VldWN0VoN1dBZWU1dk50dGp1b1A1N204MjIyTzZnOEFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUJBQUFCQUFBQWYzT0VLUUFBQUFBQUFBQUFBQUFBQUE9PSIvPjwvbWV0YT4=
x-dg-rorf: true
authentication-results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=micron.com;
x-originating-ip: [165.225.81.119]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c825b6a6-acf8-4ba2-4a39-08d7ec29a0c9
x-ms-traffictypediagnostic: BN7SPR01MB2:|BN7SPR01MB2:|BN7SPR01MB2:
x-microsoft-antispam-prvs: <BN7SPR01MB20E3FBB7A48688C9823C4DBAD0@BN7SPR01MB2.namprd08.prod.outlook.com>
x-ms-exchange-transport-forked: True
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 03883BD916
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tQO6dB3Rf7/YoqN5PgjWSjVumBdhqIdmAt/KMDFWumgX77WhAU9SrNxBSJlDsSJoh1LGRfdexWP1o0o/Pk60oxPqI2GRUMl53G66lXEHT5lmOm0I2OiYLOdKKb8zHwz12S460/A98R96fEQZMa8ZY9Zo8VTotOuruIL7VAIF2tw9OptE/viRg9U52JB/qjxn5OeYPg4YiAB6Kg/U6MTsms8HMJaK6uTZ8314PsQGmlIEdKDI8v7ufaAMFvalW5nTmw+0WiXoJdEpMATseFEG7/RcphR0SZzKPseERLExGxkrFbWBro7HIng6yvodHqXCHZ85u4LGiISobuxL61ePgkb8rGXdl3IqfGLf3XZFWzPjQxfxZ0wgnDkRD+DXX9yRXuyksND1SRgLEk4Hn5VQMOau9LIZdmmANMWioeeJIQ6vry+FtpL0QinxGBDh0ypv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN7PR08MB5684.namprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(136003)(39860400002)(376002)(396003)(366004)(33656002)(7696005)(2906002)(8676002)(186003)(26005)(6506007)(8936002)(71200400001)(86362001)(478600001)(7416002)(4326008)(9686003)(55016002)(55236004)(558084003)(76116006)(52536014)(66446008)(54906003)(316002)(66476007)(66946007)(66556008)(64756008)(110136005)(5660300002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: prMJlFOy4tWXyE6/uo5XiKa3pSWfrxZX3m0E5qaMW0+McYvEeA1DPgZ99f2F62xvWJWV7fu0kh9uTTQQOKtNV7de8tOuABFSxXe1joAQKxaFadqytBjhM1XhrmF8pL/DmA2GSDZlg7mKQr4nc6pIDFBDla7ArayoblohrLzZvuZP380XWyeVMV6GV0lCdNQcDUx7YpB/JVmMssKlWRKtR+zYtuoDJazB8nmyt07zf70Icxt5yNMyevQHNJGqqAYM5Ygdni/HiO77pAA0VCH9LLzXtNbSlntMkHH09a7VvyqduM8/Y3kIv5uxUK7VFFWcHP083nBTTTEXuw5tiDGf3hPSB9tqhv8CCumxZEzc/KePBcnnfUhOF0vQdXkO1whMaJXWv5DAS0nikfjT1L1Uu5y8kaHejTFen9dtV49D9dkf+3D21t1gptsChUUp9yHRMb6IuFQTR8q30zrEBWp79P5mB0LK/ABOHe5VFIKGxl3KEV7P9ER/MQ0uwEd0w1s0XAhqSz0rnXBjPJ3GlX/8VzIhXw6ko+i4/qdzDKNSpvIuQoSdtoYPTr2Pff0NOKLdnT3se3uIx8zBVKwKVb9fJmVPdlSSMAyXx5ieLpOD01wtQ5/OHQ6RVhweF9wgMQ2uIb/fhBNYhNyIhKFixni5bsG1y5Qgg/izZBiOmKlC2oPWs26VzHHvxH6ekRMBGV7E7rQ3cyvkCeyLpAuOC348Fr3xBJHiDWLz1pAKEyjmgWx0zrwnq2vADLnwQ4LyuzqxnxbAE64vsVnJfYYfxY9dIZP3CYk6m5zYTmle0MyI8yw=
MIME-Version: 1.0
X-OriginatorOrg: micron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c825b6a6-acf8-4ba2-4a39-08d7ec29a0c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2020 10:39:43.0815 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f38a5ecd-2813-4862-b11b-ac1d563c806f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k4nDGO+qbebc+NzePGYf2k6GJayohoBJJdumNBzSri+Wgv9EbqnvCPEpDfGy5jAMRDF2T3KidT2OdstcN9uNsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7SPR01MB2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_033952_515473_DFCFA412 
X-CRM114-Status: UNSURE (   5.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.61 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [165.225.81.119 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.236.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "bvanassche@acm.org" <bvanassche@acm.org>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> 
> +/* WriteBooster buffer type */
> +enum {
> +	WB_TYPE_LU_DEDICATED	= 0x0,
> +	WB_TYPE_SINGLE_SHARED	= 0x1
> +};


Hi,  Stanly
WB_TYPE_SINGLE_SHARED might be WB_TYPE_SHARED_BUFFER.  I think,
we should try to make the name definition correspond to Spec


thanks, 

Bean



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
