Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6400A45BCE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 13:54:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:To:Subject:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q7UE0AHY1Dkb9K420wVEK7u/TMaP7ks9YPudz7XIm4A=; b=nY6YZnYvYh0MQ8
	n+C5KKhLMpd7bMLaRgORIkLmUo2/5dsX7d/vy8ICJcPD/SOfQhv16NMToT+j9Xxlw36ZnhlT4K667
	lisponG43izKxCxkSDlMf0bU8+GLKwDEZOH/thEK9q/kfvyfwqeySMnqQNuyVU5IzTkURpOCNEyIH
	rCpjPuQr2leTr798MzJpmcpTREwi2qSALgT5aEo6+UKMxJnOy6qEW8tnYGbbzEthXZQQeDr90z4u+
	GBmHAhJpNd3uoYMzrIEJceddu+TjGezb2DjZF8n6SOdoG+u671/uwgvEHXNZPJ2LAK9lQbIhbgpOz
	6jHovJd+k/8PnrmB+muA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbkmT-00023V-Gw; Fri, 14 Jun 2019 11:54:05 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbkmI-00022I-Lf
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 11:53:56 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190614115351euoutp01703f716bbb5aeef8aa832b7bf8dc3b88~oDoQy_5JA0703307033euoutp013
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 11:53:51 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190614115351euoutp01703f716bbb5aeef8aa832b7bf8dc3b88~oDoQy_5JA0703307033euoutp013
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1560513231;
 bh=KHTiRK+Do903GTePR+8iFRbvLoOOlqVUQSYPbURGrlg=;
 h=From:Subject:To:Cc:Date:In-Reply-To:References:From;
 b=NFZ9A1TsHNYE4snA3PKbaGi1BRutpbgU1mIVxh/sb+sO+hy1qCJJNoX6N1nwoZHtg
 laB2eF2nse0sq36ZhQRQnSpXH4fC1wyQzMSHFqtOvlcTSK9XSuO7smXjihXPuRrcy6
 Wyo9TazraO7rgD2OaSQfdTDzoC47j98ixoebeQY0=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190614115351eucas1p14fc730d70b7cf2eef754ab66a726322f~oDoQaNJ0S2595825958eucas1p11;
 Fri, 14 Jun 2019 11:53:51 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 43.0F.04377.FCA830D5; Fri, 14
 Jun 2019 12:53:51 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190614115350eucas1p282c9670fc70fad90d3406013e9105106~oDoPt7VgC2104921049eucas1p2n;
 Fri, 14 Jun 2019 11:53:50 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190614115350eusmtrp102cde45164532f7ca26702f66788680a~oDoPeQfLu1827218272eusmtrp1k;
 Fri, 14 Jun 2019 11:53:50 +0000 (GMT)
X-AuditID: cbfec7f4-12dff70000001119-06-5d038acf965d
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 98.B9.04140.ECA830D5; Fri, 14
 Jun 2019 12:53:50 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190614115349eusmtip1a88bda5808c4fa198655701f9bc9625b~oDoO8goMx2619626196eusmtip10;
 Fri, 14 Jun 2019 11:53:49 +0000 (GMT)
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: [PATCH] video: fbdev: imxfb: fix sparse warnings about using
 incorrect types
