Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B04B7C6A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 16:26:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tUBo5SsH4Fu1QNWrTPlEy5i8CAAZtsXsu1YeeD0ka78=; b=Cy1kiu/tJi3gOY
	9Va7voGdumY0JOKsOQKMIwq1r6T1jBZEI1xwMo+yqpKQoTzymsf75CNdyucE4ryhtoZRQZk/zJvGh
	VPxeojVgRGDDIuSUuW2oJZGSXVjEpVs1Az2nzYILWq8EOyr3PhFpPq+VOdWFsSEZO+7CXuv/y+Eny
	NaFeqL7vd9VSzEYkyh3EySELX143hujASGkcD9Amz32aU2yMqS9XkEMPh/r5KsuEqjqO7sE+94Wto
	epJhwuV4QPFb2SRbJ67xqKkog2OD7AxWP9plp6cNYBny/J9Sv5JyM35dqNySjE/NCXE5cMI7Pu5S9
	z3MTo2Ilpk124/jFTVZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAxNX-0007qE-UF; Thu, 19 Sep 2019 14:25:52 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAxLF-0004Z8-7v
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 14:23:30 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190919142327euoutp010dcd346fe1b3855a3d4efe137a093dda~F3Pkmeu9z2200122001euoutp015
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 14:23:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190919142327euoutp010dcd346fe1b3855a3d4efe137a093dda~F3Pkmeu9z2200122001euoutp015
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568903007;
 bh=AnLAppA40BqI8z9CshVPHeubC24brELzTHSPwO597YU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cGGCO4gw0XNbaT4tGaFmmq24vCXg6zOwdLdDc+/kh6RY1gK3MCaTKtNiadylqGYs3
 9Wys+2ExITVJBhA9dGuAorow4BiGfoVVMRd8TYahzKApA58QvVY+uk8DQ55idgUFYG
 6JfoCtdtMgyjbemZznTW3r3nJNM4PpLQESWvfAFs=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190919142327eucas1p2ed6a1e2c127dd2789af76ab265167b07~F3PkJG0Yp3082530825eucas1p2m;
 Thu, 19 Sep 2019 14:23:27 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id A9.1B.04309.F5F838D5; Thu, 19
 Sep 2019 15:23:27 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190919142326eucas1p204819014fe85716b47e2de4af9102cd5~F3PjKGocO2469524695eucas1p2L;
 Thu, 19 Sep 2019 14:23:26 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190919142326eusmtrp1095ef82681f3c06555d9fdcc527e3361~F3Pi7onA90555105551eusmtrp1a;
 Thu, 19 Sep 2019 14:23:26 +0000 (GMT)
X-AuditID: cbfec7f4-afbff700000010d5-56-5d838f5f8266
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id B2.65.04117.D5F838D5; Thu, 19
 Sep 2019 15:23:25 +0100 (BST)
Received: from AMDC3555.digital.local (unknown [106.120.51.67]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190919142325eusmtip10316e90c68f927ac1cd0f37950339202~F3PiEhIDb3226332263eusmtip1B;
 Thu, 19 Sep 2019 14:23:25 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH v2 06/11] interconnect: Relax requirement in
 of_icc_get_from_provider()
