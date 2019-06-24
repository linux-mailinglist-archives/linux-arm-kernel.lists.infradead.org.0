Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3F34FE46
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 02:04:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9CYZmssUrlZIPkE373od0ok56u+z9VjjpUquShNdMe4=; b=nFRFQP3+OAbiRJ
	5aHeu3sqWYZTOINnG5aotFXcQVF7YVsb4Tf3/1DIyQTUXI+dnlavSWca2WcDmnwsVEX/amQNwH8c3
	MYW8/zkpob/9gGt6JjuvIsaO/zl6u2dedamfyDaUxyhqLJUlcYsrjPW57vosIiUN2jqS2azxXMevQ
	PlVLTpfWexx0P9cXstXXIrkEm6k32X3EB9oj3OBTPzPvJZI4jxWSS2M2zvUXtBlLuY+tsMy9BLE8g
	21tLurwVKKuF+BRtd7fjfRYYjdhPd8fwswp3+uiAOFxDNEVWq3U9M2gIECYQzoXIx1ZGnZMvyHphx
	1EScdKnDEBiULONuC9jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfCTH-0001ei-C8; Mon, 24 Jun 2019 00:04:31 +0000
Received: from mail-eopbgr810094.outbound.protection.outlook.com
 ([40.107.81.94] helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfCSw-0001dx-Ur
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 00:04:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SOGvsTl5VBUMZTk9VOns1JEnrxSE8KpyXTSWsXmy9cY92VbGDTExCFTlTJ7vAcRCkphOCTCNXwFkAoaoD1DscyUtCDbM+4Ip20UwipmmRaTYrHRm6xgQ3n3rvCW87ZGO9LnofF9ZCsvYfkAS0cvLFlDum+gtKJUc1ediONkQJd+rQKNk1rjFEsJvXefCUzd3H5lJryImK6XHOXLJE/JAnrTS0FpPSQ+z/NF7eFP0e6lZsbmACwX/TZY+gu5gt9Apum3i49szwl3yMnrl/VbDBgecWK+K9EbohiExJgju41nOC0HeADFeluYA3S19z0aAHDxUC5HQx6CPAkozxmYPzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ip99Eigxfyj3FmkSDrLW1pUfeGPZFRdb6oIWo1lGz/0=;
 b=NMJSEEA/Q4a6RhNogPE7NAddk9ISjPr+F/tz0m1jq53SSGBFZYTrueaWYXyfGoD8Czcp9sm0nJs3WlVWbXhK9cM2cKpu1YY6aTTbjKiqxm9tFXu6aWrCA9FFCe4DPmkF2mBntxVpYPMhDXKzxeFGVfDHbHJspeeKwJh1bOa6mCi/eOV4znuwA+PEtjKW9L6nL+n/qTIkCw5qCLB+jo3VolQsHndFVrrD06NLRRYpoqsmMcR+7uXELQoW1bpcvuUe8ygCHWSonuD4O3upahgVQH6EZ4fys8p5/dClT8VqcCjEdCaOX8yNtoPOheYbmJ7Ov8i87YrWSQBmpPIEK3fWlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=microsoft.com;dmarc=pass action=none
 header.from=microsoft.com;dkim=pass header.d=microsoft.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ip99Eigxfyj3FmkSDrLW1pUfeGPZFRdb6oIWo1lGz/0=;
 b=nhOu5pQEOa4UzkKpspUNJVuns3+Xowkuo5p3cbWYjqLH4EHAKlwkCLOUzSWai0rhZGZtiaj11PP56yn7WJWf/nd9z1BAR/eWzQfGi4uzsru3+prNeSV2da1Hnx5asoUh02ho/nflcrT1KoiLYMW2ukao5jHKGV5rLsSKEpa8OXg=
Received: from BYAPR21MB1352.namprd21.prod.outlook.com (20.179.60.214) by
 BYAPR21MB1301.namprd21.prod.outlook.com (20.179.58.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.6; Mon, 24 Jun 2019 00:04:06 +0000
Received: from BYAPR21MB1352.namprd21.prod.outlook.com
 ([fe80::b52f:faf3:6bc6:32de]) by BYAPR21MB1352.namprd21.prod.outlook.com
 ([fe80::b52f:faf3:6bc6:32de%5]) with mapi id 15.20.2032.005; Mon, 24 Jun 2019
 00:04:06 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: Thomas Gleixner <tglx@linutronix.de>, Sasha Levin <sashal@kernel.org>
Subject: RE: [PATCH v6 18/19] x86: Add support for generic vDSO
Thread-Topic: [PATCH v6 18/19] x86: Add support for generic vDSO
Thread-Index: AQHVFvJX/FWqgsMYXUWDuWvrdwhvDKaDyyHwgBdL5YCAAKgjAIAMJX0AgAHb0oCAADMqgIAAGq6A
Date: Mon, 24 Jun 2019 00:04:06 +0000
Message-ID: <BYAPR21MB135202F46C4B023B51EBBFD0D7E00@BYAPR21MB1352.namprd21.prod.outlook.com>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-19-vincenzo.frascino@arm.com>
 <BYAPR21MB1221D54FCEC97509EEF7395CD7180@BYAPR21MB1221.namprd21.prod.outlook.com>
 <alpine.DEB.2.21.1906141313150.1722@nanos.tec.linutronix.de>
 <20190614211710.GQ1513@sasha-vm>
 <alpine.DEB.2.21.1906221542270.5503@nanos.tec.linutronix.de>
 <20190623190929.GL2226@sasha-vm>
 <alpine.DEB.2.21.1906240006090.32342@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1906240006090.32342@nanos.tec.linutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-06-24T00:04:04.8777887Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=e048b72d-2ff1-4f2d-bcd5-a23a499f2ba1;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4dbb63a6-0779-43fa-f69c-08d6f83779cc
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR21MB1301; 
x-ms-traffictypediagnostic: BYAPR21MB1301:
x-microsoft-antispam-prvs: <BYAPR21MB1301C5BD6394A1921BD73681D7E00@BYAPR21MB1301.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 007814487B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(366004)(39860400002)(346002)(396003)(54534003)(199004)(189003)(76116006)(3846002)(305945005)(7736002)(10290500003)(55016002)(5660300002)(478600001)(486006)(73956011)(6436002)(81156014)(53936002)(52536014)(8676002)(25786009)(11346002)(66476007)(71200400001)(71190400001)(66556008)(64756008)(66446008)(33656002)(66946007)(6116002)(186003)(229853002)(81166006)(446003)(476003)(8936002)(256004)(8990500004)(7696005)(10090500001)(6246003)(74316002)(102836004)(7416002)(4326008)(9686003)(99286004)(26005)(76176011)(68736007)(316002)(22452003)(54906003)(110136005)(2906002)(14454004)(86362001)(66066001)(6506007)(41533002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR21MB1301;
 H:BYAPR21MB1352.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NssyykIjQ9mRtBfcrKUSGwo+J2+usrM0gyLhCizMFEI0GK9jzfMgcyGOvMrAFOjc8WlvHQRndRleFierKlODV6tRz8kShtZf9+xjBBWbvX31il1byFxCIxl2jG/5eWed/5U5rA6eCf/LyR3FNTQwZJgiBcGL6IVkHRsjk3fN3Q7Zqox6w8JAhfDxMNlrsl/BJVE8XTrXPsRsHNg2XDl/ZemrkkCn3AaIJkrl4BUzzl1WArWWos3tD5K99/Q4KQgvLw6c+OD635ePgxStD/pivt/JHC/KeLYyq5l89uhkzRKtWnDoIiyHS2o2i7vnRwB4SWxUL1u06jJcDLLSUt7Wd+r3ieiUtHvBaWhXEBEIcmvMXaOA2IjcVH6WjPYgXY4GgnVEQdgZmft0wjPsu+duwx1TWM/C+g9RqSPvq/YZhqQ=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dbb63a6-0779-43fa-f69c-08d6f83779cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2019 00:04:06.7387 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mikelley@ntdev.microsoft.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR21MB1301
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_170411_070315_A01972DF 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.81.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Shuah Khan <shuah@kernel.org>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Peter Collingbourne <pcc@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Huw Davies <huw@codeweavers.com>, Greg KH <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thomas Gleixner <tglx@linutronix.de> Sent: Sunday, June 23, 2019 3:13 PM
> 
> I have no objections if you collect hyper-v stuff, quite the contrary, but
> changes which touch other subsystems need to be coordinated upfront. That's
> all I'm asking for.
> 
> Btw, that clocksource stuff looks good code wise, just the change logs need
> some care and after the VDSO stuff hits next we need to sort out the
> logistics. I hope these changes are completely self contained. If not we'll
> find a solution.
>

In my view, the only thing that potentially needs a solution is where the
Hyper-V clock code used by VDSO ends up in the code tree.  I think the
right long term place is include/clocksource/hyperv_timer.h.   That location
is architecture neutral, and the same Hyper-V clock code will be shared by
the Hyper-V on ARM64 support that's in process.

Vincenzo's patch set creates a new file arch/x86/include/asm/mshyperv-tsc.h,
which I will want to move when creating the separate Hyper-V clocksource
driver.   If you're OK with that file existing for a release and then going away,
that's fine.  Alternatively, put the code in include/clocksource/hyperv_timer.h
now as part of the VDSO patch set so it's in the right place from the start.  My
subsequent patch set will add a few additional tweaks to remove x86-isms
and fully integrate with the separate Hyper-V clocksource driver.

Michael 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
