Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F542156976
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Feb 2020 08:03:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K/V9m40L7jdLwJ7KC8cn2G2cQX7wgXlJLdBIWqnw3NA=; b=Acv2fpTc8saDzl
	5PJLb5juIkiFj4kjMLfdnUSQ8xQb9sXUQR2VSnP1Wmtn/MWQiJ0eMSi5ssXXUbg90BslZ9bmFY45f
	Hzb1OkoEk61lonEdlBbsNL2HEfEesFqmv3ddysIejlJJjjy8k6IBxbUFcBw4tVhgZ5TNZndppo68N
	haOpuY0OPpZEvFcId8g6yqTGCZEBksLx6tAHvt23/RtshekL8cdoU/riiFqERxm4+PWqbVKsGX+R9
	LmzuIpAo3DjhIBw2MdXIiA/N4GjGDC9K13Z+KCMuzxrK51UsA/v26XQlBVk5c17PmHPH0z1Atmq9V
	o0ceHozII0D22Yvfnpgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0gco-0007rg-0H; Sun, 09 Feb 2020 07:03:26 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0gcg-0007qF-1x; Sun, 09 Feb 2020 07:03:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581231810; x=1612767810;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DB5++TLsqiEYNZ7sVKjF++7nd7BHKcB43692GluI65I=;
 b=E0j44kPJ7NQQCs6+8id5ZpSvX5KVdy/+c42Fu7yPhoTR1tpnvqrXmvPj
 G1yfelhZ02mxzgJZi/htp9vib6Q27NnA9nS1ZZoEk1cZupgfrjFG2AjgT
 UbB7ySm4YEGfDkCgEq/+KfNt4h464xdVoLyleKlT3eZosCBAFsehRU3oA
 jnIfP/3qX8HTOz6cX0TB+znqzfps6kdW8EZOE+2FIYFE6NIb5MwyzjG9b
 q5ZxTkdtgUxysWDhZaj0Z92b5dBU/KP68ag5+FKsixk2B3PkhvKR7kZoJ
 MbnXOFOJy9O1ZrlnHXbqoPS8dVyDq9Q3fhcq3E9diDUyfQghPeVdmEn3f A==;
IronPort-SDR: RXLsc7J++2wPMr2YZHkw4mvsTetXFMnnfWHRZ/27r+G7zatV5/kYOEACflmcMjhoXMJCr1CZVM
 m2CS3s8pf5UtJsnUcF9+tzrrk/OXSZ3nMxWc18ObE2jeuXHLBNziNailSNgLZJykIEWO8AmhAb
 Hq3kgreU+IHLfShuqCx/rqUUBW6d3y0jj7dEZn5fGVAb19lQDLvU8btabIs7TvrJjGCwb8EXTD
 fptYSHQk/z055t3fUifTfGKg0OGiBRBKW3CsRhUfKGPfpp0PVQaPEyAKpqVu3A89Khr4KWEqqD
 ryg=
X-IronPort-AV: E=Sophos;i="5.70,420,1574092800"; d="scan'208";a="231218139"
Received: from mail-dm6nam12lp2174.outbound.protection.outlook.com (HELO
 NAM12-DM6-obe.outbound.protection.outlook.com) ([104.47.59.174])
 by ob1.hgst.iphmx.com with ESMTP; 09 Feb 2020 15:03:15 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WAaRWxks2OaIGQXKR/wedYg6Z5tDaQ6YjYmqfuf6GGdJ4nazugAH1AxedS4DW74Nc+TQwyjG4sH3cLCr+r6k9Krxb66o0XQti5tkbS7t4rL3ujT1gq/T5Xe/dvfNx3VBXqo57PDxvN2W8e/+X8b5EDN6m5DLk6PEycSpMgCIWVwuGhgyl/HIwWXgWsqTZG2hcFiCNcVWqmJnvcmxxJxDm6GxyeECUyOYOx9k7rFfgOPubghrYx8hU9wbshH/mOR2FYGgiQURKdA/tnAOcpwd08RWklN3FpjSuqjooldoQXBwysWeu/8UCImQFKYktvuzJbrBnjRUNBMS7y7lrSG4Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DB5++TLsqiEYNZ7sVKjF++7nd7BHKcB43692GluI65I=;
 b=Jj1KljtQua4sUtkN8C2FzTsHSHJ5QgqTfo7PhDpm+XGJzsbfxSgqtfWGANLUTOvDqopIQql/zJSmTiuVrH5LzvRImajc2gH1XqLkxzht+bctwHs5LSyZiABpbBRQ7dBbZRCuNpaFQycWjxudHr3uB1iVCdIdq7deVzFE39breq6ge4Q06A5C6onX5Fprq1JJYvJjkQA+ofFhCABz/h9FwV467+DNrMT95XAHJ4ZWZz0nwIreHulcYEedI7dIIXJZiXaSB2j8gBuS9xXgMWFOeRYicN99lUPJqMRrVkrxCHkGwB9YEe2wlh0ZuyiTo8C7Y9nCbyaBgTEKU+kWA5jqGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DB5++TLsqiEYNZ7sVKjF++7nd7BHKcB43692GluI65I=;
 b=TKhhl2bKnMH8gTg18FhbkcbKdoC17iJsWgz9hjneUFFCq6nKb8/rZgp0pOrQtgJyJAxcQKH0ywv2xTY4uK+UPdJ41njctipWK/PEnrTw9Xtb3iDgghUU6rtI/2tTmV3e4GD79Lqt+pPlZx/4uRL4RQvQAr9M5g2RPOiHv1PTIik=
