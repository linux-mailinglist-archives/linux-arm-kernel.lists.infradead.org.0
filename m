Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F591BD61E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 03:33:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vyS+Hrl/LPmfuI6CKqk2+lq+MQc729jDxhELLkMx3+4=; b=Sn51sbFNnp2IsH
	IUa913zcYny6L5pf+jHXUEWqBWqcFKO00/ZKLVYn8isF2RBpaw+JDMvoij77eO9e4BMb0heTftWAr
	WQOgGjSthkfQwS+ofe7cEdGQpqFuRmmS31HRR1UigUeH1odYeBUpBnq5BYtF0oWYeeoC8QQt5ttSu
	n4e117GziD8Z+SK4uwPpa3O5WvkwwpnG1D7GI+2o8vRikIKUHm2XMMc5SVvxUyZYb7u2w2UW86zyo
	1+wxl3HkB8RR2/UDlsqWTbwlig/PZGqHjpzqngtkMz50UBZmRKzEN+7+QDsJXRyfXj0bOFb4oZ20N
	wkaZcq+yoviivlvyeaSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCwAy-0003Ox-M6; Wed, 25 Sep 2019 01:33:04 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCwAk-0003OE-2s
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 01:32:52 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190925013242epoutp02d61612c5f4a8ba383934315d51327cc2~HimVSB1sL1903519035epoutp02J
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 01:32:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190925013242epoutp02d61612c5f4a8ba383934315d51327cc2~HimVSB1sL1903519035epoutp02J
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569375162;
 bh=ur4DoEMusld0e9RjxdZjAgtxIbRb4ZV3adi0CPu8o78=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=jNkM2l/8RezcWOY4t8FVtTW76MdDxMZzhrBzPzKXlDsuqsNvjenrG55oaKw5BTVzc
 TbXCEUl9bJqD1GLWuEDZBHF/JQVDkWQVRVu2nuzyqZSCdjscGjXHN2GvM5ukJoIk0U
 /xhuO1cH41xrcgqrMeFpYdbuVL5s4Ppua2Z5yFTI=
Received: from epsnrtp5.localdomain (unknown [182.195.42.166]) by
 epcas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190925013242epcas1p1b2564d68f09c72e5822bc41e4cd368e0~HimUxkm--1303813038epcas1p1G;
 Wed, 25 Sep 2019 01:32:42 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.158]) by
 epsnrtp5.localdomain (Postfix) with ESMTP id 46dLCX05k9zMqYkb; Wed, 25 Sep
 2019 01:32:40 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 96.71.04085.7B3CA8D5; Wed, 25 Sep 2019 10:32:39 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190925013239epcas1p2503b3f3fdeca392a3ba340c5d0f15e87~HimSQFPpm0836508365epcas1p2V;
 Wed, 25 Sep 2019 01:32:39 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190925013239epsmtrp1c3e72e1b3297766161491705d68965f5~HimSPEQUJ2356223562epsmtrp1a;
 Wed, 25 Sep 2019 01:32:39 +0000 (GMT)
X-AuditID: b6c32a37-e19ff70000000ff5-fa-5d8ac3b7c359
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 1A.85.04081.7B3CA8D5; Wed, 25 Sep 2019 10:32:39 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190925013239epsmtip25c88accb48258e2217fb4bfa6af2f6e9~HimR8Fif11932219322epsmtip2W;
 Wed, 25 Sep 2019 01:32:39 +0000 (GMT)
