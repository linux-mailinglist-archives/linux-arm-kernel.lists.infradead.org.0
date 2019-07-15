Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C16068856
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 13:45:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s/LGNhgESQY7tWunjp15d+Qv08KspS0x04C8G4/+a9Q=; b=KPGZGbN0qFsqFo
	LCV4kQA8ffmTDK2Ot5ecNewE0wAfnGaW1rrbiPKjQBhwS9ag6y+nUk0R7RQ/tYZsUkV7pbhROORHF
	A3BjxwYfZMLY22KkAZCg7BldZQkzkR6mWL3qFqle8Ud5TPHHmmhDo96dwrmm716QQdtFBkD+c37Hh
	c2jSQohLb667EzFx9oiInAxmSrczpeW4sz5TVwpsizyX0EcUUz6kKPWXe+7BXwyulL+z30nTOBRkw
	gSkAr55f1Ii2qxmOPGAam9lbgOh8g3U7mkgZBtha6Nzlac6NPUjDwH/PiAD8BjqaexdSiz/K3gCko
	xWt2jhR3mnOZEu4IX/vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmzQU-0007GC-Tm; Mon, 15 Jul 2019 11:45:50 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmzQH-0007Fa-6G
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 11:45:38 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715114535euoutp02d8f62ae88da1c7479b9c40ed89d2a339~xkg4oQ5oc0657006570euoutp02R
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 11:45:35 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190715114535euoutp02d8f62ae88da1c7479b9c40ed89d2a339~xkg4oQ5oc0657006570euoutp02R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563191135;
 bh=40EiB4H7MoaZdiztRc8Rbtl8i2zVu2AnjhBYn0gk6s0=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=mIwS6hkh1LL71wO4330XqTcQBmBnsZgEvly6TGYBfa1CDt7/efDw3JbO41b/38kC3
 S+x68Q0ddXuWE5IGQGwRFiATDgAAqA4+EL1njAttbINXjo7hzjjvkQakbkvHQIPZf6
 BmHDKiHg+DEQ/PEUaqPQ56C2bhwcdTmbN67O+EAA=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715114534eucas1p2b8e224d4e3d879926dbf649c9b26fb1f~xkg4PVTSx2237422374eucas1p2w;
 Mon, 15 Jul 2019 11:45:34 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id C1.3D.04298.E576C2D5; Mon, 15
 Jul 2019 12:45:34 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190715114533eucas1p2e63b98faa6d3888df025cedde5bc2696~xkg3hUdfd2942729427eucas1p2g;
 Mon, 15 Jul 2019 11:45:33 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190715114533eusmtrp2313d430b7d78b03a8408c11b8f7f1ca0~xkg3TL7bB2232122321eusmtrp2h;
 Mon, 15 Jul 2019 11:45:33 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-28-5d2c675e54e0
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 5B.A8.04146.D576C2D5; Mon, 15
 Jul 2019 12:45:33 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190715114533eusmtip10934fe449ce2140be28b810f11969a5d~xkg22_9KH0872608726eusmtip1m;
 Mon, 15 Jul 2019 11:45:33 +0000 (GMT)
Subject: Re: [PATCH v3 15/24] media: exynos4-is: Remove call to memset after
 dma_alloc_coherent
