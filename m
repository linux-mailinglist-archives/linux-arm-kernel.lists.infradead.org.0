Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A25F51DA384
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 23:27:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+lbk0ajzO0o/1VRLQoaUDiTGstEqwKxGDmC07pyiEUw=; b=hkeoV8mjuPsKF2
	nsU0R+aW61lHLDQHZtQkKruELbkjJIlTjBzk9/IQe50vkn3Cbyxd9FXNS6XJ7q8C5n0qNVJM4Zn7D
	/qEg3X7eFsUD2MrxvXigIHjJHAvXc1Yi2Uv+z28dkB2fp+hLNNq71FBL7GMRwhOWgkNqv831DAC2S
	aDMSRI1Cnkh9PMcAfuZMvsFZKEtAYszN6ReVhaGGLt5Swq9GOjRABW7LEzOQ8zRFY5P4MDd9c4TtU
	jEDU0p+ZmAEW7dKrZrzParLYfa9FzIg/gObk5wtNsbRPk/7w6mhRTeFWtIxbK3Q9+SR8TUGwNIKdH
	rPC2fpQ2gQLxxvGFuKPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb9lG-0004yY-Aa; Tue, 19 May 2020 21:26:54 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb9kn-0004ol-4d
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 21:26:26 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200519212621euoutp01916aba703da653eae973e407c2281bdb~QixLWRYuS2114821148euoutp010
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 21:26:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200519212621euoutp01916aba703da653eae973e407c2281bdb~QixLWRYuS2114821148euoutp010
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589923581;
 bh=8xXZu8KwJk4sk0qFMS95EUYNTZd+JYVuM8QsDA9u3E4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=H7F9ahBCKUGfCGmWulahyKuCVWR6GajpYRHuKK9hI62/af0WJG+94344PjlUbgOVG
 VYLDHdc7tIJgvORIJ8G666jnMk4x8SYYcOMiz/WoEDldCbpVgv4rx9O8H+XU65/U6F
 ywRl+SHicya9BfxC3k5hvuNLqhQd4sw4I9uZqTVE=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200519212620eucas1p19083ebe06068f2df9d92c89dd411c130~QixKJrBRv2659526595eucas1p1U;
 Tue, 19 May 2020 21:26:20 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 1B.EB.60679.CFE44CE5; Tue, 19
 May 2020 22:26:20 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200519212619eucas1p22fa5d3db2521096dc4b79f6e53016d17~QixJiNzIA1745917459eucas1p2P;
 Tue, 19 May 2020 21:26:19 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200519212619eusmtrp12c03ca924274527851ee90af96fc896a~QixJhaGtF2223622236eusmtrp1M;
 Tue, 19 May 2020 21:26:19 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-31-5ec44efc18f7
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id F8.D4.07950.BFE44CE5; Tue, 19
 May 2020 22:26:19 +0100 (BST)
