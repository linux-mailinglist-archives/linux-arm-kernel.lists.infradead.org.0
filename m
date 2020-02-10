Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6908B1570C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 09:23:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RD60eNSOzeXxBCCJlA/jtNsLgcpBWzD+stUfbcl5+kI=; b=tbMwYXCxRvA0aw
	+fpwnjo9qCB94sehE3z49AkAs0pGu4QZZA9XvUv+mS/WJSgip0hg0M1AWd8cbp9dhAH/VB1AWVcJb
	C4pUWi5Vqcb7cIp3NkLPp5jZrPpW6xd6AIJ0vt+rbEhLeIA/leN2tfG1Wb7texcTGUA81uyKrP372
	777TdLfocE5feU7vRRehrTCfapEBAGNST6ympuuCMm/N+h6p9NwcEhSAIWr3GVuYMRh5ffafqT9LH
	dRNgx7t999+GeI4OMn1BtCf+s65U+XKR48lhE/7zvOq7SjgpQmLf2LkTIwhyRKmt06TYvR+x9uC8p
	foRRNJtM0znyG5ELyJXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j14M9-0004Iy-70; Mon, 10 Feb 2020 08:23:49 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j14M1-0004IR-4p; Mon, 10 Feb 2020 08:23:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1581323021; x=1612859021;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EXvtMu6dlI/vrO0GP5CJNcfEwCzoEzKVwOCswHAtT2k=;
 b=M1SLxa7iXU1ypGgMQTXRT08vukYjacpBk4KMXF+H85ucz3ovMe6S3YB6
 lWOf5cw+y83diej/oYbMVbaQ/pzw768s43CZCLhP8hZmVrV5TM/UqtSIO
 puMa9jJ049GifhIB0uSOXo0ETyFjP/A+mhH27FYZXKMI3cgEzCdIqDnsp
 /di5HqemXU6tVirrmZg2nlisWwkol9UuKU9Px0TPrGfQe3hog3cXeDZEs
 ItRPIwOKmwITtRfuNyAaf2PkHeS6bRvIjbHV94bki+S/kz+ioNV8drVXr
 Z99LQGWlVOkE0zdUG0YZBGJuY4YXooBt4oEDnuijaKgix6vED5h2HMoVj g==;
IronPort-SDR: OZJ2xn4/Op11f1ckd85zIhSywOqPpZDi3cyLxWbeAoTaJFRPBmdsuQnRicVyIwOt6qbGfeYDWv
 Q7Yw3JrxEsvLoW9xF2X5EcI0QoEkCSo58Bk8ZNib1mrJ+LGLposTwTwAgs5nvBve75xusCaG/t
 fX4fmSd74tgki0lBmRt2qRCySBq/JV7fqUr0Qmxz519Rx9Tj2tXz0G8GAz+kGbZW5B4LsH4tbi
 ph2P8Y/+NSnz9N4Qrx+rQDwWnGH6KKMrr4R2uLNv16u3UP6TZQ/XYuDpYEtl+18jh2OP8cqhlg
 uAM=
X-IronPort-AV: E=Sophos;i="5.70,424,1574092800"; d="scan'208";a="130032641"
Received: from mail-bn8nam11lp2177.outbound.protection.outlook.com (HELO
 NAM11-BN8-obe.outbound.protection.outlook.com) ([104.47.58.177])
 by ob1.hgst.iphmx.com with ESMTP; 10 Feb 2020 16:23:32 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UcWKXmCoXCB0c65TYR40Qm8A4284zHSK1bSdCNaP3FB7QY9gA9HKbJ8PMWl6iiyfuSUyKmOZAm6wOXXi+55y5uB2y8qKPQxg+QwAfF8LB1VPlKAI2ZwBHcKZZIMHX56vttgB/NWuqv0cay85vamS/LYltuZcG2JvsW0vpSQkILnsghd5eeAHKn+pX6oCPFhPGpLSzOnT0xVKrOQEIiRbE2qqcfllvpJMCHt3kKvoRPlsWRTeNj73PC3A13TfgEs279x/gzc+u3FgfCJgJ1iB+n2trABfbL1ka3I6XlJ+A7XAPK5cyUpcHvatkAoXPzdwR1FoLbAl9bO3MN9IrlyI6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YhqtHst0jSQsDn/vHN09/QTYQ/LPTFHoWFoSvYkxckI=;
 b=XT3RpCupFRIv5MFAj1WONHeaZz5oTouMJmPql7N7YMNSNuLpyO+36y1lZA+S4gDebIoKSLkjD4HneP8qSKGjp6ouwApVqEXNSmWnnzU03Dk48+PEYySeMtvAZxjL1d7yop/P7cDnkwZOvjyfkwL5zissqIsUVd5AF+eOUem1vDLrAPGsiKy7u17DD0TkzK0UyGpgkXuRNcTph24FHNqNJMrX7GEdhoEP7neJteiJeXaEqdR2T/TczfGTIT5DmynjYkJTVUAkNKyoMU+TdvJUx2T1fxmzTK5pM3NM6XgfP7hID57uQuNDbqadDUcUOA7CDCGUmscoXqeOSZbcwz9MWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YhqtHst0jSQsDn/vHN09/QTYQ/LPTFHoWFoSvYkxckI=;
 b=bsnHioeRzX6hfH8b6JOPm8/kJiAUE7boyeTB5hTRVh+CQKDjEpN35UWz6BxxsjfPbh3G8VLDsCeyA0uMYs9arzHax1ngbLjvkqQ3LVISyVm8FRo+gsHkewooqzDKWZjWvCgDxpe/29gPVDj5cgQ5zMG4AYetgE+gxLeM1EOhL7c=
