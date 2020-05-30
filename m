Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D9091E939C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 22:38:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tb8Ke+fnf8i8WrCovoX7KXGz8CKAzBU5xe4RbC+5S6Q=; b=k6v+nvKsbUtgxS
	VXs+sTccKqprYZEVIxQ2ZgcldOnXBcYFZFfzEsao8CW2i30Pw4EysWGP5G1lFn4HSBapCKm4jBSdw
	wEz1JAls0BaAhB5lNQRf/Vmz2kPblRShArJqgPaufooRp28wfT5Ae+Rifi46PnFE4oqSsv4wduFod
	1wUjB2H9b5T3rF5R+OVlh/rzJgVH7NnxZ1fjRyDT3ubm+mCmjzP2AUZeIz4JMmq0I56JpxpZup6Je
	b6v+ADb0thFSFjV6MSA/hoAToNqnrvInV7HnYmceVGyaUtBaUMai+3AW/cYxzFvxtpzaVvqBY1aoc
	Ud4ZxBFyQNAAaExTHL3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf8FH-0005hs-2n; Sat, 30 May 2020 20:38:19 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf8F1-0005gY-5h; Sat, 30 May 2020 20:38:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1590871104; x=1622407104;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8BiLFCBkL+XnOf1HHoA9Rc/8Hd0LDHzcqPI16UkgvG4=;
 b=NILCm+8u4jM5bnozUrDWZaANQX/aCH+7riBRp19OyVenwV0Zl7bKikt3
 5rxAHYs7Uvwo1KbjcIkdFUX6jF2Y8B/FQ17ktweliJq9scytpILEz7i+m
 KgylNykV+7gL0q9I1Mayg8d3kj8vw4EMTj5D7+cIgaKCJwPKCd1uU2eL5
 +fEM+0JWFiGfmYx052h+GnJq10pfuVnJtrQrW0ru8F6cN/kE7i0BPYlnJ
 iLRLlM+nL3fA8idOAw/pp67gF9mIAERgSBhlIblY4NaAdgp6mwtTeecSJ
 LJkxliy054v2gyJMI8EYQ0bGmIx03D0z1iKa0Up5tSp6SydUvTwfs8V6L A==;
IronPort-SDR: +6ysK6XMZGmn5u0X0ySNtEFyM7psZ0dkANh066O3sE32GNpCGDCT0NuhDg55ivHebT/euf/Kh5
 Woy8YGPP8w6PNIeXkugAMEG8ikK1m0+kHzUFqieq32FxtRmYkh/6uIplX6+TxrMV1Ovtun0Mgn
 FzGzQkCIAAqaumEaZs1NP1CXMruNtPiAO6BoXdz7nshnx7AbZdA2yK144hFtja+fTN8f5kJJ7Q
 ODYHlfy0S1NNOEzkAKwJtEIszTtId0UC6tP8M0Ixh2iuDrcY1PP/Cf2DBacYexaDLn7v8ZKfZX
 uV4=
