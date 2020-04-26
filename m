Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A73A41B914C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 17:55:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZLQjHCd2rodfh0xhVNIB8oyMb5Wctn8qnCv6Lc4rJuc=; b=BYRdeU/aTVU4sh
	t6vpMkMViJQkSa2A7sXKxyE91Mj/L/oVwHp+1XFGguOu27dRJKwMiotcWii+En629kGj61QkpL2Qc
	4gV/d17+BvkvcD66Ke+BJQNX8Ad5rjlKj7l23lkKUY8e4ELsl1rmWZgoibHkL1j5ukii7JpEWbQcJ
	O9HOkl+pb0teuXXOHzvSLX6V/4dG0EpdZ7encpOAoZVP5xWcq2D2FtR0WinBmTi1M7Cosdn01Zsd+
	rbOhqWuIqFZS09YbJHUbMmN12EXgymseVnl9XWVojIjkMXOwocHi3MT/c8beCThIZHeBsDlWu9i+x
	1C8jeAvy3awUqQYIypgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSjcR-0003ku-Md; Sun, 26 Apr 2020 15:54:59 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSjcI-0003jX-JV
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 15:54:52 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200426155445epoutp0410a679bdbb1cb58b6718193f80a4268d~JaaF3dAUT3046630466epoutp047
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 15:54:45 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200426155445epoutp0410a679bdbb1cb58b6718193f80a4268d~JaaF3dAUT3046630466epoutp047
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587916485;
 bh=ayTtcD8jBSxoZnaUehKS7YmNzBMMmlbCJaXAqNqdFw4=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=suLIqLRgSJ0n29xccidoO6y7ymR7AgF1aSATSn0Gcz1d8oj5ApHh+82EywESIiBBH
 IYi0bfCAwdHbHOAHosf7GvCtCwSa9TK5ht4wV9NAsbIHmsW0E3GTIUP0OqFwnjEm7/
 jOQ+iJyMNNvUDqmWyH7xs4OoBGJxiWsDUnIzYYR0=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200426155445epcas5p266d05e625b8553b75733f2739b6803bd~JaaFHu8Ly1668516685epcas5p2f;
 Sun, 26 Apr 2020 15:54:45 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 81.5F.10083.4CEA5AE5; Mon, 27 Apr 2020 00:54:45 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
 20200426155444epcas5p160e8dbd5387e9e850a7bea6f157cd33e~JaaEstjrR1766617666epcas5p1m;
 Sun, 26 Apr 2020 15:54:44 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200426155444epsmtrp2f4e38028e6914e0fc02c8a24e673ee82~JaaEr5-vM1929019290epsmtrp2E;
 Sun, 26 Apr 2020 15:54:44 +0000 (GMT)
X-AuditID: b6c32a4a-88dff70000002763-55-5ea5aec47912
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 F1.EB.25866.4CEA5AE5; Mon, 27 Apr 2020 00:54:44 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200426155441epsmtip23336a1144606adeff21350f99aef3eb1~JaaBvkxLp0981409814epsmtip2G;
 Sun, 26 Apr 2020 15:54:41 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Avri Altman'" <Avri.Altman@wdc.com>, "'Kiwoong Kim'"
 <kwmad.kim@samsung.com>, <robh@kernel.org>, <cpgs@samsung.com>
In-Reply-To: <SN6PR04MB464022365ECC9F5565030147FCD50@SN6PR04MB4640.namprd04.prod.outlook.com>
Subject: RE: [PATCH v6 05/10] scsi: ufs: add quirk to fix abnormal ocs fatal
 error
