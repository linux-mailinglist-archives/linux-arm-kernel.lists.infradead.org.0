Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 482FD59C91
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 15:06:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nHF757gsYqvol8kMXA0Oco0DazTXHLqjPbniSlj7h7M=; b=edTwzoBMU/xS74
	Nrdb9izfK7d7181IvSPNVLo921FCVRJh3y9SvOdiMnhrWZS/AScP2j8tWxSQrV8ctYoVgsOHkHFT2
	imyLQ1Hhann3/mUMnOcVGE2JLAlMfj3OI2q+S4Dk2TRsoYusXc2Wbkd7e1tXSDUxwHOVzPMv8BUb3
	fKGqLCMfwJIsSp80kEd8KJKHn+veui5bptgVECjO65Vyj50JV0sIsGwgzD04ltN1sLv/307ZxQLFS
	w5sK0+2YNNxK+jrCy42TT+gYyd2EUPURB/AkFT22zQ13jFxzrnNR3AJH0AaAxfEbWtsDaDcGVuGmV
	Olvp4GS4CkgoN8uOuxqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgqa9-0004in-P6; Fri, 28 Jun 2019 13:06:25 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgqZt-0004hy-0Y
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 13:06:10 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190628130607euoutp0239aaddc13b7b3017e8a92fb424e11242~sXpWSM2m-1239412394euoutp02k
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 13:06:07 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190628130607euoutp0239aaddc13b7b3017e8a92fb424e11242~sXpWSM2m-1239412394euoutp02k
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1561727167;
 bh=LNtMGok1x3cjZg39LfQejzodC8B1D/r3TRp6k46vC1Q=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=PqbXjhZBV0ES/q2SAFhj5bo1RwnGEeRCfgkfdqg4ZvG5li/g4aWD8qS+U4LgyR5BR
 5Hl8UUrpntuN8yJV1JWXEU4UdDhhHUgN8hW3XppSAVOLFXLDCeLvQkQCjxZMdOwaJB
 B67zO17m8xHkxwQ+mNH0XP1sHosWu33vQm75iCf4=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190628130606eucas1p2dcc7beeaf924327bf9d0a7f4c9c90138~sXpViTct90578905789eucas1p2J;
 Fri, 28 Jun 2019 13:06:06 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 24.6B.04377.EB0161D5; Fri, 28
 Jun 2019 14:06:06 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190628130605eucas1p1fd85f471fd86a6914ea887604efca6b4~sXpU5tKWO0890808908eucas1p1b;
 Fri, 28 Jun 2019 13:06:05 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190628130605eusmtrp1262afc22988935ca9709960c4a14470b~sXpUmdApT2189221892eusmtrp1D;
 Fri, 28 Jun 2019 13:06:05 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-fe-5d1610be0f8c
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 3A.55.04140.DB0161D5; Fri, 28
 Jun 2019 14:06:05 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190628130604eusmtip257086c7bb5aa31f0e0ef95b53c86ea90~sXpUETlEF1247912479eusmtip2s;
 Fri, 28 Jun 2019 13:06:04 +0000 (GMT)
