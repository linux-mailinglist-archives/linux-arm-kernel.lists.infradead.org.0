Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1891DEBF2E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 09:26:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5WZSWm9TQ47vTNwy5WDvqKRzlMfIy1ryjry8GBmrsWA=; b=cDoeNqe3Em2KoL
	yGOWpRsX1diHkrrYDc0sArUB7bsaJBlDKAhlUBLGnPOT4R8oMm0pxpocx892rCh2ajzg9oqfpV0oe
	QiXIS2hodFFQWQiOrTn+tQV2aP1mqxsmX1lpiBhVunZNeR1FAttQLLLJJLQRy1zSnobklItLVwhOo
	4ewf/ziThcgusjfQFThzLT80o0x5Q8g08o2CGEDA8yuSfMf2iOUP/4qfblAbNhMZBFbK6NGPUeWxY
	j+jcrIHSA4ijlNfUs00uOBRmZIiToTczJug5EeLVuZRyopEHXAOIdu77CP6n+NV/Jxcl22xTCcGjb
	5n3bkjLRw+V2wYScybeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQSFp-0000uf-DZ; Fri, 01 Nov 2019 08:25:57 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQSFi-0000to-0e
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 08:25:51 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20191101082544epoutp0104d06e89002c0bf080b85a08cbd7a64e~S-GhQiwYl2153021530epoutp01U
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  1 Nov 2019 08:25:44 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20191101082544epoutp0104d06e89002c0bf080b85a08cbd7a64e~S-GhQiwYl2153021530epoutp01U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1572596744;
 bh=roQQq6L24tjjeQ/Fbnrwlk6m+bJMna+39cbViVWB4sw=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=ZW+p/xVnbz4fIR2sCl0fCkU8ecfvhfOLmXYovvJgzdnUIj8NZqpd9iGAYRWUGy4sW
 NtC2v/+I0folTxzFlVwvFRfsYCGGYLU+uyTl7lIPDMJ3/ui3Hb4+aOhz058LwFUYAD
 yUwFqcqprjlasqsYbH5zthy64ZVJp6/IID/9Yf0E=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191101082544epcas1p19ba7d0fb00f9fd9fa867881dcd0eeeae~S-Ggqxoib2651126511epcas1p1K;
 Fri,  1 Nov 2019 08:25:44 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.152]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 474Fd15xwGzMqYkf; Fri,  1 Nov
 2019 08:25:41 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 A7.14.04144.50CEBBD5; Fri,  1 Nov 2019 17:25:41 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191101082541epcas1p1392a9d2a87c6240ef470162c5cfef685~S-Gd-8aKK2419524195epcas1p1W;
 Fri,  1 Nov 2019 08:25:41 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191101082541epsmtrp1218f8ceaf45e254b2986efd523c67da9~S-Gd-CAkS0584805848epsmtrp1T;
 Fri,  1 Nov 2019 08:25:41 +0000 (GMT)
X-AuditID: b6c32a35-2c7ff70000001030-62-5dbbec05651e
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 BB.1D.25663.50CEBBD5; Fri,  1 Nov 2019 17:25:41 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191101082540epsmtip19f57c47a75a241fe2aa83b90760e4d88~S-Gda1g3i0180501805epsmtip1W;
 Fri,  1 Nov 2019 08:25:40 +0000 (GMT)
Subject: Re: [PATCH v9 4/8] PM / devfreq: Move more initialization before
 registration
