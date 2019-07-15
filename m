Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D1768851
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 13:44:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BWEhCLaFFGVk8tNoR/2dMhT5JQLnReNZ2hWNjXt1tCM=; b=NHOefytoR0iGA/
	v36RFVLWLNouHt2u7joAaDgoUljcGmRfG7/dRSJd1yrFoUTnQ7CdKb4F6AU3olz6Yf7SiyDeFo9Sg
	PHZ+V15Of6EVhslb3gUeZhQlvNXnJ8Q0KC1HS3QOAYAtNb4B0gNDNdGfG6UcSYC5bjA0Zemmqup2X
	9C8/7ANjUHG1jWhJFdc61fFyQNh9sZLzC2IL4jyHl/kmkmSb3O9Tjj/pRk1rSxaq6QSbO0vZeTU3r
	c2HIcT+zdMalB2DYN1g3FoaQSQ6pv/9pCGQu626QBEMGJttv51UO4DtzbZKXuSNfSCDSw2u8agpVl
	pyyd1Mi1lExz6egWFE4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmzPI-0005fc-FM; Mon, 15 Jul 2019 11:44:36 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmzP6-0005ej-2H
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 11:44:25 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715114421euoutp017ac61ae6c772d5ae0c9b367c890de993~xkf0ABBCZ0688506885euoutp01L
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 11:44:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190715114421euoutp017ac61ae6c772d5ae0c9b367c890de993~xkf0ABBCZ0688506885euoutp01L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563191061;
 bh=AwKQQepnCnmb88Wi6ptLbfbyKlASrHTT4QV8bbPXfpI=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=O0Vb5zf5wLDPDGFSBrUSu+KdIp6EYTOjjt2Q/s3PeP/nrfvHY59mr7dciwoht0go/
 Xyn8UH+40eP/jGFy/orUeg57TWaeFB4JStlZa/Sp8eiM0c4fItB7bguEidxewCmiwb
 vBFBO7pLrn+eCvrwilI9UpggCQ5Ahp70kkprEr8Q=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715114421eucas1p213669de44f9e9b06b2c2b8f811ec8f91~xkfzqES9Y0781407814eucas1p2P;
 Mon, 15 Jul 2019 11:44:21 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 19.0D.04298.4176C2D5; Mon, 15
 Jul 2019 12:44:20 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190715114420eucas1p28a118f4655551e1030df35799f911ba9~xkfy6Cy9X1570915709eucas1p2x;
 Mon, 15 Jul 2019 11:44:20 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190715114420eusmtrp2ddfbc3b00f16264a6859da595d45c4f1~xkfyr9GIZ2170321703eusmtrp2d;
 Mon, 15 Jul 2019 11:44:20 +0000 (GMT)
X-AuditID: cbfec7f2-f2dff700000010ca-5e-5d2c67149f4e
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id A0.88.04146.3176C2D5; Mon, 15
 Jul 2019 12:44:20 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190715114419eusmtip1f0fbf70115617422cab814a310162408~xkfySZ4Hw0464504645eusmtip15;
 Mon, 15 Jul 2019 11:44:19 +0000 (GMT)
Subject: Re: [PATCH v3 15/24] media: exynos4-is: Remove call to memset after
 dma_alloc_coherent
