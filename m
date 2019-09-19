Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46126B7EA3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 17:56:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XQo9qOIP6DXuLZBiUsvmVPdjoi3WgAIFzIXMpv+ZnCI=; b=JIK5c/6HQXM6oY
	vdRrH7RMUmmCR13DYSp1jAAbFZcm3rutU4vo72Wiws0GxTCIqpss4mDoWieIQN2Cv3TOO4aJ83/Hf
	hBKRVQr0e8wr7obV6X/nX+7Lvd7E1m0BM0O9vsB5+JwkD65QXhIJ4106nNVRK3+DLpXkqk9QtYP0x
	GQ+jjDgrBqK28ovGq+BqWd38FfHDwvk2BerDbUGlP78iPs+QBFOuU0FEKqR9ZVKxQyHdlNS3n4JRp
	Cpy6YmcA8n+reTJK+PvNc1vWdaiPyAU8ud+PDJLf6r53ahZpm9BTAV0Fo1UV8kpizBKOC7++Gw7M8
	NrPsGA8r/3cbYzM+3r/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAynZ-0000Tm-9B; Thu, 19 Sep 2019 15:56:49 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAyn8-0000TB-R2
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 15:56:24 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8JFsSrQ133684;
 Thu, 19 Sep 2019 15:55:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2019-08-05; bh=sriX7NN5BqHD0GlF4Xbuu366jfCsxHPqzJ2QnT7Ovus=;
 b=S6pbH9hTSxhfomU3TV/MckQLOUPdlCJwvNRI6Fu6RgTl7g09tUKygAhAaFdzzISp/bHd
 Z7+lAivQO8/FFGqtqpSYiJA6Pf740MYUvPY/EesxutP/gf0zWlbfjjbsjhYTTxckMKLA
 ZW+G6ZXPnLI9RBKlBF0Jvl4keSGN9RyFX1VjQsBR3q8p2oshbIfooj58706ydhuuEVkm
 QEQnDzimw+QAHbno70KOmXkMbTTGJPBTnZA4Zyjvv1p9qhwGSNGw2NQvEaDumfCUSAXj
 7VHRdev+w9in4qmvzblANfgNF8tOJs8uAde4zc8O3o+6L+o9liPcNOoqGfbJHg8H2vyI VQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2v3vb4n06e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 19 Sep 2019 15:55:31 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8JFsCYG126243;
 Thu, 19 Sep 2019 15:55:30 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2v3vbaqfqu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 19 Sep 2019 15:55:30 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x8JFtL16021238;
 Thu, 19 Sep 2019 15:55:21 GMT
