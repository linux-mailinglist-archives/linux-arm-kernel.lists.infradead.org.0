Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B603183020
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 13:23:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fqRUAFm8FLS/Cx/B8zA6FO/cjLCl5cbyVVr0bfUJXJM=; b=VvfyRyJB2gEVxf
	X9XjvO0d7e2w2LwMzJKbLLWXj2Q/BNgWMMOUIPRJiFn+24QIMByuV5DiWpnqUoTeZQw9TCUNZ4tvq
	Zjc6xYru7n9EC7EUq6oyoLxRoUlkzb6vE0/Md+iWEXsDCrOcL9i2QHfhugJOKapUj9k99WFGmEYtV
	tgqyOE1t0+BwUivNLnaJXvyy87VEgRZkVKwz6JtFncqVFxxA6yaCYiFom1YUj96BKtmfBGFzBUFN/
	kTnzY6kEH4p7ZnUagKvStaJU4pnQ7ZQt6GlOxpTswjsrKaxkGEjvaqwCAHt+rlMUXDsqg64+JDS9C
	HtqXw9md7fGrAmCqfLMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCMry-0004WW-7i; Thu, 12 Mar 2020 12:23:22 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCMro-0004WC-Tz
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 12:23:16 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200312122310euoutp01adbf38d1ead1cfb1930e3b107c838277~7jfglcDuN1780817808euoutp01k
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 12:23:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200312122310euoutp01adbf38d1ead1cfb1930e3b107c838277~7jfglcDuN1780817808euoutp01k
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1584015790;
 bh=KzxZBLdgOdzsUcEhVdsz8kOz2UhbX/Mn/GC75XiJdQo=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=glCnOijCbw/nuM6NsdMmMVIECm1MiCzZUj2sSPIEi5DKYnfaFek4Jj6IfPgllMHzg
 g8GOID0f8wZKig1jvMfBGexf3ugTdTzqDc9LtWOZ3iLzy1GoQNKAj4E8gBEswIEAIi
 ZqiTvYCJF2VOh1PFfUiTf8OraQvMlM6dWLcol+vU=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200312122310eucas1p248d7df962a275fd68002c1b663bd5414~7jfgZ9dYs2610326103eucas1p2c;
 Thu, 12 Mar 2020 12:23:10 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 83.31.60679.EA92A6E5; Thu, 12
 Mar 2020 12:23:10 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200312122310eucas1p1165dfbb441a2f266968e1e00e2844d04~7jff9o2Sa0606306063eucas1p1g;
 Thu, 12 Mar 2020 12:23:10 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200312122310eusmtrp15834f53c8b385a8c2fde9062d825ae9b~7jff87kn_2583225832eusmtrp1k;
 Thu, 12 Mar 2020 12:23:10 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-15-5e6a29aeb3b9
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 6D.45.08375.EA92A6E5; Thu, 12
 Mar 2020 12:23:10 +0000 (GMT)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200312122309eusmtip1bf6446eaa137bee6ae0461c1c87828a4~7jffe4j6A2241122411eusmtip1t;
 Thu, 12 Mar 2020 12:23:09 +0000 (GMT)
Subject: Re: [PATCH] ARM: boot: Fix ATAGs with appended DTB
To: Geert Uytterhoeven <geert@linux-m68k.org>, Russell King - ARM Linux
 admin <linux@armlinux.org.uk>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <f30208dc-e74a-cae7-95e6-d99220d9735c@samsung.com>
