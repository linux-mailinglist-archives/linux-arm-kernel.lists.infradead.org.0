Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2100031318
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 18:53:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KFA+XmAuFN5lY0LSSOFATh9aYfzQu3EcuDdbOlpSTl4=; b=MSdd51eWbwHGcY
	EM3uB3LHVeZK0UgPMtvjmHtvkjTq+JaTTcKLaaw/+zBpUYFmjnTQ40oROOsRmwm9HzjLO01pNe7eQ
	X8mXnLrP3jIXmZOi9715xW42GGDjOxH8Gga4osNXf7afJjvBIOcpU/LGZRGSKswqp846NijFCOK7p
	2jQAMrRt404VsuHZ+5KtcMoXGlV1kmOJ94iMC5ZlexNdzhGz+PdP37maW75PZ9wY/nRUWytjyik4E
	X2VtXFYovcdAT0cUuU79o4xJJDzGVJ+Rz/NKvY+Ov8+SqxPBPyY6JTuu1yJXsWqQNxmp9oMyk+wuN
	kQKtk3Yn+eF0JC+Hnr2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWkmW-0003gQ-4I; Fri, 31 May 2019 16:53:28 +0000
Received: from mail-eopbgr40055.outbound.protection.outlook.com ([40.107.4.55]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWkmO-0003g5-TI
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 16:53:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Jk+CL3jdhs9SpcJK5Lwm3NSvKgj9hpI6fynSFgJuYW4=;
 b=N8Nt/z6r0imTy6YKEDHrR5tpDwZ0tqA8aCJZn9/n1ouF8YOeChlbVo55Kt5MJGIUJ0Eh+BTjgmCfmd2Od0TCDRS59RsO6VjytwgQsleEZZEbmG4TBS6Tj1uwM8Goh7e8mGByPGXtaIAQrQtzpaz0fOV4APkTUdXJkWIhh/DCmmk=
Received: from VI1PR04MB5134.eurprd04.prod.outlook.com (20.177.50.159) by
 VI1PR04MB5424.eurprd04.prod.outlook.com (20.178.121.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Fri, 31 May 2019 16:53:16 +0000
Received: from VI1PR04MB5134.eurprd04.prod.outlook.com
 ([fe80::8d0e:de86:9b49:b40]) by VI1PR04MB5134.eurprd04.prod.outlook.com
 ([fe80::8d0e:de86:9b49:b40%7]) with mapi id 15.20.1922.024; Fri, 31 May 2019
 16:53:16 +0000
From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: RE: [PATCH v3 5/6] dpaa_eth: fix iova handling for contiguous frames
Thread-Topic: [PATCH v3 5/6] dpaa_eth: fix iova handling for contiguous frames
Thread-Index: AQHVFvLDgVVLsICrz0e/ErKUP7YXHqaFbvqAgAAETAA=
Date: Fri, 31 May 2019 16:53:16 +0000
Message-ID: <VI1PR04MB5134F5E31B993B2DC5275BB3EC190@VI1PR04MB5134.eurprd04.prod.outlook.com>
References: <20190530141951.6704-1-laurentiu.tudor@nxp.com>
 <20190530141951.6704-6-laurentiu.tudor@nxp.com>
 <20190531163229.GA8708@infradead.org>
In-Reply-To: <20190531163229.GA8708@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
x-originating-ip: [192.88.166.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2344736f-baa7-4d5a-28ab-08d6e5e87a3c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB5424; 
x-ms-traffictypediagnostic: VI1PR04MB5424:
x-ms-exchange-purlcount: 1
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-microsoft-antispam-prvs: <VI1PR04MB5424420CD622D8111EBC24A7EC190@VI1PR04MB5424.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 00540983E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(39860400002)(366004)(136003)(396003)(189003)(199004)(13464003)(6116002)(7736002)(7696005)(66066001)(86362001)(74316002)(71200400001)(3846002)(6246003)(4326008)(76116006)(55016002)(52536014)(8936002)(76176011)(54906003)(25786009)(26005)(102836004)(33656002)(476003)(71190400001)(305945005)(6916009)(99286004)(486006)(44832011)(6506007)(6306002)(316002)(68736007)(11346002)(2906002)(81156014)(81166006)(53936002)(186003)(966005)(478600001)(446003)(14454004)(5660300002)(256004)(6436002)(4744005)(8676002)(66556008)(9686003)(66446008)(64756008)(66946007)(73956011)(66476007)(229853002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5424;
 H:VI1PR04MB5134.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: e+NCxI4BguB88QjxXUwOvRmeWulMM6zwS6B1T+zcO66WfdoiZt+BndN9L3qGnItxJM2JPIsl2zoW5qwmIswVBjUyoZMA22IcBpMM69LWkuAya5rTfOEY+DFV4q85WslmGukWMXhHcG+aQiLd/BN4Pd0XHZR77Sx6u5gOHPMwsGaw4ZRSwcepwJ0Q8ZXr0PElPw5Us6ngO93sF25FSm0OPwXEkg3curWJjrpqPJm/WL8vRv3TlPDT54V1SxDORNZSVLq02ayP83KGn/VCREHjdK69msFslBvMVsEOCZ5DOpcZ0UVIJw2FhhZ6WnAVXWkSVVVabMxqNF5U6ktof5HvJWwXQz4Msv+Wvl4D5IGK95/Jm71+VUDU3pJ8BE+HfFpMpS0z4CvAb6veSNtxb+CiZwp4uy7YtlCnMVqt2Okhi/o=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2344736f-baa7-4d5a-28ab-08d6e5e87a3c
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2019 16:53:16.3621 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: laurentiu.tudor@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5424
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_095321_065696_1E31C7D9 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.55 listed in list.dnswl.org]
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

Hi Christoph,

> -----Original Message-----
> From: Christoph Hellwig <hch@infradead.org>
> Sent: Friday, May 31, 2019 7:32 PM
> 
> On Thu, May 30, 2019 at 05:19:50PM +0300, laurentiu.tudor@nxp.com wrote:
> > +static phys_addr_t dpaa_iova_to_phys(const struct dpaa_priv *priv,
> > +				     dma_addr_t addr)
> > +{
> > +	return priv->domain ? iommu_iova_to_phys(priv->domain, addr) : addr;
> > +}
> 
> Again, a driver using the iommu API must not call iommu_* APIs.
> 
> This chane is not acceptable.

Unfortunately due to our hardware particularities we do not have alternatives. This is also the case for our next generation of ethernet drivers [1]. I'll let my colleagues that work on the ethernet drivers to comment more on this.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth.c#n37

---
Best Regards, Laurentiu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
