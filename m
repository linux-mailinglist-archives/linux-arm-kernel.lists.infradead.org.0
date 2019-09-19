Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F1BB7C3E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 16:24:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=7ahhHkPubW+lhrm/63Z93Xfv4lG3lQyGDG48Ja+Qd7I=; b=Q0r6IsHf2+JPRc
	FGxjbLORGQOiSeX8wGmBxZ5zcAotxNil1RS5yJ3PC8OGL1gUL0r52z4uEYEC06neK4VMw5K0RJ7Ui
	nEWGhIgY9I5GTecWWXaohfzrusasMuYaBPvD0H7MR3pNZvjcUE5BXv+nM1+j0UDSMByB+8da5+VaF
	VM41JbppxWGrNio+cYA5PawjDAxRqotNZnQ87QvFgfVbKFi7lCzU3AtcXkJB1ta8vTD2/U+f/u1ie
	jzNlzQpTgSbvgA+lQa1Is67kN2F3aICO/3OBBl7eQTCz8aJEy0u4Gp0fH/YHhIOOxeRbn/DMtD8MK
	mbZVQExJt8t3LIMyxykw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAxMA-0005JA-Cz; Thu, 19 Sep 2019 14:24:26 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAxLA-0004V7-VK
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 14:23:26 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190919142322euoutp011a3823abd32a9f4c351886e963e002df~F3PfqIOsC2256022560euoutp01R
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 14:23:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190919142322euoutp011a3823abd32a9f4c351886e963e002df~F3PfqIOsC2256022560euoutp01R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568903002;
 bh=yCJyZaAISj2X2sPtGhkorDCVQ2B6gi5BHvQF0QJ1smU=;
 h=From:To:Cc:Subject:Date:References:From;
 b=EeKYrf/GwEKA9IiQuVxqXdB4nZiKN0lQ9DtSZQm//KXsSr3kkHfTNjZC/FB9VmDXm
 GirPgx7m4IjeAE+gXVWnKxmpWvkrtSY8KRhXaMFJrMsrciUJDLJtlfIlJIrC8SiKyC
 PflnOzmst25DTDmyGX/vQ4UrpEh/I8UNsKyPMa1Q=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190919142322eucas1p265abed8b4159482c9ee0b03baeaafd4b~F3PfKNRD53082530825eucas1p2c;
 Thu, 19 Sep 2019 14:23:22 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 6B.59.04374.95F838D5; Thu, 19
 Sep 2019 15:23:21 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190919142321eucas1p164c2591ad402427cb71fd00c348a29ec~F3PeY7cSX0293102931eucas1p1K;
 Thu, 19 Sep 2019 14:23:21 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190919142320eusmtrp2d172b9e3a280dbdf5169de5adbc67d41~F3PeKxg7n3074530745eusmtrp2Z;
 Thu, 19 Sep 2019 14:23:20 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-ec-5d838f59baf4
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 2C.0F.04166.85F838D5; Thu, 19
 Sep 2019 15:23:20 +0100 (BST)