Received: from MN2PR04MB6991.namprd04.prod.outlook.com (10.186.144.209) by
 MN2PR04MB5758.namprd04.prod.outlook.com (20.179.22.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.25; Mon, 10 Feb 2020 08:23:30 +0000
Received: from MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::3885:5fac:44af:5de7]) by MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::3885:5fac:44af:5de7%7]) with mapi id 15.20.2707.028; Mon, 10 Feb 2020
 08:23:29 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Can Guo <cang@codeaurora.org>
Subject: RE: [PATCH v7 5/8] scsi: ufs: Fix ufshcd_hold() caused scheduling
 while atomic
Thread-Topic: [PATCH v7 5/8] scsi: ufs: Fix ufshcd_hold() caused scheduling
 while atomic
Thread-Index: AQHV3Mg4iYpOiwL+2EGQ9TyFrLdqL6gN6BAQgAXBNgCAAAiUAIAAavQQ
Date: Mon, 10 Feb 2020 08:23:29 +0000
Message-ID: <MN2PR04MB699118580A00AF07917CDDE1FC190@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <1580978008-9327-1-git-send-email-cang@codeaurora.org>
 <1580978008-9327-6-git-send-email-cang@codeaurora.org>
 <MN2PR04MB6991346267CD619E823501F0FC1D0@MN2PR04MB6991.namprd04.prod.outlook.com>
 <2c485ce3fac4d92ab3776daecc1af493@codeaurora.org>
 <e15f1117e8808fdcc7c18e3ec3b7cf04@codeaurora.org>
