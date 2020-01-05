Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E203E1306B3
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 08:55:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m+F/d2nqzhfmvY/GP75nIQfsiMSkKb28qmt8A4L4dY0=; b=IbiBE6ARczixYg
	wgSojI2Oir6UgqFGYZPs6XvKikJLX8UtPoYNe6ByekIQhH6WUXLZ2s56C+eOuRJnE2QuhAJHrN51z
	F4Id+8rMsC7HpBMNvA04C3TTzk6ZeylBp63c6dZP9/tByjtdqM9G0LCyBb2/uw7BPSfINiQOSp7p0
	qROKKj1Pt2kaRudDtfXlDUjOASPSipUGNqj0aX48jmDJZcUhDyDoke748Ol9oO20r33LJ9e/U5PF3
	uHnt0EMrALMSIA6WsRUNmRHBQT6YTgoA1G4wc4cg6Bdt3wDIwXqnsPDhgJjmSIyMq4fwk70+ZpdtO
	YiWXzEDbpQz3frFm8p0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io0lB-0006Ts-Dj; Sun, 05 Jan 2020 07:55:41 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io0l3-0006Sk-33; Sun, 05 Jan 2020 07:55:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1578210932; x=1609746932;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i6YSI8Y28SS0aLT83HJtSYrdFWceOuALB146DZrreTo=;
 b=N6QcKjFeHWahHTYxNsJ6JnBPAdnrjsM0O1SHrS2CpFUQzm6QKQUSfvsI
 WLQxQ7hGP68fP97bPrq81tC+anZVPuSUAirbGTdH2H12DUTrupAfmarqr
 CsxxjOnC8tA2eQHEjSuiT5+HMpcqh3cmtOYuTjU1oZE31fvOQAnID3tKs
 X8wXsJGiQ/sG0Cu2DrU3oxRvFCora7Dc+nhRFxsshrKpFF0R6c2yQNDVP
 svIwKsiPkfQhpgVZpHQPt0j13EXH2aBNilRfjps9DCNJK0/SkaNK8coze
 D6foAmChy43+y1/FwsVZcQ2UiMo3az0GuIq38Ax8vumzFqRaua3oW6xn8 g==;
IronPort-SDR: 83eG4I/ouLraYtHRMW1IIMjiqDudAip9WSNP+SkmPIefPUbfRiojokw7rrv8lNlnOjJY5HIaG5
 1kOHX+g0s4scjlqP5pnDm0lxjvERCKT2cIYQk1yREG9N1vR2jb05g4gKp1Rwr3V74shJky06N/
 frCwfuLgcVOPhs6AdqbiJYoTTNHrLG/UClSlOrv/3c7a+Do049vnogfPsG5JbM1LKeU//8L+vp
 NSgn30bSWFWpdm7hBR+4aSLvrQbImx48gdRWMMnJeJk1sQRxUpvjlUbTOju1eOexeC3CT0G83p
 6sE=