Received: from AMDC3555.digital.local (unknown [106.120.51.67]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190919142320eusmtip122eb1934da667f679df296a20dfbdd57~F3PdbuISJ3161631616eusmtip1a;
 Thu, 19 Sep 2019 14:23:20 +0000 (GMT)
From: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: [RFC PATCH v2 00/11] Simple QoS for exynos-bus driver using
 interconnect
Date: Thu, 19 Sep 2019 16:22:25 +0200
Message-Id: <20190919142236.4071-1-a.swigon@samsung.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRjuO2fn7LicHJflm4rFoiBBa934oDCliBP9iYJATWrlQcVrO5pd
 ELXltSzRvGtekCaK2NYyN8q8DJcVDdNUKpthFlleQi2isnTHyn/P+zzf8zzvCx9DKvopDyYy
 NoHXxKqjlbRM0tL93eYbdF0bulX3zRfbb6YjrC9ppvDg7AcKV1meUbh/borGxQ8MNM6350mw
 zXZbiuuHv1DYMDpA4T5zBY1nci0Il9jaCNxkGZbiV2n1NC4p+EgHsJyhIZvmXg/cpzn7FSvB
 3alL4fSTrQR3zdiAuBmD92FpsGxPGB8deZbXbPE/KYsYf3yVijd6n5u2NkpTUdHaHOTEALsD
 TOn3JTlIxijYegRD7xtIcZhFYJzPQeIwg8CUOS35a3lzeZYSBR0C3fwc8c+SMzrheEWzgZBf
 OCJdFNxYC4KC6ilHC8lWEJCVrVsYGGYVexT66nYuGiTsRsiqfyddxHIWw+Cbz1Kxbh003m4n
 Rd4VekrfOQrIBV57t9yxLLAvpWC1dVOLmcDuh3kzFr2rYNxqXMrxgt+mKkLEAoyZ7JToTUVg
 uGUhRWE3dFl7HTkkuxmazVtEOhCaPpmX4l1gaMJVXMEF8luKSZGWQ1aGQoRKMJe6iEaAS40D
 S9kcjNX9cmAFGwr33qaReWh92bK7ypbdVfZ/hWpENiB3PlGICeeF7bF8kp+gjhESY8P9TsfF
 GNDCX3syb51rRW0/T3UilkFKZ/n6JG2oglKfFc7HdCJgSKWbvGLnpVCFPEx9/gKviTuhSYzm
 hU7kyUiU7vKLK0ZCFGy4OoGP4vl4XvNXJRgnj1RUrIqKL3w63rXrXHB0UGb+Gr22tiZXVT0R
 oJW7K55vczo02eH5qGnHcZ/+FOJCSPM+tSr50ytZMddY67X6BxV3YmVKYhF7wKvGOLpB1b69
 clPZwe95W/dW1zz82jGV2h14pkdfnuFPDDsfqXQNOhXce2ysNvlihBX3VH28MbT/RaZdKREi
 1CofUiOo/wD6xdsIZwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrIIsWRmVeSWpSXmKPExsVy+t/xu7oR/c2xBj1vzC3uz2tltNg4Yz2r
 xfUvz1kt5h85x2px5et7NovpezexWUy6P4HF4vz5DewWK+5+ZLXY9Pgaq8XlXXPYLD73HmG0
 mHF+H5PF2iN32S1uN65gs5gx+SWbg4DHplWdbB53ru1h87jffZzJY/OSeo+N73YwefRtWcXo
 8XmTXAB7lJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYmlnqGxeayVkamSvp1NSmpOZllqkb5d
 gl7Gq1M9rAVb5Co+HF/N3sA4TbKLkZNDQsBE4l7LF1YQW0hgKaNE6/YgiLiExMf1N1ghbGGJ
 P9e62LoYuYBqPjFK/GztYAFJsAk4Skya+oAdJCEicIpRYuvyc2wgCWaBFUwS/XOEQWxhgUCJ
 C2eWgMVZBFQlOlY8YQexeQUsJK7fe8MOsUFeYvWGA8wQcUGJkzOfAC3gAJqjLrF+nhDESHmJ
 5q2zmScw8s9CUjULoWoWkqoFjMyrGEVSS4tz03OLDfWKE3OLS/PS9ZLzczcxAqNv27Gfm3cw
 XtoYfIhRgINRiYdXobw5Vog1say4MvcQowQHs5II7xzTplgh3pTEyqrUovz4otKc1OJDjKZA
 L0xklhJNzgcmhrySeENTQ3MLS0NzY3NjMwslcd4OgYMxQgLpiSWp2ampBalFMH1MHJxSDYwR
 jcVpFQ5NkfZBh/QKLFf7JLhv9WK6u8Y9benkmJj59UIL33z9vPi9cvGdRitv4R13bfQ+rXfa
 a7p3qcC1I/P0uSK8Ez9e6g0Rbgx8oC4+Z/ae2p37MrXZjy24tqVnz63XS0vW+dheu1GtNz9J
 YcojNV6Bhc8jHXYbTSxK37FwsnGw658Vqw8osRRnJBpqMRcVJwIACdB0JNQCAAA=
X-CMS-MailID: 20190919142321eucas1p164c2591ad402427cb71fd00c348a29ec
X-Msg-Generator: CA
X-RootMTR: 20190919142321eucas1p164c2591ad402427cb71fd00c348a29ec
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190919142321eucas1p164c2591ad402427cb71fd00c348a29ec
References: <CGME20190919142321eucas1p164c2591ad402427cb71fd00c348a29ec@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_072325_220987_D3B99B57 
X-CRM114-Status: GOOD (  12.88  )
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
Cc: b.zolnierkie@samsung.com, sw0312.kim@samsung.com,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>, krzk@kernel.org,
 inki.dae@samsung.com, cw00.choi@samsung.com, myungjoo.ham@samsung.com,
 leonard.crestez@nxp.com, georgi.djakov@linaro.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGZvbGxvd2luZyBwYXRjaHNldCBhZGRzIGludGVyY29ubmVjdFsxXVsyXSBmcmFtZXdvcmsg
c3VwcG9ydCB0byB0aGUKZXh5bm9zLWJ1cyBkZXZmcmVxIGRyaXZlci4gRXh0ZW5kaW5nIHRoZSBk
ZXZmcmVxIGRyaXZlciB3aXRoIGludGVyY29ubmVjdApjYXBhYmlsaXRpZXMgc3RhcnRlZCBhcyBh
IHJlc3BvbnNlIHRvIHRoZSBpc3N1ZSByZWZlcmVuY2VkIGluIFszXS4gVGhlCnBhdGNoZXMgY2Fu
IGJlIHN1YmRpdmlkZWQgaW50byBmb3VyIGxvZ2ljYWwgZ3JvdXBzOgoKKGEpIFJlZmFjdG9yaW5n
IHRoZSBleGlzdGluZyBkZXZmcmVxIGRyaXZlciBpbiBvcmRlciB0byBpbXByb3ZlIHJlYWRhYmls
aXR5CmFuZCBhY2NvbW1vZGF0ZSBmb3IgYWRkaW5nIG5ldyBjb2RlIChwYXRjaGVzIDAxLS0wNC8x
MSkuCgooYikgVHdlYWtpbmcgdGhlIGludGVyY29ubmVjdCBmcmFtZXdvcmsgdG8gc3VwcG9ydCB0
aGUgZXh5bm9zLWJ1cyB1c2UgY2FzZQoocGF0Y2hlcyAwNS0tMDcvMTEpLiBFeHBvcnRpbmcgb2Zf
aWNjX2dldF9mcm9tX3Byb3ZpZGVyKCkgYWxsb3dzIHVzIHRvCmF2b2lkIGhhcmRjb2RpbmcgZXZl
cnkgc2luZ2xlIGdyYXBoIGVkZ2UgaW4gdGhlIERUIG9yIGRyaXZlciBzb3VyY2UsIGFuZApyZWxh
eGluZyB0aGUgcmVxdWlyZW1lbnQgY29udGFpbmVkIGluIHRoYXQgZnVuY3Rpb24gcmVtb3ZlcyB0
aGUgbmVlZCB0bwpwcm92aWRlIGR1bW15IG5vZGUgSURzIGluIHRoZSBEVC4gQWRqdXN0aW5nIHRo
ZSBsb2dpYyBpbgphcHBseV9jb25zdHJhaW50cygpIChkcml2ZXJzL2ludGVyY29ubmVjdC9jb3Jl
LmMpIGFjY291bnRzIGZvciB0aGUgZmFjdAp0aGF0IGV2ZXJ5IGJ1cyBpcyBhIHNlcGFyYXRlIGVu
dGl0eSBhbmQgdGhlcmVmb3JlIGEgc2VwYXJhdGUgaW50ZXJjb25uZWN0CnByb3ZpZGVyLCBhbGJl
aXQgY29uc3RpdHV0aW5nIGEgcGFydCBvZiBhIGxhcmdlciBoaWVyYXJjaHkuCgooYykgSW1wbGVt
ZW50aW5nIGludGVyY29ubmVjdCBwcm92aWRlcnMgaW4gdGhlIGV4eW5vcy1idXMgZGV2ZnJlcSBk
cml2ZXIKYW5kIGFkZGluZyByZXF1aXJlZCBEVCBwcm9wZXJ0aWVzIGZvciBvbmUgc2VsZWN0ZWQg
cGxhdGZvcm0sIG5hbWVseQpFeHlub3M0NDEyIChwYXRjaGVzIDA4LS0wOS8xMSkuIER1ZSB0byB0
aGUgZmFjdCB0aGF0IHRoaXMgYWltcyB0byBiZSBhCmdlbmVyaWMgZHJpdmVyIGZvciB2YXJpb3Vz
IEV4eW5vcyBTb0NzLCBub2RlIElEcyBhcmUgZ2VuZXJhdGVkIGR5bmFtaWNhbGx5CnJhdGhlciB0
aGFuIGhhcmRjb2RlZC4gVGhpcyBoYXMgYmVlbiBkZXRlcm1pbmVkIHRvIGJlIGEgc2ltcGxlciBh
cHByb2FjaCwKYnV0IGRlcGVuZHMgb24gY2hhbmdlcyBkZXNjcmliZWQgaW4gKGIpLgoKKGQpIElt
cGxlbWVudGluZyBhIHNhbXBsZSBpbnRlcmNvbm5lY3QgY29uc3VtZXIgZm9yIGV4eW5vcy1taXhl
ciB0YXJnZXRlZAphdCB0aGUgaXNzdWUgcmVmZXJlbmNlZCBpbiBbM10sIGFnYWluIHdpdGggRFQg
aW5mbyBvbmx5IGZvciBFeHlub3M0NDEyCihwYXRjaGVzIDEwLS0xMS8xMSkuCgpJbnRlZ3JhdGlv
biBvZiBkZXZmcmVxIGFuZCBpbnRlcmNvbm5lY3QgZnVuY3Rpb25hbGl0aWVzIGlzIGFjaGlldmVk
IGJ5CnVzaW5nIGRldl9wbV9xb3NfKigpIEFQSVs1XS4gQWxsIG5ldyBjb2RlIHdvcmtzIGVxdWFs
bHkgd2VsbCB3aGVuCkNPTkZJR19JTlRFUkNPTk5FQ1QgaXMgJ24nIChhcyBpbiBleHlub3NfZGVm
Y29uZmlnKSBpbiB3aGljaCBjYXNlIGFsbAppbnRlcmNvbm5lY3QgQVBJIGZ1bmN0aW9ucyBhcmUg
bm8tb3BzLgoKVGhpcyBwYXRjaHNldCBkZXBlbmRzIG9uIFs1XS4KCi0tLSBDaGFuZ2VzIHNpbmNl
IHYxIFs2XToKKiBSZWJhc2Ugb24gWzRdIChjb3VwbGVkIHJlZ3VsYXRvcnMpLgoqIFJlYmFzZSBv
biBbNV0gKGRldl9wbV9xb3MgZm9yIGRldmZyZXEpLgoqIFVzZSBkZXZfcG1fcW9zXyooKSBBUElb
NV0gaW5zdGVhZCBvZiBvdmVycmlkaW5nIGZyZXF1ZW5jeSBpbgogIGV4eW5vc19idXNfdGFyZ2V0
KCkuCiogVXNlIElEUiBmb3Igbm9kZSBJRCBhbGxvY2F0aW9uLgoqIEF2b2lkIGdvdG8gaW4gZnVu
Y3Rpb25zIGV4dHJhY3RlZCBpbiBwYXRjaGVzIDAxICYgMDIgKGNmLiBwYXRjaCAwNCkuCiogUmV2
ZXJzZSBvcmRlciBvZiBtdWx0aXBsaWNhdGlvbiBhbmQgZGl2aXNpb24gaW4KICBtaXhlcl9zZXRf
bWVtb3J5X2JhbmR3aWR0aCgpIChwYXRjaCAxMSkgdG8gYXZvaWQgaW50ZWdlciBvdmVyZmxvdy4K
Ci0tLQpBcnR1ciDFmndpZ2/FhApTYW1zdW5nIFImRCBJbnN0aXR1dGUgUG9sYW5kClNhbXN1bmcg
RWxlY3Ryb25pY3MKCi0tLQpSZWZlcmVuY2VzOgpbMV0gRG9jdW1lbnRhdGlvbi9pbnRlcmNvbm5l
Y3QvaW50ZXJjb25uZWN0LnJzdApbMl0gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2ludGVyY29ubmVjdC9pbnRlcmNvbm5lY3QudHh0ClszXSBodHRwczovL3BhdGNod29yay5rZXJu
ZWwub3JnL3BhdGNoLzEwODYxNzU3LyAob3JpZ2luYWwgaXNzdWUpCls0XSBodHRwczovL3BhdGNo
d29yay5rZXJuZWwub3JnL2NvdmVyLzExMDgzNjYzLyAoY291cGxlZCByZWd1bGF0b3JzOyBtZXJn
ZWQpCls1XSBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzExMTQ5NDk3LyAoZGV2
X3BtX3FvcyBmb3IgZGV2ZnJlcSkKWzZdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvY292
ZXIvMTEwNTQ0MTcvICh2MSBvZiB0aGlzIFJGQykKCkFydHVyIMWad2lnb8WEICgxMCk6CiAgZGV2
ZnJlcTogZXh5bm9zLWJ1czogRXh0cmFjdCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdCgpCiAgZGV2
ZnJlcTogZXh5bm9zLWJ1czogRXh0cmFjdCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZl
KCkKICBkZXZmcmVxOiBleHlub3MtYnVzOiBDaGFuZ2UgZ290by1iYXNlZCBsb2dpYyB0byBpZi1l
bHNlIGxvZ2ljCiAgZGV2ZnJlcTogZXh5bm9zLWJ1czogQ2xlYW4gdXAgY29kZQogIGludGVyY29u
bmVjdDogRXhwb3J0IG9mX2ljY19nZXRfZnJvbV9wcm92aWRlcigpCiAgaW50ZXJjb25uZWN0OiBS
ZWxheCByZXF1aXJlbWVudCBpbiBvZl9pY2NfZ2V0X2Zyb21fcHJvdmlkZXIoKQogIGludGVyY29u
bmVjdDogUmVsYXggY29uZGl0aW9uIGluIGFwcGx5X2NvbnN0cmFpbnRzKCkKICBhcm06IGR0czog
ZXh5bm9zOiBBZGQgcGFyZW50cyBhbmQgI2ludGVyY29ubmVjdC1jZWxscyB0byBFeHlub3M0NDEy
CiAgZGV2ZnJlcTogZXh5bm9zLWJ1czogQWRkIGludGVyY29ubmVjdCBmdW5jdGlvbmFsaXR5IHRv
IGV4eW5vcy1idXMKICBhcm06IGR0czogZXh5bm9zOiBBZGQgaW50ZXJjb25uZWN0cyB0byBFeHlu
b3M0NDEyIG1peGVyCgpNYXJlayBTenlwcm93c2tpICgxKToKICBkcm06IGV4eW5vczogbWl4ZXI6
IEFkZCBpbnRlcmNvbm5lY3Qgc3VwcG9ydAoKIC4uLi9ib290L2R0cy9leHlub3M0NDEyLW9kcm9p
ZC1jb21tb24uZHRzaSAgICB8ICAgMSArCiBhcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEyLmR0
c2kgICAgICAgICAgICAgfCAgMTAgKwogZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyAgICAg
ICAgICAgICAgICAgIHwgMzE5ICsrKysrKysrKysrKystLS0tLQogZHJpdmVycy9ncHUvZHJtL2V4
eW5vcy9leHlub3NfbWl4ZXIuYyAgICAgICAgIHwgIDcxICsrKy0KIGRyaXZlcnMvaW50ZXJjb25u
ZWN0L2NvcmUuYyAgICAgICAgICAgICAgICAgICB8ICAxMiArLQogaW5jbHVkZS9saW51eC9pbnRl
cmNvbm5lY3QtcHJvdmlkZXIuaCAgICAgICAgIHwgICA2ICsKIDYgZmlsZXMgY2hhbmdlZCwgMzI3
IGluc2VydGlvbnMoKyksIDkyIGRlbGV0aW9ucygtKQoKLS0gCjIuMTcuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