X-IronPort-AV: E=Sophos;i="5.73,454,1583164800"; d="scan'208";a="241707897"
Received: from mail-mw2nam10lp2103.outbound.protection.outlook.com (HELO
 NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.103])
 by ob1.hgst.iphmx.com with ESMTP; 31 May 2020 04:38:21 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X82G0BBG6Q5bPVWSBnU0z6TxOgx6Z54dNlIqvLLvcszm6WfQPAcqGF3mhaOdkHZS7lUXeeC0EJHIDhm4DE9zxukGRu/fs8NLVdqefvp8dtLIaaC3hId75M3syVymC1BrKAy9zHRRyz0gGt9kWHF+sXGCYIGnvTIBzq2INH2zTHzVIGUUJb8AftCXKumzVy5ddGzHS88C0LeORky2UysOi6yhtOKN/F3RijUHNbowgrLwXEGNGXantatD/kUHsl1QI8HkfYvYWeVV/xxef5XqR5GKs0/EspuVHKD+fbZzZhXtKyY0VFjdy5aESgWir5T4F+ccr5PgOoKxfi8bul5vVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wpfgxi24WL33phAyME1DCOrxSIyIK4rqeaSdrztVxaU=;
 b=Qh8Ok93NLYpU2CmbeiQdwXAOLylBBCID6fEuHljR1JjCJPlQc80bZc1qFMnXeqj7i3aTsbZeHdfiZ7LfJSbSzApxn2/eMLYwNyJWxeqkTQAQ7RqPc54hEEtFzGexKcdhByHsj/tpybAjriYoBO9ts91AyZi3WxGq3WKZTw4hYr3oxo5N7MdG6NhyM1HgXdbWXrVlb6WXB19EXMcf+GgBme2itKgde0KWvEUOwRPAQWK2BytlhS5HayZOBPZnJ2dZHbXBnn7MJQKyBmgKrZN3K0e5Cl4lU0AjQ9LUnTsL2mGU4aFhbFbZkhdCj5EQRwlrHirdCsGsSPMCX31QlzB5oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wpfgxi24WL33phAyME1DCOrxSIyIK4rqeaSdrztVxaU=;
 b=BnEyiUqWdDQjJ9pZey90rVVRCjV9AbKcSpgKfwX3jMWCD99fjK9dxLlrPfDe8cQRWz1s8P1zT/bCjJKoJzx66uRky5jD9dM81cwZUgwK0VK3p+hNlwiYTyiHPcJcTZ+wEKoJYAvAgv5mUrPPlbjUEudg0MmBaAMunXXnBDalBwQ=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB5070.namprd04.prod.outlook.com (2603:10b6:805:9e::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21; Sat, 30 May
 2020 20:37:57 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::9cbe:995f:c25f:d288%6]) with mapi id 15.20.3045.022; Sat, 30 May 2020
 20:37:57 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "alim.akhtar@samsung.com"
 <alim.akhtar@samsung.com>, "jejb@linux.ibm.com" <jejb@linux.ibm.com>
Subject: RE: [PATCH v1 1/2] scsi: ufs: Support WriteBooster on Samsung UFS
 devices
Thread-Topic: [PATCH v1 1/2] scsi: ufs: Support WriteBooster on Samsung UFS
 devices
Thread-Index: AQHWNpT3Vi/TzAb5lEy8ZsLwGGZsRajBERRQ
Date: Sat, 30 May 2020 20:37:57 +0000
Message-ID: <SN6PR04MB46400873245235EA56838A19FC8C0@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200530151337.6182-1-stanley.chu@mediatek.com>
 <20200530151337.6182-2-stanley.chu@mediatek.com>
