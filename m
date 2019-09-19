Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A14AB79C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 14:50:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MMTD8ygJ8lyP5v3O3sLmQuvVs46Pgvx9gANiblWEX44=; b=WWvPpbuTKbVUek
	M0YuwIrQOsVp46gfSs14NY7rR5vOytu9/JewgJEMarCW9tg1wuJlix/TOkUhZkXsl1xv6tVUjnlam
	wslUqnCDYzLde7rpLuA9Zc7cIUnth7e8ZH24wlQ+DBL1Nvo9DgPxZthgHJshAwRf71xwKrmpU97jy
	w7v79w0s5nfCvKUu3Oi3PrHS1uERmmk+56CKzbp+WN7BRLsKPWXVga6FejdcLGd8V3gLBPW+5d0fd
	4DMtrx7aj/Q//zXY+J3kskHyIkOL2s2ZLUAdoFBPh8U06VJOQP4jlxg7bcC2nsrS+CSJzOELK+Dcm
	dFLFr8yX3Kc3xvT7f++Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAvtF-0005jM-8s; Thu, 19 Sep 2019 12:50:29 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAvsh-0005iz-48
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 12:49:56 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190919124953euoutp0231dbfa258ed74df3436aeb772adcf03a~F194Gqeeh2742127421euoutp024
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 12:49:53 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190919124953euoutp0231dbfa258ed74df3436aeb772adcf03a~F194Gqeeh2742127421euoutp024
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568897393;
 bh=sbmvg1Ra4kPeyA4lEdy07dbJP9Cknvyi7VQZy0GRotg=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=tNetOo1Y+G+6AJlKUFRRsPmL/1qGHQlAMajAPC/Vguu6R7pcQOXYK7L4Tt5k25tEX
 moJhWoeb1+AKZpvXzO/bPXpkLmdJZripDYRNkv+qcWQd01R1h2Q2s7lKRfYE9iEdxw
 2KKpWhHS4Wm5kr7/yY/P7V0map+yRBdRcogZcY60=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190919124953eucas1p2c3b7ba12e7047787051999d4e6211862~F193keRe23170331703eucas1p2-;
 Thu, 19 Sep 2019 12:49:53 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id E8.9D.04469.079738D5; Thu, 19
 Sep 2019 13:49:52 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190919124952eucas1p29de8004517cbf8d453f7559822f44e88~F19213SSt1424714247eucas1p2Q;
 Thu, 19 Sep 2019 12:49:52 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190919124952eusmtrp29d4b73e2bf3b7efb887e09a1abeadfbe~F192nnyzd0767907679eusmtrp2T;
 Thu, 19 Sep 2019 12:49:52 +0000 (GMT)
X-AuditID: cbfec7f2-54fff70000001175-ed-5d837970b1df
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 50.31.04166.079738D5; Thu, 19
 Sep 2019 13:49:52 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190919124951eusmtip18d29027b98da48e960a1e2a4311542e7~F1919rEHn0687006870eusmtip1S;
 Thu, 19 Sep 2019 12:49:51 +0000 (GMT)
