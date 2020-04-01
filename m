Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2FD19A9C1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 12:42:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WjPtvPMy4dc9hIhL37O1XBd3LmxAooAyTIz9LBtS5tA=; b=G+zo1Wz2UpmPDc
	u/1GV8aWx11EJPbWlW/oQxhb/6IwcRHyBhNK9AfqeIu0OuA/IB4nKo4ycyMz2Mjbve2fAgbyAmkz1
	pPiNhK1zlWvvadfjf58oGVHzfQ19IX9e2AbI9fVfOEis9MLAukNlMR8IgqldOMYZjnL95wqtNgeUZ
	0hLb03sFoBE8jE/vVkVAl6WEG0/9SV2/PX8edPrI2GaR91Ivh5EySM5w1EJvZNlYKeI80DNzx+FFV
	YrdOx3njTeK5LafhJnd8ViYwL34m3dNJHHgvNjBSGAgwYomq4vlWHl7w2Z9SIOqakO0uY/Yfdi1Ca
	wJgH4b0Sadpi0odSDf2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJapG-0004hG-KO; Wed, 01 Apr 2020 10:42:26 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJap8-0004fo-Ue
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 10:42:21 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20200401104216euoutp02d6e2b3c07c6925e0cd74934fd8143986~BrBHeqjH62082720827euoutp02G
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  1 Apr 2020 10:42:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20200401104216euoutp02d6e2b3c07c6925e0cd74934fd8143986~BrBHeqjH62082720827euoutp02G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1585737736;
 bh=oyvVweq5rCiDPBSGX/iNsRaVRSr4YFX/8gSUUJ9l9Q0=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=AxuVWVF0aHtmon6aJeXK7ikknqCLJFP71oL2tIJDSM2Xl0BiG0Oxo9Ig5hSooloyE
 ou6QmNw5gZ484ePL6tlD/EFugTZ3jOa4wkidl8aF76GdP4VASWoyz293BN05hYOEYl
 pUnYNBNR6ouQSge3fSzAtRMQIQ+Jf/5a8OJjzvbI=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200401104216eucas1p28a74dac22aa3c201c6eb96e34a4a16de~BrBHIgWHA1417914179eucas1p2g;
 Wed,  1 Apr 2020 10:42:16 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 5E.AD.61286.800748E5; Wed,  1
 Apr 2020 11:42:16 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200401104215eucas1p158e002d4deb038641d6afd1e3c32e645~BrBGrmoak2926129261eucas1p1z;
 Wed,  1 Apr 2020 10:42:15 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200401104215eusmtrp20567d4a5acd37bf9460647f0ff72b5bf~BrBGq4j901756017560eusmtrp2L;
 Wed,  1 Apr 2020 10:42:15 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-30-5e84700831fd
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id C3.97.08375.700748E5; Wed,  1
 Apr 2020 11:42:15 +0100 (BST)
