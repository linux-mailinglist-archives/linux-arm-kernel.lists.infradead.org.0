Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AAEE1C3ADF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 15:05:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u9UuFU6SmgAroxVjgnDWrx6OL7ElpxBIZjMfV8H+kVo=; b=E+VHzgwL7gz40W
	FlIxjQXHZe4Foz20/zpBpoq9YJnjk18ZbFpHsASAw8cLu6mRBq/lro0tGUAjOOHydIivMICLI8kuy
	rbn+69iGWPR19D4Zm0dNaG4n3AGjFlV5K5YE1OSn7ImxVngwPF87CSjguucR2p4TmIpeX45WIHHIy
	+ECeeyLX6BhHWSPKJrBSe5T3ZXlCik5ZR7i6jG8S1fBg9DL7d7tPKja8CchM5U1bjsmScCG8MM6dQ
	+Jj7TtWCutGngb6f8OB5KGjXJWiHhn2WS5/TWZP2K2kPKyj1lD4D+Szz2YGUoaU4el0VqG5ZNfyKj
	IDNKlMWR304KsxgxkhGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVan1-0001m3-Ei; Mon, 04 May 2020 13:05:43 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVamr-0001kr-TL
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 13:05:35 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200504130531euoutp0120a8d583b91bd4d5e71dd4fd04eadd1c~L1QnbX1pX0767107671euoutp01B
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  4 May 2020 13:05:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200504130531euoutp0120a8d583b91bd4d5e71dd4fd04eadd1c~L1QnbX1pX0767107671euoutp01B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588597531;
 bh=JTGetjNNq15iV79KzXV6+w93fh/gPnivI8fE5xYxYzg=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=pwiarWv/0YYqPuDtY/qQTJyG8WGkjvB0Loz1MWPh12ooAuvleG/CqSwCRdS5UIl1s
 PozwIl7jGRzcF8qXCvQMRE+g0TgLESH+cBkS3nRAQIlgocbOcL8QO+Xb1b+EThUkU+
 3gYzaSays9S31SMucCmt6ZtwBSf+5S/bCS3+RkKY=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200504130531eucas1p1099e600c4d2365791507a0dfd8dc7d6f~L1Qm_IG8C3232132321eucas1p1T;
 Mon,  4 May 2020 13:05:31 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 3D.94.60679.B1310BE5; Mon,  4
 May 2020 14:05:31 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200504130530eucas1p26a54459b7d646533997f344f80fa9c19~L1QmmMUTe1623416234eucas1p2H;
 Mon,  4 May 2020 13:05:30 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200504130530eusmtrp1e498827cd53b5885bd7ef4f387315eb7~L1QmliJIj0044500445eusmtrp1N;
 Mon,  4 May 2020 13:05:30 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-64-5eb0131b5d42
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id E6.1B.08375.A1310BE5; Mon,  4
 May 2020 14:05:30 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200504130530eusmtip225abacbe652fb54ff90c8cf8216f668e~L1QmABCzF1170111701eusmtip2U;
 Mon,  4 May 2020 13:05:30 +0000 (GMT)
Subject: Re: [PATCH v2 00/21] DRM: fix struct sg_table nents vs. orig_nents
 misuse
