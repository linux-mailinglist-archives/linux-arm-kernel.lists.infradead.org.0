Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC56612051D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 13:11:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2fXSzHOQHTLy8QRVYvVhlz+mS0jrpOSIiDdsAXzJehU=; b=Yt1tDlm1enIm8o
	hPuQvRlck94pxO8d/fVDcHbUOFDgTbbTPFbWe7OEjLPULTrOE8a+eA1rovXPpEEEI64zu6CJmJdZy
	7ovzHzAzGkKt4P62o2dKWdbqs3FrVks2O6TJ9jac03ispYNvIkzs5t7/Usmej8lzHq2HI0nwhM7D7
	1dZxqSAimvCn6ssj+rI5OD86ogojtRS/aM2cZPI0F1PmwkbcJNg2kT+T8I7qGNT8tadxi8BU5xcLW
	KDPKfsWHykVSs4kq4EnwqH2P1yBOBVVqdjNZfMltWb72UfNYHzALWgAd1DUg7dx8zV1yV4a3kjG/V
	G8CVXPJneINP6CEDlYqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igpDZ-00084Z-Dm; Mon, 16 Dec 2019 12:11:17 +0000
Received: from mail-eopbgr690061.outbound.protection.outlook.com
 ([40.107.69.61] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igpCZ-0007Ka-GA
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 12:10:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=csmxBBxn1Bya1alj5kAOcauUUwc1TNHFoD+kiccjZ18i2UYQg3mXMa9GcPWHsIOrt0I7xQQV3fuW4+ic+BgFkl9YpxScSTrX3DNTmy9haZNJ9yqTEJ782Al8laz4hJWZ5WvOQpsZB5b+gNX+7b+iMSa8O+N5m4XkFqrqpgdNgMPRindsQfihHHwxzenBoUr4R48o3nv068ADI9UL0YEuLxqDsRkgDlBjHatZVsfdhBFmmXl10D6pJHv3jUIXbs8tAYB8O7ZbVN4pm0Na+6DhlaMbxWaoN4PAvNrKVYdn+zpv5suBeFpY0Zwvt+zb/qVF+Ts6VBVa48g5NNd76vvwAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IBCFQwd3d+v8DAd6a0gpnoZB48tO0AIfG5VoTw6oApA=;
 b=GjkwUt7hsb6mjZ5cVS04mppaspbreFYPxRnZMWwceW9ivPFnqSHiIVnH2N+5kMGy43dXxPXn7WtYNh5dipDUF4svN1sQ7nUd5DcwABx7Hw9rpzYs3OA/U3cCDMHw76hu8m4VeIs2uH5WBUCEtuLyh9Xgsw1x/xSk8ge6sZSZp3+5sfcmOMWXkNj5XLf6Wc3nhvAv4zpVL97/eb/tkqVlAp8mVb5Qo/O7Gq3jNgf5DKZyqHe2upl/u2eA5JqytFvi3bDFR/yJ/dl/1D2wQwPHwnWJ/4Bppl5JNNZi9IzjROx5rXmIM2Ud1NoFZBE8U1xm19lj1A3L7odHnEzgBPBbwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xhdpunnaia40.localdomain; dmarc=none action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IBCFQwd3d+v8DAd6a0gpnoZB48tO0AIfG5VoTw6oApA=;
 b=Lew8wZjTbTjkoPj9YNExK4jrmkiyBhFXAtg9uYLZKCh89PzXofX4sprZVQjFNSj5brYl+WXGz0dZAA5ANsojpU57DmSI19W5PIRPRQCdoyZPylq2tzeyEOwHkKkhNm+Fz9U4Xy4hyGHBC3+kVEQI+O3aaYZbVod3+VbDFEZllJA=
Received: from BL0PR0102CA0050.prod.exchangelabs.com (2603:10b6:208:25::27) by
 BL0PR02MB5523.namprd02.prod.outlook.com (2603:10b6:208:84::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Mon, 16 Dec 2019 12:10:12 +0000
Received: from BL2NAM02FT020.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:25:cafe::19) by BL0PR0102CA0050.outlook.office365.com
 (2603:10b6:208:25::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.17 via Frontend
 Transport; Mon, 16 Dec 2019 12:10:12 +0000
Authentication-Results: spf=none (sender IP is 149.199.60.83)
 smtp.mailfrom=xhdpunnaia40.localdomain; lists.infradead.org; dkim=none
 (message not signed) header.d=none;lists.infradead.org; dmarc=none
 action=none header.from=xilinx.com;
Received-SPF: None (protection.outlook.com: xhdpunnaia40.localdomain does not
 designate permitted sender hosts)
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT020.mail.protection.outlook.com (10.152.77.162) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2538.14
 via Frontend Transport; Mon, 16 Dec 2019 12:10:11 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1igpAz-0001lB-FS; Mon, 16 Dec 2019 04:08:37 -0800
Received: from [127.0.0.1] (helo=xsj-smtp-dlp2.xlnx.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1igpAt-0000wj-QK; Mon, 16 Dec 2019 04:08:31 -0800
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xBGC8Ur0024884; 
 Mon, 16 Dec 2019 04:08:31 -0800
Received: from [10.140.184.180] (helo=xhdpunnaia40.localdomain)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1igpAs-0000wO-Bp; Mon, 16 Dec 2019 04:08:30 -0800
Received: by xhdpunnaia40.localdomain (Postfix, from userid 13245)
 id 916481053CF; Mon, 16 Dec 2019 17:38:29 +0530 (IST)
From: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
To: davem@davemloft.net, michal.simek@xilinx.com
Subject: [PATCH net-next 3/3] net: emaclite: Fix arm64 compilation warnings
Date: Mon, 16 Dec 2019 17:38:10 +0530
Message-Id: <1576498090-1277-4-git-send-email-radhey.shyam.pandey@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576498090-1277-1-git-send-email-radhey.shyam.pandey@xilinx.com>
References: <1576498090-1277-1-git-send-email-radhey.shyam.pandey@xilinx.com>
MIME-Version: 1.0
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-Result: No-1.563-7.0-31-1
X-imss-scan-details: No-1.563-7.0-31-1;No-1.563-5.0-31-1
X-TM-AS-User-Approved-Sender: No;No
X-TM-AS-Result-Xfilter: Match text exemption rules:No
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(376002)(396003)(346002)(428003)(249900001)(199004)(189003)(6266002)(2906002)(70586007)(498600001)(4326008)(42882007)(8676002)(336012)(2616005)(8936002)(81166006)(81156014)(5660300002)(6636002)(6666004)(356004)(316002)(107886003)(26005)(36756003)(70206006)(42186006)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB5523; H:xsj-pvapsmtpgw01; FPR:;
 SPF:None; LANG:en; PTR:unknown-60-83.xilinx.com; A:0; MX:0; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6407d307-1c52-4a5f-02c6-08d78220e6e4
X-MS-TrafficTypeDiagnostic: BL0PR02MB5523:
X-Microsoft-Antispam-PRVS: <BL0PR02MB5523349E81178A3C8888887ED5510@BL0PR02MB5523.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:167;
X-Forefront-PRVS: 02530BD3AA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UFKYhOLQqC7gmWbQoH2Uf8XjUFwIC3rSNWjvK7uaKWA7HT5IwbKAgQ7FHeqpI4/I2QiDSJyR3wN/Ng4px4HKWpaJDPAruqOY5YwI6nQ7GU0MXAz+pxo37pQadkEIPICcL8z2KTfSDH16oERoD/0bTOKxWh9svU3NMx6VXE3BjT1QprLtQmuFj3sB6AXHGbexC/FjdGkGML0xbmSdjVr3LiOZHnrIN+vJ21SrNcoe/V6uUwAR7c6+ZcbUYw0YqK7rTH9GZNa4R62PTS9HaPWu1EP2Ie0PQ02viFiyrHrdYG02Ny2h5g43F6j2d0C3BSGrlqpzLjNIjO4J8z+n4UKyNuUoV8ArU3MPSQVr3EQe7y+RG9s8gV618ucYDrod296p/UYXaJ1W4LWBnzXf7lglum4Jcs3ajfe7CsB+kQzSHq+LXrg8vL/3pyOyOXpzMvv1uR4bxNfQ7Cz4tTMszkFOQQ7dzJUNhyZq9cUlQkDI7JUnoS10V3qlj6i/OPu1o49X
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2019 12:10:11.8079 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6407d307-1c52-4a5f-02c6-08d78220e6e4
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB5523
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_041015_586295_254223D9 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.61 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: netdev@vger.kernel.org,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 git@xilinx.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWljaGFsIFNpbWVrIDxtaWNoYWwuc2ltZWtAeGlsaW54LmNvbT4KClJlY2FzdCBwb2lu
dGVycyB3aXRoIHVsb25nIGluc3RlYWQgb2YgdTMyIGZvciBhcm02NC4KVGhpcyBwYXRjaCBmaXhl
cyB0aGVzZSBjb21waWxhdGlvbiB3YXJuaW5nczoKCmRyaXZlcnMvbmV0L2V0aGVybmV0L3hpbGlu
eC94aWxpbnhfZW1hY2xpdGUuYzoKSW4gZnVuY3Rpb24g4oCYeGVtYWNsaXRlX3NlbmRfZGF0YeKA
mToKZHJpdmVycy9uZXQvZXRoZXJuZXQveGlsaW54L3hpbGlueF9lbWFjbGl0ZS5jOjMzNTozNToK
d2FybmluZzogY2FzdCBmcm9tIHBvaW50ZXIgdG8gaW50ZWdlciBvZiBkaWZmZXJlbnQgc2l6ZSBb
LVdwb2ludGVyLXRvLWludC1jYXN0XQogICBhZGRyID0gKHZvaWQgX19pb21lbSBfX2ZvcmNlICop
KCh1MzIgX19mb3JjZSlhZGRyIF4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBe
CmRyaXZlcnMvbmV0L2V0aGVybmV0L3hpbGlueC94aWxpbnhfZW1hY2xpdGUuYzozMzU6MTA6Cndh
cm5pbmc6IGNhc3QgdG8gcG9pbnRlciBmcm9tIGludGVnZXIgb2YgZGlmZmVyZW50IHNpemUgWy1X
aW50LXRvLXBvaW50ZXItY2FzdF0KICAgYWRkciA9ICh2b2lkIF9faW9tZW0gX19mb3JjZSAqKSgo
dTMyIF9fZm9yY2UpYWRkciBeCiAgICAgICAgICBeCmRyaXZlcnMvbmV0L2V0aGVybmV0L3hpbGlu
eC94aWxpbnhfZW1hY2xpdGUuYzoKSW4gZnVuY3Rpb24g4oCYeGVtYWNsaXRlX3JlY3ZfZGF0YeKA
mToKZHJpdmVycy9uZXQvZXRoZXJuZXQveGlsaW54L3hpbGlueF9lbWFjbGl0ZS5jOjM5NzozNjoK
d2FybmluZzogY2FzdCBmcm9tIHBvaW50ZXIgdG8gaW50ZWdlciBvZiBkaWZmZXJlbnQgc2l6ZSBb
LVdwb2ludGVyLXRvLWludC1jYXN0XQogICAgYWRkciA9ICh2b2lkIF9faW9tZW0gX19mb3JjZSAq
KSgodTMyIF9fZm9yY2UpYWRkciBeCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IF4KZHJpdmVycy9uZXQvZXRoZXJuZXQveGlsaW54L3hpbGlueF9lbWFjbGl0ZS5jOjM5NzoxMToK
d2FybmluZzogY2FzdCB0byBwb2ludGVyIGZyb20gaW50ZWdlciBvZiBkaWZmZXJlbnQgc2l6ZSBb
LVdpbnQtdG8tcG9pbnRlci1jYXN0XQogICAgYWRkciA9ICh2b2lkIF9faW9tZW0gX19mb3JjZSAq
KSgodTMyIF9fZm9yY2UpYWRkciBeCiAgICAgICAgICAgXgpkcml2ZXJzL25ldC9ldGhlcm5ldC94
aWxpbngveGlsaW54X2VtYWNsaXRlLmM6CkluIGZ1bmN0aW9uIOKAmHhlbWFjbGl0ZV9yeF9oYW5k
bGVy4oCZOgpkcml2ZXJzL25ldC9ldGhlcm5ldC94aWxpbngveGlsaW54X2VtYWNsaXRlLmM6OTc6
NDI6Cndhcm5pbmc6IGNhc3QgZnJvbSBwb2ludGVyIHRvIGludGVnZXIgb2YgZGlmZmVyZW50IHNp
emUgWy1XcG9pbnRlci10by1pbnQtY2FzdF0KICNkZWZpbmUgQlVGRkVSX0FMSUdOKGFkcikgKChB
TElHTk1FTlQgLSAoKHUzMilhZHIpKSAlIEFMSUdOTUVOVCkKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgXgpkcml2ZXJzL25ldC9ldGhlcm5ldC94aWxpbngveGlsaW54
X2VtYWNsaXRlLmM6NjEyOjEwOgpub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYQlVGRkVS
X0FMSUdO4oCZCiAgYWxpZ24gPSBCVUZGRVJfQUxJR04oc2tiLT5kYXRhKTsKICAgICAgICAgIF5+
fn5+fn5+fn5+fgpJbiBmaWxlIGluY2x1ZGVkIGZyb20gLi9pbmNsdWRlL2xpbnV4L2RtYS1tYXBw
aW5nLmg6NywKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9za2J1ZmYuaDoz
MSwKICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9pZl9ldGhlci5oOjE5LAog
ICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL3VhcGkvbGludXgvZXRodG9vbC5oOjE5LAog
ICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2V0aHRvb2wuaDoxOCwKICAgICAg
ICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9uZXRkZXZpY2UuaDozNywKICAgICAgICAg
ICAgICAgICBmcm9tIGRyaXZlcnMvbmV0L2V0aGVybmV0L3hpbGlueC94aWxpbnhfZW1hY2xpdGUu
YzoxMjoKZHJpdmVycy9uZXQvZXRoZXJuZXQveGlsaW54L3hpbGlueF9lbWFjbGl0ZS5jOgpJbiBm
dW5jdGlvbiDigJh4ZW1hY2xpdGVfb2ZfcHJvYmXigJk6CmRyaXZlcnMvbmV0L2V0aGVybmV0L3hp
bGlueC94aWxpbnhfZW1hY2xpdGUuYzoxMTkxOjQ6Cndhcm5pbmc6IGNhc3QgZnJvbSBwb2ludGVy
IHRvIGludGVnZXIgb2YgZGlmZmVyZW50IHNpemUgWy1XcG9pbnRlci10by1pbnQtY2FzdF0KICAg
ICh1bnNpZ25lZCBpbnQgX19mb3JjZSlscC0+YmFzZV9hZGRyLCBuZGV2LT5pcnEpOwogICAgXgou
L2luY2x1ZGUvbGludXgvZGV2aWNlLmg6MTc4MDozMzogbm90ZTogaW4gZGVmaW5pdGlvbiBvZiBt
YWNybyDigJhkZXZfaW5mb+KAmQogIF9kZXZfaW5mbyhkZXYsIGRldl9mbXQoZm10KSwgIyNfX1ZB
X0FSR1NfXykKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn4KClNp
Z25lZC1vZmYtYnk6IE1pY2hhbCBTaW1layA8bWljaGFsLnNpbWVrQHhpbGlueC5jb20+ClNpZ25l
ZC1vZmYtYnk6IFJhZGhleSBTaHlhbSBQYW5kZXkgPHJhZGhleS5zaHlhbS5wYW5kZXlAeGlsaW54
LmNvbT4KLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC94aWxpbngveGlsaW54X2VtYWNsaXRlLmMg
fCAxMCArKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L3hpbGlueC94aWxpbnhf
ZW1hY2xpdGUuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L3hpbGlueC94aWxpbnhfZW1hY2xpdGUu
YwppbmRleCA0YWE2NzUyLi5jZmIwNTFhIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC94aWxpbngveGlsaW54X2VtYWNsaXRlLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQveGls
aW54L3hpbGlueF9lbWFjbGl0ZS5jCkBAIC05NCw3ICs5NCw3IEBACiAjZGVmaW5lIEFMSUdOTUVO
VAkJNAogCiAvKiBCVUZGRVJfQUxJR04oYWRyKSBjYWxjdWxhdGVzIHRoZSBudW1iZXIgb2YgYnl0
ZXMgdG8gdGhlIG5leHQgYWxpZ25tZW50LiAqLwotI2RlZmluZSBCVUZGRVJfQUxJR04oYWRyKSAo
KEFMSUdOTUVOVCAtICgodTMyKWFkcikpICUgQUxJR05NRU5UKQorI2RlZmluZSBCVUZGRVJfQUxJ
R04oYWRyKSAoKEFMSUdOTUVOVCAtICgodWxvbmcpYWRyKSkgJSBBTElHTk1FTlQpCiAKICNpZmRl
ZiBfX0JJR19FTkRJQU4KICNkZWZpbmUgeGVtYWNsaXRlX3JlYWRsCQlpb3JlYWQzMmJlCkBAIC0z
MzIsNyArMzMyLDcgQEAgc3RhdGljIGludCB4ZW1hY2xpdGVfc2VuZF9kYXRhKHN0cnVjdCBuZXRf
bG9jYWwgKmRydmRhdGEsIHU4ICpkYXRhLAogCQkgKiBpZiBpdCBpcyBjb25maWd1cmVkIGluIEhX
CiAJCSAqLwogCi0JCWFkZHIgPSAodm9pZCBfX2lvbWVtIF9fZm9yY2UgKikoKHUzMiBfX2ZvcmNl
KWFkZHIgXgorCQlhZGRyID0gKHZvaWQgX19pb21lbSBfX2ZvcmNlICopKCh1bG9uZyBfX2ZvcmNl
KWFkZHIgXgogCQkJCQkJIFhFTF9CVUZGRVJfT0ZGU0VUKTsKIAkJcmVnX2RhdGEgPSB4ZW1hY2xp
dGVfcmVhZGwoYWRkciArIFhFTF9UU1JfT0ZGU0VUKTsKIApAQCAtMzk0LDcgKzM5NCw3IEBAIHN0
YXRpYyB1MTYgeGVtYWNsaXRlX3JlY3ZfZGF0YShzdHJ1Y3QgbmV0X2xvY2FsICpkcnZkYXRhLCB1
OCAqZGF0YSwgaW50IG1heGxlbikKIAkJICogd2lsbCBjb3JyZWN0IG9uIHN1YnNlcXVlbnQgY2Fs
bHMKIAkJICovCiAJCWlmIChkcnZkYXRhLT5yeF9waW5nX3BvbmcgIT0gMCkKLQkJCWFkZHIgPSAo
dm9pZCBfX2lvbWVtIF9fZm9yY2UgKikoKHUzMiBfX2ZvcmNlKWFkZHIgXgorCQkJYWRkciA9ICh2
b2lkIF9faW9tZW0gX19mb3JjZSAqKSgodWxvbmcgX19mb3JjZSlhZGRyIF4KIAkJCQkJCQkgWEVM
X0JVRkZFUl9PRkZTRVQpOwogCQllbHNlCiAJCQlyZXR1cm4gMDsJLyogTm8gZGF0YSB3YXMgYXZh
aWxhYmxlICovCkBAIC0xMTg2LDkgKzExODYsOSBAQCBzdGF0aWMgaW50IHhlbWFjbGl0ZV9vZl9w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpvZmRldikKIAl9CiAKIAlkZXZfaW5mbyhkZXYs
Ci0JCSAiWGlsaW54IEVtYWNMaXRlIGF0IDB4JTA4WCBtYXBwZWQgdG8gMHglMDhYLCBpcnE9JWRc
biIsCisJCSAiWGlsaW54IEVtYWNMaXRlIGF0IDB4JTA4WCBtYXBwZWQgdG8gMHglMDhsWCwgaXJx
PSVkXG4iLAogCQkgKHVuc2lnbmVkIGludCBfX2ZvcmNlKW5kZXYtPm1lbV9zdGFydCwKLQkJICh1
bnNpZ25lZCBpbnQgX19mb3JjZSlscC0+YmFzZV9hZGRyLCBuZGV2LT5pcnEpOworCQkgKHVuc2ln
bmVkIGxvbmcgX19mb3JjZSlscC0+YmFzZV9hZGRyLCBuZGV2LT5pcnEpOwogCXJldHVybiAwOwog
CiBlcnJvcjoKLS0gCjIuNy40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
