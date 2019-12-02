Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1809C10E41F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 02:07:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VO6GC3KAqnJlrwZ6/jnMAR6XIJgrTXr6hnXFH5c68Vs=; b=RCHip3yFLCsz2G
	PHbslEp2bQ5FC5hUrd3alXLNfcszRPj8tVnory5LxgyC2szJGn+23nwkKIS3E7kjC/FthnyqSaA2n
	QbDOZb2kN6WnULSb0Bb0KROlr11wAirjCOVKK1DxtQbHI+TUzIFO65A3V5BJRbEkrZP5kTzfIOmO1
	pPb7/ae2tIAbbTuUB24T9zgEup96fU0SO1KJVi9yX1TGHc4d/r/Zawb2RgofEraaoI02yMbzg8IZs
	PdoDVSqCWLAjado02Y883DsoZDFG1jEFciC0LwyhXxaKN3ZPlUQySvl3Uf6TLCLj+GLs0CUF8TSsh
	APp1Iw5WrxjsnEmmfNDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibaBq-0001mv-KF; Mon, 02 Dec 2019 01:07:50 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibaBj-0001mS-Ew
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 01:07:45 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20191202010736epoutp01802e80386a46afd5c0f58f5d812faa1a~caH0WRkRS1117611176epoutp01E
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  2 Dec 2019 01:07:36 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20191202010736epoutp01802e80386a46afd5c0f58f5d812faa1a~caH0WRkRS1117611176epoutp01E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1575248856;
 bh=UkE7utluuyMhSecKy49iKbgRKNukxrR8skMg1MOl7Ww=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=RCszI+nVZ6qzo13bLF/GH1l7Mxj6D0bUk2etrvBWdTxw9ytyBQ4uQvYZVbZaYw/QW
 HP1Vx7/IUgbr3cCDcKEYZTqHLDkeLHOFdx6jBxfgPHa2BMiPBD5cgGvpcaWbbGPCjB
 +TjOA3Q61Nz4H9rvl0uoyleMGWXDsfWbNtyO0qqY=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191202010735epcas1p179a0d92920493c03f14269115dac3963~caHzxPN502865628656epcas1p19;
 Mon,  2 Dec 2019 01:07:35 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.158]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 47R6R91FF0zMqYm2; Mon,  2 Dec
 2019 01:07:33 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 82.6E.52419.DC364ED5; Mon,  2 Dec 2019 10:07:25 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20191202010724epcas1p3da6a7e192a91dc8f84f9164f0d3b9bd5~caHprx-pr2599525995epcas1p3o;
 Mon,  2 Dec 2019 01:07:24 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191202010724epsmtrp2d101414b322de4f9db1da8f0b7f8e4e4~caHpq7J6Z2289222892epsmtrp2l;
 Mon,  2 Dec 2019 01:07:24 +0000 (GMT)
X-AuditID: b6c32a37-59fff7000001ccc3-ea-5de463cd4df8
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 C2.DD.10238.CC364ED5; Mon,  2 Dec 2019 10:07:24 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191202010724epsmtip225c311be6e818f5cd1390a043a1048b5~caHpZThhA2242022420epsmtip2Z;
 Mon,  2 Dec 2019 01:07:24 +0000 (GMT)
Subject: Re: [PATCH RFC 1/2] PM / devfreq: Add PM QoS support
To: Leonard Crestez <leonard.crestez@nxp.com>, Matthias Kaehlcke
 <mka@chromium.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <4615f751-d5d6-887f-cc9d-ec802f3c9c31@samsung.com>
