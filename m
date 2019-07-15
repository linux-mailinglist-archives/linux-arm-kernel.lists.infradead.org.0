Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5627168487
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 09:40:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=79EXM+I+VEspScd2XjSMTwncE0+lab73uU0N8qtH7WY=; b=cZoNIV16axus3I
	iz+GfeOQsWrfjkp3NRWWFssTTlsC6YWW+S7LGyRlmlFKOJnthECrXSP7VwWKzwBQikYEWuZFh2Ouk
	jxmE4tvtTADoIppjKhf1S3ZsZfVLXZxN6gJqI+QO9NM+am/iAEOT2XcYLfrdBXalXcQkJAENCkHzp
	InwviuwdB6ocFWSHNTvByDFiXt++eSRR9vF2ILPgqkVg486LkWyiQEJJhV64rksmVQ4M5pqNAYAcZ
	LeX4luYp3bhXnMbSCKrd4XmSBPdb1etWms5e9+GKA5C+lrwWsNb+RbNxyzGMWh+bKSTGW2/zsJeQb
	0YbgD9VTBr1Eq3DAX8QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmvav-00061b-IL; Mon, 15 Jul 2019 07:40:21 +0000
Received: from mail-eopbgr50045.outbound.protection.outlook.com ([40.107.5.45]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmvaH-0005lx-ST
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 07:39:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UYKUvyXscH3ZCzRPtkB//AbiBT+9Jwrm1HVrjrmc75UKze5OIcBZdaJlUeFQtJ94+2Ukh6VmeWXOUIis0qzItb/2o7Q+PTqLUsDdOrXsHB13rXdZD+BaN/1wbmFhd5nNjnE/eZcbAsVfDyzDYU15+gY6+q25amyY7NJrh//uCmEis0v+f9CXdhcds5zz0IAlabi0AaD8+TAApM25kieDNWUmDHc1dTpGoL1SkvjtZA6QC+6ldQL/Ya1uON5HRGTLQ/HPG2m02trdS/ujHQeIAOzXhDta/ruLvLpiVd2n46rlogMa+kTvAH3cM9a/kCJGzi7rtM56HT7rl6c1UzJB4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ll4OgWaiKtkINPFOigk8/pAgujDLW20gM+zrS31JNbM=;
 b=LdqLiM2E8MQbJ6/dP3wPNErDR2k1SznrNLpf5VUM61ug9f9UuKF/y/eDfh1+jjpXhvzTHpwiLoV+UkxT8PWvfv7a8QX0HzVm4Cj83jfCL1hVTyUr4zY8Kz1kTq8bZ3+LWO9S+6kBoDCl0nlghIFNJJS5Tn1f872hH+NxkrInhxMLma2uWcTiRKsSbtFD05m463QhLQGCFgJvCJ4FbaSHcMni7dfazRx53rFZzSTK6h+Ylmsu39LBJuv+VNpmc6dQgmf1KEzTZyOU7h3mlswkLQM9lFRUv+rK+mR1eC2WQPbb4UPr6jocKE9vwIRPKKT9IRdq7tNaHSXoQLXYP8xGOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ll4OgWaiKtkINPFOigk8/pAgujDLW20gM+zrS31JNbM=;
 b=MsbiF5+cs6TW79er0GJWDL1Hh40bBtq4+nn2zsb3UhUGqorWjpLXR1XoO42kiknednPHVp0LplD7XedK7NA34h6SnXBm+96q4seCIOqsqRAOUMG20izPwcM7Zrrpkj5+ZZH2zqBIp7ad8ojANEK2BuVeXsdnyuv7Y3qmj3+YNd4=
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com (52.134.5.23) by
 VI1PR0402MB3647.eurprd04.prod.outlook.com (52.134.14.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Mon, 15 Jul 2019 07:39:37 +0000
Received: from VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::c539:7bdc:7eea:2a52]) by VI1PR0402MB3600.eurprd04.prod.outlook.com
 ([fe80::c539:7bdc:7eea:2a52%7]) with mapi id 15.20.2073.012; Mon, 15 Jul 2019
 07:39:37 +0000
