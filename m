Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E249A1541DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 11:28:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q/HWKuDXCWfh1ind2hdYYKTpV7enEUcqbkO6vMqEL9E=; b=rEcB9VZSSmX7F/
	tGwgvwQTFgRTRfvDGNaGfSWbTH+QtDH/v+0B9yW/gBSIUXDNbyB4/IiJRmPrARnGvmprY1mupHmku
	qWbUGQ5n6dylvKEA78SYsR8a+IhwOra2kQpYO/yiTN4GYeiMQDgv+B39xMPiD1lZizdj6+mD6bHL1
	hss4kJ4rC3RaD/L9pLf41eRWEY/CDjwFJLPDxQJNIedjesBGLxmBkUNUPG5Q/bQx55KoLSjq1NXJ8
	M2aPiya/CQ6xN+wftb6BzjIhUFfcNt2O2erQocESJs2NDhXRvfBaWZ+XMHCvk77uJbrqvDI/S5PJ3
	Fszg6EcUtgT/aI7Wv+lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izeOg-0003Yv-5S; Thu, 06 Feb 2020 10:28:34 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izeOY-0003Y5-RO; Thu, 06 Feb 2020 10:28:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1580984907; x=1612520907;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LdIuBX3bmzBk9/z8s0qeMzcqULk+dvpbU83IlnfaRDU=;
 b=nVHz4k0dnsnG47Ecy5ZeuPxC7ChMc1eWY4dX26bU/Gjy1C6lLsrAYM3e
 lFBfrBx/3BF1pU3UnXZF8ERZtkEoGZYaEFsWR0OUXvdP40rphGO43ZmiE
 8uWikBPFY1Ye+D/WkqWrYSckGb03lNwLZgmx8+ZSfnuG5Gp2+P7VSdJ8K
 YS23ssXZIOBdWWrSCGolL120v/QJVC9WjrOp/D/t02IKrcr+SSDzM69+5
 lae7TpLleA+Fatc1OuNkkEsijwW1a+xAxC8/H3sKKhEnIBWVWSglxQeHk
 bO1XueRwPmK4OLgrYpwMNFIg8sPVX2mdTTaC6j7g5973+B/g3BbMGuI5O Q==;
IronPort-SDR: 1jQsCQ7TK29pfkz+IiaN+dQoS7phshHxiIFr2xGzcBibu/bJjBDTBhtfZKXik9rdzlexmYpUe6
 XBAgo4eqywVfHu68yas8dIt7K3/jUGvvYvWiRTl8sIeNDybEfMI3UdWRPIpEIrd9KC2ud/b5PR
 uTpqqPjG/6gUbtvoaVzVpcs1NrwwJHMuw3VUvpXdzHz5PgCq82cZOEAmPMj+MP0Kij5IKY9tRI
 xeuoee1+PQd5hrDHhyC3JBgfmf+o2i9ncEDmHiReWcOmL83CPqidAqLt+9NOPk4GYEiptXkolz
 AHc=
