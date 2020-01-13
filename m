Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60485139210
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 14:22:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oe6biiElkkm4NS8tOZmI6kOlg480lLwKAdVjPhuyFrw=; b=h9Qp3r4J06ouGf
	O79nESg/qOrn6mA1KnWwjb4Q39r9vih1KGsil3yszrt44aFPIvFRvIARpoy5b/YF82xCqngKrMK0P
	uYSfdWHnNtO/lctGtG0Ovjapmzn7IYkuPBjUr6ZtDke3NLygddQj/lQMrrAAvuH37Ajx5w5t5aNTO
	e00lhffTodLW7d3wIPq0vzNPrJiskPeXgo+5DjDR/8oUrvfR2JWvzena0+pk61fhGi092EbSz6yGy
	kUAx8BlCGIKbF6YRs7tBQi7Z9qhsnTxyC3+fKhPPP/crDy/6XAEGki9zaPsUmk8ktIRG9D2T1ySJS
	v3FueJorxIDPggs7IVyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqzfL-00041m-AV; Mon, 13 Jan 2020 13:21:59 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqzf9-00041Q-Gn
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 13:21:49 +0000
Received: from mailhost.synopsys.com (badc-mailhost2.synopsys.com
 [10.192.0.18])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 973EF4017F;
 Mon, 13 Jan 2020 13:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1578921706; bh=uuEIoKzZgL+QRBwSc86eSUYVDzgU3yPNPFY2nmwHbZ8=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=crE9676obTDiGgeWVahPEUJUHRV1Ll7ihzcUiQJl4e3oA5+acIaWSw549Dt9isTyx
 BUXCFzL1IhEDiI76bBwTxOh5dE4l+DOKln90V30L9IlGGbjL7p3b/ursM2lq6RmpRV
 S0sDsj6G2VU99dMyhbuqBzD0xzvmbtQP3qIt1fU3WBQVS0c3E8eWzvhjRf+DkfQkfX
 GHyt4NSZJEY5N/i2lhDwf0S5n8r9Hu7jahmc0RYWNXOaSW2RFpo2ev51xvnGARDklu
 kDNAmfSv2de4O9jET21VYzAz+MNPjKbiQKr+HCAUWf6gzdPyAhoTP5ZBFVr038CJni
 RzcTbGks3pR7Q==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id CFA5BA007A;
 Mon, 13 Jan 2020 13:21:41 +0000 (UTC)
Received: from us01hybrid1.internal.synopsys.com (10.200.27.51) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 13 Jan 2020 05:21:36 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.200.27.51) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 13 Jan 2020 05:21:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AhXTUbDMzfWJXF2Lf+h+C5Hxf48HrdDzKUiHsiDdibxL152OO5cv/TAA5d261sysuWpvbDAf0I7wChwtLV/KQ4ff7wtn5b3Oqmmpb86nfjUaxorBlIkFlW0ACKps0jX2eh4taGcfaGwHnmcI6XCUQ5aLzwmKjr/23Zxk1slFVsCtqwTF6aUcLBUhpBdpEaiuND5RYeZXGn+80kW8huEI8rPqYG+66u5bPapzXXOuXmZY+ehC5KcUtBXoo5GwV03lnEHTDXEDCqx41rD3GJGyPLlOEb6x/GrkNuoVGLTO89tt+78uDxOZ1GbSaM1i++lTrDDQXcf0jRv+G4Tjz/bwHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uuEIoKzZgL+QRBwSc86eSUYVDzgU3yPNPFY2nmwHbZ8=;
 b=cD+kkLp5zmrS5j8hL0oAOY4KA/Qw8Zc0ZshXBIb0ELOfp3WoNNYh1ZGdwg7z9BHAMhn7r26MIaNHhlKpt6KVKiPy9Z9Yzs0hn6ZUuAAMwdN+2Z5UCIhjGo0bTLP33hxJ1OBgNx5ZPAH1oSMTTqklyUZz+id/qXa3RZXFIvvtbvgRgLXK5PsbfqfPUekcIYdjhO1iRWdnjAW3HMUITO3RTxbPe7yPwF4gpXcZoQaeB3cD0KqW7CUoxmRHsUn8XIOnK4rUpDw+mmp0LRrIwnI16/93TjCjnrEVVOUfNZ2VK4EGn5A1dxMozxeAL4NY68maSllXAsdsGA0UpHqe9jAUkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uuEIoKzZgL+QRBwSc86eSUYVDzgU3yPNPFY2nmwHbZ8=;
 b=YOvZq+Bl91B+OjetxD0/ZUYwUoqgFwc0bOpn0gxh5rImJg6fighsh6Dod+cIlWoktkiJUdDNbccshoGroiYaKBgs2N7WUvYOibd69FNbZWoZfDz0sb6OTdMAndcPLZAZnZaSuOnmsahPNqLb0upZJlOgO+bzzqHNcQX68M0OOBo=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.67.145) by
 BN8PR12MB3300.namprd12.prod.outlook.com (20.179.66.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Mon, 13 Jan 2020 13:21:34 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::c62:b247:6963:9da2]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::c62:b247:6963:9da2%6]) with mapi id 15.20.2623.015; Mon, 13 Jan 2020
 13:21:34 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: "Leonidas P. Papadakos" <papadakospan@gmail.com>, "patrice.chotard@st.com"
 <patrice.chotard@st.com>
