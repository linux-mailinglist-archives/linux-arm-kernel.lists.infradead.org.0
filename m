Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3203EF0535
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 19:37:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=78fyqejI7bkBkMWdZ3bUCjRxtyZ0QpXOsrUa3AKWDvw=; b=ZLNRCbB0IEYFpO
	pzqFgVgjVuDm4aGN/wHR49yRrV60iYfYc3gPEnSqFsLEJixIuPq4QKYbhIxC52RitQe28CySo3Vrv
	HU2h1D0/TFeU2+Gzx1iFvkl5T7JAjc7jyqx8pB2zOz41q5knpd5YKnf4QIToBLkR2Ua6sW1pAIX+N
	9WJeqCuzoewVxyEsuof4gyDO05MqpQkqa98hUB6ylauz3DOPfvqUVodI+MeMkhMd+PW1+CHxWEwji
	Y8uaPKU5BXESk9wYaSPU8MXnX1PXMYNi89nx0wYJa2xxJjl6AMvHsGyF8X/fU19TDM28m0xANQ1jR
	huWx7CcQvEWb2l42Hipw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS3ha-00077R-N9; Tue, 05 Nov 2019 18:37:14 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS3hU-00076h-2B
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 18:37:09 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA5IQEj1005050; Tue, 5 Nov 2019 10:36:57 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=NwEcn0vh+gw64a78KhngrDhjQKsxI/ExuWYOYHrs0Dc=;
 b=KVGuiJlKsWBoE16r6xccejGVQhDXny5Btw6dfH3J/iR84rNPfPtTS/gY0IoAorMrd0Fg
 5QTXNvF77fP7+Az5zzmeC2LtYq3Ett/90WtNBXnHGOLaEshDOMFG0zah9wPekqQbEKBq
 lDpB/ng1r4Fugbcq75TL/naqYjh/vXKlrWisEI+XKcGNKPyCNAapy6X3duvgbTSrsFM2
 bqtd9398wi74sk0zgio97xIkv1jwXJwtcGaF3Q735OIiQceLZ+r+novKta52a+YaVzxG
 qFQroGyEKqgPOQHa4RC9W6z9wV3UQj7Eju+CzxzJhTLw/eOZTQuY8gZkvTSAgrZo6oVk 7A== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0a-0016f401.pphosted.com with ESMTP id 2w17n94d3c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 05 Nov 2019 10:36:57 -0800
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Tue, 5 Nov
 2019 10:36:56 -0800
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (104.47.48.56) by
 SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Tue, 5 Nov 2019 10:36:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kXTrRTZaNC6/A5hSnK8Za8bE9mTJ8lfCJ9lQpyV06XHxnePCD5+V9DA2IN6woxK28ZF3bhWABUYOGOjAKQi3dnBnrglj9MtnmrsfbwY1mYGwl60K4IG7yMpYsDJLtITsrO3WfSmzMekNJIMnnIPYn111uRxz7VjAY/DWUSJNdXpgZg6Gr6Xc9I5XmRqixBzGy0HipJKEglyllkbX8+LxRkvMA1go0caLVRqxzpAH3PCY/MXgmSx4bnFJPO3zIDiUGeo1BazJt1AiUhGBJlASnGIDL4dbNOYBsws5iD4EpLzW7ViZnIvwUdzP31iuPtiJGt09TtCLH1TE/paEggql+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NwEcn0vh+gw64a78KhngrDhjQKsxI/ExuWYOYHrs0Dc=;
 b=GUJl/j3xrUV5iEg1bEISFyGCxBbNTc5hUDqh0R5R62MjuQh5N6NELy8e+m+OPdu7+St2Y1Fil/vOu2ghVmDvEJYP2soC/mctUvkzlkdA55WemSc9IGgFqBkypF9J7QnkhZIEpCoWCelgCwC8G0RQkXOFoD1Wuz7CUNvS8Dy6/suMq7Mpxbs48PD64V90f1vA7IZBcC+cqS6PGFhiMTA9TcnW5H1HylF4LtEk/t/FZ5Lz0Wi5Rm9i+qV1ElpvhQ4eIPc3/YlBaSl7d2J8jVoYy5xdh3gB/DAAObRTN8EdE2WM8Jh6ChIYX4hlNO6q53gUvpFnsAY8wMioRNGMkws+9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NwEcn0vh+gw64a78KhngrDhjQKsxI/ExuWYOYHrs0Dc=;
 b=JwR8mY8GstyZQ3QMBhztMjrONaaUPlnCT++BwEzJmiS2OI1j0+nu1xYiSqqnm2zNkReYdB5hRASoXXAIR+LwjH/g5yho/yo7ZebjdpbZz3fhcFzCnGqCQzR3+CT9sY+JvmoW1PNyzBAGdbSAvpKc1RsRmPcjDGd8+VMSyit2N+E=
Received: from MN2PR18MB3408.namprd18.prod.outlook.com (10.255.237.10) by
 MN2PR18MB2639.namprd18.prod.outlook.com (20.179.82.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Tue, 5 Nov 2019 18:36:54 +0000
Received: from MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::c4a:cf3c:f530:fba6]) by MN2PR18MB3408.namprd18.prod.outlook.com
 ([fe80::c4a:cf3c:f530:fba6%6]) with mapi id 15.20.2408.024; Tue, 5 Nov 2019
 18:36:54 +0000
