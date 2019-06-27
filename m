Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF2057B64
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:28:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PR/lICssCYco+Od6uhLc6d+Fy+FFK5tbFwvxpdlUIXU=; b=H7kN+ffXtkQjMz
	PAK81wEV55r9joAfUUU0FNy72QOdUSWIZLCVAkckaIvy33AfG1fWTd4Hy9S2G7KAalHpyK5DxnqF2
	JxBXg1nlAljpPdP6kEWe6urBfvh5GcsdX6Qmihg7q6K7NPq96+mC5ZAa/L7V9hfVYzyyfhsktFNaG
	Vv34M07AoV/wVoedXn0q/3+GJGUCFwPjiAoUpLvDpuYv4NgBDub72V2stp2F8o0p/Cha4ck1gdGBo
	1FYzWaeY+NnNxnBI0Brk4Ah6nphXZETBalrLkpUzCyrIzFlXxYHq+bUk+sgbemQeuQzIstkJTVeA1
	S1VQbQK3sDbSZXDK+itA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgMxJ-0007oj-3H; Thu, 27 Jun 2019 05:28:21 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMqL-00013R-LO
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 05:21:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:Content-Type:
 Content-Transfer-Encoding:In-Reply-To:MIME-Version:Date:Message-ID:From:Cc:To
 :Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uInEp3j3G0XFuViWSlYVOQQ4J2ycTL1mKxSrVR72yYo=; b=MbxE6SDCTTwEYs8GrgXspjSil
 AW84mzxAINt5S57yUdJ7tErccdKx5lmNFyZnU0tuC2tFkNpezFoWn62i/j6sUIpy+R0JMwlcCCqEe
 EE4UR/NmTWdQZbxqKAeo11DKYml1iKghFDXh6yMq9XJ5klI9wxhG8GNEGwW4UJaNEyzn5TwxbRQ5E
 yz9bfxdXn5U/ts8Bw4zPJfmQmXBQQDAu4gzsRfsFW8GqAgmb/yE/k7t/LB1fXEWk4ilX7Dhb4TC+I
 SkIFYCXG8H7znZ/+I9ONgSrh3m85LxAdjtZy15jxKfM73SQ2oE+Tl/uuKT04rVnQvCdOBIDCuwI0m
 iGm1/TXxg==;
Received: from mailout2.samsung.com ([203.254.224.25])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgIus-0005ui-R2
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 01:09:41 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190627010912epoutp02c4c0ff24d6a75bdef9fbbb3ad9dc6e16~r6OHQ9jc63037830378epoutp02U
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 01:09:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190627010912epoutp02c4c0ff24d6a75bdef9fbbb3ad9dc6e16~r6OHQ9jc63037830378epoutp02U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1561597752;
 bh=uInEp3j3G0XFuViWSlYVOQQ4J2ycTL1mKxSrVR72yYo=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=sGd9i/DIFTSxzLIPJYiwEu7+jnmK4Ak/yBcdhjpaLMgKmsh2aLEALtaGiS9jvViln
 BDHK5FPBcWNPAw7rKSwTnpxqIGDFRHNw8l6k61ZvEWIuMpPIwPELR29+06d3QjYUmz
 1kqUVMHbKmuDKDNVUReovkqJh2TyadAm8nPvLu5U=
