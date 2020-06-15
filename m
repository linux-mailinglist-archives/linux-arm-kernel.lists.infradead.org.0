Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E561F9AF1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 16:53:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XTzSuPkSpbT58NdwTj+/kpEK+ICfpk5IkkHbFUbklVs=; b=fDB9C7+e4vR8PG
	zB7dyQJVSe+4ucKVU/FwrtJL6Bziz9sTuFzc8iz53fLDnDPUus9wjR38KP/nbnvC+c3xB53q0nxHt
	PjzIWS60DOA6mdD/wtS5AtreIz2OgI60SLjWllUgBMtj+AquLFGXWT5BYXOyXQonBeRKwier+NY3R
	uh7DIcoFTJ7b8v1Uvz4GpZpQ52CUERXIQBco6tpDhponk+8nihOSwPa64rPNJvmkFo8i+A6mHfKOH
	EVV0Tnk2iB1swHs++r/SdU4S8iEeV2QBP6ldZi3TOmUIpZgvLs9QIMIABG813nq1k9LuWDw6brCJ/
	Rdh7n3bZev4g0gCCcbLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqUX-00017B-Gs; Mon, 15 Jun 2020 14:53:41 +0000
Received: from mail-vi1eur05on2057.outbound.protection.outlook.com
 ([40.107.21.57] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqUO-00016W-Ui
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 14:53:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cOKOwJuFJ6Ob2aVm4zLI7ttVBIEZbaVbqrBdiJGs/ub9+7/mYUIhou0WuMCCxpO/R2EtWnrjgF2C3/YDD+fISkKpfpPBtFGsqXYN2F7BeoZR4iMsrJ3XFnQcXr94bsisYgF/S0fL7X/TtyIlpY6JnnQ0JRSHykt2V1Z/sVGgeMVEfOsLzSXFCG753jiDHrWQo1ROag1CNnAPJnXhRoJK/FBYAuIIoPdtO0PyZzpI3em4AsDbpgSbROfWCxENCXsGmSf0dv1FDcJzdMd/ZQLWzJgoPYAyIycgQ7VgBCPdBJBEkNyzeh2AWHD/MhyQmtlfqWn8m+/zHya2qfbzxb6mBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Bc/Xhpc7c79ShuhNKagxGQHYTBvh9hkPN5apWBVGFs=;
 b=WR/kcVFRsvX+VoE9XEs/LKl+VPCSJseYbztI8W8s/ULjWgIaxT4UXPBfouOX0AOre5Mk2aBHK5bU93A19lqzPNA9n+Phm/EBXUaFUYsG7W1K1s+zwDXykVXT32jZydNVAeSp3CUfiBQIITd1Yg00YeeSzCUTvqC/Ism7YN1Gjp9zMv9EJIFnCdvveOdLF/2DN3udSNpzBCyXpNANKfPQ42xz/GfBtmQKVSXgtDqvBUTNWrM97mHO90bQlQIPWclmv1iK6at17usZDlycGrwjf67dY4ojyLzBs3ZK0qbJIkJmjmMU1WFJ1Ez/kqB0Tdr/WA3+yzL3w39e1krsROMpTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Bc/Xhpc7c79ShuhNKagxGQHYTBvh9hkPN5apWBVGFs=;
 b=shXgN8RlKI/KdlM0GGF5IaUaw9lQGRpDXtaptG7UkbcPvUGi7yQJILAzN6ohc4p63cE6NI1Jaq9uvAy/luWZIy5wqNGIbW18IX4ijddUEmjW1SxjHyjbiGHYpI3No4mNmrjgExWmWq8GaGGTQnnzmS+6+ZxxcDClxKihVE+OlZE=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6525.eurprd04.prod.outlook.com (2603:10a6:803:120::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.22; Mon, 15 Jun
 2020 14:53:30 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3088.028; Mon, 15 Jun 2020
 14:53:30 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Mark Brown <broonie@kernel.org>
Subject: RE: [PATCH v1 RFC 1/2] spi: introduce fallback to pio
Thread-Topic: [PATCH v1 RFC 1/2] spi: introduce fallback to pio
Thread-Index: AQHWP6z7CX2etPvPnk+oddH8JEW5FKjTbHIAgADDYUCAAJUwgIAACjoQgAA5dICAAOmA8IADsXmAgAANH1CAAASJgIAACZlAgAAGaACAAAKk4A==
Date: Mon, 15 Jun 2020 14:53:29 +0000
Message-ID: <VE1PR04MB6638D0C9FE0289FFE13ABA49899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <20200611134042.GG4671@sirena.org.uk>
 <VE1PR04MB66383245FAD2AE33CFEA76F789810@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200612101357.GA5396@sirena.org.uk>
 <VE1PR04MB66384013797FE6B01943F2A889810@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200612141611.GI5396@sirena.org.uk>
 <VE1PR04MB6638B43E3AC83286946DABCD899F0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200615123553.GP4447@sirena.org.uk>
 <VE1PR04MB6638C65257F41072C3D61583899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200615133905.GV4447@sirena.org.uk>
 <VE1PR04MB6638793C00742D5BA72F8AC2899C0@VE1PR04MB6638.eurprd04.prod.outlook.com>
 <20200615143622.GX4447@sirena.org.uk>
In-Reply-To: <20200615143622.GX4447@sirena.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.235.111]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 959003b8-59ff-4c32-64a0-08d8113bde29
x-ms-traffictypediagnostic: VE1PR04MB6525:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6525AA69BC7D7041FDDEE116899C0@VE1PR04MB6525.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 04359FAD81
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m6KHG73sDXZAyWX49AlNpiK8HZSyGhBQDqrcCuQDMSiIzhE+0k/qgZ/OdPH+9m+Izv8MkfXQc4QAn5t55XPvWknFlKTrfEZmfIYr8FnboCZK0Dz/A7WzgyFlf2ldx80sY6eZLkZEdxdqgvFquoWPXUBini176OshB/906MuEEdiz55CJaz4SkSS5qyc7jjHgSvGsr55fS4GufguCJO4MnRXlEcPRpnyAGDb8yy7eUB/d1I5Nzk7/+1Pa84UVn6IGi7MWH6iZGWvMezAihEQxaiU1EzPRredkNZBE2viZyw/KZGm0PAp0igIa4Lahyb4N5VQtv1QGXJxPpmeKK9sWhg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(346002)(39860400002)(366004)(136003)(71200400001)(52536014)(6916009)(8676002)(4326008)(86362001)(33656002)(26005)(4744005)(83380400001)(5660300002)(2906002)(54906003)(8936002)(478600001)(316002)(7416002)(66946007)(66476007)(66556008)(64756008)(66446008)(9686003)(6506007)(55016002)(7696005)(53546011)(186003)(76116006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: ceA14vWNvicsfLKYk781BjrrUbx3D49V5FYqvkWaEoPdMZO70piURMUBvPcBtD3BKGQDeOcmo1NsdUHQzeX9rvTXBWlVsUg7Cb/JtkttEO0XgNrc7Dl9tF6t/YjQapc/nTUV+2TXYA7qpf4uwKfOcoMACS9eTfNbHcgg2D/jt/nZEtJ6pbbUX8/ia7xFL9H0Zu/bbzlbUUcwVe7FsDP5PDOLSJKxiilRuuXZvC7gSj55ZqJRihrXyRcBxg9B6HPf6Q6sisPMPX/JaZf0MhRZ+CqeNl4dtUE7mgNaD/1MBOR0nsbqq2+ANzG/dKxdD9ypH74IWtZO12UI1SLzWIp0Ycw4l7C4g/Fre/LCTSU3qp339A/q50FVv8AIOKmg4/YnPs60r5/dDYNsKn5REmWUrep2SZmdKO+oOnU7el5t9cGlVkzrMGJHlNR3S6W1PO7QgfhI+LyVCpZej0prAE11iLYe6YEiDsLqBz8dP83UeLybKWPdcr8/m4KddddGmxTo
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 959003b8-59ff-4c32-64a0-08d8113bde29
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2020 14:53:29.8763 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nbwsj8K9HOO5+HieE1raLiD/el0lQkCB81b2qhB5ncpYHZzYNdhAk15xoqFenontzxrESE/DlRdeq06D3IAXUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6525
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_075333_072168_FC5E5D1A 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.57 listed in wl.mailspike.net]
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
Cc: "matthias.schiffer@ew.tq-group.com" <matthias.schiffer@ew.tq-group.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/06/15 22:36 Mark Brown <broonie@kernel.org> wrote: 
> On Mon, Jun 15, 2020 at 02:18:54PM +0000, Robin Gong wrote:
> > Seems not easy to find a suitable error value, how about EBADR which
> > sounds like no any available dma_async_tx_descriptor got by calling
> dmaengine_prep_slave_sg?
> 
> > #define EBADR           53      /* Invalid request descriptor */
> 
> We could also pass in a flag that could be set separately to the error code to
> indicate that nothing had happened to the hardware yet.
Do you mean spi-imx.c checking 'ctlr->flags' before return such error code?
Or just like below done in spi.c.
+fallback_pio:
                        ret = ctlr->transfer_one(ctlr, msg->spi, xfer);
                        if (ret < 0) {
+                               if (ret == - EBADR && ctlr->cur_msg_mapped &&
+                                  (ctlr->flags & SPI_CONTROLLER_FALLBACK)) {
+                                       __spi_unmap_msg(ctlr, msg);
+                                       ctlr->fallback = true;
+                                       goto fallback_pio;
+                               }
+

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
