Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1E2192E3C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 17:31:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZdkMGnpRDMj9ta94VVxwbVfO6a97eXf+vyDpJF9b7xM=; b=oPFAWN5x1Tg1WP
	M7nKrPwBttklWe4huh85FzQYj42a630QCZ4UoHuI8VFs6FUiY151/Mp/hgJykGy1XsxyQXZL6yUj5
	OVqaznVeM9rYmQtS8WhGAWZRDHWFsGgJBRjCI1PejO9QTSlGcmZ1vD1FLGFYzGIZN6jMmsab2jJ/Q
	HoJ0rNtiKAKNpnWeq4L/I2paDHpGzf28XISJxslvB5yd2x4VA5wZDhK1h1U4tNDAWLEEWFU8klnu2
	alQLm2ZMXNSJ4CYjWTqQyKKf+Q8O1tZmKnTKxxnstW35pWbhBHsVzEN2UbW67539wKYTYx+ycgS0J
	sBy6olTRZ8mQVK2BlnHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH8vl-0008Kg-GU; Wed, 25 Mar 2020 16:31:01 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH8vZ-0008JR-OZ
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 16:30:51 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200325163043epoutp027810685b1e419958fe4d70a09a91eff9~-mQWgWBc31704517045epoutp02G
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 16:30:43 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200325163043epoutp027810685b1e419958fe4d70a09a91eff9~-mQWgWBc31704517045epoutp02G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1585153843;
 bh=Jjid3OCbf405YB87bLFZtPVycg3uhmaHWUs/g5VJJ6o=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=dtJhSVngi3l9NjEsi0h0YOJ4cIW28aUohWkSm7yKxPXdJ8Q7b7x86W9bK8q7t3kBy
 E24sdUyngiWb8+/tsMSmTgZWRRuasboiJDSZr3Wi53bT0nPdbBbONOLECv03N3MFRg
 lqiDbYTYUHZPO2+dw+LisyhqoSbjAHtN7zevo7Bg=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTP id
 20200325163042epcas5p490063c18b7538d1328925e36189482ea~-mQWHQaXG0752507525epcas5p4C;
 Wed, 25 Mar 2020 16:30:42 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 C8.C7.04778.2378B7E5; Thu, 26 Mar 2020 01:30:42 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200325163042epcas5p370e8e189e6a49f1f50cf5a68b52ab99e~-mQVZsL361415414154epcas5p3t;
 Wed, 25 Mar 2020 16:30:42 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200325163042epsmtrp1c75f9412873cb3f7e4cfa973ceae2ae1~-mQVYxR4d2393323933epsmtrp19;
 Wed, 25 Mar 2020 16:30:42 +0000 (GMT)
X-AuditID: b6c32a4a-33bff700000012aa-b1-5e7b87328ab7
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 9D.FB.04024.1378B7E5; Thu, 26 Mar 2020 01:30:41 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200325163038epsmtip228d90d395f59346c5ee1c4bc0a1d66fa~-mQSd_lDM3252832528epsmtip2c;
 Wed, 25 Mar 2020 16:30:38 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Avri Altman'" <Avri.Altman@wdc.com>, <robh+dt@kernel.org>,
 <devicetree@vger.kernel.org>, <linux-scsi@vger.kernel.org>
In-Reply-To: <SN6PR04MB46404847C78F62BA2D5CD2A0FCF30@SN6PR04MB4640.namprd04.prod.outlook.com>
Subject: RE: [PATCH v3 4/5] scsi: ufs-exynos: add UFS host support for
 Exynos SoCs