X-IronPort-AV: E=Sophos;i="5.70,409,1574092800"; d="scan'208";a="130698644"
Received: from mail-co1nam11lp2172.outbound.protection.outlook.com (HELO
 NAM11-CO1-obe.outbound.protection.outlook.com) ([104.47.56.172])
 by ob1.hgst.iphmx.com with ESMTP; 06 Feb 2020 18:28:18 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K/eXQgE5y6VE/2euBN6kdU2NR6lHJYWdVGIXT9JmTITl2nJI+ZvFA/C23TCH+WWifc7TczR/KpY1q7JI6YK8bkXliyFoGPOAvPswpD3C8FsxEbBP/mgRedY12PXxa4U+1N0MtOv9dowkTi84tNuIOo87eg5946crTuhlfD5E8W+papkh63dsna+69WssmeJl/QQVvHsMZ3rBO2jgy9Fcuwu/1Eo244hpmURVqQzD4KChBvtMInBcdIbdB8spQ38U5X3SA1ZRxjxQ1wQWIAyzr96LZFVAdP/gbBexWSmF6vwWxBxVTo2oL4UdvPcHWdg+jxjHlrsI06iSHCui6yjfaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HKzvHv811XCtxlWXoPud/utuXzyrON4LErgIUU2/2O8=;
 b=aDaeLi0arV6cTYA+ZOSNX0SFQQIIvOR44nkf8aJWnXT9YOnbp6sFq/cjBHmHJtCgidI4xoTPlDEyAcR/Bd00/mb4h9Nxul67gSBBvvev/9z6efy5gObZiKdrgyzPFIHWLNKT79hSAqtblc40zvtWmXLY4gPu27Y5cuuDpE1B92pr9dqs4CywOPToxiPuX6EZ3eo+WIYP/OLXRy/NjKKkUm4PIWM2ZehjN9bltIlkgGfCC9x5G/lZ7C4+vQj+0TsB5ei2ZOB9pWYBrfrPeBKpyVmDAksmJTCQ7EacpArHcb+3e9g93ScE53Bkf+LUk1P8hxi2bilVfgUe2Bz5KqzXGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HKzvHv811XCtxlWXoPud/utuXzyrON4LErgIUU2/2O8=;
 b=SVX6gkDDPuTMo4BV5v3qJRGen64nG7FiTRtpeDrcLjb0QGvvF/yIl7SQukJaVMQTBKgYft4f/qe+FNZLjRb7pb3j5ZQvTPB8aU4lBuwJWwOhuwq4L+cCho9zkaAjpnRwBAVtxLsSX2R0ktNBibAZM/uAejheLwZKYDvYDL5/7TQ=
Received: from MN2PR04MB6991.namprd04.prod.outlook.com (10.186.144.209) by
 MN2PR04MB6254.namprd04.prod.outlook.com (20.178.246.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.23; Thu, 6 Feb 2020 10:28:16 +0000
Received: from MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::3885:5fac:44af:5de7]) by MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::3885:5fac:44af:5de7%7]) with mapi id 15.20.2707.020; Thu, 6 Feb 2020
 10:28:16 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Can Guo <cang@codeaurora.org>, "asutoshd@codeaurora.org"
 <asutoshd@codeaurora.org>, "nguyenb@codeaurora.org" <nguyenb@codeaurora.org>, 
 "hongwus@codeaurora.org" <hongwus@codeaurora.org>, "rnayak@codeaurora.org"
 <rnayak@codeaurora.org>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "kernel-team@android.com"
 <kernel-team@android.com>, "saravanak@google.com" <saravanak@google.com>,
 "salyzyn@google.com" <salyzyn@google.com>
Subject: RE: [PATCH v7 5/8] scsi: ufs: Fix ufshcd_hold() caused scheduling
 while atomic
Thread-Topic: [PATCH v7 5/8] scsi: ufs: Fix ufshcd_hold() caused scheduling
 while atomic
Thread-Index: AQHV3Mg4iYpOiwL+2EGQ9TyFrLdqL6gN6BAQ
Date: Thu, 6 Feb 2020 10:28:16 +0000
Message-ID: <MN2PR04MB6991346267CD619E823501F0FC1D0@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <1580978008-9327-1-git-send-email-cang@codeaurora.org>
 <1580978008-9327-6-git-send-email-cang@codeaurora.org>