In-Reply-To: <e15f1117e8808fdcc7c18e3ec3b7cf04@codeaurora.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d536e4f8-a10d-4289-dd0a-08d7ae028279
x-ms-traffictypediagnostic: MN2PR04MB5758:
x-microsoft-antispam-prvs: <MN2PR04MB575849F380F15451E06EB514FC190@MN2PR04MB5758.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03094A4065
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(366004)(396003)(136003)(346002)(376002)(199004)(189003)(5660300002)(76116006)(7696005)(66946007)(33656002)(52536014)(66476007)(26005)(71200400001)(8936002)(9686003)(2906002)(4326008)(55016002)(81166006)(8676002)(186003)(81156014)(64756008)(66446008)(66556008)(54906003)(316002)(6916009)(86362001)(7416002)(478600001)(6506007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB5758;
 H:MN2PR04MB6991.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rtH46uru7E1oo9k/XH8oRNVQ6XBKcRm1UOvpDDHVlnFiA2UK+H6fvdtep2a0ACDFP9NHwTHRYExhSPaeTj7wHznLqkAALg6rcvrDJu+j+ATTQ37X6DA+WnR8BYMwj6W4BRynTf41dDXzUnm4RFr1ZfVeohnmw6wHBVLjvJuwh8mKMPnKSkezp9waUrTxKmehe0sKf8h4mfvHI7zvPIvL9nj9/h86fFFBKWdJ/kPVQmDH4UXv+zJeFoNQUMu6vuZhVx3bwnDIB+eiMur9qvXfXcELP6IO2DGgECsoiU/AwteGuNvg4Ow/X/MjjrqF1gBT8Qyrp6lqWxRL6dOLttNCeGgM4yT12YJGpDveuTk6SxXmUwupvyUuM3gJwkg1JIvtVLiOKC9OFrpP6xDC4eDxHoHWImVt15IyFNsZwQQ5GeCmIlCGWBwFKNlKKdr8gljA
x-ms-exchange-antispam-messagedata: X6Rb5YosBZ4wXwTiPpd2h8JQiG4kjMFAGBH5QE1xNXrfxFtUf9UnCoxQUeIwwcvPrutegGGgsyAmusLNjQ0uPIT2QzkM53hFx+Yy2gVXzvuXgxvJHeo240I0tde2hzZuzaHjoI4g99kn/pHCmp1y1Q==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d536e4f8-a10d-4289-dd0a-08d7ae028279
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2020 08:23:29.5549 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4GDkVeAKx0YBERV/td8lAicy8oxgTje5tigKb0ErcA1ISnRMQ6w1GWCRg4LYZS4NRO+aqYNTbTDZsSEs48B2Yw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB5758
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_002341_249727_34419F3C 
X-CRM114-Status: GOOD (  20.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, Stanley Chu <stanley.chu@mediatek.com>,
 "rnayak@codeaurora.org" <rnayak@codeaurora.org>,
 "saravanak@google.com" <saravanak@google.com>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 Venkat Gopalakrishnan <venkatg@codeaurora.org>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "nguyenb@codeaurora.org" <nguyenb@codeaurora.org>,
 open list <linux-kernel@vger.kernel.org>, "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 "salyzyn@google.com" <salyzyn@google.com>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Tomas Winkler <tomas.winkler@intel.com>, Bean Huo <beanhuo@micron.com>,
 "kernel-team@android.com" <kernel-team@android.com>,
 Bart Van Assche <bvanassche@acm.org>,
 "hongwus@codeaurora.org" <hongwus@codeaurora.org>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> >> Fixes: f2a785ac2312 (scsi: ufshcd: Fix race between clk scaling and
> >> ungate work)
> >
> > Sorry, missed this one, if another version is needed, I will add this
> > line.
fair enough.

> >
> >>>
> >>> Signed-off-by: Can Guo <cang@codeaurora.org>
> >>> Reviewed-by: Hongwu Su <hongwus@codeaurora.org>
> >>> Reviewed-by: Asutosh Das <asutoshd@codeaurora.org>
> >>> Reviewed-by: Bean Huo <beanhuo@micron.com>
> >>> Reviewed-by: Stanley Chu <stanley.chu@mediatek.com>
> >>> ---
> >>>  drivers/scsi/ufs/ufshcd.c | 5 +++++
> >>>  1 file changed, 5 insertions(+)
> >>>
> >>> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> >>> index bbc2607..e8f7f9d 100644
> >>> --- a/drivers/scsi/ufs/ufshcd.c
> >>> +++ b/drivers/scsi/ufs/ufshcd.c
> >>> @@ -1518,6 +1518,11 @@ int ufshcd_hold(struct ufs_hba *hba, bool
> >>> async)
> >>>                  */
> >>>                 if (ufshcd_can_hibern8_during_gating(hba) &&
> >>>                     ufshcd_is_link_hibern8(hba)) {
> >>> +                       if (async) {
> >>> +                               rc = -EAGAIN;
> >>> +                               hba->clk_gating.active_reqs--;
> >>> +                               break;
> >>> +                       }
> >>>                         spin_unlock_irqrestore(hba->host->host_lock,
> >>> flags);
> >>>                         flush_work(&hba->clk_gating.ungate_work);
> >>>                         spin_lock_irqsave(hba->host->host_lock,
> >>> flags);
> >> Since now the above code is shared in all cases,
> >> Maybe find a more economical way to pack it?
> >>
> >> Thanks,
> >> Avri
> >>
> >>
> >
> > There are only 2 of this same code pieces in ufshcd_hold() and located
> > in different cases, meanwhile there can be fall through, I don't see
> > a good way to pack it, can you suggest if you have any ideas?
> >
> 
> Now, with this patch, there are 2 same code snippets located in CLKS_ON
> and REQ_CLKS_ON. If we somehow pack them, say bring in a inline func to
> pack them, we would have to tear it down later if we have to fix
> something for only one specific case by adding lines into the snippet.
> And actually this is the truth, we do have some fixes for CLKS_ON's case
> but not yet uploaded, so let's leave it as it is for now.
OK.

Thanks,
Avri

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
