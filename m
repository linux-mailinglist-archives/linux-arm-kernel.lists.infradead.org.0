Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9B81CE126
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 19:03:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3BYhCmqifqSdrPxmhnTJrL1NgGMVNW4tvuPgMTXDMAg=; b=TzaX6Gm9x8gRvp
	JbNoDjZBOYfGeFTfHt3XyHnalaFSeDEoVDGD9I0ij7UCuULoj7aKo6SNXsGzdZan4f7iN/YFkWZmw
	8bsqP3rb2GtJufwsH6kq4v2dFff/+c+akaLqkZ/3qi8d3H8/an603dLq5Q4WGUFwoHcJ4dch1dzFg
	7hn2gv6li1mdP6eTquy0pgdIDBRHxvUmV5SQlX2TmIOawQI4aqgwfDTr4NcindGOcaEePQ/8I5p8C
	EUrFJKQlVoR1VtAt9wA9Ayswy8RjEAnuFHbTlPSW7BEJdshw2EIZ22Cn+jWB87XUlLmUQJSmf7v0m
	XsTydjcrAHCDTug+jn7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYBpo-0002NP-Ad; Mon, 11 May 2020 17:03:20 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYBpf-0002Md-9a
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 17:03:13 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200511170308epoutp024f15cc8f3eca8849b7c5d3cb69b89d19~OCBEgjp7X2776927769epoutp02a
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 17:03:08 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200511170308epoutp024f15cc8f3eca8849b7c5d3cb69b89d19~OCBEgjp7X2776927769epoutp02a
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589216588;
 bh=BP0GmkEpYQ0GqUiqdlf5eptimMZ4Tdy6/dykKqQWuFk=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=QfzYDsuGy0FFWKAR1Xhv521BmsBSBmvheot3+SL/IbWwAAxXJ6M34sY8wfBlpiThf
 Llmw1DMR8kd/L89xqwDREEiN4QWPQq7GdyLwANj+KAGYhvHG0bWzMgfDNOuOvH81Rq
 WVNJJFv0nby7XVhEsBMJ6UXCDAcWS0UGcrZ8d2C8=
