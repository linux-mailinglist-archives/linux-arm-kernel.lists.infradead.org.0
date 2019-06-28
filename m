Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB7859C31
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 14:59:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pFxgYUqgFYotpdWZ24H7xZwk4XbvyBzbg6wWExJcuLQ=; b=VBuvbCc6GHJ8lc
	N/lRo43wYENmiJJvETQ9laGerZ9j5My797RbmAkFlPcUjCk5hw0SKbVKZv78ibYw3v/FjEr84c6lU
	Su2WZMs5lRKFvGDZzpNlaDUf57Y084mGhl1d2dTl5XHhqdeXYk62IPkzFiXCRiEjbAu5KoCT6QHgH
	T4dIxp+stS/08laG6Fz97CRwKU0sg2iA65MDyJue+GxMQyziSedZ0MAY3kFR+NSiEmJ0HpUnlK8RX
	3TfkwB0ETH3s1Yzfr9CQPw+pP6QuzUNrhEPQtivlKZ4KDeI+2JmBdnmfEHRPVJ9g/4qw8O0ORKW11
	p92quLjYgDMhmNpxo3Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgqSu-000887-PC; Fri, 28 Jun 2019 12:58:56 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgqSf-00087T-HS
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 12:58:43 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190628125838euoutp0289abb12bbafdf8dd0c18ff0768b16b96~sXi0f_clh0793007930euoutp023
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 12:58:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190628125838euoutp0289abb12bbafdf8dd0c18ff0768b16b96~sXi0f_clh0793007930euoutp023
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1561726718;
 bh=+fXjqMD80dTEeznXW+urjzkEHk1O/732pqOUC3IDfkY=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=ZkaWLVUL/EDXvoRU+nPTD+5uB4JPBVfqwGgNBXD662dRx11Kh6eZQk3XZAse4DO8E
 8dLELWVvCGbqSzbr7mzD6px75tuYqA64KoyUkuOyWvhUdWG4OI94vEbExQeN+c1AKC
 vacLiBG9VSo9sPkdgYgmskyWCT2TGCHyIUeH3FnQ=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190628125837eucas1p117ade18f8ad2f92ca5b5d444c1f33336~sXiz1d8Ax0757307573eucas1p1P;
 Fri, 28 Jun 2019 12:58:37 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 30.5A.04377.DFE061D5; Fri, 28
 Jun 2019 13:58:37 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190628125836eucas1p26db88c2fc26c7fdfbc9015a0c5252e1a~sXiy5cATZ1701517015eucas1p2P;
 Fri, 28 Jun 2019 12:58:36 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190628125836eusmtrp282053a9d728b660cbaafa6575e430aee~sXiyrSAiU0722007220eusmtrp2m;
 Fri, 28 Jun 2019 12:58:36 +0000 (GMT)
X-AuditID: cbfec7f4-12dff70000001119-98-5d160efdb846
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id C9.34.04140.CFE061D5; Fri, 28
 Jun 2019 13:58:36 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190628125836eusmtip27d2be573ba8b7c8512826cc4a44f92b2~sXiyJxH5i0729607296eusmtip2e;
 Fri, 28 Jun 2019 12:58:36 +0000 (GMT)
Subject: Re: [PATCH 01/12] backlight: gpio: allow to probe non-pdata devices
 from board files
