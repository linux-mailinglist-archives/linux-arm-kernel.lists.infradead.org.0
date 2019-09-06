Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54268AB002
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 03:07:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mtAepC8tvioq8I2cxoKP2RmoOAykkfh/E+fkVRf84sU=; b=HEN2luTX6OFkBL
	ziVBHjENHrEwETzsPVdAIUxOQhu1s4PoNs8bifdWz3rg7EoMRYHV3fFL1IP2I0ByGBAQFN18uHslC
	DPSjlucbjB/hrdFGMe+PXlIHfjXAxgHseHL3cKACVBRtRTsRIcrljC4AIi8jrn/kNMDCoDhNnxt9f
	aPPcSMXlPVvjug2WddedTmR6uiTp2cZTmfoUWcVU4cwmXZrWdpx6AN/1I0pLmU2ntsEKVruYBwJa1
	AUxWwd9o/Pzb1+AAjgrvYPcfj3NDcWJ74nJ3lx9QB0jroGYSweUb6zedAYJlJ+IeCEzERpC8X84SN
	KQQ22fXAYYu4+WyCV+fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i62iB-0006bu-Nc; Fri, 06 Sep 2019 01:06:51 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i62i3-0006ap-6Q
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 01:06:45 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20190906010638epoutp04dfa9b99b40e8515a1fd3f71292f28dd3~Bs-JheY340890208902epoutp04h
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Sep 2019 01:06:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20190906010638epoutp04dfa9b99b40e8515a1fd3f71292f28dd3~Bs-JheY340890208902epoutp04h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1567731998;
 bh=zuqhj21YLwUOhSeDZ220Srd0Xcb66OLWNXrDTjNiHss=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=EOS/0AKeqroYNexlaLnwnGNthBKyZNn4ReOxWejJsb3CU0bEbSne9bV//pRQS31Vu
 2gaedf9YwKgxHl4PnHRr3Q2+i7aQfrP/IF3sSQVGtLUiH06sSbxqEhP5nYH0u5BksQ
 0x2OEismq6EvXTk5MJ8kD1Lomj5tHKBoUx3kh1t0=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20190906010638epcas1p3542009440ef239ab8bfbc7d3bd34f32d~Bs-I-w22k2945529455epcas1p3N;
 Fri,  6 Sep 2019 01:06:38 +0000 (GMT)
