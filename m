Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D64E1D3C0E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 21:08:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eGn9i/K9Ch5TgKD59bnoXz1qPwK0Kbw5ttfTNxNdEsk=; b=NEPgFI+nKWGRCW
	629z+6XiVL4psnDAf4JDjt+1FWBEG/mk81k13jfhbFR27iSkWFIdpcEGXnCelWmoF8iLCdrXeoSwT
	0cmp3jZIhBKlI6wDKCr0+GngE1QSTCj/J62G0ZH69SwI2me39QsOrxCU6rwilDmayKx7AAyXeyQlD
	YDMMu0RMwEIYglJAsfkqxG8qQiX3Qa/OYDH5OAFB9ptxePFNGxbw2IO39Ct4Q3qwt7kHIou/hcmiZ
	08/s2KJ9/esQ+1nrIv/6DMftZjz1ne5tz/d3DbCuGqMC/l+40pXcwZDOkV7m9Xl4v5nJEYtnHdPrZ
	tnugHPwzu9oTovQN67dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZJDG-0007sa-NW; Thu, 14 May 2020 19:08:10 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZJCn-0007jr-MJ
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 19:07:45 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200514190740euoutp02f65dfc1e0fe0e7a44cfb43861e670975~O_pqNKN5O1067510675euoutp02R
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 19:07:40 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200514190740euoutp02f65dfc1e0fe0e7a44cfb43861e670975~O_pqNKN5O1067510675euoutp02R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589483260;
 bh=0ZTSEZCdZQmmB3Cuf4f7fDeYUffZn+GsVAdbdhxdQ5Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OuKiGx3+2JiS7BvGECbc+jyku4zGJDdZ5m9YG4MSrDREE8kitFBoCiuKvlLcDxUH9
 YnbokNDaW6Q0hzI2Dt9bpZzNBO1N0UyWvHpF+MRnADy0789en/GHNQVv1/PTX1sxbT
 BrQB4/l8t1uFnMNAydoZU2919kid093HrwTW2Y3s=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200514190739eucas1p128e1f360ca382919779973520cc2d026~O_ppzoPtB2658126581eucas1p1E;
 Thu, 14 May 2020 19:07:39 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id D4.98.60698.BF69DBE5; Thu, 14
 May 2020 20:07:39 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200514190738eucas1p2695c0d8af064ee702209ca03696ef438~O_po-9KUX0444904449eucas1p2n;
 Thu, 14 May 2020 19:07:38 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200514190738eusmtrp1af5f742bc66af38419c76ed7d1f90ba7~O_po55Wqj2577025770eusmtrp1n;
 Thu, 14 May 2020 19:07:38 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-b3-5ebd96fb75c4
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id D4.BE.07950.AF69DBE5; Thu, 14
 May 2020 20:07:38 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20200514190738eusmtip1e02e9ee08457f754ba2db3422c2673cc~O_pordu_C0350703507eusmtip1P;
 Thu, 14 May 2020 19:07:38 +0000 (GMT)
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
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org
Subject: [PATCH 1/2] hwrng: iproc-rng200 - Set the quality value
Date: Thu, 14 May 2020 21:07:33 +0200
Message-Id: <20200514190734.32746-2-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200514190734.32746-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA01SfUyMcRz363ntOD1d0Vde2o7mZVNZzX7mEGN7Zmb+sDGrOHp2opI7Hdm8
 hd670qG6iqaoJR1355YoLVS0ujAulkLpzbJZjM5LunvO+O/z/X7eft/txxKyCcqfjYk/JKjj
 lbFyWkJam8c7lv64WB8VYutdhH/lNTP4VoGRwjeyH5HYll5BYMenhww+XWakcebIHJzT95HA
 NttNBr9qqkTY1PeSwr094x74eV0xjQtsDR64VN9P4VKrDuEPhWYaf7rej3BLazoR7sP/cOQh
 3tDbTvN3DG8Yvsx0n+atjYG8qSqd5u+XVDO8ufwEr7NUIV43fBPxRssLkk9+kkrxY6Z5W6Q7
 JIpoITZGK6iDV++S7L2m+0glXGaOPJ/IJE+ic3QG8mSBC4PfFrsLy7hKBA+uqDOQZBJ/QTDR
 ncaIwxiCnqed1F/Hpc/lpEhUIMhPLXQPgwiGB+4gp4rm1kLO1VbKSfhyZynQf84lnQTBHYaz
 7/pdUT5cOJhSslzlJBcI1okXrr2UWwm5BTnuugAoOtXm0nhyCrAPOTxEjTc8Lux3ZXpxS6A6
 2e7OD4DTt4sIZzFwjSz0vi93X7oeUh70uLEPjLRYGBHPgTZ91qSZncQnQJ+3XPRmIbAWfydF
 zUro7nDQTg3BLQZjXbC4Xgv6y88Y0Toduka9xSdMhzxrPiGupZCWIhPVC6Am55470B+yRypR
 LpIb/jvG8N8Bhn9dpYioQn5CoiZOJWhC44XDQRplnCYxXhW050CcCU1+y7bfLV9rUcPP3U2I
 Y5F8mjTkQn2UjFJqNUlxTQhYQu4r3Wy8GyWTRiuTjgrqAzvVibGCpgnNZkm5nzT0ynCkjFMp
 Dwn7BSFBUP9lPVhP/5NIImjbZ6lqJAf5sW2lfrsGA1Z492yvauno5n5m79Z6Lnfsa1atmuGb
 +nXqW7BET9Mlb7W/Gpg6f8dxa722Mm3oXp/C6/xo7aIOvXl0f1Kx15mwhog687bODPuxyKsz
 jYEb13UhRe23rpCy3IxN+Wb53Cnzby30YRUlERvOkWvG/V/LSc1e5bIlhFqj/AOwdzj4kgMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupnleLIzCtJLcpLzFFi42I5/e/4Xd1f0/bGGcxYpW3xd9IxdouNM9az
 WqztPcpicb5zObPFr3dH2C2aF69ns+h+JWPR//g1s8X58xvYLW4eWsFosenxNVaL+/d+Mllc
 3jWHzWLG+X1MFgsmP2G1WLCtj9Hi6czNbBbvVj9htDh+opPZQdjj969JjB6z7p9l89g56y67
 x+JN+9k8th1Q9di0qpPNY//cNewem5fUe/RtWcXo0fdyA6PH+i1XWTyaTrWzenzeJBfAG6Vn
 U5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9nk5Kak1mWWqRvl6CXsazvNWvB
 fPaKy/+7WRoYJ7J1MXJySAiYSMz7uISli5GLQ0hgKaPEzi2ngBIcQAkpiZVz0yFqhCX+XOsC
 qxcSeApU89MAxGYTcJToX3qCFaRXRGAyq8SbPa1MIAlmgXKJ1odPWEFsYQEHiU1tPWDNLAKq
 Etv+XwWL8wpYS0yY0c8KsUBeYnbjabAaTgEbiesvfjFBLLOWuPNlLlS9oMTJmU9YQG5jFlCX
 WD9PCCTML6AlsabpOgvEWnmJ5q2zmScwCs1C0jELoWMWkqoFjMyrGEVSS4tz03OLjfSKE3OL
 S/PS9ZLzczcxAhPDtmM/t+xg7HoXfIhRgINRiYfXYOreOCHWxLLiytxDjBIczEoivH7rd8cJ
 8aYkVlalFuXHF5XmpBYfYjQFenMis5Rocj4waeWVxBuaGppbWBqaG5sbm1koifN2CByMERJI
 TyxJzU5NLUgtgulj4uCUamDc6Bnd/f4Rb9E2S0XxfoavT97lrJYWeJGavOdAdc+3T//EbX4r
 9VfbL/mudnfGjQjz39v11dL3Fc68rXlzVpTNmhNbXp3gUbnf0fNthXi8zYL/n82+xF6X1Ant
 zpssuejVnsMrInhTuZSfV802Ud0nz/I8pPGf8tfqzrwLTBOPlX6z3PlkU/0JJZbijERDLeai
 4kQAVkcDliIDAAA=
