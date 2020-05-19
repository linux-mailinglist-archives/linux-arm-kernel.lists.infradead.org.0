Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 511A91DA381
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 23:26:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=24VewBSFh+smVSCgJ2h+Ht1D0aoU1ICNkuAn/WY/85c=; b=VzQMpKF4ZPcFz8
	Zsf85lNLS6Br15rMrbwOHbBfGQKJmiz25uwhgdl7YgXwOzqDm6KltjcF6K5b8zPSZqx65wSuCUxyr
	XyhyAS2s7cNsi4wjwbvWlHhJXUhpx98Yi+8ygUU52Eu2KE7pNX9kFVwwuVuf9qwCepih01ekN9Wr+
	x0rEPiGJd8Ja7v0+f1CQ92HLqzKUt/XQoAgn6SuQuEeQamBgSWrNtAUaMbLbDSincqyQC/8xbKrwN
	0DmnQ4o7BIjrbPYstXG+INttsPGNZa6m/AfXyshYq8AEv8prHqpxgihqT1oTpnVKpEGUVICu1+vNu
	ALnuwHuV5A1tQcuiJKug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb9kx-0004qJ-7s; Tue, 19 May 2020 21:26:35 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb9kn-0004oS-4d
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 21:26:26 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200519212618euoutp015b8b6a35ad22315cd6266f4dff4c4906~QixI__BNY2114821148euoutp01y
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 21:26:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200519212618euoutp015b8b6a35ad22315cd6266f4dff4c4906~QixI__BNY2114821148euoutp01y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589923578;
 bh=1c7VGWvexy2eW95UqCglB2SCwEWKkXv1iIEzc8i/+A0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nmzCc3IfOZR0RTjmEzmN4cxTlxmPF7oeznOzU+wU3q4pJMvjSpo4eCtfv5821X4N6
 Dw1s9j8I3C39ta1Nn7Fh2SLv7Pev7hVMnlaAaTzSkB2yejp+LA9g9pWIxpHDAl8UHM
 7ePx9efat7Rtb4dEDxKCtrcwZEKzYpp1FEcEyIIw=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200519212617eucas1p184ae7a3c1ceef4f3069943c69c8bbed0~QixIAgXno2659226592eucas1p1b;
 Tue, 19 May 2020 21:26:17 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id A9.EB.60679.9FE44CE5; Tue, 19
 May 2020 22:26:17 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200519212617eucas1p1b6e7af0ecb894896b165601fafd6abe8~QixHPs0gA2557025570eucas1p1W;
 Tue, 19 May 2020 21:26:17 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200519212617eusmtrp292b562aade6f48110764323077d6f380~QixHO68Go1117911179eusmtrp2b;
 Tue, 19 May 2020 21:26:17 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-2d-5ec44ef94874
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 83.A7.08375.8FE44CE5; Tue, 19
 May 2020 22:26:16 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200519212616eusmtip13926f680a1fb9914bec1e3649925e7ca~QixHBwEZQ2033920339eusmtip1y;
 Tue, 19 May 2020 21:26:16 +0000 (GMT)
From: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>
To: Matt Mackall <mpm@selenic.com>, Herbert Xu
 <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Florian Fainelli
 <f.fainelli@gmail.com>, Markus Elfring <elfring@users.sourceforge.net>,
 Matthias Brugger <mbrugger@suse.com>, Stefan Wahren <wahrenst@gmx.net>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, Stephan
 Mueller <smueller@chronox.de>