Date: Sun, 26 Apr 2020 21:24:39 +0530
Message-ID: <000001d61be3$00e656f0$02b304d0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJQDPill8kAmUENoj8JBCZ49rLenQIFk/WPAcfxkaoBmLD4pwI/njykAykf0ROnQTP84A==
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrDKsWRmVeSWpSXmKPExsWy7bCmhu7RdUvjDHZ7Wbz8eZXN4tP6ZawW
 Lw9pWsw/co7V4vz5DewWN7ccZbHY9Pgaq8XlXXPYLGac38dk0X19B5vF8uP/mCz+79nB7sDj
 cbmvl8lj06pONo/NS+o9Pj69xeLRt2UVo8fnTXIe7Qe6mQLYo7hsUlJzMstSi/TtErgy/l/h
 KjihWfF65zOmBsbj8l2MnBwSAiYSLxdOZO1i5OIQEtjNKHFuw0JGCOcTo8SGKz+ZIZzPjBIz
 Oh6zwbTM7Z8NVbWLUWLbhCtQzhtGiWlHNjGDVLEJ6ErsWNwG1iEiUC2xpm0SO0gRs8BPRokn
 v5+CFXEKxErs71/ACGILC4RIXP/2lAXEZhFQlWiauBsszitgKTHlwiIoW1Di5MwnYDXMAtoS
 yxa+ZoY4SUHi59NlrBDLwiRavk5nhKgRlzj6swfsBwmBExwSS2ZcYoFocJGY3nOWEcIWlnh1
 fAs7hC0l8fndXqCrOYDsbImeXcYQ4RqJpfOOQbXaSxy4MocFpIRZQFNi/S59iDCvRMPG3+wQ
 a/kken8/YYKYwivR0SYEUaIq0fzuKtQUaYmJ3d2sExiVZiF5bBaSx2YheWAWwrIFjCyrGCVT
 C4pz01OLTQuM8lLL9YoTc4tL89L1kvNzNzGC05iW1w7GZed8DjEKcDAq8fB2pC6JE2JNLCuu
 zD3EKMHBrCTCG1OyKE6INyWxsiq1KD++qDQntfgQozQHi5I47yTWqzFCAumJJanZqakFqUUw
 WSYOTqkGxoWtizoi1jw/r/Yp7NLpo01aws9KNO75me8L3DK9d+lD+28eCb/Ohk9JfKKqvNqJ
 9af9ZsOjW9+k2DdNeXXh/LY1jUrRP3Y9mXohf7Zqi9SFS2qFM9ucL8yNNv/emTF1/YyYxuQZ
 +ap+P5X7tghq2vzXcAxzuT93yrlz7zRuzT7KnzF5WXhYzwIlluKMREMt5qLiRAB4TW5lXwMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrCIsWRmVeSWpSXmKPExsWy7bCSvO6RdUvjDPY+kbF4+fMqm8Wn9ctY
 LV4e0rSYf+Qcq8X58xvYLW5uOcpisenxNVaLy7vmsFnMOL+PyaL7+g42i+XH/zFZ/N+zg92B
 x+NyXy+Tx6ZVnWwem5fUe3x8eovFo2/LKkaPz5vkPNoPdDMFsEdx2aSk5mSWpRbp2yVwZXw4
 38FY8FajYvNC4QbGR3JdjJwcEgImEnP7ZzN2MXJxCAnsYJRouvaRHSIhLXF94wQoW1hi5b/n
 7BBFrxglWmcvZwJJsAnoSuxY3MYGYosI1Eu0XlvOClLELNDIJLHgRD8rREc/s8TNuXtZQao4
 BWIl9vcvANrHwSEsECQx7XQ4SJhFQFWiaeJuRhCbV8BSYsqFRVC2oMTJmU9YQGxmAW2Jpzef
 wtnLFr5mhrhOQeLn02WsEEeESbR8nc4IUSMucfRnD/MERuFZSEbNQjJqFpJRs5C0LGBkWcUo
 mVpQnJueW2xYYJSXWq5XnJhbXJqXrpecn7uJERyRWlo7GPes+qB3iJGJg/EQowQHs5IIb0zJ
 ojgh3pTEyqrUovz4otKc1OJDjNIcLErivF9nLYwTEkhPLEnNTk0tSC2CyTJxcEo1MDGa+i5Y
 edZgzYn6VAaun1MXfdZrLdA0dHfkUmnQ+Xn8IJfkTg6t0FuxM2bsNrGecPKXecn2oxmSnCwr
 dPdwZDzrurEys3HigsPlaXf5TzRHv3r7hG1JquL5p4a+TzfGvUx5cjTGlMlv5YqrnGbzzu2+
 dKrPS4ir0rutesvN9c+U1zV84tJssJl1Kr355mfVJ3HrPtw5zJXju6PBadn+bceyg5s4p2y/
 8f7SkjVss9acNdPn+uEpxhLB8WLp8vVpFy+nN6cqVu5+I51e5ei3Uq24s/b1uhe5spxt6cWf
 i1lPRR+b8HsF0wImmTsbzwU6LZmt0WHkyntR4Uuh+c7sGjW39ilfnutyZ6pnztRb6KbEUpyR
 aKjFXFScCAAgZ4voNwMAAA==
