Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 545F96C915
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 08:05:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ji66CjMJbsv6Bjb/iZRx9j0ZdODg1G+jsZrFTuCFAI=; b=G7qudVB7+U0x+v
	YldLRlIVGlfoNcqKLpgNSshHtyzv/RczODnHvEv7Ot+SQrmaZMs32txLMoFb7nEpY8JRzM1YQ3brx
	EZq8s7Pl3F65ZWWNKNlYARoM8v6AfQuICyA+jndnqRhtatR5vBSYhQeoSyTWlaYjh+jRd4tmlnMA4
	R0S7G6sBcXJHMEEyc6yBWAGUvGhd53FOZBGun5DkTVf1qtJaFUhmacxHtxYLI44pfkKI/0tKbPXc9
	I7U7b+YrEI9QAWw/ThTEGwlN5fkA5l6e8u31Ci+ev4uDaefr5jtlVm5mSr//OckA5wsmU/28v3psi
	C7TkIZpGISe/SMJ3W1NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnzXh-00062K-Tw; Thu, 18 Jul 2019 06:05:26 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnzXN-0005Pf-56
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 06:05:06 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190718060503euoutp013b55ad419373e606e967d96aba2aac5c~yazbQlhDD2788127881euoutp01B
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 06:05:03 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190718060503euoutp013b55ad419373e606e967d96aba2aac5c~yazbQlhDD2788127881euoutp01B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563429903;
 bh=ejYldofp/ftAAUP8++/HWz53g5Xe+2N2cdIjI2Xaw/w=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=K3fpAW5Xgeffm4d/rbOANmeq9aygYF03E6Xj9tST1JWvOn/aG2G6j7rZpfVkgjxFW
 t4rlr/qiUlqyVdn7LmDDZGrYCGfViAJAVzm7NxBHKjn3u4JHu1xfBSTAw/sC2qA8ez
 XPy2gLYsIkM9mF68iBgrgRtpYcZpi+zTjA1Mw4jE=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190718060502eucas1p1e8eba8bd897f6d408880bb4c955863de~yazaZJeXZ2232222322eucas1p1r;
 Thu, 18 Jul 2019 06:05:02 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id BE.AD.04325.E0C003D5; Thu, 18
 Jul 2019 07:05:02 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190718060501eucas1p29de29ef5bf19f66880bcf57c50b268bc~yazZU4nJb1633816338eucas1p2n;
 Thu, 18 Jul 2019 06:05:01 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190718060501eusmtrp106081c9c8999e11b3dd18047d6d43625~yazZGn7Oy1082210822eusmtrp1y;
 Thu, 18 Jul 2019 06:05:01 +0000 (GMT)
X-AuditID: cbfec7f5-b8fff700000010e5-a9-5d300c0efd51
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id F3.4F.04146.D0C003D5; Thu, 18
 Jul 2019 07:05:01 +0100 (BST)
