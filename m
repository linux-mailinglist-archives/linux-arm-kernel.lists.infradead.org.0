Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F13BB128
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 11:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VONeLzYytuS97WUKxpvsvoy263RxeMtFvem6a5JV7bg=; b=DTdwKIvNkrzUZN
	oM7mXD15bRFkomVHBHQvRphXG07aXentch3pRcq2mfHlHAa7tsZ6LMwfTgeqRIqGUSUs0Fq2C4DCM
	EwpVkBjHjS/4JSLIGMgROewER51Sets6beEpOes0Z9jzN4NeG2E4I53HGsQnGjUtSl5Dz3vLjpUlf
	Ho4ytbPkd3kKTeCBNE77nj7JhSq/HRZq5gKqs48pul6wdcKAKUuQOKa9vVjqzEeCMYX39Y0wgNwRB
	bjwDMTiJGLSyZkeGyn/Gm/ySShndzylYotL5dPVedl8+KQ/dc6xs9CxO0gIX/4WFUNglRDb9Lld1t
	MfWJmrU/q2UCTKUzXyuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCKPN-0000Mj-Q4; Mon, 23 Sep 2019 09:13:25 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCKPB-0000M7-J5
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 09:13:15 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190923091311euoutp020fe32b81beadf367c9bc6e2ed0e4d99e~HBlz6JS9R2643026430euoutp02L
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 09:13:11 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190923091311euoutp020fe32b81beadf367c9bc6e2ed0e4d99e~HBlz6JS9R2643026430euoutp02L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569229991;
 bh=qIK8taltfCKWFlPoIMMxrFkgSt6/LrKqErC+DI905S8=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=aHcqw3KXIo8dgjm/vOz6DEGLIlasXI1x77rly79o146HeDKfesTpqbFJlegqrS1Ag
 VTnOfpw1NF9BRDJZ13DKEpRbJsgs3tD059nJzEnlpfDc42CqNZrhCDpWxPF0cDuSPi
 tWSQfJYDai1j4F4BYIOVsuILlLOD+8Rw8NMZyBdQ=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190923091311eucas1p2d2be606ea670487014c75c9ad3ad6d5e~HBlzmzCI82760427604eucas1p2V;
 Mon, 23 Sep 2019 09:13:11 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id A9.2C.04309.7AC888D5; Mon, 23
 Sep 2019 10:13:11 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190923091310eucas1p2c0661bfbcf97f525d614c305f3d9069e~HBlzPKfuK3004130041eucas1p2T;
 Mon, 23 Sep 2019 09:13:10 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190923091310eusmtrp1379bfc3dfaa0b68f652ac9cadf7cc353~HBlzOB8yp2265222652eusmtrp1w;
 Mon, 23 Sep 2019 09:13:10 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-68-5d888ca7f3c1
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 9C.9A.04166.6AC888D5; Mon, 23
 Sep 2019 10:13:10 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190923091310eusmtip25b8e0ba225f8520fbed0c7b717e3db16~HBlysU_ZI1815118151eusmtip2L;
 Mon, 23 Sep 2019 09:13:10 +0000 (GMT)
