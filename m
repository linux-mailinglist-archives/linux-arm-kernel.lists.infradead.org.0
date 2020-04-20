Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 159B01B01F0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 08:55:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W3egfHffc7EeB6b+/i/Rn+FIWrXqRrMyMiVojbpEcgk=; b=jo+xP4Igdpcp7x
	JQegMnq0ySEdzGPeeNRkcPF64xNVqzi2dk2KqGWcxHk/HsIQ0OrcyBjwaSM6OT2NbbavzE+Yvthmk
	MCGJTvTo/5nUdgzZFa6T19YEw2gUKdW7A5yiNfL8ERGrxniTG7EhKC/k0UAC3LKSA3sIHSlkEkRBF
	Q/bUFnvgBXdgecNCa/AxGGp1xLDPUgb2NQb6RTnumOt8agdkeKE3StLf5brPa5fgEkv7RZyHfN5vA
	6BIHflCwokEBrnP2SCuEKjP97roHNYS7MKCAtvBWu9Sx2+/w5bmCd7aa3p3CD5TaG/6AS4O/wSbtt
	jdTD7jHdlbJyWf5fLQcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQQL1-0002is-2v; Mon, 20 Apr 2020 06:55:27 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQQKs-0002hr-KD
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 06:55:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1587365719; x=1618901719;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8Zt3QVUcyB1nrYZUv4BLWy8FGBq+iMg8ScYQuxJgQyU=;
 b=hGpjqX9CbG2qJCYHxQoc46D966PYL9zS16YEuMVaOkLUhJr5tP3OZVN0
 jGG5i7zSXNNFASPQKAdTgl7F81su5EJedkBQo0Zue8TIejtZaD4KgXIK5
 J0dVd0fALU6Y4FDXiim0j4dmJRqY0LKqgIFa4dPyw9vWvc6GPrNkkEytn
 TvPToF8X5DV7bzSQEBiJm30uv+I2nZuQuDEqARzk3w/16av+36ngr5CpE
 acllwBgVyxcqyucKkFGuDPynu3D5glOmRjmumg0gJ2eUz33K+Nej3u0cd
 bmbE8VwaVV3ezWbOnQugziskyOuh3Oa09A6l2TeERAm2Frr+7aeDyUSDz A==;
IronPort-SDR: vwQk5ta2F2/V0LIciNJnejKf6mcvdcewU5RvInDKc7mk8uNwSaRAo5PeCLng5rc93xd6KhYHkc
 5fYhLUJ7gQ0vLK4zeNBT3yveclD3/y7aJPaJ6ibjAyeXUY+tVVaGQW8mjivQ4W7hlB9e9rInNU
 Y72sHGqTIvtbkKtvHv79hw/P+FH6825LM2W2+7PuXVuC5N2k0liP8M3CtJJyoSFlhJMUuhgCJ7
 fTHrqrJl+sidUbL+jDuH8KfUFz02/ue0UHN3yajt0hJNKW7DD40ohrLpGsjzcwcW3YSdym1qba
 nuo=
X-IronPort-AV: E=Sophos;i="5.72,406,1580745600"; d="scan'208";a="140042628"
Received: from mail-co1nam11lp2174.outbound.protection.outlook.com (HELO
 NAM11-CO1-obe.outbound.protection.outlook.com) ([104.47.56.174])
 by ob1.hgst.iphmx.com with ESMTP; 20 Apr 2020 14:55:16 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EDgNdKq10Alv7EDXFm9ZRsOdMy2T4DDRSZSvvO7cyI4u07lS/yyrdijPCHAYlHCPYgr4hi5Dcgi3JtRHA6gn47gDmvWa0doQPdEcZXQU9C7gv+zf4eG03rdoSlq7P8WtMj8GFjJwijRERLgFSk04UBi/R04xovDrX+HPOEfZ3xJTnAMjczTRDSkI9neKISnuJiA+j8+Q+4PWRPU3nJGN+n0aH3svtcOYjmneCaBejD4HBikkVPU/lRlWLgljvIfBpccNnYQykVTqlAZ4nmjdEuL7HHHXNTji3mSPqqRHPSrAYhHlIPykm9gQl3Jk8HmwHjU2Mh0Kbq0TL+/nzs6how==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8Zt3QVUcyB1nrYZUv4BLWy8FGBq+iMg8ScYQuxJgQyU=;
 b=SZ+gpADZB/rfjJv0d0Cn3TKEtb1NGUI7ReeD+8hfwLc+FljhhFsAaqMdvjchgZKwXOcbVdTu/ylpuNzgMnsGcUZpS8jd4XNvCA7geqhD0pXyTeDI4Rkpg5IANI5LAxFDnAdIaLNXsdq+OrCQr45I7JKg2hq6h5fBzfTtws3KjgQLGnv0/3X/GRgQGB7Y7A9NpycFxW7/sbFF46StswjKO1sraA7C6/x/+JmB9MogUxftJS4NI3pNDS4bCiOPNG18KslA7aQCxMK+4KMCf80yTnHiKmOJdG+REkf41yi+JPsrjOPcyDmS9UDqkryAb5H1+NAkLniQQyX1DnkVTZy0xA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8Zt3QVUcyB1nrYZUv4BLWy8FGBq+iMg8ScYQuxJgQyU=;
 b=s3/Qrro0MHlVyhzP3Rls6kmIAJTkU81zpeUzYji7yt8PVqIDBDpBoILXCBx4Re8BpCPXEyEwKygbG6VOFEVBOYpbgxL4r0xa26KFymtiEXMuT2uAO8/46q02YYyfI9534lN9YCh12l4XFvm5B9IhhZx3gl3f9Es2eMlEF/ok4ZM=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB4926.namprd04.prod.outlook.com (2603:10b6:805:95::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Mon, 20 Apr
 2020 06:55:14 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b%5]) with mapi id 15.20.2921.027; Mon, 20 Apr 2020
 06:55:14 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Alim Akhtar <alim.akhtar@samsung.com>, "robh@kernel.org" <robh@kernel.org>