From: Andy Duan <fugang.duan@nxp.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: RE: [EXT] Re: [PATCH nvmem 1/1] nvmem: imx: add i.MX8QM platform
 support
Thread-Topic: [EXT] Re: [PATCH nvmem 1/1] nvmem: imx: add i.MX8QM platform
 support
Thread-Index: AQHVMnTq2F+gGEqIWEi9imTz4TJ3wKbLOOvggAAiVICAAAA+0A==
Date: Mon, 15 Jul 2019 07:39:37 +0000
Message-ID: <VI1PR0402MB36001C2ED52203BEA57B5DCCFFCF0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <20190704142032.10745-1-fugang.duan@nxp.com>
 <VI1PR0402MB36009610A9F1CCB9D9006349FFCF0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <20190715073657.GA2275@kroah.com>
In-Reply-To: <20190715073657.GA2275@kroah.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=fugang.duan@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 005604c5-43b9-442f-fed5-08d708f796f3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3647; 
x-ms-traffictypediagnostic: VI1PR0402MB3647:
x-microsoft-antispam-prvs: <VI1PR0402MB36475C39D1C4AC146884870FFFCF0@VI1PR0402MB3647.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 00997889E7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(39860400002)(366004)(346002)(376002)(199004)(189003)(5660300002)(66066001)(14454004)(6116002)(3846002)(305945005)(2351001)(25786009)(7736002)(74316002)(558084003)(68736007)(14444005)(256004)(11346002)(446003)(54906003)(316002)(6916009)(476003)(76116006)(66446008)(66476007)(66946007)(64756008)(66556008)(76176011)(7696005)(33656002)(102836004)(6506007)(229853002)(486006)(52536014)(186003)(26005)(99286004)(2906002)(55016002)(478600001)(1730700003)(81166006)(81156014)(53936002)(8936002)(71190400001)(9686003)(2501003)(71200400001)(6246003)(86362001)(8676002)(4326008)(5640700003)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3647;
 H:VI1PR0402MB3600.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WqlbhBdXDOt01jTiMFGaCSo7et32LOAFFlcix+8ASnOgjWDnJkV5cAHCsMij06L3L40Vn9n3hjd+z48NNrE+FLoDkUp9sb5LFMwDv0Lc6G8HS6mVwhrE0fGeOQmi9O/i26BLZ8Pk9rttw3TnSPo24DxD2/CR2TYqjpRoSkpPxw0MFIxvGjh+DtJk5FJ4Qm3xip61lG11eJUn+0NrRaYnDsUnMCP9NZVT46tSfapj4YzWmBCu7QaMzGp9sOtKB4CFFLAcrcbP500A7AaqXzKbVDBBuqmpkXBzRIsKLZCDFVUyIW01tWf+vMlg5Q9L6PAEyoVpCkrOu3zvViIX9P5txHtufaU4GfABsQlOT4oNdKKJFAYzROtE7oS7DoBl6aYpapnbfBtlBRDw38Wp7vr+a5GvCC+sPtMvEvjYSv30Ehc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 005604c5-43b9-442f-fed5-08d708f796f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2019 07:39:37.6562 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fugang.duan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3647
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_003942_070158_C4B57947 
X-CRM114-Status: UNSURE (   7.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: gregkh@linuxfoundation.org <gregkh@linuxfoundation.org> Sent: Monday, July 15, 2019 3:37 PM
> On Mon, Jul 15, 2019 at 05:34:47AM +0000, Andy Duan wrote:
> > Ping...
> 
> It's the middle of the merge window, we can't do anything with any patches
> until after that.  Please be patient.
> 
> greg k-h

Thanks for kindly reminder !

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