Subject: Re: [PATCH v2 04/10] ASoC: wm8994: Add support for MCLKn clock gating
To: Charles Keepax <ckeepax@opensource.cirrus.com>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <91b0fc41-61e6-4650-2991-313dda4b494a@samsung.com>
Date: Mon, 23 Sep 2019 11:13:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190923085105.GN10204@ediswmail.ad.cirrus.com>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTcRTudx+722h1XYaHJT1GUY3SZgWXSiuIWlBqURCa1a0uS3IzdrWH
 0UvztdaUHsxG0ChJG6VuiemigrU1cuVYWIQlJa2oSEu3XibZtovkf9/3ne+c8x04YlweJBXi
 fH0RZ9CzBUqRlGh79LtrYYOpKm/RULuU6Q66McZR10wyF/tCIqa73ImYK54ukgkEWijmR3cV
 xjjfvSCZusB9jLnl6aWY8NcHJFN+z0MxwcYItkqmaQmXijQd1l5K47RXizS3609oLJdHkcbc
 akeasHN6NpUjXbGXK8g/yBlSM3ZJ9/lDTdiBCHG43ObFTqLThBFJxEAvgWftI1gMy+lGBKM1
 WUYkjeIIgsGPj0UCCSO4OfCBHOsI9FlIodCAYMjUigmkH8HwLx+KuabQ2dDjex3vSKTTYNDX
 EzfhtBuDjoHn8YUiWg1nveZ4g4zOgGBjfVwn6Dlg/uISxfBUehsMvX1ICp4EeHwpFA8uodPB
 UXk/7sfpJCiN3CAFPAPu9F/GhajfKbjwR2FE4iheAx3D6wV5Cnz2tVICTgb/eRMRywZ0GQLT
 3VeUQGoRvPHZkOBaDg99QTI2CKfnQ7MrVZBXg7HXRQjzJ8HL/gQhwiQ412bBBVkGVRVywT0b
 /tgtmIAVcCY0StQipXXcYdZxx1jHHWP9v9eGCDtK4op5nZbj0/TcoRSe1fHFem3KnkKdE0Uf
 zf/XF2lHrpHdbkSLkXKi7JujMk9Osgf5Izo3AjGuTJQ5VRV5ctle9kgJZyjcaSgu4Hg3miYm
 lEmyoxPe5sppLVvE7ee4A5xhrIqJJYro12SNsnjfsrlL29TGTj/R1fK5ZMLVlmP248/Mfluz
 8b33eq4qJ2X3OlPm1qfzqivrZ277uWD7zprrh7Mnh7ZoNqz81CSzrDUt3iFSbby3RCs5VfrJ
 PXUw2LloeuoTPD09rSH590vp5ia+Th3Mz7w2y5vgOT2wiaXWZuVVv7jp0BaVKQl+H6tW4Qae
 /QduY9ZyZAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrKIsWRmVeSWpSXmKPExsVy+t/xe7rLejpiDe49MbC4cvEQk8XGGetZ
 LaY+fMJmcaV1E6PF/CPnWC3On9/AbvHtSgeTxabH11gtZpzfx2Sx9shddovP7/ezWrTuPcJu
 cXHFFyYHXo8Nn5vYPHbOusvusWlVJ5vH5iX1HtPn/Gf06NuyitHj8ya5APYoPZui/NKSVIWM
 /OISW6VoQwsjPUNLCz0jE0s9Q2PzWCsjUyV9O5uU1JzMstQifbsEvYzTT9YxFXxhqWhdcJSp
 gbGFpYuRk0NCwETi/MPprF2MXBxCAksZJT6t38DcxcgBlJCSmN+iBFEjLPHnWhcbRM1rRomm
 nvWMIAlhAT+J6ZvOgNkiAkYSH4/fYgIpYhY4xCRxf91aJoiOL4wSpz7fYQapYhMwlOg92gfW
 wStgJ3FxxRImEJtFQFWi780uNhBbVCBC4vCOWVA1ghInZz4BO5VTwFZiY/s+sHpmAXWJP/Mu
 MUPY4hJNX1ayQtjyEtvfzmGewCg0C0n7LCQts5C0zELSsoCRZRWjSGppcW56brGhXnFibnFp
 Xrpecn7uJkZgFG879nPzDsZLG4MPMQpwMCrx8H7Y2B4rxJpYVlyZe4hRgoNZSYR3k1ZbrBBv
 SmJlVWpRfnxRaU5q8SFGU6DnJjJLiSbnAxNMXkm8oamhuYWlobmxubGZhZI4b4fAwRghgfTE
 ktTs1NSC1CKYPiYOTqkGxgmufQ/i62/+Ed6Z3dRo0/bG+flqmRuX5We+e66vr5wwNUT556Gg
 X5NXBGz8X+Tg5n/z2+c5bKmTX3QVFl5QnBqRXuiy7NLNjXmM+zOLo4+9KI66OOdNTVNYmPr9
 Il1JzuPeYdu1Fr/YzLTxwt66BY4Kp6PiF8WkcPxZNG9R1bU+uQ09lz6e0VNiKc5INNRiLipO
 BADi7Ypi+AIAAA==
X-CMS-MailID: 20190923091310eucas1p2c0661bfbcf97f525d614c305f3d9069e
X-Msg-Generator: CA
X-RootMTR: 20190920130317eucas1p188d724710077d704f768798c6555c741
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190920130317eucas1p188d724710077d704f768798c6555c741
References: <20190920130218.32690-1-s.nawrocki@samsung.com>
 <CGME20190920130317eucas1p188d724710077d704f768798c6555c741@eucas1p1.samsung.com>
 <20190920130218.32690-5-s.nawrocki@samsung.com>
 <20190923085105.GN10204@ediswmail.ad.cirrus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_021313_759194_0ADDCA40 
X-CRM114-Status: GOOD (  12.27  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 sbkim73@samsung.com, patches@opensource.cirrus.com, broonie@kernel.org,
 lgirdwood@gmail.com, krzk@kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/23/19 10:51, Charles Keepax wrote:
> On Fri, Sep 20, 2019 at 03:02:13PM +0200, Sylwester Nawrocki wrote:
>> As an intermediate step before covering the clocking subsystem
>> of the CODEC entirely by the clk API add handling of external CODEC's
>> master clocks in DAPM events when the AIFn clocks are sourced directly
>> from MCLKn; when FLLn are used we enable/disable respective MCLKn
>> before/after FLLn is enabled/disabled.
>>
>> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> 
> Looks good to me:
> 
> Acked-by: Charles Keepax <ckeepax@opensource.cirrus.com>

Thanks a lot for reviewing!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