Received: from [106.210.88.143] (unknown [106.210.88.143]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200401104215eusmtip2b90557b660a45ba9b36077a5153523b8~BrBGCvaM_2190421904eusmtip2O;
 Wed,  1 Apr 2020 10:42:14 +0000 (GMT)
Subject: Re: [PATCH 2/2] ARM: DTS: Add devicetree file for the Galaxy S2
To: =?UTF-8?Q?Pawe=c5=82_Chmiel?= <pawel.mikolaj.chmiel@gmail.com>, Paul
 Cercueil <paul@crapouillou.net>
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <ba6ecdaf-35cf-6d97-47ad-5e9e7af292a5@samsung.com>
Date: Wed, 1 Apr 2020 12:42:14 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <8a77ca985214cb0058e4defe4dcaa27a79eafacc.camel@gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0gUYRSG+3ZmZ0Zz43M1PFkULCEYqFn+GEpEU3MpKI36UXlpcwevq7br
 NYjMNS0zFY3UVVJKU7wV62XVylCXTItVV/KG/ogVQ8vEVFAJy3Gw/Pec873nvO+BjyGk3WJH
 JioukVPHKWJllDXZ9mHd5MIkZIYen26m2QqjSczmW74T7ODga5rVW0bF7EhnOcWWDHaJ2Oqx
 YRGb/8JMsmt9eQR7/52RZp9UldLee+UNzxqQvN6cTck7dNO0XF/3kJI3V92VL+sPB1LXrD2V
 XGxUMqd287phHfm2Lp9MMB9IbTcYROmo3D4HWTGAPWCkoB7lIGtGimsRGAfmKaFYQTDdvkEI
 xTKCRsuqeGdkcUBL8yzFNQiahjwE0SKCnxbTlohh7LAc3n8L5zX2OBq0m4/EvIbABhFol7q2
 hynsDjkLORSvl2AvMOVd5dskPgq9RW0Uz/txMAz35m/7SrAt9JfOkDxb4QCoNnzZXkPgI6Bt
 LSMEdoDJmQoR7wV4kob64RJSCO0HhQW1lMB2MN/XQgt8CP507AxoEXw1NdJCkYtgJKMECarT
 MGXa2E5KYGd41enGI2AfWJgAAffB+IKtkGEfFLYVE0JbAg+ypMIOJ9D1Nf1z7R4yEwVIptt1
 mW7XNbpd1+j+21Yisg45cEkaVQSncY/jUlw1CpUmKS7CNTxepUdbH+vTZt+vdrRqvtmDMINk
 NpLUyMxQqViRrElT9SBgCJm9pMxvqyVRKtJuc+r4MHVSLKfpQQcZUuYgOfl8LkSKIxSJXAzH
 JXDqnVcRY+WYjvZ4ZTn5pwQ2V6+4nC/6fSost3QMZxeNO59NGfXNyPP5eGHOu17ZH8SsnbHZ
 8FyTym9NaYcSK4uzVCO65eiApYErrcE1JmXY9RMFonvGde+YcSJLdu7xy0sJviFPDXem3lQt
 oujyJcY/PDPIHJQ7K76o//wjb6JmymnCO2y2ZfKyjNREKtyPEWqN4i8c5ZHUVAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrCIsWRmVeSWpSXmKPExsVy+t/xe7rsBS1xBhcuqVvMP3KO1aL/8Wtm
 i/PnN7BbbHp8jdXi8q45bBYzzu9jslh6/SKTRf/iSywWP473MVu07j3CbjFlyUx2B26PNfPW
 MHqsvtTO5rFz1l12j02rOtk8Ni+p9/i8SS6ALUrPpii/tCRVISO/uMRWKdrQwkjP0NJCz8jE
 Us/Q2DzWyshUSd/OJiU1J7MstUjfLkEvY8+qfpaCS5IVO7ZvZ2pgnCPSxcjJISFgIvH+VDM7
 iC0ksJRR4sERQYi4jMTJaQ2sELawxJ9rXWxdjFxANW8ZJSY+m87YxcjBISzgIbH/eTJIjYhA
 lsSO59+ZQGqYBbYzSazdtI4ZouEMi8SdvrfMIFVsAoYSXW9BJnFw8ArYSZzriwQJswioSBye
 vI0NxBYViJH4uaeLBcTmFRCUODnzCZjNKeAusXT7VbBDmQXMJOZtfsgMYctLNG+dDWWLS9x6
 Mp9pAqPQLCTts5C0zELSMgtJywJGllWMIqmlxbnpucWGesWJucWleel6yfm5mxiBMbrt2M/N
 OxgvbQw+xCjAwajEw1uR0RInxJpYVlyZe4hRgoNZSYR3tgtQiDclsbIqtSg/vqg0J7X4EKMp
 0HMTmaVEk/OB6SOvJN7Q1NDcwtLQ3Njc2MxCSZy3Q+BgjJBAemJJanZqakFqEUwfEwenVAOj
 qsuJ56dr8sULTy09PjNP7OfmOx7fzzVe0rRL//Hmn+8vseVXPvwv3zKfKyeqavoSaeuy4sBv
 X/1u8kp9jOXdoZ2XITY19NG6VyV6UsWhjErHi7dPvDgl/aTpO/1PXf3zPicHV9aI3u4zVfNw
 /LLoooHPzSL2lDKPmVozbCoql3WaLG19HHVIiaU4I9FQi7moOBEAS0wsk+cCAAA=
X-CMS-MailID: 20200401104215eucas1p158e002d4deb038641d6afd1e3c32e645
X-Msg-Generator: CA
X-RootMTR: 20200318142549eucas1p1793027850923ebad20b4691cba676671
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200318142549eucas1p1793027850923ebad20b4691cba676671
References: <20200312153411.13535-1-paul@crapouillou.net>
 <20200312153411.13535-2-paul@crapouillou.net> <20200313090011.GB7416@pi3>
 <CGME20200318142549eucas1p1793027850923ebad20b4691cba676671@eucas1p1.samsung.com>
 <D6.31.03891.A6F227E5@epmailinsp8.samsung.com>
 <6c549058-00f9-8526-a272-48c538166ccf@samsung.com>
 <X7728Q.UX8A28S31JO92@crapouillou.net>
 <6ca59c1b-2676-e69d-e4eb-4667a81d155f@samsung.com>
 <d9fe575926342b355f76e1f38fef62f0d7d38075.camel@gmail.com>
 <da888000-52b6-b0c6-76ac-8fc535d07a5d@samsung.com>
 <8a77ca985214cb0058e4defe4dcaa27a79eafacc.camel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_034219_304542_D5C8C8DE 
X-CRM114-Status: GOOD (  19.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Stenkin Evgeniy <stenkinevgeniy@gmail.com>, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUGF3ZcWCLAoKT24gMjAyMC0wMy0zMSAyMTo1MCwgUGF3ZcWCIENobWllbCB3cm90ZToKPiBP
biBUdWUsIDIwMjAtMDMtMzEgYXQgMjE6MjkgKzAyMDAsIE1hcmVrIFN6eXByb3dza2kgd3JvdGU6
Cj4+IE9uIDIwMjAtMDMtMzEgMTc6MjksIFBhd2XFgiBDaG1pZWwgd3JvdGU6Cj4+PiBPbiBUdWUs
IDIwMjAtMDMtMzEgYXQgMTU6NTUgKzAyMDAsIE1hcmVrIFN6eXByb3dza2kgd3JvdGU6Cj4+Pj4g
T24gMjAyMC0wMy0zMSAxNTowOSwgUGF1bCBDZXJjdWVpbCB3cm90ZToKPj4+Pj4gTGUgbWFyLiAz
MSBtYXJzIDIwMjAgw6AgNzozNiwgTWFyZWsgU3p5cHJvd3NraQo+Pj4+PiA8bS5zenlwcm93c2tp
QHNhbXN1bmcuY29tPiBhIMOpY3JpdCA6Cj4+Pj4+PiBPbiAyMDIwLTAzLTE4IDE1OjI1LCBQYXVs
IENlcmN1ZWlsIHdyb3RlOgo+Pj4+Pj4+Pj4gICAgICsgICAgfTsKPj4+Pj4+Pj4+ICAgICArCj4+
Pj4+Pj4+PiAgICAgKyAgICB0c3BfcmVnOiByZWd1bGF0b3ItMSB7Cj4+Pj4+Pj4+PiAgICAgKyAg
ICAgICAgY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+Pj4+Pj4+Pj4gICAgICsgICAg
ICAgIHJlZ3VsYXRvci1uYW1lID0gIlRTUF9GSVhFRF9WT0xUQUdFUyI7Cj4+Pj4+Pj4+PiAgICAg
KyAgICAgICAgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MzMwMDAwMD47Cj4+Pj4+Pj4+PiAg
ICAgKyAgICAgICAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzMwMDAwMD47Cj4+Pj4+Pj4+
PiAgICAgKyAgICAgICAgZ3BpbyA9IDwmZ3BsMCAzIEdQSU9fQUNUSVZFX0hJR0g+Owo+Pj4+Pj4+
Pj4gICAgICsgICAgICAgIHN0YXJ0dXAtZGVsYXktdXMgPSA8NzAwMDA+Owo+Pj4+Pj4+Pj4gICAg
ICsgICAgICAgIGVuYWJsZS1hY3RpdmUtaGlnaDsKPj4+Pj4+Pj4+ICAgICArICAgICAgICByZWd1
bGF0b3ItYm9vdC1vbjsKPj4+Pj4+Pj4+ICAgICArICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9u
Owo+Pj4+Pj4+PiAgICBhbHdheXMtb24gYW5kIGJvb3Qtb24gc2hvdWxkIG5vdCBiZSBuZWVkZWQu
IFlvdSBoYXZlIGEgY29uc3VtZXIKPj4+Pj4+Pj4gZm9yIHRoaXMKPj4+Pj4+Pj4gICAgcmVndWxh
dG9yLgo+Pj4+Pj4+ICAgIEFib3V0IHRoaXM6IHRoZSB0b3VjaHNjcmVlbiBkcml2ZXIgZG9lcyBu
b3QgdXNlIGEgcmVndWxhdG9yLCBzbyBJCj4+Pj4+Pj4gICAgYmVsaWV2ZSB0aGF0J3Mgd2h5IHRo
ZXNlIHByb3BlcnRpZXMgd2VyZSBoZXJlLgo+Pj4+Pj4+Cj4+Pj4+Pj4gICAgSSBzZW50IHBhdGNo
ZXMgdXBzdHJlYW0gdG8gYWRkcmVzcyB0aGUgaXNzdWU6Cj4+Pj4+Pj4gICAgaHR0cHM6Ly9wcm90
ZWN0Mi5maXJlZXllLmNvbS91cmw/az1lOGFlZGMyOS1iNTMwNzJiMy1lOGFmNTc2Ni0wY2M0N2Ez
MzZmYWUtNzU5NTc5ZmQ1NzZkODM4MiZ1PWh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDIwLzMvMTUv
OTQKPj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gICAgSSBiZWxpZXZlIHRoaXMgbWVhbnMgSSBjYW5u
b3QgbWVyZ2UgdGhlIGk5MTAwIGRldmljZXRyZWUgdW50aWwgaXQgaXMKPj4+Pj4+PiAgICBhY2tl
ZC4KPj4+Pj4+IE9uZSBtb3JlIGluZm9ybWF0aW9uIC0gc2ltaWxhciBjaGFuZ2UgaGFzIGJlZW4g
YWxyZWFkeSBwb3N0ZWQsIGJ1dCBpdAo+Pj4+Pj4gbG9va3MgaXQgZ290IGxvc3QgdGhlbjogaHR0
cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMDU1MDkwMy8KPj4+Pj4gSSB3YXMgYXdh
cmUgb2YgdGhpcyBwYXRjaCwgYnV0IGRpZG4ndCBrbm93IGl0IHdhcyBzZW50IHVwc3RyZWFtLgo+
Pj4+Pgo+Pj4+PiBUaGlzIG90aGVyIHBhdGNoIHVzZXMgdHdvIHJlZ3VsYXRvcnMsIHZkZC9hdmRk
IGJ1dCBkb2Vzbid0IGdpdmUgYW55Cj4+Pj4+IHJlYXNvbiB3aHkuCj4+Pj4+Cj4+Pj4gSSd2ZSBj
aGVja2VkIHRoZSBVbml2ZXJzYWxDMjEwIHNjaGVtYXRpYywgd2hpY2ggdXNlcyB0aGUgc2FtZQo+
Pj4+IHRvdWNoc2NyZWVuIGNoaXAuIFRoZXJlIGFyZSAyIHN1cHBsaWVzIHRvIHRoZSB0b3VjaHNj
cmVlbiBjaGlwOiAyLjhWIFZERAo+Pj4+IGFuZCAzLjNWIEFWREQuIEJvdGggYXJlIGVuYWJsZWQg
YnkgdGhlIHNhbWUgR1BJTyBwaW4gdGhvdWdoLiBUaGVyZSBpcwo+Pj4+IGhvd2V2ZXIgbm8gcmVz
ZXQgR1BJTyBwaW4gdGhlcmUuCj4+PiBIaQo+Pj4gRG9uJ3QgcmVtZW1iZXIgbm93IGhvdyBpdCB3
b3JrZWQgb24gR2FsYXh5IFMxLCBidXQgaXQgbG9va3MgbGlrZSBpdCBoYXMKPj4+IHRoZSBzYW1l
IHNldHVwIC0gdHdvIHJlZ3VsYXRvcnMgZW5hYmxlZCBieSBvbmUgR1BJTyBwaW4uCj4+IEl0IGlz
IHF1aXRlIGNvbW1vbiBmb3IgdGhlIHJlZ3VsYXRvcnMgdG8gc2hhcmUgdGhlIGVuYWJsZSBHUElP
IGxpbmUsIHNvCj4+IHRoaXMgaXMgbm90IGFuIGlzc3VlLiBSZWd1bGF0b3IgZnJhbWV3b3JrIHN1
cHBvcnRzIHN1Y2ggY29uZmlndXJhdGlvbgo+PiBmb3IgYWdlcy4gSSdtIGN1cmlvdXMgYWJvdXQg
dGhlIHJlc2V0IEdQSU8gbGluZSwgd2hpY2ggd2VyZSBtYWRlCj4+IG1hbmRhdG9yeSBmb3IgdGhl
IHJlZ3VsYXRvcnMgY29udHJvbCBpbiB5b3VyIHBhdGNoLiBJIGRpZG4ndCBmaW5kIGl0IG9uCj4+
IGFueSBzY2hlbWF0aWMgb2YgdGhlIGRldmljZXMgd2l0aCB0aGlzIHRvdWNoIHNjcmVlbiwgYnV0
IEkgZG9uJ3QgaGF2ZSBhCj4+IHNjaGVtYXRpYyBvZiB0aGUgR2FsYXh5IFMxLiBJTUhPIHRoZSBy
ZXNldCBzaWduYWwgaXMgc2ltcGx5IGRlcml2ZWQgZnJvbQo+PiB0aGUgc3VwcGx5IHJlZ3VsYXRv
cnMgd2l0aCBzb21lIHNpbXBsZSBjaXJjdWl0LCBidXQgSSBkb24ndCBoYXZlCj4+IHNjaGVtYXRp
YyBvZiB0aGF0IHBhcnQuCj4gSGkKPiBSZWdhcmRpbmcgdGhpcyBjaGFuZ2UgLSBpdCB3YXMgc3Vn
Z2VzdGVkIGR1cmluZyByZXZpZXcgb2YgdjEgdmVyc2lvbiBvZgo+IHRob3NlIHBhdGNoZXMuIEl0
J3MgZmlyc3QgcmVwbHkgaGVyZQo+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gv
MTA1MjQwMDcvCgpXZWxsLCBJIGtub3cgdGhhdCB0aGlzIGhhcyBiZWVuIHJlcXVlc3RlZCBpbiB2
MSByZXZpZXcsIGJ1dCBJIHRob3VnaHQgCnRoYXQgeW91IGhhdmUgdGVzdGVkIHYzIG9mIHlvdXIg
cGF0Y2ggb24gSTkwMDAsIHRodXMgSSB3YXMgY3VyaW91cyBhYm91dCAKdGhhdCByZXNldCBHUElP
IGxpbmUuCgpCZXN0IHJlZ2FyZHMKLS0gCk1hcmVrIFN6eXByb3dza2ksIFBoRApTYW1zdW5nIFIm
RCBJbnN0aXR1dGUgUG9sYW5kCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
