Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03AA7EBE1D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 07:46:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qo2kQLUndh6KPWnfVcxoke6wtdgj1axA+jX7oLtJb4w=; b=FvpbnQtEniUIZM
	1sN/JcZq4Kg4QWk0sFSx6pwRBFxsaqM/IUQHklq4EKyB6NTnqkn/1kDK1WhZIh886ar7xX/1zObmH
	GNVOT4pci1Zg8CaNDl1N2U4ENEzkg+iBqiZaacKPWNln+RqbCMzzV3UjUsJVMjI880JxNQslnr1UG
	tMkbPzRARXyszEzCLDK8HNYM43LKxfmVRcOaDXYIYFIpvu5UG75IsNSnAeGBHH7SyaN451bMssYk/
	+UE2W3SbSWRWBoXzI6/Ra7cewUkvzRDK8hwBUSebyPNn0fpUp1R0/rtDi/cS2UOe/6jTqwh9jNRb3
	n8XMQ/saIlrvBBzRG8Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQQhQ-0004gZ-7b; Fri, 01 Nov 2019 06:46:20 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQQhE-0004g1-T5
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 06:46:10 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20191101064605epoutp02e98c48b9ef9561c53bb118c35b38ff5d~S9vgx9tNM1987019870epoutp025
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  1 Nov 2019 06:46:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20191101064605epoutp02e98c48b9ef9561c53bb118c35b38ff5d~S9vgx9tNM1987019870epoutp025
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1572590765;
 bh=oE1vKRf9KfKqu3zr6FieGsODlnie4bMmsyb+gfv+dTQ=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=enpaHuDYwXQPo3Zfcq56V26Y5sq/iIA+vdp+FznzNGNwMsDAkZ5xi4653DPD7xL0m
 hp3ZjKghOO65sRffB4MN0rWVyBppakvTWToYjGAyLgkuLDzzE30TzgzvhZYnaqKvma
 lVs83BI3qDamhC4J7RfqE2DTAVyYASJRnt4GhRkE=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191101064605epcas1p1323ab4351d7b964f67d531f2b6110bc5~S9vgY_6AN0373603736epcas1p1E;
 Fri,  1 Nov 2019 06:46:05 +0000 (GMT)