Date: Wed, 25 Mar 2020 22:00:36 +0530
Message-ID: <000001d602c2$b9a15f80$2ce41e80$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQG8Fm24XBW91IxNCpc3FyucYAw+uQGZ6IyRAhOVxEQCiTgOcqhboVgA
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrIKsWRmVeSWpSXmKPExsWy7bCmhq5Re3Wcwer5hhYvf15ls/i0fhmr
 xfwj51gtzp/fwG5xc8tRFotNj6+xWlzeNYfNYsb5fUwW3dd3sFksP/6PyaJ17xF2i6VbbzI6
 8Hhc7utl8ti0qpPNY/OSeo+Wk/tZPD4+vcXi0bdlFaPH501yHu0HupkCOKK4bFJSczLLUov0
 7RK4MlZOEy54JFExce9hxgbGOUJdjJwcEgImEj/nHGPqYuTiEBLYzSjx5e99KOcTo8Th5gus
 EM43RokDV2+wwLQ0dV1kArGFBPYyShxfbwZR9IZR4s6xm2BFbAK6EjsWt7GB2CICtRKLJ3eA
 TWIGGftt72SwIk6BWIkZB2+wg9jCAiESbbd/gDWwCKhKvPnaxwpi8wpYSny52cYOYQtKnJz5
 BKyXWUBbYtnC18wQFylI/Hy6jBVimZvE7T3H2SBqxCWO/uyBqlnGLrGkWwzCdpH49+QSK4Qt
 LPHq+BZ2CFtK4mU/yC4OIDtbomeXMUS4RmLpvGNQz9tLHLgyhwWkhFlAU2L9Ln2ITXwSvb+f
 MEF08kp0tEFDV1Wi+d1VqE5piYnd3VBLPSR+LjzDOIFRcRaSv2Yh+WsWkvtnISxbwMiyilEy
 taA4Nz212LTAKC+1XK84Mbe4NC9dLzk/dxMjOKFpee1gXHbO5xCjAAejEg/vBsvqOCHWxLLi
 ytxDjBIczEoivJtTK+KEeFMSK6tSi/Lji0pzUosPMUpzsCiJ805ivRojJJCeWJKanZpakFoE
 k2Xi4JRqYDxyYO5zfxmhS5t/Pd9ydrNBX1KzxvTPGxe9dE+vWxDmliO0pUrr7ft1EXY7TfVX
 eXi3Zx99leSyan71BceTj6ffVju/Iv/dZde6Js+XR2VCLxj+njSNd8p30yVlTBY2tW+X1l9y
 frRoZX5CS7H1vdzwE+WLSzeFsGZ7XWCaGcr9cH1SY9umNxOVWIozEg21mIuKEwHN3JwvZAMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrJIsWRmVeSWpSXmKPExsWy7bCSvK5he3WcwbGHlhYvf15ls/i0fhmr
 xfwj51gtzp/fwG5xc8tRFotNj6+xWlzeNYfNYsb5fUwW3dd3sFksP/6PyaJ17xF2i6VbbzI6
 8Hhc7utl8ti0qpPNY/OSeo+Wk/tZPD4+vcXi0bdlFaPH501yHu0HupkCOKK4bFJSczLLUov0
 7RK4Mqae/8JUsFyioqnhGEsD433BLkZODgkBE4mmrotMXYxcHEICuxklvp96yAyRkJa4vnEC
 O4QtLLHy33N2iKJXjBK/ri8DS7AJ6ErsWNzGBpIQEWhklFj8bwkjiMMs8ItR4snah0wgVUIC
 E5gkJkwXBbE5BWIlZhy8AdYtLBAksWTxSlYQm0VAVeLN1z4wm1fAUuLLzTZ2CFtQ4uTMJywg
 NrOAtsTTm0/h7GULX0OdqiDx8+kysF4RATeJ23uOs0HUiEsc/dnDPIFReBaSUbOQjJqFZNQs
 JC0LGFlWMUqmFhTnpucWGxYY5qWW6xUn5haX5qXrJefnbmIER6iW5g7Gy0viDzEKcDAq8fBu
 sKyOE2JNLCuuzD3EKMHBrCTCuzm1Ik6INyWxsiq1KD++qDQntfgQozQHi5I479O8Y5FCAumJ
 JanZqakFqUUwWSYOTqkGRu2HqxlvNE7YtUX5mazw7Pxr2ip+Wgnb+k4kJu3/vj+4/GFcKce9
 Cqu/3t/8/+omtwSdaWs58/VR6F/N9a6eex8WXcoK0vn5f93fhZrF5zqkmn13iu44n6Gj2s+e
 P0ky5X9o5wGviKV3Fqh+YeKLWp7x/WH4gz8frgrmO22J93jvv/yngI/JSSWW4oxEQy3mouJE
 AIp7gdjMAgAA
