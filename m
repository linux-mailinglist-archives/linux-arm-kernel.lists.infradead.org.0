Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC3014A323
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 12:38:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fAKtn2/EYntiERrgnj1vChsiJ00cwSWrY2XfV1/NsEI=; b=KFa8FiY6gY76ZY
	/SJecaF5uAwaflaM046U6bxwAgaZqYZNWGKyK7TxAgz4jMteV9DPe+Fln/JLVy6xwTuXfI9wXePK1
	nrGesumQUyznIYP7pNCuzaQc3NQwa4auwPo3jBR/QiQfKY+d0OLYyZadVThzqtbdYvgGiL11J+4Jb
	EuSJMJ6Z3FhjX4O/JiCl5DvHmcT9qDzPrH8QLps2w1x07HrBPfn9N3wow9RGfOhnQ4oA5MIxqTXZa
	W55t/s16bi8IIq7+SNd2IJHkgBEfs//JbyshNsry3fSNCLWh5sv6nh+H4BltEkWMETRlmk8Zxe/1s
	Yr+o02+FZj7GGN7DtSGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw2ip-0002JG-Nx; Mon, 27 Jan 2020 11:38:27 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw2if-0002Ij-02
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 11:38:18 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 652EEC0599;
 Mon, 27 Jan 2020 11:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1580125095; bh=Lsom6xQ2xccdvTdEODQR6aNtnfnbB9V6H1ymDTXu0zM=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=iMrmzIG2Z2q2BJSUWkLZ7xNrarjECjYe1Uv1dpRIAEHsadMGwHt1AoG8xYFrNw0Gw
 SA7W7pSqM69JPc4MHMPb3rmVl8Qkf+cEysjok5Gn0dIWE1ae8pZ1P3wPY/4fC8J0LX
 oHg1tN6sRQNQKkW0VJr5r1V1mync7/1mCojwFFm2RRt6578fJ9lVxfMeyi4wy2VFv5
 sMW7l+wEK7D0prflP8NeP9J4VPLJ/S3DzTULFk/m4Q1KzluITtaRziokd4sI/2zq7P
 vvneDF9x/4mq+2tvDqxxt4tBy/Mjqp0xpYaOf0I33ZCGZ/BEBh6G3HuCWtrZyz7l3a
 AEi2ZiQJVOHsw==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 2DD40A0083;
 Mon, 27 Jan 2020 11:38:07 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 27 Jan 2020 03:38:07 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 27 Jan 2020 03:38:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ea4D5qUHpiGgWS2VX+8sko0uQJ7wk0r5JzC2N5e44M2cbIBvLAi2Wj07ez6dCU3XpJnrc6XZILw4KsfC2gVoDqT8MuQS00QIfECtKmj2pcR2Nov/6RsZ55onNivy9e+xCewzU7LpFB8vII/mCjHhjYNjkhaI9tBvecQATVC5RYrHbsoUZ0oMKtW8fq2mDhC5YntWvMVuRg6+lPWLhvNBqh9CSihXjhqUxhg29SRbcW91cFl652ABTL921v3L9eMeUC/qbS9nL0k1PwqBrgzszM31Rh6Mz2EDqmdGEkFDTA1Xke23Pq9QJgtpTHEqNE+TXZduMSCFiydOffmEHLd6Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ij0J/7oS7VnlmGYG0GqpqCdvkM8VJIm5p8Q9FcIq2Ac=;
 b=mxGVBWjvK55qxVim/bsvGi20AnUhKQZ01T2SiSNtLlgU/U5FxgaN/p61WUFsnw35dddXrk4G81oDr1A2AVmXmS+QQIU8m0+0fdwA9s4qOzguwLn+mClE+ETGhG5BQC8KQHO4TbqU0EOQcpFaAB+3a/cyaJcNFmEf6/8bSLxcMt8K8HvTN+LVuotafsVrNV0V3JF1PDfQ26cn5D/OKgfPpIQhAXm4NN8+PBlXVACkLjZB5qe9/dZQPp+7IrEX8abwRWm6L/9TlZuBdvA0OzcdqxslbJ+yz1bXhF8dF29wjqhJl/0MQmV57WKQIvLnHumdRzrw6SaEbBiuqiqM2Ga7cA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ij0J/7oS7VnlmGYG0GqpqCdvkM8VJIm5p8Q9FcIq2Ac=;
 b=ZMb43rWQv4rxG2sknOT8phye7C65yBSqsowTFYuvfl6YvfjxmIJBi4hl36n7uCSIAMaRb75lr9BzXCl/lfKp5ezMPd3+Xmqb+Bp6RtrVmCissDGgzt2zEExozOlW2qPisq+WdzoNichFqybPiGc4VM1Q3dlq0wO+yZI+eIIosIA=
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.67.145) by
 BN8PR12MB3153.namprd12.prod.outlook.com (20.179.66.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.22; Mon, 27 Jan 2020 11:38:05 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::c62:b247:6963:9da2]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::c62:b247:6963:9da2%6]) with mapi id 15.20.2665.017; Mon, 27 Jan 2020
 11:38:05 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: RE: [RFC net-next 6/8] net: phylink: Configure MAC/PCS when link is
 up without PHY
