Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3248C1C46D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 21:11:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BZSthJfQhZFOd5tpSk04NsYKIeCJg+U7JEy5vx7DLsM=; b=HvhESuwRErqFqE
	GWXZIy7qHTL6Amca98OsB7EkyzwGtldPicss8qZ9z5B+yexwJhr75WH9t8+i8w1FfTA/eWb2NIgUv
	3JnHPksi0HAJM6Mllc60gMBFEI+FqKOd62nMkB+8Ro3xP9lUOFNPnBSLtVw3wvTFMr5omiP7pVIV2
	AdNPWsY42a4iKMYF45Dg5QVuEyAxts2jX6JqvQyG1TdnSRr1okL6EjCuGIHmco3D7u4c2rqoKY635
	Ioio5i8sCwC0ji/+H0Tph0wWSGN7YB6ADgzlzTbnndFrF74hdgukmBYB7WUFrVut3pWYo7l1VwRt8
	wDW35XaH+2QxtVy74GPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVgUn-0007hW-O7; Mon, 04 May 2020 19:11:17 +0000
Received: from mail-eopbgr760084.outbound.protection.outlook.com
 ([40.107.76.84] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVgUf-0007fD-9Q; Mon, 04 May 2020 19:11:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QbntnqEZTK+etZ222zgoaWlSNbEQg5Hv2GK5GGMUQNNI5HKzIn9Eid6yMCI9hfaFZHLEb3/jECmcN86js3cnso8nmorPgR15royRvq2bNCXVD8t1pjuP2K1QzXD6H/pB/fZRFaLJu3/agHzzz7KZCPn+caYhxUBLquxgyJiA1CuSWOU/3EqPOu1OPBAL1WoZ9A0DFI4flEEPTGj78bQVVLjGwht+yYQRlbaolcU9L4EhHdnmbKpGRnLEdRCXk3twdoAzeHIczvmqXRnf5lmxQXbDOoJdvX5FREZxErpadlI7a0sUwcnAALI/nKfqUjN+dmp6ZQRBtJUSAkSnIRsBUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RyCCpK0TKLhVlFlvXBli3J6WOoqQBWv5aPsuuT8Bb9c=;
 b=Nl8ip+HWFIOSr4fgqLps1k7VK5aJEifxvXSYFyHPRinMls0CMQDb3tQ1P5eQ9eQGe7osT9DO5gUiaYDINluZyRdS+Mtq7S+zwDXo4j1gK40YnV5SSN4cAMfCN3lQVacGsPj4mLNgbPi/41gN3IdZPhKxM8N3BI49wTk0dmcodwtcCJq4/TN7d1T72DJKvXoY7Z7v01CCpZIqV2byUV/p38JNK7s9ScO6PwDD/g5hf7rNSazcIqU6TzjtPdCrJKOqne6LjBkT98Tsm0JrdodpvdDeMgsGj1qyKUtFMBy/HOtDIqv8Ss5jL3ksQAgvE6NomI2RDbmy2S2sZgcwuFLryA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=micron.com; dmarc=pass action=none header.from=micron.com;
 dkim=pass header.d=micron.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=micron.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RyCCpK0TKLhVlFlvXBli3J6WOoqQBWv5aPsuuT8Bb9c=;
 b=HwqaS8XESxneOcbUslDJI60U7xc8P1Pgd6SpdC1OlgTxP6rDIxEqSPH7CiaLEh7f7iOp80W/SQbLPNMDMLXZZZZvZSFwhz+XoXXl8WJyO3Innu4CwBp1g//+4YRAlXAE651+D4sVJ2julpdxmq0icVFB2SKbyHWddh9yw/7mmuc=
Received: from BN7PR08MB5684.namprd08.prod.outlook.com (2603:10b6:408:35::23)
 by BN7PR08MB4307.namprd08.prod.outlook.com (2603:10b6:406:fb::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.19; Mon, 4 May
 2020 19:11:05 +0000
Received: from BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::9ca2:4625:2b46:e45c]) by BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::9ca2:4625:2b46:e45c%4]) with mapi id 15.20.2958.030; Mon, 4 May 2020
 19:11:05 +0000
From: "Bean Huo (beanhuo)" <beanhuo@micron.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>, "jejb@linux.ibm.com"
 <jejb@linux.ibm.com>, "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Subject: RE: [EXT] [PATCH v6 6/8] scsi: ufs: add LU Dedicated buffer mode
 support for WriteBooster