Subject: [PATCH v2 0/2] Set the quality value for two HW RNGs
Date: Tue, 19 May 2020 23:25:50 +0200
Message-Id: <20200519212552.11671-1-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200514190734.32746-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTYRjG+3bOzjla0+OSejFLGmkYZXazD+xexOkfsaKgQGu107p4Y0vt
 AhmTNJdupUQ1lbZUZsvrZitFU5ZpWamRZdFlXRaWZVgatnWfx6j/fu/7Pc/zfQ98DCHNooKY
 PUn7eVWSPEFG+ZL2NnfnHHdMa3ykpi8S/8hvo3Ht2Woxrsy7QeKuHDOBPR9baZxZUk3hE/3B
 WP/6PYG7umpo/NhRjrD19UMxdj53i/D9hiIKn+26JsLGApcYG+06hN+cs1H44yUXwqdvV5K4
 /WYOsSKQ++bJR5zBeZfiPvf0iLh6wzOaK7E2U5y9JZSzWnIorrm4guZspRmcrs6CON27GsRV
 1z0gOU1Htpgbsk6L9dvqu0TBJ+xJ41Vzl2333X3PXECnZIkPWM1PyKMom9QihgF2Idw5ptQi
 X0bKliNwtZURwjCMwK1z0Frk82cYQpCZu+mvwfaJEzRmBIXuEloY+hCY7CaR10CxK0FfdlPs
 5UC2SgwjZbyXCTYdjr10je4nskvB9sqEvEyyodA06BhlCRsNec/clJeBDYFs85VR9mGXQO9b
 j0jQBMCtcy7Sy/7sLKjQ9JJCfghkXi4cbQBsNwPGERMhBK2BHJ1mLHQi9LfX0QIHw6/68yKh
 WQYU5EcJ3lwE9qKvpKCJhqedHsqrIdhwqG6YK6xXQqlFP2b1g0cDAcIT/CDffoYQ1hI4niUV
 1DOgSt84FhgEef3l6CSSGf4rY/ivgOHfXUZEWNBkPlWdqOTV85P49Ai1PFGdmqSM2JmcaEV/
 fuftn+3DV1HD9x0OxDJINkES2Xg9XiqWp6kPJjoQMIQsUHLyrSNeKlHIDx7iVcnbVKkJvNqB
 pjCkbLJkwYV3cVJWKd/P7+P5FF7191TE+AQdRYe3KAJP3SEWaQecMfhi2pueCVPHj3v+wrn4
 iEJlLptWGZWwPiRuqLn2Rea+l0u7i8M29yyOcPetuYGDp5fSXKs+/QPBOK2Wtf57lU19w++b
 TS21G2aGbWlctGtgVUd2bCxet7oxxEPvaunP7axq3zpbYbRtXP5Fq+mYVBzeGlU+KCPVu+Xz
 ZhEqtfw3JclJQJkDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBKsWRmVeSWpSXmKPExsVy+t/xu7o//I7EGeycbmPxd9IxdouNM9az
 WqztPcpicb5zObPFr3dH2C2aF69ns+h+JWPR//g1s8X58xvYLW4eWsFosenxNVaL+/d+Mllc
 3jWHzWLG+X1MFgsmP2G1WLCtj9Hi6czNbBbvVj9htJh6ei2LxfETncwOIh6/f01i9Jh1/yyb
 x6crV5g8ds66y+6xeNN+No9tB1Q9Nq3qZPPYP3cNu8fmJfUefVtWMXr0vdzA6LF+y1UWj6ZT
 7awenzfJBfBF6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZmSrp29mkpOZklqUW
 6dsl6GVcXD6ZvaCNtWLT8tssDYztLF2MHBwSAiYSmz96dDFycQgJLGWU2L/xGyNEXEpi5dz0
 LkZOIFNY4s+1LjYQW0jgKaPE6++yIDabgKNE/9ITrCC9IgJ7WCV23+hkAkkwC5RLtD58wgpi
 CwvYSmx+tJARxGYRUJXY++EQmM0rYC3Re/cnG8QCeYn25dvBbE4BG4nrL34xQSyzlrjzZS4r
 RL2gxMmZT8BuZhZQl1g/TwgkzC+gJbGm6ToLxFp5ieats5knMArNQtIxC6FjFpKqBYzMqxhF
 UkuLc9Nziw31ihNzi0vz0vWS83M3MQJTxbZjPzfvYLy0MfgQowAHoxIPr8Gew3FCrIllxZW5
 hxglOJiVRHgnvDgUJ8SbklhZlVqUH19UmpNafIjRFOjNicxSosn5wDSWVxJvaGpobmFpaG5s
 bmxmoSTO2yFwMEZIID2xJDU7NbUgtQimj4mDU6qBsSH2fXJgdk2TwvTAi483rZwp9crpHGOg
 OEOfofxJyZn6vum/NeY37wtb/7LjDhPTcfVvSnY+6zUM/a5fTfuxkW1CqutGnV4rvyU+qx4v
 fn87XeK2gW6U7ikHwc5Jio0rzlzQvd8pO/ninl1WyydJn7qtx79k0qvsd99+Tq0weMMfvTvH
 93hkhBJLcUaioRZzUXEiACOC+cArAwAA
X-CMS-MailID: 20200519212617eucas1p1b6e7af0ecb894896b165601fafd6abe8
X-Msg-Generator: CA
X-RootMTR: 20200519212617eucas1p1b6e7af0ecb894896b165601fafd6abe8
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200519212617eucas1p1b6e7af0ecb894896b165601fafd6abe8
References: <20200514190734.32746-1-l.stelmach@samsung.com>
 <CGME20200519212617eucas1p1b6e7af0ecb894896b165601fafd6abe8@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_142625_315970_298FB7B2 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHJuZyBzdHJ1Y3R1cmUgY29udGFpbnMgdGhlIHF1YWxpdHkgZmllbGQgd2hpY2ggdGVsbHMg
aG93IG1hbnkgYml0cwpvZiBlbnRyb3B5IGNhbiBiZSBvYnRhaW5lZCBmcm9tIDEwMjQgYml0cyBy
ZWFkIGZyb20gYSBkZXZpY2UuIFdpdGggdGhlCnF1YWxpdHkgdmFsdWUgc2V0IHRoZSBod19yYW5k
b20gZnJhbWV3b3JrIHN0YXJ0cyBhIGtlcm5lbCB0aHJlYWQgdG8gZmVlZAp0aGUgZW50cm9weSBw
b29sIGluIHRoZSBDUk5HLCB3aGljaCBoZWxwcyB0byBpbml0aWFsaXplIGl0IHF1aWNrbHkKZXNw
ZWNpYWxseSBkdXJpbmcgYm9vdC4KCsWBdWthc3ogU3RlbG1hY2ggKDIpOgogIGh3cm5nOiBpcHJv
Yy1ybmcyMDAgLSBTZXQgdGhlIHF1YWxpdHkgdmFsdWUKICBod3JuZzogZXh5bm9zIC0gU2V0IHRo
ZSBxdWFsaXR5IHZhbHVlCgogZHJpdmVycy9jaGFyL2h3X3JhbmRvbS9leHlub3MtdHJuZy5jICB8
IDEgKwogZHJpdmVycy9jaGFyL2h3X3JhbmRvbS9pcHJvYy1ybmcyMDAuYyB8IDEgKwogMiBmaWxl
cyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCnYyOgogIC0gcmVjYWxjdWxhdGVkIHZhbHVlcyB1
c2luZyB0aGUgU1A4MDAtOTBCX0VudHJvcHlBc3Nlc3NtZW50IHBhY2thZ2UKLS0gCjIuMjUuMAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
