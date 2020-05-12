Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26E821CF585
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 15:19:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bgqId0TC0UzV7VQ3TKqzbi/SYlf5/1qIOjvkJhDZ9X8=; b=WSJhQ9SjoQK1eh
	gHJtrf14F+fAt3b2L8K3mtcJpLMUj9KE0JeMNHte8buHfL4kzYgwHglPUObelos52SajUsn+M9DLQ
	B4q8WUffm058tWBCVcwAyPWLwlFKGK2s+NejBxW0yyGwknG2wSK2ACUmMSN6by+oovYo3E195SZDP
	zek6t2RlEx9yUXVES80GrvHpsNhVESDoG0+or4ZUNQ7J0r628PdJEaZvoKkWmj6aE4nD8Yw50Bqql
	PmZfWRCrIKQY4KWY8fPGoR/ontozhIBLPRm4bmoPzrfr1LVu+JW1nwDDkszUdkz3PDpOuTj2F1ZSc
	5nt9R8maPuLQkFQK4K+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYUok-0004NA-RN; Tue, 12 May 2020 13:19:30 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUoe-0004MC-DH
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 13:19:25 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200512131922euoutp025afd22380f3323bd3b23880289efae2d~OSm_-4X501012410124euoutp02v
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 13:19:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200512131922euoutp025afd22380f3323bd3b23880289efae2d~OSm_-4X501012410124euoutp02v
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589289562;
 bh=B/ciR2IpROe7ZVcb9QcrczNRLcFKZ9qwYAYyMFED23M=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=jn2uty/mX/bWxPPfLV248TzZvDItOv6iua5nMfJAI0icM5OvV60ItYHDx52eZyeUd
 uE0LnoigLMZlYgn/U0mgsOV5qC18TNVtcGURSG4Uz3RCDRC81jlTg5mpjebNPDVfXi
 HI+Rrh7GGmLapYd/WX6L/NB5JZHwcQaVlvy9Q/IA=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200512131921eucas1p18615f296ecd645f9f3ac1691776ceb10~OSm_iyyov0125301253eucas1p1Q;
 Tue, 12 May 2020 13:19:21 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 92.11.61286.952AABE5; Tue, 12
 May 2020 14:19:21 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200512131921eucas1p184bae0d7f1fada53e5360dd7e4619ea1~OSm_NY8b72876228762eucas1p1P;
 Tue, 12 May 2020 13:19:21 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200512131921eusmtrp2c9b40f9b50e1c7126477f67a29bba9b7~OSm_MuG1h0525705257eusmtrp2A;
 Tue, 12 May 2020 13:19:21 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-29-5ebaa2595f43
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 44.2D.08375.952AABE5; Tue, 12
 May 2020 14:19:21 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200512131920eusmtip2d8cc7f17c653dac201ed916440f213ac~OSm9nZRz_2661726617eusmtip2b;
 Tue, 12 May 2020 13:19:20 +0000 (GMT)
Subject: Re: [PATCH v4 01/38] dma-mapping: add generic helpers for mapping
 sgtable objects
