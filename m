Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BB5B7C8B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 16:27:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p0mPuA3kedm0dgz5ngyjlJIMuo0U9UgwU20ZPKQTv/w=; b=sQjZcMaYozXv/X
	+pMbSj4pZQ5os0X7zKxAXK3tlt5b9IHzwv3qQAcpAoE2hANWFI3OMM4kzb8glrdgYT7g+U4Evhnmy
	r55NTAPwZhSLOna0wi0PZ5Uex7n2yDARTCa4lYdbQ0HYJL1iTxohHPzUdv/kKV//T5c6d/BW+iAFp
	jgb53ckmMByX68wJWyOcfdlDFHe1Ee4h7CkJHJ8hbLe0/wjE/UhC3u7QeQJC51APeB6fgDuqqlMNU
	ZId6ljIkWmkNhqzWQDpexeBZPlVt48Vsijp1C+vjbLi0tqy6dRYRYsl8bNpZkLi0ujgjlV6rKcEJw
	hJDWeU0kP4BcyD1+ycJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAxOc-0000f4-E2; Thu, 19 Sep 2019 14:26:58 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAxLJ-0004e2-Hm
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 14:23:35 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190919142332euoutp0182e1f5589585f8529dbda60c42518249~F3PovQQtj2191721917euoutp01P
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 14:23:32 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190919142332euoutp0182e1f5589585f8529dbda60c42518249~F3PovQQtj2191721917euoutp01P
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568903012;
 bh=TV1z+igvsoIbVfWWAwJfb3ELED5sMO01fLplbggkMEc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=so7tlrb4EJFRN5H0a/t2QfQeloVQlmEZoQkL2PIFwtajjdETyoyIvX10shYA99QcD
 i72G6wt0+jBLEYNNuft8u//kic+PgUz6wkB0vxoLlqlRKhk68ddGNMNsW5Y8LbiRF3
 OtG9JdF5k6UI748aAebbl7rD7kbL7aZaCeSnZJJ4=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190919142331eucas1p2796f51835a980ab05279a92068aed907~F3PoOErBV3077830778eucas1p28;
 Thu, 19 Sep 2019 14:23:31 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id CD.1B.04309.36F838D5; Thu, 19
 Sep 2019 15:23:31 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190919142330eucas1p1eceae78b148a03f2af71657b7cdd6694~F3PnWgSvX1761817618eucas1p1F;
 Thu, 19 Sep 2019 14:23:30 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190919142330eusmtrp17672e43b993bed51c1c88b1c4d09ee9d~F3PnIF1Do0555105551eusmtrp1j;
 Thu, 19 Sep 2019 14:23:30 +0000 (GMT)
X-AuditID: cbfec7f4-afbff700000010d5-66-5d838f63b8af
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 47.65.04117.26F838D5; Thu, 19
 Sep 2019 15:23:30 +0100 (BST)
Received: from AMDC3555.digital.local (unknown [106.120.51.67]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190919142329eusmtip1135a0ffecb68779a53fbb8d79a1c0bd0~F3PmUlWIN3163331633eusmtip1L;
 Thu, 19 Sep 2019 14:23:29 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH v2 10/11] arm: dts: exynos: Add interconnects to
 Exynos4412 mixer
