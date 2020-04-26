Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4A61B9152
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 17:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LkvNhczrjZVKfCSazSgRbIpHHq9x6/aCeXvKx1MZdVY=; b=OYgpRKku/fdf9M
	PZSmM9zWHjeyfb+ULwbWZBW/2x7yX3lmKCNgs2CvwQCDKzN4MD+VtJjK8FZp8n42lhoxFcFcd4sQu
	591ths6/2j64DO2ah0ZfBM9mmfEWu6wd7feZyVMqlvFvwpa6cLBCzFcGnExOm0/MWwlgLnfyeMQVa
	L1TVLg/o0bowwaTNyiYc9HHEL0kE+klWhiG81qKOu6CkwhfYpmrOA+ynBGM5ubAmd/HflMp+vXXR/
	UdlYu3jyyZBnye9MDJVZ+nKuWRxLHOzLuIMVyJHS9iBKmmRkJjq6vERw9O2aFOaMjEYOAiMw+uyst
	WHywFXDShoUH4N7e0tiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSjdu-0006Zl-4W; Sun, 26 Apr 2020 15:56:30 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSjdl-0006Yc-Sv
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 15:56:23 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200426155615epoutp0184b9c0e04d045d3d649161e939e24f39~JabZvf1_i0180601806epoutp01C
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 15:56:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200426155615epoutp0184b9c0e04d045d3d649161e939e24f39~JabZvf1_i0180601806epoutp01C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587916575;
 bh=R/ffaCRKEQrXQ6OTqoLZTxkSTG1ctXIv1g7iS30Cjpk=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=I2qhjfZPgcmaevRI+eVMfvXD+h+DVbUVZ+nU8Hj5MwTKpxdA91w8QQ5s1fBPAx69+
 M/LI/c1v7s0WpsbAhyaV6OijnhsSizNKJVjPTYHZYMThTX4r4Xgj6Vh+KyjzPzFViY
 ib6Pod5g6tu4hBmr4anxI3M/KNvte/x5Se+33Zl4=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200426155614epcas5p203e1348516c80b9a7886ebe271501f5f~JabYdooGN3114831148epcas5p2X;
 Sun, 26 Apr 2020 15:56:14 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 58.4B.04736.E1FA5AE5; Mon, 27 Apr 2020 00:56:14 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
 20200426155613epcas5p22db6f4a090a05124ca987564645cfefe~JabX9NkAC3114831148epcas5p2W;
 Sun, 26 Apr 2020 15:56:13 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200426155613epsmtrp1f7bbca856242516fdca7287ccc2ffd0f~JabX5nyml1689016890epsmtrp1T;
 Sun, 26 Apr 2020 15:56:13 +0000 (GMT)
X-AuditID: b6c32a4b-ae3ff70000001280-60-5ea5af1ee499
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 13.EB.25866.D1FA5AE5; Mon, 27 Apr 2020 00:56:13 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200426155610epsmtip2a2527b919abc969e14934b32653fcce8~JabUxz3JZ0981409814epsmtip2I;
 Sun, 26 Apr 2020 15:56:10 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Christoph Hellwig'" <hch@infradead.org>
In-Reply-To: <20200422065414.GK20318@infradead.org>
Subject: RE: [PATCH v6 04/10] scsi: ufs: introduce
 UFSHCD_QUIRK_PRDT_BYTE_GRAN quirk
