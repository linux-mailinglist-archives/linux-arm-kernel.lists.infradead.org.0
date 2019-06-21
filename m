Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4560D4E6C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 13:09:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9uc4CvZPoJ/wvQv0UXf1pt7Ddd8HWNM0m2sxEvyohng=; b=rhuE3z6VJvwMs7
	yLf5fL/Fois3gJNO8NxfRaUeZ/MlQpnFKaTsincXALxMs850fxDEl1hi+V7Fu/UV6BB2mY3zZ6fkD
	fFpjv/8KE9LmHI2eaGWvfJfkta45PfAfCjwt5HHv2tj4t1PeL7CuEHb/Hymia52rV7DBDcIEQQb4Z
	mp4YbO5ACIcIMn95odLu8VEQMlJ6a7/CYM3XL2J64sIX8kMeDnXdnTVUFymopffU+6xHmT3dE2neq
	QK77ue3KLQaS2aMvPuenrYSdqLIvWEXwiylOs7lC7CAzI+Xfl2+vBfYhTpLDfq1JheKjp04Dex3EW
	FSYwdXsLkiczWDAs0wSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heHQV-0006DZ-B5; Fri, 21 Jun 2019 11:09:51 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heHOC-0005vW-JP
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 11:07:30 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190621110725euoutp026144abc67d166fcf6395672c08f3ccff~qMguAHIpi1865618656euoutp02p
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 11:07:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190621110725euoutp026144abc67d166fcf6395672c08f3ccff~qMguAHIpi1865618656euoutp02p
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1561115245;
 bh=KTzkzIChllLy2c5xxfE082TNL9X2BY16GTTqGf8LcYA=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=UvgqyJT16mvS4ZzdaccIWsNQjMKRNp2NowoQBk3flRMNPprJS3fp6fMLMg1uAzO5f
 XUqyO7zRfmnlOjeMr4cf3vDO1Ijh44+sQK9OgQZ8XRq3PCL1YfYhegtAKx0oRe/zrO
 3nR13UgfjEG65KmDmT90IlhYc4mMPq/uDsJd1gL0=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190621110725eucas1p1bd6c17d084452e54d39f0dec1f2d433b~qMgtcIkEk2803728037eucas1p1V;
 Fri, 21 Jun 2019 11:07:25 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 9B.BA.04325.C6ABC0D5; Fri, 21
 Jun 2019 12:07:24 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190621110724eucas1p280d182bc57d444db561561fd62384c60~qMgsrncMm2562925629eucas1p2-;
 Fri, 21 Jun 2019 11:07:24 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190621110724eusmtrp16eac737eaf298c20c1f15bf833ee4b88~qMgsdd-6t0192801928eusmtrp1G;
 Fri, 21 Jun 2019 11:07:24 +0000 (GMT)
X-AuditID: cbfec7f5-b8fff700000010e5-e3-5d0cba6c5a01
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 6F.54.04140.C6ABC0D5; Fri, 21
 Jun 2019 12:07:24 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190621110723eusmtip2ac731f6d596f6b4c9be2014c7c05dcf7~qMgr-xOfO3226132261eusmtip23;
 Fri, 21 Jun 2019 11:07:23 +0000 (GMT)
