Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EEED5D27
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 10:10:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14OQCBOJsokj1v8JW+2/Ey8hboCywEcJccOhuloUrjA=; b=s0b5PNRU5rObgR
	bV0G8p32WshEC/RML3ixmcLFdwwRAP7U2UnSrK/85iqKWiKXHxqtjwozWeVWdKTWi8Aox/wlJopkF
	C3MMQ3ucgDClGJoN7VY9HtwLPBNHUlrO32ZCC0G7L0fTRON4PFsgbWV6KAOLC7Kh4aQS/kaWSUVtF
	nzM6b/tU8q/k3yoBx/XNgGfZSRBnTFvOAr8+Ky8Ry7jdEDrlxnh8ImdXjJo718gdBZ72RHypIeVe4
	6LHMhx9U9LbIIt6vyrXdUH5l50iO/QVp28hO0fDx6dWI/1p77brBs9a+eIp2HysH42YIXyPtQf57Q
	WQUOAMy0SdqYxQ0xNwjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJvR3-0000Cs-Mm; Mon, 14 Oct 2019 08:10:33 +0000
Received: from mail-eopbgr70040.outbound.protection.outlook.com ([40.107.7.40]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJvQv-0000BZ-DO
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 08:10:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gdztRfgapVG2kEx3PHGVQ5zQp+7EuCKnge9rulJHcRft5DHEybjgFXXOGM2uM21yNQ3yznqMc5FTB+USvBXT5yyX155BztioUpnOm1Dh+IDizhtcbDRWbKW3etroRKPgp5hmNk1cfbcJWmacQh09Nw63TWlscsMYIoc8bkOHDDqV36/bhukE5fHHcczOAGfm0gGX0JVjNZreBunbqf5fDnAyuYa4XmkaQoracOCTqGzpr4ZiJSkNnkJde/Cc8kr/ERhW2/D4d7w6pbCXMtMd5U6LgBax6P4ambLWmYNFDBH2Zd/I2l0HayWOC+t9+11t3iXN1UFuK+BUFkhJiSnueA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RsdcaDiZgjM6BdeYqsK3P0pA8rLqX+f0TZWoch4vjD8=;
 b=UVQ19uJNODtiHyGMM2A3nrb2yttmn5rv0MIu+JphIjthuCGa3uBBmc7kOvOwLsfMP6FtXbZ/GT2ZOOyMuVAFwMp8i/Xd1ck4eLMhlSFgNNpkY1miAPxgfZFrEy+9k+YMtL+MVgLOJurZ4j8RXXTx1IUA2u2enP9s7frwiy9Tde2RASp3zsWHkvQiCQBcTFdCtmgdNDusbsDTf7DE1HP6Ne3o87y+WX1HRiMd2qOg13RZo14hHPqp0s8HZ4aTo7IMoOtPoDS1kgHRCuZBcQsbhoKmNVIPNc3IVmN0k69T1hdojFDVQhkXDfLMB21qfFq4sPn5ZEaRPjIsI8VQX4t3Fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RsdcaDiZgjM6BdeYqsK3P0pA8rLqX+f0TZWoch4vjD8=;
 b=d6h8bAndJ/Hxf5vIZhBoGVIVO2Hul2l/G5ZWDE8LVWVuQ3r+knUbVj3tNKGY62NZ4WJG8JB39MvAk24gzLLM81QQd7dYrUsL8+ROis1C1DEaocAqekNipUiUH7zAEq6D+iBaH3UNFxHx7HWzuw8NICoAYdJ50SsW0DYmYVwoY5o=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6495.eurprd04.prod.outlook.com (20.179.233.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.19; Mon, 14 Oct 2019 08:10:20 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::35d1:8d88:10f4:561]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::35d1:8d88:10f4:561%5]) with mapi id 15.20.2347.021; Mon, 14 Oct 2019
 08:10:20 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Vinod Koul <vkoul@kernel.org>
Subject: RE: [PATCH v1] dmaengine: imx-sdma: fix kernel hangs with SLUB slab
 allocator
Thread-Topic: [PATCH v1] dmaengine: imx-sdma: fix kernel hangs with SLUB slab
 allocator
