Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E51F1D1215
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 13:59:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kp9eb0cMODsujmFGlAVUiVD/CaaBboHLYYylM/5162Y=; b=T0wURjB3O/gZqI
	yniAohvU3aaYuAdd9SCVjMhiJCdXcm6gQEdj99erBwfBeJJnvQv7QS2HlGOfk8h7q1D1eeaYvK8tr
	2C2Qe4in7nDCRVBj4kPNDvmD9xuGCHYexvWDgNNofF+gvWa0MtUYKYZ4qxtHIlRf6Po+/vhBOI92l
	QDt95SHv54Oi0GP+36dloxgz5BSZVmTiynJ4QXP7aEeQJ/qSblB7ZB13zM8cKEuNqEz50l2KUeD2G
	nMDPsiHef1pXfrfwoYuIrcKr85AWL9mQ3j5M8DzeSR2nC9oEl3aYL54Z562703p3YO4HKH3yDCXvi
	RKGk1PzJfDONR9tyNFSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYq3B-0003oy-O2; Wed, 13 May 2020 11:59:49 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYq34-0003oT-Aj
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 11:59:44 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200513115939euoutp0232b8474937726cf473527074704ebf44~OlKqwuGDf0308203082euoutp025
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 11:59:39 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200513115939euoutp0232b8474937726cf473527074704ebf44~OlKqwuGDf0308203082euoutp025
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589371179;
 bh=IdU1TrJvYO6blvliMNv61kauZcbyiIKmS9RW9kJxmoo=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=in/iFyv5pSQ9QNBYgdT6UmDCRpzQlyl+rI4C1gN3xw2yduRh1gs13zXi+wn/uaGvF
 MAy56qlh4Uh2Yhn5po0ilGLQZokUl9VkAtoPZueI34ozIn/eTinbo+D1U7O9oveirM
 QM55ozFDDqryjviAvNXdj0bdcwEfbQK3DDl9Gxag=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200513115939eucas1p29402f5f1d8f7e9a177769532dcf3c23f~OlKqiJF9-1130711307eucas1p2g;
 Wed, 13 May 2020 11:59:39 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 93.71.60679.A21EBBE5; Wed, 13
 May 2020 12:59:38 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200513115938eucas1p1266800d16772348d463297848374c9ce~OlKqJuoSe2297322973eucas1p1Y;
 Wed, 13 May 2020 11:59:38 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200513115938eusmtrp2c066742a3aa2966febea9984798726f9~OlKqJAP451935819358eusmtrp2a;
 Wed, 13 May 2020 11:59:38 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-72-5ebbe12adba7
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id E5.C8.07950.A21EBBE5; Wed, 13
 May 2020 12:59:38 +0100 (BST)
