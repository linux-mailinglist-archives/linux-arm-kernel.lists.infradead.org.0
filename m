Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA49D957BF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 08:59:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=biMxaEYo3puTv/f2663FK4xJGVtpg6qy0J9a+leclh8=; b=rLPlJnIk13PuRX
	QfPEMjPuJuFXIl8NIPVSSEa/gdbeoWxStF5/hUdKPGHO0noBvf/iJulQdWFjTxAY9XlbOVlZx8Ady
	3t+mbojtHnacrOEAGvnyXsQzj4Uyw6SHnMy4GzX5dgGbFm+KijLJKDKy25NnllbbJuF4vwQazkT+P
	nbYeEphqPsRaixemVPKqckBa4f0Qe+OibrCU7HrgMx/cg+I6NqcyL/0hLZ2BKnAx/W40bXM+FxaVe
	yl3XjdOXWSMmga2vKFrdViWiCnTfxnX3w773No+uc9QW3jEd0gYMCnpPMZeXVCpabKNQU3qJ0+0sz
	5wCOWZkZWzVMhKiRsIhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzy7P-0003Uo-Ho; Tue, 20 Aug 2019 06:59:47 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzy79-0003Sd-Go; Tue, 20 Aug 2019 06:59:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566284371; x=1597820371;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aJANKqUA1SmIHR8QQ1Em4J9Z+nl/19AQtn6P7QFd7bc=;
 b=azgX9P8yFQ5vsP3Z+nx/E/QCoAMxFiqdkQUdNd/WDvnu3FSIsaR1kiJ+
 3xtLa/XGuCwqqYzBp4up3WwqRFnoWdDh10FaizGVXlH6PiW0vixIjxNU9
 5FQava+HOhHlhW+i0IwQTpUCmdx92fSgpLhwQ8YX+g/RyWaU19OGfT3RT
 L0j2ldS/l9nc61SUcf/dFAmTZVpowIeiqt/oH9kN70wFdlofRQNEO46zG
 GB9OsBhjlfvo2+wCFdvjZcsgsUpiB4SCzzuzNaxjpk7G/ndSuTemsUGJP
 9Yta5xJy8oIBIA2Bnicx7clOZf5tGfVaS7Yj6kc5Q4aTQ/3byCniTiV1r A==;
IronPort-SDR: 3B5QErOcJ0SiOCBkI08oOYvoL+1yh3L6c86de6Ydx6LtfSTKOy4rnnaMU7++HClkMHOu6b/I43
 RLEu4nsQgdRt5bHouV3q4bNAAWQAq2fFDj9YaBVeBAe9E4iwjJufWurS8YekqxBxFI7SUmWv7/
 I7ZLeKl4G1/vmYjiMFh4PMEpz2uLp1zJ/f7VPRSThXgVJHkSDlU2KU2IVqIVn1yCwIcI1ShtA5
 SbGnanFSO59VHX2yyn70OZzzgUrerk+ucCK1njKAAuum1pqNLhF0IZc7HSfNZ8Wm2aoTVMvPhI
 oWI=
X-IronPort-AV: E=Sophos;i="5.64,407,1559491200"; d="scan'208";a="117143953"
Received: from mail-sn1nam04lp2057.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.57])
 by ob1.hgst.iphmx.com with ESMTP; 20 Aug 2019 14:59:24 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ULV2mEVyk6VM9XJqVakgnWxufju+v5pZstNqyZgthQc4EqlLhsD3ZA2CoLHdYspHUoGKr7ZNDBQeJ6kRinSym/JOMarFjjDBkcVsJHJSMhBZVGiVwu6dbLvswwuKj3EfHM4zjqwpt2nZZHOrRrf65RZlmMMduO39yZSRGvHLOHrAyIDqhvITWsUk65i/oHaurCpy0iPU+MquS9+L1uGxOTDYKjgkrYkI3EpWHGLMTJrLt84anejr9D4Rj0KFo//ZeX0yp1iKiIM4EOdLv2Pxl9uZ+IvGO9MGNEtZJVRGoRK7mfFsmOyAJpQy8cbj05aFdK15+/v3b2VBPN5HRA1d9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aJANKqUA1SmIHR8QQ1Em4J9Z+nl/19AQtn6P7QFd7bc=;
 b=d6OgmjNt8dkQ636JRtbDEs5yEiMT2fTjlGgSUJn9xYN2OsR7bICDkqh2EJbTo9JvMNsNkXQziK1YFlCwelW4cFqFELBCPaRNt+SOq3L0KOiqc9bzniGmplUn8iL5/BL1CAdEAcLivDmBPPnR+P69KHS/J6rYl1ugdiuVIwgnt7sSiDgw5RGARm6ezsE/0YWJ7gBpyo93qB0m6iLiZ1ZAEQ+oZ0pyILP9LMPDDKBQK59AYtSe9YyNiqRxnovrZ871s5ZYSzLRf5ChBP0BG7nI5ZTqs/QMUn/pekpto9yraar+IsqZZ4hK8lQRA7NZv+Yr8LVyd3fRnjPiq2bVrb2goA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aJANKqUA1SmIHR8QQ1Em4J9Z+nl/19AQtn6P7QFd7bc=;
 b=rTHaiWKhMM5AwiTc5Q+tsDFVyLK2no3LZkUFJGKWNeoqy9tFpDKUoslhuEjja8MAC8fSelQJ6kfZKHpcS6iAnoizryEWPvUnlI/q6VXL7tlHn9NPJrVXMX2dk2IhiXu1fMBI4uNXfpK1anH4B3+2dxb96+wNe2sL7twrRw2Dupw=
