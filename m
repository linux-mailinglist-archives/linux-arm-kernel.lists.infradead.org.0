Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1F51CE17C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 19:19:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wznu9IWgZPonzIGVF1bMSotIJFujt/Br+eunsneyzdo=; b=CTPTMJGUQqXWVY
	L1xKLAqbTf4A0F7fHeAcND2lvZq9cvkzfrldSoZmJLgHoq5vABnLcKe63tX20LrpuQTR4LJcJeZz/
	7QYvAIQJpapyl5WJUiw3QNQkYvC7HSWZ7jXmhYAsrpYWOgEbn6G+3BcIRcqC81O/uf//upHk8wzDU
	ireL53GQcQlLTXtHB/At+jG0kESjHPnvEfLc6mLaqNPKJBmq3n8cDKrtQ/d2KsVu8CJAg+KDdbyw2
	IsVx4G+pJEyIagarE1EofQ+c05BeAV4P7EgRFVhgDqqrTOwIkOxuGQECRAIHh9QACtTGdERogsnpP
	W6UoLLWkZCq+5NqwLw1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYC5j-0004SP-RK; Mon, 11 May 2020 17:19:47 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYC5b-0004Rm-N1
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 17:19:41 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200511171936epoutp02bef3824aea3c12e87a9babf871b05f43~OCPdGKKwh2777427774epoutp02d
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 17:19:36 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200511171936epoutp02bef3824aea3c12e87a9babf871b05f43~OCPdGKKwh2777427774epoutp02d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589217576;
 bh=XkZoF8bL+bmw6UFZu9nmezi2UN3bV2DKzUpjNkExP+A=;
 h=From:To:In-Reply-To:Subject:Date:References:From;
 b=RuqsoxaZPwCjgCwCu+zmgMdSh1sO9TFDsQTy/FdkdtpWhttU1KnAMIYRepj2DdSF/
 QiZLIhYqCbBkRvZrwNMdnH/qdCKw3nwMaFeVCWzQ2x9FvPO2XOLPMX7UkvBcNbGlc5
 odqZ6Wagfn4F4q4bxnrHGJ7YdmSXPNgxOIO7f+No=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTP id
 20200511171935epcas5p4837446790187456ca2d44680eed9d347~OCPb2hmUQ2639726397epcas5p4u;
 Mon, 11 May 2020 17:19:35 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 30.20.23569.72989BE5; Tue, 12 May 2020 02:19:35 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
 20200511171934epcas5p3d2a352c98597f5e2fb675335f44045e8~OCPbJPusS2275922759epcas5p3n;
 Mon, 11 May 2020 17:19:34 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200511171934epsmtrp286f54a97071b1c89e911cda715216d0e~OCPbIfG0q1266012660epsmtrp2b;
 Mon, 11 May 2020 17:19:34 +0000 (GMT)
