Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6327818E899
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 13:24:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IcHzqi/S8fLlo+H19UYcfOY9e12+98DP9btz4HdOnWo=; b=HPFQbKT/h8Jc4T
	bk2tvSuKCj8AUznv0it8WeJ/sGxCGxd3RwTCn0v52gmCkIukoOcnC5dEuKu/nQ6BmGcTMC76Qnb2a
	CS6dxUkoVD9+nXvfdnE+rAT1Uxf9s1HvKvXBi/WF1pWVBEgX9ER2rIurV8oShcdonXpSWJ+Epbhba
	+zG8sxyE/oQH+iykAvOzHuGAGMNQIVsRFNwN87sudtLm1/uG3gVBguOGL0/m3Ekuo3FCGVWxm8Dvc
	Hn/5xvi1fvF4FVuhQyItOTZwglBlFfK0gBxwX5wjo8q2BVaLMjYagIMBHPpxhRs7qdifGy5e8eXvW
	8S2HO1/YiXClPYxorihw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFzeg-0003H4-TG; Sun, 22 Mar 2020 12:24:38 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFzeX-0003GY-UU
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 12:24:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584879869; x=1616415869;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qPeh+EomQ1jAeFmvikx3IVTpnFq0fDWiBoWvIjoi1kQ=;
 b=bnLF1eUMabjPLuIMhlOACXSvnXZAhqrtfHSsMAvabhLAYglbbsnDDrwd
 FraOd4om5oVBsJORVrmX6Lp/9E9ZCS0h9uqdPdQyvCbovOEcr+O4OZHkE
 NCjGVoHMmMLnMXebfAuegPCICty8/lv5jHBbdZ+JK0QMrvf5aJLKr5miY
 d27ZSC4+nVMX//OlDMqNQKb2IAinC35KJC+X0hl9Vsp9FGJq5ahvocMSK
 8vAhjkxrA8cr/iNiwCiH+RD/dLIFn6LUjZRtqVr6RNNL4ChCI3gYGeXtb
 Pa1IUJ85d/rynRdRyQpx2Czs+jiOFjgBA3YtiIa54n7ViHXSeyiise1cl Q==;
IronPort-SDR: eM4khrbsvnhqVr2ciue7z+fgmeo2hqgPnIuoTQOg5tmV14n9XLM8AKh5wbekwswiD2ZV/LYlqa
 6OwjF8htXJ8nbleamVm+7KTA5HZnaKyyXFCtQYKs2URZO31Me3wzyuVwMH6j6GzbqBJVDGgEm2
 91l/f5mYWcL8asIov6gRfPeieE9ss9fucL7YPimuV/7uV79b7RbhnRaLd+Djwjlpyj6aVeuyId
 sRWx+bO27LrWDjajnMVjWyHOgRLgkD1X6lQrFYt9AWzCWRmu4zdM0DqyxNH9rTkPOcaC8gp43B
 +6E=
