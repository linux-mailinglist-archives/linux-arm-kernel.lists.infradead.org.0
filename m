Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25CFF7E3D6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 22:18:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ek+W9TjgVDGnfOi23OVH8BOjFhy3tB9tGsSMvHE3v7A=; b=A/TZyrTghsHY5a
	GOLQ6wDvrD5eJtS2yizT/d1RdWllBEIwVnpTXLVCoAEMzOuodVZ5w0eMKCUhYWDoYctkUqkM306aV
	gAiYxG8c6nXKorbiBe0mUrtDdZNVsi1m/H8wFIBU5JUAV+tQZXHtfeKOeJnbG389ceaTB16RoKves
	N8uFP6uUQyImBQbBDHoQAiFSjCDjqyhPJ0V9HAiwX+4QdR6TBeJ4Lt/4S4qKM81NTH0PUGbU7AbCR
	08Sg6IMjmu+WjlO65WjCufqFepR0Ac4k2uaZumTgTrFCzM9oOUY+Bl6WkJ4eb5MrdHSevl1+av6Yx
	Wwwze/FDF6lAxBnUfcDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htHWW-0005Vo-Kt; Thu, 01 Aug 2019 20:18:04 +0000
Received: from mail-eopbgr60075.outbound.protection.outlook.com ([40.107.6.75]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htHVa-0004EZ-2i
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 20:17:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RffXdq5IMWd99E3ft2BFBBovy6Sgjz6qb8j66RD44BjpFdi5WtdzYJIF7XNnStcR8/goxwFNrufIpkcXl9WDk/5zPx5t8cAg+0P8zE+/JJwZh8CdpTaivcEWXVKYcldskd3oOycQYU0J5NJ16gUTIacnHV+yt6u89iEYJYOcA03yadqrVaryvy+sKZzPqsIJInKy56VFQOimqepwe23jEXihUP4DhLZzwsZTYj8d7hOfGX22LxmIP/ckuWafJZCY9/kfuooecLHh0PXzQFkhW8JQW8BxhVTbltQIQQiMXXMY0mDXSSywBJBOVzTrq5UMheYFNW6VAfsEedvtvkeL4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aBWOZB9A9QLCsl/EiU2J6XfBNYpFfgi0BtBgM52Vh8M=;
 b=K+GowrPsjIZwOnsf5QpTiFdyvWoBQd5Wq7G1OJ0p4iD3kUKxyG/z6Jh9TCGapOZ5XJWJ3cKKdC1vG3074JEAquJm0cnW8k1tYXJLrvmvBn26A5opjHVj+UIyvQkmbFtRWLMn1OIc47vJ1byj5w7RSH8ENL+rbpb4iOmYjlFhUB2JnKGeIzB/FOe75PsItnpvYqB3v51rH7brGM74fU+Audz4QJWiP/tQMCYBJU1pscXfYug6tIXur/hYyVuAWRjdPfMegokqdaj8lNCzAG+z+WiyR4TW8FezFbfJsOy/DrKKKJuNCyiLbpmS+2/DVrxlUnra5VpUIgNqAHhx75zsSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aBWOZB9A9QLCsl/EiU2J6XfBNYpFfgi0BtBgM52Vh8M=;
 b=RLDyPFLkOpzZrlwtSfnEQiAiuRKS9Ldpnp+iFr7fIXxeMvOkEt0MZ1xEl5Q6QEQVo1Xpajc/t3+9X0HPmpZDVO52emIrdb+jckzvPThfBy9EovSUYTWCusXpFuRanwrb+Ux0vejNQEm2UqU5v+1vQWayf1PyvI5OsxLzuBb3kQQ=
Received: from VE1PR04MB6463.eurprd04.prod.outlook.com (20.179.233.20) by
 VE1PR04MB6656.eurprd04.prod.outlook.com (20.179.235.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.10; Thu, 1 Aug 2019 20:16:59 +0000
Received: from VE1PR04MB6463.eurprd04.prod.outlook.com
 ([fe80::8fc:e04c:fbb6:4f1f]) by VE1PR04MB6463.eurprd04.prod.outlook.com
 ([fe80::8fc:e04c:fbb6:4f1f%7]) with mapi id 15.20.2115.005; Thu, 1 Aug 2019
 20:16:59 +0000
From: Roy Pledge <roy.pledge@nxp.com>
To: "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH v3 4/7] soc/fsl/qbman: Fix drain_mr_fqni()
Thread-Topic: [PATCH v3 4/7] soc/fsl/qbman: Fix drain_mr_fqni()
Thread-Index: AQHVSKYSvUv/rPwBlkeXxjwGukCmsA==
Date: Thu, 1 Aug 2019 20:16:59 +0000
Message-ID: <1564690599-29713-5-git-send-email-roy.pledge@nxp.com>
References: <1564690599-29713-1-git-send-email-roy.pledge@nxp.com>
In-Reply-To: <1564690599-29713-1-git-send-email-roy.pledge@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: SN4PR0501CA0130.namprd05.prod.outlook.com
 (2603:10b6:803:42::47) To VE1PR04MB6463.eurprd04.prod.outlook.com
 (2603:10a6:803:11d::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=roy.pledge@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [72.142.119.78]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6049c9a1-f12f-452c-727d-08d716bd3535
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6656; 
x-ms-traffictypediagnostic: VE1PR04MB6656:
x-microsoft-antispam-prvs: <VE1PR04MB66560F08A80AEF6D0B649A1186DE0@VE1PR04MB6656.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:330;
x-forefront-prvs: 01165471DB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(376002)(396003)(366004)(199004)(189003)(386003)(6506007)(305945005)(7736002)(71200400001)(71190400001)(68736007)(14454004)(36756003)(54906003)(316002)(4744005)(110136005)(6116002)(3846002)(486006)(186003)(66066001)(6436002)(256004)(26005)(2201001)(6636002)(3450700001)(44832011)(6486002)(102836004)(2906002)(14444005)(446003)(476003)(2616005)(50226002)(64756008)(66446008)(66476007)(25786009)(81166006)(66946007)(52116002)(5660300002)(11346002)(76176011)(478600001)(66556008)(8676002)(86362001)(81156014)(8936002)(99286004)(6512007)(4326008)(2501003)(53936002)(43066004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6656;
 H:VE1PR04MB6463.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MIb5s+aQ0MhROi2TSCfXpU78AOwyFbta0P+YAFTHfdSSu1PDwH1Pis8mY1+y2JBuQViVJVbTMBfxhOBIC3AN0ZtCu1jekactVCAoF46ZQ8Ig3c6r3Vn1EFW26ViB07fnVrGONkXf711UZAfZHmBpLMqoMSsG2d4ErQXMW7E2/vr/bCMQMmK7vT3qTnFD1A20Ajd8XL2QqwMe4wDMIecfuTJIg8NFdvt1uA0m95PyM4wYHIyqwvJAlqJMSWdiLtBnleQtcs4nrE9lJ9ET/9ZXR6F8N1MGRqzY+170nbuYBWRDRja/cxFS88gMJZVb87ZHg6xU5ugtmFv3tn5LI5+yy5TbMz2x95jLHOsNwZgiQM1Yfc4K5u7JBTA3ame53qLh8zNFAAsQcng0AVAmEAi8ic872b7FtHbY4FFjzpX/1+o=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6049c9a1-f12f-452c-727d-08d716bd3535
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2019 20:16:59.6707 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: roy.pledge@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6656
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_131706_145113_7A0ABF7A 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.75 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: Roy Pledge <roy.pledge@nxp.com>
Cc: Roy Pledge <roy.pledge@nxp.com>, Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 Madalin-cristian Bucur <madalin.bucur@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The drain_mr_fqni() function may be called fron uninterruptable
context so convert the msleep() to an mdelay().  Also ensure that
the valid bit is updated while polling.

Signed-off-by: Roy Pledge <roy.pledge@nxp.com>
---
 drivers/soc/fsl/qbman/qman.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/fsl/qbman/qman.c b/drivers/soc/fsl/qbman/qman.c
index f10f77d..2989504 100644
--- a/drivers/soc/fsl/qbman/qman.c
+++ b/drivers/soc/fsl/qbman/qman.c
@@ -1164,6 +1164,7 @@ static int drain_mr_fqrni(struct qm_portal *p)
 {
 	const union qm_mr_entry *msg;
 loop:
+	qm_mr_pvb_update(p);
 	msg = qm_mr_current(p);
 	if (!msg) {
 		/*
@@ -1180,7 +1181,8 @@ static int drain_mr_fqrni(struct qm_portal *p)
 		 * entries well before the ring has been fully consumed, so
 		 * we're being *really* paranoid here.
 		 */
-		msleep(1);
+		mdelay(1);
+		qm_mr_pvb_update(p);
 		msg = qm_mr_current(p);
 		if (!msg)
 			return 0;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
