Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEF11C7E2E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 01:52:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KC6lA0lgAjCV0wC1hJIENCnG1JCsOb3ljrazY9JVlxs=; b=pwe6hO8Xofbzbc
	bPzu4YM0Oh8IUULD9gMAnMet4oUSjakSROBjCYB6zSAk+LupcOWwdTJnROnJQ2JUD4II7B1quQn2s
	8+8hA8aN11Va8xcNO+OI3g80tkSybq1SmC0UFu+jT5tbGQQBpO3LLP5NTcOFb/b98EEeo8+GpXFSz
	JahXaEUS47S3bL64MO97ocnprfVooxVYeWtnFQYEVI5KP03hiniff1KxV0wbik+nZ26HUBQv7Pxse
	Ws1hzn3OQSsEffLrBopcLksyDTNosHgrfoJd4CBfnNcplBgjwnBkmgy5y9NSNNiHde84mtD2rT9TX
	Vr5QLi8LlugHnhgHQHcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWTqE-00013j-Ov; Wed, 06 May 2020 23:52:42 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWTq2-0000z7-H1
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 23:52:32 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200506235227epoutp043fd3e08e61d24424b4eed44230e9fea5~MlYB5J6TZ3079930799epoutp04X
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  6 May 2020 23:52:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200506235227epoutp043fd3e08e61d24424b4eed44230e9fea5~MlYB5J6TZ3079930799epoutp04X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588809147;
 bh=wpc6Hw+hQgu6j9Nz5X8BicWEUjgYsmvLubAvbl7sLB0=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=TZ4Lto+IroGU75fRBdp3wdtWzAt4yNU+C9vFnEEXr62BcgEQXXOwzp6NXcrkrIOSL
 h4m/aC4irjWnfZZt7N+9XldymJzI2iB2OZOU5Bk2ZzPmHm1PsqgnHtobkT2HkfFkPi
 Y9NuVf215xJ5hMX8ZKfg8N0zvGRQT/qwUI+2FXa4=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20200506235226epcas1p3f990f227011929e7ab72483fcfacc558~MlYBMtHgw1390613906epcas1p3J;
 Wed,  6 May 2020 23:52:26 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.153]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 49HYL02WB9zMqYkl; Wed,  6 May
 2020 23:52:24 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 9A.4C.04648.8BD43BE5; Thu,  7 May 2020 08:52:24 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200506235223epcas1p2a9f0d264604dc471e553ea47ba60ca3e~MlX_Vsq_b0917909179epcas1p29;
 Wed,  6 May 2020 23:52:23 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200506235223epsmtrp158ad7da5b5fd5bb802783ce24a394dab~MlX_Ub1wP0130701307epsmtrp1E;
 Wed,  6 May 2020 23:52:23 +0000 (GMT)
X-AuditID: b6c32a37-1dbff70000001228-d0-5eb34db8c672
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 B6.90.18461.7BD43BE5; Thu,  7 May 2020 08:52:23 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200506235223epsmtip2f1e631ce95546b17cb4f6132d9e90633~MlX9y59AW3260632606epsmtip2t;
 Wed,  6 May 2020 23:52:23 +0000 (GMT)
Subject: Re: [PATCH v3 0/8] interconnect: Add imx support via devfreq
To: Georgi Djakov <georgi.djakov@linaro.org>, Leonard Crestez
 <leonard.crestez@nxp.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <955b0a73-617f-0974-74c3-e1d92db918b7@samsung.com>