Received: from epsmges1p4.samsung.com (unknown [182.195.40.156]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 474CQ25d6MzMqYkh; Fri,  1 Nov
 2019 06:46:02 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
 epsmges1p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 AF.E7.04224.AA4DBBD5; Fri,  1 Nov 2019 15:46:02 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191101064602epcas1p10339b9c1a2eed204bac1acf3885d79a7~S9vdTg6lV0610206102epcas1p1R;
 Fri,  1 Nov 2019 06:46:02 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191101064602epsmtrp2cd1980aeab7e3cfe894743e329be8b97~S9vdSpE4H2799827998epsmtrp2q;
 Fri,  1 Nov 2019 06:46:02 +0000 (GMT)
X-AuditID: b6c32a38-d5bff70000001080-d9-5dbbd4aa66dd
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 D4.A6.25663.9A4DBBD5; Fri,  1 Nov 2019 15:46:01 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191101064601epsmtip2286b09d9f75b10b361a36590c3420d72~S9vdA0cqz2931229312epsmtip28;
 Fri,  1 Nov 2019 06:46:01 +0000 (GMT)
Subject: Re: [PATCH] PM / devfreq: events: fix excessive stack usage
To: Arnd Bergmann <arnd@arndb.de>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <e0d6b270-477a-9438-e992-263187bc52aa@samsung.com>
Date: Fri, 1 Nov 2019 15:51:32 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191022142703.1789898-1-arnd@arndb.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrOJsWRmVeSWpSXmKPExsWy7bCmge6qK7tjDVYtVrP4O+kYu0X/49fM
 FufPb2C3ONv0ht3iVoOMxabH11gtLu+aw2bxufcIo8WM8/uYLG43rmBz4PL4/WsSo8emVZ1s
 HpuX1HscfLeHyaNvyypGj8+b5ALYorJtMlITU1KLFFLzkvNTMvPSbZW8g+Od403NDAx1DS0t
 zJUU8hJzU22VXHwCdN0yc4AOU1IoS8wpBQoFJBYXK+nb2RTll5akKmTkF5fYKqUWpOQUWBbo
 FSfmFpfmpesl5+daGRoYGJkCFSZkZ1z7KlxwULRiwdmnzA2MEwW7GDk4JARMJE71hnQxcnEI
 CexglFi/dDsLhPOJUeL9yilMEM43RomzB06zdzFygnU8n3SEGSKxl1Fi2fnXjBDOe0aJfbuW
 sYBUCQu4SHy+/44NJCEisJ9RYvHt92AOs8BGRom9k6+BVbEJaEnsf3GDDcTmF1CUuPrjMSOI
 zStgJ7Fs1xGwOIuAisTiKz/YQa4VFYiQOP01EaJEUOLkzCdgYzgFTCWW90K0MguIS9x6Mp8J
 wpaXaN46G+xUCYF2dol5j+9D/eAise/tckYIW1ji1fEtUHEpic/v9rJB2NUSK08eYYNo7mCU
 2LL/AitEwlhi/9LJTCAHMQtoSqzfpQ8RVpTY+Xsu1BF8Eu++9rBCQphXoqNNCKJEWeLyg7tM
 ELakxOL2TrYJjEqzkLwzC8kLs5C8MAth2QJGllWMYqkFxbnpqcWGBSbIsb2JEZxotSx2MO45
 53OIUYCDUYmHd0bX7lgh1sSy4srcQ4wSHMxKIrzb1wGFeFMSK6tSi/Lji0pzUosPMZoCA3si
 s5Rocj4wC+SVxBuaGhkbG1uYGJqZGhoqifM6Ll8aKySQnliSmp2aWpBaBNPHxMEp1cC47siK
 L7PSvTJn8FlJnQmdMO/1rXqxqpUP6j9U2t1tEZB8uSZ12b9X6flZF08pFjFfcmzZna/2/+vU
 TfJFj5/OkFpzq+ywy2M75XPx6/4bPnh4oOmXGBvr8uzqtYEPPfU1V+RNPXGO6eq5cKmJ16v8
 pm5ccaz13PcOFtNlsp+NWhSuLzDT6L2zQomlOCPRUIu5qDgRAP/Wx6fKAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsWy7bCSvO7KK7tjDRbdtrD4O+kYu0X/49fM
 FufPb2C3ONv0ht3iVoOMxabH11gtLu+aw2bxufcIo8WM8/uYLG43rmBz4PL4/WsSo8emVZ1s
 HpuX1HscfLeHyaNvyypGj8+b5ALYorhsUlJzMstSi/TtErgyrn0VLjgoWrHg7FPmBsaJgl2M
 nBwSAiYSzycdYQaxhQR2M0o8eckLEZeUmHbxKFCcA8gWljh8uLiLkQuo5C2jxINvG1hAaoQF
 XCQ+33/HBpIQEdjPKHHyz0FmEIdZYCNQ1eK5TBAtHYwS5z9fB1vBJqAlsf/FDTYQm19AUeLq
 j8eMIDavgJ3Esl1HwOIsAioSi6/8YAexRQUiJJ5vvwFVIyhxcuYTsNWcAqYSy3shepkF1CX+
 zLvEDGGLS9x6Mp8JwpaXaN46m3kCo/AsJO2zkLTMQtIyC0nLAkaWVYySqQXFuem5xYYFRnmp
 5XrFibnFpXnpesn5uZsYwTGnpbWD8cSJ+EOMAhyMSjy8M7p2xwqxJpYVV+YeYpTgYFYS4d2+
 DijEm5JYWZValB9fVJqTWnyIUZqDRUmcVz7/WKSQQHpiSWp2ampBahFMlomDU6qBMVBpyz35
 GdPTFXjCAm7vafNsjNvAZCn0ff3cPQev6k014W5N1niz6FSY9bfLTokrC1mZH9bqvb71T+r9
 yiWnFQPCWE8cSPp7V999yUJe4+7exmzdRtOPVht4y/xCLzN4uT862nPu41KOh+ezdi9Zu+e5
 wedzn7epFK0Ma7djeMqgXr8pa7pJvRJLcUaioRZzUXEiALC0KYy1AgAA
X-CMS-MailID: 20191101064602epcas1p10339b9c1a2eed204bac1acf3885d79a7
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191022142726epcas3p4c09cde8944f5e8f1472b496e1e1fbccc
References: <CGME20191022142726epcas3p4c09cde8944f5e8f1472b496e1e1fbccc@epcas3p4.samsung.com>
 <20191022142703.1789898-1-arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_234609_176615_26B76251 
X-CRM114-Status: GOOD (  26.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Lukasz Luba <l.luba@partner.samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQXJuZCwKCk9uIDE5LiAxMC4gMjIuIOyYpO2bhCAxMToyNiwgQXJuZCBCZXJnbWFubiB3cm90
ZToKPiBQdXR0aW5nIGEgJ3N0cnVjdCBkZXZmcmVxX2V2ZW50X2Rldicgb2JqZWN0IG9uIHRoZSBz
dGFjayBpcyBnZW5lcmFsbHkKPiBhIGJhZCBpZGVhIGFuZCBoZXJlIGl0IGxlYWRzIHRvIGEgd2Fy
bmlnIGFib3V0IHBvdGVudGlhbCBzdGFjayBvdmVyZmxvdzoKPiAKPiBkcml2ZXJzL2RldmZyZXEv
ZXZlbnQvZXh5bm9zLXBwbXUuYzo2NDM6MTI6IGVycm9yOiBzdGFjayBmcmFtZSBzaXplIG9mIDEw
NDAgYnl0ZXMgaW4gZnVuY3Rpb24gJ2V4eW5vc19wcG11X3Byb2JlJyBbLVdlcnJvciwtV2ZyYW1l
LWxhcmdlci10aGFuPV0KPiAKPiBUaGVyZSBpcyBubyByZWFsIG5lZWQgZm9yIHRoZSBkZXZpY2Ug
c3RydWN0dXJlLCBvbmx5IHRoZSBzdHJpbmcgaW5zaWRlCj4gaXQsIHNvIGFkZCBhbiBpbnRlcm5h
bCBoZWxwZXIgZnVuY3Rpb24gdGhhdCBzaW1wbHkgdGFrZXMgdGhlIHN0cmluZwo+IGFzIGl0cyBh
cmd1bWVudCBhbmQgcmVtb3ZlIHRoZSBkZXZpY2Ugc3RydWN0dXJlLgo+IAo+IEZpeGVzOiAxZGQ2
MmM2NmQzNDUgKCJQTSAvIGRldmZyZXE6IGV2ZW50czogZXh0ZW5kIGV2ZW50cyBieSB0eXBlIG9m
IGNvdW50ZWQgZGF0YSIpCj4gU2lnbmVkLW9mZi1ieTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5k
Yi5kZT4KPiAtLS0KPiAgZHJpdmVycy9kZXZmcmVxL2V2ZW50L2V4eW5vcy1wcG11LmMgfCAxMyAr
KysrKysrKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDUgZGVsZXRp
b25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9ldmVudC9leHlub3MtcHBt
dS5jIGIvZHJpdmVycy9kZXZmcmVxL2V2ZW50L2V4eW5vcy1wcG11LmMKPiBpbmRleCA4N2I0MjA1
NWU2YmMuLjMwMmU0NjY1NDlkMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvZXZlbnQv
ZXh5bm9zLXBwbXUuYwo+ICsrKyBiL2RyaXZlcnMvZGV2ZnJlcS9ldmVudC9leHlub3MtcHBtdS5j
Cj4gQEAgLTEwMSwxNyArMTAxLDIyIEBAIHN0YXRpYyBzdHJ1Y3QgX19leHlub3NfcHBtdV9ldmVu
dHMgewo+ICAJUFBNVV9FVkVOVChkbWMxXzEpLAo+ICB9Owo+ICAKPiAtc3RhdGljIGludCBleHlu
b3NfcHBtdV9maW5kX3BwbXVfaWQoc3RydWN0IGRldmZyZXFfZXZlbnRfZGV2ICplZGV2KQo+ICtz
dGF0aWMgaW50IF9fZXh5bm9zX3BwbXVfZmluZF9wcG11X2lkKGNvbnN0IGNoYXIgKmVkZXZfbmFt
ZSkKPiAgewo+ICAJaW50IGk7Cj4gIAo+ICAJZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUocHBt
dV9ldmVudHMpOyBpKyspCj4gLQkJaWYgKCFzdHJjbXAoZWRldi0+ZGVzYy0+bmFtZSwgcHBtdV9l
dmVudHNbaV0ubmFtZSkpCj4gKwkJaWYgKCFzdHJjbXAoZWRldl9uYW1lLCBwcG11X2V2ZW50c1tp
XS5uYW1lKSkKPiAgCQkJcmV0dXJuIHBwbXVfZXZlbnRzW2ldLmlkOwo+ICAKPiAgCXJldHVybiAt
RUlOVkFMOwo+ICB9Cj4gIAo+ICtzdGF0aWMgaW50IGV4eW5vc19wcG11X2ZpbmRfcHBtdV9pZChz
dHJ1Y3QgZGV2ZnJlcV9ldmVudF9kZXYgKmVkZXYpCj4gK3sKPiArCXJldHVybiBfX2V4eW5vc19w
cG11X2ZpbmRfcHBtdV9pZChlZGV2LT5kZXNjLT5uYW1lKTsKPiArfQo+ICsKPiAgLyoKPiAgICog
VGhlIGRldmZyZXEtZXZlbnQgb3BzIHN0cnVjdHVyZSBmb3IgUFBNVSB2MS4xCj4gICAqLwo+IEBA
IC01NTYsMTMgKzU2MSwxMSBAQCBzdGF0aWMgaW50IG9mX2dldF9kZXZmcmVxX2V2ZW50cyhzdHJ1
Y3QgZGV2aWNlX25vZGUgKm5wLAo+ICAJCQkgKiB1c2UgZGVmYXVsdCBpZiBub3QuCj4gIAkJCSAq
Lwo+ICAJCQlpZiAoaW5mby0+cHBtdV90eXBlID09IEVYWU5PU19UWVBFX1BQTVVfVjIpIHsKPiAt
CQkJCXN0cnVjdCBkZXZmcmVxX2V2ZW50X2RldiBlZGV2Owo+ICAJCQkJaW50IGlkOwo+ICAJCQkJ
LyogTm90IGFsbCByZWdpc3RlcnMgdGFrZSB0aGUgc2FtZSB2YWx1ZSBmb3IKPiAgCQkJCSAqIHJl
YWQrd3JpdGUgZGF0YSBjb3VudC4KPiAgCQkJCSAqLwo+IC0JCQkJZWRldi5kZXNjID0gJmRlc2Nb
al07Cj4gLQkJCQlpZCA9IGV4eW5vc19wcG11X2ZpbmRfcHBtdV9pZCgmZWRldik7Cj4gKwkJCQlp
ZCA9IF9fZXh5bm9zX3BwbXVfZmluZF9wcG11X2lkKGRlc2MtPm5hbWUpOwoKSSBnb3QgdGhhdCB0
aGUgb3JpZ2luYWwgZXh5bm9zX3BwbXVfZmluZF9wcG11X2lkKCkgZnVuY3Rpb24KaGFzIHRoZSBi
dWcuIElmICdldmVudHMnIG5vZGUgY29udGFpbnMgdGhlIG9uZSBtb3JlIGV2ZW50cywKaXQgd2ls
bCBiZSBmYWlsZWQuIEJlY2F1c2UgJ2V2ZW50cycgbm9kZSBvbmx5IGNvbnRhaW5lZAp0aGUgb25s
eSBvbmUgZXZlbnQgb24gZGV2aWNlLXRyZWUgbm9kZSBvbiByZWFsIHVzZS1jYXNlLAp0aGUgcHJv
YmxlbSBoYWQgbm90IGhhcHBlbmVkLgoKJ2Rlc2MnIGluZGljYXRlcyB0aGUgYXJyYXkuIFNvLCBp
bnN0ZWFkIG9mIGRlc2MtPm5hbWUsCmhhdmUgdG8gdXNlICdkZXNjW2pdLm5hbWUgY29ycmVjdGx5
LiAKCkFuZCBJJ2xsIGZpeCB0aGUgZnVuZGFtZW50YWwgYnVnIG9uIHNlcGFyYXRlIHBhdGNoLgoK
PiAgCj4gIAkJCQlzd2l0Y2ggKGlkKSB7Cj4gIAkJCQljYXNlIFBQTVVfUE1OQ05UMDoKPiAKCgot
LSAKQmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