X-IronPort-AV: E=Sophos;i="5.72,292,1580745600"; d="scan'208";a="241619276"
Received: from mail-dm6nam12lp2177.outbound.protection.outlook.com (HELO
 NAM12-DM6-obe.outbound.protection.outlook.com) ([104.47.59.177])
 by ob1.hgst.iphmx.com with ESMTP; 22 Mar 2020 20:24:19 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e0vxFLsBSZxipsRHOCWWGDFl/FIqfyzhH4LPgeZT8luiu3JvgxU0c1aWW+4KvLtgzpeuTpl22jE7R8Q77CpiYuP/Raw93DZUk2ABbb3otN6rZCm9Ur9mB0CUPiTj3scpOnPssTplpmybOTqzyJ0594W0tL6HZupQVbVeueEwYHW5kDpaVPcgOFHEM+JXgZXp0UVaqAvXIDUE77eRWyyhQ3nUr/7HX7uo6UiKTdbOlrCX33KJIA3foFRi59VWj5X2j1z170Xme2K9TjpMaLOIHZzAG2hEKK2Ux5AlLjzwHM5jLHjvGDB4OR45pOdpiIuDIJDPJldB7TACdRqAFrCNmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qPeh+EomQ1jAeFmvikx3IVTpnFq0fDWiBoWvIjoi1kQ=;
 b=gsXNvupGAvJMXWM92IxYQwX5q/GV/x7qidr6ckVEWifFGS2mspI/hl1hiB+H0dgKxrWFyvuYCJU85I2HyvYks8FsJN3QsVk4DBClChsb++0WyJksKYr4BLrJmeLlOtf1/qbGjZLB2ODo7d+NqnnOKVVENvxLSuRnncc7j+VKUggsag2ygvozeSG9p3tUolhtC8vrJblIEofk8W2vVdfVSvtM6l28lImHNAU7cXysu7oyuCw9jfeVvQrOCGFNdwDe6pr3DBapp0yPo4r5hfYZ+R+2+LVA/qbM3aIZt47PgXgbxQEo8k8bFOySP/GxUBiF1l5YUGta/p0jFW08AcpUXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qPeh+EomQ1jAeFmvikx3IVTpnFq0fDWiBoWvIjoi1kQ=;
 b=E7pusR7bVniz89qlOXGnXkagD2iytDmgjFxi7rVy+aPu3biwKq7Md4FeVRVm7G3uRIouNMv6gMz243XwhXqNCrbGw9JSJsFTj5+eA+fmecXNGV+dx9Cqhf5dTpMUubL0HQL4q20Og06DDLXTFpbmJj1hoHcfRWgSXlsPIh+oINE=
Received: from SN6PR04MB4640.namprd04.prod.outlook.com (2603:10b6:805:a4::19)
 by SN6PR04MB5214.namprd04.prod.outlook.com (2603:10b6:805:101::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.15; Sun, 22 Mar
 2020 12:24:17 +0000
Received: from SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b]) by SN6PR04MB4640.namprd04.prod.outlook.com
 ([fe80::3877:5e49:6cdd:c8b%5]) with mapi id 15.20.2835.021; Sun, 22 Mar 2020
 12:24:17 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Alim Akhtar <alim.akhtar@samsung.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>
Subject: RE: [PATCH v3 4/5] scsi: ufs-exynos: add UFS host support for Exynos
 SoCs
Thread-Topic: [PATCH v3 4/5] scsi: ufs-exynos: add UFS host support for Exynos
 SoCs
Thread-Index: AQHV/gAk1EIQPTlmQUi6WMBdNdzlKKhUeXGA
Date: Sun, 22 Mar 2020 12:24:17 +0000
Message-ID: <SN6PR04MB46404847C78F62BA2D5CD2A0FCF30@SN6PR04MB4640.namprd04.prod.outlook.com>
References: <20200319150031.11024-1-alim.akhtar@samsung.com>
 <CGME20200319150710epcas5p11411da0ec2d56b403b80a206ce38a92b@epcas5p1.samsung.com>
 <20200319150031.11024-5-alim.akhtar@samsung.com>
