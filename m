Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2167EA9D53
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 10:43:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AO2fbJK/c6CmXdEIhpHq9LHTB8j8vYv1dIwQ3zW3NaU=; b=fmhzaWOyp8mocH
	ccBJtaW31xHXu4pLBrtOaV8HmQMpRhXBrN8AvWhj/WcWhvVjPiPdAnfc7+0oljIpGv8s4M1FKMTpP
	CRL5kLeJZYIebLtZn4QTtMBsF4Z9HKVDqOxh9sha02azhiNhvT1tZAOnGda+JG9qfNf5h4EuhtGRD
	hEFY7n1H9i3CZkaF9F+pV/5qsxRHzKMpYErSHm7FxbVpM3xU+E3Dl3pKrovIdEIrpFw7v/5PGwa2K
	ttK6rY3z6uRMvAPm2pEToPfiXV7OnWMH0NSdXB0tk7xmbirxpW4Fc7LILIG8xNEoO2jFIAK9kkHQy
	w9COXn4cSQL+3DiB5gyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5nML-0002vc-5z; Thu, 05 Sep 2019 08:43:17 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5nMA-0002uh-02; Thu, 05 Sep 2019 08:43:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1567672986; x=1599208986;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GxOr2rNiVhQoWKfx7Z8pZ3PQbWb4PsX+HKo+F1pinFQ=;
 b=kv9hmuzEgy5GrqDWAvM8JZxMLonmh92RQ37RXHMbL6mKmBVp2Moart62
 d01IHi3eocYk8250NGIy/wM3o8US32oF+g6Ol+RgKTpmM6Vbd9dWqwTIu
 i4QWaNfsX0LFImndymffa9Id7MzQh2XgToXL4cFKi2I/KG8HBKhs/kWqy
 349A/Uc+CrOtWPN9YGFaN9tc3z7sJOY1l7RkyMqtY5WYlr/48EAHpl+Zp
 3UQYZqVerYuM5b/KAyBAWEHcWF6v4568SRcdrOm88UNs1q+MJwiIecP9k
 8T0D23xNwrHueksbuUQ653LzLQjf2CdYG8LIrcqyNV4nuTCH16njQ2h5C A==;
IronPort-SDR: 2TyVadzNtrKDdPx3w2DsVWswaPfpEEXAKlavrrMlHdN3u2Y2PdOkPYphutnFAnwurApbAit3EC
 v3I5uOpZwKPQ4lVBX2hEgRviDzeciYlK9MnpSYfi1W3SE4NaGWHzCFAAap33JwjXAXJvujrsMT
 AZVm3n8wZNo24QUDW0S452x0XCJwLAPJN3L3GNGZUYFn3QkiQOk+kr8GBzJhJvapAsOKGH+ZRU
 /3Hv74sl9ELV8gJKHnselw9qwka+Y7w13TwJuKdaUYOu/RUbbzj2OWF/iElB7lIExOOobw30vo
 Gu8=
X-IronPort-AV: E=Sophos;i="5.64,470,1559491200"; d="scan'208";a="117520626"
Received: from mail-by2nam01lp2059.outbound.protection.outlook.com (HELO
 NAM01-BY2-obe.outbound.protection.outlook.com) ([104.47.34.59])
 by ob1.hgst.iphmx.com with ESMTP; 05 Sep 2019 16:43:03 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bP1ew3xCOks3eIjObZ7IPu8sMHl8rFNhenoc5Zp8jEkKxTX/eGNlL57aqfo36RtCoc/nuutIcce7WP2HvpgRQ7kmkz97H5NxPktDFVh20cAyjLtE8AHL9FFdNknKIMISHJB2InG9uuX/rPQM/MyvTdmIEuPVEyVMxNRXFHDmlW62JaVmCe24jaymo+Zab+zS31z+pU8esQ982RbIg+SMq99hCzOhAxPvKgFGh2vwt4FnEXTNeAo8HcDaalt7S28kk+sMCheD3SzLoPsjyR+8SvDcedT2LfTg6FmJY5U+TujCg0u9chGkJjh8vVx7kqlZjKcQk9ovMQYY7qu1GD0PzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GxOr2rNiVhQoWKfx7Z8pZ3PQbWb4PsX+HKo+F1pinFQ=;
 b=jApHlGGLjRFMMT8/7B23wJKtPcy4enBS6moPSkVM65rmpfQ6B3YiKOY7pw1vK6aLoiZrn3JH2s9/1WVVZYTgqbC1kUqHjLPhZRhoYXOWDmP0bH4cVO8Q5IbkyuW3DYWB6k4OQCdAk66eBuRLBweJrQqyILCMs6x0fLA9KQe7yCTwBPK8dhyq657V+rN8efvcAWH8HhQfiJqN6XQXlJy8nu5G37StB9ylSEMGrg7YjcX6jPr1P0kLhatSDvNJ+lGWTu8dZ5mQnwj9VpxT4nyaxnlzulTjVUxXDKfCVtfXQrxHldMFN9i9IXRwG1GlNmoxQZ9tS4nKDW0XyoMRDSFtsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GxOr2rNiVhQoWKfx7Z8pZ3PQbWb4PsX+HKo+F1pinFQ=;
 b=hpIQzluwx8fU+eu66xR8l/B55YX4bEua3ybI0IRaWzE9gOH5N++Dh3UagrbD3oSridLylVpfb9sjPrcigV6JC6dsPBGk+QI0azLnQizBiN7rqbYFlJBQWPoKQVAtTs62MqXTaigV0/6NO831z5kugzDaZ670KLxyrb4rZPa+Ko0=
