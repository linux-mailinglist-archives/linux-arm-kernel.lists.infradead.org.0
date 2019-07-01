Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1A95BB7B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 14:28:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8pt+hRBfR75WRWFDUzCDRM6YDlxdCSG0MJfv7IZFdig=; b=hmnI+I+QcMcH/D
	Pn8z2UdOhj7ppxUC50Ml73E2j83Sbcfh5ViMZz+Ofqze0sX01P9vny3exz2ol6tsOuQ96i+ige447
	t+3RV7iiMU7fwFOuPYxP5jzNW+lQxzvu/tR2IO8iXqTQndiaiLqR3Te9dw4Qt3JUW+N7CTFngIM4h
	iSYqv9YMAMRbNKKZzHMT7JuiCsMf18IOqoAWgl3FoV/0szQyoIxNkxB/xMaB84HTXG0DqqeIf0etR
	4NpThYAI+yyimKrOQWQORv9V70epoEpl1/yI+Pha9sKK/1l4qSI6oGC2Cf4sIOdY9ri2tULX9EeAs
	7ecOT885ZklBrKqdpTpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhvPl-0004pF-Ak; Mon, 01 Jul 2019 12:28:09 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhvPb-0004ec-U8
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 12:28:02 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190701122756euoutp02e8f3c2ba6bad80f22c48399f37218772~tSD3yQuM-1868818688euoutp02z
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  1 Jul 2019 12:27:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190701122756euoutp02e8f3c2ba6bad80f22c48399f37218772~tSD3yQuM-1868818688euoutp02z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1561984076;
 bh=Hx0x2zbLgjF0f2X6qYJaj0io7AMHEwjMRrJnmP/v1+4=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=DTWV0hy755ozyTq+W60ZrT7/Ho/DdXqpu5b9Qg5dL3ANvIMrKbfKgMJ7p2bTYwPyl
 xfqXeeKUN+UHb8SEdDy64KKgnsQAhbbwG47uU/QgVL1Ky0927ASMTl18KqRwobrJMi
 nC9wsGxp4kg/9hFs0Wy2tCUN5TStoCpY9ZlS3Ii8=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190701122755eucas1p156372a2c826bc0f7e86607f6e65ce63c~tSD22MBCl1727617276eucas1p1c;
 Mon,  1 Jul 2019 12:27:55 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 01.80.04325.B4CF91D5; Mon,  1
 Jul 2019 13:27:55 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190701122754eucas1p1d3dec4883761c4669591cd4a712dc539~tSD2BZGcb1707717077eucas1p1R;
 Mon,  1 Jul 2019 12:27:54 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190701122754eusmtrp1c37c4c15b12c2b0c6b3bb97ffd3e5dce~tSD1zHN_Y2350123501eusmtrp1M;
 Mon,  1 Jul 2019 12:27:54 +0000 (GMT)
X-AuditID: cbfec7f5-b8fff700000010e5-07-5d19fc4b1623
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 42.64.04140.A4CF91D5; Mon,  1
 Jul 2019 13:27:54 +0100 (BST)