Received: from [106.120.51.20] (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190718060500eusmtip24b38c5578cae4cd1653f1609dc353f81~yazYYCMNP2022720227eusmtip2b;
 Thu, 18 Jul 2019 06:05:00 +0000 (GMT)
Subject: Re: [PATCH v1 08/50] clk: samsung: change aclk266_isp clocks
 definitions Exynos5420
To: Chanwoo Choi <cw00.choi@samsung.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org
From: Lukasz Luba <l.luba@partner.samsung.com>
Message-ID: <f42696bc-4bc7-3ad8-9507-e12952159fff@partner.samsung.com>
Date: Thu, 18 Jul 2019 08:05:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <5ac878fa-21c8-afcd-9afe-13ed3cd36afb@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfSzUcRzHfe/3yO70c8gnNbXboqxOrf74binVqt1frUfTg3LlN5SHul8n
 lDqhYsIo6fKQpthNRJdMmJwxFN00Gj2oo0fV2rFlyfLb71r+e73fn/fn+/l8ti9LKG2UNxsV
 e4rXxWqjVbQLWd8x1bvSVb4qdNW7x0vxUHUvhWsLayg8OPGRwqXtszLH9pXAfX33GfzswjiD
 62wDFP6Z9YbC/Y1FNC7sa5Hhe+2vGXxn0CrD1u6teDilksbpze0MtoxfovDMQC25UampKqlC
 mh8v0xlNnSmD1jwoP6/JNpuQxl7ns4Pe7xIYzkdHxfO6gA1hLpHlnyvpE72+Ca8MjwgDKlqS
 iZxZ4NZC2Z0pJhO5sEquEkH1rxxKEhMI0r5YaEnYEfQ1jtH/WvJynpJSoQKBveWPQ3xDUPv2
 w6xgWXfuEDy4vEv0PbhuBCkjmTKxm+AKZGAs8RQzNKeGBtNJ0VZw2+BmroUQmeSWwph9ghHZ
 kwuBfnMjkjJu0HVjlBTZmQuCEvMnQnrSC4ZGSx3PL4bUhzcJcS5wGSyMpDQjaestkFJcyUjs
 Dl86zQ5eBD35WaTEAhiulDnyZ8GWU+zIrANLp5USdya45VDTGCDZm2AwK5sRbeBc4eU3N2kF
 V8irv05ItgIuX1RK6WVgznouk3g+VFQVMLlIZZxzmHHOMcY5xxj/z72FSBPy4vVCTAQvrInl
 T6sFbYygj41QH42LqUOzX69npnOyAbVMH2lDHItUcoVhSUCoktLGC4kxbQhYQuWhGP48aynC
 tYlJvC7usE4fzQttaCFLqrwUZ5xGDii5CO0p/jjPn+B1/6oy1tnbgBZYEqx/NlNoiPKe3D7l
 G+wWrz5XMKO2X/X1S4oruyZ3Cnsl72rIGH7CxunHc2uPrdg7Lz3td2rUXeuL29Wpu/33pede
 Skrek9ba45NfH3i6qclUtD5RHvY+tKP96aD/o7wQlCzbH+nZFHzY6uTh5x40/bPTduj9zp7v
 rVRpUfboQRUpRGpX+xM6QfsXKcgPgXYDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrGIsWRmVeSWpSXmKPExsVy+t/xe7q8PAaxBn8WSFvcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFtsenyN1eJjzz1Wi8u75rBZzDi/j8li7ZG77BZL
 r19ksrh4ytXiduMKNovWvUfYLQ6/aWe1+HdtI4uDkMeaeWsYPd7faGX32LSqk81j85J6j74t
 qxg9Pm+SC2CL0rMpyi8tSVXIyC8usVWKNrQw0jO0tNAzMrHUMzQ2j7UyMlXSt7NJSc3JLEst
 0rdL0MtY8nIFW8E5tYo7DduZGxjnKHQxcnJICJhITOo/w9LFyMUhJLCUUeL3nR+MEAkxiUn7
 trND2MISf651sYHYQgKvGSVWntbrYuTgEBaIk9jcEQTSKyJwilGi+9FisBpmgWlMEifWM0MM
 /cMosbztJhNIA5uAnsSOVYUgNbwCbhKzJxxmBrFZBFQlnn7+ArZLVCBCoq9tNhtEjaDEyZlP
 WEBsTgF7iXlbXjBDzDeTmLf5IZQtLnHryXwmCFteonnrbOYJjEKzkLTPQtIyC0nLLCQtCxhZ
 VjGKpJYW56bnFhvqFSfmFpfmpesl5+duYgTG+bZjPzfvYLy0MfgQowAHoxIP7w0l/Vgh1sSy
 4srcQ4wSHMxKIry3XwKFeFMSK6tSi/Lji0pzUosPMZoCPTeRWUo0OR+YgvJK4g1NDc0tLA3N
 jc2NzSyUxHk7BA7GCAmkJ5akZqemFqQWwfQxcXBKNTB2nFxZIOfjG9by/Df7ZfdF28w4bOe+
 WiPkm2x+0qlX5h1nz8kfi2Qz2Cp+n/6zwWjB1Ften1V/pHb0XfSdftqiwXqDstOhmjOZTVKu
 Dq4smSu57l97qXZmSsXr+5f8pKQ2BMU5br/Ve+SQrWuO9pIQjRtf2m4l3ojbznTGOXEHr/fl
 3Q5z99UpsRRnJBpqMRcVJwIAnh57vwkDAAA=
X-CMS-MailID: 20190718060501eucas1p29de29ef5bf19f66880bcf57c50b268bc
X-Msg-Generator: CA
X-RootMTR: 20190715124440eucas1p10bb25e412f32f0da95761f96831893e6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124440eucas1p10bb25e412f32f0da95761f96831893e6
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124440eucas1p10bb25e412f32f0da95761f96831893e6@eucas1p1.samsung.com>
 <20190715124417.4787-9-l.luba@partner.samsung.com>
 <5ac878fa-21c8-afcd-9afe-13ed3cd36afb@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_230505_347266_3B87120D 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, b.zolnierkie@samsung.com, sboyd@kernel.org,
 mturquette@baylibre.com, krzk@kernel.org, a.hajda@samsung.com,
 robh+dt@kernel.org, kyungmin.park@samsung.com, kgene@kernel.org,
 myungjoo.ham@samsung.com, s.nawrocki@samsung.com, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2hhbndvbywKCk9uIDcvMTYvMTkgMTI6MjIgUE0sIENoYW53b28gQ2hvaSB3cm90ZToKPiBI
aSwKPiAKPiBPbiAxOS4gNy4gMTUuIOyYpO2bhCA5OjQzLCBMdWthc3ogTHViYSB3cm90ZToKPj4g
VGhlIEFDTEsyNjZfSVNQIGhhcyBkaWZmZXJlbnQgdG9wb2xvZ3kgaW4gRXh5bm9zNTQyMCBhbmQg
NTQyMi81ODAwLiAgSW4KPj4gRXh5bm9zNTQyMCB0aGlzIGNsb2NrIGRvZXMgbm90IGhhdmUgZGVk
aWNhdGVkIE1VWCB3aGljaCBjaG9vc2VzIFBMTCBpbnN0ZWFkCj4+IGl0IHRha2VzIHRoZSBjbG9j
ayBmcm9tIDItbGV2ZWwgbXV4IGZyb20gQUNMSzI2Ni4gIEluIEV4eW5vczU0MjIgdGhlcmUgaXMg
YQo+PiBkZWRpY2F0ZWQgY2xvY2sgdHJlZSBhbmQgdGhlIFBMTCBjYW4gYmUgY2hvc2VuLiAgVGhl
IHBhdGNoIGFkZHMgbmVlZGVkCj4+IE1VWGVzIGluIHRoZSBleHlub3M1ODAwX211eF9jbG9rcywg
dXBkYXRlcyBleHlub3M1eF9tdXhfY2xrcyBhbmQKPj4gZXh5bm9zNTQyMF9tdXhfY2xrcyBwcm9w
ZXJseS4gSXQgYWxzbyBhZGRzIElEcyB0byBtYW5nZSB0aGVzZSBjbG9ja3MgZnJvbQo+PiBEVC4K
Pj4KPj4gU2lnbmVkLW9mZi1ieTogTHVrYXN6IEx1YmEgPGwubHViYUBwYXJ0bmVyLnNhbXN1bmcu
Y29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL2Nsay9zYW1zdW5nL2Nsay1leHlub3M1NDIwLmMgfCAx
NyArKysrKysrKysrKysrKystLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvc2Ftc3VuZy9j
bGstZXh5bm9zNTQyMC5jIGIvZHJpdmVycy9jbGsvc2Ftc3VuZy9jbGstZXh5bm9zNTQyMC5jCj4+
IGluZGV4IDlkNTQ4NTZkYmNkYS4uNWYyNTEyNzliNGM4IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L2Nsay9zYW1zdW5nL2Nsay1leHlub3M1NDIwLmMKPj4gKysrIGIvZHJpdmVycy9jbGsvc2Ftc3Vu
Zy9jbGstZXh5bm9zNTQyMC5jCj4+IEBAIC00MzIsNiArNDMyLDEwIEBAIFBOQU1FKG1vdXRfZ3Jv
dXAxNl81ODAwX3ApCT0geyAiZG91dF9vc2NfZGl2IiwgIm1vdXRfbWF1X2VwbGxfY2xrIiB9Owo+
PiAgIFBOQU1FKG1vdXRfbXhfbXNwbGxfY2NvcmVfcGh5X3ApID0geyAic2Nsa19icGxsIiwgIm1v
dXRfc2Nsa19kcGxsIiwKPj4gICAJCQkJCSJtb3V0X3NjbGtfbXBsbCIsICJmZl9kb3V0X3NwbGwy
IiwKPj4gICAJCQkJCSJtb3V0X3NjbGtfc3BsbCIsICJtb3V0X3NjbGtfZXBsbCJ9Owo+PiArUE5B
TUUobW91dF9ncm91cDE3XzU4MDBfcCkJPSB7ICJkb3V0X2FjbGsyNjZfaXNwIiwgImRvdXRfc2Ns
a19zdyIgfTsKPj4gK1BOQU1FKG1vdXRfZ3JvdXAxOF81ODAwX3ApCT0geyAiZG91dF9vc2NfZGl2
IiwgIm1vdXRfc3dfYWNsazI2Nl9pc3AiIH07Cj4+ICtQTkFNRShtb3V0X2dyb3VwMTlfNTgwMF9w
KQk9IHsgIm1vdXRfc2Nsa19jcGxsIiwgIm1vdXRfc2Nsa19kcGxsIiwKPj4gKwkJCQkJIm1vdXRf
c2Nsa19tcGxsIiwgIm1vdXRfc2Nsa19pcGxsIn07Cj4+ICAgCj4+ICAgLyogZml4ZWQgcmF0ZSBj
bG9ja3MgZ2VuZXJhdGVkIG91dHNpZGUgdGhlIHNvYyAqLwo+PiAgIHN0YXRpYyBzdHJ1Y3Qgc2Ft
c3VuZ19maXhlZF9yYXRlX2Nsb2NrCj4+IEBAIC00OTQsNiArNDk4LDggQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBzYW1zdW5nX211eF9jbG9jayBleHlub3M1ODAwX211eF9jbGtzW10gX19pbml0Y29u
c3QgPSB7Cj4+ICAgCU1VWChDTEtfU0NMS19CUExMLCAic2Nsa19icGxsIiwgbW91dF9icGxsX3As
IFNSQ19UT1A3LCAyNCwgMSksCj4+ICAgCU1VWCgwLCAibW91dF9lcGxsMiIsIG1vdXRfZXBsbDJf
NTgwMF9wLCBTUkNfVE9QNywgMjgsIDEpLAo+PiAgIAo+PiArCU1VWChDTEtfTU9VVF9BQ0xLMjY2
X0lTUCwgIm1vdXRfYWNsazI2Nl9pc3AiLCBtb3V0X2dyb3VwMTlfNTgwMF9wLAo+PiArCQkJU1JD
X1RPUDgsIDEyLCAyKSwKPj4gICAJTVVYKDAsICJtb3V0X2FjbGs1NTBfY2FtIiwgbW91dF9ncm91
cDNfNTgwMF9wLCBTUkNfVE9QOCwgMTYsIDMpLAo+PiAgIAlNVVgoMCwgIm1vdXRfYWNsa2ZsMV81
NTBfY2FtIiwgbW91dF9ncm91cDNfNTgwMF9wLCBTUkNfVE9QOCwgMjAsIDMpLAo+PiAgIAlNVVgo
MCwgIm1vdXRfYWNsazQzMl9jYW0iLCBtb3V0X2dyb3VwNl81ODAwX3AsIFNSQ19UT1A4LCAyNCwg
MiksCj4+IEBAIC01MDEsNiArNTA3LDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBzYW1zdW5nX211
eF9jbG9jayBleHlub3M1ODAwX211eF9jbGtzW10gX19pbml0Y29uc3QgPSB7Cj4+ICAgCj4+ICAg
CU1VWF9GKENMS19NT1VUX1VTRVJfTUFVX0VQTEwsICJtb3V0X3VzZXJfbWF1X2VwbGwiLCBtb3V0
X2dyb3VwMTZfNTgwMF9wLAo+PiAgIAkJCVNSQ19UT1A5LCA4LCAxLCBDTEtfU0VUX1JBVEVfUEFS
RU5ULCAwKSwKPj4gKwlNVVgoQ0xLX01PVVRfVVNFUl9BQ0xLMjY2X0lTUCwgIm1vdXRfdXNlcl9h
Y2xrMjY2X2lzcCIsCj4+ICsJCQltb3V0X2dyb3VwMThfNTgwMF9wLCBTUkNfVE9QOSwgMTIsIDEp
LAo+PiAgIAlNVVgoMCwgIm1vdXRfdXNlcl9hY2xrNTUwX2NhbSIsIG1vdXRfZ3JvdXAxNV81ODAw
X3AsCj4+ICAgCQkJCQkJCVNSQ19UT1A5LCAxNiwgMSksCj4+ICAgCU1VWCgwLCAibW91dF91c2Vy
X2FjbGtmbDFfNTUwX2NhbSIsIG1vdXRfZ3JvdXAxM181ODAwX3AsCj4+IEBAIC01MTAsNiArNTE4
LDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBzYW1zdW5nX211eF9jbG9jayBleHlub3M1ODAwX211
eF9jbGtzW10gX19pbml0Y29uc3QgPSB7Cj4+ICAgCU1VWCgwLCAibW91dF91c2VyX2FjbGs0MzJf
c2NhbGVyIiwgbW91dF9ncm91cDlfNTgwMF9wLAo+PiAgIAkJCQkJCQlTUkNfVE9QOSwgMjgsIDEp
LAo+PiAgIAo+PiArCU1VWChDTEtfTU9VVF9TV19BQ0xLMjY2X0lTUCwgIm1vdXRfc3dfYWNsazI2
Nl9pc3AiLCBtb3V0X2dyb3VwMTdfNTgwMF9wLAo+PiArCQkJU1JDX1RPUDEzLCAxMiwgMSksCj4+
ICAgCU1VWCgwLCAibW91dF9zd19hY2xrNTUwX2NhbSIsIG1vdXRfZ3JvdXAxNF81ODAwX3AsIFNS
Q19UT1AxMywgMTYsIDEpLAo+PiAgIAlNVVgoMCwgIm1vdXRfc3dfYWNsa2ZsMV81NTBfY2FtIiwg
bW91dF9ncm91cDEyXzU4MDBfcCwKPj4gICAJCQkJCQkJU1JDX1RPUDEzLCAyMCwgMSksCj4+IEBA
IC01MjQsNiArNTM0LDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBzYW1zdW5nX211eF9jbG9jayBl
eHlub3M1ODAwX211eF9jbGtzW10gX19pbml0Y29uc3QgPSB7Cj4+ICAgc3RhdGljIGNvbnN0IHN0
cnVjdCBzYW1zdW5nX2Rpdl9jbG9jayBleHlub3M1ODAwX2Rpdl9jbGtzW10gX19pbml0Y29uc3Qg
PSB7Cj4+ICAgCURJVihDTEtfRE9VVF9BQ0xLNDAwX1dDT1JFLCAiZG91dF9hY2xrNDAwX3djb3Jl
IiwKPj4gICAJCQkibW91dF9hY2xrNDAwX3djb3JlIiwgRElWX1RPUDAsIDE2LCAzKSwKPj4gKwlE
SVYoQ0xLX0RPVVRfQUNMSzI2Nl9JU1AsICJkb3V0X2FjbGsyNjZfaXNwIiwgIm1vdXRfYWNsazI2
Nl9pc3AiLAo+PiArCQkJCURJVl9UT1A4LCAxMiwgMyksCj4+ICAgCURJVigwLCAiZG91dF9hY2xr
NTUwX2NhbSIsICJtb3V0X2FjbGs1NTBfY2FtIiwKPj4gICAJCQkJRElWX1RPUDgsIDE2LCAzKSwK
Pj4gICAJRElWKDAsICJkb3V0X2FjbGtmbDFfNTUwX2NhbSIsICJtb3V0X2FjbGtmbDFfNTUwX2Nh
bSIsCj4+IEBAIC01NzQsNiArNTg2LDkgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBzYW1zdW5nX211
eF9jbG9jayBleHlub3M1NDIwX211eF9jbGtzW10gX19pbml0Y29uc3QgPSB7Cj4+ICAgCU1VWCgw
LCAibW91dF9hY2xrMzAwX2Rpc3AxIiwgbW91dF9ncm91cDFfcCwgU1JDX1RPUDIsIDI0LCAyKSwK
Pj4gICAJTVVYKDAsICJtb3V0X2FjbGszMDBfZ3NjbCIsIG1vdXRfZ3JvdXAxX3AsIFNSQ19UT1Ay
LCAyOCwgMiksCj4+ICAgCj4+ICsJTVVYKENMS19NT1VUX1VTRVJfQUNMSzI2Nl9JU1AsICJtb3V0
X3VzZXJfYWNsazI2Nl9pc3AiLAo+PiArCQkJbW91dF91c2VyX2FjbGsyNjZfaXNwX3AsIFNSQ19U
T1A0LCAxNiwgMSksCj4+ICsKPj4gICAJTVVYKENMS19NT1VUX01YX01TUExMX0NDT1JFLCAibW91
dF9teF9tc3BsbF9jY29yZSIsCj4+ICAgCQkJbW91dF9ncm91cDVfNTgwMF9wLCBTUkNfVE9QNywg
MTYsIDIpLAo+PiAgIAlNVVhfRigwLCAibW91dF9tYXVfZXBsbF9jbGsiLCBtb3V0X21hdV9lcGxs
X2Nsa19wLCBTUkNfVE9QNywgMjAsIDIsCj4+IEBAIC02NDEsOCArNjU2LDYgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBzYW1zdW5nX211eF9jbG9jayBleHlub3M1eF9tdXhfY2xrc1tdIF9faW5pdGNv
bnN0ID0gewo+PiAgIAkJCVNSQ19UT1A0LCA4LCAxKSwKPj4gICAJTVVYKDAsICJtb3V0X3VzZXJf
YWNsazMzM180MzJfaXNwMCIsIG1vdXRfdXNlcl9hY2xrMzMzXzQzMl9pc3AwX3AsCj4+ICAgCQkJ
U1JDX1RPUDQsIDEyLCAxKSwKPj4gLQlNVVgoMCwgIm1vdXRfdXNlcl9hY2xrMjY2X2lzcCIsIG1v
dXRfdXNlcl9hY2xrMjY2X2lzcF9wLAo+PiAtCQkJU1JDX1RPUDQsIDE2LCAxKSwKPj4gICAJTVVY
KDAsICJtb3V0X3VzZXJfYWNsazI2NiIsIG1vdXRfdXNlcl9hY2xrMjY2X3AsIFNSQ19UT1A0LCAy
MCwgMSksCj4+ICAgCU1VWCgwLCAibW91dF91c2VyX2FjbGsxNjYiLCBtb3V0X3VzZXJfYWNsazE2
Nl9wLCBTUkNfVE9QNCwgMjQsIDEpLAo+PiAgIAlNVVgoQ0xLX01PVVRfVVNFUl9BQ0xLMzMzLCAi
bW91dF91c2VyX2FjbGszMzMiLCBtb3V0X3VzZXJfYWNsazMzM19wLAo+Pgo+IAo+IEkgY2hlY2tl
ZCBpdCBvbiBFeHlub3M1NDIwLzU0MjIgVFJNLgo+IAo+IEFja2VkLWJ5OiBDaGFud29vIENob2kg
PGN3MDAuY2hvaUBzYW1zdW5nLmNvbT4KVGhhbmsgeW91IQoKUmVnYXJkcywKTHVrYXN6Cj4gCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