Thread-Topic: [RFC net-next 6/8] net: phylink: Configure MAC/PCS when link is
 up without PHY
Thread-Index: AQHV1QJR/2IdLzxcIUOq2qgDmVwJ/6f+XbIAgAAEH1A=
Date: Mon, 27 Jan 2020 11:38:05 +0000
Message-ID: <BN8PR12MB3266714AE9EC1A97218120B3D30B0@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <cover.1580122909.git.Jose.Abreu@synopsys.com>
 <9a2136885d9a892ff170be88fdffeda82c778a10.1580122909.git.Jose.Abreu@synopsys.com>
 <20200127112102.GT25745@shell.armlinux.org.uk>
In-Reply-To: <20200127112102.GT25745@shell.armlinux.org.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=joabreu@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e3c85c81-8d54-4846-464b-08d7a31d600a
x-ms-traffictypediagnostic: BN8PR12MB3153:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN8PR12MB3153466DDED05ED2190F6D3BD30B0@BN8PR12MB3153.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02951C14DC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(136003)(376002)(39850400004)(346002)(366004)(189003)(199004)(81166006)(81156014)(8676002)(52536014)(6506007)(76116006)(66946007)(26005)(66476007)(66556008)(64756008)(66446008)(8936002)(4744005)(7696005)(5660300002)(54906003)(186003)(55016002)(86362001)(9686003)(478600001)(7416002)(71200400001)(316002)(33656002)(6916009)(2906002)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BN8PR12MB3153;
 H:BN8PR12MB3266.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: myQ1DpfLWpDD4dI61WNkuqE063rhLuD4+ipXnunEtezVPtnQF4MnYOU6zb6059ly0pG+nfcaKJiGXEKnCQjEDfdNikl2tcdYTSSnWrOGgf1UsPnt6cW7p91BXwM8rHjdUw0x4VuG/Q3URNCmLzjB6p4RXxvwMvcTVpGQeeysMJXGbspWNV2AgqH5NNAhQpPYxlkIEG2QfMIAgrk4BCoKuPRhYUGIvb4jU+qDvaPQOY986rWn6efkLuVQ2RiWMeeGxc5t9WFxwqJqDZ6Ch5qhJddYN1DQKedbg79/m5VkRXzZr2lK0qQlwzXgq6+FEDxwRXb1kGacmBhI687yGaqfMfienWc/dxeg856CARciBoGNGt5updUbhD46/yWvdUeP4C+dMoLcHdq9BKW1UnFmzd375jLwfIa5gTcf9yXlO0rtWU0aYJxwWojF4ZbF6Nn6
x-ms-exchange-antispam-messagedata: +a84ukGHZ4oUOq/scdiDYwm0KkR0fUjz48zth17kHuqDVb4bYug7etMM96bxHyaigE+ODbGnw97o2iCTAAX2Qq8Gs2flLICzZBWusP8HWy5Qddc+/Cqt8K/GgzISNpr2+vgGOF4KEt4iNDrSHOCqgg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e3c85c81-8d54-4846-464b-08d7a31d600a
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2020 11:38:05.4740 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P74m1XRZ/F4eJXJq/5MO6qyvfMIJUtVph4sYZTtLbX4Nx7PR3WYHlMX7751ujLT/Wv5TYMTe4od3vDlccbCq1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3153
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_033817_226819_96D7D517 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Lunn <andrew@lunn.ch>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Date: Jan/27/2020, 11:21:02 (UTC+00:00)

> On Mon, Jan 27, 2020 at 12:09:11PM +0100, Jose Abreu wrote:
> > When we don't have any real PHY driver connected and we get link up from
> > PCS we shall configure MAC and PCS for the desired speed and also
> > resolve the flow control settings from MAC side.
> 
> This is certainly the wrong place for it.  Please hold off on this patch
> for the time being.  Thanks.

This is actually the change that makes everything work ...

I need to configure PCS before Aneg is complete and then I need to 
configure MAC once Aneg is done and link is up with the outcome speed and 
flow control.

---
Thanks,
Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