Received: from localhost (unknown [106.120.51.46]) by eusmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20200519212619eusmtip2245d2c1bb185ae2415f0e2571978fc74~QixJUQ9CC0582005820eusmtip2b;
 Tue, 19 May 2020 21:26:19 +0000 (GMT)
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
Subject: [PATCH v2 1/2] hwrng: iproc-rng200 - Set the quality value
Date: Tue, 19 May 2020 23:25:51 +0200
Message-Id: <20200519212552.11671-2-l.stelmach@samsung.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200519212552.11671-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Organization: Samsung R&D Institute Poland
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRjm2zk7O0qz0zR8maU18kdKXkriAyW0gk50wR/9qEhr1UHDbeqW
 lhEomZl3USpdViMVxXsnnTWkbK20vKzyVmFJtKiWinkhNcvajpH/nvf9nud5nwc+mpBlUnL6
 lOY0p9UoVQrKlTQ+nevdtLDfEh30vYHCv4qeSvCdkkYxrs97QmJrVhWB58ctEpxe3kjhHPsa
 XPDxG4Gt1iYJfmOuRpj/OCjGI+/nRLjPVEbhEusDETYU28TYYMxH+FPpXQqP19oQvtJVT+KO
 ziwi3IP9OV+EWP1ID8VO9veL2Pv6dxK2nH9IscZ2X5avyaLYhzfqJOzdilQ2v7kGsflfmxDb
 2DxAsheeZ4rZKd470u2wa9hJTnUqmdMGbjvmGts03EskFNJn+9pziDR0UZKNXGhgQuCycZbK
 Rq60jKlGYK/4iYRhGkHuYDflYMmYKQQt1tXZiHYqxgbDBU4VgopbbyXC8BlBXckvp4BiIqCg
 slPswB5Mgxh+VHIOTDBnIOODzbl3Z3ZAWn+zE5OMLyyONpEOLGVCIfvmIiHE84HMqlanpwsT
 BpbZGUrgrIJnpTYnfyXjB3UXhkjB3wfSW64TjkDAvKDBdLuFFIx2wkhuxlJnd7B3NC/hNdBV
 nEsKzVKhuGiroM1FYCybXdKGwnDvPOXgEMxGaDQFCusIsEy+pASpG7weWyVEcIMi4zVCWEvh
 8iWZwN4ADQVtS4ZyyLNXo0Kk0C8ro19WQP//lgERNciTS9KpYzjdZg13JkCnVOuSNDEBJ+LV
 PPr7Pbt+d0zfQ6aF42bE0EixQhrU9jhaJlYm61LUZgQ0ofCQFn4xR8ukJ5Up5zht/FFtkorT
 mZEXTSo8pVtuf42SMTHK01wcxyVw2n+vItpFnobKakNs3QGHvPcOJLS3HUv2PziWuDt0XLtr
 5W+v9rpHfd48cSRxbW+xZbFSNKyZoBZSWkFaKF4n35M65Rdsk22vZQY9RuOsQ96jCSPnDYah
 W1dDbvrfmIqciQ5dz0+MTwa7R23bx/OR9gM95arEMX1lZITqlV9pd5R6uymwNDNWQepilcF+
 hFan/AOEH3DsmgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA02SWUwTURSGvZ2lA1odS43XigJNiIbEYkHoBYG4YDJPxGj0AbVYYQIipaRT
 UHgRiwvUyGZIoAohokERpBQsKHvLJot9EBHcDSWuYFhMZFVKY+Tty/n//yzJoTBhESGmziZq
 WU2iMkFCuuJ9S93vd81HdCh2d7VsRYv5XXxUU1hNoKobnTiyZZVjaG6ig48yyqpJdP2bO8oZ
 /Y4hm83IRyOW+wCZRocI9OH9LA+9eHqbRIW2Fh4qvWknUKk5G6CxoloSTTy0A1TQV4Wj7p4s
 bJ+ImZ/LB4zhwwDJTA0O8pgnhnd8pszUSjLmNm/GVJFFMq3FlXym9u5FJruuAjDZX42Aqa57
 iTO63msEM23afnh9pDREo07Wsp5xak4bKjkhQ35SWRCS+u0Jksr85aeC/QIkvmEhMWzC2RRW
 4xt2WhpnfPscS8qlLrxou46lg8t8PaAoSO+B40P79MCVEtL3AJzJ6COcdTF8UByrBy7L6AYX
 hvSk0zMG4P3e16RDIOn9MOdeD+EQRHQTARuHs3gOAaPPwyuf7ISD3eiDMH2wboVx2hv++WHE
 HSyg90J9yR/MOcEDXiuvX2nqQofAjt+/VlhIq2DewgDh9G+Ez4rsuGM5jN4Bq0uEjvIG2gdW
 6l7hzrEeMOPxLSwXCA2rEob/CcMqVynAKoCITeZUsSrOT8opVVxyYqw0Wq0ygeW3MHfN1jUA
 /cRRC6ApIFkn2N1kVQgJZQqXqrIASGESkSD3i0UhFMQoU9NYjTpKk5zAchYQsHxmHibeFK1e
 frJEbZQsQCZHQTK5v9w/EEk2CzLp9pNCOlapZc+xbBKr+ZfjUS7idPCqOfBIttLglVOepu87
 gK95EzC4wNs53b/o3tAiaA+enGqm+iPBnUeeBV46RdPHGZ21v3JkMvKzSMHIc7vlHuPD1uNJ
 8REa4yc7DL96xjwaGaYSh8/GL83/fN2m22KV0ws69dpQc+ah+l7bVIaofKbTahurmbj0zlx5
 zG1bowTn4pQyH0zDKf8CFUGULSwDAAA=
