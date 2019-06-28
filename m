Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40AF459C7A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 15:04:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5n93itRBW+o0N+8sEALDijE9TfyIK19aqXzBQV1N0wE=; b=DlJGYC5Gp/dxYg
	zLjL15QbQ6v2+hQxkpigCDPAw6qNuwMWlT196gBjJU7ALA4+1KG0TJSVgklV5l1RWJXOkvMZMuzez
	mJ/1p9HFnS5PX6Lv9vlKjfFbRgqk9aSl6oJY4Pj2BT5BNb+eAXWPVmVfxM/FLkclBHKUx5za/ZWx8
	jfkP3aVF+VEWnZGUZIF5hDSgzwqmfh3ZhU6UL1d0J7UrFY+DlbO/REj4bQN+az0P+tDyqTQvIq5iN
	Mk2WmigzMBrfSxxCE+qrKug/csE7eGjQ1NHuN9vx/HuLmq3G/Wg0S2q14+qtTu2UqcUJ5xY9G1e3J
	gm5XV/hADTYGd2SfS2Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgqYO-0002ii-Hk; Fri, 28 Jun 2019 13:04:36 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgqY8-0002hx-IU
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 13:04:22 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190628130418euoutp01aeba144346c0f90bb3f9377f95c9fbc6~sXnxCZ6eE0774307743euoutp01p
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Jun 2019 13:04:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190628130418euoutp01aeba144346c0f90bb3f9377f95c9fbc6~sXnxCZ6eE0774307743euoutp01p
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1561727058;
 bh=yyrN8XRVd80IqFK+hkiq7tC80Q9N+J4sVRhFbFfL/Ig=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=TukiLzc2+FZ6WrxF/Ehuze1u5JM2FcGL/dpqM5g5j5s1A+AWLGTbkYIIdQcK1R4B/
 ek5GWh0Jt9k8Dh2sBC2H4ppWGbSbaQHUmG/dxjyDt83NHlAR3fvqtLA6O3UeT2ijpd
 XeYkmRP7VhJK6/YL9p2ChD61ovVcCiL0fa2QpM54=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190628130417eucas1p25da61a012bd9cfd3806cba3b9af433d1~sXnwT-Ny00985109851eucas1p2K;
 Fri, 28 Jun 2019 13:04:17 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 4B.66.04298.150161D5; Fri, 28
 Jun 2019 14:04:17 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190628130416eucas1p2bf6968e95e821111066b0cf8e3e89148~sXnvco8Lm0991009910eucas1p2z;
 Fri, 28 Jun 2019 13:04:16 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190628130416eusmtrp1392196ef73b0d9bc4527c3c4c364a177~sXnvOgcZn2032020320eusmtrp17;
 Fri, 28 Jun 2019 13:04:16 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-f7-5d16105152a0
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 26.2C.04146.050161D5; Fri, 28
 Jun 2019 14:04:16 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190628130416eusmtip25a53d17dc929e9a7d69aebea0a2dfd4a~sXnup95d51124511245eusmtip2t;
 Fri, 28 Jun 2019 13:04:15 +0000 (GMT)
Subject: Re: [PATCH 09/12] fbdev: da8xx: remove panel_power_ctrl() callback
 from platform data