Received: from [106.210.123.115] (unknown [106.210.123.115]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200513115937eusmtip1e2ae9d8134e109dab1204c98ee4bfcfb~OlKomfHiy1068710687eusmtip1O;
 Wed, 13 May 2020 11:59:36 +0000 (GMT)
Subject: Re: [PATCH -next 010/491] ARM/SAMSUNG EXYNOS ARM ARCHITECTURES: Use
 fallthrough;
To: Stephen Boyd <sboyd@kernel.org>, Joe Perches <joe@perches.com>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <1c198736-230f-d0e6-6866-58d2e4e9f412@samsung.com>
Date: Wed, 13 May 2020 13:59:36 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <158414865091.164562.17682025008359421835@swboyd.mtv.corp.google.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRjm2zlnOxtOjtPYm4XBqEAhzVI6qYl2gdGPlAqCSmvlQS1v7Khp
 hEmlqZmX/mhTUbJQJ6ZN09QQHei81CzM28qJqA0TE3WJl6k5zyL/Pc/zXp73+fhITNJLOJOR
 MfGMMkYRJeOL8MauVf0Rt4nW0KPpq770sNlE0EXjkzidOzmL0f39dQJaMzlE0AvZRoLO2DAj
 eqClmE8X9rfx6K+95+jNoXc4rW6xoAA7+fxImkDerBoTyDXqTL68/vVDuVk9hMlzGtRIvqRx
 CRZcFfmFMVGRiYzSw/+mKKLkrYmImyaS2uelqWgdz0JCEigv2Kp6JchCIlJCVSIwf1LbiBlB
 Zk0ljyNLCPJL1EQWIndGhqcvcXoFgo38Wj5HFhCUZRh41r2O1DWor1pFVuxEnYaGP307mzDK
 xIMZUzHfWuBTnvC8M2enSUz5w3D2I8KKceoQLI8N7vTsoUKgr7ze1uMAPS+ncOsVQuoirHQF
 WWWMkoJhqpTH4QPQNFeMWb2AMgpgM60acUHPQnXlex6HHeGXrkHA4f2w1VzK4wYeI8hu/S7g
 SB6CcV2ZbdoXfujX+FZnjHKF2hYP7ikCoXUtgYP2MDLnwN1gDy8aCzBOFkNGuoTbcRDW1QW2
 C5zh2dQWnodkql3BVLvSqHalUf23LUO4GkmZBDY6nGGPxTD33FlFNJsQE+5+OzZag7Z/WN+m
 zvwBtVhuaRFFIpmdmDa0hkoIRSKbHK1FQGIyJ/GF2m1JHKZIvs8oY28oE6IYVov2kbhMKj7+
 aiZEQoUr4pm7DBPHKP9VeaTQORWlpY/EVV3XF8XPeVn2lv9eQS5ND+abG71779ToTunjzxDd
 xs8njZ1+J3xcdR3tT+o9e5IOtwU1OmQoA4JnlxU/vYc+Nlnm9B1XClh3bcpWYdG3Cr/kN67t
 tV8Wk2RxTYbZ8z7rTwm3sY6JUMvAaJ1GmCJyDvS73D3qmJs9GLnoJMPZCIWnG6ZkFX8BkpCT
 N10DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrFIsWRmVeSWpSXmKPExsVy+t/xu7paD3fHGXzfo2px/ctzVovZ9x+z
 WPQ/fs1scf78BnaLTY+vsVp87LnHatHx9wujxeVdc9gsZpzfx2Rx8ZSrxb9rG1ksVu36w+jA
 4/H+Riu7x85Zd9k9Nq3qZPPYvKTe48uqa8wefVtWMXp83iQXwB6lZ1OUX1qSqpCRX1xiqxRt
 aGGkZ2hpoWdkYqlnaGwea2VkqqRvZ5OSmpNZllqkb5eglzF33XPWgqesFQfeizcw/mbpYuTg
 kBAwkbj+NLiLkZNDSGApo8Sb31wQYSmJ+S1KIGEJAWGJP9e62LoYuYBK3jNKtBy5zwSSEBaI
 lti88icjiC0i4CSx5etpsDizwEsmibl/TCAaZjFJND4+CpZgEzCU6D3aB9bAK2Ancb2niRXE
 ZhFQlfh29yobiC0qECux+lorVI2gxMmZT8Du5BQIkvhxzB9ivrrEn3mXmCFscYlbT+ZD7ZWX
 2P52DvMERqFZSLpnIWmZhaRlFpKWBYwsqxhFUkuLc9Nzi430ihNzi0vz0vWS83M3MQLjddux
 n1t2MHa9Cz7EKMDBqMTDa3Frd5wQa2JZcWXuIUYJDmYlEV6/9UAh3pTEyqrUovz4otKc1OJD
 jKZAv01klhJNzgemkrySeENTQ3MLS0NzY3NjMwslcd4OgYMxQgLpiSWp2ampBalFMH1MHJxS
 DYw8ZwwfXdxp87pAmDFWW+l8h8qt+YqXPb2fLDyf7KTb0pjz/bpeqKnNjpg7tzhK5H1jPD7V
 6B72fq4Ulyb9/N7/CbMVPq+4sP3udg+OP0q3z8iV+XyYsN+165W2x+mo+ulXT3fIOs7qbNc0
 mBgxtzFkbWz0eu3EFeffCUouy4+/dW+1zt72el0lluKMREMt5qLiRAA9cGJR7QIAAA==
X-CMS-MailID: 20200513115938eucas1p1266800d16772348d463297848374c9ce
X-Msg-Generator: CA
X-RootMTR: 20200314011736eucas1p2e71f57e25bfb59f38cd86247efb07943
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200314011736eucas1p2e71f57e25bfb59f38cd86247efb07943
References: <cover.1583896344.git.joe@perches.com>
 <1d569e023b6cb7b8d0da8d1bcccd92e97fe436c8.1583896348.git.joe@perches.com>
 <CGME20200314011736eucas1p2e71f57e25bfb59f38cd86247efb07943@eucas1p2.samsung.com>
 <158414865091.164562.17682025008359421835@swboyd.mtv.corp.google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_045942_571935_D3E826E5 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kernel@vger.kernel.org, Chanwoo Choi <cw00.choi@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, linux-i2c@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14.03.2020 02:17, Stephen Boyd wrote:
> Quoting Joe Perches (2020-03-10 21:51:24)
>> Convert the various uses of fallthrough comments to fallthrough;
>>
>> Done via script
>> Link: https://lore.kernel.org/lkml/b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe.com/
>>
> 
> This link doesn't work for me. It leads to a redirect for 
> 
> https://lore.kernel.org/lkml/b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe@perches.com/
> 
>>  drivers/clk/samsung/clk-s3c2443.c | 2 +-
> 
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>

I have changed the link to
https://lore.kernel.org/lkml/b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe@perches.com/

and applied.

-- 
Thanks,
Sylwester

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