Date: Thu, 19 Sep 2019 16:22:31 +0200
Message-Id: <20190919142236.4071-7-a.swigon@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190919142236.4071-1-a.swigon@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTYRjG+3YuOxtNjlPypYvZNKEsu9DlK0UKQw5E0B8FooiuOmikU3a8
 dIEyzZqXtCaiuTArU1NMXfPSNDMbmUiuZZpQa9W63yS2kKgs57Hyv9/3Ps/zPd8LH0MoHdR8
 Zr8mnddq1MkqWk623/0+tDK+JDdudWejFPfdbZNiR1Uewq0VzRR+7H5L4QuWIQo/+jZO4/Kb
 RhrrHWdIbLW2SHG9/SuFjc5RCg+bz9PYddqCcIW1R4KbLHYpfnK8nsYVpe/pLd6csSGf5p6O
 dtOco7Bfwl2vOca1fumUcLe/dEu4YlMD4lxG/51MjDx8H5+8P5PXropIkCc1ua9SaVbpweY6
 E5GNzHQBkjHAroPeiTGyAMkZJVuPQNf0ghYPbgTOE0+nXUrWhWDgSvDfROudH0g01SG4NfIS
 /UsUGhooj4tmt4K+7LnUI/iyFgSl1ePTJQRbI4Fig5XwuHzYODgxPinxMMkuhapKm9TDChZD
 bXY1IfYthsaW3mmWsZvA3XOBFD3eMHDu1TQTU57cNgPhKQA2j4H75Q8oMbwNDBM5M6v6wId+
 k1TkhTBYWkSKLMDrGw5KDGcjMNZaZprD4E6/bUpgphqWQbN5lTjeCg/NdolnDKwXjH32Ft/g
 Bfr2ckIcK0B3UimiCsznvMQgQE7j6MzdHJSV28gzaEnlrGUqZy1T+b+2GhENyI/PEFISeWGt
 hs8KFdQpQoYmMXRvaooRTX27wcl+dycy/9zTh1gGqeYqArJy45SUOlM4lNKHgCFUvorz63Pi
 lIp96kOHeW1qvDYjmRf60AKGVPkpjsx5HqtkE9Xp/AGeT+O1f1UJI5ufjdJR1rGEZ2jRYOzy
 S20V8R1hQ26Z83Jn1MUgve+yNz26qBXxiuGzISFHO9ZF1oVsKGl58uG+entLZLjdPzqMKTTb
 DVVlAcS9JGKDznSwUPdxx7xPv+/t6g1b9GvjcFGwy2WeiA7cXZuZ+s7WteS607aZ1vfmB5lO
 xXRFXBMCO0ZYFSkkqdcsJ7SC+g9oiYmgcgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrKIsWRmVeSWpSXmKPExsVy+t/xu7qx/c2xBts2WFscOraV3eL+vFZG
 i40z1rNaXP/ynNVi/pFzrBZXvr5ns5i+dxObxaT7E1gszp/fwG6x4u5HVotNj6+xWlzeNYfN
 4nPvEUaLGef3MVmsPXKX3eJ24wo2ixmTX7I5CHpsWtXJ5nHn2h42j/vdx5k8Ni+p99j4bgeT
 x8F3e5g8+rasYvT4vEkugCNKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP0Ng81srIVEnf
 ziYlNSezLLVI3y5BL2Ptl5WsBefZK9Yv38LcwLiLrYuRk0NCwERi4+HfjF2MXBxCAksZJXYd
 OsICkZCQ+Lj+BiuELSzx51oXG0TRJ0aJb+fOgyXYBBwlJk19wA6SEBE4xSixdfk5sCpmgQ1M
 EsufvgSrEhaIlvjzfiMTiM0ioCoxb9ZFdhCbV8BCYlnDAmaIFfISqzccALM5BSwlvuybD3aG
 EFDN3MdzGSHqBSVOznwCFOcAWqAusX6eEEiYGai1eets5gmMgrOQVM1CqJqFpGoBI/MqRpHU
 0uLc9NxiI73ixNzi0rx0veT83E2MwCjeduznlh2MXe+CDzEKcDAq8fAqlDfHCrEmlhVX5h5i
 lOBgVhLhnWPaFCvEm5JYWZValB9fVJqTWnyI0RTotYnMUqLJ+cAEk1cSb2hqaG5haWhubG5s
 ZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1OqgXHzizM5okftX/LsumzmY9PM/bM/qOKUhq91
 tXuCfKn5IQmmtEd/FFnu3PCc176Zc8V+1Z3PL4SE3FOt3FTRvFFe9Lz5vKfSiumX5scK7ghe
 7/Zh9dJTuow7vObyld04cyXytZJR+bbzfGkf2nY6THwQIHQwdhVD4RmXf7LBvVXfLtxgbdGp
 u6bEUpyRaKjFXFScCAA/QVJ9+AIAAA==
X-CMS-MailID: 20190919142326eucas1p204819014fe85716b47e2de4af9102cd5
X-Msg-Generator: CA
X-RootMTR: 20190919142326eucas1p204819014fe85716b47e2de4af9102cd5
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190919142326eucas1p204819014fe85716b47e2de4af9102cd5
References: <20190919142236.4071-1-a.swigon@samsung.com>
 <CGME20190919142326eucas1p204819014fe85716b47e2de4af9102cd5@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_072329_512047_597026DA 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
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
Cc: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 b.zolnierkie@samsung.com, sw0312.kim@samsung.com, krzk@kernel.org,
 inki.dae@samsung.com, cw00.choi@samsung.com, myungjoo.ham@samsung.com,
 leonard.crestez@nxp.com, georgi.djakov@linaro.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHBhcnRuZXIuc2Ftc3VuZy5jb20+CgpUaGlz
IHBhdGNoIHJlbGF4ZXMgdGhlIGNvbmRpdGlvbiBpbiBvZl9pY2NfZ2V0X2Zyb21fcHJvdmlkZXIo
KSBzbyB0aGF0IGl0CmlzIG5vIGxvbmdlciByZXF1aXJlZCB0byBzZXQgI2ludGVyY29ubmVjdC1j
ZWxscyA9IDwxPiBpbiB0aGUgRFQuIEluIGNhc2UKb2YgdGhlIGRldmZyZXEgZHJpdmVyIGZvciBl
eHlub3MtYnVzLCAjaW50ZXJjb25uZWN0LWNlbGxzIGlzIGFsd2F5cyB6ZXJvLgoKU2lnbmVkLW9m
Zi1ieTogQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHBhcnRuZXIuc2Ftc3VuZy5jb20+CkFja2Vk
LWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVycy9p
bnRlcmNvbm5lY3QvY29yZS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9pbnRlcmNvbm5lY3QvY29yZS5j
IGIvZHJpdmVycy9pbnRlcmNvbm5lY3QvY29yZS5jCmluZGV4IDk1ODUwNzAwZTM2Ny4uZjM1N2Mz
YTc4ODU4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2ludGVyY29ubmVjdC9jb3JlLmMKKysrIGIvZHJp
dmVycy9pbnRlcmNvbm5lY3QvY29yZS5jCkBAIC0yODQsNyArMjg0LDcgQEAgc3RydWN0IGljY19u
b2RlICpvZl9pY2NfZ2V0X2Zyb21fcHJvdmlkZXIoc3RydWN0IG9mX3BoYW5kbGVfYXJncyAqc3Bl
YykKIAlzdHJ1Y3QgaWNjX25vZGUgKm5vZGUgPSBFUlJfUFRSKC1FUFJPQkVfREVGRVIpOwogCXN0
cnVjdCBpY2NfcHJvdmlkZXIgKnByb3ZpZGVyOwogCi0JaWYgKCFzcGVjIHx8IHNwZWMtPmFyZ3Nf
Y291bnQgIT0gMSkKKwlpZiAoIXNwZWMpCiAJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOwogCiAJ
bXV0ZXhfbG9jaygmaWNjX2xvY2spOwotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