Date: Sun, 26 Apr 2020 21:26:08 +0530
Message-ID: <000101d61be3$362e79f0$a28b6dd0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJQDPill8kAmUENoj8JBCZ49rLenQFjH0G5AqRtQZkDmWzjbqdapFOg
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTYRjG+c7OOTtKq8+p+KahNhGaoJWrOIaVgckB+0MCNcKsoQcT3Ryb
 WVaQZelqmZoJJqKlzsuiltNsmrcslZW3MjNFKki7oXYRIgsqj8fI/358z/N87/vAy0jk45Qn
 k6xN5/VadaqCdiabHyqVgd5Wc/ymrqfr2I8LozT7zVpDsRWPBin2SUElwQ4N3ZGy4009JGt7
 +4JiR1rLaLZkqINgTWN2mq3t+02wf9rsUtZ8dxyFybiRy3kE11gXwNksF2iusfo0d87RSXJf
 pydI7nKTBXHzNm8ut8tERDkdcA5N5FOTM3j9xp2HnY/8qI7UWfDx5o7XdBZyyC4iJwbwFhht
 aZRcRM6MHN9HYG37JBUEOf6GYKpKKQrzCL5WFkn+Jfot76Si0IpgpPwmJSZmEFRVHBSYxoFg
 r8qhBXZb5IEbH5AQkOBJAoq/f178iWGcsAoeONYIHlccA10TA4TAJPYHS7tjiWU4BGrbSqQi
 u4Dj2hQpsAT7wL3ZsuWFfGFhuoYSZ0XA+ZkvSPR4QM/CpaVqgCcZyH81RomBcGi0V0pFdoVP
 fU3L7Akf83Okwm6AU+BSq0p8PgXm8l5S5F3Q9byMFCwSrARr60Zx1GrI+zVFiEkZGHPkotsf
 sudGl5NeUGgyLS/AwfSbCVSA1peuKFa6oljpigKl/4ddR6QFreV1Bk0Sb9iqU2n5Y0EGtcZw
 VJsUlJCmsaGlgwuItCPb4N5uhBmkWCUz8tXxckqdYcjUdCNgJAo3WVx6ZbxclqjOPMHr0w7p
 j6byhm7kxZAKD9kVajROjpPU6XwKz+t4/T+VYJw8s1C4cTa7hS0p3mM9E3377gxj1A0PD+q+
 zGdEhO4Y9q5/0RMVHLOf9roVba73vZrrMfTGGPvyjEv+SVefIvfOiMSG4rPKsN11zcZt0++o
 kA3hfaa89/sKt6uIzNhnoSqc0O73kjw7oXUfaGh/nOn3bG5MEzYPvXJH/+SAV/DP7PZIBWk4
 ot4cINEb1H8Bs6de3mwDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrPIsWRmVeSWpSXmKPExsWy7bCSvK7s+qVxBj2XTSxe/rzKZvFp/TJW
 i/lHzrFanJ6wiMni/PkN7BY3txxlsdj0+BqrxeVdc9gsZpzfx2TRfX0Hm8Xy4/+YLP7v2cFu
 sXTrTUYHXo/Lfb1MHptXaHlsWtXJ5rF5Sb1Hy8n9LB4fn95i8ejbsorR4/MmOY/2A91MAZxR
 XDYpqTmZZalF+nYJXBk/lngXrBKo2LbvPlsD40neLkZODgkBE4kzq56xdzFycQgJ7GCUuPR7
 LStEQlri+sYJ7BC2sMTKf8/BbCGBV4wSR77agthsAroSOxa3sYHYIkD22YUvGEEGMQu8YJKY
 +OYvE0TDM0aJXV+Zuxg5ODgFjCUOnuQHCQsLhEjMP9gM1ssioCqxau9JsHJeAUuJ5XtmsEPY
 ghInZz5hAWllFtCTaNvICBJmFpCX2P52DjPEaQoSP58uY4U4wU2i9c0HqBpxiaM/e5gnMArP
 QjJpFsKkWUgmzULSsYCRZRWjZGpBcW56brFhgVFearlecWJucWleul5yfu4mRnCcamntYNyz
 6oPeIUYmDsZDjBIczEoivDEli+KEeFMSK6tSi/Lji0pzUosPMUpzsCiJ836dtTBOSCA9sSQ1
 OzW1ILUIJsvEwSnVwLRGyOWKbsiK+QV2glXuD76tOe8dxDzVy3n77LWH+d3vWRXXPNP/4rh3
 mZaujqvVz01dsnlzytxLz0/rePvxN8dnWx9fn/KvLV28tT6Kx02aBS7sjbzX8WqN+vOea6wX
 rtX7LvVIEO/qrmE7ahmpf1dd8d+ViVLLOI46JwSxh4ZWFj+J9+s0MHBnat2X2pT+Yf5vq0lz
 F9qn9klPjOWffeaGtc6srDfz8gsb3r03npeyZYfSTsvbi3QZV2VLJms9+1b9kC1Eq/XkEWPL
 rmmOk5+sctoexlmxqXXfjy/OGa0MJ0z1/s184PLkoUiU6P4VnJ+7Lptu7Zv4WdrKzMzd4Nuv
 U/NZtLetbmNjD6w7oMRSnJFoqMVcVJwIAFlrMsVCAwAA
