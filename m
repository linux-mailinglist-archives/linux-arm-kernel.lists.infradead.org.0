Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D8E92246
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 13:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=odRjtMM7eBEn7151XIkOawrWkbd2aRwbkBvi3xmVbCQ=; b=FvPcXolg7BVP4O
	YflKoZm0/K2duRC8m5zTiW8CNjUXKADwkDu/88XZ72IOb9fbnPhNmDcOOxRk0VHeEZFox4zsDmUU1
	kTF4bMTZ7DocPs/oQq8GyE8QcILjY6QeJOQPENr9SdbFL9vJSOBFtOe6E1irQ0FpSq4wGzWt0EsUw
	Sp6TE6sZekJfHn1hR8K+BKWEDL3k0cST0N8CTm6pclVASJi6oB4mtLAA3lnxx8KEXXK+ycFWIFtQX
	wRKF6WwaokmX7nko6Klr18qM7U7ecrn1KUBdZAAlk3qsbeAPj0d2YrAzP84JitFgZ2tBGh2+3qBpj
	fSqd6F79dje/e2WVcZjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzfoL-0007Rk-0Y; Mon, 19 Aug 2019 11:26:53 +0000
Received: from mail-eopbgr740059.outbound.protection.outlook.com
 ([40.107.74.59] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzfoD-0007RO-Iq
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 11:26:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iWyhc97cYRuIA3v+dnkAMZZ4wL51y3ZlJsufUcEE77zHK9QPffV9DK7wr+rSwWtQQIRSNIXTAPe/8g8WR4DI40AuiFFvMvU++JgyoHW2eF/4ASkPLIrd9GuEbLze3lIfr8bWNEAqfQbxznNHbRVmQP16TqYut9uCHSn7Ec6mSs+My3KHvMmEf9YrfNMENYjSVwglw9Mg/PwsRSgjZnYFSitqEWSvCsS8IOaK8DJvmBIf85k+rNi9htv79MK7M56ZCrthfsorOrh65knCPE4pmZehd/6xA9pXN5jJacUMkkFPR2MdJ3uaTuVwXQ275IMextysUmaC+uqhuCdhGV4D3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5UN64Lzpz1gvz44pTjlaKfWmp+uV5zK+jhRUYACndtE=;
 b=ad3avZ1UYBVgKayrCfDrrxcHGui83vdJPd7sNPv94NHoOoQ5JzarRam4i1y/XwfnMu1+/ljrRNF62C7qqzoCEABpHDSYU46SoTkcndfuxKWCu6thVc3T+PpoQVi9KdkB83ACdu+/QPnLoBreiz5TLwYQ06MvKcIoVNVM2C0koi2cGRWT2+gewU+VwC6NvFoZTHW+ctL2pTHOmDL6BobBWR5hb3BGDCJ07wmsv2yuif9KuM3ZnJBXJ9WvsswjtFp0HSNV8tbSyML86lHzBN7aAcyyongz/UsmmTJZnt/srUZ7ho7aLRbmum0wHmU75cJS7C97pfiakjzkpxKTuMaYaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5UN64Lzpz1gvz44pTjlaKfWmp+uV5zK+jhRUYACndtE=;
 b=mNII6d4zyhxceBuHkD6EaNnkw9lItVZ/KYy83XVS+ZzgtW6KktunTycYXRT+OZYDjKxF8TOGKaeHVLuiODgLIXmcNBCrkh/tx8F5LkXATmGblRqkHXriX9qqhd4Xfs1DUbOTbdy9qzFFPWdibBrIorN6g4T/y+STARC2glw8DjM=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB3528.namprd03.prod.outlook.com (52.135.213.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Mon, 19 Aug 2019 11:26:41 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88%7]) with mapi id 15.20.2157.022; Mon, 19 Aug 2019
 11:26:41 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Steven Rostedt <rostedt@goodmis.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 0/3] arm64: ftrace with regs