X-CMS-MailID: 20200519212619eucas1p22fa5d3db2521096dc4b79f6e53016d17
X-Msg-Generator: CA
X-RootMTR: 20200519212619eucas1p22fa5d3db2521096dc4b79f6e53016d17
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200519212619eucas1p22fa5d3db2521096dc4b79f6e53016d17
References: <20200514190734.32746-1-l.stelmach@samsung.com>
 <20200519212552.11671-1-l.stelmach@samsung.com>
 <CGME20200519212619eucas1p22fa5d3db2521096dc4b79f6e53016d17@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_142625_316072_D559F0B8 
X-CRM114-Status: GOOD (  14.71  )
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

VGhlIHZhbHVlIHdhcyBlc3RpbWFkZWQgd2l0aCBlYV9paWRbMV0gdXNpbmcgb24gMTA0ODU3NjAg
Ynl0ZXMgcmVhZCBmcm9tCnRoZSBSTkcgdmlhIC9kZXYvaHdybmcuIFRoZSBtaW4tZW50cm9weSB2
YWx1ZSBjYWxjdWxhdGVkIHVzaW5nIHRoZSBtb3N0CmNvbW1vbiB2YWx1ZSBlc3RpbWF0ZSAoTklT
VCBTUCA4MDAtOTBQWzJdLCBzZWN0aW9uIDYuMy4xKSB3YXMgNy45NjQ0NjQuCgpbMV0gaHR0cHM6
Ly9naXRodWIuY29tL3VzbmlzdGdvdi9TUDgwMC05MEJfRW50cm9weUFzc2Vzc21lbnQKWzJdIGh0
dHBzOi8vY3NyYy5uaXN0Lmdvdi9wdWJsaWNhdGlvbnMvZGV0YWlsL3NwLzgwMC05MGIvZmluYWwK
ClNpZ25lZC1vZmYtYnk6IMWBdWthc3ogU3RlbG1hY2ggPGwuc3RlbG1hY2hAc2Ftc3VuZy5jb20+
Ci0tLQogZHJpdmVycy9jaGFyL2h3X3JhbmRvbS9pcHJvYy1ybmcyMDAuYyB8IDEgKwogMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFyL2h3X3Jh
bmRvbS9pcHJvYy1ybmcyMDAuYyBiL2RyaXZlcnMvY2hhci9od19yYW5kb20vaXByb2Mtcm5nMjAw
LmMKaW5kZXggMzJkOWZlNjFhMjI1Li45NTY2OWVjZTA1MGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Y2hhci9od19yYW5kb20vaXByb2Mtcm5nMjAwLmMKKysrIGIvZHJpdmVycy9jaGFyL2h3X3JhbmRv
bS9pcHJvYy1ybmcyMDAuYwpAQCAtMTk5LDYgKzE5OSw3IEBAIHN0YXRpYyBpbnQgaXByb2Nfcm5n
MjAwX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcHJpdi0+cm5nLnJlYWQg
PSBpcHJvY19ybmcyMDBfcmVhZCwKIAlwcml2LT5ybmcuaW5pdCA9IGlwcm9jX3JuZzIwMF9pbml0
LAogCXByaXYtPnJuZy5jbGVhbnVwID0gaXByb2Nfcm5nMjAwX2NsZWFudXAsCisJcHJpdi0+cm5n
LnF1YWxpdHkgPSAxMDAwLAogCiAJLyogUmVnaXN0ZXIgZHJpdmVyICovCiAJcmV0ID0gZGV2bV9o
d3JuZ19yZWdpc3RlcihkZXYsICZwcml2LT5ybmcpOwotLSAKMi4yNi4yCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
