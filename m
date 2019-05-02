Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F8011623
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 11:10:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FO1B09x4lWPOdlGdjnHX8EAhuONPBqv94GKW/Cq/1lE=; b=ohX2HkuApL0vpr
	e9hN8xfNDAYk1elGL6M9IqfOWOTzFcysW51S/rGrR5TIi/o5GeQCeBPIgw4yEDpP1mZChFuujIPCn
	1uRi3suLMAIwQ2xkIpioQb95gaOWCT/dghv2QY9ZyqwlhNYQOPvmICRpnuJFWlxMxRF3JsEHBliuK
	EjiZbSSy6/2bIJGDQQV69vJKtrL4UCONBmZy6hzmqgw02NrMPvOdtQML3stjFUTiNkWjfGdWjzTuk
	PRZhCBfSEYa/BowoT8FbJDatmjPuLVXiBx/oa7y7zrLPzl0ooLdJupTFehM+b8nY3XsEqqnwGob6Q
	s0PDu3dlXOiRxZhp6BEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM7ju-0001fZ-2W; Thu, 02 May 2019 09:10:50 +0000
Received: from mail-eopbgr30052.outbound.protection.outlook.com ([40.107.3.52]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM7jm-0001el-Hg
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 09:10:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mLoDalNMvJO2k9ZH9S2I3msqVINEPnwBYV3c1d4FHYc=;
 b=Eo3yE/UyUAi83xZd+52e4TW9y4zCx9h7Xanj7yGVMID4O5+fZ0Xz3lyEroJnD1c4XANKJow4Ism6K0ZnNAv3SYpSth7muXmym/8ITQi78+TIHxQ6L4GPTd2CO4beLiMX/uo1uVvbuNXwyHBJ5m/yC5OkHNwDt/8Zjc4/kbyuhgo=
Received: from VI1PR04MB5134.eurprd04.prod.outlook.com (20.177.50.159) by
 VI1PR04MB4221.eurprd04.prod.outlook.com (52.134.31.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Thu, 2 May 2019 09:10:39 +0000
Received: from VI1PR04MB5134.eurprd04.prod.outlook.com
 ([fe80::81d8:f74b:f91e:f071]) by VI1PR04MB5134.eurprd04.prod.outlook.com
 ([fe80::81d8:f74b:f91e:f071%7]) with mapi id 15.20.1835.018; Thu, 2 May 2019
 09:10:39 +0000
From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
To: Christoph Hellwig <hch@infradead.org>
Subject: RE: [PATCH v2 7/9] dpaa_eth: fix iova handling for contiguous frames
Thread-Topic: [PATCH v2 7/9] dpaa_eth: fix iova handling for contiguous frames
Thread-Index: AQHU/MhTJGEcyHulVEGnKf6u21efK6ZQN+AAgAdbO3A=
Date: Thu, 2 May 2019 09:10:38 +0000
Message-ID: <VI1PR04MB513490961A52D86E46C02B49EC340@VI1PR04MB5134.eurprd04.prod.outlook.com>
References: <20190427071031.6563-1-laurentiu.tudor@nxp.com>
 <20190427071031.6563-8-laurentiu.tudor@nxp.com>
 <20190427164612.GA12450@infradead.org>
In-Reply-To: <20190427164612.GA12450@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
x-originating-ip: [192.88.166.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 949729a3-b344-4971-ab0e-08d6cede0b7c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4221; 
x-ms-traffictypediagnostic: VI1PR04MB4221:
x-microsoft-antispam-prvs: <VI1PR04MB42210DAD43AADA76D8A8ACE7EC340@VI1PR04MB4221.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(39860400002)(136003)(376002)(396003)(13464003)(51444003)(199004)(189003)(66066001)(33656002)(44832011)(476003)(14444005)(71190400001)(486006)(71200400001)(186003)(2906002)(55016002)(52536014)(53936002)(9686003)(6246003)(229853002)(6116002)(3846002)(11346002)(256004)(446003)(81156014)(8936002)(8676002)(6916009)(5660300002)(81166006)(54906003)(14454004)(99286004)(25786009)(76176011)(478600001)(6506007)(26005)(102836004)(7696005)(6436002)(68736007)(305945005)(74316002)(66446008)(64756008)(73956011)(86362001)(316002)(66946007)(66556008)(4326008)(76116006)(66476007)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4221;
 H:VI1PR04MB5134.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: sBJMuIh7ZVYNoZaRTfgNPy7W7P809zWGFM7EdbsDCmnSHzLgZlornyv/IW//mcN2XIS2kJjfm9i9DhL66lMFSVpk4FWkVORjMuOGhDfnE1oN2kB9LH/bMbsy+Rq7KQSNY+LZCc/ZPMltm9u69EnlvTLZLs5wMVA1YVIhgo0r+7RkycaJs8L/uA6tAU8IS6sauefu7JrQQ18JMPqT2RtCPWbebKWv80Th8YZPBXMuT2IACjl6UQmr1YMla/T2W7nNf5pXLPDV6YcxAynNPZF9CandBotx9sEGUNSPVJKYJTF/aA589lwKYJlUcprD71tGZFAVVqt+piXg8RgPBMb9alv93I6usw/08pmjDFol4ZZimGFb01fq4g7EBlZJlyAXyxFUBPXPhH4EvUH2hhi6AjL3rtmua/7UabMVKiA2eAI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 949729a3-b344-4971-ab0e-08d6cede0b7c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 09:10:38.8633 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4221
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_021042_587239_C0894D0B 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
> Sent: Saturday, April 27, 2019 7:46 PM
> 
> On Sat, Apr 27, 2019 at 10:10:29AM +0300, laurentiu.tudor@nxp.com wrote:
> > From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> >
> > The driver relies on the no longer valid assumption that dma addresses
> > (iovas) are identical to physical addressees and uses phys_to_virt() to
> > make iova -> vaddr conversions. Fix this by adding a function that does
> > proper iova -> phys conversions using the iommu api and update the code
> > to use it.
> > Also, a dma_unmap_single() call had to be moved further down the code
> > because iova -> vaddr conversions were required before the unmap.
> > For now only the contiguous frame case is handled and the SG case is
> > split in a following patch.
> > While at it, clean-up a redundant dpaa_bpid2pool() and pass the bp
> > as parameter.
> 
> Err, this is broken.  A driver using the DMA API has no business
> call IOMMU APIs.  Just save the _virtual_ address used for the mapping
> away and use that again.  We should not go through crazy gymnastics
> like this.

I think that due to the particularity of this hardware we don't have a way of saving the VA, but I'd let my colleagues maintaining this driver to comment more on why we need to do this.

---
Best Regards, Laurentiu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
