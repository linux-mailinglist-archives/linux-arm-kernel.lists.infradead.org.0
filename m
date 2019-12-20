Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 513FE1277B3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 10:02:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8X+DO3sIf1zhGPjIMLKZvfbEQSPc4cKOifvsHyytbls=; b=jV9G7s1YARBPVS
	5T/kRSpaslkyYVvsjh2bGnCeUfNPxhGdP+0f6WAbAizGUVQB4ibzmt6S0qzOLCBTilaoC5vuoeJDb
	Ika0ums6h4xxpBUJw/PKDTeMFESbUDw9nljajTQTyBh1u22V1xVdoMv2ZfzrHl82PWAPATuvpreTm
	tzCxjlL219825L9b6AR0qoxIyJpiCPrDva7gmhbWiZBr8W0JTPlF+oGO+HieE9lGWpxFISjlXHdNY
	Ae1CqXqdAA9WzOjIM4IVsa3lCq5bYKEhX7+pOjdLOyLksbtj+PayX/GdX1XV1aGEKtH+L4gwDJLnK
	hLYGEYAq8+JA9N6jsFqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiEAT-0003v4-MJ; Fri, 20 Dec 2019 09:01:53 +0000
Received: from mail-eopbgr770073.outbound.protection.outlook.com
 ([40.107.77.73] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiE9x-0003b7-F1
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 09:01:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KBg4JXmr1s9oaiB4QZgVKP1/qgXthWPHUoNQR6S87RdbHy9afz5OdYBZ8ZwAynhpEdyjFfYJV5c3tqMUHGg7H/8IOqZ/wq7f0NLB9kc7TfZvKjE/syeuDbHMmDZHLSY+43TUbpjq3V5skPtnrWFKXX0UgA6vqvdGrNaCWzJx0p8gyv1yS0jenEXfgXuLryk+iB5WgimivaCufDrOSwiTWZRp/mRlSVlyHD870BnWjLHGKisgfLxjZfGZ4tnr2ooy/FJnguYUU6pjjm9VjVcuOgo21Va1xsmTLlKq5v8Kwx1fIEU5BWeN14pa2SgTYjKcnFH3NIRX3L7G/81b8sjLEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lig4wAPT9grsjl6xgWuOpn8bXgCbztF7LAQFrekMqiQ=;
 b=SvckeVozOXkZUoyLgN3p8psJ8MYcmOfzZOD0CdliZGPxYnLKKQoytt/IaPH0bGDGw31aNHm8Ak6Hp6Z1iGzv4Sj2yABhfICVWQiEu97MfUDCEL2RBW9j99He2g1t1f27oPge3W3iKEI5vXdflsbR3m75x/ktq091RjNkDhsqwgV+k4GnXFVZlmnsKfu/ChTo8NXCY5w3KgWVO7KFtAm1x3MvM2fHMl8vKW9+jGt46rOPVbYWXZb9f/O+3q+gLj7WkVGP60IwQc1edmhZj5FDsORf0Fyr/oJEWvzt/9NqBpCVa1W9J42B9PMSQhM0VRzW/BqjjRxtaIYni8q3XkjS5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xhdpunnaia40.localdomain; dmarc=none action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lig4wAPT9grsjl6xgWuOpn8bXgCbztF7LAQFrekMqiQ=;
 b=HM3fnH0hV/MBOrGpFDPzD0Pp/exc6Tf7SW+wFHoRYz9P4ENhUUroDCNy6J3lodsexD2ndI+TLBkjVw+Rc8NTByfhZMsu4sATDllqC05+OgJRuHnjetQquBxk81J3sQT20G8JSK9/VXExpYibLdhNCycP4gXNWBSLghemjkEeer8=
Received: from BL0PR02CA0084.namprd02.prod.outlook.com (2603:10b6:208:51::25)
 by SN6PR02MB5424.namprd02.prod.outlook.com (2603:10b6:805:e6::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.14; Fri, 20 Dec
 2019 09:01:12 +0000
Received: from SN1NAM02FT036.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::209) by BL0PR02CA0084.outlook.office365.com
 (2603:10b6:208:51::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.14 via Frontend
 Transport; Fri, 20 Dec 2019 09:01:12 +0000
Authentication-Results: spf=none (sender IP is 149.199.60.83)
 smtp.mailfrom=xhdpunnaia40.localdomain; lists.infradead.org; dkim=none
 (message not signed) header.d=none;lists.infradead.org; dmarc=none
 action=none header.from=xilinx.com;
Received-SPF: None (protection.outlook.com: xhdpunnaia40.localdomain does not
 designate permitted sender hosts)
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT036.mail.protection.outlook.com (10.152.72.149) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2559.14
 via Frontend Transport; Fri, 20 Dec 2019 09:01:12 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1iiE5x-0003Dj-Ts; Fri, 20 Dec 2019 00:57:13 -0800
Received: from [127.0.0.1] (helo=xsj-smtp-dlp2.xlnx.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1iiE5s-000102-8b; Fri, 20 Dec 2019 00:57:08 -0800
Received: from xsj-pvapsmtp01 (mailman.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xBK8v7fo010844; 
 Fri, 20 Dec 2019 00:57:07 -0800
Received: from [10.140.184.180] (helo=xhdpunnaia40.localdomain)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1iiE5q-0000zj-SZ; Fri, 20 Dec 2019 00:57:07 -0800
Received: by xhdpunnaia40.localdomain (Postfix, from userid 13245)
 id 1A4A91053D0; Fri, 20 Dec 2019 14:27:06 +0530 (IST)
From: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
To: davem@davemloft.net, michal.simek@xilinx.com
Subject: [PATCH net-next v2 3/3] net: emaclite: Fix arm64 compilation warnings
Date: Fri, 20 Dec 2019 14:27:00 +0530
Message-Id: <1576832220-9631-4-git-send-email-radhey.shyam.pandey@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576832220-9631-1-git-send-email-radhey.shyam.pandey@xilinx.com>
References: <1576832220-9631-1-git-send-email-radhey.shyam.pandey@xilinx.com>
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
 SFS:(10009020)(4636009)(396003)(136003)(376002)(346002)(39860400002)(428003)(249900001)(199004)(189003)(5660300002)(498600001)(336012)(81166006)(81156014)(6636002)(36756003)(6666004)(4326008)(107886003)(8676002)(42186006)(8936002)(70586007)(42882007)(316002)(2616005)(26005)(70206006)(6266002)(356004)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB5424; H:xsj-pvapsmtpgw01; FPR:;
 SPF:None; LANG:en; PTR:unknown-60-83.xilinx.com; A:0; MX:0; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8f0a4597-9dad-4bcf-596a-08d7852b298d
X-MS-TrafficTypeDiagnostic: SN6PR02MB5424:
X-Microsoft-Antispam-PRVS: <SN6PR02MB5424F6978AF2718C3E1945DAD52D0@SN6PR02MB5424.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:167;
X-Forefront-PRVS: 025796F161
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DhsGgSOn50kvs6u+T4Ufay9pJqIAtwR1qiNOjHL2mRV2coFYf3iAxdWYUtpFDfN82+Tlk/2Irz5azPPnFeNTxVkZ+AjXIMICNnoLWgzZCi6RuZWQmUCdPrT7pBAqp5qGAcI8MGPz2MJFgwBfqsIzJ6ufWebzJ8PmclBa1r7HZXhdK0PvCwy1QtS7VCoN7lMJqfxM5r1aNkAC7AwsYOZXm4ygrCZEmh/blR4sRXaFBNtVEP+S0W3Xps59WVTam3oKR/DhperwZm+SRksv5TnZLeaaVlV8UPfJv6gHmaMHdonx7gEuG/UAI+eWOvFQdnKT+NWTVH7bvXH+9r6pLdfltpLGSzUn2MdNUEICsROKAcaQZtI2Th8ot6s9YVyA/PkNJ8rwCvAXbzgzXFa9598ZqaH4NGN69GYjSQl0ma2jHjb2TFjNQqPKeSw1i6YzNuQJ
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2019 09:01:12.1910 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f0a4597-9dad-4bcf-596a-08d7852b298d
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5424
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_010121_504370_C0A55BE0 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.73 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
LmNvbT4KLS0tCkNoYW5nZXMgZm9yIHYyOgpOb25lCi0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQv
eGlsaW54L3hpbGlueF9lbWFjbGl0ZS5jIHwgMTAgKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC94aWxpbngveGlsaW54X2VtYWNsaXRlLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5l
dC94aWxpbngveGlsaW54X2VtYWNsaXRlLmMKaW5kZXggN2Y5ODcyOC4uOTZlOWQyMSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQveGlsaW54L3hpbGlueF9lbWFjbGl0ZS5jCisrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L3hpbGlueC94aWxpbnhfZW1hY2xpdGUuYwpAQCAtOTQsNyAr
OTQsNyBAQAogI2RlZmluZSBBTElHTk1FTlQJCTQKIAogLyogQlVGRkVSX0FMSUdOKGFkcikgY2Fs
Y3VsYXRlcyB0aGUgbnVtYmVyIG9mIGJ5dGVzIHRvIHRoZSBuZXh0IGFsaWdubWVudC4gKi8KLSNk
ZWZpbmUgQlVGRkVSX0FMSUdOKGFkcikgKChBTElHTk1FTlQgLSAoKHUzMilhZHIpKSAlIEFMSUdO
TUVOVCkKKyNkZWZpbmUgQlVGRkVSX0FMSUdOKGFkcikgKChBTElHTk1FTlQgLSAoKHVsb25nKWFk
cikpICUgQUxJR05NRU5UKQogCiAjaWZkZWYgX19CSUdfRU5ESUFOCiAjZGVmaW5lIHhlbWFjbGl0
ZV9yZWFkbAkJaW9yZWFkMzJiZQpAQCAtMzMyLDcgKzMzMiw3IEBAIHN0YXRpYyBpbnQgeGVtYWNs
aXRlX3NlbmRfZGF0YShzdHJ1Y3QgbmV0X2xvY2FsICpkcnZkYXRhLCB1OCAqZGF0YSwKIAkJICog
aWYgaXQgaXMgY29uZmlndXJlZCBpbiBIVwogCQkgKi8KIAotCQlhZGRyID0gKHZvaWQgX19pb21l
bSBfX2ZvcmNlICopKCh1MzIgX19mb3JjZSlhZGRyIF4KKwkJYWRkciA9ICh2b2lkIF9faW9tZW0g
X19mb3JjZSAqKSgodWxvbmcgX19mb3JjZSlhZGRyIF4KIAkJCQkJCSBYRUxfQlVGRkVSX09GRlNF
VCk7CiAJCXJlZ19kYXRhID0geGVtYWNsaXRlX3JlYWRsKGFkZHIgKyBYRUxfVFNSX09GRlNFVCk7
CiAKQEAgLTM5NCw3ICszOTQsNyBAQCBzdGF0aWMgdTE2IHhlbWFjbGl0ZV9yZWN2X2RhdGEoc3Ry
dWN0IG5ldF9sb2NhbCAqZHJ2ZGF0YSwgdTggKmRhdGEsIGludCBtYXhsZW4pCiAJCSAqIHdpbGwg
Y29ycmVjdCBvbiBzdWJzZXF1ZW50IGNhbGxzCiAJCSAqLwogCQlpZiAoZHJ2ZGF0YS0+cnhfcGlu
Z19wb25nICE9IDApCi0JCQlhZGRyID0gKHZvaWQgX19pb21lbSBfX2ZvcmNlICopKCh1MzIgX19m
b3JjZSlhZGRyIF4KKwkJCWFkZHIgPSAodm9pZCBfX2lvbWVtIF9fZm9yY2UgKikoKHVsb25nIF9f
Zm9yY2UpYWRkciBeCiAJCQkJCQkJIFhFTF9CVUZGRVJfT0ZGU0VUKTsKIAkJZWxzZQogCQkJcmV0
dXJuIDA7CS8qIE5vIGRhdGEgd2FzIGF2YWlsYWJsZSAqLwpAQCAtMTE4Niw5ICsxMTg2LDkgQEAg
c3RhdGljIGludCB4ZW1hY2xpdGVfb2ZfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqb2Zk
ZXYpCiAJfQogCiAJZGV2X2luZm8oZGV2LAotCQkgIlhpbGlueCBFbWFjTGl0ZSBhdCAweCUwOFgg
bWFwcGVkIHRvIDB4JTA4WCwgaXJxPSVkXG4iLAorCQkgIlhpbGlueCBFbWFjTGl0ZSBhdCAweCUw
OFggbWFwcGVkIHRvIDB4JTA4bFgsIGlycT0lZFxuIiwKIAkJICh1bnNpZ25lZCBpbnQgX19mb3Jj
ZSluZGV2LT5tZW1fc3RhcnQsCi0JCSAodW5zaWduZWQgaW50IF9fZm9yY2UpbHAtPmJhc2VfYWRk
ciwgbmRldi0+aXJxKTsKKwkJICh1bnNpZ25lZCBsb25nIF9fZm9yY2UpbHAtPmJhc2VfYWRkciwg
bmRldi0+aXJxKTsKIAlyZXR1cm4gMDsKIAogZXJyb3I6Ci0tIAoyLjcuNAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