To: Leonard Crestez <leonard.crestez@nxp.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <6f9334b3-01f9-a7c5-a87b-7e8a77c8d6e0@samsung.com>
Date: Fri, 1 Nov 2019 17:31:11 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB70234DF1004231D1BB02A41DEE630@VI1PR04MB7023.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrCJsWRmVeSWpSXmKPExsWy7bCmvi7rm92xBrO/GlgcOraV3eLr6VOM
 FssuHWW0mL53E5vF+fMb2C3ONr1ht7jVIGOx4u5HVotNj6+xWnT9Wsls8bn3CKPF5w2PGS1u
 N65gs1h97iCbRdehv2wWG796OAh4vL/Ryu4xu+Eii8eCTaUem1Z1snncubaHzWPzknqPje92
 MHkcfLeHyaNvyypGj8+b5AK4orJtMlITU1KLFFLzkvNTMvPSbZW8g+Od403NDAx1DS0tzJUU
 8hJzU22VXHwCdN0yc4AeUVIoS8wpBQoFJBYXK+nb2RTll5akKmTkF5fYKqUWpOQUWBboFSfm
 Fpfmpesl5+daGRoYGJkCFSZkZzzddpm94KdmxbTt25kbGG8pdjFycEgImEh8PynfxcjFISSw
 g1Fi2cvbbBDOJ0aJnYfeMEE43xglrtw6wQ7T8XeDDkR8L6NE56RVzBDOe0aJKfufsIEUCQtE
 SHR9zQQxRYDMaa/dQUqYBf6zSNye9oGli5GTg01AS2L/ixtsIDa/gKLE1R+PGUFsXgE7iZkr
 TzOB2CwCKhLrpp1iBJkjCjTn9NdEiBJBiZMzn4CN4RSIlbjadAHMZhYQl7j1ZD4ThC0v0bx1
 NthpEgKX2CW2zHgAlpAQcJE4eLqRGcIWlnh1fAs7hC0l8bK/Dcqullh58ggbRHMHo8SW/RdY
 IRLGEvuXTmYCOYhZQFNi/S59iLCixM7fcxkhFvNJvPvawwoJK16JjjYhiBJlicsP7kKdICmx
 uL2TbQKj0iwk78xC8sIsJC/MQli2gJFlFaNYakFxbnpqsWGBIXJUb2IEp3At0x2MU875HGIU
 4GBU4uGdcG53rBBrYllxZe4hRgkOZiUR3u3rgEK8KYmVValF+fFFpTmpxYcYTYGBPZFZSjQ5
 H5hf8kriDU2NjI2NLUwMzUwNDZXEeR2XL40VEkhPLEnNTk0tSC2C6WPi4JRqYJQqsfmzoPvR
 Os+/TlX7/k7pCVn1r6XXQcxNIGKHwge77C+zt2330LXlzfJ+0l7VlXTyWeB9m/96tzxra/eo
 7Dy44epN5waHw3cal+nqPc2/mN4oLb8uZ5ns8fSlmv8c2xr9Z8iEPVVbH7b59Bqen4n/t2lW
 T3ebM1+qL/isyf7E4ybz2Sqnv1JiKc5INNRiLipOBAAZEHmG9wMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrAIsWRmVeSWpSXmKPExsWy7bCSnC7rm92xBq9/CVkcOraV3eLr6VOM
 FssuHWW0mL53E5vF+fMb2C3ONr1ht7jVIGOx4u5HVotNj6+xWnT9Wsls8bn3CKPF5w2PGS1u
 N65gs1h97iCbRdehv2wWG796OAh4vL/Ryu4xu+Eii8eCTaUem1Z1snncubaHzWPzknqPje92
 MHkcfLeHyaNvyypGj8+b5AK4orhsUlJzMstSi/TtErgynm67zF7wU7Ni2vbtzA2MtxS7GDk4
 JARMJP5u0Oli5OQQEtjNKHFgpS+ILSEgKTHt4lFmiBJhicOHi7sYuYBK3jJKnFg2lwkkLiwQ
 IdH1NROkXATInDNtBgtIDbPAfxaJpjV9jBANr5gkdl05yAxSxSagJbH/xQ02EJtfQFHi6o/H
 jCA2r4CdxMyVp5lAbBYBFYl1006BxUWBpj7ffgOqRlDi5MwnLCA2p0CsxNWmC2A2s4C6xJ95
 l5ghbHGJW0/mM0HY8hLNW2czT2AUnoWkfRaSlllIWmYhaVnAyLKKUTK1oDg3PbfYsMAoL7Vc
 rzgxt7g0L10vOT93EyM4nrW0djCeOBF/iFGAg1GJh3dG1+5YIdbEsuLK3EOMEhzMSiK829cB
 hXhTEiurUovy44tKc1KLDzFKc7AoifPK5x+LFBJITyxJzU5NLUgtgskycXBKNTBW3j1kycG1
 Vn9+7/UtU2YWRuctuRGQLcC49c3hR983Cb3Rd97P4FmoItPpsI1/16b5HzuXndVof7Pm4eKl
 hsu6fh6vyNoUd1PGQIqn4ccBV87llinTGa6f97wt7suw87YzL9OjZteMi34hf3uNmIIDVF1u
 MWvuCFt/no9h93vRN9NZruZ92xGqxFKckWioxVxUnAgABq+K2OMCAAA=