To: Bartosz Golaszewski <brgl@bgdev.pl>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <4ce97f34-0328-2708-f8d8-33c045014348@samsung.com>
Date: Fri, 28 Jun 2019 15:04:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190625163434.13620-10-brgl@bgdev.pl>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrEKsWRmVeSWpSXmKPExsWy7djPc7qBAmKxBrNb5Sy+zD3FYrHrwTY2
 izNv7rJbLGoQs7jy9T2bxYovM9ktnm5+zGRx/+tRRospf5YzWWx6fI3V4kTfB1aLy7vmsFns
 793A5MDr8f5GK7vH4mu3WT12zrrL7rFpVSebx6f+k6wed67tYfO4332cyWPzknqP4ze2M3l8
 3iQXwBXFZZOSmpNZllqkb5fAldH1ait7wQrmihe/57M1MD5l6mLk5JAQMJF49nEjkM3FISSw
 glHiy7EFUM4XRomtnZtYIJzPjBLzNuyGa9n2rZ0VIrGcUeLd7JdQVW8ZJdYc6mAFqRIWSJA4
 2DGLEcQWEVCXWLDuHthcZoGjzBIvL69mA0mwCVhJTGxfBVbEK2AnMWXpVjCbRUBV4tbSy2Dr
 RAUiJO4f28AKUSMocXLmExYQmxPojGVPW5hBbGYBcYlbT+YzQdjyEtvfzmEGWSYh0MohcbDh
 PzvE3S4Sb88/h7KFJV4d3wJly0icntzDAtGwjlHib8cLqO7tjBLLJ/9jg6iyljh8/CLQGRxA
 KzQl1u/Shwg7Sjy/0MgCEpYQ4JO48VYQ4gg+iUnbpjNDhHklOtqEIKrVJDYs28AGs7Zr50rm
 CYxKs5C8NgvJO7OQvDMLYe8CRpZVjOKppcW56anFhnmp5XrFibnFpXnpesn5uZsYgSnv9L/j
 n3Ywfr2UdIhRgINRiYf3B49YrBBrYllxZe4hRgkOZiURXslzIrFCvCmJlVWpRfnxRaU5qcWH
 GKU5WJTEeasZHkQLCaQnlqRmp6YWpBbBZJk4OKUaGAW3h++vf9tm7PNw8p6TFtt0q9/zHPxz
 /eVUxzsTbXPWc+ouvOvly3cmZ3VaqtQ1i3PPJi5qfpm7q28vm3iIGVvDpUCdw2e0Z7J0bn6a
 ZDI/NOi94+FJBfzprFl1si7HmZfP79uocPAv68GDAXNdtJbzsGv3y6+b7zWlZuu8vvvlb800
 6greP1ZiKc5INNRiLipOBADYz1FwdQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrEIsWRmVeSWpSXmKPExsVy+t/xe7oBAmKxBivmK1p8mXuKxWLXg21s
 Fmfe3GW3WNQgZnHl63s2ixVfZrJbPN38mMni/tejjBZT/ixnstj0+BqrxYm+D6wWl3fNYbPY
 37uByYHX4/2NVnaPxddus3rsnHWX3WPTqk42j0/9J1k97lzbw+Zxv/s4k8fmJfUex29sZ/L4
 vEkugCtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnfziYlNSezLLVI3y5B
 L6Pr1Vb2ghXMFS9+z2drYHzK1MXIySEhYCKx7Vs7axcjF4eQwFJGibd/9zB3MXIAJWQkjq8v
 g6gRlvhzrYsNxBYSeM0osWUbWFxYIEHiYMcsRhBbREBdYsG6e0wgc5gFjjNLLHwxhQ1i6AZG
 ib6Pf1lAqtgErCQmtq8C6+AVsJOYsnQrmM0ioCpxa+llsItEBSIkzrxfwQJRIyhxcuYTMJsT
 6NJlT1uYQWxmoG1/5l2CssUlbj2ZzwRhy0tsfzuHeQKj0Cwk7bOQtMxC0jILScsCRpZVjCKp
 pcW56bnFhnrFibnFpXnpesn5uZsYgfG97djPzTsYL20MPsQowMGoxMO7gEssVog1say4MvcQ
 owQHs5IIr+Q5kVgh3pTEyqrUovz4otKc1OJDjKZAz01klhJNzgemnrySeENTQ3MLS0NzY3Nj
 Mwslcd4OgYMxQgLpiSWp2ampBalFMH1MHJxSDYxe1vE+N/oNZp6OOubzL8487cRk74J/E4MX
 RpTZ2Z38mnAqbO7hdX8XiywWKYi6MftRAEtCq0/JexPdkD8NPmuF7HlClAt5DD7/0rtop/A4
 7LjS/wnRqrH31jEq57448OCzfZBG0toD4jdnK6xiqN9Sa/l+/nIxFseTQlFhW/c4Olafk5uw
 ep4SS3FGoqEWc1FxIgCAwQ2iBQMAAA==
X-CMS-MailID: 20190628130416eucas1p2bf6968e95e821111066b0cf8e3e89148
X-Msg-Generator: CA
X-RootMTR: 20190625163506epcas1p17f7af1c7debde2cf892b3f1caf261460
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190625163506epcas1p17f7af1c7debde2cf892b3f1caf261460
References: <20190625163434.13620-1-brgl@bgdev.pl>
 <CGME20190625163506epcas1p17f7af1c7debde2cf892b3f1caf261460@epcas1p1.samsung.com>
 <20190625163434.13620-10-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_060420_743481_5EBF06EB 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -2.9 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 2.3 TVD_SUBJ_WIPE_DEBT     Spam advertising a way to eliminate debt
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
> There are no more users of panel_power_ctrl(). Remove it from the
> driver.
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
