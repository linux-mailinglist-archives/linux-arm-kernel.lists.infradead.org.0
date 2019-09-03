Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7809DA61E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 08:54:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LvU/Nv5287C3bE3iLKi4QKHqHmfFa3u0gDoI7fduJwg=; b=KBSjgLyVzEBSxU
	yH+OWDzEw0soGh4xwpHD3stMgJkLVCMq9GpmsciyLNL1EXDqNtm+kRKlCO+uNnqTHpaKL8gAj1KZM
	aX6BLf1e4T8WvRhZwpRwnwLUFzsQ3uxrQgGOXVEbmcLrCcXa54o16U+R/t5qYmHL5MKDyzFtk9q57
	9XdHtVdDseLftUjNnGM1mSrzCDk8RuSishA57HH3tvOOfbtXqoamMjZ5JK6xM9i5AtWOspkHvSGBZ
	4R7qvPKwaT8eO7yoGX5pmhDrhNWBBTI/Q2z78/6dqp8NO0OpmNx+1zlLO1UI5RhwOMpAzdb36tjTj
	jXOkP0i5rGFRJBWpy0gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i52ho-0000Vh-P5; Tue, 03 Sep 2019 06:54:21 +0000
Received: from mail-eopbgr750055.outbound.protection.outlook.com
 ([40.107.75.55] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i52fY-0007iu-RL
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 06:52:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D4C29hLm9CGUezrEEAum6vbTzxRaD/wpmkVAgoJxjWdt3b3pdyuz7NnB+i+o7pVwXtCHUq6+T30KG2KSLVrDeGD9phZqrGXgVNF1v3v/yn6WxGRlL1skDGPz6dd/GAgZmNDgXOif/x96Wp6Kruygkn4SQH/jtsbiVaZlPlxUBUIkMVMWDnhrrJGr//p4YfuhK2q0AcQUAbXC5m5VrWGioTxLb0L7aUzwjzHxcOD+H0g5giW2g19TjId9acAB3NA0fTFJmYpgpLx0JrSOriE72GqfSIutMDcpsI65uXLWlDBY+9H0H0vjK7ZauvITc2BuEzU+WZXLrjnpyrDbpD3a/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9WYqNwfO/s3jH7X8NmpmzInLj7cLanrv54KQTAZxsIE=;
 b=WUtCG+y2KwwXjmRPz0WzkDJjt4tVZG2vDqL/B5+O03VCgHfptjk7UA4xmLgFR5/iYINkzQElRShV1huUh0qUjrv26TXevy1PWv3H28mUud2XKGdSC0bikvNvByWOfmyzugYGxcFshzU6ek+5xa4T3NQ7enX135qFgJGVTywyqW1561vS4hx7FRrf0u08KIISk2hxd43v0055Scmd9YZEva0q84g9wxQ9uPk70jJjE6vRudsyuMubQ0oXqWjRo3JLkBYpBvoXru26ZSVnYg2I7Oi1JDFhMpH2wat76bg7DIdGPe4Ac9/vDVllmphJ8cVxREMYHFIyqb7BT8cqo4bdqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=bootlin.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9WYqNwfO/s3jH7X8NmpmzInLj7cLanrv54KQTAZxsIE=;
 b=hQGI85EKAoGziAxTfdw0sGdSg7LW0TBnqE3ANqHjiDBZfcUiXRiHHwq+wIq+12AvG7Vl/uemnWQE+bLUqaPI2PqgwCD8tiriNvkKGKWbOVoqKNr7u4ZTliDXgPVFCTk7G7SE0q0ilbmSfLdmDo5H5njBCr9B9A39z6Rf3CFzssA=
Received: from BL0PR02CA0087.namprd02.prod.outlook.com (2603:10b6:208:51::28)
 by BYAPR02MB5335.namprd02.prod.outlook.com (2603:10b6:a03:61::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2220.18; Tue, 3 Sep
 2019 06:51:58 +0000
Received: from CY1NAM02FT057.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::200) by BL0PR02CA0087.outlook.office365.com
 (2603:10b6:208:51::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2220.19 via Frontend
 Transport; Tue, 3 Sep 2019 06:51:57 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; bootlin.com; dkim=none (message not signed)
 header.d=none;bootlin.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT057.mail.protection.outlook.com (10.152.75.110) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2220.16
 via Frontend Transport; Tue, 3 Sep 2019 06:51:56 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1i52fT-0001Xb-NJ; Mon, 02 Sep 2019 23:51:55 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1i52fO-0002Zp-JH; Mon, 02 Sep 2019 23:51:50 -0700
Received: from [172.30.17.116] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1i52fI-0002Yu-Q9; Mon, 02 Sep 2019 23:51:45 -0700
Subject: Re: [PATCH 1/3] ASoC: xlnx: add Xilinx logicPD-I2S FPGA IP support
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Michal Simek <michal.simek@xilinx.com>
References: <20190830210607.22644-1-miquel.raynal@bootlin.com>
 <df36fc2d-ed62-2556-513d-158a7707d5cd@xilinx.com>
 <20190902222111.045ede17@xps13>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <59ab9db1-a94e-f6a7-9777-60959b682674@xilinx.com>
Date: Tue, 3 Sep 2019 08:51:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190902222111.045ede17@xps13>
Content-Language: en-US
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39850400004)(346002)(376002)(396003)(2980300002)(189003)(199004)(6666004)(7416002)(70586007)(66574012)(76176011)(2906002)(31696002)(52146003)(65956001)(65806001)(966005)(106002)(2486003)(356004)(81166006)(70206006)(50466002)(478600001)(47776003)(23676004)(36756003)(26005)(426003)(81156014)(8676002)(8936002)(44832011)(36386004)(336012)(186003)(446003)(2616005)(476003)(486006)(11346002)(126002)(5660300002)(107886003)(31686004)(4326008)(6246003)(9786002)(2870700001)(6306002)(305945005)(229853002)(58126008)(54906003)(316002)(110136005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB5335; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 693d9e61-e90b-4b18-68fd-08d7303b3650
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(4709080)(1401327)(4618075)(2017052603328);
 SRVR:BYAPR02MB5335; 
X-MS-TrafficTypeDiagnostic: BYAPR02MB5335:
X-MS-Exchange-PUrlCount: 2
X-Microsoft-Antispam-PRVS: <BYAPR02MB53354BD0A68CB6789AC17A24C6B90@BYAPR02MB5335.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 01494FA7F7
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: vw+/MxKap4WH3cEmLMER/0C1BJ7HuuQzE3RdOmIvJbRPZz3dKl/V0gFr+F5sYYmYoADiJalR8o0ofa1weDUFSTWfLG4z23DL6WhJQ73As5/bnXNH950pz7TD6P0PoKID+TaYn8EdHYExePl55SdU8SmZ+evrEeSNb19YDgvsbTbxaZgqRrreY9ao/NyAdJdR6NRuLwN+vSp1UjOLyrJhtNgt5fjEtYJsyjuuAYLNfgImdAfMaePecxTYrFc3v0fAZoM8M8dY8AI7WWHBIxHc+Q13z7Sga5IdtFBZcKt4pSDXZyHvIc9moSaz/LDarC39hfrnpWgR4JDQcu63An3jCZWKnPSe7HqCdjfC4RHLANLF2XVGUkisPFZN0HiMzXWTLejaeBLtsyiLmxJuNaXttpnjDPWKU3DVFMpoP4p52vw=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2019 06:51:56.2282 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 693d9e61-e90b-4b18-68fd-08d7303b3650
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5335
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_235201_107386_E6B6839F 
X-CRM114-Status: GOOD (  17.81  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org,
 Maruthi Srinivas Bayyavarapu <maruthis@xilinx.com>,
 Takashi Iwai <tiwai@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, praveenv@xilinx.com,
 Jaroslav Kysela <perex@perex.cz>, alexandre@bootlin.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDIuIDA5LiAxOSAyMjoyMSwgTWlxdWVsIFJheW5hbCB3cm90ZToKPiBIaSBNaWNoYWwsCj4g
Cj4gTWljaGFsIFNpbWVrIDxtaWNoYWwuc2ltZWtAeGlsaW54LmNvbT4gd3JvdGUgb24gTW9uLCAy
IFNlcCAyMDE5Cj4gMDk6Mzk6MTEgKzAyMDA6Cj4gCj4+IEhpIE1pcXVlbAo+Pgo+PiBPbiAzMC4g
MDguIDE5IDIzOjA2LCBNaXF1ZWwgUmF5bmFsIHdyb3RlOgo+Pj4gVGhpcyBJUCBpcyB2ZXJ5IHNp
bXBsZSBzbyB0aGlzIGRyaXZlciBtYW5hZ2UgYm90aCB0aGUgREFJIGFuZCB0aGUgUENNCj4+PiBz
dHJlYW1zLCBoZW5jZSB0aGUgcHJlc2VuY2Ugb2YgYm90aCBjb21wb25lbnRzIGluIHRoaXMgZHJp
dmVyLgo+Pj4KPj4+IFRoZXJlIGFyZSBwbGVudHkgYXZhaWxhYmxlIGludGVycnVwdGlvbnMgd2hl
biBjYXB0dXJpbmcgb3IgcGxheWluZwo+Pj4gYmFjayBhdWRpbyB0aGF0IGNhbiBiZSB0cmlnZ2Vy
ZWQgYnV0IHRoZSBvbmx5IG9uZSB0aGF0IGZpdHMgdGhlIEFMU0EKPj4+IHNvdW5kIHN5c3RlbSBp
cyB0aGUgWEZFUl9ET05FIHdoaWNoIGlzIHVzZWQgdG8gYm91bmQgc291bmQKPj4+IHBlcmlvZHMu
IE90aGVyIGludGVycnVwdHMgYXJlIG1hc2tlZC4gUGxlYXNlIG5vdGUgdGhhdCBjYXB0dXJlIGFu
ZAo+Pj4gcGxheWJhY2sgYXJlIG5vdCBwb3NzaWJsZSBhdCB0aGUgc2FtZSB0aW1lIHRob3VnaC4K
Pj4+Cj4+PiBDYXB0dXJlIHNlZW1zIHRvIHdvcmsgKGF0IGxlYXN0IGl0IGNyZWF0ZXMgYSBmaWxl
IHdpdGggc29tZXRoaW5nCj4+PiBpbnNpZGUpIGJ1dCBJIGhhdmUgbm8gY2FwdHVyZSBtZWNoYW5p
c20gb24gdGhlIGJvYXJkIHRvIGFjdHVhbGx5IHRlc3QKPj4+IHRoYXQgaXQgd29ya3MgY29ycmVj
dGx5Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IE1pcXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxA
Ym9vdGxpbi5jb20+Cj4+PiAtLS0KPj4+Cj4+PiBIZWxsbywKPj4+Cj4+PiBUaGlzIGlzIG15IGZp
cnN0IGNvbnRyaWJ1dGlvbiBpbiB0aGUgc291bmQgc3Vic3lzdGVtLCBJIGhvcGUgSSd2ZQo+Pj4g
dW5kZXJzdG9vZCB0aGUgY29yZSBidXQgSSBtaWdodCBiZSBlbnRpcmVseSB3cm9uZyBhcyB3ZWxs
LCBzbyBwbGVhc2UKPj4+IGRvIG5vdCBoZXNpdGF0ZSB0byBiZSBjcml0aWNhbCBvbiBteSBjaG9p
Y2VzLgo+Pj4KPj4+IFRoYW5rcywKPj4+IE1pcXXDqGwKPj4+Cj4+PiAgc291bmQvc29jL3hpbGlu
eC9LY29uZmlnICAgICAgICAgICAgfCAgIDcgKwo+Pj4gIHNvdW5kL3NvYy94aWxpbngvTWFrZWZp
bGUgICAgICAgICAgIHwgICAyICsKPj4+ICBzb3VuZC9zb2MveGlsaW54L3hsbngtbG9naWNwZC1p
MnMuYyB8IDQ2OCArKysrKysrKysrKysrKysrKysrKysrKysrKysrICAKPj4KPj4gV2hhdCBJUCBp
cyB0aGlzPwo+PiBodHRwczovL3d3dy54aWxpbnguY29tL3Byb2R1Y3RzL2ludGVsbGVjdHVhbC1w
cm9wZXJ0eS9hdWRpby1pMnMuaHRtbAo+Pgo+PiBodHRwczovL2dpdGh1Yi5jb20vWGlsaW54L2xp
bnV4LXhsbngvYmxvYi9tYXN0ZXIvc291bmQvc29jL3hpbGlueC94bG54X2kycy5jCj4+Cj4+IEFu
eXdheSBJIGFtIGFkZGluZyBQcmF2ZWVuIGFuZCBNYXJ1dGhpIHRvIHRha2UgYSBsb29rLgo+IAo+
IEFjdHVhbGx5IEkgaGF2ZSBiZWVuIHRyaWNrZWQgYnkgYSBkYXRhc2hlZXQgd2l0aCB0aGUgd3Jv
bmcgdGl0bGU6IHRoaXMKPiBpcyBhIExvZ2ljUEQgSVAsIGl0IGlzIG5vdCBmcm9tIFhpbGlueC4g
SSB3aWxsIHJlc3VibWl0IHdpdGggYSBuZXcKPiBkcml2ZXIgbmFtZS9jb21wYXRpYmxlIGFuZCBh
ZGQgdGhlIHJlbGV2YW50IHBlb3BsZS4KCm9rLiBHcmVhdC4KCk0KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