X-AuditID: b6c32a4a-3c7ff70000005c11-82-5eb989276487
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 05.EA.25866.62989BE5; Tue, 12 May 2020 02:19:34 +0900 (KST)
Received: from alimakhtar02 (unknown [107.108.234.165]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200511171931epsmtip2f45b88acd7da81b800bef79fd132c195~OCPYb2bv30769707697epsmtip2o;
 Mon, 11 May 2020 17:19:31 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>, "'Jonathan Cameron'"
 <jic23@kernel.org>, "'Hartmut Knaack'" <knaack.h@gmx.de>, "'Lars-Peter
 Clausen'" <lars@metafoo.de>, "'Peter Meerwald-Stadler'" <pmeerw@pmeerw.net>,
 "'Kukjin Kim'" <kgene@kernel.org>, <linux-iio@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-samsung-soc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
In-Reply-To: <20200511083348.7577-1-krzk@kernel.org>
Subject: RE: [PATCH] iio: adc: exynos: Simplify Exynos7-specific init
Date: Mon, 11 May 2020 22:49:28 +0530
Message-ID: <037501d627b8$56f06870$04d13950$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJ1pKagA2Ry5zpOzQca1EbCUSXy4gH86Yp2p1Q/gjA=
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrHKsWRmVeSWpSXmKPExsWy7bCmpq565844gz3d3BYPmlYxWfQ/fs1s
 sev/G2aL8+c3sFssmTyf1WLT42usFvOOvGOxuLxrDpvFjPP7mCx+7zrG7sDl8eFjnMemVZ1s
 HpuX1HsseXOI1eN88xFGj8+b5ALYorhsUlJzMstSi/TtErgyFl3+wFSwk7ei9dUpxgbGZdxd
 jJwcEgImEh8Wb2LtYuTiEBLYzSgxZ9c9NpCEkMAnIGe7O4T9mVHiyNN6mIZZa5rYIRp2MUrs
 ndrNBFH0hlFiysJUEJtNQFdix+I2NpAiEYFeZomNn5eDTeUE6t7zcSuYLSzgKjH79jEWEJtF
 QFVi04cesEG8ApYSh/6eh7IFJU7OfAJWwywgL7H97RxmiCsUJH4+XcYKYosIWEm8XDCPEaJG
 XOLozx6omqUcEhdmcUDYLhJ/+iayQNjCEq+Ob2GHsKUkPr/bC3QPB5CdLdGzyxgiXCOxdN4x
 qHJ7iQNX5rCAlDALaEqs36UPsYlPovf3EyaITl6JjjYhiGpVieZ3V6E6pSUmdnezQtgeErsu
 /mGHhFQ7o0TPfcsJjAqzkPw4C8mPs5D8Mgth8QJGllWMkqkFxbnpqcWmBUZ5qeV6xYm5xaV5
 6XrJ+bmbGMFJSstrB+PDBx/0DjEycTAeYpTgYFYS4W3J3BknxJuSWFmVWpQfX1Sak1p8iFGa
 g0VJnDepcUuckEB6YklqdmpqQWoRTJaJg1OqgSmYYc2vhsITuiV1K+pFjD0n7PsxcYG001Sr
 Lw45Zytqm5Wn71x9/LpRuY2E3eH35keS7JevWJQYfNHUOP6b3l5Dzye7V0d2vbolGvzM867u
 mpud7xfVTn1/1j73RdfFNJHiR+k7PgYy9r50fsSl5Jh8e0m/7vTNt3uf2yqtPn853k5f5Nf9
 47f+f/CvzXKxDWveNPt58bHN/LmakVeX/3CW1PIwS/h0UFLxZMfRKbvvC79Xz+3REDHVOuNV
 qnvFo+1h/sLX7076eggtkM9UMeMWWur75iJ3LfeqzII3zkclTh4zmdfmeDcqUXTyi87OD7Ei
 9XIZjP9SknI/hUT8SfgWpWW1z2vCihlvD9qxrlViKc5INNRiLipOBADgRj7KwQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupkkeLIzCtJLcpLzFFi42LZdlhJXletc2ecwe7JUhYPmlYxWfQ/fs1s
 sev/G2aL8+c3sFssmTyf1WLT42usFvOOvGOxuLxrDpvFjPP7mCx+7zrG7sDl8eFjnMemVZ1s
 HpuX1HsseXOI1eN88xFGj8+b5ALYorhsUlJzMstSi/TtErgyFl3+wFSwk7ei9dUpxgbGZdxd
 jJwcEgImErPWNLF3MXJxCAnsYJSY/vA4O0RCWuL6xglQtrDEyn/PoYpeMUpcOz2fFSTBJqAr
 sWNxGxtIQkRgKrPEuW+n2SCqWhklji9/yQZSxQm0Y8/HrWC2sICrxOzbx1hAbBYBVYlNH3qY
 QGxeAUuJQ3/PQ9mCEidnPgGq4eBgFtCTaNvICBJmFpCX2P52DjPERQoSP58uAztCRMBK4uWC
 eVA14hJHf/YwT2AUmoVk0iyESbOQTJqFpGMBI8sqRsnUguLc9NxiwwKjvNRyveLE3OLSvHS9
 5PzcTYzg2NLS2sG4Z9UHvUOMTByMhxglOJiVRHhbMnfGCfGmJFZWpRblxxeV5qQWH2KU5mBR
 Euf9OmthnJBAemJJanZqakFqEUyWiYNTqoFpn5ZaAduqovV9K1iKDkoJXHdf+Shu6b2fDwRs
 tv21OXFLwaflkNUK7gcv3X1lrT9Jpp5xOzxvlb67Mlv88VeN3D2d9b2XU0WOeRpsVXa04zG8
 euVcRNIVu7V/l1VvWXh3l9Rf9RUC0RUSYeKMU2umfJr0Ye3rpk8iXjN+zneemJjy7/DqYyvE
 asyzK2Qa3sjzv1R6pmyv2GAeZWg6NXTHQWH2J0/XeuiYhe7r5gk3XXQxe8aP2zWL6i7XSAYK
 5gn17nTcLr+m4MiqCasT3Ffmc6nsWavrGrHhAmvsU+PUO7d45ompcOcWf1BhXbllUs/hY9cE
 6m/eP7hF/ueJeANbswdKxZN8zjJbz9U9sMdJiaU4I9FQi7moOBEArIs2DBwDAAA=
X-CMS-MailID: 20200511171934epcas5p3d2a352c98597f5e2fb675335f44045e8
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200511083406epcas5p18e835634e60f362dc408d73886aa5563
References: <CGME20200511083406epcas5p18e835634e60f362dc408d73886aa5563@epcas5p1.samsung.com>
 <20200511083348.7577-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_101940_280340_615FE65D 
X-CRM114-Status: GOOD (  15.79  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Krzysztof,
Thanks for the patch.

> -----Original Message-----
> From: Krzysztof Kozlowski <krzk@kernel.org>
> Sent: 11 May 2020 14:04
> To: Jonathan Cameron <jic23@kernel.org>; Hartmut Knaack
> <knaack.h@gmx.de>; Lars-Peter Clausen <lars@metafoo.de>; Peter Meerwald-
> Stadler <pmeerw@pmeerw.net>; Kukjin Kim <kgene@kernel.org>; Krzysztof
> Kozlowski <krzk@kernel.org>; linux-iio@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-samsung-soc@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Cc: Alim Akhtar <alim.akhtar@samsung.com>
> Subject: [PATCH] iio: adc: exynos: Simplify Exynos7-specific init
> 
> The Exynos7-specific code bits in ADC driver do not play with PHY:
> the field exynos_adc_data.needs_adc_phy is not set in exynos7_adc_data
> instance.  Therefore the initialization code does not have to check if it
is true.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
Tested on exynos7-espresso board so,
Tested-by:  Alim Akhtar <alim.akhtar@samsung.com>

> ---
> 
> Only build tested.
> ---
>  drivers/iio/adc/exynos_adc.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/iio/adc/exynos_adc.c b/drivers/iio/adc/exynos_adc.c
index
> 22131a677445..219c8eb32d16 100644
> --- a/drivers/iio/adc/exynos_adc.c
> +++ b/drivers/iio/adc/exynos_adc.c
> @@ -449,9 +449,6 @@ static void exynos_adc_exynos7_init_hw(struct
> exynos_adc *info)  {
>  	u32 con1, con2;
> 
> -	if (info->data->needs_adc_phy)
> -		regmap_write(info->pmu_map, info->data->phy_offset, 1);
> -
>  	con1 = ADC_V2_CON1_SOFT_RESET;
>  	writel(con1, ADC_V2_CON1(info->regs));
> 
> --
> 2.17.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
