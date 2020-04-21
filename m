Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3AC1B2040
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 09:48:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U4qSYF7iXmG1xcblabJTRAqfZ9ad278oZNXlrG9C9Uo=; b=iRDy/JPK2Yn7Gu
	NVkV+vf6K0ZcFQndRQhXfxPMZW3c2Lgd0xnvejber9v70WMBNR8eKlr5pZwFxfY7aVxmcirncuQEh
	LAPMrNvernwLbRY/a3gkGHpRGYzeHTB4uWMhTVUrokKZ0vA5W3naXN/a5f1liM8d4b3rzpA9Wp/BD
	PaqM1xJPXFX1EbRP2vsUfEVoxHWJvndX7JxotX1Ro+Uyk1wDmY2bDayY1UXsck6zfPaz3F2wPFx8y
	yTZaKw4aaJ9a0DA8cR2HnZeKCkeZTlgZhjx1IhKfDBrcCiy1l2QZ4WEdABBWzQqGh2dyFVLLpbH/7
	2+Tx4nqiP5ifyM+HnJhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQndl-00068o-6W; Tue, 21 Apr 2020 07:48:21 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQndV-000664-F0
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 07:48:07 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200421074802epoutp045d7fe4838980ee389e9cf2aaf413c5a7~HxisvKVsl3030730307epoutp04-
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 07:48:02 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200421074802epoutp045d7fe4838980ee389e9cf2aaf413c5a7~HxisvKVsl3030730307epoutp04-
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587455282;
 bh=4FgjhEdV6W3S/42bQSfr9ctO2p93vCrc6GLWo2SNl7c=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=EF2EoiPXQCHs3hLPabmcED/X5K9BTFl0s1dKHP8qF+RhKuOpu6CbyexIw73sf3FdY
 zCWkHB5J2Ptn83EZxStSwyfkImZIYjyqjUrCzysnDh8ngAOAirkhgXzAE1Nw2Yg/Lo
 kVQjWieshnDZY3o4qimxD0zCTC7ZQ6nDCFViWRbs=
Received: from epcpadp2 (unknown [182.195.40.12]) by epcas1p1.samsung.com
 (KnoxPortal) with ESMTP id
 20200421074802epcas1p1b74c4d0d145faf5b864d082192b0d3e7~Hxise2XRY1192811928epcas1p1D;
 Tue, 21 Apr 2020 07:48:02 +0000 (GMT)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
 20200421074617epcas2p1dc86fd99c7289950ce7ad8ae2d0918db~HxhKlacjo1039910399epcas2p1M;
 Tue, 21 Apr 2020 07:46:17 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200421074617epsmtrp2e3c6e2a7f53f64a877aed4342ff46bb7~HxhKjX8dQ2227622276epsmtrp2d;
 Tue, 21 Apr 2020 07:46:17 +0000 (GMT)
X-AuditID: b6c32a2a-d39ff7000000103e-f1-5e9ea4c8ac43
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 17.73.04158.8C4AE9E5; Tue, 21 Apr 2020 16:46:16 +0900 (KST)
Received: from KORCO011456 (unknown [12.36.185.54]) by epsmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200421074616epsmtip2cbc7e527b46f3818c7744060f3803ef8~HxhKW_Ean3022930229epsmtip2s;
 Tue, 21 Apr 2020 07:46:16 +0000 (GMT)
From: "Kiwoong Kim" <kwmad.kim@samsung.com>
To: "'Avri Altman'" <Avri.Altman@wdc.com>, "'Alim Akhtar'"
 <alim.akhtar@samsung.com>, <robh@kernel.org>, <cpgs@samsung.com>
In-Reply-To: <SN6PR04MB46408CF4DD05DB9B48DFE412FCD40@SN6PR04MB4640.namprd04.prod.outlook.com>
Subject: RE: [PATCH v6 05/10] scsi: ufs: add quirk to fix abnormal ocs fatal
 error
Date: Tue, 21 Apr 2020 16:46:16 +0900
Message-ID: <1288235781.41587455282171.JavaMail.epsvc@epcpadp2>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJQDPill8kAmUENoj8JBCZ49rLenQIFk/WPAcfxkaoBmLD4p6dkFifQ
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrNIsWRmVeSWpSXmKPExsWy7bCSvO6JJfPiDKautbZ4MG8bm8XLn1fZ
 LD6tX8Zq8fKQpsX8I+dYLc6f38BusenxNVaLy7vmsFnMOL+PyaL7+g42i+XH/zFZ/N+zg91i
 6dabjA68Hpf7epk8Nq3qZPPYvKTeo+XkfhaPj09vsXj0bVnF6PF5k5xH+4FupgCOKC6blNSc
 zLLUIn27BK6Mo88LC17IVKzqPcLSwPhVtIuRk0NCwESi/24/UxcjF4eQwG5Gib6lX5khEpIS
 J3Y+Z4SwhSXutxxhhSh6xijx4083E0iCTUBbYtrD3WAJEYFGRondDTMYQRxmgflMEtsfb2WH
 aJnAJHHyShcLSAunQKzE2sWbgVo4OIQFgiSmnQ4HCbMIqErsOLWSDcTmFbCUOLZ5LjuELShx
 cuYTsFZmoG29D1sZYexlC19Dnaog8fPpMrCRIgJuEjeP8EOUiEjM7mxjnsAoPAvJpFlIJs1C
 MmkWkpYFjCyrGCVTC4pz03OLDQuM8lLL9YoTc4tL89L1kvNzNzGCo1RLawfjiRPxhxgFOBiV
 eHg3iM2LE2JNLCuuzD3EKMHBrCTCa6EFFOJNSaysSi3Kjy8qzUktPsQozcGiJM4rn38sUkgg
 PbEkNTs1tSC1CCbLxMEp1cDY6/XA6dvHZkO+GVpyj7cylUi3RfbJLr1W3nWQ8f6ErgPnrk1N
 kbBZIRTP9NzwwCfBo7vsdTOucXT/E/cV23pD+k7p7MT6tEfsWeHVCp1fmdusA9rlnJbFbZt9
 +HNH4Kfw3smJdWXildKtyVJcd3KFRP27/fhONLVnF//aumGTqmgN86w7JkosxRmJhlrMRcWJ
 AMpftfzOAgAA