Thread-Topic: [PATCH 0/3] arm64: ftrace with regs
Thread-Index: AQHVVoD4VpB1/EZ1uky0DPE7ud1sNA==
Date: Mon, 19 Aug 2019 11:26:40 +0000
Message-ID: <20190819191530.0f47b9b1@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TY2PR0101CA0027.apcprd01.prod.exchangelabs.com
 (2603:1096:404:8000::13) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7e5c8f0f-9a0b-409e-7886-08d724981b0c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR03MB3528; 
x-ms-traffictypediagnostic: BYAPR03MB3528:
x-microsoft-antispam-prvs: <BYAPR03MB3528F56571E47904B98F930DEDA80@BYAPR03MB3528.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0134AD334F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(346002)(136003)(376002)(366004)(189003)(199004)(5660300002)(8936002)(4744005)(50226002)(86362001)(81156014)(81166006)(71200400001)(71190400001)(25786009)(486006)(476003)(8676002)(66446008)(64756008)(66556008)(66476007)(66946007)(1076003)(6512007)(66066001)(9686003)(26005)(6486002)(305945005)(99286004)(186003)(102836004)(2906002)(52116002)(54906003)(53936002)(3846002)(6116002)(316002)(256004)(4326008)(14454004)(6506007)(386003)(6436002)(7736002)(478600001)(110136005)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB3528;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: EdRVKAQHTTD89qgRCjgoUyL/uAol1nZWeGEdwuet7T+MBUIInhIj3vgkhatW5FgKLBWdsjXXeDqbnA8tWh/F8cVKahlYkpwUoqPsx8xzmsjxLgTU7BWXX0QeJaDjepE/6zEyoXd1Lv+U0jaS7SS1rLWBwpGo9iZD9qNFnPdQ3kKsSTNjQ6drEF5nbvEu1Y5DmCcl5eyHgCRNRygqjBfbs+FA39opQZsyvvrxdmhMl//s26bouvxuL8e5r6glTTnC1j9STGhi2glYBu6iUi5GCxo0TKtyF5lJUU9DihPp86mkv6Fx45hk68IIxx/u3FKvdj7G/sltogbtdkHP03PsSxi67jW7WWRcmRIKfuDJVFx+m0eiWVoefzHQ28rGaBMCDTRcXsId5zi1mJjUFixosu8EflHyPki0zRWpTa5L3uI=
x-ms-exchange-transport-forked: True
Content-ID: <C5349202E559E04F8AB05BD2AFC56701@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e5c8f0f-9a0b-409e-7886-08d724981b0c
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2019 11:26:40.7523 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n1zEDcvVY9jeOHkMfEVjAtZCMULc/IN/Fm/t/rbHpMpvM4tcrGcmu4g0L+wC4vjrxFAoNqLLBcEOYgU8jrBhBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB3528
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_042645_674749_70ADD882 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.59 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Torsten Duwe <duwe@suse.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Try to make the arm64 ftrace with regs merged.
The later two patches are from Torsten.
The whole series applies cleanly on v5.3-rc5

Jisheng Zhang (1):
  ftrace: introdue ftrace_call_init

Torsten Duwe (2):
  arm64: implement ftrace with regs
  arm64: use -fpatchable-function-entry if available

 arch/arm64/Kconfig               |   2 +
 arch/arm64/Makefile              |   5 ++
 arch/arm64/include/asm/ftrace.h  |  12 ++-
 arch/arm64/include/asm/module.h  |   3 +-
 arch/arm64/kernel/entry-ftrace.S | 125 ++++++++++++++++++++++++++--
 arch/arm64/kernel/ftrace.c       | 138 +++++++++++++++++++++++--------
 arch/arm64/kernel/module-plts.c  |   3 +-
 arch/arm64/kernel/module.c       |   2 +-
 include/linux/ftrace.h           |   1 +
 kernel/module.c                  |   7 +-
 kernel/trace/ftrace.c            |   4 +
 11 files changed, 257 insertions(+), 45 deletions(-)

-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