Received: from epsmges1p5.samsung.com (unknown [182.195.40.152]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 46PfXB4jHCzMqYkc; Fri,  6 Sep
 2019 01:06:34 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p5.samsung.com (Symantec Messaging Gateway) with SMTP id
 84.3F.04085.A11B17D5; Fri,  6 Sep 2019 10:06:34 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190906010633epcas1p1a4c677f5c78377674c83f404a80076eb~Bs-E1NtM_0904609046epcas1p1J;
 Fri,  6 Sep 2019 01:06:33 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190906010633epsmtrp14cad7057212e6288d16c817a36b00523~Bs-E0grel2861228612epsmtrp1V;
 Fri,  6 Sep 2019 01:06:33 +0000 (GMT)
X-AuditID: b6c32a39-d03ff70000000ff5-5b-5d71b11a402a
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 E7.5E.03638.911B17D5; Fri,  6 Sep 2019 10:06:33 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190906010633epsmtip1e0a7f2ad301ad6db990f26db9a762290~Bs-ErLoBx3003430034epsmtip1G;
 Fri,  6 Sep 2019 01:06:33 +0000 (GMT)
Subject: Re: [PATCH v3 2/2] ARM: exynos: Enable support for ARM architected
 timers
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <ee7945aa-d668-6017-8aec-7f377f3951fb@samsung.com>
Date: Fri, 6 Sep 2019 10:10:42 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190828121005.29368-3-m.szyprowski@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sf0yMYRz33N373ltzPK7St5sf581smqt75XgzGdO4YWpkqLW8q3dX6368
 7r0zMpNlUSyOzXLIb02WlDQhRxFlExEWVsRWGJOQGN67N/Tf5/v9fj7fz/N5nodSag+SOirb
 7uKdds5Kk8Gq2sapBoOual2acU97GFtVUkmwra3n1Wx192OCLWm9pmArbr5Qs3WHmol5pLm6
 vJA0Xzi5xVxcU47Mn6snJKlScuZk8Vwm79Tz9gxHZrbdEk8vWZG+IN0008gYmDh2Fq23czY+
 nk5YmmRYmG2VvGn9es7qllpJnCjSMXPnOB1uF6/PcoiueJoXMq1CnBAtcjbRbbdEZzhssxmj
 cbpJIq7Nyerd/10p7KU27HtZochDHWQRCqIAz4DKPI+qCAVTWnwJwbtiLyEXfQjyS7ep5eIr
 grNt/f8kZQd2KeRBPYK7hbcU/oEWf0QwcCXRj0NwMlztH1T7cSjOheLrg0q/QInzEJTtvEb4
 BySOAl/P08DW0XgStA90Iz/W4Lnw6mVFQKzCkyF/4HzAIAyvhr6uRkLmjIHmA69Vfhwk8fs8
 nYE9ShwOHa+PKGQ8EfIvHgwYA+4kwXOnVCFHSIBv7wcJGYfA29s1ahnroHd3wRDeBGeab5Ky
 eAeCGt/9IUEs+E7tkxZRksNUqLwcI7cnQd2Pw0g2HgUfvuwi/BTAGthRoJUpkfCw68XQESLg
 xPZCcg+ivcPieIdF8A6L4P1vdhSpytFYXhBtFl5kBNPw565GgY8ZFXcJNd1b2oAwheiRGtwv
 pGkJbr240daAgFLSoZrKKqmlyeQ25vJOR7rTbeXFBmSSbtuj1IVlOKRvbnelM6bpsbGx7Axm
 polh6HDNsQE2TYstnIvP4XmBd/7VKaggXR7K74loJPsiUlua9j8xd9O/5ieWtG2vq73hsQlb
 W5pvLaqvorN9fHHrg+T2zbXjPo18Pq00uMe12OdesyUhd+LPO5tWjl8VU/ZJUBWsnWLMYQ3L
 jdHQkhuMIj1vmPfhPzrbHoWesf6enJJccfxZxwiLuvFBb9Gyw132uJrU0+ea9Bm0SszimCil
 U+T+APD5R6GuAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpjkeLIzCtJLcpLzFFi42LZdlhJTldyY2GsweZ3+hYbZ6xntTh/fgO7
 xabH11gtZpzfx2Sx9shddoudc06yOrB5bFrVyeaxeUm9R9+WVYwenzfJBbBEcdmkpOZklqUW
 6dslcGW8nPaTuWASR8Xkh2uZGhhvsXUxcnJICJhILJ/Zw9TFyMUhJLCbUWLNtY/sEAlJiWkX
 jzJ3MXIA2cIShw8XQ9S8ZZT4++UgE0iNsECIxJ4vv8DqRQSqgGq2soEUMQs0MUrsOvQRaupR
 RompB+aAVbEJaEnsf3EDbDW/gKLE1R+PGUFsXgE7iUcP14LVsAioSDT/2AC2QVQgQuLwjllQ
 NYISJ2c+YQGxOYHqP028DzaHWUBd4s+8S8wQtrjErSfzmSBseYnmrbOZJzAKz0LSPgtJyywk
 LbOQtCxgZFnFKJlaUJybnltsWGCUl1quV5yYW1yal66XnJ+7iREcO1paOxhPnIg/xCjAwajE
 wyvwpSBWiDWxrLgy9xCjBAezkgjv+o1AId6UxMqq1KL8+KLSnNTiQ4zSHCxK4rzy+ccihQTS
 E0tSs1NTC1KLYLJMHJxSDYyzpiqLOL25+z/w7ZR5XqHzKx7O7Vv/MTpu1anrt0OWXt3xsVXQ
 RPpwIwdb9qIJKz7G3lIWvyfbn7HFeOq9b/sf3LmxskrCv7x5CuOk1ifPcrYa7xG+o3xyZ/3D
 nBRfDec9/VvSlD+4Kq5REzzCtMaDq2jiStOMk8Kz78Ru16uL1roymXkCW1W0EktxRqKhFnNR
 cSIAq3bH4JkCAAA=
X-CMS-MailID: 20190906010633epcas1p1a4c677f5c78377674c83f404a80076eb
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190828121012eucas1p2fb78bfebe16d744dc28194bb224650e2
References: <20190828121005.29368-1-m.szyprowski@samsung.com>
 <CGME20190828121012eucas1p2fb78bfebe16d744dc28194bb224650e2@eucas1p2.samsung.com>
 <20190828121005.29368-3-m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_180643_752289_8A5A295F 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marc Zyngier <maz@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGVhciBNYXJlaywKCk9uIDE5LiA4LiAyOC4g7Jik7ZuEIDk6MTAsIE1hcmVrIFN6eXByb3dza2kg
d3JvdGU6Cj4gQVJNIGFyY2hpdGVjdGVkIHRpbWVyIGNhbiBiZSB1c2VkIHRvZ2V0aGVyIHdpdGgg
RXh5bm9zIE11bHRpQ29yZSBUaW1lcgo+IGRyaXZlciwgc28gZW5hYmxlIHN1cHBvcnQgZm9yIGl0
LiBTdXBwb3J0IGZvciBBUk0gYXJjaGl0ZWN0ZWQgdGltZXJzIGlzCj4gZXNzZW50aWFsIGZvciBl
bmFibGluZyBwcm9wZXIgS1ZNIHN1cHBvcnQuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5
cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29tPgo+IC0tLQo+ICBhcmNoL2FybS9tYWNo
LWV4eW5vcy9LY29uZmlnIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+
IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLWV4eW5vcy9LY29uZmlnIGIvYXJjaC9hcm0v
bWFjaC1leHlub3MvS2NvbmZpZwo+IGluZGV4IGY4Mzc4NjY0MGY5NC4uOWRhYjFmNTBhMDJmIDEw
MDY0NAo+IC0tLSBhL2FyY2gvYXJtL21hY2gtZXh5bm9zL0tjb25maWcKPiArKysgYi9hcmNoL2Fy
bS9tYWNoLWV4eW5vcy9LY29uZmlnCj4gQEAgLTE5LDYgKzE5LDcgQEAgbWVudWNvbmZpZyBBUkNI
X0VYWU5PUwo+ICAJc2VsZWN0IEVYWU5PU19TUk9NCj4gIAlzZWxlY3QgRVhZTk9TX1BNX0RPTUFJ
TlMgaWYgUE1fR0VORVJJQ19ET01BSU5TCj4gIAlzZWxlY3QgR1BJT0xJQgo+ICsJc2VsZWN0IEhB
VkVfQVJNX0FSQ0hfVElNRVIgaWYgQVJDSF9FWFlOT1M1ICYmIFZJUlRVQUxJWkFUSU9OCj4gIAlz
ZWxlY3QgSEFWRV9BUk1fU0NVIGlmIFNNUAo+ICAJc2VsZWN0IEhBVkVfUzNDMjQxMF9JMkMgaWYg
STJDCj4gIAlzZWxlY3QgSEFWRV9TM0MyNDEwX1dBVENIRE9HIGlmIFdBVENIRE9HCj4gCgpSZXZp
ZXdlZC1ieTogQ2hhbndvbyBDaG9pIDxjdzAwLmNob2lAc2Ftc3VuZy5jb20+CgotLSAKQmVzdCBS
ZWdhcmRzLApDaGFud29vIENob2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
