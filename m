Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4E612A3A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 18:37:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pfJD3Gq3TvfyrcXtfaIZ62EUSbd/+WP2xJEpCsANv28=; b=KpXkApxrJsLcez
	iHey1mRCn2e7YP52WAPC76yx2OjW+Vdx9ew9YYeXU6Zh1xiOQ86lxOhxQsLYKPo+YvlQIvD4f79Kp
	VpNaaoTNKMQNC6lGnVavwhZzIvUPKVEozibXgrpSOw4JGCvmlS08vn4k2PuvzqH/IHwuDebgdAV4l
	ks063RrW4cv+VhYrQWA1ZJEZEA3lBm1r3dI1I+TLzhlv4EMsZcyQwbPlXY1iRWnNUP4PaPUzgvSYi
	+azjUrK1RV/lstjjEQ4cvmGp4DOoFunzSV9IUkIS7ELOAbgsH4hfTvo+2xskGa4bD9dkQzhtCias0
	N7OVNpp97+ZMoAkuLmAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijo7A-0003W6-Mo; Tue, 24 Dec 2019 17:37:00 +0000
Received: from mail-eopbgr80047.outbound.protection.outlook.com ([40.107.8.47]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijo71-0003V6-DG; Tue, 24 Dec 2019 17:36:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UWvJevW4xRToyZQGigK+R8NypYOG19jLBIcxe/VCxDY=;
 b=2BEAS5H5+Ej5RjwcSYQYnNdfCouOCVr6PZkZ8OWtBfl/7GePPdkAkU8trQIkAqI3f8y8lIDQlP0N9CqATf+wkxfDWjPos6FX+zZ6bhgnnVy4OQS/nXzs/LCffER4U39ROeFBIjykGUsephUyfBK3ySegsc/qxiHONyd7ayvzb50=
Received: from HE1PR0802CA0015.eurprd08.prod.outlook.com (2603:10a6:3:bd::25)
 by VI1PR0802MB2479.eurprd08.prod.outlook.com (2603:10a6:800:af::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.14; Tue, 24 Dec
 2019 17:36:45 +0000
Received: from VE1EUR03FT036.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::202) by HE1PR0802CA0015.outlook.office365.com
 (2603:10a6:3:bd::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.11 via Frontend
 Transport; Tue, 24 Dec 2019 17:36:45 +0000
Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org;
 dmarc=bestguesspass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT036.mail.protection.outlook.com (10.152.19.204) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14 via Frontend Transport; Tue, 24 Dec 2019 17:36:45 +0000
Received: ("Tessian outbound e09e55c05044:v40");
 Tue, 24 Dec 2019 17:36:43 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: e233a8ff672766e4
X-CR-MTA-TID: 64aa7808
Received: from df58a739e11a.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 304581A2-2F56-4A1F-84E8-EAF1F21F7C60.1; 
 Tue, 24 Dec 2019 17:34:21 +0000
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id df58a739e11a.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 24 Dec 2019 17:34:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U8VA9gifruGxHBkDiKih9yj2ORXS5HorrYfs/nA61CHix36rT5XIWT4vlx/PvqShBt4q9Le1mIp7e/Wx3VvfnZd/b2wqUQfVg379fmcOV0T4v7Jr4yZgPu9dIje2hzBjvcionh35OwX0XbqKeZyqcsGSP/GSL3dFPG2hn7OW13QxJErIfHdz+RkUyjLR0Ay0STIOxoeK8tqOsrIKOjpE4LKq8NGcTjIz3Pz8ucmN6dZTV0RLyZL5jmt7+p7QIl0YLTQZT+0uqo3KDWnCWPfOQ+d9wzjlSaZNmw/Tm1gjb3fLWpbV/pZ6Mf04AMUt1acUeEaXqNcNCQzX1xg+9uddGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UWvJevW4xRToyZQGigK+R8NypYOG19jLBIcxe/VCxDY=;
 b=CZOFSxCdOaBG57IQ1ITwIFNSUru1dZHr54t7ShRsdQVlQ6q0pZTmKMlsKaTx+3cTX5svtWsA2FRI/f4kjR6PRgPOoYAqg513TS9qlqDml3WJiKjoakunBX593Cjr3BXzYTeUDFMLSLAqdH4DfvFPQ71CEhgGvvV4gbtWCz9qDmV6JalB2mC3YXAWsShDkTSNapHJt9eBCxiF6CWNCZGiA4Kyte8GkFZJbSjrBPLVhwnS1CLHZLgXGozixDYviXWlDPnmz8r7KX16zGtFadR6R1nCh6IArjeCzJE1upaznQlQYFfCb733S5RfcA1Hi6rncIdATAh2kEvfHOBrWdPtnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UWvJevW4xRToyZQGigK+R8NypYOG19jLBIcxe/VCxDY=;
 b=2BEAS5H5+Ej5RjwcSYQYnNdfCouOCVr6PZkZ8OWtBfl/7GePPdkAkU8trQIkAqI3f8y8lIDQlP0N9CqATf+wkxfDWjPos6FX+zZ6bhgnnVy4OQS/nXzs/LCffER4U39ROeFBIjykGUsephUyfBK3ySegsc/qxiHONyd7ayvzb50=
Received: from VI1PR08MB4078.eurprd08.prod.outlook.com (20.178.127.92) by
 VI1PR08MB2702.eurprd08.prod.outlook.com (10.170.239.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Tue, 24 Dec 2019 17:34:18 +0000
Received: from VI1PR08MB4078.eurprd08.prod.outlook.com
 ([fe80::3d0a:7cde:7f1f:fe7c]) by VI1PR08MB4078.eurprd08.prod.outlook.com
 ([fe80::3d0a:7cde:7f1f:fe7c%7]) with mapi id 15.20.2559.017; Tue, 24 Dec 2019
 17:34:18 +0000
From: Mihail Atanassov <Mihail.Atanassov@arm.com>
To: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Subject: [PATCH v3 00/35] drm/bridge: Consolidate initialization
Thread-Topic: [PATCH v3 00/35] drm/bridge: Consolidate initialization
Thread-Index: AQHVuoBd9M/nIZUWsU+Eo17ASMPFrw==
Date: Tue, 24 Dec 2019 17:34:17 +0000
Message-ID: <20191224173408.25624-1-mihail.atanassov@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [217.140.106.53]
x-clientproxiedby: LNXP123CA0023.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:d2::35) To VI1PR08MB4078.eurprd08.prod.outlook.com
 (2603:10a6:803:e5::28)
x-mailer: git-send-email 2.24.0
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Mihail.Atanassov@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: f490f94b-cef0-420f-533a-08d78897d8b3
X-MS-TrafficTypeDiagnostic: VI1PR08MB2702:|VI1PR08MB2702:|VI1PR0802MB2479:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0802MB247987DED49AE091D86CC3BC8F290@VI1PR0802MB2479.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:182;OLM:182;
x-forefront-prvs: 0261CCEEDF
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(366004)(396003)(39860400002)(53754006)(189003)(199004)(81156014)(8676002)(478600001)(36756003)(4326008)(8936002)(66446008)(64756008)(66946007)(66476007)(66556008)(26005)(7416002)(186003)(44832011)(6506007)(7406005)(2616005)(81166006)(71200400001)(316002)(2906002)(1076003)(6512007)(54906003)(6916009)(6486002)(86362001)(5660300002)(52116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB2702;
 H:VI1PR08MB4078.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: Gb7NFTsHGBhDbgR2I/htyd9tebpsIWIpCB+qvmXhXnJ+Du19QU6xOKxhhbbaNYB94gaPiVr0IF9b+K3eDqkUel9rn3qviyF4VDitMqtMM/9+w4FXGm2GFbWzwPyKaJ6h2RyTHglI97QA650colcRFnLiAe4UHEM30RWRVm5QERysHbtuDqPntsZ7XizkECBI66DX3SPYs2kbEVCHvJdR7XjpQbO5kbTFzii5jkUsxA18mQTqYed9noqJbfIlXBzCIRXv75G6eJ8YFFRicytpd8K7r0200q7Cmj5bXAS7NcKjo5P9757jaqz3EfWFECzdL/xs6N/9ARblVInHajEnmrMpeB3STmsct1ULKKOh1Azz15MxRu7CxDZe+1NarVXimtTBmOSbrFaksF9Q8G33TeNrWo4LJeEq6ZnRhDNZti52A8+Xf+snmOzd+3NEezm4+zF6FOAMeh4nLkBvQZzhx4muN/DR4BBxazWT2916gXeg7w5g9C6U2gcL0AcfDeGM
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB2702
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Mihail.Atanassov@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT036.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(39860400002)(396003)(189003)(199004)(53754006)(5660300002)(76130400001)(2906002)(1076003)(6506007)(86362001)(356004)(70586007)(336012)(70206006)(186003)(26005)(2616005)(6486002)(54906003)(107886003)(26826003)(478600001)(4326008)(450100002)(36906005)(8936002)(81166006)(36756003)(81156014)(8676002)(316002)(6512007)(6862004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0802MB2479;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:Pass; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: d70dcff6-a071-4c2b-18fa-08d788978063
NoDisclaimer: True
X-Forefront-PRVS: 0261CCEEDF
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y6C76b2WEr7KDSy0EqYYNflOF8OqYN+RMXXsbtFlzYy2OPgwVMEu0WgvfcBVp7mEu3TxsaVtMWl9C5+J0PBZHl50ZyWRXfOkIyrECBQwdrx2yd5EYzY3LKKlOkMyGCHe2LSonNgoQp+tkELo6D+hlD5ofQ3cgaMIzAX6Ai1YBL1tsDmR3TInomzGm4vtUXwW/uc3e0fajBX8qArkTtKlPPY7hZ+NFPDbssY/i0XslBV4zfy4MWWKAqoL14pRT0Y55/ViEFKfTeyB+NiRm14GRXWh3XdTXgHJZMNq1T/zNAsV5SVEBNy+rSkyKEhmaOfs5AD5+fQusPfCNcfhNpg0EO2eQWsuWqg1r5jYLjmxwjFHuCvZZGz44uCwWlm1Ft5HLzDD6JQ1telgrV0Am5diFyVJDwiK0JeVKvTxnGsyhU9gHiY5S0K1WtT6vy1Zr0UdINoF53ht1y7tqlK7/iFlqN5vSt8kNLpOdPuwb9/Q8SzTDvjw8nAi/7t6kMgo8JTt
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Dec 2019 17:36:45.1823 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f490f94b-cef0-420f-533a-08d78897d8b3
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0802MB2479
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_093651_615403_B00D04DC 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Martyn Welch <martyn.welch@collabora.co.uk>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>,
 Peter Senna Tschudin <peter.senna@gmail.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mihail Atanassov <Mihail.Atanassov@arm.com>, Sam Ravnborg <sam@ravnborg.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Vincent Abriou <vincent.abriou@st.com>, Russell King <linux@armlinux.org.uk>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 CK Hu <ck.hu@mediatek.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Inki Dae <inki.dae@samsung.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, nd <nd@arm.com>,
 Sean Paul <sean@poorly.run>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 Rob Clark <robdclark@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 "freedreno@lists.freedesktop.org" <freedreno@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Version 3 of my drm_bridge_init() series here. The biggest change from
the previous version is the removal of drm_bridge->dev (1/35) and the
removal of ->driver_private (2-7/35). The rest of the patches are mostly
the same, save for dropping the driver_private argument from
drm_bridge_init().

v3:
 - remove drm_bridge->dev (Thomas)
 - convert ->driver_private users to container_of() (Laurent)
 - remove drm_bridge->driver_private (Laurent)
 - remove driver_private argument from drm_bridge_init() (Laurent)
 - clean up the wording on some comments (Laurent)
 - pass the correct struct device to drm_bridge_init in analogix
   (Laurent)
 - I've kept the rcar-du patches separate but changed their order; this
   should make it easier to take only one part of the series if needed

v2:
 - expanded commit messages and added some extra bridge-related
   documentation (Daniel)
 - dropped v1 patches 29 and 30: 29 needs more work, and 30 depends on
   it
 - added all remaining drm_bridge implementers, found by searching for
   drm_bridge_funcs which is mandatory for any bridge; new uses in
   patches 3, 27, and 28 (Sam)
 - due to the above, I've decided to squash all analogix changes into
   one patch

Mihail Atanassov (35):
  drm: Remove drm_bridge->dev
  drm/bridge: analogix_dp: Stop using drm_bridge->driver_private
  drm/bridge/synopsys: Stop using drm_bridge->driver_private
  drm/bridge: thc63lvd1024: Don't set drm_bridge->driver_private
  drm/exynos: mic: Stop using drm_bridge->driver_private
  drm: rcar-du: lvds: Don't set drm_bridge->driver_private
  drm/sti: Stop using drm_bridge->driver_private
  drm: Remove drm_bridge->driver_private
  drm: Introduce drm_bridge_init()
  drm/bridge: adv7511: Use drm_bridge_init()
  drm/bridge/analogix: Use drm_bridge_init()
  drm/bridge: cdns: Use drm_bridge_init()
  drm/bridge: dumb-vga-dac: Use drm_bridge_init()
  drm/bridge: lvds-codec: Use drm_bridge_init()
  drm/bridge: megachips-stdpxxxx-ge-b850v3-fw: Use drm_bridge_init()
  drm/bridge: nxp-ptn3460: Use drm_bridge_init()
  drm/bridge: panel: Use drm_bridge_init()
  drm/bridge: ps8622: Use drm_bridge_init()
  drm/bridge: sii902x: Use drm_bridge_init()
  drm/bridge: sii9234: Use drm_bridge_init()
  drm/bridge: sil_sii8620: Use drm_bridge_init()
  drm/bridge: dw-hdmi: Use drm_bridge_init()
  drm/bridge/synopsys: dsi: Use drm_bridge_init()
  drm/bridge: tc358764: Use drm_bridge_init()
  drm/bridge: tc358767: Use drm_bridge_init()
  drm/bridge: thc63: Use drm_bridge_init()
  drm/bridge: ti-sn65dsi86: Use drm_bridge_init()
  drm/bridge: ti-tfp410: Use drm_bridge_init()
  drm/exynos: mic: Use drm_bridge_init()
  drm/i2c: tda998x: Use drm_bridge_init()
  drm/mcde: dsi: Use drm_bridge_init()
  drm/mediatek: hdmi: Use drm_bridge_init()
  drm: rcar-du: lvds: Use drm_bridge_init()
  drm/sti: Use drm_bridge_init()
  drm/msm: Use drm_bridge_init()

 drivers/gpu/drm/bridge/adv7511/adv7511_drv.c  |  6 +--
 .../drm/bridge/analogix/analogix-anx6345.c    |  7 ++--
 .../drm/bridge/analogix/analogix-anx78xx.c    | 10 ++---
 .../drm/bridge/analogix/analogix_dp_core.c    | 42 +++++++------------
 .../drm/bridge/analogix/analogix_dp_core.h    |  8 +++-
 drivers/gpu/drm/bridge/cdns-dsi.c             |  6 +--
 drivers/gpu/drm/bridge/dumb-vga-dac.c         |  8 ++--
 drivers/gpu/drm/bridge/lvds-codec.c           |  8 ++--
 .../bridge/megachips-stdpxxxx-ge-b850v3-fw.c  |  6 +--
 drivers/gpu/drm/bridge/nxp-ptn3460.c          |  5 +--
 drivers/gpu/drm/bridge/panel.c                |  9 ++--
 drivers/gpu/drm/bridge/parade-ps8622.c        |  5 +--
 drivers/gpu/drm/bridge/sii902x.c              | 11 +++--
 drivers/gpu/drm/bridge/sii9234.c              |  3 +-
 drivers/gpu/drm/bridge/sil-sii8620.c          |  3 +-
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     | 26 ++++++------
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c |  7 +---
 drivers/gpu/drm/bridge/tc358764.c             |  8 ++--
 drivers/gpu/drm/bridge/tc358767.c             |  9 ++--
 drivers/gpu/drm/bridge/thc63lvd1024.c         |  7 +---
 drivers/gpu/drm/bridge/ti-sn65dsi86.c         |  7 ++--
 drivers/gpu/drm/bridge/ti-tfp410.c            | 10 ++---
 drivers/gpu/drm/drm_bridge.c                  | 40 +++++++++++++++---
 drivers/gpu/drm/exynos/exynos_drm_mic.c       | 16 +++----
 drivers/gpu/drm/i2c/tda998x_drv.c             |  8 +---
 drivers/gpu/drm/mcde/mcde_dsi.c               |  5 +--
 drivers/gpu/drm/mediatek/mtk_hdmi.c           |  4 +-
 drivers/gpu/drm/msm/dsi/dsi_manager.c         |  3 +-
 drivers/gpu/drm/msm/edp/edp_bridge.c          |  5 +--
 drivers/gpu/drm/msm/hdmi/hdmi_bridge.c        |  7 ++--
 drivers/gpu/drm/rcar-du/rcar_lvds.c           |  7 ++--
 drivers/gpu/drm/sti/sti_dvo.c                 | 23 ++++------
 drivers/gpu/drm/sti/sti_hda.c                 | 19 ++++-----
 drivers/gpu/drm/sti/sti_hdmi.c                | 15 +++----
 drivers/gpu/drm/sti/sti_hdmi.h                |  5 +++
 include/drm/drm_bridge.h                      | 16 +++++--
 36 files changed, 181 insertions(+), 203 deletions(-)

-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