To: Bartosz Golaszewski <brgl@bgdev.pl>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <bec514d8-a005-5c10-7770-d6fcd541ded4@samsung.com>
Date: Fri, 28 Jun 2019 14:58:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190625163434.13620-2-brgl@bgdev.pl>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTYRjG+87ZOTuOJp9z6atdGVRU5OwGJ5OoMDgFZf0RpCG68jStbcqW
 ZVclcuUiK5PKZSp2MS10WGhTKVrNaRdDFBPNZrXAyqXorAztcjxK/vf73vd5eJ8HPoZUuKlQ
 JtlwgDcaNDoVLZNUN4w0Lx3zD4oLf9eygPVdfy5ha3uqafZlX7eULckMYtuG+2n2ji9fyn66
 /5Fg3cNOxOaNlhJs1cd2im3MGaDY1toCmn18zkask3P9HVlS7kZ7F8XZrd1Srqo8m+YGzzdR
 3Nv2eppzn3UR3P2bGZyro4bghqrmbJPFyiITeV3yQd6oXpsgS3p9y0ekmun0rnOjVCbKpizI
 jwG8ErJa+0iBFfgOgpF6nQXJ/rEPwaClUSIuhhD0tYVNGjqbPlGiqBTBo+91SHx4EXwtyScs
 iGECcTw4zGrBoMQLobjiHSFoSOwk4XPrXVpY0DgCLp4uRwLL8Vp44jk1HkmC50OXrWw80gy8
 E9wNNkrUBEBTvmc8kR9eAa/sDwmBSRwMnZ6iCZ4LNd4CUjgGOIsBxw2xG+AoKDHfo0UOhC+u
 B1KRZ8EfexEhGioQjJ3pnXDXICi99HvCsQaeuloooRqJF0FlrVocr4fON3VSYQzYHzq8AWII
 f8itvkKKYzmcMStE9QKw3bbRk2ct9jLyAlJZp1SzTqljnVLH+v9uMZKUo2A+zaTX8qblBv5Q
 mEmjN6UZtGF7UvRV6N+3e/Hb5XuIakd3OxBmkGq6vFgWFKegNAdNh/UOBAypUspDmpVxCnmi
 5vAR3pgSb0zT8SYHmslIVMHyo9N6dimwVnOA38/zqbxxckswfqGZaEflhwFlSERjfMyJTH3q
 htXHCzce2/d+3q+o06OXyZMDCf3DGRtio3d7vkWPBRZm5zuznUMGr3azetpQ3pX4gNUPml/+
 yaMcWauW6LzK3Nl30323gut/aq0/7OqYZw05m9JnNbRtPau8djXIKf/s2dITFrX9UG/C4NwX
 4bgjci+lt6okpiTNssWk0aT5C0HcfRJyAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrIIsWRmVeSWpSXmKPExsVy+t/xe7p/+MRiDc5c07L4MvcUi8WuB9vY
 LM68uctusahBzOLK1/dsFiu+zGS3eLr5MZPF/a9HGS2m/FnOZLHp8TVWixN9H1gtLu+aw2ax
 v3cDkwOvx/sbrewei6/dZvXYOesuu8emVZ1sHp/6T7J63Lm2h83jfvdxJo/NS+o9jt/YzuTx
 eZNcAFeUnk1RfmlJqkJGfnGJrVK0oYWRnqGlhZ6RiaWeobF5rJWRqZK+nU1Kak5mWWqRvl2C
 Xsb5pV+YCtrYKm73/mFtYOxk7WLk5JAQMJG4dfIpkM3FISSwlFHi6bImti5GDqCEjMTx9WUQ
 NcISf651sUHUvGaU6J/zjxGkRlggXuJQmz5IjYiAusSCdfeYQGqYBY4zSyx8MYUNJCEksJ5R
 YtMSTxCbTcBKYmL7KkYQm1fATuLgkxawI1gEVCVub1jJDGKLCkRInHm/ggWiRlDi5MwnYDan
 gLHE2Z07mEBsZqBlf+ZdYoawxSVuPZkPFZeX2P52DvMERqFZSNpnIWmZhaRlFpKWBYwsqxhF
 UkuLc9Nzi430ihNzi0vz0vWS83M3MQKje9uxn1t2MHa9Cz7EKMDBqMTDu4BLLFaINbGsuDL3
 EKMEB7OSCK/kOZFYId6UxMqq1KL8+KLSnNTiQ4ymQM9NZJYSTc4HJp68knhDU0NzC0tDc2Nz
 YzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2MGldzvQSD45nTk++qz/W3jRc7Fi+Y08f9
 VMd/gb/FUaUtznyRJ9s/zm59oHDm8oG7H7LCl0/64in6Q3vPulP/+pTOBZyd/sx/boxD3eU+
 89PKUzynRMza8rmYy/vs7saKNZ0hfHzGKTHxXnOW7L2ksJGFbx7fdo7o1y+19R1NJ/L/cdif
 eilJiaU4I9FQi7moOBEAbTZJqwQDAAA=
X-CMS-MailID: 20190628125836eucas1p26db88c2fc26c7fdfbc9015a0c5252e1a
X-Msg-Generator: CA
X-RootMTR: 20190625163457epcas3p2e246a27cb3ec0f0ffa48d32561ff3972
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190625163457epcas3p2e246a27cb3ec0f0ffa48d32561ff3972
References: <20190625163434.13620-1-brgl@bgdev.pl>
 <CGME20190625163457epcas3p2e246a27cb3ec0f0ffa48d32561ff3972@epcas3p2.samsung.com>
 <20190625163434.13620-2-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_055841_873786_4E7FDCCD 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 David Lechner <david@lechnology.com>, Kevin Hilman <khilman@kernel.org>,
 Jingoo Han <jingoohan1@gmail.com>, Linus Walleij <linus.walleij@linaro.org>,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, linux-fbdev@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 6/25/19 6:34 PM, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> Currently we can only probe devices that either use device tree or pass
> platform data to probe(). Rename gpio_backlight_probe_dt() to
> gpio_backlight_probe_prop() and use generic device properties instead
> of OF specific helpers. Reverse the logic checking the presence of
> platform data in probe(). This way we can probe devices() registered
> from machine code that neither have a DT node nor use platform data.
> 
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Reviewed-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