X-CMS-MailID: 20200514190738eucas1p2695c0d8af064ee702209ca03696ef438
X-Msg-Generator: CA
X-RootMTR: 20200514190738eucas1p2695c0d8af064ee702209ca03696ef438
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200514190738eucas1p2695c0d8af064ee702209ca03696ef438
References: <20200514190734.32746-1-l.stelmach@samsung.com>
 <CGME20200514190738eucas1p2695c0d8af064ee702209ca03696ef438@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_120741_860541_18B58948 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

VGhlIHZhbHVlIGhhcyBiZWVuIGVzdGltYWRlZCBieSBvYnRhaW5pZyAxMDI0IGNodW5rcyBvZiBk
YXRhIDEyOCBieXRlcwooMTAyNCBiaXRzKSBlYWNoIGZyb20gdGhlIGdlbmVyYXRvciBhbmQgZmlu
ZGluZyBjaHVuayB3aXRoIG1pbmltYWwKZW50cm9weSB1c2luZyB0aGUgZW50KDEpIHRvb2wuIFRo
ZSB2YWx1ZSB3YXMgNi4zMjc4MjAgYml0cyBvZiBlbnRyb3B5CmluIGVhY2ggOCBiaXRzIG9mIGRh
dGEuCgpTaWduZWQtb2ZmLWJ5OiDFgXVrYXN6IFN0ZWxtYWNoIDxsLnN0ZWxtYWNoQHNhbXN1bmcu
Y29tPgotLS0KIGRyaXZlcnMvY2hhci9od19yYW5kb20vaXByb2Mtcm5nMjAwLmMgfCAxICsKIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2hhci9o
d19yYW5kb20vaXByb2Mtcm5nMjAwLmMgYi9kcml2ZXJzL2NoYXIvaHdfcmFuZG9tL2lwcm9jLXJu
ZzIwMC5jCmluZGV4IDMyZDlmZTYxYTIyNS4uN2ViMDJhMjNmNzQ0IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2NoYXIvaHdfcmFuZG9tL2lwcm9jLXJuZzIwMC5jCisrKyBiL2RyaXZlcnMvY2hhci9od19y
YW5kb20vaXByb2Mtcm5nMjAwLmMKQEAgLTE5OSw2ICsxOTksNyBAQCBzdGF0aWMgaW50IGlwcm9j
X3JuZzIwMF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXByaXYtPnJuZy5y
ZWFkID0gaXByb2Nfcm5nMjAwX3JlYWQsCiAJcHJpdi0+cm5nLmluaXQgPSBpcHJvY19ybmcyMDBf
aW5pdCwKIAlwcml2LT5ybmcuY2xlYW51cCA9IGlwcm9jX3JuZzIwMF9jbGVhbnVwLAorCXByaXYt
PnJuZy5xdWFsaXR5ID0gODAwLAogCiAJLyogUmVnaXN0ZXIgZHJpdmVyICovCiAJcmV0ID0gZGV2
bV9od3JuZ19yZWdpc3RlcihkZXYsICZwcml2LT5ybmcpOwotLSAKMi4yNS4wCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
