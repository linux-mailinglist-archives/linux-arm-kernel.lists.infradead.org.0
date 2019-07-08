Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CA161F1C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 14:57:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8xbpEUE+sl7Ubk4zQFdzfU6jCA4dIP2PMcAXSQ5UA1o=; b=MUI0W1e7ZMmgtg
	mwbXY0IyoypbfuqR6wEOWtWImAjYmDiCJPoxrbaVCAjtI8aJdLGpJujynBHwUoA/LJTMvYQQVhD0E
	0mHLFuAsabhfb1IaDqPQtBj5XpeTbYwC1TZxz0+jHReGf+RCCC0dJnet+0GndqXECu9lV3ZyEyC0c
	fakG5Cczzx5grs1eAEqaRaptUwOP621r7+MQD0LdVV1CWqCskf2nR4rdotGh6/1GPZ/IY+rR1wZC0
	ZHThfLvtS3IF+u3g+Fo1ifGu4qW6kXu4+mLS7UmFMohnPrhbp30ntXJtVIWqcLwFbQd/UA2mLJcy6
	cv+moKUEkSfZ+Vjnq31Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkTD3-0007Sb-61; Mon, 08 Jul 2019 12:57:33 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkTCq-0007Rl-8k
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 12:57:21 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190708125716euoutp0207d3261f5c759b51ed2eafc7b14a2282~vb_fBknmt1916219162euoutp02K
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  8 Jul 2019 12:57:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190708125716euoutp0207d3261f5c759b51ed2eafc7b14a2282~vb_fBknmt1916219162euoutp02K
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1562590636;
 bh=moH9FyJACg7taxt6hPEp6Gwj8L3RJFkHFSIW10SGh/8=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=KjZPq+kZRaj0NXYVfFhf/qoo2Me1oDrgVPsyiGCFqjT41H/L5Dmq8t/SvXQ4PBtcP
 tXkoPOAS0CmZ84r6Wsb+LjpKjJ5tQCiNWpxLAbLzav3Hc80TwdBa5ikciPABs/QsUz
 jaf5uK7O1xbBhHFYBuDO50uaHeD7c4Y2XmoYCdQk=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190708125715eucas1p18070570968e5ad20755ba1e3578535aa~vb_d64wFK1523415234eucas1p1W;
 Mon,  8 Jul 2019 12:57:15 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 00.A7.04377.BAD332D5; Mon,  8
 Jul 2019 13:57:15 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190708125714eucas1p1f71616c08694fb91f20a664e59c339d0~vb_dNNfuL1523415234eucas1p1V;
 Mon,  8 Jul 2019 12:57:14 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190708125714eusmtrp1ef454f56758f1cc56e77b9357db5ea29~vb_c_6sdD1747017470eusmtrp11;
 Mon,  8 Jul 2019 12:57:14 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-41-5d233dabb673
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 9A.1A.04140.AAD332D5; Mon,  8
 Jul 2019 13:57:14 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190708125713eusmtip29fd40a6e2195085cb1853b84d3ad8143~vb_bebL6c2121721217eusmtip2-;
 Mon,  8 Jul 2019 12:57:13 +0000 (GMT)