In-Reply-To: <20200319150031.11024-5-alim.akhtar@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [77.138.4.172]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bd868fd6-63ec-4e43-7b85-08d7ce5bf0ee
x-ms-traffictypediagnostic: SN6PR04MB5214:
x-microsoft-antispam-prvs: <SN6PR04MB5214B65934D2354D10D00BDAFCF30@SN6PR04MB5214.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:923;
x-forefront-prvs: 0350D7A55D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(6029001)(4636009)(136003)(366004)(39860400002)(346002)(376002)(396003)(199004)(5660300002)(8936002)(66946007)(81156014)(81166006)(33656002)(8676002)(110136005)(7416002)(54906003)(6506007)(55016002)(316002)(7696005)(4326008)(9686003)(86362001)(52536014)(186003)(76116006)(26005)(66476007)(64756008)(66446008)(66556008)(478600001)(2906002)(71200400001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB5214;
 H:SN6PR04MB4640.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DCJXqT73ZCjNVgV23xV+am8wZpq5i1q8enFnVnBni790WnfY4fZktuCDAYfosMim/9yoclEtXrx4gbKvk0BglivYwKmJTr8ooATwBvmABFBYwVrXO8j6XCmb6KgWogXBstArKsi9fAuyJXXmzLqMoxK01w5yO9rT50zPDp1EbGTk2TeBcq1+ynsXPCvd+KztcqVq+NhT/B90jKqWJipG2Pd9asL1EUCRjg1GvkSpPrNT+3JdiX1BfVCAti2CprCcmbOqiT2JvUtFZeSJmnd5nxrCGj9SIfXM5zWGKRgHhV/4TtU7I/sK2OwI0wsjRLF3Lptsl7i+mCouoKVe+RWXtHfPwAhyRNXlg6rsOGDDTj4oRIWGHJVNG1ticmR04BuCC4nbwDTafHmPHRyPbnuAMA5TSd/HJWBZeIXtCgO/4FrFRHsrFk1ONi3tVMk7x9Xd
x-ms-exchange-antispam-messagedata: oVyVTZALeJiRidMcqrxw30IF7E1tzLwVZ37szKvwGk27aBhJGmItqAoV+j9VkXz4mPI28nKZE2kbME9rKnlenw1Cg0eUeLE9BldVc5wOtkgbVRIbuDXPLA8qWmEaAVMmZ9SR5qCLdMCI3/Qf91cv9g==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd868fd6-63ec-4e43-7b85-08d7ce5bf0ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2020 12:24:17.4803 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ws2oOcwe5WjIyR0SCHNHJboW0dlHuW5IhXENb/zC8fBx61eZK4zP/VBjI6e9w17A7k8a9UQSJ7cwHMlizq6Ueg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB5214
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_052429_999005_07C8E66C 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "kwmad.kim@samsung.com" <kwmad.kim@samsung.com>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "stanley.chu@mediatek.com" <stanley.chu@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> +static int exynos7_ufs_pre_link(struct exynos_ufs *ufs)
> +{
> +       struct ufs_hba *hba = ufs->hba;
> +       u32 val = ufs->drv_data->uic_attr->pa_dbg_option_suite;
Can pa_dbg_option_suite be replaced by a macro?

> +       exynos_ufs_disable_ov_tm(hba);
> +
> +       ufshcd_dme_set(hba, UIC_ARG_MIB(PA_DBG_OPTION_SUITE_DYN),
> 0xf);
> +       ufshcd_dme_set(hba, UIC_ARG_MIB(PA_DBG_OPTION_SUITE_DYN),
> 0xf);
A typo? Set PA_DBG_OPTION_SUITE_DYN twice? 

> +#define PWR_MODE_STR_LEN       64
> +static int exynos_ufs_post_pwr_mode(struct ufs_hba *hba,
> +                               struct ufs_pa_layer_attr *pwr_max,
> +                               struct ufs_pa_layer_attr *pwr_req)
> +{
> +       struct exynos_ufs *ufs = ufshcd_get_variant(hba);
> +       struct phy *generic_phy = ufs->phy;
> +       struct uic_pwr_mode *pwr = &ufs->pwr_act;
> +       char pwr_str[PWR_MODE_STR_LEN] = "";
Un-needed complication IMO - all those snprintf that is. 

> +
> +static void exynos_ufs_fit_aggr_timeout(struct exynos_ufs *ufs)
> +{
> +       const u8 cntr_div = 40;
Can be replaced by a macro?

> +struct exynos_ufs_drv_data exynos_ufs_drvs = {
> +
> +       .compatible             = "samsung,exynos7-ufs",
> +       .uic_attr               = &exynos7_uic_attr,
> +       .quirks                 = UFSHCD_QUIRK_PRDT_BYTE_GRAN |
> +                                 UFSHCI_QUIRK_BROKEN_REQ_LIST_CLR |
> +                                 UFSHCI_QUIRK_BROKEN_HCE |
> +                                 UFSHCI_QUIRK_SKIP_RESET_INTR_AGGR,
> +       .opts                   = EXYNOS_UFS_OPT_HAS_APB_CLK_CTRL |
> +                                 EXYNOS_UFS_OPT_BROKEN_AUTO_CLK_CTRL |
> +                                 EXYNOS_UFS_OPT_BROKEN_RX_SEL_IDX,
In what way opts are different from quirks?


Thanks,
Avri
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