Subject: Re: [PATCH 12/12] fbdev: da8xx: use resource management for dma
To: Bartosz Golaszewski <brgl@bgdev.pl>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <84ef4c04-430d-0545-ff81-567f366fe035@samsung.com>
Date: Fri, 28 Jun 2019 15:06:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190625163434.13620-13-brgl@bgdev.pl>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01SWUwTURT1zdahYXBaEC51i40LbizGj4kLwYSP+dEY0ShCxSoTILJoCygq
 oSooFnfcaDSiEtYEajEUGlmEQEWBgCgBBKmIUQlEgWLUIEoZiPyd++4595yTPBqX20gFHRUb
 L2hi1dFKSkqUNfxqWV/Fuqt873xnOPv9lwRnsZVRXNNQr4R7pHPn3ox/o7h8e5aE+1T6EeP6
 xusRd3MiD+NMHztI7sWV7yTXbrlHcdWXjVgAw3/rTJPwjzvekXyFoVfCmwovUvzo1UaS7+l4
 RvF9GVaML81J4a2dZowfMy3ZKd0v3RIuREclChof/4PSyIbPduroI/yEoTREhz5geuREA7sR
 fp3NQXokpeVsPgLDjzFCHOwIRobNpDiMIah4bUOzEn21bYaVh6D/4ciMfhhBS/cA4WC5sjx0
 3uqbVrixqyC7+D3mIOFsPQ5f24sox4JiN8H1C4XTJIb1B9vYV4kDE+wKKKrpnj60gN0HfQ1G
 UuTIoDFLNHCaimHMPDONcdYDugceYCJeCubhe7jDDNgzNLxoLpupGgifUg2EiF1h0PpUIuJF
 8CrzEiEKihH8Sf8yozYjyMucpETWZqiztk3FoKcsVkOJxccBgd0GuRnHROgCncMyMYML3Ci7
 g4vPDKSfl4s3VoIx10jNuuorCvBrSGmY08wwp41hThvDf9tsRBQiDyFBGxMhaDfECse9teoY
 bUJshPfhuBgTmvp3ryat9nJkmThUi1gaKZ2ZbKm7Sk6qE7VJMbUIaFzpxni2uKnkTLg66aSg
 iQvTJEQL2lq0kCaUHsypebYQORuhjheOCMJRQTO7xWgnhQ65nW72XbtYx/SGoT1e5t1FWdvL
 XW6Pyo5Z3iYPpRYu0z2g0WvPwORKv+S2nvDg0NbxoP5KRU/53Upyx+LPXXrFLs+gGplH3TLT
 tabg1Byvh7InSa2Jvn8rnzceWD4/YOvv/tCQn0NVqgtBewtU67pKU4Y+dAVdjbp+rtF5MK2E
 72lREtpItd8aXKNV/wNKnIshcwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrIIsWRmVeSWpSXmKPExsVy+t/xe7p7BcRiDWYcl7b4MvcUi8WuB9vY
 LM68uctusahBzOLK1/dsFiu+zGS3eLr5MZPF/a9HGS2m/FnOZLHp8TVWixN9H1gtLu+aw2ax
 v3cDkwOvx/sbrewei6/dZvXYOesuu8emVZ1sHp/6T7J63Lm2h83jfvdxJo/NS+o9jt/YzuTx
 eZNcAFeUnk1RfmlJqkJGfnGJrVK0oYWRnqGlhZ6RiaWeobF5rJWRqZK+nU1Kak5mWWqRvl2C
 Xsax51/YChYxV8zaHN3A+JCpi5GTQ0LARKJr/wMWEFtIYCmjxNwNoV2MHEBxGYnj68sgSoQl
 /lzrYuti5AIqec0ocXzSSjaQhLCAh8SNqfcZQWwRAXWJBevuMYEUMQscZ5ZY+GIKVMcGRomX
 Wy+DbWMTsJKY2L4KrINXwE7iweeX7CA2i4CqxOoDt8CuEBWIkDjzfgULRI2gxMmZT8BsTqBL
 N0xuBLOZgbb9mXeJGcIWl7j1ZD4ThC0vsf3tHOYJjEKzkLTPQtIyC0nLLCQtCxhZVjGKpJYW
 56bnFhvpFSfmFpfmpesl5+duYgRG97ZjP7fsYOx6F3yIUYCDUYmHdwGXWKwQa2JZcWXuIUYJ
 DmYlEV7JcyKxQrwpiZVVqUX58UWlOanFhxhNgZ6byCwlmpwPTDx5JfGGpobmFpaG5sbmxmYW
 SuK8HQIHY4QE0hNLUrNTUwtSi2D6mDg4pRoYz3kvurpw4tywY0YTjN7mOxz0Lkvft8YvyFvz
 ietxra/fYrYwR91X5b1xx/rM/yoLgXUmW3XYbk/lkrjKId3jXpTLFDT7OP/3UuXbfAl3ZZtn
 9bpmRr/8nDq19NjE29LzuB2szy0UUmvtds0w2skhxXu4Y+JfG2XZ7U675qaLmf/bO9mmLfaD
 EktxRqKhFnNRcSIALXftgQQDAAA=
X-CMS-MailID: 20190628130605eucas1p1fd85f471fd86a6914ea887604efca6b4
X-Msg-Generator: CA
X-RootMTR: 20190625163514epcas3p3b094a54f96c59c38b94ce56b6fc08f63
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190625163514epcas3p3b094a54f96c59c38b94ce56b6fc08f63
References: <20190625163434.13620-1-brgl@bgdev.pl>
 <CGME20190625163514epcas3p3b094a54f96c59c38b94ce56b6fc08f63@epcas3p3.samsung.com>
 <20190625163434.13620-13-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_060609_186278_5A797A59 
X-CRM114-Status: GOOD (  10.54  )
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
> Use managed variants of dma alloc functions in the da8xx fbdev driver.
> 
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Acked-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