X-CMS-MailID: 20200426155613epcas5p22db6f4a090a05124ca987564645cfefe
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200417181014epcas5p1343bc81fb246133cc332d3fc7a394c15
References: <20200417175944.47189-1-alim.akhtar@samsung.com>
 <CGME20200417181014epcas5p1343bc81fb246133cc332d3fc7a394c15@epcas5p1.samsung.com>
 <20200417175944.47189-5-alim.akhtar@samsung.com>
 <20200422065414.GK20318@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_085622_278719_9FA24297 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
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
Cc: robh@kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, krzk@kernel.org,
 kwmad.kim@samsung.com, avri.altman@wdc.com, cang@codeaurora.org,
 stanley.chu@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph,

> -----Original Message-----
> From: Christoph Hellwig <hch@infradead.org>
> Sent: 22 April 2020 12:24
> To: Alim Akhtar <alim.akhtar@samsung.com>
> Cc: robh@kernel.org; devicetree@vger.kernel.org;
linux-scsi@vger.kernel.org;
> krzk@kernel.org; avri.altman@wdc.com; martin.petersen@oracle.com;
> kwmad.kim@samsung.com; stanley.chu@mediatek.com;
> cang@codeaurora.org; linux-samsung-soc@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH v6 04/10] scsi: ufs: introduce
> UFSHCD_QUIRK_PRDT_BYTE_GRAN quirk
> 
> On Fri, Apr 17, 2020 at 11:29:38PM +0530, Alim Akhtar wrote:
> > Some UFS host controllers may think granularities of PRDT length and
> > offset as bytes, not double words.
> >
> > Signed-off-by: Kiwoong Kim <kwmad.kim@samsung.com>
> > Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> > ---
> >  drivers/scsi/ufs/ufshcd.c | 30 +++++++++++++++++++++++-------
> > drivers/scsi/ufs/ufshcd.h |  6 ++++++
> >  2 files changed, 29 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
> > index ee30ed6cc805..b32fcedcdcb9 100644
> > --- a/drivers/scsi/ufs/ufshcd.c
> > +++ b/drivers/scsi/ufs/ufshcd.c
> > @@ -2151,8 +2151,14 @@ static int ufshcd_map_sg(struct ufs_hba *hba,
> struct ufshcd_lrb *lrbp)
> >  		return sg_segments;
> >
> >  	if (sg_segments) {
> > -		lrbp->utr_descriptor_ptr->prd_table_length =
> > -			cpu_to_le16((u16)sg_segments);
> > +
> > +		if (hba->quirks & UFSHCD_QUIRK_PRDT_BYTE_GRAN)
> > +			lrbp->utr_descriptor_ptr->prd_table_length =
> > +				cpu_to_le16((u16)(sg_segments *
> > +					sizeof(struct ufshcd_sg_entry)));
> > +		else
> > +			lrbp->utr_descriptor_ptr->prd_table_length =
> > +				cpu_to_le16((u16) (sg_segments));
> 
> No double words here.  "Normal" UFS uses the actual segment count, while
> Samsumg uses bytes.  Also no need fo the u16 count in either the old or
new
> version.
Ok, will update the commit message and take your suggestion in the next
version. 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