To: Christoph Hellwig <hch@lst.de>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <dc49c74d-d580-3659-9c93-f932b6d1124f@samsung.com>
Date: Tue, 12 May 2020 15:19:20 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200512130936.GA24428@lst.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01SaUgUYRjum9ljXFobV8UXy471SDOvLBjyoKWISQiCKNLSXHVQ0V1lV02F
 8OpiTc0KskHzKswrz7TdUlGoTdY2USmzQMUjFETLg7LS3B0s/z3fc3zP+8JL4JJ+vj0Rq0xi
 VEp5vFQg4rW9+Wn0CK7QhXlrxrypPGMvRjUVNfCp9bZCnBpanhdQ1bWvMaqsy49aGhrHqOaJ
 D3xqUFcsoLoXJvnHRHTdozpEd6yU8ej2lTE+PZqrx+iWxxn057UJnL43XIXol58yBXR+aw2i
 F5t3nxGFiPyjmPjYFEblFRguiqnpnMEStXjqatcIlokGMA2yIIA8DPm/K/kaJCIk5FMEiwsF
 uEmQkEsImt7KOLy4IXx13wy05i3yOL4KgbYA48LzCH7k6wQmwZq8BH2vGs0f2ZBSmJp9h0wm
 nDRiwBYMmNMC0gc0cxpzQEwGQv+vaTPmkc5guN4tNGFbMhQMlS2I81hB78NJc9aCPAgVeZ1m
 P07ugfa5YpzDdjAyWWqeCMg5Icw0ZOHc2Cegr22Fz2FrmNW3Cjm8C9a1m4EcBOPGeiH3uI1g
 MLsIcS4/+GJc3agjNircoEHnxdEy0OknhSYaSEsYnrPihrCEu20PcI4Ww60bEs7tAqz+2b/a
 7v4B/A6SsltWY7esw25Zh/3fW4Z4NciOSVYrohm1j5K54qmWK9TJymjPyARFM9q4M8Oa/vsL
 tDwQ0YNIAkm3i7dd1YVJ+PIUdZqiBwGBS23E12K1YRJxlDwtnVElXFYlxzPqHrST4EntxL4V
 M6ESMlqexMQxTCKj2lQxwsI+ExW6742cSVv2f+9RX2KgC09lXSiVjdY6KSMaq2eTOoLK2Ccl
 2Tm0IHco6dDR+06Coro/funHnQNsXYdtZOzJXH3j1Lfym4WKj5WOjvv8y1McLBPkFqfP78iR
 OYTELdmd83NrsnW9GBvkmxE13lLjciR1Orw6Mjx5v5sN08yeDQh+LuWpY+Q+B3CVWv4XN2CJ
 sGMDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrKIsWRmVeSWpSXmKPExsVy+t/xe7qRi3bFGfxaLGXRe+4kk8XGGetZ
 Lf5vm8hsceXrezaLlauPMlks2G9t8eXKQyaLTY+vsVpc3jWHzeLghyesDlwea+atYfTY+20B
 i8f2bw9YPe53H2fy2Lyk3uP2v8fMHpNvLGf02H2zgc2jb8sqRo/Pm+QCuKL0bIryS0tSFTLy
 i0tslaINLYz0DC0t9IxMLPUMjc1jrYxMlfTtbFJSczLLUov07RL0Mlbte8lUsJO54tf+W0wN
 jJeYuhg5OSQETCS29H5m6WLk4hASWMoo8eLkfmaIhIzEyWkNrBC2sMSfa11sEEVvGSV+7z4B
 1i0sECNxZs8GsAYRASWJp6/OMoIUMQtcYJK4sfMoM0THPiaJrXM3sIFUsQkYSnS97QKzeQXs
 JC78fgZmswioSpxuPcgOYosKxEqsvtbKCFEjKHFy5hMWEJtTQEdiUe8+sHpmATOJeZsfMkPY
 8hLb386BssUlbj2ZzzSBUWgWkvZZSFpmIWmZhaRlASPLKkaR1NLi3PTcYkO94sTc4tK8dL3k
 /NxNjMAo3nbs5+YdjJc2Bh9iFOBgVOLhZajdFSfEmlhWXJl7iFGCg1lJhLclc2ecEG9KYmVV
 alF+fFFpTmrxIUZToOcmMkuJJucDE0xeSbyhqaG5haWhubG5sZmFkjhvh8DBGCGB9MSS1OzU
 1ILUIpg+Jg5OqQbG/CdS6y0uK6U1OvnxXKk97nFaP3mDhE0B06cj7Fdt/y9Q4bz8VSpz1qOn
 74us+K7u8WifouegVScxdeKqk44aK9kis1LEtItEN8x7fqs1yEm2YfHBzAuJE5VLr290evVi
 Vnr50bgj5ZyZ8f0mtTvVMxMzIw9tfybeOpvRl6exTMztiJXDvOlKLMUZiYZazEXFiQC/O/cU
 +AIAAA==
X-CMS-MailID: 20200512131921eucas1p184bae0d7f1fada53e5360dd7e4619ea1
X-Msg-Generator: CA
X-RootMTR: 20200512090107eucas1p13a38ce5ce4c15cd0033acaea7b26c9b0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200512090107eucas1p13a38ce5ce4c15cd0033acaea7b26c9b0
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <CGME20200512090107eucas1p13a38ce5ce4c15cd0033acaea7b26c9b0@eucas1p1.samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <20200512121808.GA20393@lst.de>
 <1a80255d-81de-2c5d-6d06-ea126fd7f994@samsung.com>
 <20200512130936.GA24428@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_061924_651799_0292C13B 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On 12.05.2020 15:09, Christoph Hellwig wrote:
> On Tue, May 12, 2020 at 03:00:31PM +0200, Marek Szyprowski wrote:
>>> 	if (n <= 0)
>>> 		return -EINVAL;
>>> 	sgt->nents = n;
>>> 	return 0;
>>>
>> Indeed this version looks much better. I will resend it in a few minutes.
> I could also just fix it up when applying the patch.
Fine for me.

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