X-CMS-MailID: 20200426155444epcas5p160e8dbd5387e9e850a7bea6f157cd33e
X-Msg-Generator: CA
X-CPGSPASS: Y
CMS-TYPE: 105P
X-CMS-RootMailID: 20200417181016epcas5p2ee7ac86d743ceee9076690dc5b1e2f08
References: <20200417175944.47189-1-alim.akhtar@samsung.com>
 <CGME20200417181016epcas5p2ee7ac86d743ceee9076690dc5b1e2f08@epcas5p2.samsung.com>
 <20200417175944.47189-6-alim.akhtar@samsung.com>
 <SN6PR04MB46408CF4DD05DB9B48DFE412FCD40@SN6PR04MB4640.namprd04.prod.outlook.com>
 <062001d617b1$af5f0aa0$0e1d1fe0$@samsung.com>
 <SN6PR04MB464022365ECC9F5565030147FCD50@SN6PR04MB4640.namprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_085451_066347_717E938F 
X-CRM114-Status: GOOD (  28.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Avri

> -----Original Message-----
> From: Avri Altman <Avri.Altman@wdc.com>
> Sent: 21 April 2020 17:37
> To: Kiwoong Kim <kwmad.kim@samsung.com>; 'Alim Akhtar'
> <alim.akhtar@samsung.com>; robh@kernel.org; cpgs@samsung.com
> Cc: devicetree@vger.kernel.org; linux-scsi@vger.kernel.org; krzk@kernel.org;
> martin.petersen@oracle.com; cang@codeaurora.org; linux-samsung-
> soc@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org
> Subject: RE: [PATCH v6 05/10] scsi: ufs: add quirk to fix abnormal ocs fatal error
> 
> >
> > > -----Original Message-----
> > > From: Avri Altman <Avri.Altman@wdc.com>
> > > Sent: Monday, April 20, 2020 5:56 PM
> > > To: Alim Akhtar <alim.akhtar@samsung.com>; robh@kernel.org
> > > Cc: devicetree@vger.kernel.org; linux-scsi@vger.kernel.org;
> > > krzk@kernel.org; martin.petersen@oracle.com;
> > kwmad.kim@samsung.com;
> > > stanley.chu@mediatek.com; cang@codeaurora.org; linux-samsung-
> > > soc@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> > > kernel@vger.kernel.org
> > > Subject: RE: [PATCH v6 05/10] scsi: ufs: add quirk to fix abnormal
> > > ocs fatal error
> > >
> > > >
> > > > From: Kiwoong Kim <kwmad.kim@samsung.com>
> > > >
> > > > Some architectures determines if fatal error for OCS occurrs to
> > > > check status in response upiu. This patch
> > > Typo - occurs
> > >
> > > > is to prevent from reporting command results with that.
> > > >
> > > > Signed-off-by: Kiwoong Kim <kwmad.kim@samsung.com>
> > > > Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> > > > ---
> > > >  drivers/scsi/ufs/ufshcd.c | 6 ++++++  drivers/scsi/ufs/ufshcd.h |
> > > > 6 ++++++
> > > >  2 files changed, 12 insertions(+)
> > > >
> > > > diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> > > > index b32fcedcdcb9..8c07caff0a5c 100644
> > > > --- a/drivers/scsi/ufs/ufshcd.c
> > > > +++ b/drivers/scsi/ufs/ufshcd.c
> > > > @@ -4794,6 +4794,12 @@ ufshcd_transfer_rsp_status(struct ufs_hba
> > *hba,
> > > > struct ufshcd_lrb *lrbp)
> > > >         /* overall command status of utrd */
> > > >         ocs = ufshcd_get_tr_ocs(lrbp);
> > > >
> > > > +       if (hba->quirks & UFSHCD_QUIRK_BROKEN_OCS_FATAL_ERROR) {
> > > > +               if (be32_to_cpu(lrbp->ucd_rsp_ptr->header.dword_1) &
> > > > +                                       MASK_RSP_UPIU_RESULT)
> > > > +                       ocs = OCS_SUCCESS;
> > > > +       }
> > > > +
> > > Not sure that I follow what this quirk is all about.
> > > Your code overrides ocs by open coding ufshcd_get_rsp_upiu_result.
> > >
> > > Normally OCS is in utp transfer req descriptor, dword 2, bits 0..7.
> > > My understanding from your description, is that some fatal error
> > > might occur, But the host controller does not report it, and it
> > > still needs to be checked in the response upiu.
> > > Evidently you are not doing so.
> > > Please elaborate your description.
> > >
> > > P.S.
> > > The ocs is being evaluated in device management commands as well,
> > > Isn't this something you need to attend?
> > >
> > > Thanks,
> > > Avri
> > >
> > > >         switch (ocs) {
> > > >         case OCS_SUCCESS:
> > > >                 result = ufshcd_get_req_rsp(lrbp->ucd_rsp_ptr);
> > > > diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
> > > > index a9b9ace9fc72..e1d09c2c4302 100644
> > > > --- a/drivers/scsi/ufs/ufshcd.h
> > > > +++ b/drivers/scsi/ufs/ufshcd.h
> > > > @@ -541,6 +541,12 @@ enum ufshcd_quirks {
> > > >          * resolution of the values of PRDTO and PRDTL in UTRD as byte.
> > > >          */
> > > >         UFSHCD_QUIRK_PRDT_BYTE_GRAN                     = 1 << 9,
> > > > +
> > > > +       /*
> > > > +        * This quirk needs to be enabled if the host controller reports
> > > > +        * OCS FATAL ERROR with device error through sense data
> > > > +        */
> > > > +       UFSHCD_QUIRK_BROKEN_OCS_FATAL_ERROR             = 1 << 10,
> > > >  };
> > > >
> > > >  enum ufshcd_caps {
> > > > --
> > > > 2.17.1
> > Avri
> >
> > As specified in the spec, OCS isn't supposed to refer to the contents
> > of RESPONSE UPIU.
> > But, Exynos host behaves like that in some cases, e.g. a value of
> > 'state' in is isn't GOOD(00h).
> OK.
> I still think that you might consider rewording your commit, explaining this quirk
> better.
> Specifically you might not want to say "if fatal..." because fatal code (0x7) is just
> one error code out of many.
> Also you might want to use ufshcd_get_rsp_upiu_result() in the quirk body
> instead of open coding it.
> 
> >
> > For QUERY RESPONSE, its offset, i.e. " dword_1" is reserved, so
> > currently no impact, I think.
> > But if you feel another condition is necessary to identify if this
> > request is QUERY REQEUST or not, we can add more.
> No need, as long as you are ok with whatever ufshcd_get_tr_ocs() returns in
> ufshcd_wait_for_dev_cmd().
> 
I will update the commit message to make it clear in the next version of the patch set.

> Thanks,
> Avri
> 
> >
> > Thanks



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
