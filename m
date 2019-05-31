Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DC531342
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 19:01:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VpWGvnrChBD/VCnfDFqPGkBqI5XhLWuoXWMxsqoqLd4=; b=lA/7jdiD5cogy2
	xzhZvDkrsHUiC/nJ2RCb0GJ8K9B0qX8X8V2u5LGH+xJoEFat3/vmMTJDb7SPuc/h/uaDEJezGU7YH
	DqqxM0vOvdzI5IxWVROkyfFgAFbxStnO+VUuYL4RlR0T1QVFkZe4l/PO4zvjFgIzskHnxVdVFdsax
	E3PsAQQSANP+1eV//VnbeKosc7FTPTcT4SwrE62u88QQrSEDeBO543wsYjUgyZNKuqgB87gFd76M7
	gHGgIxpSmmBrRD3W/66R96SIhb5ZATLnB184zFssI9J5B7tfOuztN3iCY/Yu5j2Fb8Hnze0DM4+MO
	FF2WcRzIcad3O0CiCtDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWkuW-0007Nc-PG; Fri, 31 May 2019 17:01:44 +0000
Received: from mail-eopbgr50053.outbound.protection.outlook.com ([40.107.5.53]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWkuP-0007Mt-Cu
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 17:01:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6h9eII9uonwD1v72h0OGLMf+bL05id0CifKWqh07YSU=;
 b=XlOffcS1Rxm9aAcxgRXgPR74q/vHahpDum7jLU7rtQUT2fMU+y3e8Z+IFCK1w8UgGkp/YpP88A1CVoRPjaJr4AutIl2xBFtOGurLovcGkO9Bsu//C7NVBFxfWB22anNV7KLBzdDjr2W4tC6SdZonCd7q43DsXmfTXgbPNESLT7o=
Received: from VI1PR04MB5134.eurprd04.prod.outlook.com (20.177.50.159) by
 VI1PR04MB5422.eurprd04.prod.outlook.com (20.178.121.76) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.17; Fri, 31 May 2019 17:01:32 +0000
Received: from VI1PR04MB5134.eurprd04.prod.outlook.com
 ([fe80::8d0e:de86:9b49:b40]) by VI1PR04MB5134.eurprd04.prod.outlook.com
 ([fe80::8d0e:de86:9b49:b40%7]) with mapi id 15.20.1922.024; Fri, 31 May 2019
 17:01:32 +0000
From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: RE: [PATCH v3 5/6] dpaa_eth: fix iova handling for contiguous frames
Thread-Topic: [PATCH v3 5/6] dpaa_eth: fix iova handling for contiguous frames
Thread-Index: AQHVFvLDgVVLsICrz0e/ErKUP7YXHqaFbvqAgAAETACAAAIjAIAAALuA
Date: Fri, 31 May 2019 17:01:32 +0000
Message-ID: <VI1PR04MB5134156396FB7597FD2A0DE5EC190@VI1PR04MB5134.eurprd04.prod.outlook.com>
References: <20190530141951.6704-1-laurentiu.tudor@nxp.com>
 <20190530141951.6704-6-laurentiu.tudor@nxp.com>
 <20190531163229.GA8708@infradead.org>
 <VI1PR04MB5134F5E31B993B2DC5275BB3EC190@VI1PR04MB5134.eurprd04.prod.outlook.com>
 <20190531165530.GA16487@infradead.org>
In-Reply-To: <20190531165530.GA16487@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
x-originating-ip: [192.88.166.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 26ea16aa-3f7c-4c7c-ca03-08d6e5e9a210
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5422; 
x-ms-traffictypediagnostic: VI1PR04MB5422:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <VI1PR04MB54226722E6C1BE9C206912DBEC190@VI1PR04MB5422.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 00540983E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(346002)(396003)(39860400002)(376002)(189003)(199004)(13464003)(81156014)(6116002)(6916009)(55016002)(53936002)(6436002)(7736002)(14454004)(8936002)(81166006)(4326008)(256004)(2906002)(478600001)(71200400001)(71190400001)(86362001)(66066001)(44832011)(9686003)(54906003)(6246003)(305945005)(3846002)(25786009)(11346002)(8676002)(26005)(316002)(186003)(99286004)(33656002)(476003)(7696005)(64756008)(66476007)(4744005)(66446008)(5660300002)(76116006)(66946007)(486006)(229853002)(446003)(6506007)(68736007)(66556008)(73956011)(102836004)(52536014)(76176011)(74316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5422;
 H:VI1PR04MB5134.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fc5TLLCM3CxRpEM34pIodDt/YCSK56njIGz7aTliY/fS53/5Kq8LNgLOtRdtJRgS/+lkyLw8Ij1mEGE/Q7XRMy/L+TkDOmc1RE8HoP7pXENm3Q04ABU/LPCjHOid3ZWPTn9hvDXUBtgEVgjrhWnmFJneRsXqmDxOLXXv2v1ZBu2nPouLLIz5YN0cME2Nzatbj0OhDBxvCgB2Zq68TojEo9IDnk8QF/NeKpozD7jugiwhG73Fq7Jf5cgGs7LUf5d4yD1XTyNj4D1CRFqpM0S6bpxJ/CTRRGmP6hAiyckTADclnNqRsjsuW6Csu2rXI7PHs1DT2OfX8bwOam/zWHKsIUZM3Whm669onDkfEggUfaN5UBNZQnz+w2Tq6Fx8ji3hf6UScMlOu/YVCbrmN/I1HCKAhU48dmnb5EioaM8O9Dc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26ea16aa-3f7c-4c7c-ca03-08d6e5e9a210
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2019 17:01:32.6824 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: laurentiu.tudor@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5422
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_100137_440395_7BDE095E 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.53 listed in list.dnswl.org]
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.53 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Madalin-cristian Bucur <madalin.bucur@nxp.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Roy Pledge <roy.pledge@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>,
 "jocke@infinera.com" <joakim.tjernlund@infinera.com>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Camelia Alexandra Groza <camelia.groza@nxp.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Christoph Hellwig <hch@infradead.org>
> Sent: Friday, May 31, 2019 7:56 PM
> 
> On Fri, May 31, 2019 at 04:53:16PM +0000, Laurentiu Tudor wrote:
> > Unfortunately due to our hardware particularities we do not have
> alternatives. This is also the case for our next generation of ethernet
> drivers [1]. I'll let my colleagues that work on the ethernet drivers to
> comment more on this.
> 
> Then you need to enhance the DMA API to support your use case instead
> of using an API only supported for two specific IOMMU implementations.
> 
> Remember in Linux you can should improve core code and not hack around
> it in crappy ways making lots of assumptions in your drivers.

Alright, I'm ok with that. I'll try to come up with something, will keep you in the loop.

---
Best Regards, Laurentiu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