Received: from epsmges5p1new.samsung.com (unknown [182.195.42.73]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200511170306epcas5p2f9e34c776e0e46842b8fca5083b1680c~OCBDa8vHz1696616966epcas5p2-;
 Mon, 11 May 2020 17:03:06 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 F3.B7.10010.A4589BE5; Tue, 12 May 2020 02:03:06 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200511170306epcas5p3ccb24e93409e22c01cee3ca2146c4b57~OCBCv-6u91934419344epcas5p3i;
 Mon, 11 May 2020 17:03:06 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200511170306epsmtrp2a470c7712dd96f0d23d86cc9d0ba2679~OCBCvK9C-0054600546epsmtrp2d;
 Mon, 11 May 2020 17:03:06 +0000 (GMT)
X-AuditID: b6c32a49-71fff7000000271a-32-5eb9854ae6f0
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 42.0D.18461.A4589BE5; Tue, 12 May 2020 02:03:06 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200511170302epsmtip2950973488d6edc7e8639c79cda388b1c~OCA-aWL8_3019230192epsmtip2f;
 Mon, 11 May 2020 17:03:02 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Randy Dunlap'" <rdunlap@infradead.org>, <robh@kernel.org>
In-Reply-To: <80a387eb-2325-caab-6754-6d94daeeabac@infradead.org>
Subject: RE: [PATCH v8 09/10] scsi: ufs-exynos: add UFS host support for
 Exynos SoCs
Date: Mon, 11 May 2020 22:33:00 +0530
Message-ID: <036901d627b6$09da7050$1d8f50f0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIr/+V/dIQXVbOwuFE2pmdpRHTClQGDb/BuAb5g8twBywnFG6fPBS1A
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrPKsWRmVeSWpSXmKPExsWy7bCmhq5X6844g/MTTC1e/rzKZvFp/TJW
 i/lHzrFanD+/gd3i5pajLBabHl9jtbi8aw6bxYzz+5gsuq/vYLNYfvwfk8XbO9NZLP7v2cFu
 sXTrTUYHXo/Lfb1MHptXaHlsWtXJ5rF5Sb1Hy8n9LB4fn95i8ejbsorR4/MmOY/2A91MAZxR
 XDYpqTmZZalF+nYJXBkLW9cwF3TzVfR3X2dqYNzN3cXIySEhYCIxYUoPSxcjF4eQwG5GiUOL
 pzNCOJ8YJfa8n8EM4XxjlHh2azErTMuxv5/YIBJ7GSV+H38A1fKGUWLqssWMIFVsAroSOxa3
 sYHYIgL2EgfnnAYrYhY4ziTxuOMWE0iCU8BR4szKNWC2sECYxMUfz4H2cXCwCKhK3H8lBhLm
 FbCU+PR0CQuELShxcuYTMJtZQFti2cLXzBAXKUj8fLqMFWKXm8TSGSeYIGrEJY7+7AF7QULg
 BofE60VHoV5wkfgxcy8jhC0s8er4FnYIW0ri87u9bCA3SAhkS/TsMoYI10gsnXeMBcK2lzhw
 ZQ4LSAmzgKbE+l36EKv4JHp/P2GC6OSV6GgTgqhWlWh+dxWqU1piYnc31AEeEu1fPzFNYFSc
 heSxWUgem4XkgVkIyxYwsqxilEwtKM5NTy02LTDMSy3XK07MLS7NS9dLzs/dxAhOc1qeOxjv
 Pvigd4iRiYPxEKMEB7OSCG9L5s44Id6UxMqq1KL8+KLSnNTiQ4zSHCxK4ryn07bECQmkJ5ak
 ZqemFqQWwWSZODilGpj0ZW/pzVz3a51+VH/zmV/3/n826DkW66V+ZX5l9D7eh/ZfbaNfVt5s
 yz7Iuq6+6DD7nx9Tc1SYp7GnO9y+1Jl1YNb3F3uOKXcJslQr1DNdSNK1nd3+s6Lwf0/Ijdup
 BfH2OuYz/xye3XIh7TnPbKeXIUeX8H22Uw0JEl5RcfbFsY1/TotzMGpwnezgbf31NO7UvMXl
 ho1/1xzvXP8oXHP5ptbF3AtrfGd+XC/9XrJJ+YmL3U/FQI091+dOY7tZdkAgO4PZ8L2IhLjH
 xLlxL2ykXimorM3bv6aJgzVZqil48m7pp/8PnfilPzPVm9///x3plk8n97qKCzA2PylpCL6e
 e4n7z1aDvlCl84k+39YqsRRnJBpqMRcVJwIAx990ReIDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrMIsWRmVeSWpSXmKPExsWy7bCSvK5X6844g5XP2Cxe/rzKZvFp/TJW
 i/lHzrFanD+/gd3i5pajLBabHl9jtbi8aw6bxYzz+5gsuq/vYLNYfvwfk8XbO9NZLP7v2cFu
 sXTrTUYHXo/Lfb1MHptXaHlsWtXJ5rF5Sb1Hy8n9LB4fn95i8ejbsorR4/MmOY/2A91MAZxR
 XDYpqTmZZalF+nYJXBmHrnezFlznrVj2kb+BsZm7i5GTQ0LAROLY309sXYxcHEICuxkl/m46
 xwyRkJa4vnECO4QtLLHy33N2iKJXjBI3vy8HS7AJ6ErsWNzGBmKLCDhK7N/wmxmkiFngMpPE
 kTcvoMZ+ZZS4vuIZK0gVJ1DVmZVrmEBsYYEQiXnd84AmcXCwCKhK3H8lBhLmFbCU+PR0CQuE
 LShxcuYTMJtZQFui92ErI4y9bOFrqEsVJH4+XcYKcYSbxNIZJ5ggasQljv7sYZ7AKDwLyahZ
 SEbNQjJqFpKWBYwsqxglUwuKc9Nziw0LDPNSy/WKE3OLS/PS9ZLzczcxguNVS3MH4/ZVH/QO
 MTJxMB5ilOBgVhLhbcncGSfEm5JYWZValB9fVJqTWnyIUZqDRUmc90bhwjghgfTEktTs1NSC
 1CKYLBMHp1QDU8DFNVtTXtyWPbN1rcz0x0uP9fNXqFlVZU15n8fydd/Vtflv1cpTua91Te/n
 DXL6YiDp8G/i2dxnkwVytTjXNZmuOme+9/fGPwXHuBuVlWf6/q27IlmasVJpWWLw8u4Hie5V
 3rLpS7dG26if2CodOr37lu6N53E15z8sUuS2O6Ks6LSQu+f7Hv41VgXScm7ubHd1zgTkN+2b
 +uzFB4O3UoY3+zh5VVe9YdZR0NOR1Azu/5u2qL2jZeklexHd22+2cop++PZvttnk9i3T1qQZ
 lx6/YBRRVSMWH2DSV1XU6HuheEF2muHCztkvXgiaLvD/wma154iEatDP18q/L9wXYN5t97Ev
 bzZv1r7DV+IDlViKMxINtZiLihMBNDT9sEYDAAA=
X-CMS-MailID: 20200511170306epcas5p3ccb24e93409e22c01cee3ca2146c4b57
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200511021409epcas5p3b78fe59669f13ffae481b57a944da675
References: <20200511020031.25730-1-alim.akhtar@samsung.com>
 <CGME20200511021409epcas5p3b78fe59669f13ffae481b57a944da675@epcas5p3.samsung.com>
 <20200511020031.25730-10-alim.akhtar@samsung.com>
 <80a387eb-2325-caab-6754-6d94daeeabac@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_100311_862542_890CCC08 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
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
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, cang@codeaurora.org, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Randy

> -----Original Message-----
> From: Randy Dunlap <rdunlap@infradead.org>
> Sent: 11 May 2020 08:43
> To: Alim Akhtar <alim.akhtar@samsung.com>; robh@kernel.org
> Cc: devicetree@vger.kernel.org; linux-scsi@vger.kernel.org; krzk@kernel.org;
> avri.altman@wdc.com; martin.petersen@oracle.com;
> kwmad.kim@samsung.com; stanley.chu@mediatek.com;
> cang@codeaurora.org; linux-samsung-soc@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH v8 09/10] scsi: ufs-exynos: add UFS host support for Exynos
> SoCs
> 
> On 5/10/20 7:00 PM, Alim Akhtar wrote:
> > diff --git a/drivers/scsi/ufs/Kconfig b/drivers/scsi/ufs/Kconfig index
> > e2005aeddc2d..cc7e29c8c24f 100644
> > --- a/drivers/scsi/ufs/Kconfig
> > +++ b/drivers/scsi/ufs/Kconfig
> > @@ -160,3 +160,15 @@ config SCSI_UFS_BSG
> >
> >  	  Select this if you need a bsg device node for your UFS controller.
> >  	  If unsure, say N.
> > +
> > +config SCSI_UFS_EXYNOS
> > +	bool "EXYNOS specific hooks to UFS controller platform driver"
> > +	depends on SCSI_UFSHCD_PLATFORM && ARCH_EXYNOS ||
> COMPILE_TEST
> 
> Since && has higher precedence than ||, I am thinking that this should be
> 
> 	depends on SCSI_UFSHCD_PLATFORM && (ARCH_EXYNOS ||
> COMPILE_TEST)
> 
Sure, I missed this, will add in next version.

> > +	select PHY_SAMSUNG_UFS
> > +	help
> > +	  This selects the EXYNOS specific additions to UFSHCD platform driver.
> > +	  UFS host on EXYNOS includes HCI and UNIPRO layer, and associates
> with
> > +	  UFS-PHY driver.
> > +
> > +	  Select this if you have UFS host controller on EXYNOS chipset.
> > +	  If unsure, say N.
> 
> 
> --
> ~Randy



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
