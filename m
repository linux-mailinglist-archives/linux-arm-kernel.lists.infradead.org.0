Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 402911AF9AB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 13:42:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bwZuBX1uDVj4C4CyrCZlwarQ+nrKJcmLVRVo6+h5zzA=; b=o63ytswFw+hIIu
	NMX+xxgAADHDBWH2jLuhdOd6pRuVq4I5/78LgvoldIledxiPzLrelX6Vw3MzKlfj7iWfVExgnBeTu
	2EA0db0UIhD9t/G7KcJ/QkCfJPjznEZG4r+q+FrRqA+dOA8REEbXOmVGFrrrCTf29iNuurPy++cg6
	Llel6icqaz1/Cfc9XkcIJEg7Muvm02YyMNX4sQ7twbMrhCemnVCdGPCBjYS5ZtpAcc8bDlhuJwXAS
	Pe9UT0+qIHZiqXTXASXwzIJva4LkW99xKm+ggAPkj4E113E07SeeWAuvvbQC/uZPkea2plyLPmFKB
	zHMv/bXtwMmHIGQHUTJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ8Lb-0001sk-Hx; Sun, 19 Apr 2020 11:42:51 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ8LR-0001rd-UJ
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 11:42:43 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200419114237euoutp029089c4cfbb1a3db87972cc287e4838a7~HNc83lM5u3145931459euoutp02G
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 11:42:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200419114237euoutp029089c4cfbb1a3db87972cc287e4838a7~HNc83lM5u3145931459euoutp02G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587296557;
 bh=AeTRUoP5V39CmSWykAJx1gTZc2CekR22fFKKiooFO+g=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=IH03Bg4Mgsp98nHLKfc76dpGIpzk4kRkeYYtydFyaqOYqVv3DSz2mdHTGqRSqvUxx
 h6sMPFG/uukNo/RXtSJoTNbSFjgfKJY3ByAuCoW6K4zLi1SVXyP+OwHheW5wfqsJWW
 ZqxrwFWm2XsSlsSR1gqEyx+XnIM0110rBr1JW6oM=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200419114237eucas1p29db691d91c8248572d40852ad3b7743e~HNc8dbWpT0646806468eucas1p2a;
 Sun, 19 Apr 2020 11:42:37 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id D9.26.61286.D293C9E5; Sun, 19
 Apr 2020 12:42:37 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200419114236eucas1p2f22fabf1382dc66f37e5ee2121ca5e69~HNc7qsku-0762307623eucas1p2F;
 Sun, 19 Apr 2020 11:42:36 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200419114236eusmtrp1616b7a71d57cf7ff1cde47c5144a3f64~HNc7pncTW0522005220eusmtrp1K;
 Sun, 19 Apr 2020 11:42:36 +0000 (GMT)
X-AuditID: cbfec7f2-ef1ff7000001ef66-76-5e9c392d611f
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 49.74.08375.C293C9E5; Sun, 19
 Apr 2020 12:42:36 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200419114235eusmtip2836501a9d091fe7d1d7b3ed83e181389~HNc6dpjMf2488024880eusmtip25;
 Sun, 19 Apr 2020 11:42:35 +0000 (GMT)