To: Fuqian Huang <huangfq.daxian@gmail.com>, linux-media@vger.kernel.org
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <92ced8c7-22cb-c6a2-6390-2f68f88e6841@samsung.com>
Date: Mon, 15 Jul 2019 13:45:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715031851.6890-1-huangfq.daxian@gmail.com>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA01SaUhUURjtzntv5s3kyHU0/FDJmBawcoOiB6YoWQ4E0Y8gMaymfKnoqM1z
 bzMVKbesNGswtXBrIpMZcyXD0TRNG1wSwVJRf1SORS6UaJnPp+S/853vnHu+A5cmFEbKgQ6P
 imW1UepIpVhG1nUsfnA9G7o/2GPsriNT0d1FMXcmpwnGbK6RML2pFgljmByimIGmIjGTXfOK
 Yh6aW0RMhWFZ5CtVNeo+S1QG/W2xylh2Q5Vbq0eqOcP2k1SQ7HAIGxkez2rdfc7Lwiw5xWRM
 hyix9etTMgXdF2UiKQ34ALzR56BMJKMVuApBxuQoKQzzCIZ+pFDCMIegwPia2LCY+w1iHitw
 JYIX0wGCaAaBKX0M8QtbrIbsB/NrGXZYBa1dLWJeROBsEeRPVK+9JMaekPM2d9VA03LsA78X
 T/E0iXfDwGD9WsA2HAjd7cUkj+XYBroeTZG8XIq9Yewnw9MEtofU+WeUgJ2hfqaI4KMAd0hg
 rrsZCUf7Q595cL2zLXzrrJUI2AlWGktEgiENQXbziEQY8hCMdZauu72grbOP4pMJ7AIvm9wF
 2g/SLCNingZsDcMzNsIR1nCvrpAQaDncylAI6l2wpC9cP8EBsqZWyDyk1G1qpttUR7epju5/
 biki9ciejeM0oSznGcUmuHFqDRcXFep2MVpjQKtf6f3fztkGtNB/wYQwjZRWct+QfcEKSh3P
 JWlMCGhCaSf3Xlil5CHqpGRWG31OGxfJcibkSJNKe/mVLeNnFDhUHctGsGwMq93YimipQwqy
 vfSkR+kcabEKu/p4ydj+q8Dp4LEg/7q+svLrbONKt4cZ4q85TuwJLM5NSPbjDKWmTKxMPLIj
 Aj9vasifkiUPX77ZM9DAaI7Hjm59V3jIaiXoe/msdVB6dXXlaZfCLK+BBBefo1ZecV9kjsuf
 2iqNveOuJR/TdwacsFQN/ZF2xCpJLkztuZfQcup/hIOQPEYDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrEIsWRmVeSWpSXmKPExsVy+t/xu7qx6TqxBjufalgsO3WS1aL/8Wtm
 i/PnN7BbnG16w26x6fE1VovLu+awWfRs2MpqMeP8PiaLZZv+MDlweuycdZfdY9OqTjaPzUvq
 Pfq2rGL0+LxJLoA1Ss+mKL+0JFUhI7+4xFYp2tDCSM/Q0kLPyMRSz9DYPNbKyFRJ384mJTUn
 syy1SN8uQS/jTe88loJjTBUHXy5iaWCczNTFyMkhIWAicf7SJjYQW0hgKaPE6y7BLkYOoLiU
 xPwWJYgSYYk/17qASriASl4zSmxdeJMZJCEskCjRM+0L2BwRAQ+Jgyf3gRUxC/QwSdxY/5gV
 ZJCQgI3EsTdcIDVsAoYSvUf7GEHCvAJ2Ej9+hoCEWQRUJS5f2Q52gqhAhMSkaztZQGxeAUGJ
 kzOfsICUcwrYStz/aAESZhZQl/gz7xIzhC0u0fRlJSuELS+x/e0c5gmMQrOQdM9C0jILScss
 JC0LGFlWMYqklhbnpucWG+oVJ+YWl+al6yXn525iBMbftmM/N+9gvLQx+BCjAAejEg+vQ4p2
 rBBrYllxZe4hRgkOZiURXtuvQCHelMTKqtSi/Pii0pzU4kOMpkC/TWSWEk3OB6aGvJJ4Q1ND
 cwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjDP0Ovn3lyw783vFu9TVD5ks
 XwksEi6brnoguLJ24rK2yXuuLjC79n6JjtR0HeeMRyaF8jf2qmVfztr0qifnbOJzpdb4vlA9
 u3dTOxbuff9GX/fhwXmzHWaeUzpXuM8nrvG/cqL47dUZR9a6aLt3X9j8ZEv0PsZNKgt+F/be
 tL0tV/eB6+yXJ7+UWIozEg21mIuKEwEm36Gf1QIAAA==
X-CMS-MailID: 20190715114533eucas1p2e63b98faa6d3888df025cedde5bc2696
X-Msg-Generator: CA
X-RootMTR: 20190715114533eucas1p2e63b98faa6d3888df025cedde5bc2696
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715114533eucas1p2e63b98faa6d3888df025cedde5bc2696
References: <20190715031851.6890-1-huangfq.daxian@gmail.com>
 <CGME20190715114533eucas1p2e63b98faa6d3888df025cedde5bc2696@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_044537_373945_FB6C184B 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/15/19 05:18, Fuqian Huang wrote:
> In commit 518a2f1925c3
> ("dma-mapping: zero memory returned from dma_alloc_*"),
> dma_alloc_coherent has already zeroed the memory.
> So memset is not needed
> 
> Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>

Reviewed-by: Sylwester Nawrocki <s.nawrocki@samsung.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
