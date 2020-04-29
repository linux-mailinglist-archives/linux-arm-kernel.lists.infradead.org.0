Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB961BE08C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 16:17:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nWnqrDdlQurhO2j+8FWgqJ0lpRaGrIVy9VsbDu1SSE8=; b=jb0EPVrFgMgeuF
	i/S1xPe1e3jEvizU2C8w82YrUzs7lVVWRgpYw2uzU96wzaCcJsZVNtpD005Vyu5B14ZtC0kiaS2xN
	LQCrp1u+1aPbmC2yVkP81R33I5LeLe7ZnsCVU8pxBcu/a2fqQ5Wsb0FIzAt1ckxd5iPvLgLD/lmap
	hnTZDx6oI+wVAkZs3DFjZ+Oii9JS4WR9sy3PAnqIPMa9sN8m3N4bUbNR6p4c/L0buvyPNg9n+BAlN
	ACt7dohlRvPWoXtLtORfMyH63ydJyav2QFXI83nH7lxvPsdM+YofSa6trM0zIUfMF0bpiTKkmjPxR
	M0sZK22Puk+t1Qu7/JiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTnWj-0001g3-4H; Wed, 29 Apr 2020 14:17:29 +0000
Received: from mail-mw2nam10on2077.outbound.protection.outlook.com
 ([40.107.94.77] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTnWY-0001cp-Cp
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 14:17:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U16ulv+5ye/yc2P2XTF8U+VN49S7rti43cOFHqLwZazwdFF3vlNrx75mOROeBCev/rccn6Lk4oKYS0+orpBL4/uBCsR6bEJXHB5KiolSDb/63oMFAXm0Jm9/Pcavyk2DIEiMkXw0fkWE4qCB3+UA2IT1Ij2rcn6eVdoPzkXDJ25DzbUpVvPtB2ves0iDPH0m75rRYXjmbEa+M4SG1dAEIRBEow0IzYdApIBfybkLVFOudCifY7giMgL2TgRU+YDKylL71PQPK0+va2pN0V6q0F2LKpRQ0eDWRMDoQTmwEizK6+bZ5mpzDJaqYfGGpecQmcojimK4blocoO2f3kAubw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sku445W0YrS6Sc8zsFNH1k9O3pXSjUulEppAwbxqfOU=;
 b=Iyos8SqQKWKyXcc7kWRFSWaaIafnTlYJgSJy3rA4ShYcQRNcZ42C0JrwmLCbk//v8H5JicxXCYBpT+LBY+WeTP/0dd/4dmMhF/7wPFEMcaW/pCOAnaiEVYFlPrlaG79nf0Au5GAZGBWtzLTeKn8XPQCtcDiuEd2SDm3khqs1FGC9DN+hFVHCD6Isgn9peqylE7HpwdzzuAu4ez63BRti6kRSZ97HunD8APZEzcSTmpgVisrWAqoPsDgZQ3x8aUjdpFgalOCGlaLdmydmagZS9diJ4FWzW8oebBnGYc6jgd8vyYmTDg353UvMM3IFU3tR8kr8tRCXkPAsy7KrPEN0Ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=perches.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sku445W0YrS6Sc8zsFNH1k9O3pXSjUulEppAwbxqfOU=;
 b=QmeJFEQYtYTiUhZMqZSW5ED+ffIpnxbh8W/dcmYf35dYRn6agWJV5qQPGLxWHHfXSv71rsaXxmc7+ARoAhea0l3mKTk2yLeTwLvURXNFDXxnwsFstAxXn0wdqs8ReeeOKDMz1TgAfyjjIBL0q5S+rsIvwy99iZHwwwHUm+ob8z8=
Received: from SN4PR0501CA0098.namprd05.prod.outlook.com
 (2603:10b6:803:42::15) by DM6PR02MB6619.namprd02.prod.outlook.com
 (2603:10b6:5:217::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Wed, 29 Apr
 2020 14:17:15 +0000
Received: from SN1NAM02FT059.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:42:cafe::c3) by SN4PR0501CA0098.outlook.office365.com
 (2603:10b6:803:42::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.11 via Frontend
 Transport; Wed, 29 Apr 2020 14:17:15 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; perches.com; dkim=none (message not signed)
 header.d=none;perches.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT059.mail.protection.outlook.com (10.152.72.177) with Microsoft SMTP
 Server id 15.20.2937.19 via Frontend Transport; Wed, 29 Apr 2020 14:17:15
 +0000
Received: from [149.199.38.66] (port=41756 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <vishal.sagar@xilinx.com>)
 id 1jTnWP-0006IR-Oh; Wed, 29 Apr 2020 07:17:09 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <vishal.sagar@xilinx.com>)
 id 1jTnWU-0007rZ-Pr; Wed, 29 Apr 2020 07:17:14 -0700
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03TEHBlj025312; 
 Wed, 29 Apr 2020 07:17:11 -0700
Received: from [172.23.82.133] (helo=xhdvsagar40x.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <vishal.sagar@xilinx.com>)
 id 1jTnWQ-0007pS-Of; Wed, 29 Apr 2020 07:17:11 -0700
From: Vishal Sagar <vishal.sagar@xilinx.com>
To: Hyun Kwon <hyunk@xilinx.com>, laurent.pinchart@ideasonboard.com,
 mchehab@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 Michal Simek <michals@xilinx.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, hans.verkuil@cisco.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Dinesh Kumar <dineshk@xilinx.com>, Sandip Kothari <sandipk@xilinx.com>,
 Joe Perches <joe@perches.com>
Subject: [PATCH v2 0/2] Add support for Xilinx UHD-SDI Receiver subsystem
Date: Wed, 29 Apr 2020 19:47:02 +0530
Message-Id: <20200429141705.18755-1-vishal.sagar@xilinx.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(346002)(39850400004)(376002)(136003)(46966005)(426003)(316002)(110136005)(7416002)(44832011)(2616005)(82740400003)(8936002)(4326008)(82310400002)(70586007)(47076004)(356005)(107886003)(6666004)(70206006)(81166007)(8676002)(1076003)(9786002)(5660300002)(478600001)(336012)(36756003)(186003)(26005)(7696005)(2906002)(42866002)(921003);
 DIR:OUT; SFP:1101; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c22bf075-ae4c-4557-c2d0-08d7ec48045e
X-MS-TrafficTypeDiagnostic: DM6PR02MB6619:
X-Microsoft-Antispam-PRVS: <DM6PR02MB6619A71528CFD6BF01CF519FA7AD0@DM6PR02MB6619.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 03883BD916
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KlCUScb3khPNKTaapv/qXsK+Mf+rSjpc/eO7+qoZ8Rxii00SusYJycwdmOTwH+72F1r8YS6hV7n+YEyauMB3aHGbYIG3m+RCp7I5kXUrqf9K//oAX5EfAwIjkorCqXEvBPZITD0ZaOusdvsCUb6S8WurndIqYGdr26X68aejnig823sE9Z8IXRLSb0FOcRRtF4cPaOQ5eAZ13dMLUEdgQKKQUwnCVGpnAZEhshuk6+NjwgwPSuOqa8ei6LgyaAE+qwrl2ljCQOl+DDBihsng/Z8VfUqIhYrAF44hpPynZZNfX0dR9BBp78KuAKTWBwA/mhm+HUbnDT31Fm1OsJ+QOB/0UiYbk6Jy46LZtK0SWhCF3wQVkoKYggZZABbn/DPVR0MlINBY1mTHAJd9JKXseHwX4vzSqeoE4gTXgYkCuH7seR2LD1cwUU9C9OgowGuXTUDJqZ0Q8W0Mi92fnLRre20vAwe/7IUaFl9uxMrV2z/BRymT5NSRHcD4VtEZAl0vGcNEKzX23Eg8ofG3ap2BeepD0xEEON0YlqTJP9FoR0kdCcrVoP+pYS2bvjq4W9Cj
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2020 14:17:15.1179 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c22bf075-ae4c-4557-c2d0-08d7ec48045e
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB6619
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_071718_454182_3BBDD391 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.94.77 listed in wl.mailspike.net]
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
Cc: Vishal Sagar <vishal.sagar@xilinx.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