From: Robert Richter <rrichter@marvell.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH] MAINTAINERS: Update Cavium ThunderX2 entry
Thread-Topic: [PATCH] MAINTAINERS: Update Cavium ThunderX2 entry
Thread-Index: AQHVlAf/K42UiB2+dE6/POZm6X0K+w==
Date: Tue, 5 Nov 2019 18:36:54 +0000
Message-ID: <20191105183645.3zkcz3gbdk4dc2o3@rric.localdomain>
References: <20191105154654.4675-1-c.jayachandran@gmail.com>
In-Reply-To: <20191105154654.4675-1-c.jayachandran@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1P190CA0024.EURP190.PROD.OUTLOOK.COM (2603:10a6:3:bc::34)
 To MN2PR18MB3408.namprd18.prod.outlook.com
 (2603:10b6:208:165::10)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [31.208.96.227]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b19a2914-fbfe-43d1-29b0-08d7621f217e
x-ms-traffictypediagnostic: MN2PR18MB2639:
x-microsoft-antispam-prvs: <MN2PR18MB2639861BE79BFAB6664FA9D8D97E0@MN2PR18MB2639.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39850400004)(396003)(376002)(366004)(136003)(346002)(189003)(199004)(15650500001)(14454004)(8936002)(76176011)(71190400001)(71200400001)(86362001)(6116002)(3846002)(6436002)(386003)(6506007)(53546011)(102836004)(52116002)(5660300002)(6486002)(66066001)(4326008)(11346002)(446003)(1076003)(6512007)(9686003)(486006)(476003)(186003)(256004)(14444005)(25786009)(2906002)(305945005)(66946007)(478600001)(8676002)(81166006)(81156014)(54906003)(110136005)(316002)(26005)(64756008)(7736002)(66556008)(66446008)(66476007)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR18MB2639;
 H:MN2PR18MB3408.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 47MhFpsM7IYqx/cSUIyiNYciBDQyO6VFj0TTrujiknMAlXEm1+krgvJ6+o9luvwThs5XSqhWDXK6chQO8z9p0beUX9ZSxpnWaqn0Jljn3WhA+Qn3L/AUhs5BFiawQsQR5mzy+8VMzoPWP2g26+b7LW0PShdtNcuvFVq6GU+56cnb6d4LWVn1rWvaRN4eHfzOsa+nLbZ4TQjL9Y4CW5j2bNNkHYjxtRV/wlbAyShRINHMxpi7DS4Bcgbl7Ry6AZ2Wlgbw8wqsGYpW0/VSBYpZgy+vRq448Rq0BLWefq/bvn8QpYB0jK1nAu7Jey8VK8DiN0kXV7R5l30Zw18MYSNTlyBaYq6mTnGndS0p+kjPRaSnlasMk064rQxGr1yv7xf2MZWaiAOdfz9aqmW+qvXW7ci162g+CrOWU+TBEdJf3lEMdZycMyfQh7RGkqo7fijv
x-ms-exchange-transport-forked: True
Content-ID: <BFD288F73CB0BA4A85F724945F57718D@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b19a2914-fbfe-43d1-29b0-08d7621f217e
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2019 18:36:54.3508 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: STtSCfu2Z1gq/kRJOy9/nmYx7Z5Y+yeIYk/zsfnP0gfJewFJ09zqE10UV4yltLeSdzPqsoegaNBRqZ1VwhkJHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB2639
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-11-05_07:2019-11-05,2019-11-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_103708_110674_CB086F35 
X-CRM114-Status: GOOD (  20.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, arm soc <arm@kernel.org>,
 Jayachandran C <c.jayachandran@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05.11.19 21:16:54, Jayachandran C wrote:
> jnair is no longer at caviumnetworks.com (or at marvell.com). This also
> means that Cavium ThunderX2 will now be maintained by Robert.
> 
> This is probably a good time to map various email addresses used for
> my patches to my personal email ID, update .mailcap to do this.
> 
> Signed-off-by: Jayachandran C <c.jayachandran@gmail.com>
> ---
> 
> Hope this will be merged thru the ARM SoC tree, let me know if I
> need to send it to someone else.

While at it, please update my email address too, see patch below.
Patch on top of JC's.

Thanks,

-Robert


From d8869f1d464becad66d39b59c94130c6cca10a65 Mon Sep 17 00:00:00 2001
From: Robert Richter <rrichter@marvell.com>
Date: Tue, 5 Nov 2019 19:23:53 +0100
Subject: [PATCH] MAINTAINERS: Update Cavium ThunderX2 entry

The @cavium*.com email addresses expired a long time already. Change
it to my current @marvell.com address.

Signed-off-by: Robert Richter <rrichter@marvell.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 2725afb14ec2..bb1d8640e2e5 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3739,7 +3739,7 @@ S:	Supported
 F:	drivers/crypto/cavium/cpt/
 
 CAVIUM THUNDERX2 ARM64 SOC
-M:	Robert Richter <rrichter@cavium.com>
+M:	Robert Richter <rrichter@marvell.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	arch/arm64/boot/dts/cavium/thunder2-99xx*
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