To: Fuqian Huang <huangfq.daxian@gmail.com>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <189ad2a0-c8ba-54f5-af34-5a0e8efee8fe@samsung.com>
Date: Mon, 15 Jul 2019 13:44:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CABXRUiQ_N=N=weMnRea4d6PXjfghta=U1xhdv-tZpSvaGBnXGg@mail.gmail.com>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrIKsWRmVeSWpSXmKPExsWy7djP87oi6TqxBkvWGFssO3WS1aL/8Wtm
 i/PnN7BbnG16w26x6fE1VovLu+awWfRs2MpqMeP8PiaLZZv+MDlweuycdZfdY9OqTjaPzUvq
 Pfq2rGL0+LxJLoA1issmJTUnsyy1SN8ugStj+fZzrAXtzBVN96axNjDuYupi5OCQEDCRuPbW
 rYuRi0NIYAWjRPP2/8wQzhdGiclzt7F3MXICOZ8ZJe5/FYdpOLfMG6JmOaPE8c2f2CGct4wS
 Z9oOMYM0CAskSvRM+8IEYosIaEt8PN0CNpVZ4AGTxIwPx9hAEmwChhK9R/sYQWxeATuJ6xv2
 gNksAqoSL86vA7NFBSIkTh2ZxwJRIyhxcuYTMJtTIFDiX+dzsOuYBcQlmr6sZIWw5SW2v50D
 doSEwCF2ick3eSBsF4lTz34yQdjCEq+Ob2GHsGUk/u+czwRynIRAM6NEz+7b7BDOBKCXjy9g
 hKiyljh8/CIryP/MApoS63fpQ4LCUeLKLRMIk0/ixltBiBP4JCZtm84MEeaV6GgTgpihIvF7
 1XSoC6Qkup/8Z5nAqDQLyWOzkDwzC8kzsxDWLmBkWcUonlpanJueWmyYl1quV5yYW1yal66X
 nJ+7iRGYkE7/O/5pB+PXS0mHGAU4GJV4eB1StGOFWBPLiitzDzFKcDArifDafgUK8aYkVlal
 FuXHF5XmpBYfYpTmYFES561meBAtJJCeWJKanZpakFoEk2Xi4JRqYFwetnhH8oqT5c8fqO9e
 OV2e+bKq3LFVEY7cerLT5hQdvxdxlk+qV/VD/Qn5jLVTJ/kHvY9Lr0pov1hoejjtWnDjt7Xe
 Easv7p35+1tpvsh0nhOTtY953udMSVPd3MjiuJJfaKnDdRm74Cv5HWEr3jvYqIfcqpiZeP3/
 Do4HYuePaao3TrsVn67EUpyRaKjFXFScCABuwyNCRAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrGIsWRmVeSWpSXmKPExsVy+t/xu7oi6TqxBk9OMlksO3WS1aL/8Wtm
 i/PnN7BbnG16w26x6fE1VovLu+awWfRs2MpqMeP8PqC6TX+YHDg9ds66y+6xaVUnm8fmJfUe
 fVtWMXp83iQXwBqlZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZ
 llqkb5egl7F8+znWgnbmiqZ701gbGHcxdTFycEgImEicW+bdxcjFISSwlFFiz+FOdoi4lMT8
 FqUuRk4gU1jiz7UuNoia14wSq06/YwdJCAskSvRM+8IEYosIaEt8PN3CDFLELPCISeJfz3d2
 iI4eJom7F54zg1SxCRhK9B7tYwSxeQXsJK5v2ANmswioSrw4vw7MFhWIkJh0bScLRI2gxMmZ
 T8BsToFAiX+dz8E2MwuoS/yZd4kZwhaXaPqykhXClpfY/nYO8wRGoVlI2mchaZmFpGUWkpYF
 jCyrGEVSS4tz03OLDfWKE3OLS/PS9ZLzczcxAuNw27Gfm3cwXtoYfIhRgINRiYfXIUU7Vog1
 say4MvcQowQHs5IIr+1XoBBvSmJlVWpRfnxRaU5q8SFGU6DnJjJLiSbnA1NEXkm8oamhuYWl
 obmxubGZhZI4b4fAwRghgfTEktTs1NSC1CKYPiYOTqkGxhmXq1g439pfk2dV2FtdNOnFr+9e
 IomnZn87uXDWiolzvn4+f3bNyyuTzlpvsnz2R/zRrlUfNybumKm4c/rbo0oBrh6akVrfshoc
 b7V6T1kiocb/tSRi0wrJaU/lmaUP1pRFaa1M9njotu8/96/OffGbv26TyTqoEhx3eQ+bVQWj
 mnt4TMN+zu1KLMUZiYZazEXFiQAo7uLT2QIAAA==
X-CMS-MailID: 20190715114420eucas1p28a118f4655551e1030df35799f911ba9
X-Msg-Generator: CA
X-RootMTR: 20190715090023eucas1p2ab541c5d4b4debe766295d3c6efbd1cd
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715090023eucas1p2ab541c5d4b4debe766295d3c6efbd1cd
References: <CGME20190715090023eucas1p2ab541c5d4b4debe766295d3c6efbd1cd@eucas1p2.samsung.com>
 <20190715031851.6890-1-huangfq.daxian@gmail.com>
 <37046e7b-fdde-c10f-4850-0b3efd4a00cd@samsung.com>
 <CABXRUiQ_N=N=weMnRea4d6PXjfghta=U1xhdv-tZpSvaGBnXGg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_044424_417200_69ADD831 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
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
Cc: linux-samsung-soc@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/15/19 11:43, Fuqian Huang wrote:
> Should I rewrite the commit log? Just mention that dma_alloc_coherent
> has already zeroed the memory and not to reference the commit?

I don't think it is really needed, since at hash 518a2f1925c3 dma_alloc_coherent() 
already zeroes the memory, so in fact all statements in your current commit 
message are true. 

-- 
Regards,
Sylwester

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