WGlsaW54IFNNUFRFIFVIRC1TREkgUmVjZWl2ZXIgU3Vic3lzdGVtCi0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KClRoZSBTTVBURSBVSEQtU0RJIFJlY2VpdmVyIChSWCkg
U3Vic3lzdGVtIGFsbG93cyB5b3UgdG8gcXVpY2tseSBjcmVhdGUKc3lzdGVtcyBiYXNlZCBvbiBT
TVBURSBTREkgcHJvdG9jb2xzLiBJdCByZWNlaXZlcyB1bmFsaWduZWQgbmF0aXZlIFNESQpzdHJl
YW1zIGZyb20gdGhlIFNESSBHVCBQSFkgYW5kIG91dHB1dHMgYW4gQVhJNC1TdHJlYW0gdmlkZW8g
c3RyZWFtLApuYXRpdmUgdmlkZW8sIG9yIG5hdGl2ZSBTREkgdXNpbmcgWGlsaW54IHRyYW5zY2Vp
dmVycyBhcyB0aGUgcGh5c2ljYWwKbGF5ZXIuCgogICAgICAgICAgICAgICAgU01QVEUgVUhELVNE
SSBSeCBTdWJzeXN0ZW0gQVhJNC1TdHJlYW0gQXJjaGl0ZWN0dXJlCgogICAgICAgICAgKz09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PSsK
CSAgfCAgICAgICAgICAgTmF0aXZlIFNESSAgICAgICAgICAgTmF0aXZlIFZpZGVvICAgICAgICAg
ICAgICAgIHwKU0RJCSAgfCAgICs9PT09PT09PT0rICAgfCAgICs9PT09PT09PT09PT0rICB8ICAg
Kz09PT09PT09PT09PT0rICAgIHxBWEk0ClN0cmVhbQkgIHwgICB8ICBTTVBURSAgfCAgIFYgICB8
ICAgU0RJIFJ4ICAgfCAgViAgIHwgVmlkZW8gSW4gICAgfCAgICB8U3RyZWFtCi0tLS0tLS0tLT58
LS0+fCBVSEQtU0RJIHwtLS0tLS0+fCAgICB0byAgICAgIHwtLS0tLT58ICAgdG8gICAgICAgIHwt
LS0+fC0tLS0tLS0+CgkgIHwgICB8ICAgUlggICAgfCAgICAgICB8ICBOYXRpdmUgICAgfCAgICAg
IHwgQVhJNC1TdHJlYW0gfCAgICB8CgkgIHwgICArPT09PT09PT09KyAgICAgICB8VmlkZW8gQnJp
ZGdlfCAgICAgICs9PT09PT09PT09PT09KyAgICB8CgkgIHwgICAgICB8ICBeICAgICAgICAgICAr
PT09PT09PT09PT09KyAgICAgICAgICAgICAgICAgICAgICAgICB8CiAgIDwtLS0tLS18LS0tLS0t
KyAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfApz
ZGlfcnhfaXJxfCAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwKCSAgKz09PT09Kz09PSs9PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PSsKICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIF4gICAgICAgICAgICAgIF4KICAgICAgICAgICAgICAgICAgICB8ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgIHwKICAgICAgICAgICAgICAg
ICBzX2F4aV9hY2xrICAgICAgICAgICAgICAgICAgIHNkaV9yeF9jbGsgICB2aWRlb19vdXRfY2xr
CgoKVGhlIHN1YnN5c3RlbSBjb25zaXN0cyBvZiB0aGUgZm9sbG93aW5nIHN1YmNvcmVzOgotIFNN
UFRFIFVIRC1TREkgKFJYKQotIFNESSBSWCB0byBWaWRlbyBCcmlkZ2UKLSBWaWRlbyBJbiB0byBB
WEk0LVN0cmVhbQoKQXQgZGVzaWduIHRpbWUsIHRoaXMgc3Vic3lzdGVtIGNhbiBiZSBjb25maWd1
cmVkIGluIDNHYnBzLCA2R2JwcyBvcgoxMkdicHMgbW9kZS4gSXQgY2FuIGFsc28gYmUgY29uZmln
dXJlZCB0byBvdXRwdXQKLSBTREkgTmF0aXZlIHN0cmVhbQotIE5hdGl2ZSBWaWRlbwotIEFYSTQt
U3RyZWFtCgpUaGlzIGRyaXZlciBvbmx5IHN1cHBvcnRzIHRoZSBBWEk0LVN0cmVhbSBjb25maWd1
cmF0aW9uIGFzIHRoZXJlIGlzIGEKY29ycmVzcG9uZGluZyBtZWRpYSBidXMgZm9ybWF0IGZvciBZ
VVYgNDIyIDEwLzEyIGJpdHMgcGVyIGNvbXBvbmVudC4KClRob3VnaCB0aGUgY29yZSBhbHNvIHN1
cHBvcnRzIFJCRy9ZVVY0NDQvWVVWNDIwIDEwLzEyIGJpdHMgcGVyIGNvbXBvbmVudCwKdGhlc2Ug
YXJlIG5vdCBzdXBwb3J0ZWQgaW4gZHJpdmVyIGR1ZSB0byBsYWNrIG9mIGNvcnJlc3BvbmRpbmcg
bWVkaWEgYnVzCmZvcm1hdCBjdXJyZW50bHkuCgpUaGUgU0RJIGNvcmUgaGFzIGRldGVjdGlvbiBt
b2RlcyB3aGVyZSBpbiBpdCBjYW4gYmUgY29uZmlndXJlZCB0byBkZXRlY3QKb25lIG9yIG1vcmUg
bW9kZXMgZnJvbSBTRCAoU3RhbmRhcmQgRGVmaW5pdGlvbiksIEhEIChIaWdoIERlZmluaXRpb24p
LAozR0EsIDNHQiwgNkcgYW5kIDEyRyBtb2Rlcy4gV2hlbiB0aGUgY29yZSBoYXMgZGV0ZWN0ZWQg
dGhlIGZvcm1hdCwgaXQKZ2VuZXJhdGVzIGEgdmlkZW8gbG9jay4gSW4gY2FzZSB0aGUgc291cmNl
IGlzIHJlbW92ZWQgb3IgdGhlcmUgaXMgZGF0YQpjb3JydXB0aW9uLCB0aGUgdmlkZW8gbWF5IHVu
bG9jay4gVGhpcyBpcyBpbnRpbWF0ZWQgdG8gdGhlIGFwcGxpY2F0aW9uCnZpYSBhIFY0TDIgZXZl
bnQuIE90aGVyIGV2ZW50cyB3aGljaCBhcHBsaWNhdGlvbiBjYW4gc3Vic2NyaWJlIGFyZSBmb3IK
b3ZlcmZsb3cgYW5kIHVuZGVyZmxvdyBvZiB0aGUgdmlkZW8gYnJpZGdlcy4KClRoZSBkcml2ZXIg
Z2l2ZXMgb3V0IHRoZSBzdHJlYW0gcHJvcGVydGllcyBsaWtlIHdpZHRoLCBoZWlnaHQsIGNvbG9y
Zm9ybWF0LApmcmFtZSBpbnRlcnZhbCBhbmQgcHJvZ3Jlc3NpdmUvaW50ZXJsYWNlZCBiYXNlZCBv
biB0aGUgU1QzNTIgcGFja2V0IGluIFNESQpzdHJlYW0uIElmIHRoZSBTVDM1MiBwYWNrZXQgaXMg
YWJzZW50LCB0aGVuIHRoZSB2YWx1ZXMgZGV0ZWN0ZWQgYnkgdGhlClNNUFRFIFVIRC1TREkgUngg
Y29yZSBhcmUgdXNlZC4KClRoZSBTREkgY29yZSBkZXRlY3Rpb24gbW9kZXMgYW5kIGRldGVjdGVk
IG1vZGUsIGVycm9ycywgZXRjIGFyZSBhbGwKYWNjZXNzaWJsZSB2aWEgdjRsIGNvbnRyb2xzLiBU
aGlzIGRyaXZlciBoYXMgYmVlbiB0ZXN0ZWQgd2l0aCBPbW5pdGVrClVsdHJhNEsgSEQsIFBoYWJy
aXggUXggYW5kIEJsYWNrbWFnaWMgU0RJLUhETUkgY29udmVydG9ycy4KCnYyCjEvMgotIENvbnZl
cnRlZCB0byB5YW1sIGZvcm1hdAotIFJlbW92ZWQgcmVmZXJlbmNlcyB0byB4bG54LHZpZGVvKgot
IEZpeGVkIGFzIHBlciBTYWthcmkgQWlsdXMgYW5kIFJvYiBIZXJyaW5nJ3MgY29tbWVudHMKCjIv
MgotIEFkZGVkIERWIHRpbWluZyBzdXBwb3J0IGJhc2VkIG9uIEhhbnMgVmVya3VpbMWbIGZlZWRi
YWNrCi0gTW9yZSBkb2N1bWVudGF0aW9uIHRvIGN1c3RvbSB2NGwgY29udHJvbHMgYW5kIGV2ZW50
cwotIEZpeGVkIEh5dW7FmyBjb21tZW50cwotIEFkZGVkIG1hY3JvIGZvciBtYXNraW5nIGFuZCBz
aGlmdGluZyBhcyBwZXIgSm9lIFBlcmNoZXMgY29tbWVudHMKLSBVcGRhdGVkIHRvIGxhdGVzdCBh
cyBwZXIgWGlsaW54IGdpdGh1YiByZXBvIGRyaXZlciBsaWtlCiAgYWRkaW5nIG5ldyBEViB0aW1p
bmdzIG5vdCBpbiBtYWlubGluZSB5ZXQgdXB0aWxsIDAzLzIxLzIwCgpWaXNoYWwgU2FnYXIgKDIp
OgogIG1lZGlhOiBkdC1iaW5kaW5nczogbWVkaWE6IHhpbGlueDogQWRkIFhpbGlueCBVSEQtU0RJ
IFJlY2VpdmVyCiAgICBTdWJzeXN0ZW0KICBtZWRpYTogdjRsOiB4aWxpbng6IEFkZCBYaWxpbngg
VUhELVNESSBSeCBTdWJzeXN0ZW0gZHJpdmVyCgogLi4uL2JpbmRpbmdzL21lZGlhL3hpbGlueC94
bG54LHNkaXJ4c3MueWFtbCAgIHwgIDEzMiArCiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3hpbGlu
eC9LY29uZmlnICAgICAgICAgfCAgIDExICsKIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0veGlsaW54
L01ha2VmaWxlICAgICAgICB8ICAgIDEgKwogLi4uL21lZGlhL3BsYXRmb3JtL3hpbGlueC94aWxp
bngtc2Rpcnhzcy5jICAgIHwgMjE2MiArKysrKysrKysrKysrKysrKwogaW5jbHVkZS91YXBpL2xp
bnV4L3hpbGlueC1zZGlyeHNzLmggICAgICAgICAgIHwgIDE3OSArKwogaW5jbHVkZS91YXBpL2xp
bnV4L3hpbGlueC12NGwyLWNvbnRyb2xzLmggICAgIHwgICA2NyArCiA2IGZpbGVzIGNoYW5nZWQs
IDI1NTIgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9tZWRpYS94aWxpbngveGxueCxzZGlyeHNzLnlhbWwKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3hpbGlueC94aWxpbngtc2Rpcnhzcy5j
CiBjcmVhdGUgbW9kZSAxMDA2NDQgaW5jbHVkZS91YXBpL2xpbnV4L3hpbGlueC1zZGlyeHNzLmgK
Ci0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