Received: from [10.11.111.157] (/10.11.111.157)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 19 Sep 2019 08:55:20 -0700
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
Subject: Re: [PATCH v4 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
From: Alex Kogan <alex.kogan@oracle.com>
In-Reply-To: <3ae2b6a2-ffe6-2ca1-e5bf-2292db50e26f@redhat.com>
Date: Thu, 19 Sep 2019 11:55:21 -0400
Message-Id: <87B87982-670F-4F12-9EE0-DC89A059FAEC@oracle.com>
References: <20190906142541.34061-1-alex.kogan@oracle.com>
 <20190906142541.34061-4-alex.kogan@oracle.com>
 <3ae2b6a2-ffe6-2ca1-e5bf-2292db50e26f@redhat.com>
To: Waiman Long <longman@redhat.com>
X-Mailer: Apple Mail (2.3259)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9385
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909190145
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9385
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1909190145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_085622_966708_0EF2E3AB 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com, arnd@arndb.de,
 peterz@infradead.org, dave.dice@oracle.com, jglauber@marvell.com,
 x86@kernel.org, will.deacon@arm.com, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, rahul.x.yadav@oracle.com, mingo@redhat.com,
 bp@alien8.de, hpa@zytor.com, steven.sistare@oracle.com, tglx@linutronix.de,
 daniel.m.jordan@oracle.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pj4gKy8qCj4+ICsgKiBjbmFfdHJ5X2ZpbmRfbmV4dCAtIHNjYW4gdGhlIG1haW4gd2FpdGluZyBx
dWV1ZSBsb29raW5nIGZvciB0aGUgZmlyc3QKPj4gKyAqIHRocmVhZCBydW5uaW5nIG9uIHRoZSBz
YW1lIE5VTUEgbm9kZSBhcyB0aGUgbG9jayBob2xkZXIuIElmIGZvdW5kIChjYWxsIGl0Cj4+ICsg
KiB0aHJlYWQgVCksIG1vdmUgYWxsIHRocmVhZHMgaW4gdGhlIG1haW4gcXVldWUgYmV0d2VlbiB0
aGUgbG9jayBob2xkZXIgYW5kCj4+ICsgKiBUIHRvIHRoZSBlbmQgb2YgdGhlIHNlY29uZGFyeSBx
dWV1ZSBhbmQgcmV0dXJuIFQ7IG90aGVyd2lzZSwgcmV0dXJuIE5VTEwuCj4+ICsgKgo+PiArICog
U2NoZW1hdGljYWxseSwgdGhpcyBtYXkgbG9vayBsaWtlIHRoZSBmb2xsb3dpbmcgKG5uIHN0YW5k
cyBmb3IgbnVtYV9ub2RlIGFuZAo+PiArICogZXQgc3RhbmRzIGZvciBlbmNvZGVkX3RhaWwpLgo+
PiArICoKPj4gKyAqICAgICB3aGVuIGNuYV90cnlfZmluZF9uZXh0KCkgaXMgY2FsbGVkICh0aGUg
c2Vjb25kYXJ5IHF1ZXVlIGlzIGVtcHR5KToKPj4gKyAqCj4+ICsgKiAgQSstLS0tLS0tLS0tLS0r
ICAgQistLS0tLS0tLSsgICBDKy0tLS0tLS0tKyAgIFQrLS0tLS0tLS0rCj4+ICsgKiAgIHxtY3M6
bmV4dCAgICB8IC0+IHxtY3M6bmV4dHwgLT4gfG1jczpuZXh0fCAtPiB8bWNzOm5leHR8IC0+IE5V
TEwKPj4gKyAqICAgfG1jczpsb2NrZWQ9MXwgICAgfGNuYTpubj0wfCAgICB8Y25hOm5uPTJ8ICAg
IHxjbmE6bm49MXwKPj4gKyAqICAgfGNuYTpubj0xICAgIHwgICAgKy0tLS0tLS0tKyAgICArLS0t
LS0tLS0rICAgICstLS0tLS0tLSsKPj4gKyAqICAgKy0tLS0tLS0tLS0tICsKPj4gKyAqCj4+ICsg
KiAgICAgd2hlbiBjbmFfdHJ5X2ZpbmRfbmV4dCgpIHJldHVybnMgKHRoZSBzZWNvbmRhcnkgcXVl
dWUgY29udGFpbnMgQiBhbmQgQyk6Cj4+ICsgKgo+PiArICogIEErLS0tLS0tLS0tLS0tLS0tLSsg
ICAgVCstLS0tLS0tLSsKPj4gKyAqICAgfG1jczpuZXh0ICAgICAgICB8IC0+ICB8bWNzOm5leHR8
IC0+IE5VTEwKPj4gKyAqICAgfG1jczpsb2NrZWQ9Qi5ldCB8IC0rICB8Y25hOm5uPTF8Cj4+ICsg
KiAgIHxjbmE6bm49MSAgICAgICAgfCAgfCAgKy0tLS0tLS0tKwo+PiArICogICArLS0tLS0tLS0t
LS0tLS0tICsgIHwKPj4gKyAqICAgICAgICAgICAgICAgICAgICAgICB8Cj4+ICsgKiAgICAgICAg
ICAgICAgICAgICAgICAgKy0+ICBCKy0tLS0tLS0tKyAgIEMrLS0tLS0tLS0rCj4+ICsgKiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfG1jczpuZXh0fCAtPiB8bWNzOm5leHR8Cj4+ICsgKiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfGNuYTpubj0wfCAgICB8Y25hOm5uPTJ8Cj4+ICsg
KiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfGNuYTp0YWlsfCAtPiArLS0tLS0tLS0rCj4+
ICsgKiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKy0tLS0tLS0tKwo+PiArICoKPj4gKyAq
IFRoZSB3b3JzdCBjYXNlIGNvbXBsZXhpdHkgb2YgdGhlIHNjYW4gaXMgTyhuKSwgd2hlcmUgbiBp
cyB0aGUgbnVtYmVyCj4+ICsgKiBvZiBjdXJyZW50IHdhaXRlcnMuIEhvd2V2ZXIsIHRoZSBmYXN0
IHBhdGgsIHdoaWNoIGlzIGV4cGVjdGVkIHRvIGJlIHRoZQo+PiArICogY29tbW9uIGNhc2UsIGlz
IE8oMSkuCj4+ICsgKi8KPj4gK3N0YXRpYyBzdHJ1Y3QgbWNzX3NwaW5sb2NrICpjbmFfdHJ5X2Zp
bmRfbmV4dChzdHJ1Y3QgbWNzX3NwaW5sb2NrICpub2RlLAo+PiArCQkJCQkgICAgICBzdHJ1Y3Qg
bWNzX3NwaW5sb2NrICpuZXh0KQo+PiArewo+PiArCXN0cnVjdCBjbmFfbm9kZSAqY24gPSAoc3Ry
dWN0IGNuYV9ub2RlICopbm9kZTsKPj4gKwlzdHJ1Y3QgY25hX25vZGUgKmNuaSA9IChzdHJ1Y3Qg
Y25hX25vZGUgKiluZXh0Owo+PiArCXN0cnVjdCBjbmFfbm9kZSAqZmlyc3QsICpsYXN0ID0gTlVM
TDsKPj4gKwlpbnQgbXlfbnVtYV9ub2RlID0gY24tPm51bWFfbm9kZTsKPj4gKwo+PiArCS8qIGZh
c3QgcGF0aDogaW1tZWRpYXRlIHN1Y2Nlc3NvciBpcyBvbiB0aGUgc2FtZSBOVU1BIG5vZGUgKi8K
Pj4gKwlpZiAoY25pLT5udW1hX25vZGUgPT0gbXlfbnVtYV9ub2RlKQo+PiArCQlyZXR1cm4gbmV4
dDsKPj4gKwo+PiArCS8qIGZpbmQgYW55IG5leHQgd2FpdGVyIG9uICdvdXInIE5VTUEgbm9kZSAq
Lwo+PiArCWZvciAoZmlyc3QgPSBjbmk7Cj4+ICsJICAgICBjbmkgJiYgY25pLT5udW1hX25vZGUg
IT0gbXlfbnVtYV9ub2RlOwo+PiArCSAgICAgbGFzdCA9IGNuaSwgY25pID0gKHN0cnVjdCBjbmFf
bm9kZSAqKVJFQURfT05DRShjbmktPm1jcy5uZXh0KSkKPj4gKwkJOwo+PiArCj4+ICsJLyogaWYg
Zm91bmQsIHNwbGljZSBhbnkgc2tpcHBlZCB3YWl0ZXJzIG9udG8gdGhlIHNlY29uZGFyeSBxdWV1
ZSAqLwo+PiArCWlmIChjbmkgJiYgbGFzdCkKPj4gKwkJY25hX3NwbGljZV90YWlsKGNuLCBmaXJz
dCwgbGFzdCk7Cj4+ICsKPj4gKwlyZXR1cm4gKHN0cnVjdCBtY3Nfc3BpbmxvY2sgKiljbmk7Cj4+
ICt9Cj4gCj4gQXQgdGhlIExpbnV4IFBsdW1iZXJzIENvbmZlcmVuY2UgbGFzdCB3ZWVrLCBXaWxs
IGhhcyByYWlzZWQgdGhlIGNvbmNlcm4KPiBhYm91dCB0aGUgbGF0ZW5jeSBvZiB0aGUgTygxKSBj
bmFfdHJ5X2ZpbmRfbmV4dCgpIG9wZXJhdGlvbiB0aGF0IHdpbGwKPiBhZGQgdG8gdGhlIGxvY2sg
aG9sZCB0aW1lLgpXaGlsZSB0aGUgd29yc3QgY2FzZSBjb21wbGV4aXR5IG9mIHRoZSBzY2FuIGlz
IE8obiksIEkgX3RoaW5rIGl0IGNhbiBiZSBwcm92ZW4KdGhhdCB0aGUgYW1vcnRpemVkIGNvbXBs
ZXhpdHkgaXMgTygxKS4gRm9yIGludHVpdGlvbiwgY29uc2lkZXIgYSB0d28tbm9kZSAKc3lzdGVt
IHdpdGggTiB0aHJlYWRzIHRvdGFsLiBJbiB0aGUgd29yc3QgY2FzZSBzY2VuYXJpbywgdGhlIHNj
YW4gd2lsbCBnbyAKb3ZlciBOLzIgdGhyZWFkcyBydW5uaW5nIG9uIGEgZGlmZmVyZW50IG5vZGUu
IElmIHRoZSBzY2FuIHVsdGltYXRlbHkg4oCcZmFpbHPigJ0KKG5vIHRocmVhZCBmcm9tIHRoZSBs
b2NrIGhvbGRlcuKAmXMgbm9kZSBpcyBmb3VuZCksIHRoZSBsb2NrIHdpbGwgYmUgcGFzc2VkCnRv
IHRoZSBmaXJzdCB0aHJlYWQgZnJvbSBhIGRpZmZlcmVudCBub2RlIGFuZCB0aGVuIGJldHdlZW4g
YWxsIHRob3NlIE4vMiB0aHJlYWRzLAp3aXRoIGEgc2NhbiBvZiBqdXN0IG9uZSBub2RlIGZvciB0
aGUgbmV4dCBOLzIgLSAxIHBhc3Nlcy4gT3RoZXJ3aXNlLCB0aG9zZSAKTi8yIHRocmVhZHMgd2ls
bCBiZSBtb3ZlZCB0byB0aGUgc2Vjb25kYXJ5IHF1ZXVlLiBPbiB0aGUgbmV4dCBsb2NrIGhhbmRv
dmVyLCAKd2UgcGFzcyB0aGUgbG9jayBlaXRoZXIgdG8gdGhlIG5leHQgdGhyZWFkIGluIHRoZSBt
YWluIHF1ZXVlIChhcyBpdCBoYXMgdG8gYmUgCmZyb20gb3VyIG5vZGUpIG9yIHRvIHRoZSBmaXJz
dCBub2RlIGluIHRoZSBzZWNvbmRhcnkgcXVldWUuIEluIGJvdGggY2FzZXMsIHdlIApzY2FuIGp1
c3Qgb25lIG5vZGUsIGFuZCBpbiB0aGUgbGF0dGVyIGNhc2UsIHdlIGhhdmUgYWdhaW4gTi8yIC0g
MSBwYXNzZXMgd2l0aCAKYSBzY2FuIG9mIGp1c3Qgb25lIG5vZGUgZWFjaC4KCj4gT25lIHdheSB0
byBoaWRlIHNvbWUgb2YgdGhlIGxhdGVuY3kgaXMgdG8gZG8KPiBhIHByZS1zY2FuIGJlZm9yZSBh
Y3F1aXJpbmcgdGhlIGxvY2suIFRoZSBDTkEgY29kZSBjb3VsZCBvdmVycmlkZSB0aGUKPiBwdl93
YWl0X2hlYWRfb3JfbG9jaygpIGZ1bmN0aW9uIHRvIGNhbGwgY25hX3RyeV9maW5kX25leHQoKSBh
cyBhCj4gcHJlLXNjYW4gYW5kIHJldHVybiAwLiBXaGF0IGRvIHlvdSB0aGluaz8KVGhpcyBpcyBj
ZXJ0YWlubHkgcG9zc2libGUsIGJ1dCBJIGRvIG5vdCB0aGluayBpdCB3b3VsZCBjb21wbGV0ZWx5
IGVsaW1pbmF0ZSAKdGhlIHdvcnN0IGNhc2Ugc2NlbmFyaW8uIEl0IHdpbGwgcHJvYmFibHkgbWFr
ZSBpdCBldmVuIGxlc3MgbGlrZWx5LCBidXQgYXQgCnRoZSBzYW1lIHRpbWUsIHdlIHdpbGwgcmVk
dWNlIHRoZSBjaGFuY2Ugb2YgYWN0dWFsbHkgZmluZGluZyBhIHRocmVhZCBmcm9tIHRoZQpzYW1l
IG5vZGUgKHRoYXQgbWF5IGVudGVyIHRoZSBtYWluIHF1ZXVlIHdoaWxlIHdlIHdhaXQgZm9yIHRo
ZSBvd25lciAmIHBlbmRpbmcgCnRvIGdvIGF3YXkpLgoKUmVnYXJkcywK4oCUIEFsZXgKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
