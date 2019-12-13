Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3BB11DCB7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 05:02:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0ZtQIAysXnPoKU9q5XObO+F4+C2BS8oKbKs5kpZaME=; b=cy2gHX6lMXoVFC
	4a2lkb3CLCRNCsX9aYzKVREW8+Kk1YGZXaqT0oOFUv1lf4Mc1ApSVROcETAcQ5sNte758+ZYrorp8
	85NBJdQzJ2PsRFqVFQGYjZTRdnc2oOs2gfyOfVyllj7p7DDafexCOhgFVonDGs3XvRO774mShkIuJ
	a3i+NF6OCIMabv3pbjImrC6u66KYW13USRsUFFdv7AC56JnjyctnZlDhU29e3HpLyko6c4rGPThzX
	pz50FchguFvor77poQUM/MVZbxgxE0x/OpcgfHufTCbjMdLIoaFfYp43bpy/7q6WpbY5bPnH1Pb/P
	ua121lzhKhxjzTrg27xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifc9s-0008QQ-MW; Fri, 13 Dec 2019 04:02:28 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifc9i-0008PN-N0
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 04:02:20 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20191213040214epoutp03293fdfe414634dec558d0ac9fae8fc6b~f0mcf1QV02431624316epoutp032
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 04:02:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20191213040214epoutp03293fdfe414634dec558d0ac9fae8fc6b~f0mcf1QV02431624316epoutp032
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576209735;
 bh=7UMVUdoGIPp8gBj1SDgsQXu9SrgmJhbAAW1hC2py8BA=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=sjGZekK3RPFrekuBlsJnqcIu0EFHZ88yux5J3wvBANCFa7oAuVxCBCyU5pmBhdOPO
 BfWKeWlxb/nvyqi6r90ki8/l+alh5zyb5l0z2DpNqfvgEsnhLPsnAXAht+l4dp+lQQ
 svKZqYkBB1yQjk7yOAns2XyuoWll5+giv2lAGTIs=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191213040214epcas1p26c39ea301d1ac26ad1abffe8f53f185d~f0mbsmw1u1922319223epcas1p2_;
 Fri, 13 Dec 2019 04:02:14 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.156]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 47YxnZ4HfBzMqYkn; Fri, 13 Dec
 2019 04:02:10 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 BF.E4.48019.14D03FD5; Fri, 13 Dec 2019 13:02:09 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191213040209epcas1p15a54eefe1a8bdf17b73952ef8481fd05~f0mXgP2OW1119611196epcas1p1N;
 Fri, 13 Dec 2019 04:02:09 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191213040209epsmtrp2eb2509fa3a51cb45c58486d1cff35a6b~f0mXfYxnC1492014920epsmtrp2e;
 Fri, 13 Dec 2019 04:02:09 +0000 (GMT)