Date: Thu, 12 Mar 2020 13:23:09 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdV9VyS3kBnhFT-5ry_O-aRafq-8Yor0xxxnjGqNQiSgZw@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTcRTut3t3d11OrvN1sigapBjlo/rjliYGJbcosIgMY+qqy9R01m5a
 RpK9RbSmFurUlB6YplazNKZCTnSWNrWFlkkpmWg08VXks9xulv993znfOd/54JCYtFvoTkar
 TrNqlSJWRojx6uap9o2VXjHhvsYZT3ouq1lEF+Vk4HRZTT1GF+ZnIXqwp15A6750CWmzvoCg
 nw+PCGjD7XpE3xkaIuiPmdkoaDlj7urEmJnpLMQMtlwnmMw3GxlDYypiqu5fYDIujxDMzTlf
 5mdbJs5M6FaHiMPEAcfZ2OhEVu0TGCmOSjf3CE/m2J8d6J0RpaBxuzRkRwK1BT63j6M0JCal
 1EMELV8nRTyZRPCjtBzjyQQCfY1FtDhSPVWM840SBE36XCFPLAj6HnfgVpUT5Q/G/lqBFTtT
 Svh18bZtL0Y9wmDwZqHQ2iAoP0izpBFWLKECQdP9zjaMU+sg29hl07hQcsgvbcR5jSO8yhuw
 YTtqP+j6hm0Yo9ZAjaUA47Eb9AwUCaxmQI2JIP31LYK/eyfMax4IeewE34zP/uZZBa3Z6Tg/
 cBlBv6lCxJN0BOZLuYhX+UOvaXphE7lg4QWP9T58eQdUf69B1jJQDvDe4sgf4QBZ1TkYX5ZA
 6jUpr/YArbHyn21Dx1tMg2TaJdG0S+Jol8TR/vctRngZcmMTuDgly21SsWe8OUUcl6BSeh+L
 j9OhhXdrnTdOvkD62aMGRJFIZi/xdY0JlwoViVxSnAEBicmcJRFrlOFSyXFF0jlWHR+hTohl
 OQNaSeIyN8nmu8NyKaVUnGZPsOxJVr3YFZB27ikomKgbPjLb9nsX2TCZ4vZbberlXJ8+7Qyt
 UB4y4h9CkPyK9CopD11WkFzqqz3l0hhkmkmoGuxPjRkrWrnr/O4VX5yaWrU+mvJgzwN5ReNr
 Kz69vHeC1NbdGH2iOrx3T21YS3OyZt9We7NHbvb8wf5t2zfY7w4oMOnHnSKp0WjHkjAZzkUp
 /NZjak7xBwUhp8RqAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrJIsWRmVeSWpSXmKPExsVy+t/xu7rrNLPiDP60clr8nXSM3WL+9F4W
 i1Xb9zJbzJ09idHi2a29TBabHl9jtbi8aw6bxdaX75gsDk3dy2gx78ULNovbEyczOnB7XL52
 kdnj969JjB7PTrSzeUw8q+tx6HAHo8fmJfUevc3v2Dz6/xp4fDszkcXj8ya5AK4oPZui/NKS
 VIWM/OISW6VoQwsjPUNLCz0jE0s9Q2PzWCsjUyV9O5uU1JzMstQifbsEvYyey7dYC6bzVDy5
 85u9gfETZxcjJ4eEgInEtp8LWLoYuTiEBJYySiz9/I8VIiEjcXJaA5QtLPHnWhcbRNFrRon9
 z1+zgySEBawljj/czQRiiwikS7w++YUZpIhZYC2zxISpMxghOrYyS/xYep4FpIpNwFCi6y3I
 KE4OXgE7iQnXr4DFWQRUJSYfvwa2TlQgVuLGzA4miBpBiZMzn4DVcAoESmx68BLMZhYwk5i3
 +SEzhC0vsf3tHChbXOLWk/lMExiFZiFpn4WkZRaSlllIWhYwsqxiFEktLc5Nzy021CtOzC0u
 zUvXS87P3cQIjOZtx35u3sF4aWPwIUYBDkYlHl4Dsaw4IdbEsuLK3EOMEhzMSiK88fLpcUK8
 KYmVValF+fFFpTmpxYcYTYGem8gsJZqcD0w0eSXxhqaG5haWhubG5sZmFkrivB0CB2OEBNIT
 S1KzU1MLUotg+pg4OKUaGBkLngpHnrNfep+b6Xrt5F39i05nTfVfWKO3+7fMlunvuPveWUt1
 +8px31c3Mzc4sFprNaPBJo5Th1gUeH8+vHMoYmuUZ1XmgVLJ9u+foozMH3fJaqRVNcSarNCq
 rnXZ6fH1l+/5HyZF76+wblRiLNyYZ/twZnvql9cLuG4XM++1e/1yxn/n50osxRmJhlrMRcWJ
 AKNhF/r8AgAA
X-CMS-MailID: 20200312122310eucas1p1165dfbb441a2f266968e1e00e2844d04
X-Msg-Generator: CA
X-RootMTR: 20200225144815eucas1p1229ceb0d017b46cbbe2409639a7c1f83
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200225144815eucas1p1229ceb0d017b46cbbe2409639a7c1f83
References: <CGME20200225144815eucas1p1229ceb0d017b46cbbe2409639a7c1f83@eucas1p1.samsung.com>
 <20200225144749.19815-1-geert+renesas@glider.be>
 <e249c123-8d00-4aa3-34b8-f82d52428966@samsung.com>
 <20200226174905.GE25745@shell.armlinux.org.uk>
 <CAMuHMdW1ojYyWXZpzgiy8PrZnR2PQ9n3SEDrQ7hFFUg0j-jegg@mail.gmail.com>
 <20200226175723.GF25745@shell.armlinux.org.uk>
 <CAMuHMdV9VyS3kBnhFT-5ry_O-aRafq-8Yor0xxxnjGqNQiSgZw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_052314_901078_1DF1359A 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Nicolas Pitre <nico@fluxnic.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 26.02.2020 21:48, Geert Uytterhoeven wrote:
> Hi Russell,
>
> On Wed, Feb 26, 2020 at 6:57 PM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
>> On Wed, Feb 26, 2020 at 06:56:06PM +0100, Geert Uytterhoeven wrote:
>>> On Wed, Feb 26, 2020 at 6:49 PM Russell King - ARM Linux admin
>>> <linux@armlinux.org.uk> wrote:
>>>> On Wed, Feb 26, 2020 at 07:35:14AM +0100, Marek Szyprowski wrote:
>>>>> On 25.02.2020 15:47, Geert Uytterhoeven wrote:
>>>>>> At early boot, register r8 may contain an ATAGs or DTB pointer.
>>>>>> When an appended DTB is found, its address is stored in r8, for
>>>>>> extraction of the RAM base address later.
>>>>>>
>>>>>> However, if r8 contained an ATAGs pointer before, that pointer will be
>>>>>> lost, and the provided ATAGs is no longer folded into the provided DTB.
>>>>>>
>>>>>> Fix this by leaving r8 untouched.
>>>>>>
>>>>>> Fixes: 137e522593918be2 ("ARM: 8960/1: boot: Obtain start of physical memory from DTB")
>>>>>> Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
>>>>>> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>>>> The original commit hasn't been submitted, so it can be fixed before it
>>>> hits mainline if you want.  Let me know what you want to do.  Thanks.
>>> Fixing the original is fine for me, of course.
>>> Thanks!
>> Please submit a replacement for 8960/1, thanks.
> Done.

Gentle ping. This fix is still not present in linux-next for over 2 weeks...

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
