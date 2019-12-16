Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E4E51203A4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 12:21:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HtCnb0wzMW8sJCCgCXKxlFXe8vZVZfwJUbC9chc/0uI=; b=ChWdWLJkUwGY6R
	V6LHYGRnLh3SaEhrFE+y5HjpiAzWhg1yB9UAbnuqEJCK1K6mndT8LY1oqTzfDIVFanilewWaXXovN
	U42V/mkmiKsmVoKGAagqK+IoPqKmuZPOddS/MIFEEuXkgmoClDwmiTAyO45i5Ffg0/ufOLthjiYqE
	mhPCdrDx8IF2dUSFThyQ5tYK/0lWVelBRXn8TZD7qXjrXnRxWsEBdjGfGgcfKix+O8nAxMs9rgNil
	mOwFp4R5SGfq4oGMlez8FaplqFK7/H1FObYJJijNrgLSW7Dfc9EOavD0SZkWLne2GuLjkfxSkmVvP
	WjsXutrxqBH2f877HAiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igoRN-00067Y-4X; Mon, 16 Dec 2019 11:21:29 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igoQp-0005qw-PK
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 11:20:58 +0000
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20191216112046epoutp014859b5a0f8e80e655a0efa00f503d218~g1hL4I1pT3169931699epoutp01s
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 11:20:46 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20191216112046epoutp014859b5a0f8e80e655a0efa00f503d218~g1hL4I1pT3169931699epoutp01s
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576495246;
 bh=2jzKZlvQuqpvTbPIDfQwHkMQrnQSr+KYJE/48NwXw8w=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=sckEsUgYkqbv7FebHSPC0TVKcWs0rFPL0c6XKIp86O6s04hOyqvK8U7JAzMW/pOwd
 W1pMf7JWRota2Qsh8iX7Xj8ivFUIK8FOO5C+Ssu0/gXplevEbS3hgkpV7fcRF6KpBG
 AK32yZmGdJNrGLdl4SqBX+e9ueSOzG6rg6OWR76M=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTP id
 20191216112045epcas1p4616a1b029061c2da0b86ac3f234835e4~g1hLXPhxY2158121581epcas1p4X;
 Mon, 16 Dec 2019 11:20:45 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.157]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 47bzNB55V0zMqYkZ; Mon, 16 Dec
 2019 11:20:42 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 33.DA.48019.A8867FD5; Mon, 16 Dec 2019 20:20:42 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191216112041epcas1p25320af2dbcd66bb08c95b4eb35057dde~g1hHhH4FK0602306023epcas1p28;
 Mon, 16 Dec 2019 11:20:41 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191216112041epsmtrp26bccbec2e02775a7dddf5ed4ae8635ef~g1hHgWsLD0674006740epsmtrp2g;
 Mon, 16 Dec 2019 11:20:41 +0000 (GMT)
X-AuditID: b6c32a38-23fff7000001bb93-8d-5df7688af41c
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 77.3D.06569.98867FD5; Mon, 16 Dec 2019 20:20:41 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191216112041epsmtip164f9e261329028d939be8f41fe7862a5~g1hHD15i30703707037epsmtip15;
 Mon, 16 Dec 2019 11:20:41 +0000 (GMT)