Received: from epsmges1p4.samsung.com (unknown [182.195.40.156]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20190627010906epcas1p399a0674f908891b6c329ccfa1fb128b3~r6OBe0GQz3172831728epcas1p3V;
 Thu, 27 Jun 2019 01:09:06 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 95.63.04257.237141D5; Thu, 27 Jun 2019 10:09:06 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20190627010905epcas1p347586b98c94ed5b6fe4f5672ad568ed1~r6OBEaW1t0997809978epcas1p3o;
 Thu, 27 Jun 2019 01:09:05 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190627010905epsmtrp2743d21a17fa82667ae77e8a2f752423b~r6OBDaI7i0313603136epsmtrp27;
 Thu, 27 Jun 2019 01:09:05 +0000 (GMT)
X-AuditID: b6c32a38-5cbff700000010a1-b0-5d1417320857
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 83.A4.03662.137141D5; Thu, 27 Jun 2019 10:09:05 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190627010905epsmtip2915645a7fefe2d9608ead492f8c1e187~r6OAn7gp81982919829epsmtip2N;
 Thu, 27 Jun 2019 01:09:05 +0000 (GMT)
Subject: Re: [PATCH v4 4/5] Documentation: devicetree: add PPMU events
 description
To: Lukasz Luba <l.luba@partner.samsung.com>, Krzysztof Kozlowski
 <krzk@kernel.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <99a47066-3713-77fa-4afb-6f2f17a2721a@samsung.com>
Date: Thu, 27 Jun 2019 10:11:43 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <776f58c2-a05c-8fa8-c7f5-458dc17926f6@partner.samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrAJsWRmVeSWpSXmKPExsWy7bCmvq6RuEiswYpNbBYbZ6xntXh2VNti
 /pFzrBb9j18zW5w/v4Hd4mzTG3aLWw0yFpseX2O1uLxrDpvF594jjBYzzu9jslh75C67xdLr
 F5ksbjeuYLNo3XuE3eLwm3ZWi28nHjE6CHqsmbeG0WPnrLvsHptWdbJ5bF5S73Hw3R4mj74t
 qxg9Pm+SC2CPyrbJSE1MSS1SSM1Lzk/JzEu3VfIOjneONzUzMNQ1tLQwV1LIS8xNtVVy8QnQ
 dcvMAbpfSaEsMacUKBSQWFyspG9nU5RfWpKqkJFfXGKrlFqQklNgWaBXnJhbXJqXrpecn2tl
 aGBgZApUmJCdse3oFvaCK/wVrWdfsjUw7uLpYuTkkBAwkeiaMYe1i5GLQ0hgB6PEgZ/vGCGc
 T4wSd3esZoNwvjFKXP93kxmmZe/Gl1BVexklHp0/zAThvGeU+P3zBitIlbBAiMS/TYeYQGwR
 gVCJlXtOM4MUMQusZJGYf2U/C0iCTUBLYv+LG2wgNr+AosTVH48ZQWxeATuJxlvn2EFsFgFV
 iYvdL8FsUYEIictbdkHVCEqcnPkEbA6ngLvEh2unwWqYBcQlbj2ZzwRhy0s0b50NtlhC4Bi7
 xPXZzVA/uEi0zzvKDmELS7w6vgXKlpL4/G4vG4RdLbHy5BE2iOYORokt+y+wQiSMJfYvnQy0
 gQNog6bE+l36EGFFiZ2/5zJCLOaTePe1hxWkREKAV6KjTQiiRFni8oO7TBC2pMTi9k62CYxK
 s5C8MwvJC7OQvDALYdkCRpZVjGKpBcW56anFhgUmyPG9iRGcurUsdjDuOedziFGAg1GJh3fF
 TuFYIdbEsuLK3EOMEhzMSiK8SxMFYoV4UxIrq1KL8uOLSnNSiw8xmgJDeyKzlGhyPjCv5JXE
 G5oaGRsbW5gYmpkaGiqJ88Zz34wREkhPLEnNTk0tSC2C6WPi4JRqYOyZmyLM4ix8Zq/U55j5
 EdavmC7n/PlXdTPu2fewjV1bD3qmXQjMX+YWXezU82aNnEV5Gm+Ey2eW6QuPcbp6nfj7vn/W
 7vV5/54/Sl3cb3Hugp6Z25neprPJ3P8VZ3D03J2z7uWzVymBTXuPa64z7s75Ghr3RvzggzWH
 WH9ydWqz3FuYph7+96sSS3FGoqEWc1FxIgB86ve38wMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrFIsWRmVeSWpSXmKPExsWy7bCSvK6huEiswYbDyhYbZ6xntXh2VNti
 /pFzrBb9j18zW5w/v4Hd4mzTG3aLWw0yFpseX2O1uLxrDpvF594jjBYzzu9jslh75C67xdLr
 F5ksbjeuYLNo3XuE3eLwm3ZWi28nHjE6CHqsmbeG0WPnrLvsHptWdbJ5bF5S73Hw3R4mj74t
 qxg9Pm+SC2CP4rJJSc3JLEst0rdL4MrYdnQLe8EV/orWsy/ZGhh38XQxcnJICJhI7N34krGL
 kYtDSGA3o8StxWeZIBKSEtMuHmXuYuQAsoUlDh8uhqh5yyhxau98dpAaYYEQiX+bDoHViwiE
 SvzvvQo2iFlgJYvEvt6frBAdF5klPr3/xwJSxSagJbH/xQ02EJtfQFHi6o/HjCA2r4CdROOt
 c2BTWQRUJS52vwSzRQUiJPraZrNB1AhKnJz5BGwOp4C7xIdrp8FqmAXUJf7Mu8QMYYtL3Hoy
 nwnClpdo3jqbeQKj8Cwk7bOQtMxC0jILScsCRpZVjJKpBcW56bnFhgVGeanlesWJucWleel6
 yfm5mxjBMayltYPxxIn4Q4wCHIxKPLwrdgrHCrEmlhVX5h5ilOBgVhLhXZooECvEm5JYWZVa
 lB9fVJqTWnyIUZqDRUmcVz7/WKSQQHpiSWp2ampBahFMlomDU6qBkSllTopZcomqHR/roTCT
 qbM2v3qvJ/rzblBd2cGmHU6nhP9ytnrG1r//fVvyeZcqP796w74tD4M+KcfEyKxZpyd1xED0
 xKk3r+NfnBM6uvCi5QuRbFY71qb6aQ+WqcRyrCsqygn55+N07gYzm1TMyWdulcXnquXiLt67
 UNhVu+MLt6JytripEktxRqKhFnNRcSIAlGiJPN0CAAA=
X-CMS-MailID: 20190627010905epcas1p347586b98c94ed5b6fe4f5672ad568ed1
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190605091304eucas1p21e0717cafa17a14de569f1773cc7abe5
References: <CGME20190605091304eucas1p21e0717cafa17a14de569f1773cc7abe5@eucas1p2.samsung.com>
 <20190605091236.24263-1-l.luba@partner.samsung.com>
 <20190605091236.24263-5-l.luba@partner.samsung.com>
 <CAGTfZH2kTNWtx=Jp1UJaLN50Qxbq+Q9ThV4vhQ240QbOy1TRMQ@mail.gmail.com>
 <7498059d-95f7-e154-cf49-bcbc8ee6fdb9@partner.samsung.com>
 <CAJKOXPc6304D=HNQnrvhBH6qKxhkf=VQ2Gg6Q2FMP2hYOTYSDQ@mail.gmail.com>
 <776f58c2-a05c-8fa8-c7f5-458dc17926f6@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_020935_690946_FB9A0AE1 
X-CRM114-Status: GOOD (  23.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-5.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree <devicetree@vger.kernel.org>,
 willy.mh.wolff.ml@gmail.com,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 kgene@kernel.org, linux-pm@vger.kernel.org,
 =?UTF-8?Q?Bart=c5=82omiej_=c5=bbo=c5=82nierkiewicz?=
 <b.zolnierkie@samsung.com>, linux-kernel <linux-kernel@vger.kernel.org>,
 kyungmin.park@samsung.com, robh+dt@kernel.org, cwchoi00@gmail.com,
 s.nawrocki@samsung.com, myungjoo.ham@samsung.com,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTHVrYXN6LAoKT24gMTkuIDYuIDI2LiDsmKTtm4QgMTE6MTcsIEx1a2FzeiBMdWJhIHdyb3Rl
Ogo+IEhpIEtyenlzenRvZiwKPiAKPiBPbiA2LzI2LzE5IDQ6MDMgUE0sIEtyenlzenRvZiBLb3ps
b3dza2kgd3JvdGU6Cj4+IE9uIFdlZCwgMjYgSnVuIDIwMTkgYXQgMTU6NTgsIEx1a2FzeiBMdWJh
IDxsLmx1YmFAcGFydG5lci5zYW1zdW5nLmNvbT4gd3JvdGU6Cj4+Pgo+Pj4gSGkgQ2hhbndvbywK
Pj4+Cj4+PiBPbiA2LzI2LzE5IDEwOjIzIEFNLCBDaGFud29vIENob2kgd3JvdGU6Cj4+Pj4gSGkg
THVrYXN6LAo+Pj4+Cj4+Pj4gMjAxOeuFhCA27JuUIDXsnbwgKOyImCkgMTg6MTQsIEx1a2FzeiBM
dWJhIDxsLmx1YmFAcGFydG5lci5zYW1zdW5nLmNvbQo+Pj4+IDxtYWlsdG86bC5sdWJhQHBhcnRu
ZXIuc2Ftc3VuZy5jb20+PuuLmOydtCDsnpHshLE6Cj4+Pj4KPj4+PiAgICAgIEV4dGVuZCB0aGUg
ZG9jdW1lbmF0aW9uIGJ5IGV2ZW50cyBkZXNjcmlwdGlvbiB3aXRoIG5ldyAnZXZlbnQtZGF0YS10
eXBlJwo+Pj4+ICAgICAgZmllbGQuIEFkZCBleGFtcGxlIGhvdyB0aGUgZXZlbnQgbWlnaHQgYmUg
ZGVmaW5lZCBpbiBEVC4KPj4+Pgo+Pj4+ICAgICAgU2lnbmVkLW9mZi1ieTogTHVrYXN6IEx1YmEg
PGwubHViYUBwYXJ0bmVyLnNhbXN1bmcuY29tCj4+Pj4gICAgICA8bWFpbHRvOmwubHViYUBwYXJ0
bmVyLnNhbXN1bmcuY29tPj4KPj4+PiAgICAgIFNpZ25lZC1vZmYtYnk6IENoYW53b28gQ2hvaSA8
Y3cwMC5jaG9pQHNhbXN1bmcuY29tCj4+Pj4gICAgICA8bWFpbHRvOmN3MDAuY2hvaUBzYW1zdW5n
LmNvbT4+Cj4+Pj4gICAgICAtLS0KPj4+PiAgICAgICAgLi4uL2JpbmRpbmdzL2RldmZyZXEvZXZl
bnQvZXh5bm9zLXBwbXUudHh0ICAgIHwgMjYgKysrKysrKysrKysrKysrKystLQo+Pj4+ICAgICAg
ICAxIGZpbGUgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4+Pgo+
Pj4+Cj4+Pj4KPj4+PiBBY2tlZC1ieTogQ2hhbndvbyBDaG9pIDxjdzAwLmNob2lAc2Ftc3VuZy5j
b20KPj4+Cj4+PiBUaGFuayB5b3UgZm9yIHRoZSBBQ0tzIGZvciB0aGlzIGEgMi81IHBhdGNoLgo+
Pj4gRG8geW91IHRoaW5rIHRoZSB2NCBjb3VsZCBiZSBtZXJnZWQgbm93Pwo+Pgo+PiBJIHRoaW5r
IHlvdSBoYXZlIGFsbCBuZWNlc3NhcnkgYWNrcy4gSSBjYW4gdGFrZSB0aGUgRFRTIHBhdGNoICg1
LzUpCj4+IGFsdGhvdWdoIHByb2JhYmx5IGZvciBuZXh0IG1lcmdlIHdpbmRvdyBhcyBJIGp1c3Qg
c2VudCBvbmUuCj4gVGhlcmUgd2FzIG9uZSBwYXRjaCAzLzUKPiBodHRwczovL3Byb3RlY3QyLmZp
cmVleWUuY29tL3VybD9rPTgyZGQwZDBjYmUyYWJkMDQuODJkYzg2NDMtZDEzZWNkN2U1Zjk4OWI4
ZCZ1PWh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDE5LzYvNS8yMTUKPiB3aGljaCB3YXMgd2FpdGlu
ZyBBQ0sgb3IgSSBtaXNzZWQgdGhlIGVtYWlsIHNvbWVob3cuCgpXaGVuIEkgd2FzIGluIHZhY2F0
aW9uLCB5b3VyIHBhdGNoZXMgYXJlIHJlbW92ZWQgb24gbXkgZW1haWwgYWNjb3VudApiZWNhdXNl
IG9mIHRoZSBlbWFpbCBleHBpcmF0aW9uLiBTbywgSSByZXBsaWVkIHdpdGggbXkgQWNrIHRocm91
Z2gKZ21haWwgYWNjb3VudCBvbiBtb2JpbGUgcGhvbmUuIEJ1dCwgdGhlcmUgYXJlIHNvbWUgcHJv
YmxlbS4gTXkgcmVwbHkKZGlkbid0IGFycml2ZSB0aGUgbWFpbGluZyBsaXN0LgoKSSBoYXZlIG5v
IGFueSB3YXkgdG8gcmVwbHkgYWJvdXQgdGhpcyBhdCBjb21wYW55LiBBZnRlciBsZWF2aW5nIG9u
ZSdzCm9mZmljZSwgSSdsbCByZXBseSB3aXRoIEFjayBhZ2FpbiBhdCBob21lLgoKPiAKPiBSZWdh
cmRzLAo+IEx1a2Fzego+IAo+Pgo+PiBCZXN0IHJlZ2FyZHMsCj4+IEtyenlzenRvZgo+Pgo+Pgo+
IAo+IAoKCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQpTYW1zdW5nIEVsZWN0cm9uaWNz
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
