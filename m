Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B79B31AE416
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 19:52:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UcxKgW7gETSIFEj3Yco9L7TjXJjNm2UFba8AlHbDYZg=; b=pl18qZDV0KLSqv
	xrOx1yrAgw6Hpe1W9EsBvnGajjam+0zZy4lSwnrZYYL4p+uh3kGzaegsOrTKr3XQI4X5o8CUI9HUJ
	/MauxPu+zqAY/XgZqNdYcsIrskShkRbJ44tg7q5SAAkL88UpDn1LnZZrT0W3+cENcIVMYR9GVe9Tp
	WBXoMv0hTBoySlcdhYOoLvrhhWZisQAmVZ7G9MPpL37ec0KcYT8riLKueRoljDrIb+j+8OfXbZP8/
	cFUNmBXa2fOJUyx+iEQBs32n1BQ3ZJPOSyYIx5FoJ4oXparXhFqfCXi9Cx6MC5trjetvhXfIMch7G
	NkIj+ZZYbkHKABPEuT7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPV9c-0004Bh-HB; Fri, 17 Apr 2020 17:51:52 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPV9S-0004AG-0Y
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 17:51:44 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200417175138epoutp030eb45155641f3bae11dfad9b0a750f45~GrMkV6Ub42755427554epoutp03B
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 17:51:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200417175138epoutp030eb45155641f3bae11dfad9b0a750f45~GrMkV6Ub42755427554epoutp03B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587145898;
 bh=5M0OCrAJ3y02bHrC5ozbdimkBCaWSGf/3thZkN8c9Lk=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=UZ3unsIVZCBTJOASRfkUcowPJpuDyqa6uMNwKWzdG4JU8kAAd4a6WcjGHA+07oioZ
 NN8NEZaRsLk/gN1DBMLZYCj74Az7uLe/3/2udU+O6+o6hb40sraM9dGXgfbCepUzvw
 oP0NEuK+Pahriautys2cnapFnM2hZfo01Qp31xHg=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p1.samsung.com (KnoxPortal) with ESMTP id
 20200417175137epcas5p10a40555709962fba229aae6b2fd9db07~GrMj2iz862056520565epcas5p1Z;
 Fri, 17 Apr 2020 17:51:37 +0000 (GMT)