Subject: Re: [PATCH v2] PM / devfreq: exynos-bus: Reduce the numer of goto
 statements and remove unused headers
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <c4e9cc0e-97d7-27e0-e700-b7909a76424c@samsung.com>
Date: Mon, 16 Dec 2019 20:27:16 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <20191216104748.18877-1-a.swigon@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrPJsWRmVeSWpSXmKPExsWy7bCmrm5XxvdYgzVfVSzuz2tltNg4Yz2r
 xaT7E1gs+h+/ZrY4f34Du8XZpjfsFpseX2O1uLxrDpvF594jjBYzzu9jslh75C67xe3GFWwW
 Mya/ZHPg9di0qpPNY/OSeo++LasYPT5vkgtgicq2yUhNTEktUkjNS85PycxLt1XyDo53jjc1
 MzDUNbS0MFdSyEvMTbVVcvEJ0HXLzAE6T0mhLDGnFCgUkFhcrKRvZ1OUX1qSqpCRX1xiq5Ra
 kJJTYFmgV5yYW1yal66XnJ9rZWhgYGQKVJiQnTHjylGWgsmaFU923mZqYPwj38XIySEhYCKx
 /cMq5i5GLg4hgR2MEtM2vmWDcD4xSqx8sp4FwvnGKLF1wQ8WmJataxYzQST2MkpM/fmLHcJ5
 zyix6c8SJpAqYYFCidsv5jOCJEQEDgDN6jgGtoUZxFm+4zzYLDYBLYn9L26wgdj8AooSV388
 Burg4OAVsJPYdU4fJMwioCqxZ+YjVhBbVCBM4uS2FkYQm1dAUOLkzCdgYzgFrCS+3P8OZjML
 iEvcejKfCcKWl2jeOhtsr4TAdHaJvYunsUH84CKxvu8iK4QtLPHq+BZ2CFtK4vO7vVA11RIr
 Tx5hg2juYJTYsv8CVIOxxP6lk5lADmUW0JRYv0sfIqwosfP3XEaIxXwS7772sIKUSAjwSnS0
 CUGUKEtcfnCXCcKWlFjc3sk2gVFpFpJ3ZiF5YRaSF2YhLFvAyLKKUSy1oDg3PbXYsMAEOb43
 MYITr5bFDsY953wOMQpwMCrx8L7I+BYrxJpYVlyZe4hRgoNZSYR3h8L3WCHelMTKqtSi/Pii
 0pzU4kOMpsDQnsgsJZqcD8wKeSXxhqZGxsbGFiaGZqaGhkrivBw/LsYKCaQnlqRmp6YWpBbB
 9DFxcEo1MHqpTPaxyV5l41bpvunRxusBj+Lj+z+UCq2VlpaUcevfrSjoIbl92amd23vnLZDP
 k5vE0eSiod/XvIRLgJ+JKfrwSa+KtbMuapWueWvYJDrRj81BQPrTRYuG+vB9938s2a+5dJPE
 jkYeiS+PJr0L2bJR7vbRFocDV6O+HNjCyMZurx5yXmR/vxJLcUaioRZzUXEiALRKHC7SAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrBIsWRmVeSWpSXmKPExsWy7bCSnG5nxvdYg8VfdC3uz2tltNg4Yz2r
 xaT7E1gs+h+/ZrY4f34Du8XZpjfsFpseX2O1uLxrDpvF594jjBYzzu9jslh75C67xe3GFWwW
 Mya/ZHPg9di0qpPNY/OSeo++LasYPT5vkgtgieKySUnNySxLLdK3S+DKmHHlKEvBZM2KJztv
 MzUw/pHvYuTkkBAwkdi6ZjFTFyMXh5DAbkaJB9c+MkIkJCWmXTzK3MXIAWQLSxw+XAxR85ZR
 YveLd2A1wgKFErdfzGcESYgIHGCUmHPrATtIghnEWXU8GKKjl1Hi0L5jYB1sAloS+1/cYAOx
 +QUUJa7+eMwIsoFXwE5i1zl9kDCLgKrEnpmPWEFsUYEwiZ1LHjOB2LwCghInZz5hAbE5Bawk
 vtz/zgKxS13iz7xLzBC2uMStJ/OZIGx5ieats5knMArPQtI+C0nLLCQts5C0LGBkWcUomVpQ
 nJueW2xYYJSXWq5XnJhbXJqXrpecn7uJERx/Wlo7GE+ciD/EKMDBqMTD65D9LVaINbGsuDL3
 EKMEB7OSCO8Ohe+xQrwpiZVVqUX58UWlOanFhxilOViUxHnl849FCgmkJ5akZqemFqQWwWSZ
 ODilGhiNo792hczW+zA9xfnD7q9GkjkXvrzaYH3hP/s2w92VB6xnGnwvC1E7sGVZ5Q0/M4Uf
 BRHs/yX3qx9nXJjTpXKH76nppDfd0y8W8n18uEml0uxTWLjXxVvbY7zW/pj56+fvGRtfLOza
 J9nYLLFkx8PEe9dP31gYJC3mYKaQ+P+MVc/TrV9i/X+mKrEUZyQaajEXFScCAOLpBEe7AgAA