Received: from MN2PR04MB6991.namprd04.prod.outlook.com (10.186.144.209) by
 MN2PR04MB6349.namprd04.prod.outlook.com (52.132.171.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.23; Sun, 9 Feb 2020 07:03:07 +0000
Received: from MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::3885:5fac:44af:5de7]) by MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::3885:5fac:44af:5de7%7]) with mapi id 15.20.2707.028; Sun, 9 Feb 2020
 07:03:07 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Subject: RE: [PATCH v1 2/2] scsi: ufs: introduce common function to disable
 host TX LCC
Thread-Topic: [PATCH v1 2/2] scsi: ufs: introduce common function to disable
 host TX LCC
Thread-Index: AQHV3YTLmKd3QNgd7UGc9fDV0CDqxagPn8Hw
Date: Sun, 9 Feb 2020 07:03:06 +0000
Message-ID: <MN2PR04MB69913BDCACDF64CBDD3F4AE6FC1E0@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <20200207070357.17169-1-stanley.chu@mediatek.com>
 <20200207070357.17169-3-stanley.chu@mediatek.com>
In-Reply-To: <20200207070357.17169-3-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5308471b-0d9b-43a7-6d6c-08d7ad2e1d8c
x-ms-traffictypediagnostic: MN2PR04MB6349:
x-microsoft-antispam-prvs: <MN2PR04MB63493A6D34E847EFC96162BEFC1E0@MN2PR04MB6349.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0308EE423E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(136003)(366004)(376002)(346002)(39860400002)(189003)(199004)(8936002)(9686003)(86362001)(55016002)(110136005)(52536014)(5660300002)(7416002)(66446008)(54906003)(64756008)(66556008)(81156014)(81166006)(558084003)(316002)(76116006)(66476007)(66946007)(8676002)(26005)(6506007)(7696005)(33656002)(71200400001)(478600001)(4326008)(186003)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6349;
 H:MN2PR04MB6991.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m00NrtPdm8u6LBEuawRFWIR5U/neik2w2C62zjRfjDSuzeUYcy62WECSUR4qNMyeqISjI21dIpsltvRXh5Vj7TAcTrXTY2eDoYVhGxF8aIuroJFmN1xXatUdGLjy9d/i5LJuEnyaL5nL+4XHF5i9l2kocSYqE8DUoTRpG5QD0qVhEwfQIq31VJ4b/poure7MKPzIcLW+87Rt5OY7MM0OW1l8Rt17Z2WaMajizQv2VQtsQGhOcm/5VdskEVAw5e0lER8SEeKABF2iISRFLHy+ZkLYAq6TtDmYWHkj+njeiwcAOMJtsi6pQvd9oE4UyqWl+rsrQ9p5s5iYgUUEg2aKMGVlnFqzv4jFkLxujrIvVO8yJl8teH2JYAvGm5/LZtXCOs6GYFnrd+PxeKhQemDwPJYzqRJHS9RyiZ61OqP4ABZDLaFNiDgbHKKUfTALF76o
x-ms-exchange-antispam-messagedata: x4iPWdfdU5k9QrJTRWgutVPFN7yTIP5gHxoP4BldCVyQr0THtAespmn+wq6w3dauPKGu4MMeTpHUb1/r4lFXZEFxbWFGmFC852BPSGtKHHGIuexgwmykEkRSGbQYAEeXNPV32+fm7UV8KnPg63eqEg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5308471b-0d9b-43a7-6d6c-08d7ad2e1d8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Feb 2020 07:03:07.0922 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DueVSj3cS7IVPWf7wLDjCtzLzRHHLluHwDXOee0qj+YbBM0jJ8dqkHjpqnJEtUK4x7ytOhpyCZatvt/Ntp9RKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6349
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_230318_136019_38F360B4 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "bvanassche@acm.org" <bvanassche@acm.org>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
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

> 
> 
> Many vendors would like to disable host TX LCC during initialization
> flow. Introduce a common function for all users to make drivers easier to
> read and maintained. This patch does not change any functionality.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