Date: Mon, 2 Dec 2019 10:13:41 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <f186aee7e7cc8f055d6cdebafe42a6293d44364d.1574179738.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01TbUxTVxjO6W3vvciqZ/XrHVkY3O2PZGivpXowYrbIlruMHyQzm9PUegM3
 LaFf6W3NwGTrDFPonKgLMUPI8CtWzCJ0CNXAGutnYYAwraKSzRUH2WaJa3BMNFnbyzL+Pe/z
 PO9587znHJbSTdE5bJXDI7kdoo2jF6m7L68qLBysmDDph/6mSeTaeYbMDPQjcqQvSJPh4Q6G
 DO75kyGB8ScaEozHNMT/7AxFkl9dQSTZEUfk/ucBmpwdukSTHwdGU2rkBU06Z4S3lgjTd79g
 hKO+EbXQFvQKwfYGWngQ66WF709+JnQmQirhUqJXJXTd3qcWDnS1IyEZzC3P3la90SqJlZI7
 T3JUOCurHJYS7v0PzJvNxnV6vpAvJuu5PIdol0q40rLywnerbKkkXN4u0eZNUeWiLHNrNm10
 O70eKc/qlD0lnOSqtLmKXatl0S57HZbVFU77Bl6vX2tMGXdWW0OBG5SrSfPJ6PmtPtSi9qMs
 FnAR1IV8lB8tYnU4hKDz5wCjFH8huNoTmVeeIjh4+CzyIzbT4rsICt+HINr/m0YpphFM3hqm
 0ucuxSXww/GAJo2X4U/hn+P+jInCTyiI3zqXEWhcAOGpu3QaL8H5cHs2jtJYizdBU+uYKo3V
 +A048fRI5tDl+EOIdtfNe16G6DcTmRBZeAfMxqczfgqvhHsT387j16DncUsmAuAYA8n+q4yS
 uhS+65mjFLwUfr/eNc/nQDLRRyt4N5yJXqGV5noEXeGbGkUwQPjU16r0Lii8Cs5dXKPQ+XBh
 rhUpgxdDYma/RlmXFur36hTL6/DTL+MqBb8CJ/Y10AcR17wgTvOCCM0LIjT/P6wNqdvRCskl
 2y2SzLsMC287iDKvvGB9CHUMlUUQZhH3klY/FTfpNOIuucYeQcBS3DLtHe6hSaetFGtqJbfT
 7PbaJDmCjKltH6Jyllc4U3/G4THzxrUGg4EU8euMPM+t1LKzIyYdtogeqVqSXJL7vz4Vm5Xj
 Q0X6BlNu1DvGW2Sr/c2PEoN78r2TBz6Oj0we09LZh3Zm773mqT8Zndv2XrFu86Pnp2Oxw3Xv
 RHrJlzX3LzSOT/+xw1dEL94+FvYZbW3OfPbXY3OcYXR/6yOzJ/xwqzhQ1t346s2pt68frd3S
 dIppGXuuKm3E280bquXS3NoaJpfh1LJV5Asotyz+CwgC/ej7AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrEIsWRmVeSWpSXmKPExsWy7bCSvO6Z5CexBlMuqVgcOraV3eLr6VOM
 FtP3bmKzOH9+A7vF2aY37BYr7n5ktdj0+BqrRdevlcwWn3uPMFp83vCY0eJ24wo2i9XnDrJZ
 nDl9CSh76C+bxcavHg78Hu9vtLJ7zG64yOKxYFOpx6ZVnWwed67tYfPYvKTeY+O7HUweB9/t
 YfLYcrWdxaNvyypGj8+b5AK4o7hsUlJzMstSi/TtErgydqw4wVwwlbXi0taIBsY5LF2MHBwS
 AiYSDbskuhi5OIQEdjNKNE0+zt7FyAkUl5SYdvEoM0SNsMThw8UQNW8ZJWYeus4GUiMsYCux
 b9EKVhBbRKBO4tPvA4wgRcwCH5klDi5azAzR8YhR4s3JFUwgVWwCWhL7X9wA6+YXUJS4+uMx
 I4jNK2AnMXXuTbAaFgEVicXfpjOD2KICYRI7lzxmgqgRlDg58wkLiM0pECfx4/F7sDizgLrE
 n3mXmCFscYlbT+ZDxeUltr+dwzyBUXgWkvZZSFpmIWmZhaRlASPLKkbJ1ILi3PTcYsMCw7zU
 cr3ixNzi0rx0veT83E2M4JjW0tzBeHlJ/CFGAQ5GJR7ejlePY4VYE8uKK3MPMUpwMCuJ8F5X
 ehgrxJuSWFmVWpQfX1Sak1p8iFGag0VJnPdp3rFIIYH0xJLU7NTUgtQimCwTB6dUA6NR+qWj
 J/a0bM+K/u61fGppGmvcigDV03Lhu06InBMLX/n+ZPqenhPRHalNTn5vFJ0/HXmxz1ajSK7q
 cuP0VWyP/qRI8QdmFRUcvzWD44XZ4xvuEZJGt8zZcvQK9EOmzzPcUnPjoXiOz/n7Qc+OnJWa
 de/Prmldc3ffF7quXfC+oPrQdNXzN72VWIozEg21mIuKEwFy9ch55QIAAA==
X-CMS-MailID: 20191202010724epcas1p3da6a7e192a91dc8f84f9164f0d3b9bd5
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191119161307epcas1p485934ab601ca59fc979bf8d2e1961892
References: <cover.1574179738.git.leonard.crestez@nxp.com>
 <CGME20191119161307epcas1p485934ab601ca59fc979bf8d2e1961892@epcas1p4.samsung.com>
 <f186aee7e7cc8f055d6cdebafe42a6293d44364d.1574179738.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_170743_925126_36264BB0 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/20/19 1:12 AM, Leonard Crestez wrote:
> Register notifiers with the PM QoS framework in order to respond to
> requests for DEV_PM_QOS_MIN_FREQUENCY and DEV_PM_QOS_MAX_FREQUENCY.
> 
> No notifiers are added by this patch but PM QoS constraints can be
> imposed externally (for example from other devices).
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/devfreq/devfreq.c | 77 +++++++++++++++++++++++++++++++++++++++
>  include/linux/devfreq.h   |  5 +++
>  2 files changed, 82 insertions(+)
> 

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

(snip)

-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