In-Reply-To: <1580978008-9327-6-git-send-email-cang@codeaurora.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 05ffbbcd-162f-447a-9b48-08d7aaef4755
x-ms-traffictypediagnostic: MN2PR04MB6254:
x-microsoft-antispam-prvs: <MN2PR04MB6254576AFD5B21D7D59937C3FC1D0@MN2PR04MB6254.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0305463112
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(376002)(346002)(39860400002)(396003)(136003)(189003)(199004)(8676002)(9686003)(86362001)(7696005)(6506007)(54906003)(110136005)(7416002)(316002)(33656002)(71200400001)(8936002)(81166006)(81156014)(4326008)(52536014)(66446008)(186003)(5660300002)(64756008)(55016002)(2906002)(26005)(76116006)(66556008)(66476007)(66946007)(478600001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6254;
 H:MN2PR04MB6991.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HQL+DtLawSWU+Ji9b+Huwf9q2PxFN1YSC15Lir0JRQd+orxTw5jgiEBnIPc6GRjkxHnhKt6DKHyrb1cy2IDTqygASiZ/lD2k0v/6Ob7yfESBNb1DVW9sdgGP5mYYuRduUQTXNEsq2syADNuyLMRa5dUz+dmxb4fKmTOFhZp6JeounEuF7ndKfno8IV/Hk2m1v4vbIr0Qe5KSRhkgjCISVkWi1mqDWTHH6ESbQy/w3A1GFJZgDdBxnSFY4zlFvAW2dv0UTRkBG0ZTxP3vJGSyJ8lZrdpCi7CXaPbDKbHjzrxqD4CowD7f3aPJH1UkGmb7+nh4ZVt5myoOjY8OsRV5CNru6AwbyoEqGhhXyU3SUMO90Sh3Nj0n9ObGyoVesQkuzvCIlQBY0mN7fuZcvYR6iAK3rPTCSl7HuZ1O0rrY+xe9grurnf0AWnEA3H1kWek2
x-ms-exchange-antispam-messagedata: pRsWDFCheIllfx10czG0RazCBMIUaHJBXwlwSUyp+49wkKIm8pbqQDb2MSiw7mjLXx1341RT3Wkf84fLKXsjWkkWzSPDQB7l51W+OA46deFA/kjuQZBuASkCEmTu097nVwJf3zaD2PQZFV0y5ZllSQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05ffbbcd-162f-447a-9b48-08d7aaef4755
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2020 10:28:16.5389 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hj6DNQf7K2tErGHDyMV+esWRg3zBxw17QJlpbJ1UGJkubYkJbsAm0n1d7zlNRG7y+ar3SfYuhjXW8Y9ZWcKVhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6254
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_022826_933956_EDE20D20 
X-CRM114-Status: GOOD (  19.62  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Bart Van Assche <bvanassche@acm.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Venkat Gopalakrishnan <venkatg@codeaurora.org>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 open list <linux-kernel@vger.kernel.org>, "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Tomas Winkler <tomas.winkler@intel.com>,
 Stanley Chu <stanley.chu@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, Bean Huo <beanhuo@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

> 
> The async version of ufshcd_hold(async == true), which is only called
> in queuecommand path as for now, is expected to work in atomic context,
> thus it should not sleep or schedule out. When it runs into the condition
> that clocks are ON but link is still in hibern8 state, it should bail out
> without flushing the clock ungate work.

Fixes: f2a785ac2312 (scsi: ufshcd: Fix race between clk scaling and ungate work)
> 
> Signed-off-by: Can Guo <cang@codeaurora.org>
> Reviewed-by: Hongwu Su <hongwus@codeaurora.org>
> Reviewed-by: Asutosh Das <asutoshd@codeaurora.org>
> Reviewed-by: Bean Huo <beanhuo@micron.com>
> Reviewed-by: Stanley Chu <stanley.chu@mediatek.com>
> ---
>  drivers/scsi/ufs/ufshcd.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> index bbc2607..e8f7f9d 100644
> --- a/drivers/scsi/ufs/ufshcd.c
> +++ b/drivers/scsi/ufs/ufshcd.c
> @@ -1518,6 +1518,11 @@ int ufshcd_hold(struct ufs_hba *hba, bool async)
>                  */
>                 if (ufshcd_can_hibern8_during_gating(hba) &&
>                     ufshcd_is_link_hibern8(hba)) {
> +                       if (async) {
> +                               rc = -EAGAIN;
> +                               hba->clk_gating.active_reqs--;
> +                               break;
> +                       }
>                         spin_unlock_irqrestore(hba->host->host_lock, flags);
>                         flush_work(&hba->clk_gating.ungate_work);
>                         spin_lock_irqsave(hba->host->host_lock, flags);
Since now the above code is shared in all cases,
Maybe find a more economical way to pack it?

Thanks,
Avri


> --
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora
> Forum,
> a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