To: linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org
Message-ID: <8520d744-cebc-c76a-e51a-ff6a471af57d@samsung.com>
Date: Fri, 14 Jun 2019 13:53:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <33fc4837-599d-0d5c-c530-58b283c4c095@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrDKsWRmVeSWpSXmKPExsWy7djPc7rnu5hjDVo+c1hc+fqezeLhVX+L
 VVN3slhsenyN1eJE3wdWi65fK5ktLu+aw2bxqvkRm8Xf7ZtYLF5sEbe4PXEyowO3x85Zd9k9
 Fu95yeSxaVUnm8f97uNMHpuX1HtsfLeDyaP/r4HH501yARxRXDYpqTmZZalF+nYJXBlNLxoY
 C7byVxx7t5uxgXEibxcjJ4eEgIlEw6LFrF2MXBxCAisYJXa9WcwC4XxhlFj5+BcThPOZUWLv
 5TNsMC2fdzxhhkgsZ5R4PvEJVP9bRon527aygFSxCVhJTGxfxQhiCwuES/w5dYQVxBYRcJCY
 cmMCO0gDs8APJonubevAingF7CSmvN8EVsQioCpx5eZ5sLioQITE/WMbWCFqBCVOznwCtoBT
 wF7i7aX5zCA2s4C4xK0n85kgbHmJ5q2zwc6TEHjELnFlSh/U3S4S+xpuQNnCEq+Ob2GHsGUk
 Tk/uYYFoWMco8bfjBVT3dkaJ5ZP/QXVYSxw+fhHoDA6gFZoS63fpQ4QdJS7M/s0OEpYQ4JO4
 8VYQ4gg+iUnbpjNDhHklOtqEIKrVJDYs28AGs7Zr50rmCYxKs5C8NgvJO7OQvDMLYe8CRpZV
 jOKppcW56anFRnmp5XrFibnFpXnpesn5uZsYgWns9L/jX3Yw7vqTdIhRgINRiYf3gBVTrBBr
 YllxZe4hRgkOZiUR3nnWzLFCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeasZHkQLCaQnlqRmp6YW
 pBbBZJk4OKUaGJlfWXKr3ctMeyK2+6mI9aI9lS3RFxc/zdtmVWHo0rV/Q1jpuaxOr+c611oX
 e/2YmdOzx2FveueCuPCVfrceaSel160NnLL+aXDE1VopXc2vC6z2z78s0vX4Xs9t6RsbCnbv
 Zvh4cErUj+tvuv1qOlaolW//6dTbwj7jo+fHCZtNOi0sUng+1ymxFGckGmoxFxUnAgCCp3mq
 XwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrDIsWRmVeSWpSXmKPExsVy+t/xu7rnuphjDb4fEra48vU9m8XDq/4W
 q6buZLHY9Pgaq8WJvg+sFl2/VjJbXN41h83iVfMjNou/2zexWLzYIm5xe+JkRgduj52z7rJ7
 LN7zkslj06pONo/73ceZPDYvqffY+G4Hk0f/XwOPz5vkAjii9GyK8ktLUhUy8otLbJWiDS2M
 9AwtLfSMTCz1DI3NY62MTJX07WxSUnMyy1KL9O0S9DKaXjQwFmzlrzj2bjdjA+NE3i5GTg4J
 AROJzzueMHcxcnEICSxllOi9cZyti5EDKCEjcXx9GUSNsMSfa11sEDWvGSVudb1hAUmwCVhJ
 TGxfxQhiCwuES/w5dYQVxBYRcJCYcmMCO0gDs8APJomlc/6BJYQE7CQ239zBDmLzAtlT3m8C
 i7MIqEpcuXkebJCoQITEmfcrWCBqBCVOznwCZnMK2Eu8vTSfGcRmFlCX+DPvEpQtLnHryXwm
 CFteonnrbOYJjEKzkLTPQtIyC0nLLCQtCxhZVjGKpJYW56bnFhvpFSfmFpfmpesl5+duYgTG
 7LZjP7fsYOx6F3yIUYCDUYmH94AVU6wQa2JZcWXuIUYJDmYlEd551syxQrwpiZVVqUX58UWl
 OanFhxhNgZ6byCwlmpwPTCd5JfGGpobmFpaG5sbmxmYWSuK8HQIHY4QE0hNLUrNTUwtSi2D6
 mDg4pRoY+/bMbHn9+YRmYPDc2j7vY4snCEXctRcwKWg7WvhIeU7tH91ZbFyZH2P+tIT/y/Z1
 MD5TZ9Y7saHQoO1DoOj5iFs7g1i7Lm99kKKy94NfiXby+/bJ7a3S+ZFRlk2vj+RF5DLNr7hW
 Xv8xx3z93q0Hl3Des3NU/CVvGPv8GkfPj58b5Db9Z7qlxFKckWioxVxUnAgA5xKiIu8CAAA=
X-CMS-MailID: 20190614115350eucas1p282c9670fc70fad90d3406013e9105106
X-Msg-Generator: CA
X-RootMTR: 20190614115350eucas1p282c9670fc70fad90d3406013e9105106
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190614115350eucas1p282c9670fc70fad90d3406013e9105106
References: <33fc4837-599d-0d5c-c530-58b283c4c095@samsung.com>
 <CGME20190614115350eucas1p282c9670fc70fad90d3406013e9105106@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_045355_014531_AC4554B5 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