Received: from epcas5p4.samsung.com ( [182.195.41.42]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 BF.3A.04736.9ACE99E5; Sat, 18 Apr 2020 02:51:37 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
 20200417175137epcas5p4820ca1b230480b0d5f780cdbc0972d15~GrMjK1C2X2922329223epcas5p4N;
 Fri, 17 Apr 2020 17:51:37 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200417175137epsmtrp258288b66028d4eff60b1c16d083ebed7~GrMjKB-hn0836108361epsmtrp2E;
 Fri, 17 Apr 2020 17:51:37 +0000 (GMT)
X-AuditID: b6c32a4b-ae3ff70000001280-21-5e99eca912b1
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 21.70.04024.8ACE99E5; Sat, 18 Apr 2020 02:51:36 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200417175133epsmtip2df47cad995363cfd7906f70373bd2a42~GrMf0gnPq1190511905epsmtip2O;
 Fri, 17 Apr 2020 17:51:33 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Christoph Hellwig'" <hch@infradead.org>
In-Reply-To: <20200413133926.GA29228@infradead.org>
Subject: RE: [PATCH v5 4/5] scsi: ufs-exynos: add UFS host support for
 Exynos SoCs
Date: Fri, 17 Apr 2020 23:21:31 +0530
Message-ID: <018c01d614e0$d6f971f0$84ec55d0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHr+Y8xYXIsvNQeqORDaXjXFCUqCgIAvgGXAbEacNoBTCAGfwGKzB3uAp+278eoAf9z0A==
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA02SbUhTYRiGeXfO2Y6r2XFJPipYjQwUTEOD0wd9QNip/BEkRZLmaicTdY2d
 tBlRYrWmm+sDCV3iV2uWBLq55rJsa2VqZQapaVk/StPKRC0EyzK3o+S/636f++Z+HnhJTPqZ
 CCHTlSdYtVKeKROKccfjiMio2yOlKTGfbTH0l6luIT1RZyHoiicvCbrmlVlAP79cLaA7O+tF
 dJ+9Badtn3oI+nVTmZAu6XwooPVvnEK6pvWvgJ554BTRN+/2oa3+zGtjkYC5Z3ovYhpuRTK2
 2gIh02A+y5xvd+HM+OBbnDHaaxHzwxbGXHTrBXvESeJNCjYzPYdVR29OFR/TmtswlUWs6Wmr
 RHnITRYiPxKoOGi1OvFCJCal1H0Eo7oSxIsJBJZrYwQvJhG0OIvRfKRr2jU3aEaQ33F9LjKC
 4FLFOO51CakocN7QCr0cOMsdVcM+E0blYzBtKxV5B35ULMzkuXympVQiuPq7fIxT4aB1FPnq
 JNR6qH9lFfEcAO2lA74CjFoOjd/LMH6lFTA1aCH4sn0w9MeOeE8QtEwZMG8xUA9F8PTct1lB
 zortUNB2mM8uha+tdhHPIfBjtFnIWzLA0BTLP5+Gm+VPcZ63gLurDPdaMCoC6pqi+SZ/KPo9
 IOCTEtBppbw7HM6Nds8lQ+GKXk/wzIBr+CN+Ga00LbjLtOAu04L9Tf/LKhFei4JZFZeVxnLr
 VLFK9uQaTp7FZSvT1hw5nmVDvt8XuduJbC8TPIgikWyxRGcsTZES8hwuN8uDgMRkgZJH8bNP
 EoU89xSrPn5InZ3Jch4USuKyIMlVovuglEqTn2AzWFbFquenAtIvJA+lbquJ0Jz5pXWP/exb
 Vt+jUNiP7qSje8s69ir2J1zyrx56Z9++MSFZVz5tmJyyxsXrHGquuNw68DV7R7CxtcV95W9s
 mCPkU8LeAhsV8KL5xhn9BSzzmaStarzxbe+qxNUHzBJLEnGxf1ehY9EH3QZDTIfGfmeif4fG
 M3jk25LBZBnOHZOvjcTUnPwfI/0/xnkDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrBIsWRmVeSWpSXmKPExsWy7bCSvO7KNzPjDLYoWLz8eZXN4tP6ZawW
 84+cY7VYfmEJk8XpCYuYLM6f38BucXPLURaLTY+vsVpc3jWHzWLG+X1MFt3Xd7BZLD/+j8ni
 /54d7BZLt95kdODzuNzXy+Sxc9Zddo/NK7Q8Nq3qZPPYvKTeo+XkfhaPj09vsXj0bVnF6PF5
 k5xH+4FupgCuKC6blNSczLLUIn27BK6MtiUnmAuWcVVcO7GAsYHxAEcXIyeHhICJxJU/+1m7
 GLk4hAR2M0p8a2pnhkhIS1zfOIEdwhaWWPnvOTtE0StGiY8nF4Ml2AR0JXYsbmMDsUWA7LML
 XzCCFDELTGCWOHFvJgtIQkhgF5PE4mdlIDangLHE/4b9YA3CAkES/3segtksAqoSbdt6GUFs
 XgFLiQ0XNrJD2IISJ2c+AZrDATRUT6JtI1gJs4C8xPa3c6AOVZD4+XQZK8QNYRLP/26BqhGX
 OPqzh3kCo/AsJJNmIUyahWTSLCQdCxhZVjFKphYU56bnFhsWGOallusVJ+YWl+al6yXn525i
 BMevluYOxstL4g8xCnAwKvHwGvTMjBNiTSwrrsw9xCjBwawkwnvQDSjEm5JYWZValB9fVJqT
 WnyIUZqDRUmc92nesUghgfTEktTs1NSC1CKYLBMHp1QD4+pTsW/fRD4OucqypTHFwWRm95uJ
 Sjl+E2pjSzxv7yn3+8j+tMj9WvCpU3tMCmd82hymUqIuOq9q1yuBAulz85TUtF4fktgspyt2
 921N0p/Z13LvZHs7TIn+2CsR+mHS3I0Zh3nWJ2+d9ONenGdK0MPdAnUOH1q3+h0TutSyoaA1
 ROb/1tR2ISWW4oxEQy3mouJEAHqeWkDbAgAA
X-CMS-MailID: 20200417175137epcas5p4820ca1b230480b0d5f780cdbc0972d15
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200412074218epcas5p3ef7973c8a47533a15a359b069da8003c
References: <20200412073159.37747-1-alim.akhtar@samsung.com>
 <CGME20200412074218epcas5p3ef7973c8a47533a15a359b069da8003c@epcas5p3.samsung.com>
 <20200412073159.37747-5-alim.akhtar@samsung.com>
 <20200412080947.GA6524@infradead.org>
 <000001d610e6$e8b11450$ba133cf0$@samsung.com>
 <20200413133926.GA29228@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_105142_303003_9D258D22 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: robh@kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, krzk@kernel.org,
 kwmad.kim@samsung.com, avri.altman@wdc.com, cang@codeaurora.org,
 linux-arm-kernel@lists.infradead.org, stanley.chu@mediatek.com,
 'Seungwon Jeon' <essuuj@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph,
Thanks for your feedback.

> -----Original Message-----
> From: 'Christoph Hellwig' <hch@infradead.org>
> Sent: 13 April 2020 19:09
> To: Alim Akhtar <alim.akhtar@samsung.com>
> Cc: 'Christoph Hellwig' <hch@infradead.org>; robh@kernel.org;
> devicetree@vger.kernel.org; linux-scsi@vger.kernel.org; linux-samsung-
> soc@vger.kernel.org; martin.petersen@oracle.com; linux-
> kernel@vger.kernel.org; krzk@kernel.org; kwmad.kim@samsung.com;
> avri.altman@wdc.com; cang@codeaurora.org; 'Seungwon Jeon'
> <essuuj@gmail.com>; stanley.chu@mediatek.com; linux-arm-
> kernel@lists.infradead.org
> Subject: Re: [PATCH v5 4/5] scsi: ufs-exynos: add UFS host support for
Exynos
> SoCs
> 
> On Sun, Apr 12, 2020 at 09:54:53PM +0530, Alim Akhtar wrote:
> > > So this doesn't actually require the various removed or not added
> > > quirks
> > after
> > > all?
> > This driver is actual consumer of those quirks, so those are still
needed.
> > On Martin's 5.7/scsi-queue need to revert " 492001990f64 scsi: ufshcd:
> > remove unused quirks"
> 
> No. You need to include one patch per quirk in your series to add them
back.
Sure, will send the updated version soon.

> Please also follow all proper kernel style guidelines, as the old code
didn't
> always follow the proper style.




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