Date: Thu, 7 May 2020 09:02:21 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <86c1596c-d3c2-0c2d-4a7c-016f9cd7d4c4@linaro.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02TfUxTVxTAc/va14/Q7VlgvavZBm/+gSSV1lK5GiFbpuYlw4Rkc2EzgT3h
 UQj9Sl9r1C0ZuMGwYyhzzUJBJVMMIJv9QAEVwVqc4IQxYqEwgknZojAhCjUGAq7tqxn//c49
 v5Nzz705Ikx2RagQlRmtjMVI60lcwr96e6tS2b3fW6CaD8vQzNkqgML3hgC6+OcAQMuOaxgK
 zUwB1NVQhM75hwXI7Z3io596PThqd/Tw0ciIS4juH/9XiFqnnwqQJxQQIPtKG4aWvvcD1DI+
 ykOB1noBWnKFABod2oumKltxdGn4Fo7OLDswVNXrFyK7bw1H6wE3Hz3qlKOW8wEMucPUe29R
 DnsroDrOdgBqcaJKSDVWjPKpZo+N8rSfwKm/AjdwynvhK8q90M2jTq6pqJXbyVRdZzugljxv
 50k/K99dytDFjCWFMRaZisuMumzyw48KPyjU7lCpleqdKItMMdIGJpvck5un3FemjzwKmXKY
 1tsiR3k0y5IZObstJpuVSSk1sdZskjEX6807zdtY2sDajLptRSbDLrVKtV0bET8vL31YUwfM
 voQjs+NBrAL8ILEDsQgSmbB5YFVgBxKRjOgGcCm0gHHBMwCbJp/FM88BvNQWxF6VLDeMxa1e
 AH8NrseDRQBvnq7Eo1YisRcOO2ZjnER8Cmu9/4CohBFhIVxtHBJGEziRDvseTcSk14lU+OBF
 CERZSuTA4NwKL8p8YgtcD87H/GTiEzh49Zu4swkONszyoyyO+D0Tv8SuhxFyODl7jsfxO7Dr
 SVPsdpCYE8Pg143xGfbAupFKwHEinPutU8ixAj4+WR3nL2DboB/nimsA7Oz7Q8AlNLCv5XSk
 gyjSYSu8fC2DO06FPatnANf4NbgQrhVEFUhIYU21jFPehWMPp3kcvwnPf3sCPwVI54ZxnBtG
 cG4Ywfl/s2bAbwdvMGbWoGNYtVmz8b89ILYy6VndwDWc6wOECJAJ0v6LngKZgD7MHjX4ABRh
 ZJI04YW7QCYtpo8eYyymQotNz7A+oI28dj2mSC4yRRbQaC1Ua7drNBqUqd6hVatJudQxri+Q
 ETraypQzjJmxvKrjicSKCpCWXXuvevPqWE1Vvj2nn7o7/b7t4OaK+pUDohv0oayFnIzji4oD
 h7y657klKMlyvTLxwUSHy1UyeAVT+RWPD2ZuSfvRND3f5Jz8uevpPon4si5N+vF9Vo5l5H6Z
 eve7I8Z8x66SU/L1vn6x5Em+b2bsGP27Ul9tl/pfrt35e4B+SfLZUlqdjllY+j8Ou9nCSAQA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprEKsWRmVeSWpSXmKPExsWy7bCSvO52381xBtcuqlrcn9fKaPH19ClG
 i2WXjjJafJm6i9ni8f3bjBbbZyZbzD9yjtVi4+bbLBbT925is1g1dSeLxfnzG9gtzja9YbdY
 cfcjq8Wmx9dYLbp+rWS2+Nx7hNFi6fWLTBbXVkxktfi84TGjxcVTrha3G1ewWaw+d5DNYu6X
 qcwWrXuPsFt0HfrLZvHv2kYWixdbxC2WLr7GbLHxq4eDrMfUrhWMHmvmrWH0eH+jld1jdsNF
 Fo8Fm0o9Nq3qZPO4c20Pm8fmJfUeG9/tYPLo/2vg8euwqEffllWMHp83yQXwRnHZpKTmZJal
 FunbJXBlPOjoYyw4xFPx5PpN5gbGSVxdjJwcEgImEl9mXmbuYuTiEBLYzShx8s0eZoiEpMS0
 i0eBbA4gW1ji8OFiiJq3jBKbWo6zg9QIC7hKnJv6hA3EFhGIlNh74A07SBGzwHd2iY6Zs1gg
 Og4xSsyd+JkRpIpNQEti/4sbYB38AooSV388BovzCthJ3Hz1iwnEZhFQkfh38zXYBlGBMImd
 Sx4zQdQISpyc+YQFxOYEqt95Yy3YpcwC6hJ/5l2CssUlbj2ZzwRhy0tsfzuHeQKj8Cwk7bOQ
 tMxC0jILScsCRpZVjJKpBcW56bnFhgWGeanlesWJucWleel6yfm5mxjByUZLcwfj9lUf9A4x
 MnEwAj3JwawkwsvzY2OcEG9KYmVValF+fFFpTmrxIUZpDhYlcd4bhQvjhATSE0tSs1NTC1KL
 YLJMHJxSDUy+nPdlTe8kFy6PM/54RuGFxPbasHKGhTJSL0z/MvHLebXKs8+8IRTO7L7oy+qe
 YuF30RvmlrVMiur6bFVhnrD38TVZmZ4OI+aYGJbFU3K75smax3z55ZZ4ofb5oaq8kt6b7Csm
 zuPKdy/sO2jfEPn1/aruPRfVH8VEnuW29DGZsitCndFrY2iN9kwe26+LAi4uk/H7IW+/pi1m
 QUq62oFpvo5dz8Jnyx1n3Hq912GK0N13ifd49TdfWesloLb1ecAHAd1b+vMX/zTVLmZ54S2s
 XH47bNGhLjbn2/y/D6/96y/gfk01YY+IqVxBhFT9oeAfN4VEjfQmLE1vWDn/9Fznm/+WV7nP
 EfGREowuV2Ipzkg01GIuKk4EADndc9mlAwAA