Received: from MN2PR04MB6991.namprd04.prod.outlook.com (10.186.144.209) by
 MN2PR04MB5965.namprd04.prod.outlook.com (20.178.246.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Tue, 20 Aug 2019 06:59:20 +0000
Received: from MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::5d3b:c35e:a95a:51e2]) by MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::5d3b:c35e:a95a:51e2%3]) with mapi id 15.20.2178.018; Tue, 20 Aug 2019
 06:59:20 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "pedrom.sousa@synopsys.com"
 <pedrom.sousa@synopsys.com>
Subject: RE: [PATCH v3] scsi: ufs: fix broken hba->outstanding_tasks
Thread-Topic: [PATCH v3] scsi: ufs: fix broken hba->outstanding_tasks
Thread-Index: AQHVVpQbxg4blIrORUGV5dAIJDZTz6cDnA3w
Date: Tue, 20 Aug 2019 06:59:20 +0000
Message-ID: <MN2PR04MB6991207C24518D8878CBAB5AFCAB0@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <1566222208-19890-1-git-send-email-stanley.chu@mediatek.com>
In-Reply-To: <1566222208-19890-1-git-send-email-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d0d00bff-8a3f-40cc-1a56-08d7253bed36
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB5965; 
x-ms-traffictypediagnostic: MN2PR04MB5965:
x-microsoft-antispam-prvs: <MN2PR04MB5965FA1706002CB707DA0291FCAB0@MN2PR04MB5965.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(376002)(136003)(346002)(396003)(39860400002)(189003)(199004)(7736002)(6436002)(66476007)(66446008)(14454004)(305945005)(81166006)(11346002)(446003)(25786009)(4744005)(229853002)(2501003)(8936002)(478600001)(71190400001)(5660300002)(99286004)(7416002)(186003)(6246003)(52536014)(86362001)(74316002)(2906002)(256004)(8676002)(76116006)(55016002)(33656002)(53936002)(26005)(71200400001)(102836004)(76176011)(64756008)(476003)(316002)(54906003)(2201001)(9686003)(6116002)(4326008)(66946007)(6506007)(3846002)(66066001)(66556008)(110136005)(81156014)(7696005)(486006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5965;
 H:MN2PR04MB6991.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0O2TfFYjkjwHTQTK82aRDrxqUjMuFaR7xfTK4qYKdL/m13mVWRx/CMhyZjXsOpncn1YgQzEdg7NWvvaqYkO+KuFhQDhZutFQT/FX4tHYHDhlU5ktnRQGpX8WGzVPca3+A6xfNWPEEUFPMCihHIwWxZ2aZDMGEK/alxzYOSwS0mP0vr2MhkSKqvbR5joNidHl8KpWpymALcvYBFdR4d8/lzS+lhel0Pd5H3t/Qo6b3Oi8UFEjmAJWeGBGBQ0ZA/7NWDfeiFfYptDn5iT50n2DcPWSxPQQi5AZ9i91x2MdV/a7UZFe+6zErmeQ59hZIXZW5aJl3d2BwkUAQA5nwR3a7jJY9G5a3x4hsfGlDNTr0XgeLRKVqmoIL+0lVzGVqxKVylFhYBvLbELC60dQgWs9PMynoMGF4S+WnVL7vOmrGQ4=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0d00bff-8a3f-40cc-1a56-08d7253bed36
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 06:59:20.7156 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bTUJidLFCGVqjb5hCtHvnMIwiQO7stpqrnufncmDE/q0csurZoM29EAhN2jOXrAKk/EwRU+SxWUcFwoc7XwhKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5965
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_235931_670474_617B40FE 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "beanhuo@micron.com" <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> 
> Currently bits in hba->outstanding_tasks are cleared only after their
> corresponding task management commands are successfully done by
> __ufshcd_issue_tm_cmd().
> 
> If timeout happens in a task management command, its corresponding
> bit in hba->outstanding_tasks will not be cleared until next task
> management command with the same tag used successfully finishes.
> 
> This is wrong and can lead to some issues, like power issue.
> For example, ufshcd_release() and ufshcd_gate_work() will do nothing
> if hba->outstanding_tasks is not zero even if both UFS host and devices
> are actually idle.
> 
> Solution is referried from error handling of device commands: bits in
> hba->outstanding_tasks shall be cleared regardless of their execution
> results.
> 
> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
> Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