Received: from MN2PR04MB6991.namprd04.prod.outlook.com (10.186.144.209) by
 MN2PR04MB6784.namprd04.prod.outlook.com (10.141.117.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.19; Thu, 5 Sep 2019 08:43:02 +0000
Received: from MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::9c2b:ac1b:67b8:f371]) by MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::9c2b:ac1b:67b8:f371%2]) with mapi id 15.20.2220.022; Thu, 5 Sep 2019
 08:43:02 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Chaotian Jing <chaotian.jing@mediatek.com>, Ulf Hansson
 <ulf.hansson@linaro.org>
Subject: RE: [PATCH v2 1/2] mmc: block: make the card_busy_detect() more
 generic
Thread-Topic: [PATCH v2 1/2] mmc: block: make the card_busy_detect() more
 generic
Thread-Index: AQHVY78D2wIhLs0r0UOGUgZKZkbOgKccwK8w
Date: Thu, 5 Sep 2019 08:43:01 +0000
Message-ID: <MN2PR04MB69916E18CB87074C1189D82CFCBB0@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <20190905075318.15554-1-chaotian.jing@mediatek.com>
 <20190905075318.15554-2-chaotian.jing@mediatek.com>
In-Reply-To: <20190905075318.15554-2-chaotian.jing@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8c68b9b7-b75e-417d-a8bd-08d731dd0fe6
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6784; 
x-ms-traffictypediagnostic: MN2PR04MB6784:
x-microsoft-antispam-prvs: <MN2PR04MB6784392BB9EAE3A1FACDC3C0FCBB0@MN2PR04MB6784.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:923;
x-forefront-prvs: 015114592F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(4636009)(376002)(366004)(136003)(39860400002)(396003)(346002)(199004)(189003)(81156014)(5660300002)(316002)(54906003)(26005)(110136005)(81166006)(14444005)(7696005)(476003)(25786009)(6436002)(6116002)(3846002)(8676002)(52536014)(71190400001)(71200400001)(102836004)(99286004)(229853002)(486006)(66066001)(6506007)(478600001)(2906002)(8936002)(4326008)(7736002)(446003)(305945005)(14454004)(4744005)(256004)(186003)(9686003)(74316002)(86362001)(7416002)(11346002)(76176011)(55016002)(33656002)(76116006)(53936002)(66946007)(66476007)(6246003)(64756008)(66556008)(66446008)(41533002)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6784;
 H:MN2PR04MB6991.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: VNBrc5Kt8xsltZxn4cd3H06Wl0aRNYyW4sPSWBVAJoyMAJu2NewePevBgcGN8SwZKVGjF/3thMJSzJKR9o8DrHr1F0FBLxpYkCMsUv0WHgPBH9+tp4FlqvW+Qai/gfYK0XG8IJyX7waYAZk7DwcTlXVKqjhJ9boJGjROeIdT9xYWQ6o20fKJU8iCPRcdLS+TzfYrWnB8+WIDY3RQ5F/qu7jCRKXx8WYI6Krq+NC2T12qwpz26L04lW0qrkxPJ8SIe5mu1tXO4uunSBeTY8aiyzLvHAIvvgA6eLHWO6oG03dQJhcAe8dF8QmNL/VlST82NLbRMJa3E9500RuFF2tvxXpEL+WahMX4lHlUs+viyGGtOrqzkeVaB5mnXTHYUbHkY7WklEDGjUclczrofwq2BHLHtYDYL7ZYoh07/ZyXZzk=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c68b9b7-b75e-417d-a8bd-08d731dd0fe6
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2019 08:43:01.8771 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LiYie7xnxH72BiErNhedXJxPtoaHiwbz87CPx+y7gmhyTlcQqgI0WPXsLN4inpBS9dbh5c6u2atyKC0mp7Pu+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6784
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_014306_082862_0A8443AC 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@kernel.dk>, Chris Boot <bootc@bootc.net>,
 "srv_heupstream@mediatek.com" <srv_heupstream@mediatek.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Zachary Hays <zhays@lexmark.com>, YueHaibing <yuehaibing@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ming Lei <ming.lei@redhat.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Hannes Reinecke <hare@suse.de>, Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> 
> to use the card_busy_detect() to wait card levae the programming state,
> there may be do not have the "struct request *" argument.
Maybe reword the commit log to make it more clear:

A tad optimization, removing the "struct request *" argument from card_busy_detect().
It's not really needed there, and will prove its worth in the next patch,
Where we'll use it in __mmc_blk_ioctl_cmd where struct request is not available.

> 
> Signed-off-by: Chaotian Jing <chaotian.jing@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