X-CMS-MailID: 20191216112041epcas1p25320af2dbcd66bb08c95b4eb35057dde
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191216104816eucas1p1775a0dac98f507e10ee2fa15dccdc216
References: <CGME20191216104816eucas1p1775a0dac98f507e10ee2fa15dccdc216@eucas1p1.samsung.com>
 <20191216104748.18877-1-a.swigon@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_032056_107983_1F8DD33F 
X-CRM114-Status: GOOD (  30.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
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
Cc: b.zolnierkie@samsung.com, sw0312.kim@samsung.com, krzk@kernel.org,
 inki.dae@samsung.com, kyungmin.park@samsung.com, myungjoo.ham@samsung.com,
 kgene@kernel.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpzL251bWVyL251bWJlcgoKQnV0LCByZW1vdmUgJ3RoZSBudW1iZXIgb2YnIGZyb20gcGF0
Y2ggdGl0bGUKaW4gb3JkZXIgdG8gbWFrZSBwYXRjaCB0aXRsZSB1bmRlciA4MCBjaGFyLgoKT24g
MTIvMTYvMTkgNzo0NyBQTSwgQXJ0dXIgxZp3aWdvxYQgd3JvdGU6Cj4gVGhpcyBwYXRjaCBpbXBy
b3ZlcyBjb2RlIHJlYWRhYmlsaXR5IGJ5IGNoYW5naW5nIHRoZSBmb2xsb3dpbmcgY29uc3RydWN0
Ogo+IAo+ICAgICBpZiAoY29uZCkKPiAgICAgICAgIGdvdG8gcGFzc2l2ZTsKPiAgICAgZm9vKCk7
Cj4gICAgIGdvdG8gb3V0Owo+IHBhc3NpdmU6Cj4gICAgIGJhcigpOwo+IG91dDoKPiAKPiBpbnRv
IHRoaXM6Cj4gCj4gICAgIGlmIChjb25kKQo+ICAgICAgICAgYmFyKCk7Cj4gICAgIGVsc2UKPiAg
ICAgICAgIGZvbygpOwo+IAoKQW5kIHJlbW92ZSB0aGUgZXhhbXBsZSBiZWNhdXNlIGl0IGlzIHRv
byBsb25nIGFuZCBJIHRoaW5rCnRoYXQgaXQgaXMgZW5vdWdoIHRvIGV4cGxhaW4gd2hhdCB0byBk
byBwYXRjaCBkZXNjcmlwdGlvbi4KCkkgZWRpdCB0aGVtIGJ5IG15c2VsZiBhbmQgYXBwbGllZCBp
dC4gVGhhbmtzLgoKPiBhcyB3ZWxsIGFzIGVsaW1pbmF0aW5nIGEgZmV3IG1vcmUgZ290byBzdGF0
ZW1lbnRzIChyZWxhdGVkIHRvIHJldHVybgo+IHBhdGhzKS4KPiAKPiBNb3Jlb3ZlciwgdGhpcyBw
YXRjaCByZW1vdmVzIHVudXNlZCBoZWFkZXIgZmlsZSBpbmNsdWRlcyBhbmQgYWRkcyBhIG1pc3Np
bmcKPiBpbmNsdWRlIDxsaW51eC9vZi5oPi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBcnR1ciDFmndp
Z2/FhCA8YS5zd2lnb25Ac2Ftc3VuZy5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZGV2ZnJlcS9leHlu
b3MtYnVzLmMgfCA1NCArKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgMSBm
aWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDM1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIGIvZHJpdmVycy9kZXZmcmVxL2V4
eW5vcy1idXMuYwo+IGluZGV4IDE5ZDlmOWY4Y2VkMi4uN2Y1OTE3ZDU5MDcyIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKPiArKysgYi9kcml2ZXJzL2RldmZyZXEv
ZXh5bm9zLWJ1cy5jCj4gQEAgLTE1LDExICsxNSwxMCBAQAo+ICAjaW5jbHVkZSA8bGludXgvZGV2
aWNlLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9leHBvcnQuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L21v
ZHVsZS5oPgo+IC0jaW5jbHVkZSA8bGludXgvb2ZfZGV2aWNlLmg+Cj4gKyNpbmNsdWRlIDxsaW51
eC9vZi5oPgo+ICAjaW5jbHVkZSA8bGludXgvcG1fb3BwLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9w
bGF0Zm9ybV9kZXZpY2UuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3JlZ3VsYXRvci9jb25zdW1lci5o
Pgo+IC0jaW5jbHVkZSA8bGludXgvc2xhYi5oPgo+ICAKPiAgI2RlZmluZSBERUZBVUxUX1NBVFVS
QVRJT05fUkFUSU8JNDAKPiAgCj4gQEAgLTMwMSwxMCArMzAwLDkgQEAgc3RhdGljIGludCBleHlu
b3NfYnVzX3Byb2ZpbGVfaW5pdChzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAo+ICAJcHJvZmlsZS0+
ZXhpdCA9IGV4eW5vc19idXNfZXhpdDsKPiAgCj4gIAlvbmRlbWFuZF9kYXRhID0gZGV2bV9remFs
bG9jKGRldiwgc2l6ZW9mKCpvbmRlbWFuZF9kYXRhKSwgR0ZQX0tFUk5FTCk7Cj4gLQlpZiAoIW9u
ZGVtYW5kX2RhdGEpIHsKPiAtCQlyZXQgPSAtRU5PTUVNOwo+IC0JCWdvdG8gZXJyOwo+IC0JfQo+
ICsJaWYgKCFvbmRlbWFuZF9kYXRhKQo+ICsJCXJldHVybiAtRU5PTUVNOwo+ICsKPiAgCW9uZGVt
YW5kX2RhdGEtPnVwdGhyZXNob2xkID0gNDA7Cj4gIAlvbmRlbWFuZF9kYXRhLT5kb3duZGlmZmVy
ZW50aWFsID0gNTsKPiAgCj4gQEAgLTMxNCwxNSArMzEyLDE0IEBAIHN0YXRpYyBpbnQgZXh5bm9z
X2J1c19wcm9maWxlX2luaXQoc3RydWN0IGV4eW5vc19idXMgKmJ1cywKPiAgCQkJCQkJb25kZW1h
bmRfZGF0YSk7Cj4gIAlpZiAoSVNfRVJSKGJ1cy0+ZGV2ZnJlcSkpIHsKPiAgCQlkZXZfZXJyKGRl
diwgImZhaWxlZCB0byBhZGQgZGV2ZnJlcSBkZXZpY2VcbiIpOwo+IC0JCXJldCA9IFBUUl9FUlIo
YnVzLT5kZXZmcmVxKTsKPiAtCQlnb3RvIGVycjsKPiArCQlyZXR1cm4gUFRSX0VSUihidXMtPmRl
dmZyZXEpOwo+ICAJfQo+ICAKPiAgCS8qIFJlZ2lzdGVyIG9wcF9ub3RpZmllciB0byBjYXRjaCB0
aGUgY2hhbmdlIG9mIE9QUCAgKi8KPiAgCXJldCA9IGRldm1fZGV2ZnJlcV9yZWdpc3Rlcl9vcHBf
bm90aWZpZXIoZGV2LCBidXMtPmRldmZyZXEpOwo+ICAJaWYgKHJldCA8IDApIHsKPiAgCQlkZXZf
ZXJyKGRldiwgImZhaWxlZCB0byByZWdpc3RlciBvcHAgbm90aWZpZXJcbiIpOwo+IC0JCWdvdG8g
ZXJyOwo+ICsJCXJldHVybiByZXQ7Cj4gIAl9Cj4gIAo+ICAJLyoKPiBAQCAtMzMyLDE3ICszMjks
MTYgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdChzdHJ1Y3QgZXh5bm9zX2J1
cyAqYnVzLAo+ICAJcmV0ID0gZXh5bm9zX2J1c19lbmFibGVfZWRldihidXMpOwo+ICAJaWYgKHJl
dCA8IDApIHsKPiAgCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBlbmFibGUgZGV2ZnJlcS1ldmVu
dCBkZXZpY2VzXG4iKTsKPiAtCQlnb3RvIGVycjsKPiArCQlyZXR1cm4gcmV0Owo+ICAJfQo+ICAK
PiAgCXJldCA9IGV4eW5vc19idXNfc2V0X2V2ZW50KGJ1cyk7Cj4gIAlpZiAocmV0IDwgMCkgewo+
ICAJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIHNldCBldmVudCB0byBkZXZmcmVxLWV2ZW50IGRl
dmljZXNcbiIpOwo+IC0JCWdvdG8gZXJyOwo+ICsJCXJldHVybiByZXQ7Cj4gIAl9Cj4gIAo+IC1l
cnI6Cj4gLQlyZXR1cm4gcmV0Owo+ICsJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gIHN0YXRpYyBpbnQg
ZXh5bm9zX2J1c19wcm9maWxlX2luaXRfcGFzc2l2ZShzdHJ1Y3QgZXh5bm9zX2J1cyAqYnVzLAo+
IEBAIC0zNTEsNyArMzQ3LDYgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3Byb2ZpbGVfaW5pdF9w
YXNzaXZlKHN0cnVjdCBleHlub3NfYnVzICpidXMsCj4gIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBi
dXMtPmRldjsKPiAgCXN0cnVjdCBkZXZmcmVxX3Bhc3NpdmVfZGF0YSAqcGFzc2l2ZV9kYXRhOwo+
ICAJc3RydWN0IGRldmZyZXEgKnBhcmVudF9kZXZmcmVxOwo+IC0JaW50IHJldCA9IDA7Cj4gIAo+
ICAJLyogSW5pdGlhbGl6ZSB0aGUgc3RydWN0IHByb2ZpbGUgYW5kIGdvdmVybm9yIGRhdGEgZm9y
IHBhc3NpdmUgZGV2aWNlICovCj4gIAlwcm9maWxlLT50YXJnZXQgPSBleHlub3NfYnVzX3Rhcmdl
dDsKPiBAQCAtMzU5LDE2ICszNTQsMTMgQEAgc3RhdGljIGludCBleHlub3NfYnVzX3Byb2ZpbGVf
aW5pdF9wYXNzaXZlKHN0cnVjdCBleHlub3NfYnVzICpidXMsCj4gIAo+ICAJLyogR2V0IHRoZSBp
bnN0YW5jZSBvZiBwYXJlbnQgZGV2ZnJlcSBkZXZpY2UgKi8KPiAgCXBhcmVudF9kZXZmcmVxID0g
ZGV2ZnJlcV9nZXRfZGV2ZnJlcV9ieV9waGFuZGxlKGRldiwgMCk7Cj4gLQlpZiAoSVNfRVJSKHBh
cmVudF9kZXZmcmVxKSkgewo+IC0JCXJldCA9IC1FUFJPQkVfREVGRVI7Cj4gLQkJZ290byBlcnI7
Cj4gLQl9Cj4gKwlpZiAoSVNfRVJSKHBhcmVudF9kZXZmcmVxKSkKPiArCQlyZXR1cm4gLUVQUk9C
RV9ERUZFUjsKPiAgCj4gIAlwYXNzaXZlX2RhdGEgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2Yo
KnBhc3NpdmVfZGF0YSksIEdGUF9LRVJORUwpOwo+IC0JaWYgKCFwYXNzaXZlX2RhdGEpIHsKPiAt
CQlyZXQgPSAtRU5PTUVNOwo+IC0JCWdvdG8gZXJyOwo+IC0JfQo+ICsJaWYgKCFwYXNzaXZlX2Rh
dGEpCj4gKwkJcmV0dXJuIC1FTk9NRU07Cj4gKwo+ICAJcGFzc2l2ZV9kYXRhLT5wYXJlbnQgPSBw
YXJlbnRfZGV2ZnJlcTsKPiAgCj4gIAkvKiBBZGQgZGV2ZnJlcSBkZXZpY2UgZm9yIGV4eW5vcyBi
dXMgd2l0aCBwYXNzaXZlIGdvdmVybm9yICovCj4gQEAgLTM3NywxMiArMzY5LDEwIEBAIHN0YXRp
YyBpbnQgZXh5bm9zX2J1c19wcm9maWxlX2luaXRfcGFzc2l2ZShzdHJ1Y3QgZXh5bm9zX2J1cyAq
YnVzLAo+ICAJaWYgKElTX0VSUihidXMtPmRldmZyZXEpKSB7Cj4gIAkJZGV2X2VycihkZXYsCj4g
IAkJCSJmYWlsZWQgdG8gYWRkIGRldmZyZXEgZGV2IHdpdGggcGFzc2l2ZSBnb3Zlcm5vclxuIik7
Cj4gLQkJcmV0ID0gUFRSX0VSUihidXMtPmRldmZyZXEpOwo+IC0JCWdvdG8gZXJyOwo+ICsJCXJl
dHVybiBQVFJfRVJSKGJ1cy0+ZGV2ZnJlcSk7Cj4gIAl9Cj4gIAo+IC1lcnI6Cj4gLQlyZXR1cm4g
cmV0Owo+ICsJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9i
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+IEBAIC00MjcsMTkgKzQxNywxMyBAQCBz
dGF0aWMgaW50IGV4eW5vc19idXNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikK
PiAgCQlnb3RvIGVycl9yZWc7Cj4gIAo+ICAJaWYgKHBhc3NpdmUpCj4gLQkJZ290byBwYXNzaXZl
Owo+IC0KPiAtCXJldCA9IGV4eW5vc19idXNfcHJvZmlsZV9pbml0KGJ1cywgcHJvZmlsZSk7Cj4g
LQlpZiAocmV0IDwgMCkKPiAtCQlnb3RvIGVycjsKPiArCQlyZXQgPSBleHlub3NfYnVzX3Byb2Zp
bGVfaW5pdF9wYXNzaXZlKGJ1cywgcHJvZmlsZSk7Cj4gKwllbHNlCj4gKwkJcmV0ID0gZXh5bm9z
X2J1c19wcm9maWxlX2luaXQoYnVzLCBwcm9maWxlKTsKPiAgCj4gLQlnb3RvIG91dDsKPiAtcGFz
c2l2ZToKPiAtCXJldCA9IGV4eW5vc19idXNfcHJvZmlsZV9pbml0X3Bhc3NpdmUoYnVzLCBwcm9m
aWxlKTsKPiAgCWlmIChyZXQgPCAwKQo+ICAJCWdvdG8gZXJyOwo+ICAKPiAtb3V0Ogo+ICAJbWF4
X3N0YXRlID0gYnVzLT5kZXZmcmVxLT5wcm9maWxlLT5tYXhfc3RhdGU7Cj4gIAltaW5fZnJlcSA9
IChidXMtPmRldmZyZXEtPnByb2ZpbGUtPmZyZXFfdGFibGVbMF0gLyAxMDAwKTsKPiAgCW1heF9m
cmVxID0gKGJ1cy0+ZGV2ZnJlcS0+cHJvZmlsZS0+ZnJlcV90YWJsZVttYXhfc3RhdGUgLSAxXSAv
IDEwMDApOwo+IAoKCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQpTYW1zdW5nIEVsZWN0
cm9uaWNzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