Subject: RE: [Linux-stm32] [PATCH] net: stmmac: platform: Fix MDIO init for
 platforms without PHY
Thread-Topic: [Linux-stm32] [PATCH] net: stmmac: platform: Fix MDIO init for
 platforms without PHY
Thread-Index: AQHVtlaLUHdZtR9zLkianwxirOcjq6fEEoEAgBiSRgCAABukAIAADA6AgAH/EgCAAIDFgIAAA9aAgAlrTQCAAABlIA==
Date: Mon, 13 Jan 2020 13:21:34 +0000
Message-ID: <BN8PR12MB326611C6FDE8399F554ADA65D3350@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <c1af466d-0870-364f-1bff-0ac015811e60@st.com>
 <20200113131920.13273-1-papadakospan@gmail.com>
In-Reply-To: <20200113131920.13273-1-papadakospan@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 92621df0-7a4a-4f03-5764-08d7982b8307
x-ms-traffictypediagnostic: BN8PR12MB3300:
x-microsoft-antispam-prvs: <BN8PR12MB3300075D8C4AC7CC6FF9E61FD3350@BN8PR12MB3300.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:747;
x-forefront-prvs: 028166BF91
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(346002)(39860400002)(396003)(136003)(366004)(199004)(189003)(26005)(4744005)(54906003)(86362001)(2906002)(478600001)(55016002)(7416002)(52536014)(316002)(7696005)(966005)(33656002)(6506007)(110136005)(186003)(5660300002)(76116006)(4326008)(81156014)(81166006)(66946007)(8676002)(64756008)(66446008)(66476007)(66556008)(9686003)(8936002)(71200400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3300;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DlD8gdQhbixOihlNzTtlSkgC0Z1/ZZb+BbzmmW/mBgi7lS0UvuDfVltPV3GS8f5DAVjAd9laLR5E+PSP1pIHu7u4kidxbZLmx3itK2jgOQSUTtTrIZqnKEOYu6Dbiw4JdllVOsQtfy/4zL+VWzwcs/uShKVPCa4nMH8iLiNRdiSS4PhIJD/wiIEPHsp4owypBAUFFsX0HSz5vDotvtEtaK+ggdJBBv3Tt04eF8Iq82V7fWR/EyolJSMHnxxshwA2wLofmBeQ4Q3hVqP6aTgihrP74Pwpj4y9mvJNsc0vW4OGmqZoAdZ1HdjurGIuzB1bqhtuf393UyL67VBOVOytX6/Ta18q5QyI6xj8LnLZQz9vF0Z8Il2Noy6PAQPOE+2ahpWxsOoDUiJ/Cnn5oI9Am0JEMYZKu8oRB7ZVz9YXsTKTBbru+n2sVqT0M/cIjE4tP/ppPu3UEyFw0g85Lj5ni6IEUQuYfgwP9G9Fx7jhKsAgnvy4bC5J/5ChUxa9sO476eyZOWs0e2O9IJ7YwUXmTQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 92621df0-7a4a-4f03-5764-08d7982b8307
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2020 13:21:34.4557 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dIv4mIHj8LNjuGGEB6QVJoSB2mSn6TFnLVPlmokPzslTKQ3Uhwpuy3C5AYcDH5DX8VMpLuNjVedND5Jk0khY0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3300
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_052147_707919_5FAF7755 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "jayati.sahu@samsung.com" <jayati.sahu@samsung.com>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "rcsekar@samsung.com" <rcsekar@samsung.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "sriram.dash@samsung.com" <sriram.dash@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "p.rajanbabu@samsung.com" <p.rajanbabu@samsung.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "pankaj.dubey@samsung.com" <pankaj.dubey@samsung.com>,
 "peppe.cavallaro@st.com" <peppe.cavallaro@st.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leonidas P. Papadakos <papadakospan@gmail.com>
Date: Jan/13/2020, 13:19:20 (UTC+00:00)

> This change affects my Renegade board (rockchip/rk3328-roc-cc.dtb),
> (and probably the very similar Rock64) preventing me from using any kernel after
> 5.4.6 in a meaningful way.

Fixed in:
- https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=da29f2d84bd10234df570b7f07cbd0166e738230

---
Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