Subject: RE: [PATCH v6 01/10] scsi: ufs: add quirk to fix mishandling
 utrlclr/utmrlclr
Thread-Topic: [PATCH v6 01/10] scsi: ufs: add quirk to fix mishandling
 utrlclr/utmrlclr
Thread-Index: AQHWFONzkBNCSjfmx0i9of86j86lQqiBlzoQ
Date: Mon, 20 Apr 2020 06:55:14 +0000
Message-ID: <SN6PR04MB46405C636408D7676494828BFCD40@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200417175944.47189-1-alim.akhtar@samsung.com>
 <CGME20200417181008epcas5p460840c01c2c09ce1a69e83005b4bddbe@epcas5p4.samsung.com>
 <20200417175944.47189-2-alim.akhtar@samsung.com>
In-Reply-To: <20200417175944.47189-2-alim.akhtar@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b6b97a8d-acd3-4a9a-0005-08d7e4f7c747
x-ms-traffictypediagnostic: SN6PR04MB4926:
x-microsoft-antispam-prvs: <SN6PR04MB492612391B1A7BCB43944BBFFCD40@SN6PR04MB4926.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:2331;
x-forefront-prvs: 03793408BA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(4636009)(346002)(376002)(366004)(396003)(39860400002)(136003)(66946007)(8936002)(8676002)(7696005)(26005)(478600001)(81156014)(66446008)(186003)(76116006)(6506007)(64756008)(66556008)(66476007)(5660300002)(7416002)(52536014)(110136005)(55016002)(33656002)(71200400001)(9686003)(54906003)(2906002)(558084003)(316002)(4326008)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OFWSgXNNPA4/22aPd0rwXtGST5Xm2jutJvP9bCNCtlX0QVKCFuehbSu+d6/kDFfeT/zTFCdQMbs98JhPhkEqDuhou2iktkgbK/GEsVA30GJ10E+af5kKW0N+hwaiHhqyUlhVRjuYn4Dv+M9dmnG03veRh8rr2BooxZLsphgtotbdqzyCYgCy5NSjqOGYTkww4dX0cWpnuFT3CgcBIoNOKWqJp2tIKjg8+p+hoNOG+A8ljROPDd6fygmkYtD4G+y9sYm/oUD5YsMin5COmo2gBrdXfYck4kzhhUugO6WUcB5NURg5dUKiwYnb7ySNwiHk6TrQyfftOMaPNEkhN+yLhp4r9Sbzc3ShoqFPrwlwg+YW9LwdvE3xyfiT5sSzS8ukCjaK5k3VkcQAeauXobwm3dxLyxyXblkkkRlMVlDZZ14F8CUrqci/+hXFw9P4cl8Y
x-ms-exchange-antispam-messagedata: whGFFmHOH0QhsHq4H4lMzcVlioYlpNWXiTH0DqVuVPqhBLeBu9mo+/Yp2vk4Wg9Ctq2f5jTfhEXanWdtgL4KzAACj5O9Ewg5XaAJMV8YmaHTaAsnjxs+hk6/TKCTh4n+o+8N7IqN4QEzbffLKqs4kg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6b97a8d-acd3-4a9a-0005-08d7e4f7c747
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2020 06:55:14.6109 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FJfnP3GNrC4JYfYK011Rs1KlgfKuWbb1W2OEJMlNHAPnz1d6S+SH1Lxo/LH5YE11B/wZK/N/ruRtT2KFIVPHSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4926
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_235518_753684_FAADA5A5 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [212.25.79.133 listed in zen.spamhaus.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
> In the right behavior, setting the bit to '0' indicates clear and '1'
> indicates no change. If host controller handles this the other way,
> UFSHCI_QUIRK_BROKEN_REQ_LIST_CLR can be used.
> 
> Signed-off-by: Seungwon Jeon <essuuj@gmail.com>
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