Subject: Re: [RFC 0/8] Stop monitoring disabled devices
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <4e77037a-6f19-b7a2-0090-9469f8297ee2@samsung.com>
Date: Sun, 19 Apr 2020 13:42:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <fc166e0f-91ec-67d5-28b0-428f556643a4@collabora.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01SbUxTZxjNe+/tvRek5rWofVTmsmY6R4JAFH3d1Ay3LPef/jBTl4lWuEEy
 KKYVpsZEnN8NKoqIFERQArRbkJVC6QQUVHCWFEUxakDtqFqJFS1+FUbV2wsZ/85znnPe55zk
 5WlVKzuTT9NtFfU6bbqGDWca2gOumJglJUlxOcEIYr4WZMg7V4Ailf0PGHL81AealA59Rkq6
 9jLEWB5H3D0ryf6hUwxxX/qe3Nt9gSIl3mxS58pVEEuBgyEOt48lVS1HEbH231EQ47CZJkOH
 ryDSXjad3LjxC/mjyUuTTme3gnjcR1gyarcyxGtTk+Z9N2lSZy2gv4sSGvsqkGAz36OEan+s
 4DD1cUJddbRwrukZJVgth1ih904TK7xwuT7xFbuEV889nPCk8DIl5L30scJfLxop4ehonPD+
 1nPFqsifw5emiOlp2aI+dvnG8M191x+iLYXcttvV17kc9FphRGE84IXQ31JOG1E4r8LVCHoe
 VHHy8BrByMtBVh6GEFyx5jLjlleO/8ZUVQhOlt1UyIMPwWBDASepIvFiKO6qZCU8FS+AQIMv
 5KDxWw4eX3waeorF38CxAxZkRDyvxMvh30CMRDN4DvQ8dCAJT8Nrwf/ociisEk+Bf4o8IWsY
 ToQiXwstYRqr4b7nDCXjz2FPfXGoEOD8MOjd04bk2D9Ahe0QK+NIGOiwcTKOAme+VE0y1CAY
 Pegdc9sRVOUHxxzfQq9rmJWS0vhrOP93rEwnwtXOGk6iAU+Gu74pcojJcLyhkJZpJRzcr5LV
 c6G2spYdP2t0mOk8pDFNqGaaUMc0oY7p/7tliLEgtZhlyEgVDfE68bf5Bm2GIUuXOj85M8OK
 Pn1sZ7DD34jedG9qQ5hHmgglLClOUim02YbtGW0IeFozVdn6Y1GSSpmi3b5D1Gdu0Geli4Y2
 NItnNGrlgrPP1qtwqnar+KsobhH141uKD5uZg9aZjnk1V9MndaSoZ2jY2c2z45JOBob15Ypd
 1/yeYC47UDfyYeH5Oe/y7fERk9afmFu7bl+pSeesr81r1NkSmeafWHOE/Ut+0VeubofxdLLz
 99Y181JG0OGdXZ0b3M7ynFn+3C/+VC0bKF2WlbAmqsdPWRJqMhMu1tsrm1fkrU4Y1DCGzdr4
 aFpv0H4EVMO5X9QDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrIKsWRmVeSWpSXmKPExsVy+t/xe7o6lnPiDDZ1SlusPPGPxeL7uZ9M
 Fsse32OxmDTjP7PFvM+yFnPOt7BYdC00sHh41d+i7fMMFouHB5wtbjbuZrKY86LMYvO5HlaL
 VVN3sljsfPiWzWL5vn5Gi02Pr7FadP1ayWzxufcIo8WxBWIWFy7EWKze84LZ4szpS6wWTx72
 sVn83b6JxeLFFnGLva0XmS02b5rK7CDjsePuEkaPLStvMnms+KTvsXPWXXaPzSu0PBbvecnk
 sWlVJ5vHnWt72DzenTsHFF9S7/HxzRN2j2fTDzN5TPjwls1j47sdTB79fw08flx+wxogHKVn
 U5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9nk5Kak1mWWqRvl6CXcffUfcaC
 6ewVV1acYm9g/MLaxcjJISFgIvFx5x92EFtIYCmjRM+5zC5GDqC4jMTx9WUQJcISf651sXUx
 cgGVvGaU2PnqMxtIQljAXGL2+WVgtoiAscTPbW/ZQYqYBX6wS/Q9/gLV8ZxJYvOmE2Db2ASs
 JCa2r2IE2cArYCfx6KcuSJhFQFXi6v2djCC2qECExOEds8BsXgFBiZMzn7CA2JwCjhIz3+5j
 BrGZBdQl/sy7BGWLS9x6Mp8JwpaXaN46m3kCo9AsJO2zkLTMQtIyC0nLAkaWVYwiqaXFuem5
 xYZ6xYm5xaV56XrJ+bmbGIHJaduxn5t3MF7aGHyIUYCDUYmHV8JydpwQa2JZcWXuIUYJDmYl
 Ed6DbjPjhHhTEiurUovy44tKc1KLDzGaAj03kVlKNDkfmDjzSuINTQ3NLSwNzY3Njc0slMR5
 OwQOxggJpCeWpGanphakFsH0MXFwSjUwZnEr9Jd2RB7/u1sqzHvb8eNPDnilz1md3LooJd5p
 1tb5kvyvDvHwr9JIZ9BgeyXXseS9t7pKW+OazmhOlsfdX52mfZcS6zi5tTtNzbO6f/Ln7rPR
 /853f7GeL1L6tll2V0fC/z08FyLXvjvWksvnN7N4XcCDhiT++oWvH1w8MynlRMT944WVSizF
 GYmGWsxFxYkA4j6U6GQDAAA=