X-AuditID: b6c32a38-23fff7000001bb93-9b-5df30d413018
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 64.C8.10238.14D03FD5; Fri, 13 Dec 2019 13:02:09 +0900 (KST)
Received: from [10.113.221.211] (unknown [10.113.221.211]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191213040209epsmtip16244d9204cf9cedfefbe07528587a150~f0mXRPgqC3061930619epsmtip19;
 Fri, 13 Dec 2019 04:02:09 +0000 (GMT)
Subject: Re: [PATCH resend] drm/exynos: gsc: add missed component_del
To: Chuhong Yuan <hslester96@gmail.com>
From: Inki Dae <inki.dae@samsung.com>
Message-ID: <9d8db84b-db75-10e4-81b5-c0c02cb8ce81@samsung.com>
Date: Fri, 13 Dec 2019 13:05:37 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191205160520.31955-1-hslester96@gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrJJsWRmVeSWpSXmKPExsWy7bCmvq4j7+dYgyWXzSx6z51ksvi/bSKz
 xZWv79ksZh96yWzx4t5FFov+x6+ZLc6f38BucbbpDbvFpsfXWC0u75rDZjHj/D4mixmTX7I5
 8Hjs/baAxWPnrLvsHptWdbJ5bP/2gNXjfvdxJo/NS+o9+rasYvT4vEkugCMq2yYjNTEltUgh
 NS85PyUzL91WyTs43jne1MzAUNfQ0sJcSSEvMTfVVsnFJ0DXLTMH6FolhbLEnFKgUEBicbGS
 vp1NUX5pSapCRn5xia1SakFKToFlgV5xYm5xaV66XnJ+rpWhgYGRKVBhQnbGsd5JbAXL2Su+
 7GxmamDsYOti5OSQEDCRuN5zjr2LkYtDSGAHo8SBtT9ZIJxPjBLrlkxkgnC+MUqc2LSMEaZl
 x5YNUC17GSWm/J/DCuG8Z5T4t+IQC0iVsICrxMWtT8BsEQF1ic+7doJ1MAvMZJb4uHgqM0iC
 TUBVYuKK+2CX8ArYSfx7fAusgQUovuzrP6B1HByiAhESp78mQpQISpycCTGTU8BKomHBY3YQ
 m1lAXOLWk/lMELa8RPPW2cwQl05ml1h6nBfCdpF4+3wl1NPCEq+Ob2GHsKUkPr/bCxUvl3j2
 7hkLyFoJgRqJb3MrIExjiYsrUkBMZgFNifW79CGKFSV2/p7LCLGUT+Ld1x5WiGpeiY42IYgS
 JYljF29AQ01C4sKSiVB7PCRaJ51nmsCoOAvJW7OQvDILySuzEBYvYGRZxSiWWlCcm55abFhg
 ghzVmxjByVjLYgfjnnM+hxgFOBiVeHgZUj7FCrEmlhVX5h5ilOBgVhLhta8BCvGmJFZWpRbl
 xxeV5qQWH2I0BQb6RGYp0eR8YKbIK4k3NDUyNja2MDE0MzU0VBLn5fhxMVZIID2xJDU7NbUg
 tQimj4mDU6qBkXXn7Pyapg8vjuY4KakdN/WvPB52K2Nj/2Mh3tfL9xh/NO4TaG7JXXdvKo/r
 JxV+hmSm9OaiNw9sHfwPsG7VE9s8YW9l4uQlZoo/JWtefWCedvO/qMPcuRvvGSwzPZ/QPPuC
 t0//C5uQlfOnbNp1imlXE/ds6T31rvwGV/rW3TRiK5LcWuyZqMRSnJFoqMVcVJwIAA/4zq3c
 AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrNIsWRmVeSWpSXmKPExsWy7bCSnK4j7+dYg81tCha9504yWfzfNpHZ
 4srX92wWsw+9ZLZ4ce8ii0X/49fMFufPb2C3ONv0ht1i0+NrrBaXd81hs5hxfh+TxYzJL9kc
 eDz2flvA4rFz1l12j02rOtk8tn97wOpxv/s4k8fmJfUefVtWMXp83iQXwBHFZZOSmpNZllqk
 b5fAlXGsdxJbwXL2ii87m5kaGDvYuhg5OSQETCR2bNnA3sXIxSEksJtRortjLXMXIwdQQkJi
 y1YOCFNY4vDhYoiSt4wSHYf+soD0Cgu4Slzc+gTMFhFQl/i8ayfYHGaB2cwSxze3MEJ09DJK
 nL92gRWkik1AVWLiivtgm3kF7CT+Pb4F1s0CFF/29R8jiC0qECHxfPsNRogaQYmTMyE2cApY
 STQseMwOYjMDbfsz7xIzhC0ucevJfCYIW16ieets5gmMQrOQtM9C0jILScssJC0LGFlWMUqm
 FhTnpucWGxYY5qWW6xUn5haX5qXrJefnbmIER6GW5g7Gy0viDzEKcDAq8fAypHyKFWJNLCuu
 zD3EKMHBrCTCa18DFOJNSaysSi3Kjy8qzUktPsQozcGiJM77NO9YpJBAemJJanZqakFqEUyW
 iYNTqoGxVOzHOwUVRnFbPd/OWquQpNbsd+pZd/3Yih1mnfWpu6EYUJ44m9NLkrPmloGn/w3+
 M308obZ8YmrpoT0nNDMVAuTNDrzLe/A3982kCoUN7388YI/zXBKWKHjUbUPvHEcGy5Kb902y
 o7yLxRR/HtaqCr+a8XHF60s7nAqkP139G3Vy+3bbJiWW4oxEQy3mouJEAFJ9h/m+AgAA
X-CMS-MailID: 20191213040209epcas1p15a54eefe1a8bdf17b73952ef8481fd05
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191205160538epcas1p4575fbc2874d04486bc38cae3472f4b5a
References: <CGME20191205160538epcas1p4575fbc2874d04486bc38cae3472f4b5a@epcas1p4.samsung.com>
 <20191205160520.31955-1-hslester96@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_200219_002263_C019FBDE 
X-CRM114-Status: GOOD (  18.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 David Airlie <airlied@linux.ie>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

WW91IGRvbid0IG5lZWQgdG8gcmVzZW5kIHRoaXMuIEFscmVhZHkgbWVyZ2VkIHRvIGV4eW5vcy1k
cm0tZml4ZXMgdGhyZWUgd2Vla3MgYWdvLgoKVGhhbmtzLApJbmtpIERhZQoKMTkuIDEyLiA2LiDs
mKTsoIQgMTowNeyXkCBDaHVob25nIFl1YW4g7J20KOqwgCkg7JO0IOq4gDoKPiBUaGUgZHJpdmVy
IGZvcmdldHMgdG8gY2FsbCBjb21wb25lbnRfZGVsIGluIHJlbW92ZSB0byBtYXRjaCBjb21wb25l
bnRfYWRkCj4gaW4gcHJvYmUuCj4gQWRkIHRoZSBtaXNzZWQgY2FsbCB0byBmaXggaXQuCj4gCj4g
U2lnbmVkLW9mZi1ieTogQ2h1aG9uZyBZdWFuIDxoc2xlc3Rlcjk2QGdtYWlsLmNvbT4KPiAtLS0K
PiAgZHJpdmVycy9ncHUvZHJtL2V4eW5vcy9leHlub3NfZHJtX2dzYy5jIHwgMSArCj4gIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vZXh5bm9zL2V4eW5vc19kcm1fZ3NjLmMgYi9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5v
c19kcm1fZ3NjLmMKPiBpbmRleCA3YWUwODdiMDUwNGQuLjg4YjZmY2FhMjBiZSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fZ3NjLmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcm1fZ3NjLmMKPiBAQCAtMTMxMyw2ICsxMzEzLDcg
QEAgc3RhdGljIGludCBnc2NfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4g
IHsKPiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gIAo+ICsJY29tcG9uZW50
X2RlbChkZXYsICZnc2NfY29tcG9uZW50X29wcyk7Cj4gIAlwbV9ydW50aW1lX2RvbnRfdXNlX2F1
dG9zdXNwZW5kKGRldik7Cj4gIAlwbV9ydW50aW1lX2Rpc2FibGUoZGV2KTsKPiAgCj4gCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