Received: from [106.120.51.74] (unknown [106.120.51.74]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190701122753eusmtip107a13dc98816fd15e9c713a96ba8c60e~tSD1EUDm13120331203eusmtip1_;
 Mon,  1 Jul 2019 12:27:53 +0000 (GMT)
Subject: Re: [PATCH v2 7/7] arm64: dts: allwinner: a64: enable ANX6345
 bridge on Teres-I
To: Maxime Ripard <maxime.ripard@bootlin.com>
From: Andrzej Hajda <a.hajda@samsung.com>
Message-ID: <64471471-5b4d-3c1f-a0e3-e02ee78ca23c@samsung.com>
Date: Mon, 1 Jul 2019 14:27:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190701095842.fvganvycce2cy7jn@flea>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTcRjG+5/bjqPFcVa+WnRZERRollb/KKQrnagPXb6UIXasg0k6Y0ft
 Sq3MMMuyJGVLNyujqYPEy9KVraYpJU5NKy1tdiULTfIC62I5j4HffrzP87wvD7wsqTYzgWys
 NlHUaYU4DaOkbHUeV9CW3wGRIefapuEM11MCp9Z9Rviv7QqJzbUuGrcNfWfwcNszAqfcusvg
 cnsjjQduvCXw+SsFClz64SWNW+25DL79qoXA3T0OhFOraxW4q6QR4bLSayT22E0U9jibiDV+
 /C3PCMFbTVbEm6zH+U813xT8dX0LxZe8L6b56uF8iq8ydo3O0gw0X1p0nuH7XC4Ff2+4m+Yd
 eVYF775QT/BlBaf4+x16ZptvhHL1fjEuNlnULQ7fqzxgTPlFHvo048jw4yqkRw3T05EPC1wY
 PM94RKUjJavmLAgMxiKFV1BzgwgGCxbIwgCCdo+F+Z/4YX5NysIdBE32wvF4L4LirEuE1+XH
 RcBlR84YT+WCICM/i/aaSK6VhoHmL2MCwy2EP2UdY2tVXDh49HbSyxQ3H5rM3bSXp3G7oLXc
 jmSPLzw1fKS87MOFgsnxbmwPyYVA7c1cWubZcK83l5TZH15/NBPew8C1s/DC2q+QO2yAcnfL
 OPvB1/rycZ4JDVkXKZlPgdtylpTDaQgqSqpIWVgFNfUttMxr4We/c5TZUZ4C7b2+8uEpcNWW
 Q8pjFaSdU8vuueBurBjf4g+3m4eYTKQxTqhmnFDHOKGOcUKdfEQVIX8xSYqPEaVQrXg4WBLi
 pSRtTPC+hPhSNPq2DSP1Q5Xo4e9oJ+JYpJms0ndCpJoWkqWj8U4ELKmZqnJYAiLVqv3C0WOi
 LiFKlxQnSk40g6U0/qrjk7r3qLkYIVE8KIqHRN1/lWB9AvUoKt1Wq5qzr7hGFztnxBBRqQ1/
 ELZ1R8iznr7+2c1bMxICCoXd2WSPru7S+sG1fW98LSeWLis7vWuJ4a3R3RX8pDpw78qdrphH
 mSu/RJ30+5mXmb7ZdP2MNWy5LSg1O3TFNU/2u4vK6HzVuo60zk0plkHhw6yNycS8nEnvE6Sz
 i/9u/6yhpAPCkkWkThL+AUKHY5WyAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHec9tR2l1nLdXI8whXWm2TfO10kqIDn4K6kNZYiMPKu0iO1t0
 +dBiZbbQlLJomluoJGa0VFJnMlpmqDgzU1FYXlKji7cuo5ldnCvw24/n+f8eeOBP46LHZCSd
 o9ZxWrVCKaYCia7fL93bUhcj0rdf+bwOFbg6MHS5fQqgP0+KcWRpc5HozfdZCnnedGLIWPGI
 Qg32bhJ9vfcWQ1eLKwWo7t0AifrsZRSqGuzF0OgHB0CXW9sEyG3rBqi+rgRHXns5gbzOHmxv
 MFvh/Y2xteW1gC2vPc9OPv8kYEsNvQRrG39Asq0eK8E2m91Ls/w7JFtXc5ViZ1wuAdvoGSVZ
 x91aATty7SXG1ldeYFuGDNTBoDTJbq1Gr+PWZ2t4XZL4mBTJJNJEJJHFJUqk8oT0nbJ4cWzy
 7kxOmXOa08Ymn5Bkm40/8dzJtWc8z5qBAXSFmUAADZk4+MUyjJtAIC1iqgC85R6h/Itw2GKZ
 xv0cDBcHTJQ/9AnAi5dmBL5FMJMGXzmMy6EQZhsssN4gfSGcGSRhyU0b4TfuE3DOUbR8lmI2
 w1/1Q8ssZJKh12BftgkmBvZYRkkfhzJHYGFe6b9MEOy4M0H4OICRw3LHGOZjnJHApsEF0s9R
 sHG6DPdzOByesGBFQGReoZtXKOYVinmFYgVEDQjh9LwqS8XLJLxCxevVWZKTGlUdWKrLk3Zv
 QxMwzRxyAoYG4lXCTcMwXUQqTvNnVU4AaVwcInRUR6SLhJmKs+c4rSZDq1dyvBPELz1XjEeG
 ntQslU+ty5DGSxNQojRBniDfgcThwnzm2XERk6XQcac4LpfT/vcwOiDSAIpSzIUvqnYl9RdP
 O0tWhe7ZN2enD6f+Cnt9N2B87sfUgktHzSibvRWPjTJr33viW0fmhuh8W76wIGh7YZ99fqgz
 9li/1ZRkK6ONu/Qx16PsUUeDZxdGD4cc2O/pdY3lyhNLHdFtqx+qK/Ma5j/mbNzauOZ2R/XT
 vSkp7Up3niFNTPDZCukWXMsr/gKK1jwnRAMAAA==
X-CMS-MailID: 20190701122754eucas1p1d3dec4883761c4669591cd4a712dc539
X-Msg-Generator: CA
X-RootMTR: 20190607094103epcas1p4babbb11ec050974a62f2af79bc64d752
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190607094103epcas1p4babbb11ec050974a62f2af79bc64d752
References: <CA+E=qVckHLqRngsfK=AcvstrD0ymEfRkYyhS_kBtZ3YWdE3L=g@mail.gmail.com>
 <20190605101317.GA9345@lst.de> <20190605120237.ekmytfxcwbjaqy3x@flea>
 <E1hYsvP-0000PY-Pz@stardust.g4.wien.funkfeuer.at>
 <20190607062802.m5wslx3imiqooq5a@flea>
 <CGME20190607094103epcas1p4babbb11ec050974a62f2af79bc64d752@epcas1p4.samsung.com>
 <20190607094030.GA12373@lst.de>
 <66707fcc-b48e-02d3-5ed7-6b7e77d53266@samsung.com>
 <20190612152022.c3cfhp4cauhzhfyr@flea>
 <bb2c2c00-b46e-1984-088f-861ac8952331@samsung.com>
 <20190701095842.fvganvycce2cy7jn@flea>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_052800_279444_63F45EB8 
X-CRM114-Status: GOOD (  28.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Sean Paul <seanpaul@chromium.org>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Torsten Duwe <duwe@lst.de>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01.07.2019 11:58, Maxime Ripard wrote:
> Hi!
>
> On Fri, Jun 28, 2019 at 12:39:32PM +0200, Andrzej Hajda wrote:
>> On 12.06.2019 17:20, Maxime Ripard wrote:
>>>> I am not sure if I understand whole discussion here, but I also do not
>>>> understand whole edp-connector thing.
>>> The context is this one:
>>> https://patchwork.freedesktop.org/patch/257352/?series=51182&rev=1
>>> https://patchwork.freedesktop.org/patch/283012/?series=56163&rev=1
>>> https://patchwork.freedesktop.org/patch/286468/?series=56776&rev=2
>>>
>>> TL;DR: This bridge is being used on ARM laptops that can come with
>>> different eDP panels. Some of these panels require a regulator to be
>>> enabled for the panel to work, and this is obviously something that
>>> should be in the DT.
>>>
>>> However, we can't really describe the panel itself, since the vendor
>>> uses several of them and just relies on the eDP bus to do its job at
>>> retrieving the EDIDs. A generic panel isn't really working either
>>> since that would mean having a generic behaviour for all the panels
>>> connected to that bus, which isn't there either.
>>>
>>> The connector allows to expose this nicely.
>> As VESA presentation says[1] eDP is based on DP but is much more
>> flexible, it is up to integrator (!!!) how the connection, power
>> up/down, initialization sequence should be performed. Trying to cover
>> every such case in edp-connector seems to me similar to panel-simple
>> attempt failure. Moreover there is no such thing as physical standard
>> eDP connector. Till now I though DT connector should describe physical
>> connector on the device, now I am lost, are there some DT bindings
>> guidelines about definition of a connector?
> This might be semantics but I guess we're in some kind of grey area?
>
> Like, for eDP, if it's soldered I guess we could say that there's no
> connector. But what happens if for some other board, that signal is
> routed through a ribbon?
>
> You could argue that there's no physical connector in both cases, or
> that there's one in both, or one for the ribbon and no connector for
> the one soldered in.


This is not about ribbon vs soldering. It is about usage: this
connection is static across the whole life of the device (except
exceptional things: repair, non-standard usage, etc).

And "the real connector" is (at least for me) something where end-user
can connect/disconnect different things: USB, HDMI, ethernet, etc. And
obviously to be functional it should be somehow standardized. So even if
there could be some grey area, I do not see it here.


>
>> Maybe instead of edp-connector one would introduce integrator's specific
>> connector, for example with compatible "olimex,teres-edp-connector"
>> which should follow edp abstract connector rules? This will be at least
>> consistent with below presentation[1] - eDP requirements depends on
>> integrator. Then if olimex has standard way of dealing with panels
>> present in olimex/teres platforms the driver would then create
>> drm_panel/drm_connector/drm_bridge(?) according to these rules, I guess.
>> Anyway it still looks fishy for me :), maybe because I am not
>> familiarized with details of these platforms.
> That makes sense yes


And what if some panel can be used with this pseudo-connecter and in
some different hw directly? Code duplication? DT overlays?


Regards

Andrzej


>
> Maxime
>
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