Subject: Re: [PATCH v7 04/25] arm64: Substitute gettimeofday with C
 implementation
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <ed758c10-7260-bec3-caf1-08cae7e0968d@samsung.com>
Date: Mon, 8 Jul 2019 14:57:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <06c264a8-8778-18b1-1094-4281a4a2abc9@arm.com>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0wUVxjtt3N3ZiAuGRYNn4uVZIpNSqKIMfG2WKoNTSemPxpSG1NDy1An
 QISF7ABVa1Jaq+LKy0UFt3RdU1QYsZoBt7hImi4IKgbf6wsfBNJAEW0DWqmvsjs05d853znn
 fo9cnrEeY218rr1IcdjlPJGNJL7uyQsLj7z7RsbiI1ocrd47TGijZxLoC1c3Rx8dKgfqGX+d
 7mt8QGiZ/zGh+mDQTK/461la2/+IpTv0E0ADezqADro9LD3adYejlaPdDK3qv87Sy6cS6KQ+
 AHT3yM8c9TbdIrRF38PQjpeThI78dYasiJV87T6z1OxpBulK8BIjPfvHBdLEtW9N0kn3HU7y
 6sWSru1gpf7gKVZ62NfHSaebjpqkloZvpJoDU/7RrgEiXXSulypbNfg4+rPI5euUvNwSxZGU
 mhmZs7u52Vx4nNnQ/rQfSqHP5ASeR2EpBs9+5IRI3io0Au593MIaZAKw4dcKMMg44J9dzikl
 Ipy463QRQzgM+NzbyRlkDFB7UmcOuWKET7D1+x9JCM8WkvHk6Lbwu4zQwaJre2nYxE4JFacr
 IYQtQiq2De4P14mQgNeGBpkQniOswXNdHmJ4ovHsvqEwjhBS8F7NwXCWEWLxu4kms4Hj8Zex
 eibUDIUHPP4+3Goy5k5D35YKMHAM/tHTyhl4HvbWlBMjsAWwvP02Z5BqwHs93ulECnb2XDKH
 bsYIb+Exf5JRXok7q6qmTxmFN8aijSGi0OWrZYyyBcu2WQ13Aj7TaqfHseHOoVekGkT3jNXc
 M9Zxz1jH/X9fLxANYpViNT9bUZfYla8WqXK+WmzPXvRlQb4OU9+492XPRBv4n2cFQOBBnGXh
 54sZVrNcom7MDwDyjDjbIqfHZ1gt6+SNmxRHwReO4jxFDUAcT8RYy9ev3V9rFbLlImW9ohQq
 jv9UEx9hK4Vqy+U4/8X9vfd7tbmr3fH2RJr+w6efj0PMiQVtupiTtnLrO1vffFi4OXU8e9Ou
 5fOfnuHqkvXR7qwo8dXcsrr0YOnbNvigRn7v6uYbUUUBoSRXqk/LuEkSz4+UpxTczqI2LXg4
 qYNdtes3saFs8bK/1VWdHw5omZnvu39aezNpuEEkao6cnMg4VPlfv8cM1MIDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sb0gTYRzHebzb7SbNzmX4ZPTHS4yiVue/PZZaEeERvoiKCNuqKy8NnZPd
 JhVhFhZ5lNrUrGFLIUVtC7vMNBXSzJJgpdmMsD8ywcyclEZZGW2OwHcf+H4+L37wIzFVpyyM
 PJ5t4o3ZXBZNBOLP/z59v74hcZVu46QUiUqufsJRnW0GoFlLjxxN1l4CyDa1DF2v+4Kjiw+/
 40hyu2To1cNKAlUMTRKoULoPUFd5B0Buq41Aju53clQ03oOh4qFBAvW3R6AZaRigsrE7clRV
 /xZH96RyDHX8ncHR2Ndn+NZQtrmtWcbabXbAvnL1YezvXxbATr8+G8C2Wt/J2SrJzEoNhQQ7
 5GonWI/TKWef1DsC2Hu3zrCl1V5/vHsYZ1+KmWxRUwPYFZyqTjAazCZ+ZYZBMCXSBxgUpWbi
 kToqJl7NRGt0m6Ji6Q1JCWl81vFc3rgh6bA6o8xul+U0Yifafg6BfOAMEIGChFQMfC9acBEE
 kiqqBsDejxUyEZDeIQzeLKD9ziL4xyUSfmccQE/1J9w3LKL2wqaCG3McQjGwdfzCnIRRnQR8
 0CLK/UUpBkunLst9FuG1Lj8pAj5WUkmwxX1T5mOcioCvR9yYjxdT+6HF1Yr7nWDYe31kjhXU
 ZvihtGauxajV8I+tH/NzKDw3XS/z8wr4YKISKwEq67zcOi+xzkus85IqgDeAEN4s6NP1QpRa
 4PSCOTtdfdSgl4D3fZp7ZppagOjZ0wUoEtALlORyWqeScbnCSX0XgCRGhyi53St0KmUad/IU
 bzQcMpqzeKELxHqPu4KFLT5q8D5jtukQE8toUDyjidZExyE6VHmR6tSqqHTOxGfyfA5v/N8F
 kIqwfJCaEFTbui6CeaQ1Bu3drl04uOWxM3zpNzL54DDJjZIOrfNFZ9zw5I6B5CXaNRFv3Hnn
 b3sq23TF9q9L74qPcw8WTvz8rQ685jmSto+OYRPT+zpMiqlIx+iFnSndec2NY5bZ04k/ajRl
 5Zb2VRXPHAOR4dsU0rGKH+Lqz3l3HPtSaFzI4Ji1mFHg/gEST985VAMAAA==
X-CMS-MailID: 20190708125714eucas1p1f71616c08694fb91f20a664e59c339d0
X-Msg-Generator: CA
X-RootMTR: 20190628130921eucas1p239935b0771032c331911eacc1a69dd2e
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190628130921eucas1p239935b0771032c331911eacc1a69dd2e
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <20190621095252.32307-5-vincenzo.frascino@arm.com>
 <CGME20190628130921eucas1p239935b0771032c331911eacc1a69dd2e@eucas1p2.samsung.com>
 <1fd47b0d-f77f-8d07-c039-6ac9072834fc@samsung.com>
 <27386d82-2906-b541-f71d-3c61f5099bdf@arm.com>
 <530cd07e-0da7-1d83-be4e-b14813029424@samsung.com>
 <06c264a8-8778-18b1-1094-4281a4a2abc9@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_055720_521766_3390BD04 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
 Shuah Khan <shuah@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arch@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Andre Przywara <andre.przywara@arm.com>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org, Huw Davies <huw@codeweavers.com>,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Mark Salyzyn <salyzyn@android.com>, Paul Burton <paul.burton@mips.com>,
 Shijith Thotton <sthotton@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vincenzo, 

On 6/29/19 08:58, Vincenzo Frascino wrote:
> If I may, I would like to ask to you one favor, could you please keep an eye on
> next and once those patches are merged repeat the test?
> 
> I want just to make sure that the regression does not reappear.

My apologies, I forgot about this for a moment. I repeated the test with 
next-20190705 tag and couldn't see any regressions.

-- 
Regards,
Sylwester

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