Date: Thu, 19 Sep 2019 16:22:35 +0200
Message-Id: <20190919142236.4071-11-a.swigon@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190919142236.4071-1-a.swigon@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02SbUhTYRTHe3bv7u6sq9dZdDBLHYhUpGZFTyRREnELP/hNSsSmXtR8yXa1
 Nz/kC5bam7gsU0nTkeYKdanoMtE1GmY0ylqlzllWVpAV07LobdtdL99+53/O//yfAw9NKOxS
 fzo9O5dXZ6sylZQX2X3nq2VN8tnihAjdqD823umSYfulEoQ7qtuk+MnstBTXm+5L8aO5DxS+
 cEtP4Up7BYktlnYZbrF9kmL9lFWKRwx1FHacNiFcbemX4OsmmwyPFbZQuFrzltrqy+lbyyhu
 3NpHcfaTZgl3Q3uM65jpkXCDM30S7kxnK+Ic+hWx9B6vqBQ+M/0grw7fstcr7WbhnCxnRHa4
 3TiNClA3VY7kNLDrwaEzoXLkRSvYFgQVjQ9lYjGL4KVpwtNxIDAPlEn+WIxFDwkXK9hmBM2/
 dv91THS1u/dS7DaorJp0r1rMmhBoGj6QroJgtRI4U2tx2/3YOOi69pR0McmGwJT1jVtn2E3w
 +GojEuMCQdc+4NblTn22v54UZ3xh6OJLNxPOmeKuWsIVAGwJDSfuFnnM2+H81DlCZD94Z+6U
 iRwAw5pTpMgCvOq1S0VzAQL9FZPHsBlumx84G7QzYSW0GcJFeRs0vLglc8nAesPT977iG7yh
 svsCIcoMlB5XiKgEw0Vv0QhQpLN6dnPQ1FsqqUDBNf8dU/PfMTX/YhsQ0YqW8nlCViovRGbz
 h8IEVZaQl50alrw/S4+c3274p3m2Bxm+JxkRSyPlIiboUHGCQqo6KBzJMiKgCeVipm5DUYKC
 SVEdOcqr9yeq8zJ5wYiW0aRyKZO/YDJewaaqcvkMns/h1X+6ElruX4Bi5rWl2q0KpuMef9nx
 PGxHhbFqyKQBec9UzHvbeNMQ77ORKXsdmEgsn7GOjs3HrjJM+KxgHQR8ZKbzj5Wsiz/w7sew
 3/Odga3joQm3o54FB5zQ5AqBQsTJncMh36M3ZHxLks+H7gtKj9y1JLeUyi+M61unW/ZlsMe2
 emFH9OcqJSmkqdauItSC6jdFz9/8cgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrCIsWRmVeSWpSXmKPExsVy+t/xu7pJ/c2xBkt6FS0OHdvKbnF/Xiuj
 xcYZ61ktrn95zmox/8g5VosrX9+zWUzfu4nNYtL9CSwW589vYLdYcfcjq8Wmx9dYLS7vmsNm
 8bn3CKPFjPP7mCzWHrnLbnG7cQWbxYzJL9kcBD02repk87hzbQ+bx/3u40wem5fUe2x8t4PJ
 4+C7PUwefVtWMXp83iQXwBGlZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRv
 Z5OSmpNZllqkb5egl7G78St7wWX2ig2HnjM2MG5j62Lk5JAQMJE41HSJuYuRi0NIYCmjxN1D
 51khEhISH9ffgLKFJf5c62KDKPrEKLFvyXMmkASbgKPEpKkP2EESIgKnGCW2Lj8HVsUssIFJ
 YvnTl0DtHBzCAqESKy7ogzSwCKhKPL72ghnE5hWwlLi6chEjxAZ5idUbDoDFOYHiX/bNZwGx
 hQQsJOY+nssIUS8ocXLmExaQkcwC6hLr5wmBhJmBWpu3zmaewCg4C0nVLISqWUiqFjAyr2IU
 SS0tzk3PLTbSK07MLS7NS9dLzs/dxAiM4W3Hfm7Zwdj1LvgQowAHoxIPr0J5c6wQa2JZcWXu
 IUYJDmYlEd45pk2xQrwpiZVVqUX58UWlOanFhxhNgV6byCwlmpwPTC95JfGGpobmFpaG5sbm
 xmYWSuK8HQIHY4QE0hNLUrNTUwtSi2D6mDg4pRoYez7s57rkwSMV/P9sGPf8kn8PzoVppfk5
 pTD/LA/9nch6ndHsFPcbQVWGI1Ivne5x9/BMydwf8yWht0V8Nf+WRV17/L1+fbaoWnEjcvO0
 9615in1iNWFqxSsS9i0NS9yhYmfPE1LE2fz+93K/BpO/q5Pes+1Yqn57dQx30OP7ySyyQr1h
 Pi5KLMUZiYZazEXFiQA6iPJh9wIAAA==
X-CMS-MailID: 20190919142330eucas1p1eceae78b148a03f2af71657b7cdd6694
X-Msg-Generator: CA
X-RootMTR: 20190919142330eucas1p1eceae78b148a03f2af71657b7cdd6694
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190919142330eucas1p1eceae78b148a03f2af71657b7cdd6694
References: <20190919142236.4071-1-a.swigon@samsung.com>
 <CGME20190919142330eucas1p1eceae78b148a03f2af71657b7cdd6694@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_072333_957992_18AFD8DD 
X-CRM114-Status: GOOD (  12.95  )
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
IHBhdGNoIGFkZHMgYW4gJ2ludGVyY29ubmVjdHMnIHByb3BlcnR5IHRvIEV4eW5vczQ0MTIgRFRT
IGluIG9yZGVyIHRvCmRlY2xhcmUgdGhlIGludGVyY29ubmVjdCBwYXRoIHVzZWQgYnkgdGhlIG1p
eGVyLiBQbGVhc2Ugbm90ZSB0aGF0IHRoZQonaW50ZXJjb25uZWN0LW5hbWVzJyBwcm9wZXJ0eSBp
cyBub3QgbmVlZGVkIHdoZW4gdGhlcmUgaXMgb25seSBvbmUgcGF0aCBpbgonaW50ZXJjb25uZWN0
cycsIGluIHdoaWNoIGNhc2UgY2FsbGluZyBvZl9pY2NfZ2V0KCkgd2l0aCBhIE5VTEwgbmFtZSBz
aW1wbHkKcmV0dXJucyB0aGUgcmlnaHQgcGF0aC4KClNpZ25lZC1vZmYtYnk6IEFydHVyIMWad2ln
b8WEIDxhLnN3aWdvbkBwYXJ0bmVyLnNhbXN1bmcuY29tPgotLS0KIGFyY2gvYXJtL2Jvb3QvZHRz
L2V4eW5vczQ0MTIuZHRzaSB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi5kdHNpIGIvYXJjaC9hcm0v
Ym9vdC9kdHMvZXh5bm9zNDQxMi5kdHNpCmluZGV4IGE3MGE2NzFhY2FjZC4uZmFhZWM2YzQwNDEy
IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLmR0c2kKKysrIGIvYXJj
aC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi5kdHNpCkBAIC03ODksNiArNzg5LDcgQEAKIAljbG9j
ay1uYW1lcyA9ICJtaXhlciIsICJoZG1pIiwgInNjbGtfaGRtaSIsICJ2cCI7CiAJY2xvY2tzID0g
PCZjbG9jayBDTEtfTUlYRVI+LCA8JmNsb2NrIENMS19IRE1JPiwKIAkJIDwmY2xvY2sgQ0xLX1ND
TEtfSERNST4sIDwmY2xvY2sgQ0xLX1ZQPjsKKwlpbnRlcmNvbm5lY3RzID0gPCZidXNfZGlzcGxh
eSAmYnVzX2RtYz47CiB9OwogCiAmcG11IHsKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