X-IronPort-AV: E=Sophos;i="5.69,397,1571673600"; d="scan'208";a="126731207"
Received: from mail-dm6nam12lp2177.outbound.protection.outlook.com (HELO
 NAM12-DM6-obe.outbound.protection.outlook.com) ([104.47.59.177])
 by ob1.hgst.iphmx.com with ESMTP; 05 Jan 2020 15:55:28 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CNQ2NGv95B4T7MECQcXTh4grN2FoHtBJNoFtTBYPtjBUv7CWbNXPpck3VZFIDudE7zCRPwpUyb7Pxs7Guqmedm18WyBpG7UjAT9yodexcPRvwTUKHRk7qdjjC/ew1/9iIZks4CFODxZVrivMFmaocKCjotZ8sZP3owKM2TC1snPil02jb/yfjS6lPJIkc0eSwFIarXjUtmKvtzZNKpjfGua8vFLGsFyMX3IP3G4DPD5lbSALBCUJrP/3sMlt0dLSfCKv3HaUiCvuovvLQhLtVaA3pi27hysjU+SUtqqvEGR84TAB29Bzg9/HkRQ+dmf4GbEYbVUwQgfRGKINk2IIwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i6YSI8Y28SS0aLT83HJtSYrdFWceOuALB146DZrreTo=;
 b=HK/lF4ekqUhRceZjJKZBhtADPgkeKF7NxQuGTB1oCdAB2MOrT302LTbzem9C5AfABUdjcQjqabZ1GmNlwfy5tVpqxuTll5horx51rlPqybIiSvXZui1hIkJXsRD1bY9oJmwkiR0+GdxMiBZGRrKO5PYWoMUaJhgmJxwvrgWHmegMs2/SeHwuBdOxnmnIUwdjt4HsZrf05gXEpg5wjfyE+nz1MMU2rJ0mv+lCTHhDXYOsF4qoIaFwbLvWKLyKxGP4+V4qXMrBIiRiFz/k2ahfq7JEeS0nY7r4J6W90A/wzMELzfquI56xWFYTI/Oug5jlEEZG936WzrEOmx2RgaY9yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i6YSI8Y28SS0aLT83HJtSYrdFWceOuALB146DZrreTo=;
 b=Q1/06elEKuT7coN8bNHjCjn7gZhBF3HgmnXnrYTwODc62Ku2IeekKrbY6cAqM0/xeuzcFQjxr6MMapN1Imcg0CL2bZl+AHZBx2SojJbY3njzaeM/ow88SEGosXXRzJXLpFhimrSh7d+O4nR4nc5udyYLxNB/5aX/jxv0uRtRfm4=
Received: from MN2PR04MB6991.namprd04.prod.outlook.com (10.186.144.209) by
 MN2PR04MB6704.namprd04.prod.outlook.com (10.186.144.136) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12; Sun, 5 Jan 2020 07:55:26 +0000
Received: from MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::460:1c02:5953:6b45]) by MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::460:1c02:5953:6b45%4]) with mapi id 15.20.2602.015; Sun, 5 Jan 2020
 07:55:25 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, Can Guo <cang@codeaurora.org>
Subject: RE: [PATCH v1 1/2] scsi: ufs: set device as default active power mode
 during initialization only
Thread-Topic: [PATCH v1 1/2] scsi: ufs: set device as default active power
 mode during initialization only
Thread-Index: AQHVvujpVCeUwM6XKUGtJJlwmaVE1qfTUtwAgAAcwoCAABJWgIAAJDGAgAA4ZQCAAA4MAIADBCYAgATJMMA=
Date: Sun, 5 Jan 2020 07:55:25 +0000
Message-ID: <MN2PR04MB69913BBFD9DF5268894C94A9FC3D0@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <1577693546-7598-1-git-send-email-stanley.chu@mediatek.com>
 <1577693546-7598-2-git-send-email-stanley.chu@mediatek.com>
 <fd129b859c013852bd80f60a36425757@codeaurora.org>
 <1577754469.13164.5.camel@mtkswgap22>
 <836772092daffd8283a97d633e59fc34@codeaurora.org>
 <1577766179.13164.24.camel@mtkswgap22>
 <1577778290.13164.45.camel@mtkswgap22>
 <44393ed9ff3ba9878bae838307e7eec0@codeaurora.org>
 <1577947124.13164.75.camel@mtkswgap22>