Subject: Re: [PATCH v1 8/9] ASoC: samsung: arndale: Add missing OF node
 dereferencing
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <a0072745-f7c1-86ad-2344-d73dd210e1ad@samsung.com>
Date: Thu, 19 Sep 2019 14:49:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190919082211.GF13195@pi3>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRjuO3elyWkae9OoGEWYpYlWpwtS1I9DQfWrpFy19OQlnbbjbfWj
 0i7m5liSTNe8BJk6DHWFtyhxmmJWNpXKTPIWxFAsL0VFmdsp8t/zvO/7vM/7fHwMLneS/ky8
 JlXQatSJSsqbqO/4/nJTii5btbnj+Tau3+nAuLrCGpIrGBmnuP6rdsSVtr8kuZ6eWpr72p+D
 cfax1yRX2PME4+63D9HczFQLyV193E5zzspZbLeMr53JovgmyxDN2203KP7B3Yu82TqPeOND
 G+Jn7KsO08e8d8UIifHpgjYk4pR3nOteJZbSiGV2ffyJXUJfUS7yYoANB+fnG1gu8mbkbCWC
 gbEvuERmEbzTd1MSmUHQ7LpD5iLGI8nt2SjVKxDcNo8giUwiMI6NYu69vuxReF9t9GA/NhDe
 /PpGuodw9hUGz9oMhLtBsaGQ99ToOUTGRkBhq55wOxDsOujK8WiXs5EwPdxGSiPLoKto3CP1
 WtjpvJJHuTHOKiBrtoqU8GpomLTiUrZJGlyuRAnvg5bRlr+ZfcHV+ZCW8EqYbyr15Ac2G4Hh
 0SAtEROCD51lfxU7oa3T6YmPLzjXNIdI5T1Qd6WIll7FB95OLpNu8IH8ejMulWWQc00uTa+F
 nzYzJmF/0I/PEyaktCxKZlmUxrIojeW/bxkibEghpIlJsYIYqhEygkV1kpimiQ2OTk6yo4WP
 1v27c7oRzfWediCWQcqlsjUZ2So5qU4XdUkOBAyu9JNZt2Sp5LIYte68oE0+qU1LFEQHCmAI
 pUJ2YcnwcTkbq04VzgpCiqD918UYL/9LCEO7A/ZX7Eqb0J/oK7ceWpF5a6mjz7QnPFwRZBte
 j6uIMB1lOFg8EKUyTSQU9TJVF3hD4+XqTyEvfvwqb4DYA2ER96K3U5qtikZzSQXsLWgqmc5X
 BbUGXi8tmytWBvTlXDt0vjXoHIqyvqkNjNxxcvtmRfXUzdcJusG5M0fCzEpCjFOHbsC1ovoP
 xF2yR2QDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrMIsWRmVeSWpSXmKPExsVy+t/xu7oFlc2xBpdfsFlcuXiIyWLjjPWs
 FlMfPgFyWzcxWsw/co7V4vz5DewW3650MFlsenyN1WLG+X1MFmuP3GW3+Px+P6tF694j7BYX
 V3xhcuD12PC5ic1j56y77B6bVnWyeWxeUu8xfc5/Ro++LasYPT5vkgtgj9KzKcovLUlVyMgv
 LrFVija0MNIztLTQMzKx1DM0No+1MjJV0rezSUnNySxLLdK3S9DLeLVsBVPBDqaKk09/MzUw
 fmPsYuTgkBAwkeg6r9PFyMUhJLCUUeLVtZ+sEHEpifktSl2MnECmsMSfa11sEDWvGSWenJnO
 DJIQFgiXuLOmjwnEFhHQlLj+9zsrSBGzwAUmie9tIEUgHfcYJR4f2QpWxSZgKNF7tI8RxOYV
 sJOYcbCbBWQbi4CqxMkOsBJRgQiJwztmQZUISpyc+YQFxOYEWnCxpZcNxGYWUJf4M+8SM4Qt
 LtH0ZSUrhC0vsf3tHOYJjEKzkLTPQtIyC0nLLCQtCxhZVjGKpJYW56bnFhvqFSfmFpfmpesl
 5+duYgRG8LZjPzfvYLy0MfgQowAHoxIPr0J5c6wQa2JZcWXuIUYJDmYlEd45pk2xQrwpiZVV
 qUX58UWlOanFhxhNgX6byCwlmpwPTC55JfGGpobmFpaG5sbmxmYWSuK8HQIHY4QE0hNLUrNT
 UwtSi2D6mDg4pRoYWbhztrtec3qldu54QcOJaxa+6Wt23cwQvhtS1PbEQ3wRl9fn9znba7UO
 TGe26/zYeDRJRsbE/YbBrnW7Trbs73ojcKHd9uxK74zfvnxrtgkq17Ds/y9Xemf396vTn5mm
 /S3TbZ9pkGNqMuVxmsnBHZ+WF7YUNIlr+hpu0w+cKRF3xPw88/EcJZbijERDLeai4kQAZ+/k
 dvYCAAA=
X-CMS-MailID: 20190919124952eucas1p29de8004517cbf8d453f7559822f44e88
X-Msg-Generator: CA
X-RootMTR: 20190918104713eucas1p2ccfa8e9dff2cda9e8f88ac42dda2b680
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190918104713eucas1p2ccfa8e9dff2cda9e8f88ac42dda2b680
References: <20190918104634.15216-1-s.nawrocki@samsung.com>
 <CGME20190918104713eucas1p2ccfa8e9dff2cda9e8f88ac42dda2b680@eucas1p2.samsung.com>
 <20190918104634.15216-9-s.nawrocki@samsung.com> <20190919082211.GF13195@pi3>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_054955_298370_69427D7D 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, robh+dt@kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/19/19 10:22, Krzysztof Kozlowski wrote:
> Wasn't this issue introduced in 5/9? It looks weird to fix it here...

It has not been introduced by 5/9, the issue was there already before 
my patch, there was even no remove() callback where OF node references 
could be dropped.

-- 
Thanks,
Sylwester

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