Thread-Topic: [EXT] [PATCH v6 6/8] scsi: ufs: add LU Dedicated buffer mode
 support for WriteBooster
Thread-Index: AQHWIiQ2yyElrXc68UCqlrbjQUtXkKiYSvrw
Date: Mon, 4 May 2020 19:11:04 +0000
Message-ID: <BN7PR08MB56843594B62E0852386869EADBA60@BN7PR08MB5684.namprd08.prod.outlook.com>
References: <20200504145622.13895-1-stanley.chu@mediatek.com>
 <20200504145622.13895-7-stanley.chu@mediatek.com>
In-Reply-To: <20200504145622.13895-7-stanley.chu@mediatek.com>
Accept-Language: en-150, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcYmVhbmh1b1xhcHBkYXRhXHJvYW1pbmdcMDlkODQ5YjYtMzJkMy00YTQwLTg1ZWUtNmI4NGJhMjllMzViXG1zZ3NcbXNnLWZjZTZhYTAzLThlM2EtMTFlYS04Yjk1LWRjNzE5NjFmOWRkM1xhbWUtdGVzdFxmY2U2YWEwNS04ZTNhLTExZWEtOGI5NS1kYzcxOTYxZjlkZDNib2R5LnR4dCIgc3o9IjIxMzQiIHQ9IjEzMjMzMDkzMDYwMDczNzM4NCIgaD0ibkJ5UnNJSzZnYUJMR0xiQzVUNE9qQVBpVll3PSIgaWQ9IiIgYmw9IjAiIGJvPSIxIiBjaT0iY0FBQUFFUkhVMVJTUlVGTkNnVUFBSEFBQUFCbytrQy9SeUxXQVd4eHBqT3NuZHNLYkhHbU02eWQyd29BQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFCQUFBQkFBQUFmM09FS1FBQUFBQUFBQUFBQUFBQUFBPT0iLz48L21ldGE+
x-dg-rorf: true
authentication-results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=micron.com;
x-originating-ip: [165.225.81.109]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a2775ddc-97c5-4425-7e06-08d7f05ee4b8
x-ms-traffictypediagnostic: BN7PR08MB4307:|BN7PR08MB4307:|BN7PR08MB4307:
x-microsoft-antispam-prvs: <BN7PR08MB4307394B969988BB0FFE4BD3DBA60@BN7PR08MB4307.namprd08.prod.outlook.com>
x-ms-exchange-transport-forked: True
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 03932714EB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2bqdeiltOp9YzHpd+ZihbOsyU/P0RR3loM2gDhGZeujA65nirMvOYozK8qxCv+fr9m0Vj8cNmIk/zUPPw/Lf7fF7vT9eVnceyX9iFiIaX3mngfLDfcvY6jmJ0RfEU1B1KLCtQ0rohbkfaRcMN5MB58rGRjtocY0jg6QummEMfRPIrd2VUrfgc1x9idYBN3DOrbQbkpSH7A2ImHDUzRRzQxpFMrbIegJ4YRuuqsX4TYTRvf+tQpkWpMG3MW4nYdkriWsPxzASlGWr4MCjWuLHkqJeJSKBvGqO18QP0tb9c0ET7KP8dECq3xSsnFpXbZgLISTN0H6ul1dxcnbctOxSpdKsVpMiyGtf6Rl6PkrWvBZ2qhTOALSysKvsVN5DQ4bdDEt2hfpMza5bwlEyQQ1KrxX/pqMFiFFLE2eFYYdIdYnb3kxp76GvwG6lDRRJ8cTJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN7PR08MB5684.namprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(136003)(366004)(376002)(396003)(86362001)(8936002)(110136005)(54906003)(4326008)(8676002)(316002)(55016002)(9686003)(26005)(53546011)(7696005)(186003)(71200400001)(478600001)(55236004)(6506007)(64756008)(66556008)(66476007)(66446008)(66946007)(76116006)(52536014)(33656002)(5660300002)(7416002)(2906002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: w1xqykftrqsAMlQbl2/QkVCfLrgzH7IB/X9TXKHTEwWYVN88FPr4Ur3lYk2sWsnvCgtB9QxI63QmLndQmYVE+naLDn01TtIFCBvknNfSxE6EvGxPWE2QjLcgVQrrfBNg5P/pUHDl5gV4Sogm15Y+GBNNavjCK7OoMwLKJ6h2JU/5ZA0Y2lpSRH5gXiUDti2bW/00L/Uj79jHsUnadW2RvDi3/DWVawMKup4E14K3xYlpIyQq84WA11h/N2rVBa9R+l9PACfv4FrhWpJZTqIyzywLe+2+Gbx7qLLGAo8A4PGp3hmkJ4hJHSG0Z4KyBC/U2JYa9isGdoHn/E0gtbm+ii9OjWUDKnZhAxYbexKVTpKNNeEKXghh77R/ksMCtc1pBeIgx6alE2y3KB6tJgaFmlpRuB9koLgJS5xidyOC3XHCnlz9kirykyAp5GbsB4O8t2uRFKrjgI0k0WUZ9GogB+Jhf7MHQbmtvRpTTF5BIg5AzprOMvDHNzjk21KTRPC3rKevYmpldEett0BQWD7ZLJgxI2VLYMqEdAsfEWGq7GI0jxBVXVvD68uV+y7F+3DiUMUgCKQqIDH+lFDVDfYTyDnC8hyrzVLNiUoZMEL6FnRWvVKSZq+weAh1IFV4MenNdEYx0+wuSibuS5cWfnO3A/85gV3ninaVrw01m9WuiVTgQuLYymKErc4HcqFhjB3WrjUgE9ly4iduE8a6R5Lp8ZVJ0BCDQlQr1WcM30zpsoRnRfI2d1PTuQKTd6iHpLQ0UJbHyaWM0vrQecKbWqnjv33aNLz7u1rXhR12wIO4Ro0=
MIME-Version: 1.0
X-OriginatorOrg: micron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2775ddc-97c5-4425-7e06-08d7f05ee4b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2020 19:11:05.0433 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f38a5ecd-2813-4862-b11b-ac1d563c806f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 54vkRV4a88z2ge19tV+Hwj4NtZRTCCHEwHFX6EWK22jLUZJ0ZM4mLfdsZGcO7tuHc1ee8e4+UJYBcLnNv372Cg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR08MB4307
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_121109_561639_C9C442BE 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.84 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.76.84 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "bvanassche@acm.org" <bvanassche@acm.org>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Stanley Chu <stanley.chu@mediatek.com>
> Sent: Monday, May 4, 2020 4:56 PM
> To: linux-scsi@vger.kernel.org; martin.petersen@oracle.com;
> avri.altman@wdc.com; alim.akhtar@samsung.com; jejb@linux.ibm.com;
> asutoshd@codeaurora.org
> Cc: Bean Huo (beanhuo) <beanhuo@micron.com>; cang@codeaurora.org;
> matthias.bgg@gmail.com; bvanassche@acm.org; linux-
> mediatek@lists.infradead.org; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org; kuohong.wang@mediatek.com;
> peter.wang@mediatek.com; chun-hung.wu@mediatek.com;
> andy.teng@mediatek.com; Stanley Chu <stanley.chu@mediatek.com>
> Subject: [EXT] [PATCH v6 6/8] scsi: ufs: add LU Dedicated buffer mode support
> for WriteBooster
> 
> According to UFS specification, there are two WriteBooster mode of
> operations: "LU dedicated buffer" mode and "shared buffer" mode.
> In the "LU dedicated buffer" mode, the WriteBooster Buffer is dedicated to a
> logical unit.
> 
> If the device supports the "LU dedicated buffer" mode, this mode is configured
> by setting bWriteBoosterBufferType to 00h. The logical unit WriteBooster Buffer
> size is configured by setting the dLUNumWriteBoosterBufferAllocUnits field of
> the related Unit Descriptor. Only a value greater than zero enables the
> WriteBooster feature in the logical unit.
> 
> Modify ufshcd_wb_probe() as above description to support LU Dedicated buffer
> mode.
> 
> Note that according to UFS 3.1 specification, the valid value of
> bDeviceMaxWriteBoosterLUs parameter in Geometry Descriptor is 1, which
> means at most one LUN can have WriteBooster buffer in "LU dedicated buffer
> mode". Therefore this patch supports only one LUN with WriteBooster enabled.
> All WriteBooster related sysfs nodes are specifically mapped to the LUN with
> WriteBooster enabled in LU Dedicated buffer mode.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> Reviewed-by: Avri Altman <avri.altman@wdc.com>
Reviewed-by: Bean Huo <beanhuo@micron.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