In-Reply-To: <1577947124.13164.75.camel@mtkswgap22>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [77.137.86.228]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: eb1c5c05-a557-4402-2095-08d791b49ff5
x-ms-traffictypediagnostic: MN2PR04MB6704:
x-microsoft-antispam-prvs: <MN2PR04MB670456BDB66A0F9FCF33C86BFC3D0@MN2PR04MB6704.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 027367F73D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(346002)(136003)(366004)(376002)(39850400004)(189003)(199004)(110136005)(71200400001)(4326008)(4001150100001)(52536014)(478600001)(7416002)(54906003)(966005)(81156014)(8936002)(33656002)(316002)(81166006)(8676002)(26005)(7696005)(66946007)(76116006)(66476007)(64756008)(66446008)(66556008)(55016002)(9686003)(186003)(5660300002)(2906002)(6506007)(86362001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6704;
 H:MN2PR04MB6991.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xhSSjs7rJ+qCTQFOZP8YkbRDRjliGSMr9BCZnhh5FP/AbJUBQ9GKaVkJmu/GEfH/Db22aAnebxgxu2auS7mCVm4m0Y8ZgAoAV/rWSIUJ/rL0NRzECSfpoyM8zvrDS29bxCFY8NaKledMmV/hMJ3KlpmLM9wEKF57PdkucjfawPBRdvbDBv02KDOjxTBpQZfax4shKWUacWU0fXrWu8As8Ki7BCg4dB2cGNI4EbYBySDuoRi5OD6kVMNjswiP3G2vgDAxO41jV/pM+mxCA/VtPA7xjkW6wo+RaAEfyzRz8An4fwWx446LIo8M0gr7qw7QIROxQSjFD5510G0R+SR7K1H2uQFi0vt9qaqVKZ4jYepPEBnsmG+uU06YevEABWBVn/vWupY8N5ODFHMqH6FvBtFZB1wAXae2B1psg48TB0BjXiwiCjgRdwtf3Xz8xXTmKBYp7QV3fQ0aMBFerhacYjE99MMv/5Ji49Ca6flFnOU=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb1c5c05-a557-4402-2095-08d791b49ff5
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2020 07:55:25.8065 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: caTdqGKOhUYc6wXg7AKlLHFy2/i+iDjyi4JC6ejkF1iccUsZ4FJ94M4yuHlymfFYg1KcKtoaKPSaTdYuhnJswQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6704
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_235533_254613_9D471A24 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "jejb@linux.ibm.com" <jejb@linux.ibm.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "cc.chou@mediatek.com" <cc.chou@mediatek.com>,
 "ron.hsu@mediatek.com" <ron.hsu@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "linux-scsi-owner@vger.kernel.org" <linux-scsi-owner@vger.kernel.org>,
 "subhashj@codeaurora.org" <subhashj@codeaurora.org>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "beanhuo@micron.com" <beanhuo@micron.com>,
 "pedrom.sousa@synopsys.com" <pedrom.sousa@synopsys.com>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stanley,
I am aware that this discussion is already concluded,
Just pointing out a small issue that might ease your mind further.

Thanks,
Avri

> 
> Hi Can,
> 
> On Tue, 2019-12-31 at 16:35 +0800, Can Guo wrote:
> 
> > Hi Stanley,
> >
> > I missed this mail before I hit send. In current code, as per my
> > understanding, UFS device's power state should be Active after
> > ufshcd_link_startup() returns.
> > If I am wrong, please feel free to correct me.
> >
> 
> Yes, this assumption of ufshcd_probe_hba() is true so I will drop this patch.
> Thanks for remind.
> 
> > Due to you are almost trying to revert commit 7caf489b99a42a, I am
> > just wondering if you encounter failure/error caused by it.
> 
> Yes, we actually have some doubts from the commit message of "scsi: ufs:
> issue link startup 2 times if device isn't active"
> 
> If we configured system suspend as device=PowerDown/Link=LinkDown mode,
> during resume, the 1st link startup will be successful, and after that device could
> be accessed normally so it shall be already in Active power mode. We did not
> find devices which need twice linkup for normal work.
> 
> And because the 1st linkup is OK, the forced 2nd linkup by commit "scsi:
> ufs: issue link startup 2 times if device isn't active" leads to link lost and finally
> the 3rd linkup is made again by retry mechanism in
> ufshcd_link_startup() and be successful. So a linkup performance issue is
> introduced here: We actually need one-time linkup only but finally got 3 linkup
> operations.
> 
> According to the UFS spec, all reset types (including POR and Host UniPro Warm
> Reset which both may happen in above configurations) other than LU reset, UFS
> device power mode shall return to Sleep mode or Active mode depending on
> bInitPowerMode, by default, it's Active mode.
As for bInitPowerMode - please see the discussion in https://www.mail-archive.com/linux-scsi@vger.kernel.org/msg78262.html



> 
> So we are curious that why enforcing twice linkup is necessary here?
> Could you kindly help us clarify this?
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