Thread-Index: AQHVcr1VGWNo2EzDlEmVbBRWEyoOA6dZ5eeAgAAA+QCAAADW8A==
Date: Mon, 14 Oct 2019 08:10:20 +0000
Message-ID: <VE1PR04MB66386213FCB0ADA44EB195E589900@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1569347584-3478-1-git-send-email-yibin.gong@nxp.com>
 <20191014080215.GL2654@vkoul-mobl> <20191014080544.GM2654@vkoul-mobl>
In-Reply-To: <20191014080544.GM2654@vkoul-mobl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2a226c7a-1c48-406b-8d08-08d7507df4d7
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VE1PR04MB6495:|VE1PR04MB6495:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB64957A98BC831A805572549889900@VE1PR04MB6495.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2276;
x-forefront-prvs: 01901B3451
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(366004)(346002)(136003)(376002)(199004)(189003)(229853002)(486006)(6246003)(53546011)(476003)(478600001)(7416002)(6506007)(25786009)(6436002)(5660300002)(55016002)(316002)(54906003)(86362001)(2906002)(6116002)(446003)(11346002)(3846002)(9686003)(6916009)(14454004)(81156014)(66946007)(76116006)(66476007)(256004)(64756008)(33656002)(8936002)(81166006)(66556008)(14444005)(8676002)(7736002)(74316002)(305945005)(99286004)(76176011)(102836004)(7696005)(52536014)(26005)(186003)(4326008)(66066001)(71200400001)(71190400001)(4001150100001)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6495;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9xBVZnQXUVUzESBrTV84z11xI5lurhaU3DOIKaNIx2h0+3Gn5SycRVyUJ9A41p9WI45DHF0H3YIEY79pq2B0Sp6JgxXFCvDgsD57z8lqBitnYeKTAZg9y9pgaeUBSq8Nq9Yl+U51oQBFAX2ZTh8k3S53UqeCjE51pxwSdcPgEgRek8iAuDiVmcUeKkgNHXIFhO0CmkVOWrR8P6NokBVB4banAgsR0PgS6Mgxpe82RtH3cT+n+2NAwhqzkCqPcRh8spGCahxIrSdjx1H9mUIJlJS+tnztZ+S3WPlbq1rKXRQBkkA1cUZXXukbfk5wgC2hIv258KMS9f8r4nJ5XWB3+HnCw81UHaWgGf7t9LL6rLmzGjqch+ko02F2Ll+dG/bMGAO0Gicx8U0ofGJsYYntPxbzb6kAQKaKz0NPOB9uD1c=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a226c7a-1c48-406b-8d08-08d7507df4d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2019 08:10:20.3686 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hQJrwwCzbKgOk/4HAE7m5/JS6/Q5rUo4f9TlAijAqAgCsbAI6tSsOWRUY7c7oOkBLypiW+KsrrXL5A0tUCs8gg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6495
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_011025_457327_39F31BAC 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.40 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "J.Lambrecht@TELEVIC.com" <J.Lambrecht@televic.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-14 Vinod Koul <vkoul@kernel.org> wrote:
> On 14-10-19, 13:32, Vinod Koul wrote:
> > On 24-09-19, 09:49, Robin Gong wrote:
> > > Illegal memory will be touch if SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V3
> > > (41) exceed the size of structure sdma_script_start_addrs(40), thus
> > > cause memory corrupt such as slob block header so that kernel trap
> > > into while() loop forever in slob_free(). Please refer to below code
> > > piece in imx-sdma.c:
> > > for (i = 0; i < sdma->script_number; i++)
> > > 	if (addr_arr[i] > 0)
> > > 		saddr_arr[i] = addr_arr[i]; /* memory corrupt here */ That issue
> > > was brought by commit a572460be9cf ("dmaengine: imx-sdma: Add
> > > support for version 3 firmware") because
> > > SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V3
> > > (38->41 3 scripts added) not align with script number added in
> > > sdma_script_start_addrs(2 scripts).
> >
> > Applied, thanks
> 
> And after applying I noticed the patch title is not apt. The patch title should
> reflect the change and not the cause or result.
> 
> So I have modified the title to: "dmaengine: imx-sdma: fix size check for sdma
> script_number"
Yes, You are right, thanks Vinod.
> 
> Thanks
> --
> ~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