Subject: Re: [PATCH] video: fbdev: imxfb: fix sparse warnings about using
 incorrect types
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
To: linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org
Message-ID: <af111901-1fdb-a2d5-dcf7-aa2fd14c2ac5@samsung.com>
Date: Fri, 21 Jun 2019 13:07:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <8520d744-cebc-c76a-e51a-ff6a471af57d@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01SbUhTYRTu3b27u85NrlPxsKRiZZSUGvrjoqUG/VgZ6K8KRWzmZYrza1ct
 7UeGOT/xa0q5pITM6SCdc86PxEJlmopgqYihpkk4Q83MsA8l3VXy33POeZ7znAcOiUlG+FIy
 PimNUScpVDJCiFusv0bPq7pEUb6LLwPo8c01gp6fCKMNVZ04bfo8yacHS77x6cLfjRj9oauG
 oJdzFgh6u92E00tmd/pjuRaFOMo7dTMC+YtuG09uMhQQ8rmiAZ68te6BvGW1gycv3faVb5iO
 hZMRwouxjCo+g1H7BN0WxlmHtIKUHOKe3qYXZKMCfiFyIIHyh5I/67tYSEqoBgRjm18wrviB
 oHxkRsAVGwharA8FBxJzm57gBnoEraO5+8UKgrrcFftiFyoSNJX9dgVBBUB5ngHtYVcqBCqn
 yuxrMWqLB0WWJvtATAVB6dx3O8YpT9gqbsL2sBt1C+asRj7HcYZ31Yv4HnaggqFmtsfOxyh3
 mF58zuPwcchpe2oPAZRNAIPr9Yi7+woUV+Tsx3aB5QHzfh4PGNYW45ygCcF2/tK+uh2BXrtD
 cKxA6BsY21WTuxZnobnLh2tfBtPXOt5eGygnmFpx5o5wggrLY4xriyFfI+HYp8FYbyQObAs7
 G7EyJNMdiqY7FEd3KI7uv28twg3InUlnE5UM65fE3PVmFYlsepLS+05yognt/tjwzsBmB+r5
 G9OLKBLJROK3OscoCV+RwWYm9iIgMZmrWKQSRUnEsYrMLEadHK1OVzFsLzpK4jJ38f0jnyIl
 lFKRxiQwTAqjPpjySAdpNpoe94v3X4jZXH6TWuoj0zC10jWP8PGq7VQlOhFx85zEs75mMDq4
 sbT7tTbTeG2uiTcKSxihadwqaFWFBvaLOiew5Jm1LP/3CUM+FU8sfebQS0cUV70mG16FpDUT
 s/nsksqSld918lToz6BHAtv8Knv9xrOwDKtbdYXfcN4ZqQxn4xQXvDA1q/gHYkQCX18DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrDIsWRmVeSWpSXmKPExsVy+t/xe7o5u3hiDWZ+ZrO48vU9m8XDq/4W
 q6buZLHY9Pgaq8WJvg+sFl2/VjJbXN41h83iVfMjNou/2zexWLzYIm5xe+JkRgduj52z7rJ7
 LN7zkslj06pONo/73ceZPDYvqffY+G4Hk0f/XwOPz5vkAjii9GyK8ktLUhUy8otLbJWiDS2M
 9AwtLfSMTCz1DI3NY62MTJX07WxSUnMyy1KL9O0S9DKOnZrMXtDMVrH85XL2BsZO1i5GTg4J
 AROJLVuXs3UxcnEICSxllLh66C1jFyMHUEJG4vj6MogaYYk/17qgal4zSvyY3MsEkhAWiJZo
 m3KEHcRmE7CSmNi+ihHEFhFwkJhyYwI7SAOzwA8miaVz/oFtExIolljY9RXM5hWwk+i//wms
 gUVAVeJHzzpmEFtUIELizPsVLBA1ghInZz4BszkF7CXm3NsHVs8soC7xZ94lZghbXOLWk/lM
 ELa8RPPW2cwTGIVmIWmfhaRlFpKWWUhaFjCyrGIUSS0tzk3PLTbSK07MLS7NS9dLzs/dxAiM
 2W3Hfm7Zwdj1LvgQowAHoxIP74FZ3LFCrIllxZW5hxglOJiVRHh5cnhihXhTEiurUovy44tK
 c1KLDzGaAj03kVlKNDkfmE7ySuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0
 MXFwSjUwFj5/duvtAdbuIP72w2xnlF89VapydP1S97Hrw6pfu1LSWso0rO4/Uvi7yTp08kTv
 p9M6+O786Ln5++LffUr3f0clnP7c7XcvO7m36tWdzSoi3asdtsQ7928/933WulVK/HEB7+WY
 7m081lGTfsfhA/MP/m2XT21a6/Ol5smLmh5PP7HQOUaPZiqxFGckGmoxFxUnAgBIybWq7wIA
 AA==
X-CMS-MailID: 20190621110724eucas1p280d182bc57d444db561561fd62384c60
X-Msg-Generator: CA
X-RootMTR: 20190621110724eucas1p280d182bc57d444db561561fd62384c60
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190621110724eucas1p280d182bc57d444db561561fd62384c60
References: <33fc4837-599d-0d5c-c530-58b283c4c095@samsung.com>
 <8520d744-cebc-c76a-e51a-ff6a471af57d@samsung.com>
 <CGME20190621110724eucas1p280d182bc57d444db561561fd62384c60@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_040728_855767_6E71CFEA 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kbuild test robot <lkp@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDYvMTQvMTkgMTo1MyBQTSwgQmFydGxvbWllaiBab2xuaWVya2lld2ljeiB3cm90ZToKPiBV
c2UgLT5zY3JlZW5fYnVmZmVyIGluc3RlYWQgb2YgLT5zY3JlZW5fYmFzZSB0byBmaXggc3BhcnNl
IHdhcm5pbmdzLgo+IAo+IFsgUGxlYXNlIHNlZSBjb21taXQgMTdhN2IwYjRkOTc0ICgiZmIuaDog
UHJvdmlkZSBhbHRlcm5hdGUgc2NyZWVuX2Jhc2UKPiAgIHBvaW50ZXIiKSBmb3IgZGV0YWlscy4g
XQo+IAo+IFJlcG9ydGVkLWJ5OiBrYnVpbGQgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KPiBD
YzogU2hhd24gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPgo+IENjOiBTYXNjaGEgSGF1ZXIgPHMu
aGF1ZXJAcGVuZ3V0cm9uaXguZGU+Cj4gQ2M6IFBlbmd1dHJvbml4IEtlcm5lbCBUZWFtIDxrZXJu
ZWxAcGVuZ3V0cm9uaXguZGU+Cj4gQ2M6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWlsLmNv
bT4KPiBDYzogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5k
ZT4KPiBDYzogTlhQIExpbnV4IFRlYW0gPGxpbnV4LWlteEBueHAuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IEJhcnRsb21pZWogWm9sbmllcmtpZXdpY3ogPGIuem9sbmllcmtpZUBzYW1zdW5nLmNvbT4K
CkkgcXVldWVkIHRoZSBwYXRjaCBmb3IgdjUuMy4KCkJlc3QgcmVnYXJkcywKLS0KQmFydGxvbWll
aiBab2xuaWVya2lld2ljegpTYW1zdW5nIFImRCBJbnN0aXR1dGUgUG9sYW5kClNhbXN1bmcgRWxl
Y3Ryb25pY3MKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