X-CMS-MailID: 20200419114236eucas1p2f22fabf1382dc66f37e5ee2121ca5e69
X-Msg-Generator: CA
X-RootMTR: 20200415104010eucas1p101278e53e34a2e56dfc7c82b533a9122
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200415104010eucas1p101278e53e34a2e56dfc7c82b533a9122
References: <20200407174926.23971-1-andrzej.p@collabora.com>
 <2bc5a902-acde-526a-11a5-2357d899916c@linaro.org>
 <aeec2ce8-8fb9-9353-f3dd-36a476ceeb3b@collabora.com>
 <CGME20200415104010eucas1p101278e53e34a2e56dfc7c82b533a9122@eucas1p1.samsung.com>
 <dc999149-d168-0b86-0559-7660e0fdec77@samsung.com>
 <fc166e0f-91ec-67d5-28b0-428f556643a4@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_044242_110139_1D1DE802 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 platform-driver-x86@vger.kernel.org, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-acpi@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 Len Brown <lenb@kernel.org>, linux-pm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Ido Schimmel <idosch@mellanox.com>,
 Jiri Pirko <jiri@mellanox.com>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>,
 Shawn Guo <shawnguo@kernel.org>, Peter Kaestle <peter@piie.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, netdev@vger.kernel.org,
 Enrico Weigelt <info@metux.net>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ck9uIDQvMTcvMjAgNjoyMyBQTSwgQW5kcnplaiBQaWV0cmFzaWV3aWN6IHdyb3RlOgo+IEhpIEJh
cmxvbWllaiwKPiAKPj4+IFRoYW5rcyBmb3IgZmVlZGJhY2suCj4+Pgo+Pj4gQW55b25lIGVsc2U/
Cj4+Cj4+IFllcy4gOikKPj4KPj4gUGxlYXNlIHRha2UgYSBsb29rIGF0IHRoZSBmb2xsb3dpbmcg
cGF0Y2hzZXQgKHdoaWNoIEknbSByZXZpdmluZyBjdXJyZW50bHkpOgo+Pgo+PiDCoMKgwqDCoGh0
dHBzOi8vcHJvdGVjdDIuZmlyZWV5ZS5jb20vdXJsP2s9NWQzN2JhZGYtMDBhOTIxMzUtNWQzNjMx
OTAtMGNjNDdhNmNiYTA0LTM3NmFlNDVhYTAyOGIxOWEmcT0xJnU9aHR0cHMlM0ElMkYlMkZsa21s
Lm9yZyUyRmxrbWwlMkYyMDE4JTJGMTAlMkYxNyUyRjkyNgo+Pgo+PiBJdCBvdmVybGFwcyBwYXJ0
aWFsbHkgd2l0aCB5b3VyIHdvcmsgc28gd2UgbmVlZCB0byBjb29yZGluYXRlIG91ciBlZmZvcnRz
Lgo+Pgo+IAo+IEkndmUganVzdCBzZW50IGEgdjMuIEFmdGVyIGFkZHJlc3NpbmcgeW91ciBhbmQg
RGFuaWVsJ3MgY29tbWVudHMgbXkgc2VyaWVzCj4gbm93IGxvb2tzIHByZXR0eSBjb21wYWN0LiBM
ZXQncyBzZWUgaWYgdGhlcmUncyBtb3JlIGZlZWRiYWNrLiBJcyB5b3VyIHdvcmsgb24KPiByZXZp
dmluZyB0aGUgYWJvdmUgbWVudGlvbmVkIDIwMTggc2VyaWVzIHJlYWR5PwoKTm90IHlldCwgYWxz
byBJIHRoaW5rIG5vdyB0aGF0IGl0IHdpbGwgYmUgdGhlIGJlc3QgaWYgSSByZWJhc2UgbXkgY2hh
bmdlcyBvbgp0b3Agb2YgeW91ciBwYXRjaHNldCAob25jZSBpdCBpcyByZWFkeS9maW5pc2hlZCku
CgpCZXN0IHJlZ2FyZHMsCi0tCkJhcnRsb21pZWogWm9sbmllcmtpZXdpY3oKU2Ftc3VuZyBSJkQg
SW5zdGl0dXRlIFBvbGFuZApTYW1zdW5nIEVsZWN0cm9uaWNzCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