X-CMS-MailID: 20200421074617epcas2p1dc86fd99c7289950ce7ad8ae2d0918db
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-Hop-Count: 3
X-CMS-RootMailID: 20200417181016epcas5p2ee7ac86d743ceee9076690dc5b1e2f08
References: <20200417175944.47189-1-alim.akhtar@samsung.com>
 <CGME20200417181016epcas5p2ee7ac86d743ceee9076690dc5b1e2f08@epcas5p2.samsung.com>
 <20200417175944.47189-6-alim.akhtar@samsung.com>
 <SN6PR04MB46408CF4DD05DB9B48DFE412FCD40@SN6PR04MB4640.namprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_004805_856696_9B6BC9A0 
X-CRM114-Status: GOOD (  23.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 martin.petersen@oracle.com, linux-scsi@vger.kernel.org,
 linux-kernel@vger.kernel.org, krzk@kernel.org, cang@codeaurora.org,
 stanley.chu@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Avri Altman <Avri.Altman@wdc.com>
> Sent: Monday, April 20, 2020 5:56 PM
> To: Alim Akhtar <alim.akhtar@samsung.com>; robh@kernel.org
> Cc: devicetree@vger.kernel.org; linux-scsi@vger.kernel.org;
> krzk@kernel.org; martin.petersen@oracle.com; kwmad.kim@samsung.com;
> stanley.chu@mediatek.com; cang@codeaurora.org; linux-samsung-
> soc@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org
> Subject: RE: [PATCH v6 05/10] scsi: ufs: add quirk to fix abnormal ocs
> fatal error
> 
> >
> > From: Kiwoong Kim <kwmad.kim@samsung.com>
> >
> > Some architectures determines if fatal error for OCS occurrs to check
> > status in response upiu. This patch
> Typo - occurs
> 
> > is to prevent from reporting command results with that.
> >
> > Signed-off-by: Kiwoong Kim <kwmad.kim@samsung.com>
> > Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> > ---
> >  drivers/scsi/ufs/ufshcd.c | 6 ++++++
> >  drivers/scsi/ufs/ufshcd.h | 6 ++++++
> >  2 files changed, 12 insertions(+)
> >
> > diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> > index b32fcedcdcb9..8c07caff0a5c 100644
> > --- a/drivers/scsi/ufs/ufshcd.c
> > +++ b/drivers/scsi/ufs/ufshcd.c
> > @@ -4794,6 +4794,12 @@ ufshcd_transfer_rsp_status(struct ufs_hba *hba,
> > struct ufshcd_lrb *lrbp)
> >         /* overall command status of utrd */
> >         ocs = ufshcd_get_tr_ocs(lrbp);
> >
> > +       if (hba->quirks & UFSHCD_QUIRK_BROKEN_OCS_FATAL_ERROR) {
> > +               if (be32_to_cpu(lrbp->ucd_rsp_ptr->header.dword_1) &
> > +                                       MASK_RSP_UPIU_RESULT)
> > +                       ocs = OCS_SUCCESS;
> > +       }
> > +
> Not sure that I follow what this quirk is all about.
> Your code overrides ocs by open coding ufshcd_get_rsp_upiu_result.
> 
> Normally OCS is in utp transfer req descriptor, dword 2, bits 0..7.
> My understanding from your description, is that some fatal error might
> occur, But the host controller does not report it, and it still needs to
> be checked in the response upiu.
> Evidently you are not doing so.
> Please elaborate your description.
> 
> P.S.
> The ocs is being evaluated in device management commands as well, Isn't
> this something you need to attend?
> 
> Thanks,
> Avri
> 
> >         switch (ocs) {
> >         case OCS_SUCCESS:
> >                 result = ufshcd_get_req_rsp(lrbp->ucd_rsp_ptr);
> > diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> > index a9b9ace9fc72..e1d09c2c4302 100644
> > --- a/drivers/scsi/ufs/ufshcd.h
> > +++ b/drivers/scsi/ufs/ufshcd.h
> > @@ -541,6 +541,12 @@ enum ufshcd_quirks {
> >          * resolution of the values of PRDTO and PRDTL in UTRD as byte.
> >          */
> >         UFSHCD_QUIRK_PRDT_BYTE_GRAN                     = 1 << 9,
> > +
> > +       /*
> > +        * This quirk needs to be enabled if the host controller reports
> > +        * OCS FATAL ERROR with device error through sense data
> > +        */
> > +       UFSHCD_QUIRK_BROKEN_OCS_FATAL_ERROR             = 1 << 10,
> >  };
> >
> >  enum ufshcd_caps {
> > --
> > 2.17.1
Avri

As specified in the spec, OCS isn't supposed to refer to the contents of RESPONSE UPIU.
But, Exynos host behaves like that in some cases, e.g. a value of 'state' in is isn't GOOD(00h).

For QUERY RESPONSE, its offset, i.e. " dword_1" is reserved, so currently no impact, I think.
But if you feel another condition is necessary to identify if this request is QUERY REQEUST or not, we can add more.

Thanks



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