X-CMS-MailID: 20200506235223epcas1p2a9f0d264604dc471e553ea47ba60ca3e
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200429073056epcas1p2831ad696bbe95430294df292405a6e0b
References: <cover.1586174566.git.leonard.crestez@nxp.com>
 <CGME20200429073056epcas1p2831ad696bbe95430294df292405a6e0b@epcas1p2.samsung.com>
 <86c1596c-d3c2-0c2d-4a7c-016f9cd7d4c4@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_165230_820366_DF4E820D 
X-CRM114-Status: GOOD (  19.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 linux-imx@nxp.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 4/29/20 4:30 PM, Georgi Djakov wrote:
> Hi,
> 
> On 4/6/20 15:03, Leonard Crestez wrote:
>> This series adds interconnect scaling support for imx8m series chips. It uses a
>> per-SOC interconnect provider layered on top of multiple instances of devfreq
>> for scalable nodes along the interconnect.
>>
>> Existing qcom interconnect providers mostly translate bandwidth requests into
>> firmware calls but equivalent firmware on imx8m is much thinner. Scaling
>> support for individual nodes is implemented as distinct devfreq drivers
>> instead.
>>
>> The imx interconnect provider doesn't communicate with devfreq directly
>> but rather computes "minimum frequencies" for nodes along the path and
>> creates dev_pm_qos requests.
>>
>> Since there is no single devicetree node that can represent the
>> "interconnect" the main NOC is picked as the "interconnect provider" and
>> will probe the interconnect platform device if #interconnect-cells is
>> present. This avoids introducing "virtual" devices but it means that DT
>> bindings of main NOC includes properties for both devfreq and
>> interconnect.
> 
> Thank you for your work Leonard! There is no build dependency between the
> devfreq and interconnect patches, so i can apply patches 1,4-7.
> 
> Chanwoo, should i take also the two devfreq patches with your Ack?

As you commented, if there are no build dependency,
I think it better to be merged to devfreq.git for the history.

I'll apply patch2,3 to devfreq git for v5.8-rc1.

Thanks.


-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