X-CMS-MailID: 20191101082541epcas1p1392a9d2a87c6240ef470162c5cfef685
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191002192527epcas3p3ba24247bd1b8ce8ac33f7e4431c25241
References: <cover.1570044052.git.leonard.crestez@nxp.com>
 <CGME20191002192527epcas3p3ba24247bd1b8ce8ac33f7e4431c25241@epcas3p3.samsung.com>
 <25f46d76dc95d5509edd7bf9d1a2e0532faef4cc.1570044052.git.leonard.crestez@nxp.com>
 <0cadb00d-d34e-4028-93c4-b4902a50f5e2@samsung.com>
 <VI1PR04MB70234DF1004231D1BB02A41DEE630@VI1PR04MB7023.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_012550_299724_496D17A5 
X-CRM114-Status: GOOD (  31.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, dl-linux-imx <linux-imx@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>, Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkuIDEwLiAzMS4g7Jik7ZuEIDEwOjMxLCBMZW9uYXJkIENyZXN0ZXogd3JvdGU6Cj4gT24g
MzEuMTAuMjAxOSAwNToxMCwgQ2hhbndvbyBDaG9pIHdyb3RlOgo+PiBIaSBMZW9uYXJkLAo+Pgo+
PiBUaGlzIHBhdGNoIGRpZG4ndCBnZXQgdGhlIGFja2VkLWJ5IGZyb20gZGV2ZnJlcSBtYWludGFp
bmVyLgo+PiBJIHRoaW5rIHRoYXQgd2UgbmVlZCB0byBkaXNjdXNzIHRoaXMgcGF0Y2ggd2l0aCBt
b3JlIHRpbWUuCj4+IEFsc28sIGl0IGlzIHBvc3NpYmxlIHRvIG1ha2UgaXQgYXMgdGhlIHNlcGFy
YXRlIHBhdGNoCj4+IGZyb20gdGhpcyBzZXJpZXMuCj4+Cj4+IElNSE8sIGlmIHlvdSBtYWtlIHRo
ZSBzZXBhcmF0ZSBwYXRjaCBmb3IgdGhpcyBhbmQKPj4gcmVzZW5kIHRoZSBzZXBhcmF0ZSBwYXRj
aCBvbiBsYXRlciwgSSB0aGluayB0aGF0Cj4+IHdlIGNhbiBtZXJnZSB0aGUgcmVtYWluZWQgcGF0
Y2ggcmVsYXRlZCB0byBQTV9RT1MuCj4gCj4gVGhlIGRldmZyZXEgaW5pdGlhbGl6YXRpb24gY2xl
YW51cHMgYXJlIHJlcXVpcmVkIGZvciBkZXZfcG1fcW9zIHN1cHBvcnQsIAo+IG90aGVyd2lzZSBs
b2NrZGVwIHdhcm5pbmdzIGFyZSB0cmlnZ2VyZWQuIEkgY2FuIHBvc3QgdGhlIGNsZWFudXBzIGFz
IGEgCj4gc2VwYXJhdGUgc2VyaWVzIGJ1dCB0aGUgUE0gUW9TIG9uZSB3b3VsZCBkZXBlbmQgb24g
dGhlIGNsZWFudXBzLgo+IAo+IERvIHlvdSBwcmVmZXIgbXVsdGlwbGUgc21hbGxlciBzZXJpZXM/
CgpBZnRlciByZWFkIHRoZSB2MTAsIEkgdGhpbmsgdjkgaXMgYmV0dGVyIHRoYW4gdjEwCmZvciB0
aGlzIGlzc3VlLiAKCj4gCj4gSSB0cnkgdG8gb3JkZXIgbXkgcGF0Y2hlcyB3aXRoIHVuY29udHJv
dmVyc2lhbCBmaXhlcyBhbmQgY2xlYW51cHMgZmlyc3QgCj4gc28gaW4gdGhlb3J5IHRoZSBlYXJs
aWVyIHBhcnRzIGNvdWxkIGJlIGFwcGxpZWQgc2VwYXJhdGVseS4gSXQncyB2ZXJ5IAo+IHJhcmUg
dG8gc2VlIHNlcmllcyBwYXJ0aWFsbHkgYXBwbGllZCB0aG91Z2guCj4gCj4gRWFybGllciBvYmpl
Y3Rpb24gd2FzIHRoYXQgZGV2bSBzaG91bGQgYmUga2VwdCwgSSB0aGluayB0aGlzIGNhbiBiZSAK
PiBhY2NvbXBsaXNoZWQgYnkgc3BsaXR0aW5nIGRldmljZV9yZWdpc3RlciBpbnRvIGRldmljZV9p
bml0aWFsaXplIGFuZCAKPiBkZXZpY2VfYWRkLgo+IAo+PiBPbiAxOS4gMTAuIDMuIOyYpOyghCA0
OjI1LCBMZW9uYXJkIENyZXN0ZXogd3JvdGU6Cj4+PiBJbiBnZW5lcmFsIGl0IGlzIGEgYmV0dGVy
IHRvIGluaXRpYWxpemUgYW4gb2JqZWN0IGJlZm9yZSBtYWtpbmcgaXQKPj4+IGFjY2Vzc2libGUg
ZXh0ZXJuYWxseSAodGhyb3VnaCBkZXZpY2VfcmVnaXN0ZXIpLgo+Pj4KPj4+IFRoaXMgbWFrZXMg
aXQgcG9zc2libGUgdG8gYXZvaWQgcmVtb3ZlIGxvY2tpbmcgdGhlIHBhcnRpYWxseSBpbml0aWFs
aXplZAo+Pj4gb2JqZWN0IGFuZCBzaW1wbGlmaWVzIHRoZSBjb2RlLiBIb3dldmVyIGRldm0gaXMg
bm90IGF2YWlsYWJsZSBiZWZvcmUKPj4+IGRldmljZV9yZWdpc3RlciAob25seSBhZnRlciB0aGUg
ZGV2aWNlX2luaXRpYWxpemUgc3RlcCkgc28gdGhlIHR3bwo+Pj4gYWxsb2NhdGlvbnMgbmVlZCB0
byBiZSBtYW5hZ2VkIG1hbnVhbGx5Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IExlb25hcmQgQ3Jl
c3RleiA8bGVvbmFyZC5jcmVzdGV6QG54cC5jb20+Cj4+PiBSZXZpZXdlZC1ieTogTWF0dGhpYXMg
S2FlaGxja2UgPG1rYUBjaHJvbWl1bS5vcmc+Cj4+PiAtLS0KPj4+ICAgZHJpdmVycy9kZXZmcmVx
L2RldmZyZXEuYyB8IDQzICsrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLQo+
Pj4gICAxIGZpbGUgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pCj4+
Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMgYi9kcml2ZXJzL2Rl
dmZyZXEvZGV2ZnJlcS5jCj4+PiBpbmRleCAzZTBlOTM2MTg1YTMuLjBiNDBmNDBlZTdhYSAxMDA2
NDQKPj4+IC0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMKPj4+ICsrKyBiL2RyaXZlcnMv
ZGV2ZnJlcS9kZXZmcmVxLmMKPj4+IEBAIC01OTEsMTAgKzU5MSwxMiBAQCBzdGF0aWMgdm9pZCBk
ZXZmcmVxX2Rldl9yZWxlYXNlKHN0cnVjdCBkZXZpY2UgKmRldikKPj4+ICAgCW11dGV4X3VubG9j
aygmZGV2ZnJlcV9saXN0X2xvY2spOwo+Pj4gICAKPj4+ICAgCWlmIChkZXZmcmVxLT5wcm9maWxl
LT5leGl0KQo+Pj4gICAJCWRldmZyZXEtPnByb2ZpbGUtPmV4aXQoZGV2ZnJlcS0+ZGV2LnBhcmVu
dCk7Cj4+PiAgIAo+Pj4gKwlrZnJlZShkZXZmcmVxLT50aW1lX2luX3N0YXRlKTsKPj4+ICsJa2Zy
ZWUoZGV2ZnJlcS0+dHJhbnNfdGFibGUpOwo+Pj4gICAJbXV0ZXhfZGVzdHJveSgmZGV2ZnJlcS0+
bG9jayk7Cj4+PiAgIAlrZnJlZShkZXZmcmVxKTsKPj4+ICAgfQo+Pj4gICAKPj4+ICAgLyoqCj4+
PiBAQCAtNjc0LDQ0ICs2NzYsNDMgQEAgc3RydWN0IGRldmZyZXEgKmRldmZyZXFfYWRkX2Rldmlj
ZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4+PiAgIAlkZXZmcmVxLT5tYXhfZnJlcSA9IGRldmZyZXEt
PnNjYWxpbmdfbWF4X2ZyZXE7Cj4+PiAgIAo+Pj4gICAJZGV2ZnJlcS0+c3VzcGVuZF9mcmVxID0g
ZGV2X3BtX29wcF9nZXRfc3VzcGVuZF9vcHBfZnJlcShkZXYpOwo+Pj4gICAJYXRvbWljX3NldCgm
ZGV2ZnJlcS0+c3VzcGVuZF9jb3VudCwgMCk7Cj4+PiAgIAo+Pj4gLQlkZXZfc2V0X25hbWUoJmRl
dmZyZXEtPmRldiwgImRldmZyZXElZCIsCj4+PiAtCQkJCWF0b21pY19pbmNfcmV0dXJuKCZkZXZm
cmVxX25vKSk7Cj4+PiAtCWVyciA9IGRldmljZV9yZWdpc3RlcigmZGV2ZnJlcS0+ZGV2KTsKPj4+
IC0JaWYgKGVycikgewo+Pj4gLQkJbXV0ZXhfdW5sb2NrKCZkZXZmcmVxLT5sb2NrKTsKPj4+IC0J
CXB1dF9kZXZpY2UoJmRldmZyZXEtPmRldik7Cj4+PiAtCQlnb3RvIGVycl9vdXQ7Cj4+PiAtCX0K
Pj4+IC0KPj4+IC0JZGV2ZnJlcS0+dHJhbnNfdGFibGUgPSBkZXZtX2t6YWxsb2MoJmRldmZyZXEt
PmRldiwKPj4+ICsJZGV2ZnJlcS0+dHJhbnNfdGFibGUgPSBremFsbG9jKAo+Pj4gICAJCQlhcnJh
eTNfc2l6ZShzaXplb2YodW5zaWduZWQgaW50KSwKPj4+ICAgCQkJCSAgICBkZXZmcmVxLT5wcm9m
aWxlLT5tYXhfc3RhdGUsCj4+PiAgIAkJCQkgICAgZGV2ZnJlcS0+cHJvZmlsZS0+bWF4X3N0YXRl
KSwKPj4+ICAgCQkJR0ZQX0tFUk5FTCk7Cj4+PiAgIAlpZiAoIWRldmZyZXEtPnRyYW5zX3RhYmxl
KSB7Cj4+PiAgIAkJbXV0ZXhfdW5sb2NrKCZkZXZmcmVxLT5sb2NrKTsKPj4+ICAgCQllcnIgPSAt
RU5PTUVNOwo+Pj4gLQkJZ290byBlcnJfZGV2ZnJlcTsKPj4+ICsJCWdvdG8gZXJyX2RldjsKPj4+
ICAgCX0KPj4+ICAgCj4+PiAtCWRldmZyZXEtPnRpbWVfaW5fc3RhdGUgPSBkZXZtX2tjYWxsb2Mo
JmRldmZyZXEtPmRldiwKPj4+IC0JCQlkZXZmcmVxLT5wcm9maWxlLT5tYXhfc3RhdGUsCj4+PiAt
CQkJc2l6ZW9mKHVuc2lnbmVkIGxvbmcpLAo+Pj4gLQkJCUdGUF9LRVJORUwpOwo+Pj4gKwlkZXZm
cmVxLT50aW1lX2luX3N0YXRlID0ga2NhbGxvYyhkZXZmcmVxLT5wcm9maWxlLT5tYXhfc3RhdGUs
Cj4+PiArCQkJCQkgc2l6ZW9mKHVuc2lnbmVkIGxvbmcpLAo+Pj4gKwkJCQkJIEdGUF9LRVJORUwp
Owo+Pj4gICAJaWYgKCFkZXZmcmVxLT50aW1lX2luX3N0YXRlKSB7Cj4+PiAgIAkJbXV0ZXhfdW5s
b2NrKCZkZXZmcmVxLT5sb2NrKTsKPj4+ICAgCQllcnIgPSAtRU5PTUVNOwo+Pj4gLQkJZ290byBl
cnJfZGV2ZnJlcTsKPj4+ICsJCWdvdG8gZXJyX2RldjsKPj4+ICAgCX0KPj4+ICAgCj4+PiAgIAlk
ZXZmcmVxLT5sYXN0X3N0YXRfdXBkYXRlZCA9IGppZmZpZXM7Cj4+PiAgIAo+Pj4gICAJc3JjdV9p
bml0X25vdGlmaWVyX2hlYWQoJmRldmZyZXEtPnRyYW5zaXRpb25fbm90aWZpZXJfbGlzdCk7Cj4+
PiAgIAo+Pj4gKwlkZXZfc2V0X25hbWUoJmRldmZyZXEtPmRldiwgImRldmZyZXElZCIsCj4+PiAr
CQkJCWF0b21pY19pbmNfcmV0dXJuKCZkZXZmcmVxX25vKSk7Cj4+PiArCWVyciA9IGRldmljZV9y
ZWdpc3RlcigmZGV2ZnJlcS0+ZGV2KTsKPj4+ICsJaWYgKGVycikgewo+Pj4gKwkJbXV0ZXhfdW5s
b2NrKCZkZXZmcmVxLT5sb2NrKTsKPj4+ICsJCXB1dF9kZXZpY2UoJmRldmZyZXEtPmRldik7Cj4+
PiArCQlnb3RvIGVycl9vdXQ7CgplcnJfb3V0IC0+IGVycl9kZXYKV2hlbiBmYWlsZWQgdG8gcmVn
aXN0ZXIsIGhhdmUgdG8gZnJlZSByZXNvdXJjZS4KCj4+PiArCX0KPj4+ICsKPj4+ICAgCW11dGV4
X3VubG9jaygmZGV2ZnJlcS0+bG9jayk7Cj4+PiAgIAo+Pj4gICAJbXV0ZXhfbG9jaygmZGV2ZnJl
cV9saXN0X2xvY2spOwo+Pj4gICAKPj4+ICAgCWdvdmVybm9yID0gdHJ5X3RoZW5fcmVxdWVzdF9n
b3Zlcm5vcihkZXZmcmVxLT5nb3Zlcm5vcl9uYW1lKTsKPj4+IEBAIC03MzcsMTQgKzczOCwyMCBA
QCBzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcV9hZGRfZGV2aWNlKHN0cnVjdCBkZXZpY2UgKmRldiwK
Pj4+ICAgCj4+PiAgIAlyZXR1cm4gZGV2ZnJlcTsKPj4+ICAgCj4+PiAgIGVycl9pbml0Ogo+Pj4g
ICAJbXV0ZXhfdW5sb2NrKCZkZXZmcmVxX2xpc3RfbG9jayk7Cj4+PiAtZXJyX2RldmZyZXE6Cj4+
PiAgIAlkZXZmcmVxX3JlbW92ZV9kZXZpY2UoZGV2ZnJlcSk7Cj4+PiAtCWRldmZyZXEgPSBOVUxM
Owo+Pj4gKwlyZXR1cm4gRVJSX1BUUihlcnIpOwoKCkl0IGlzIG5vdCBwcm9wZXIgdG8gcmV0dXJu
IG9uIHRoZSBtaWRkbGUgCm9mIHRoZSBleGNlcHRpb24gaGFuZGxpbmcuIE5lZWQgdG8gY29uc2lk
ZXIgbW9yZSBjbGVhbiBtZXRob2QuCgo+Pj4gKwo+Pj4gICBlcnJfZGV2Ogo+Pj4gKwkvKgo+Pj4g
KwkgKiBDbGVhbnVwIHBhdGggZm9yIGVycm9ycyB0aGF0IGhhcHBlbiBiZWZvcmUgcmVnaXN0cmF0
aW9uLgo+Pj4gKwkgKiBPdGhlcndpc2Ugd2UgcmVseSBvbiBkZXZmcmVxX2Rldl9yZWxlYXNlLgo+
Pj4gKwkgKi8KPj4+ICsJa2ZyZWUoZGV2ZnJlcS0+dGltZV9pbl9zdGF0ZSk7Cj4+PiArCWtmcmVl
KGRldmZyZXEtPnRyYW5zX3RhYmxlKTsKPj4+ICAgCWtmcmVlKGRldmZyZXEpOwo+Pj4gICBlcnJf
b3V0Ogo+Pj4gICAJcmV0dXJuIEVSUl9QVFIoZXJyKTsKPj4+ICAgfQo+Pj4gICBFWFBPUlRfU1lN
Qk9MKGRldmZyZXFfYWRkX2RldmljZSk7CgoKLS0gCkJlc3QgUmVnYXJkcywKQ2hhbndvbyBDaG9p
ClNhbXN1bmcgRWxlY3Ryb25pY3MKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