VXNlIC0+c2NyZWVuX2J1ZmZlciBpbnN0ZWFkIG9mIC0+c2NyZWVuX2Jhc2UgdG8gZml4IHNwYXJz
ZSB3YXJuaW5ncy4KClsgUGxlYXNlIHNlZSBjb21taXQgMTdhN2IwYjRkOTc0ICgiZmIuaDogUHJv
dmlkZSBhbHRlcm5hdGUgc2NyZWVuX2Jhc2UKICBwb2ludGVyIikgZm9yIGRldGFpbHMuIF0KClJl
cG9ydGVkLWJ5OiBrYnVpbGQgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KQ2M6IFNoYXduIEd1
byA8c2hhd25ndW9Aa2VybmVsLm9yZz4KQ2M6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRy
b25peC5kZT4KQ2M6IFBlbmd1dHJvbml4IEtlcm5lbCBUZWFtIDxrZXJuZWxAcGVuZ3V0cm9uaXgu
ZGU+CkNjOiBGYWJpbyBFc3RldmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+CkNjOiBVd2UgS2xlaW5l
LUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgpDYzogTlhQIExpbnV4IFRl
YW0gPGxpbnV4LWlteEBueHAuY29tPgpTaWduZWQtb2ZmLWJ5OiBCYXJ0bG9taWVqIFpvbG5pZXJr
aWV3aWN6IDxiLnpvbG5pZXJraWVAc2Ftc3VuZy5jb20+Ci0tLQogZHJpdmVycy92aWRlby9mYmRl
di9pbXhmYi5jIHwgICAgOSArKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KyksIDUgZGVsZXRpb25zKC0pCgpJbmRleDogYi9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2lteGZiLmMK
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PQotLS0gYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2lteGZiLmMKKysrIGIvZHJpdmVy
cy92aWRlby9mYmRldi9pbXhmYi5jCkBAIC05NzQsOSArOTc0LDggQEAgc3RhdGljIGludCBpbXhm
Yl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZAogCX0KIAogCWZiaS0+bWFwX3NpemUgPSBQQUdFX0FM
SUdOKGluZm8tPmZpeC5zbWVtX2xlbik7Ci0JaW5mby0+c2NyZWVuX2Jhc2UgPSBkbWFfYWxsb2Nf
d2MoJnBkZXYtPmRldiwgZmJpLT5tYXBfc2l6ZSwKLQkJCQkJICZmYmktPm1hcF9kbWEsIEdGUF9L
RVJORUwpOwotCisJaW5mby0+c2NyZWVuX2J1ZmZlciA9IGRtYV9hbGxvY193YygmcGRldi0+ZGV2
LCBmYmktPm1hcF9zaXplLAorCQkJCQkgICAmZmJpLT5tYXBfZG1hLCBHRlBfS0VSTkVMKTsKIAlp
ZiAoIWluZm8tPnNjcmVlbl9iYXNlKSB7CiAJCWRldl9lcnIoJnBkZXYtPmRldiwgIkZhaWxlZCB0
byBhbGxvY2F0ZSB2aWRlbyBSQU06ICVkXG4iLCByZXQpOwogCQlyZXQgPSAtRU5PTUVNOwpAQCAt
MTA0Niw3ICsxMDQ1LDcgQEAgZmFpbGVkX2NtYXA6CiAJaWYgKHBkYXRhICYmIHBkYXRhLT5leGl0
KQogCQlwZGF0YS0+ZXhpdChmYmktPnBkZXYpOwogZmFpbGVkX3BsYXRmb3JtX2luaXQ6Ci0JZG1h
X2ZyZWVfd2MoJnBkZXYtPmRldiwgZmJpLT5tYXBfc2l6ZSwgaW5mby0+c2NyZWVuX2Jhc2UsCisJ
ZG1hX2ZyZWVfd2MoJnBkZXYtPmRldiwgZmJpLT5tYXBfc2l6ZSwgaW5mby0+c2NyZWVuX2J1ZmZl
ciwKIAkJICAgIGZiaS0+bWFwX2RtYSk7CiBmYWlsZWRfbWFwOgogCWlvdW5tYXAoZmJpLT5yZWdz
KTsKQEAgLTEwNzcsNyArMTA3Niw3IEBAIHN0YXRpYyBpbnQgaW14ZmJfcmVtb3ZlKHN0cnVjdCBw
bGF0Zm9ybV8KIAlwZGF0YSA9IGRldl9nZXRfcGxhdGRhdGEoJnBkZXYtPmRldik7CiAJaWYgKHBk
YXRhICYmIHBkYXRhLT5leGl0KQogCQlwZGF0YS0+ZXhpdChmYmktPnBkZXYpOwotCWRtYV9mcmVl
X3djKCZwZGV2LT5kZXYsIGZiaS0+bWFwX3NpemUsIGluZm8tPnNjcmVlbl9iYXNlLAorCWRtYV9m
cmVlX3djKCZwZGV2LT5kZXYsIGZiaS0+bWFwX3NpemUsIGluZm8tPnNjcmVlbl9idWZmZXIsCiAJ
CSAgICBmYmktPm1hcF9kbWEpOwogCWlvdW5tYXAoZmJpLT5yZWdzKTsKIAlyZWxlYXNlX21lbV9y
ZWdpb24ocmVzLT5zdGFydCwgcmVzb3VyY2Vfc2l6ZShyZXMpKTsKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