In-Reply-To: <20200530151337.6182-2-stanley.chu@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mediatek.com; dkim=none (message not signed)
 header.d=none;mediatek.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [77.138.4.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4c2e3a2c-f906-40c1-a775-08d804d9563f
x-ms-traffictypediagnostic: SN6PR04MB5070:
x-microsoft-antispam-prvs: <SN6PR04MB5070F195D45B3FCCEF891F28FC8C0@SN6PR04MB5070.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:849;
x-forefront-prvs: 041963B986
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: W7GcxjGCtRJBa1XIp/vDvJTIP+J3RfdskcI60PJkzFDakJ2Uej0X8fplgIWvxmJCx23DGYBe+GQ4t2XG67Co3w11jo14j97XwFvIV8R3DwHBKe4kKs9fBD6PKovA0gSC3jOQvGAVadfRi8nz1MWkDVKMS74WC8m9a+ARPOHk5LC9sFMJaP5U4CCTFMFliWgwdFxjkdvM8mBrTTFDjk5kqxpmCmhRZkW0LFOGc3fLtgRvLTyX4Bnk2rzEzZ4lOJtwysNubcbETyLFig0U+X8cNRyjLQvJJOLaHG8vTs0MiXs4HXXEVsFU1CkfIETAkkxyytboXinxjFLhAzy007umDQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR04MB4640.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(396003)(376002)(136003)(366004)(39860400002)(6506007)(64756008)(4326008)(2906002)(110136005)(8936002)(86362001)(316002)(52536014)(66556008)(7696005)(71200400001)(54906003)(66446008)(8676002)(83380400001)(9686003)(478600001)(55016002)(33656002)(5660300002)(66946007)(76116006)(66476007)(7416002)(26005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: +ddPBFk3kPg+OjxiZnZ+01tLHj5p9X4r+b0rUV+Pir0STD1M482lN/5uOvVjC7m0mzmnvi4qt8ULYxDgYp4IWsMIu1Sp9Vo889QNYVJTA6mINCGHFPOWwjrvKuM3a2rT0CNqzxHpYltnHlpz2BtdlcclcLCc5vGO6syc551h33Vo9CqofRZi23nA4Va+bxPD8dpPdm7QB2FuCJtgRq34Oels9LUzFiucaXk87cKmUDDSM0PzyHy03Zn2JbQie2uxW9tudQr5JD+Wh1zSpLxOxhG/rb4sOKXiK5QWSaOYDeC1ZM64UeHGjmVEjWrZjGw7SX8+yxJsgejYiqwcLgs8dCwE/Hjzg6Dtg0mdbMR+ZPuneqdHXskdP0I/kgxwg0cIf3sI6l7pPk08lACkRNlx7EdoU+HmNx5fBeXusLWOFM0G+zlMYG6s0D0CrjXnYEM3ap5HnIwu/f26/gmp08RovWNxDRwZzfrmzHaydxXJkxQ=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c2e3a2c-f906-40c1-a775-08d804d9563f
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2020 20:37:57.3202 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Tz0fHFYpBGNYRh5tnggMOuaEq3CWXtGqLBtAjqBw6PC2Zu6d0sSyGMpYS9Nzh1umB9L8A0ZtMdp8dpDjZhPLGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_133803_312602_464A0E79 
X-CRM114-Status: GOOD (  17.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "bvanassche@acm.org" <bvanassche@acm.org>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "cc.chou@mediatek.com" <cc.chou@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "beanhuo@micron.com" <beanhuo@micron.com>,
 "chaotian.jing@mediatek.com" <chaotian.jing@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 
> @@ -2801,11 +2801,17 @@ int ufshcd_query_flag(struct ufs_hba *hba, enum
> query_opcode opcode,
>  {
>         struct ufs_query_req *request = NULL;
>         struct ufs_query_res *response = NULL;
> -       int err, selector = 0;
> +       int err;
>         int timeout = QUERY_REQ_TIMEOUT;
> +       u8 selector = 0;
> 
>         BUG_ON(!hba);
> 
> +       if (hba->dev_quirks & UFS_DEVICE_QUIRK_WB_SPECIAL_SELECTOR) {
> +               if (ufshcd_is_wb_flags(idn))
> +                       selector = 1;
> +       }
> +
Why not make the caller set the applicable selector,
Instead of checking this for every flag?

>         ufshcd_hold(hba, false);
>         mutex_lock(&hba->dev_cmd.lock);
>         ufshcd_init_query(hba, &request, &response, opcode, idn, index,
> @@ -2882,6 +2888,11 @@ int ufshcd_query_attr(struct ufs_hba *hba, enum
> query_opcode opcode,
>                 goto out;
>         }
> 
> +       if (hba->dev_quirks & UFS_DEVICE_QUIRK_WB_SPECIAL_SELECTOR) {
> +               if (ufshcd_is_wb_attrs(idn))
> +                       selector = 1;
> +       }
> +
Same here

>         mutex_lock(&hba->dev_cmd.lock);
>         ufshcd_init_query(hba, &request, &response, opcode, idn, index,
>                         selector);
> @@ -3042,6 +3053,11 @@ int ufshcd_query_descriptor_retry(struct ufs_hba
> *hba,
>         int err;
>         int retries;
> 
> +       if (hba->dev_quirks & UFS_DEVICE_QUIRK_WB_SPECIAL_SELECTOR) {
> +               if (ufshcd_is_wb_desc(idn, index))
> +                       selector = 1;
> +       }
> +
And here.
But this can't be true - 
Are you setting the selector = 1 for reading any field for those descriptors?
Shouldn't it be for the wb specific fields?
 

>         for (retries = QUERY_REQ_RETRIES; retries > 0; retries--) {
>                 err = __ufshcd_query_descriptor(hba, opcode, idn, index,
>                                                 selector, desc_buf, buf_len);
> @@ -6907,8 +6923,10 @@ static int ufs_get_device_desc(struct ufs_hba *hba)
>         size_t buff_len;
>         u8 model_index;
>         u8 *desc_buf;
> +       u8 retry_cnt = 0;
>         struct ufs_dev_info *dev_info = &hba->dev_info;
> 
> +retry:
>         buff_len = max_t(size_t, hba->desc_size.dev_desc,
>                          QUERY_DESC_MAX_SIZE + 1);
>         desc_buf = kmalloc(buff_len, GFP_KERNEL);
> @@ -6948,6 +6966,29 @@ static int ufs_get_device_desc(struct ufs_hba *hba)
> 
>         ufs_fixup_device_setup(hba);
> 
> +       if (!retry_cnt && (hba->dev_quirks &
> +               UFS_DEVICE_QUIRK_WB_SPECIAL_SELECTOR)) {
If you only want to enter this clause once - you should use something other than retry_cnt,
Which the reader expects to performs retries....

Also, this is becoming too wired - 
From your commit log I get that for specific Samsung devices,
You need to query wb descriptor fields/attributes/flags using selectore = 1.
But what it has to do with descriptor sizes?

> +               /*
> +                * Update WriteBooster related descriptor length with specific
> +                * seletor used.
> +                */
> +               ufshcd_read_desc_length(hba, QUERY_DESC_IDN_DEVICE, 0,
> +                                       &hba->desc_size.dev_desc);
> +               ufshcd_read_desc_length(hba, QUERY_DESC_IDN_CONFIGURATION,
> 0,
> +                                       &hba->desc_size.conf_desc);
> +               ufshcd_read_desc_length(hba, QUERY_DESC_IDN_UNIT, 0,
> +                                       &hba->desc_size.unit_desc);
> +               ufshcd_read_desc_length(hba, QUERY_DESC_IDN_GEOMETRY, 0,
> +                                       &hba->desc_size.geom_desc);
> +               /*
> +                * Read device descriptor again with specific selector used to
> +                * get WriteBooster related fileds.
> +                */
> +               kfree(desc_buf);
> +               retry_cnt++;
> +               goto retry;
> +       }
> +
>         /*
>          * Probe WB only for UFS-3.1 devices or UFS devices with quirk
>          * UFS_DEVICE_QUIRK_SUPPORT_EXTENDED_FEATURES enabled
> diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> index bf97d616e597..d850c47e8ae0 100644
> --- a/drivers/scsi/ufs/ufshcd.h
> +++ b/drivers/scsi/ufs/ufshcd.h
> @@ -876,6 +876,26 @@ static inline u8 ufshcd_wb_get_query_index(struct
> ufs_hba *hba)
>         return 0;
>  }
> 
> +static inline bool ufshcd_is_wb_attrs(enum attr_idn idn)
> +{
> +       return ((idn >= QUERY_ATTR_IDN_WB_FLUSH_STATUS) &&
> +               (idn <= QUERY_ATTR_IDN_CURR_WB_BUFF_SIZE));
> +}
> +
> +static inline bool ufshcd_is_wb_desc(enum desc_idn idn, u8 index)
> +{
> +       return (idn <= QUERY_DESC_IDN_CONFIGURATION) ||
> +               ((idn == QUERY_DESC_IDN_UNIT) &&
> +               (index != UFS_UPIU_RPMB_QUERY_INDEX)) ||
> +               (idn == QUERY_DESC_IDN_GEOMETRY);
> +}
> +
> +static inline bool ufshcd_is_wb_flags(enum flag_idn idn)
> +{
> +       return ((idn >= QUERY_FLAG_IDN_WB_EN) &&
> +               (idn <= QUERY_FLAG_IDN_WB_BUFF_FLUSH_DURING_HIBERN8));
> +}
> +
>  extern int ufshcd_runtime_suspend(struct ufs_hba *hba);
>  extern int ufshcd_runtime_resume(struct ufs_hba *hba);
>  extern int ufshcd_runtime_idle(struct ufs_hba *hba);
> --
> 2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