To: Christoph Hellwig <hch@lst.de>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <b257279c-4138-b28e-584d-92bd15571ae1@samsung.com>
Date: Mon, 4 May 2020 15:05:30 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200504125212.GA17241@lst.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrIKsWRmVeSWpSXmKPExsWy7djP87rSwhviDNr3i1r0njvJZLFxxnpW
 i//bJjJbXPn6ns1i5eqjTBYL9ltbfLnykMli0+NrrBaXd81hszj44QmrA5fHmnlrGD32flvA
 4rH92wNWj/vdx5k8Ni+p97j97zGzx+Qbyxk9dt9sYPPo27KK0ePzJrkArigum5TUnMyy1CJ9
 uwSujNOHNjIWbGCtWLx4I2sD4wyWLkZODgkBE4m7myaygthCAisYJe7sj+1i5AKyvzBKtBy6
 ywrhfGaUaF10lgmm48eR5ywQieWMEr1zNzBCOO8ZJd79e84IUiUsECLx/fxuZhBbREBJ4umr
 s2BFzALnmCRm9V8CW84mYCjR9baLDcTmFbCTmDn7FZjNIqAi8blxDlADB4eoQKzE9GshECWC
 EidnPgFr5RTQkTg47RjYfGYBeYntb+dA2eISt57MZwLZJSHwkl1i9c4TjBBnu0hc6fkB9bSw
 xKvjW9ghbBmJ05N7WCAamhklHp5byw7h9DBKXG6aAdVtLXHn3C82kIuYBTQl1u/Shwg7Shx9
 3M0OEpYQ4JO48VYQ4gg+iUnbpjNDhHklOtqEIKrVJGYdXwe39uCFS8wTGJVmIXltFpJ3ZiF5
 ZxbC3gWMLKsYxVNLi3PTU4uN8lLL9YoTc4tL89L1kvNzNzECE9rpf8e/7GDc9SfpEKMAB6MS
 D2/E5/VxQqyJZcWVuYcYJTiYlUR4d7QAhXhTEiurUovy44tKc1KLDzFKc7AoifMaL3oZKySQ
 nliSmp2aWpBaBJNl4uCUamBcM3fdcxXpV72G5/gY2H5EKvEelPJ9Xl5/Yk0cwyHVzaeTzd7y
 Wx/+X5gSNSVx31OXD9Gn+1dH1CTu+VLyv1+mNJ5ZtO9mpwLPm6jr2knFxg+blC7rd+Qwne9N
 sVv0461s60rBVpWo4wu7Wli5NB5mq37dcDvNSGt5yHqFZu4jp24x3Ht8e5ESS3FGoqEWc1Fx
 IgAXjwr8ZAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrEIsWRmVeSWpSXmKPExsVy+t/xe7pSwhviDLbOtLToPXeSyWLjjPWs
 Fv+3TWS2uPL1PZvFytVHmSwW7Le2+HLlIZPFpsfXWC0u75rDZnHwwxNWBy6PNfPWMHrs/baA
 xWP7twesHve7jzN5bF5S73H732Nmj8k3ljN67L7ZwObRt2UVo8fnTXIBXFF6NkX5pSWpChn5
 xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2NimpOZllqUX6dgl6GacPbWQs2MBasXjxRtYG
 xhksXYycHBICJhI/jjwHsrk4hASWMkrMm3weKiEjcXJaAyuELSzx51oXG4gtJPCWUeLOWx0Q
 W1ggROL7+d3MILaIgJLE01dnGUEGMQtcYJK4sfMoM0TDJkaJ/7uyQGw2AUOJrrcQg3gF7CRm
 zn4FZrMIqEh8bpwD1MzBISoQK9FyUROiRFDi5MwnYPdwCuhIHJx2DGwks4CZxLzND6FseYnt
 b+dA2eISt57MZ5rAKDQLSfssJC2zkLTMQtKygJFlFaNIamlxbnpusaFecWJucWleul5yfu4m
 RmD8bjv2c/MOxksbgw8xCnAwKvHwRnxeHyfEmlhWXJl7iFGCg1lJhHdHC1CINyWxsiq1KD++
 qDQntfgQoynQbxOZpUST84GpJa8k3tDU0NzC0tDc2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoR
 TB8TB6dUAyOfws/I+UnGq+6y5E/6///HPfaFT35kNjfJKbS8rmQz/u/y6dvr9m9VfCosf7ay
 7Yx3dbTkdK0wNOi211GMsdxiUMdzx7Rsu8fRw9u2pi+/UaZ4ReTOnQSTc7EzJ99QST01efUC
 4bNvVa+uj/rb43w3m5Mj1VUsJTJ0X87WP8H7+C4cnPbq6lQlluKMREMt5qLiRACU7P2j9QIA
 AA==
X-CMS-MailID: 20200504130530eucas1p26a54459b7d646533997f344f80fa9c19
X-Msg-Generator: CA
X-RootMTR: 20200504125032eucas1p2eeaf22690e6b557d69c834cc9dd75855
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200504125032eucas1p2eeaf22690e6b557d69c834cc9dd75855
References: <CGME20200504125032eucas1p2eeaf22690e6b557d69c834cc9dd75855@eucas1p2.samsung.com>
 <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125212.GA17241@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_060534_083720_840B285A 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 iommu@lists.linux-foundation.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph,

On 04.05.2020 14:52, Christoph Hellwig wrote:
> On Mon, May 04, 2020 at 02:50:17PM +0200, Marek Szyprowski wrote:
>> v2:
>> - dropped most of the changes to drm/i915
>> - added fixes for rcar-du, xen, media and ion
>> - fixed a few issues pointed by kbuild test robot
>> - added wide cc: list for each patch
> Didn't you plan to add dma_map_sgbuf and co helper?

Yes, I have a followup patches for that, but I wanted to fix the 
existing code in the first step. Then I wanted to send a wrappers and 
their application. Do you think I should do everything at once, in one 
patchset?

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