Subject: Re: [PATCH v8 4/6] PM / devfreq: Introduce get_freq_range helper
To: Leonard Crestez <leonard.crestez@nxp.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <fe6845b9-4e20-3dad-0178-97b216e858e7@samsung.com>
Date: Wed, 25 Sep 2019 10:37:03 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <674fe91065034083fd7c8c1810305cd01551bb80.1569319738.git.leonard.crestez@nxp.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrBJsWRmVeSWpSXmKPExsWy7bCmvu72w12xBgd+WFkcOraV3eLr6VOM
 FssuHWW0mL53E5vF+fMb2C3ONr1ht7jVIGOx4u5HVotNj6+xWnT9Wsls8bn3CKPF5w2PGS1u
 N65gs1h97iCbRdehv2wWG796OAh4vL/Ryu4xu+Eii8eCTaUem1Z1snncubaHzWPzknqPje92
 MHkcfLeHyaNvyypGj8+b5AK4orJtMlITU1KLFFLzkvNTMvPSbZW8g+Od403NDAx1DS0tzJUU
 8hJzU22VXHwCdN0yc4AeUVIoS8wpBQoFJBYXK+nb2RTll5akKmTkF5fYKqUWpOQUWBboFSfm
 Fpfmpesl5+daGRoYGJkCFSZkZ7yc/ZyxYIJ1xfyLS1kbGFfodTFyckgImEh82PiQpYuRi0NI
 YAejxNfOfnYI5xOjxPT5j5khnG+MEp8vNTLDtBxZ2MYGkdjLKPF/YjNU1XtGiUk/jzGCVAkL
 eEpsud0LViUisJpRomXpHbAEs8ATZok96+VBbDYBLYn9L26wgdj8AooSV388BqvhFbCTaGhY
 zw5iswioSjxuXAxmiwpESHx6cJgVokZQ4uTMJ0CXc3BwCsRJHF6cAjFeXOLWk/lMELa8RPPW
 2WDHSQicY5f4eL2FBeIFF4lLR6YwQtjCEq+Ob2GHsKUkXva3QdnVEitPHmGDaO5glNiy/wIr
 RMJYYv/SyUwgi5kFNCXW79KHCCtK7Pw9F+pHPol3X3tYQUokBHglOtqEIEqUJS4/uMsEYUtK
 LG7vZJvAqDQLyTezkLwwC8kLsxCWLWBkWcUollpQnJueWmxYYIwc3ZsYwalcy3wH44ZzPocY
 BTgYlXh4HVi7YoVYE8uKK3MPMUpwMCuJ8M6SAQrxpiRWVqUW5ccXleakFh9iNAUG9kRmKdHk
 fGCeySuJNzQ1MjY2tjAxNDM1NFQS5/VIb4gVEkhPLEnNTk0tSC2C6WPi4JRqYORKk+3ObLP6
 snKa+ZzjOku+GF5/w543+fwVgTorB1+H8Pqdit9ezbtiyTyvbOob/yW200pCdk+9ePvB+v3b
 Q6xEFsgV9AoznZ/2lnvGJu/5egFil/T+7Yly9vq2Ks353O2ZW2+tkt4sJnBppqv8i8m2+cJ3
 Sq9PkDF3Oq+VN8/d0pDdjWWF8CclluKMREMt5qLiRAAjIgrw+wMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrAIsWRmVeSWpSXmKPExsWy7bCSvO72w12xBiv/y1scOraV3eLr6VOM
 FssuHWW0mL53E5vF+fMb2C3ONr1ht7jVIGOx4u5HVotNj6+xWnT9Wsls8bn3CKPF5w2PGS1u
 N65gs1h97iCbRdehv2wWG796OAh4vL/Ryu4xu+Eii8eCTaUem1Z1snncubaHzWPzknqPje92
 MHkcfLeHyaNvyypGj8+b5AK4orhsUlJzMstSi/TtErgyXs5+zlgwwbpi/sWlrA2MK/S6GDk5
 JARMJI4sbGMDsYUEdjNK/PzjDRGXlJh28ShzFyMHkC0scfhwcRcjF1DJW0aJHyf+gdULC3hK
 bLndC2aLCKxllJhz3gHEZhZ4xixxYlcaRMMjRonF09ezgiTYBLQk9r+4AdbAL6AocfXHY0YQ
 m1fATqKhYT07iM0ioCrxuHExmC0qECFxeMcsqBpBiZMzn7CAHMQpECdxeHEKxC51iT/zLjFD
 2OISt57MZ4Kw5SWat85mnsAoPAtJ9ywkLbOQtMxC0rKAkWUVo2RqQXFuem6xYYFhXmq5XnFi
 bnFpXrpecn7uJkZwPGtp7mC8vCT+EKMAB6MSD68Da1esEGtiWXFl7iFGCQ5mJRHeWTJAId6U
 xMqq1KL8+KLSnNTiQ4zSHCxK4rxP845FCgmkJ5akZqemFqQWwWSZODilGhh5N0bP6D/5+4v5
 6WnJnzZd3BCiIl/28N31yogzJdd606R3b7K5zahg2//n1H7RwldM7jUTvx+cXvPIZ6K9zJI5
 i5p8lDNjczYf/JyqNz1RooFlkuWq5wc0v1UL3Tla5HTTelHzV6l3EQzy52/Pnsia1rnT+PgL
 10qmTX7iKpfjS46fzxZbw1mgxFKckWioxVxUnAgA8ToSFOMCAAA=