X-CMS-MailID: 20200325163042epcas5p370e8e189e6a49f1f50cf5a68b52ab99e
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200319150710epcas5p11411da0ec2d56b403b80a206ce38a92b
References: <20200319150031.11024-1-alim.akhtar@samsung.com>
 <CGME20200319150710epcas5p11411da0ec2d56b403b80a206ce38a92b@epcas5p1.samsung.com>
 <20200319150031.11024-5-alim.akhtar@samsung.com>
 <SN6PR04MB46404847C78F62BA2D5CD2A0FCF30@SN6PR04MB4640.namprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_093050_161502_F2F3111D 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc@vger.kernel.org, martin.petersen@oracle.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 cang@codeaurora.org, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Avri
Thanks for review, see my comment inline below

> -----Original Message-----
> From: Avri Altman <Avri.Altman@wdc.com>
> Sent: 22 March 2020 17:54
> To: Alim Akhtar <alim.akhtar@samsung.com>; robh+dt@kernel.org;
> devicetree@vger.kernel.org; linux-scsi@vger.kernel.org
> Cc: krzk@kernel.org; martin.petersen@oracle.com; kwmad.kim@samsung.com;
> stanley.chu@mediatek.com; cang@codeaurora.org; linux-samsung-
> soc@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org
> Subject: RE: [PATCH v3 4/5] scsi: ufs-exynos: add UFS host support for Exynos
> SoCs
> 
> > +static int exynos7_ufs_pre_link(struct exynos_ufs *ufs) {
> > +       struct ufs_hba *hba = ufs->hba;
> > +       u32 val = ufs->drv_data->uic_attr->pa_dbg_option_suite;
> Can pa_dbg_option_suite be replaced by a macro?
> 
Going forward, I have plan to add multiple Samsung/Exynos SoC variants, which will have its own drv_data. For that reason I kept it.
Let me have a relook on this.

> > +       exynos_ufs_disable_ov_tm(hba);
> > +
> > +       ufshcd_dme_set(hba, UIC_ARG_MIB(PA_DBG_OPTION_SUITE_DYN),
> > 0xf);
> > +       ufshcd_dme_set(hba, UIC_ARG_MIB(PA_DBG_OPTION_SUITE_DYN),
> > 0xf);
> A typo? Set PA_DBG_OPTION_SUITE_DYN twice?
> 
Ack, will change

> > +#define PWR_MODE_STR_LEN       64
> > +static int exynos_ufs_post_pwr_mode(struct ufs_hba *hba,
> > +                               struct ufs_pa_layer_attr *pwr_max,
> > +                               struct ufs_pa_layer_attr *pwr_req) {
> > +       struct exynos_ufs *ufs = ufshcd_get_variant(hba);
> > +       struct phy *generic_phy = ufs->phy;
> > +       struct uic_pwr_mode *pwr = &ufs->pwr_act;
> > +       char pwr_str[PWR_MODE_STR_LEN] = "";
> Un-needed complication IMO - all those snprintf that is.
> 
You mean pwr_str initialization is not needed here?

> > +
> > +static void exynos_ufs_fit_aggr_timeout(struct exynos_ufs *ufs) {
> > +       const u8 cntr_div = 40;
> Can be replaced by a macro?
> 
Sure, will change.

> > +struct exynos_ufs_drv_data exynos_ufs_drvs = {
> > +
> > +       .compatible             = "samsung,exynos7-ufs",
> > +       .uic_attr               = &exynos7_uic_attr,
> > +       .quirks                 = UFSHCD_QUIRK_PRDT_BYTE_GRAN |
> > +                                 UFSHCI_QUIRK_BROKEN_REQ_LIST_CLR |
> > +                                 UFSHCI_QUIRK_BROKEN_HCE |
> > +                                 UFSHCI_QUIRK_SKIP_RESET_INTR_AGGR,
> > +       .opts                   = EXYNOS_UFS_OPT_HAS_APB_CLK_CTRL |
> > +                                 EXYNOS_UFS_OPT_BROKEN_AUTO_CLK_CTRL |
> > +                                 EXYNOS_UFS_OPT_BROKEN_RX_SEL_IDX,
> In what way opts are different from quirks?
> 
Similar to quirks, but only specific to controller local control, like related to APB interface and clock control.
These doesn't need a change in common ufshcd core. So kept as opts.
Will fix your comments and submit v4 soon.
Thanks.
> 
> Thanks,
> Avri


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