X-CMS-MailID: 20190925013239epcas1p2503b3f3fdeca392a3ba340c5d0f15e87
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190924101141epcas4p357c10af190e97f1c77098cd66cb313ab
References: <cover.1569319738.git.leonard.crestez@nxp.com>
 <CGME20190924101141epcas4p357c10af190e97f1c77098cd66cb313ab@epcas4p3.samsung.com>
 <674fe91065034083fd7c8c1810305cd01551bb80.1569319738.git.leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_183250_464670_A991273A 
X-CRM114-Status: GOOD (  28.90  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkuIDkuIDI0LiDsmKTtm4QgNzoxMSwgTGVvbmFyZCBDcmVzdGV6IHdyb3RlOgo+IE1vdmlu
ZyBoYW5kbGluZyBvZiBtaW4vbWF4IGZyZXEgdG8gYSBzaW5nbGUgZnVuY3Rpb24gYW5kIGNhbGwg
aXQgZnJvbQo+IHVwZGF0ZV9kZXZmcmVxIGFuZCBmb3IgcHJpbnRpbmcgbWluL21heCBmcmVxIHZh
bHVlcyBpbiBzeXNmcy4KPiAKPiBUaGlzIGNoYW5nZXMgdGhlIGJlaGF2aW9yIG9mIG91dC1vZi1y
YW5nZSBtaW5fZnJlcS9tYXhfZnJlcTogY2xhbXBpbmcKPiBpcyBub3cgZG9uZSBhdCBldmFsdWF0
aW9uIHRpbWUuIFRoaXMgbWVhbnMgdGhhdCBpZiBhbiBvdXQtb2YtcmFuZ2UKPiBjb25zdHJhaW50
IGlzIGltcG9zZWQgYnkgc3lzZnMgYW5kIGl0IGxhdGVyIGJlY29tZXMgdmFsaWQgdGhlbiBpdCB3
aWxsCj4gYmUgZW5mb3JjZWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogTGVvbmFyZCBDcmVzdGV6IDxs
ZW9uYXJkLmNyZXN0ZXpAbnhwLmNvbT4KPiBSZXZpZXdlZC1ieTogTWF0dGhpYXMgS2FlaGxja2Ug
PG1rYUBjaHJvbWl1bS5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvZGV2ZnJlcS9kZXZmcmVxLmMgfCAx
MTIgKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDY0IGluc2VydGlvbnMoKyksIDQ4IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jIGIvZHJpdmVycy9kZXZmcmVxL2RldmZyZXEuYwo+IGlu
ZGV4IDRhODc4YmFhODA5ZS4uZWVlNDAzZTcwYzg0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZGV2
ZnJlcS9kZXZmcmVxLmMKPiArKysgYi9kcml2ZXJzL2RldmZyZXEvZGV2ZnJlcS5jCj4gQEAgLTk2
LDEwICs5Niw1NCBAQCBzdGF0aWMgdW5zaWduZWQgbG9uZyBmaW5kX2F2YWlsYWJsZV9tYXhfZnJl
cShzdHJ1Y3QgZGV2ZnJlcSAqZGV2ZnJlcSkKPiAgCQlkZXZfcG1fb3BwX3B1dChvcHApOwo+ICAK
PiAgCXJldHVybiBtYXhfZnJlcTsKPiAgfQo+ICAKPiArLyoqCj4gKyAqIGdldF9mcmVxX3Jhbmdl
KCkgLSBHZXQgdGhlIGN1cnJlbnQgZnJlcSByYW5nZQo+ICsgKiBAZGV2ZnJlcToJdGhlIGRldmZy
ZXEgaW5zdGFuY2UKPiArICogQG1pbl9mcmVxOgl0aGUgbWluIGZyZXF1ZW5jeQo+ICsgKiBAbWF4
X2ZyZXE6CXRoZSBtYXggZnJlcXVlbmN5Cj4gKyAqCj4gKyAqIFRoaXMgdGFrZXMgaW50byBjb25z
aWRlcmF0aW9uIGFsbCBjb25zdHJhaW50cy4KPiArICovCj4gK3N0YXRpYyB2b2lkIGdldF9mcmVx
X3JhbmdlKHN0cnVjdCBkZXZmcmVxICpkZXZmcmVxLAo+ICsJCQkgICB1bnNpZ25lZCBsb25nICpt
aW5fZnJlcSwKPiArCQkJICAgdW5zaWduZWQgbG9uZyAqbWF4X2ZyZXEpCj4gK3sKPiArCXVuc2ln
bmVkIGxvbmcgKmZyZXFfdGFibGUgPSBkZXZmcmVxLT5wcm9maWxlLT5mcmVxX3RhYmxlOwo+ICsK
PiArCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmRldmZyZXEtPmxvY2spOwo+ICsKPiArCS8qCj4gKwkg
KiBJbml0IG1pbi9tYXggZnJlcXVlbmN5IGZyb20gZnJlcSB0YWJsZS4KCkluaXQgLT4gSW5pdGlh
bGl6ZQptaW4vbWF4IC0+IG1pbmltdW0vbWF4aW11bSAKCj4gKwkgKiBEcml2ZXJzIGNhbiBpbml0
aWFsaXplIHRoaXMgaW4gZWl0aGVyIGFzY2VuZGluZyBvciBkZXNjZW5kaW5nIG9yZGVyCgpEcml2
ZXJzIC0+IGRldmZyZXEgZHJpdmVycwoKPiArCSAqIGFuZCBkZXZmcmVxIGNvcmUgc3VwcG9ydHMg
Ym90aC4KPiArCSAqLwoKCkluIHJlc3VsdCwgSSBwcmVmZXIgdG8gY2hhbmdlIHRoZSBjb21tZW50
cyBhcyBmb2xsb3dpbmc6IAoJLyoKCSAqIEluaXRpYWxpemUgdGhlIG1pbmltdW0vbWF4aW11bSBm
cmVxdWVuY3kgZnJvbSBmcmVxX3RhYmxlLgogCSAqIFRoZSBkZXZmcmVxIGRyaXZlcnMgY2FuIGlu
aXRpYWxpemUgZnJlcV90YWJsZSBpbiBlaXRoZXIKCSAqIGFzY2VuZGluZyBvciBkZXNjZW5kaW5n
IG9yZGVyIGFuZCBkZXZmcmVxIGNvcmUgc3VwcG9ydHMgYm90aC4KCSAqLwoKPiArCWlmIChmcmVx
X3RhYmxlWzBdIDwgZnJlcV90YWJsZVtkZXZmcmVxLT5wcm9maWxlLT5tYXhfc3RhdGUgLSAxXSkg
ewo+ICsJCSptaW5fZnJlcSA9IGZyZXFfdGFibGVbMF07Cj4gKwkJKm1heF9mcmVxID0gZnJlcV90
YWJsZVtkZXZmcmVxLT5wcm9maWxlLT5tYXhfc3RhdGUgLSAxXTsKPiArCX0gZWxzZSB7Cj4gKwkJ
Km1pbl9mcmVxID0gZnJlcV90YWJsZVtkZXZmcmVxLT5wcm9maWxlLT5tYXhfc3RhdGUgLSAxXTsK
PiArCQkqbWF4X2ZyZXEgPSBmcmVxX3RhYmxlWzBdOwo+ICsJfQo+ICsKPiArCS8qIGNvbnN0cmFp
bnRzIGZyb20gc3lzZnMgKi8KCidjb25zdHJhaW50cycgLT4gQ29uc3RyYWludCBiZWNhdXNlIGZp
cnN0IHZlcmIgaGF2ZSB0byBiZSB1c2VkCmFzIHRoZSBzaWd1bGFyIHZlcmJzLiBBbHNvLCBJIHRo
aW5rIHRoYXQgaGF2ZSB0byBlbmhhbmNlIHRoZSBjb21tZW50cwpJIHByZWZlciB0byB1c2UgZm9s
bG93aW5nIGNvbW1lbnRzOiAKCgkgLyogQ29uc3RyYWludCBtaW5pbXVtL21heGltdW0gZnJlcXVl
bmN5IGZyb20gdXNlciBpbnB1dCB2aWEgc3lzZnMgKi8KCgoKPiArCSptaW5fZnJlcSA9IG1heCgq
bWluX2ZyZXEsIGRldmZyZXEtPm1pbl9mcmVxKTsKPiArCSptYXhfZnJlcSA9IG1pbigqbWF4X2Zy
ZXEsIGRldmZyZXEtPm1heF9mcmVxKTsKPiArCj4gKwkvKiBjb25zdHJhaW50cyBmcm9tIE9QUCBp
bnRlcmZhY2UgKi8KCmRpdHRvLiBJIHByZWZlciB0byB1c2UgZm9sbG93aW5nIGNvbW1lbnRzOiAK
CgkvKiBDb25zdHJhaW50IG1pbmltdW0vbWF4aW11bSBmcmVxdWVuY3kgZnJvbSBPUFAgaW50ZXJm
YWNlICovCgoKPiArCSptaW5fZnJlcSA9IG1heCgqbWluX2ZyZXEsIGRldmZyZXEtPnNjYWxpbmdf
bWluX2ZyZXEpOwo+ICsJLyogc2NhbGluZ19tYXhfZnJlcSBjYW4gYmUgemVybyBvbiBlcnJvciAq
LwoKUGxlYXNlIHJlbW92ZSBpdC4KCj4gKwlpZiAoZGV2ZnJlcS0+c2NhbGluZ19tYXhfZnJlcSkK
CkFzIEkga25ldywgZGV2ZnJlcS0+c2NhbGluZ19tYXhfZnJlcSBpcyBuZXZlciB6ZXJvLgpTbywg
aXQgaXMgYWx3YXlzIHRydWUuIFRoaXMgaWYgc3RhdGVtZW50IGlzIG5lZWRlZC4KCj4gKwkJKm1h
eF9mcmVxID0gbWluKCptYXhfZnJlcSwgZGV2ZnJlcS0+c2NhbGluZ19tYXhfZnJlcSk7Cj4gKwo+
ICsJLyogbWF4X2ZyZXEgdGFrZXMgcHJlY2VkZW5jZSBvdmVyIG1pbl9mcmVxICovCgpBcyBJIHNh
aWQsIGFsbW9zdCBwZW9wbGUga25vdyB0aGF0IG1pbl9mcmVxIGhhdmUgYmUgdW5kZXIgdGhhbiBt
YXhfZnJlcS4KUGxlYXNlIHJlbW92ZSBpdC4gQW5kIHVudGlsIGZpbmlzaGluZyB0aGUgZGlzY3Vz
c2lvbiBvbiBtYWlsaW5nIGxpc3QsCnBsZWFzZSBkb24ndCBzZW5kIHRoZSBuZXh0IHZlcnNpb24u
IElmIHlvdSBqdXN0IHJlcGxpZWQgZnJvbSBteSBjb21tZW50CmFuZCB0aGVuIHdhaXQgbXkgbmV4
dCBjb21tZW50LCB3ZSBjYW4gc2F2ZSB0aGUgdGltZSB3aXRob3V0IHJlcGx5aW5nCnRoZSByZXBl
dGl0aXZlIGFuZCBzYW1lIGNvbW1lbnQgZm9yIHNhbWUgcG9pbnQuCgo+ICsJaWYgKCptaW5fZnJl
cSA+ICptYXhfZnJlcSkKPiArCQkqbWluX2ZyZXEgPSAqbWF4X2ZyZXE7Cj4gK30KPiArCj4gIC8q
Kgo+ICAgKiBkZXZmcmVxX2dldF9mcmVxX2xldmVsKCkgLSBMb29rdXAgZnJlcV90YWJsZSBmb3Ig
dGhlIGZyZXF1ZW5jeQo+ICAgKiBAZGV2ZnJlcToJdGhlIGRldmZyZXEgaW5zdGFuY2UKPiAgICog
QGZyZXE6CXRoZSB0YXJnZXQgZnJlcXVlbmN5Cj4gICAqLwo+IEBAIC0zNDksMjAgKzM5MywxMSBA
QCBpbnQgdXBkYXRlX2RldmZyZXEoc3RydWN0IGRldmZyZXEgKmRldmZyZXEpCj4gIAo+ICAJLyog
UmVldmFsdWF0ZSB0aGUgcHJvcGVyIGZyZXF1ZW5jeSAqLwo+ICAJZXJyID0gZGV2ZnJlcS0+Z292
ZXJub3ItPmdldF90YXJnZXRfZnJlcShkZXZmcmVxLCAmZnJlcSk7Cj4gIAlpZiAoZXJyKQo+ICAJ
CXJldHVybiBlcnI7Cj4gLQo+IC0JLyoKPiAtCSAqIEFkanVzdCB0aGUgZnJlcXVlbmN5IHdpdGgg
dXNlciBmcmVxLCBRb1MgYW5kIGF2YWlsYWJsZSBmcmVxLgo+IC0JICoKPiAtCSAqIExpc3QgZnJv
bSB0aGUgaGlnaGVzdCBwcmlvcml0eQo+IC0JICogbWF4X2ZyZXEKPiAtCSAqIG1pbl9mcmVxCj4g
LQkgKi8KPiAtCW1heF9mcmVxID0gbWluKGRldmZyZXEtPnNjYWxpbmdfbWF4X2ZyZXEsIGRldmZy
ZXEtPm1heF9mcmVxKTsKPiAtCW1pbl9mcmVxID0gbWF4KGRldmZyZXEtPnNjYWxpbmdfbWluX2Zy
ZXEsIGRldmZyZXEtPm1pbl9mcmVxKTsKPiArCWdldF9mcmVxX3JhbmdlKGRldmZyZXEsICZtaW5f
ZnJlcSwgJm1heF9mcmVxKTsKPiAgCj4gIAlpZiAoZnJlcSA8IG1pbl9mcmVxKSB7Cj4gIAkJZnJl
cSA9IG1pbl9mcmVxOwo+ICAJCWZsYWdzICY9IH5ERVZGUkVRX0ZMQUdfTEVBU1RfVVBQRVJfQk9V
TkQ7IC8qIFVzZSBHTEIgKi8KPiAgCX0KPiBAQCAtMTI5OCw0MCArMTMzMywyOCBAQCBzdGF0aWMg
c3NpemVfdCBtaW5fZnJlcV9zdG9yZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2Vf
YXR0cmlidXRlICphdHRyLAo+ICAJcmV0ID0gc3NjYW5mKGJ1ZiwgIiVsdSIsICZ2YWx1ZSk7Cj4g
IAlpZiAocmV0ICE9IDEpCj4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4gIAo+ICAJbXV0ZXhfbG9jaygm
ZGYtPmxvY2spOwo+IC0KPiAtCWlmICh2YWx1ZSkgewo+IC0JCWlmICh2YWx1ZSA+IGRmLT5tYXhf
ZnJlcSkgewo+IC0JCQlyZXQgPSAtRUlOVkFMOwo+IC0JCQlnb3RvIHVubG9jazsKPiAtCQl9Cj4g
LQl9IGVsc2Ugewo+IC0JCXVuc2lnbmVkIGxvbmcgKmZyZXFfdGFibGUgPSBkZi0+cHJvZmlsZS0+
ZnJlcV90YWJsZTsKPiAtCj4gLQkJLyogR2V0IG1pbmltdW0gZnJlcXVlbmN5IGFjY29yZGluZyB0
byBzb3J0aW5nIG9yZGVyICovCj4gLQkJaWYgKGZyZXFfdGFibGVbMF0gPCBmcmVxX3RhYmxlW2Rm
LT5wcm9maWxlLT5tYXhfc3RhdGUgLSAxXSkKPiAtCQkJdmFsdWUgPSBmcmVxX3RhYmxlWzBdOwo+
IC0JCWVsc2UKPiAtCQkJdmFsdWUgPSBmcmVxX3RhYmxlW2RmLT5wcm9maWxlLT5tYXhfc3RhdGUg
LSAxXTsKPiAtCX0KPiAtCj4gIAlkZi0+bWluX2ZyZXEgPSB2YWx1ZTsKPiAgCXVwZGF0ZV9kZXZm
cmVxKGRmKTsKPiAtCXJldCA9IGNvdW50Owo+IC11bmxvY2s6Cj4gIAltdXRleF91bmxvY2soJmRm
LT5sb2NrKTsKPiAtCXJldHVybiByZXQ7Cj4gKwo+ICsJcmV0dXJuIGNvdW50Owo+ICB9Cj4gIAo+
ICBzdGF0aWMgc3NpemVfdCBtaW5fZnJlcV9zaG93KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0
IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIsCj4gIAkJCSAgICAgY2hhciAqYnVmKQo+ICB7Cj4gIAlz
dHJ1Y3QgZGV2ZnJlcSAqZGYgPSB0b19kZXZmcmVxKGRldik7Cj4gKwl1bnNpZ25lZCBsb25nIG1p
bl9mcmVxLCBtYXhfZnJlcTsKPiArCj4gKwltdXRleF9sb2NrKCZkZi0+bG9jayk7Cj4gKwlnZXRf
ZnJlcV9yYW5nZShkZiwgJm1pbl9mcmVxLCAmbWF4X2ZyZXEpOwo+ICsJbXV0ZXhfdW5sb2NrKCZk
Zi0+bG9jayk7Cj4gIAo+IC0JcmV0dXJuIHNwcmludGYoYnVmLCAiJWx1XG4iLCBtYXgoZGYtPnNj
YWxpbmdfbWluX2ZyZXEsIGRmLT5taW5fZnJlcSkpOwo+ICsJcmV0dXJuIHNwcmludGYoYnVmLCAi
JWx1XG4iLCBtaW5fZnJlcSk7Cj4gIH0KPiAgCj4gIHN0YXRpYyBzc2l6ZV90IG1heF9mcmVxX3N0
b3JlKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIsCj4g
IAkJCSAgICAgIGNvbnN0IGNoYXIgKmJ1Ziwgc2l6ZV90IGNvdW50KQo+ICB7Cj4gQEAgLTEzNDMs
NDAgKzEzNjYsMzMgQEAgc3RhdGljIHNzaXplX3QgbWF4X2ZyZXFfc3RvcmUoc3RydWN0IGRldmlj
ZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSAqYXR0ciwKPiAgCWlmIChyZXQgIT0gMSkK
PiAgCQlyZXR1cm4gLUVJTlZBTDsKPiAgCj4gIAltdXRleF9sb2NrKCZkZi0+bG9jayk7Cj4gIAo+
IC0JaWYgKHZhbHVlKSB7Cj4gLQkJaWYgKHZhbHVlIDwgZGYtPm1pbl9mcmVxKSB7Cj4gLQkJCXJl
dCA9IC1FSU5WQUw7Cj4gLQkJCWdvdG8gdW5sb2NrOwo+IC0JCX0KPiAtCX0gZWxzZSB7Cj4gLQkJ
dW5zaWduZWQgbG9uZyAqZnJlcV90YWJsZSA9IGRmLT5wcm9maWxlLT5mcmVxX3RhYmxlOwo+IC0K
PiAtCQkvKiBHZXQgbWF4aW11bSBmcmVxdWVuY3kgYWNjb3JkaW5nIHRvIHNvcnRpbmcgb3JkZXIg
Ki8KPiAtCQlpZiAoZnJlcV90YWJsZVswXSA8IGZyZXFfdGFibGVbZGYtPnByb2ZpbGUtPm1heF9z
dGF0ZSAtIDFdKQo+IC0JCQl2YWx1ZSA9IGZyZXFfdGFibGVbZGYtPnByb2ZpbGUtPm1heF9zdGF0
ZSAtIDFdOwo+IC0JCWVsc2UKPiAtCQkJdmFsdWUgPSBmcmVxX3RhYmxlWzBdOwo+IC0JfQo+ICsJ
LyogSW50ZXJwcmV0IHplcm8gYXMgImRvbid0IGNhcmUiICovCgpQbGVhc2UgcmVtb3ZlIGl0LiBB
bHNvLCB0aGUgZGV0YWlsZWQgY29tbWVudCBmb3IgdXNlciBoYXZlIHRvIGFkZAp0aGUgZG9jdW1l
bnRhdGlvbiBmaWxlLiAKCj4gKwlpZiAoIXZhbHVlKQo+ICsJCXZhbHVlID0gVUxPTkdfTUFYOwo+
ICAKPiAgCWRmLT5tYXhfZnJlcSA9IHZhbHVlOwo+ICAJdXBkYXRlX2RldmZyZXEoZGYpOwo+IC0J
cmV0ID0gY291bnQ7Cj4gLXVubG9jazoKPiAgCW11dGV4X3VubG9jaygmZGYtPmxvY2spOwo+IC0J
cmV0dXJuIHJldDsKPiArCj4gKwlyZXR1cm4gY291bnQ7Cj4gIH0KPiAgc3RhdGljIERFVklDRV9B
VFRSX1JXKG1pbl9mcmVxKTsKPiAgCj4gIHN0YXRpYyBzc2l6ZV90IG1heF9mcmVxX3Nob3coc3Ry
dWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSAqYXR0ciwKPiAgCQkJICAg
ICBjaGFyICpidWYpCj4gIHsKPiAgCXN0cnVjdCBkZXZmcmVxICpkZiA9IHRvX2RldmZyZXEoZGV2
KTsKPiArCXVuc2lnbmVkIGxvbmcgbWluX2ZyZXEsIG1heF9mcmVxOwo+ICsKPiArCW11dGV4X2xv
Y2soJmRmLT5sb2NrKTsKPiArCWdldF9mcmVxX3JhbmdlKGRmLCAmbWluX2ZyZXEsICZtYXhfZnJl
cSk7Cj4gKwltdXRleF91bmxvY2soJmRmLT5sb2NrKTsKPiAgCj4gLQlyZXR1cm4gc3ByaW50Zihi
dWYsICIlbHVcbiIsIG1pbihkZi0+c2NhbGluZ19tYXhfZnJlcSwgZGYtPm1heF9mcmVxKSk7Cj4g
KwlyZXR1cm4gc3ByaW50ZihidWYsICIlbHVcbiIsIG1heF9mcmVxKTsKPiAgfQo+ICBzdGF0aWMg
REVWSUNFX0FUVFJfUlcobWF4X2ZyZXEpOwo+ICAKPiAgc3RhdGljIHNzaXplX3QgYXZhaWxhYmxl
X2ZyZXF1ZW5jaWVzX3Nob3coc3RydWN0IGRldmljZSAqZCwKPiAgCQkJCQkgIHN0cnVjdCBkZXZp
Y2VfYXR0cmlidXRlICphdHRyLAo+IAoKCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQpT
YW1zdW5nIEVsZWN0cm9uaWNzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
