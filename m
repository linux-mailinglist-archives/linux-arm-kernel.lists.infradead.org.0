Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 553E341B44
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 06:42:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vraKgRUURuIs9QkJZ7sPiETU4UXdM043taygRPxTjkE=; b=LOmUsApaJOj8ew
	Sute9DFYFbsJWJbTJCoMeW+pfNj6iUSRwceXqm7lZAY7G+/GVHWltQESSIwvfvw8pXZ/2qlkYxnQO
	2YLR9h8ZIGTJ0vZzP131C3C12ve5+NwhKR1VxNV8tyAQDB5QmJ+z151HxDxVFgs3/NQaY50tqiDOB
	BIHg0pgwiFPkWQbo5+CJJZ07+3foxqVTtDEzJCmV209JINJGiJS3DevS5L5xAU5+orEOtK9c60WKi
	ucYjHw9q4tZGFdwzdzcCKxV+0im1rl9lXUwdI0svShgL9dfrmFGyJuQ5Rn8eyQ7SajnjkqaTpKkE7
	HMfQnj1O8R9HVKlfeNag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hav5E-00013x-4X; Wed, 12 Jun 2019 04:42:00 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hav53-00013E-Bu
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 04:41:51 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5C4Y7QG151814;
 Wed, 12 Jun 2019 04:40:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2018-07-02; bh=Dvgzk7NkhDjyOBKbHEmBJhstfiU7BL6wh43neF+ZDkY=;
 b=eBXhtMqXh8EbDaA5cd4D3GN7ltogiLw0wHdiLQVI1uQwRHXIS3DHjZvRCRaEUcd5xHkz
 JAM7IoXdBgfIrH7+JznevmT1Mp2ZJRe/trIkEPNY44SRY43R3Tshf1Qe1hyOJUnJK1St
 Y4nYDWdh19ikRfbs0EWiuUo/w/RPjr3A4/jMTbNPYc3SFuyCfx/n3r+qbGS/kGvhALLL
 Bs4Wm6qJ35n3iYR4qvcSbs4Jiqc/V6TnjFt/17JJfEkRJ0nDaXI695/drkHljkQrW/wp
 3PPttF8sqdA/OqPKJZW0ZYXnj4t1CeN3cMmitwxQsx1iORublrBr082JGosrJPHMP7H7 2w== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2t05nqrvse-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 12 Jun 2019 04:40:51 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5C4bIUd020268;
 Wed, 12 Jun 2019 04:38:50 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2t024us0pr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 12 Jun 2019 04:38:50 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5C4cVCg022576;
 Wed, 12 Jun 2019 04:38:31 GMT
Received: from [10.39.217.163] (/10.39.217.163)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 11 Jun 2019 21:38:30 -0700
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
Subject: Re: [PATCH v2 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
From: Alex Kogan <alex.kogan@oracle.com>
In-Reply-To: <cc3eee8c-5212-7af5-c932-897ab8f3f8bf@huawei.com>
Date: Wed, 12 Jun 2019 00:38:29 -0400
Message-Id: <54241445-458C-4AE2-840B-6DFCCD410399@oracle.com>
References: <20190329152006.110370-1-alex.kogan@oracle.com>
 <20190329152006.110370-4-alex.kogan@oracle.com>
 <cc3eee8c-5212-7af5-c932-897ab8f3f8bf@huawei.com>
To: "liwei (GF)" <liwei391@huawei.com>
X-Mailer: Apple Mail (2.3259)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9285
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906120030
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9285
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906120030
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_214149_496549_A1957872 
X-CRM114-Status: GOOD (  23.62  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arch@vger.kernel.org, arnd@arndb.de,
 Peter Zijlstra <peterz@infradead.org>, dave.dice@oracle.com, x86@kernel.org,
 will.deacon@arm.com, linux@armlinux.org.uk,
 Steven Sistare <steven.sistare@oracle.com>, linux-kernel@vger.kernel.org,
 Rahul Yadav <rahul.x.yadav@oracle.com>, mingo@redhat.com, bp@alien8.de,
 hpa@zytor.com, Waiman Long <longman@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIFdlaS4KCj4gT24gSnVuIDExLCAyMDE5LCBhdCAxMjoyMiBBTSwgbGl3ZWkgKEdGKSA8bGl3
ZWkzOTFAaHVhd2VpLmNvbT4gd3JvdGU6Cj4gCj4gSGkgQWxleCwKPiAKPiBPbiAyMDE5LzMvMjkg
MjM6MjAsIEFsZXggS29nYW4gd3JvdGU6Cj4+IEluIENOQSwgc3Bpbm5pbmcgdGhyZWFkcyBhcmUg
b3JnYW5pemVkIGluIHR3byBxdWV1ZXMsIGEgbWFpbiBxdWV1ZSBmb3IKPj4gdGhyZWFkcyBydW5u
aW5nIG9uIHRoZSBzYW1lIG5vZGUgYXMgdGhlIGN1cnJlbnQgbG9jayBob2xkZXIsIGFuZCBhCj4+
IHNlY29uZGFyeSBxdWV1ZSBmb3IgdGhyZWFkcyBydW5uaW5nIG9uIG90aGVyIG5vZGVzLiBBdCB0
aGUgdW5sb2NrIHRpbWUsCj4+IHRoZSBsb2NrIGhvbGRlciBzY2FucyB0aGUgbWFpbiBxdWV1ZSBs
b29raW5nIGZvciBhIHRocmVhZCBydW5uaW5nIG9uCj4+IHRoZSBzYW1lIG5vZGUuIElmIGZvdW5k
IChjYWxsIGl0IHRocmVhZCBUKSwgYWxsIHRocmVhZHMgaW4gdGhlIG1haW4gcXVldWUKPj4gYmV0
d2VlbiB0aGUgY3VycmVudCBsb2NrIGhvbGRlciBhbmQgVCBhcmUgbW92ZWQgdG8gdGhlIGVuZCBv
ZiB0aGUKPj4gc2Vjb25kYXJ5IHF1ZXVlLCBhbmQgdGhlIGxvY2sgaXMgcGFzc2VkIHRvIFQuIElm
IHN1Y2ggVCBpcyBub3QgZm91bmQsIHRoZQo+PiBsb2NrIGlzIHBhc3NlZCB0byB0aGUgZmlyc3Qg
bm9kZSBpbiB0aGUgc2Vjb25kYXJ5IHF1ZXVlLiBGaW5hbGx5LCBpZiB0aGUKPj4gc2Vjb25kYXJ5
IHF1ZXVlIGlzIGVtcHR5LCB0aGUgbG9jayBpcyBwYXNzZWQgdG8gdGhlIG5leHQgdGhyZWFkIGlu
IHRoZQo+PiBtYWluIHF1ZXVlLiBGb3IgbW9yZSBkZXRhaWxzLCBzZWUgaHR0cHM6Ly91cmxkZWZl
bnNlLnByb29mcG9pbnQuY29tL3YyL3VybD91PWh0dHBzLTNBX19hcnhpdi5vcmdfYWJzXzE4MTAu
MDU2MDAmZD1Ed0lDYmcmYz1Sb1AxWXVtQ1hDZ2FXSHZsWllSOFBaaDhCdjdxSXJNVUI2NWVhcElf
Sm5FJnI9SHZoazNGNG9tZENrLUdFMVBUT20zS24wQTdBcFdPWjJhWkxUdVZ4Rks0ayZtPVU3bWZU
YllqMXIyVGUyQkJVVU5iVnJSUHVUYV91amxwUjRHWmZVc3JHVE0mcz1EdzRPMUVuaUYtbmRlNGZw
NlJBOUlTbFNNT2pXdXFlUjlPUzFHMGlhdWowJmU9Lgo+PiAKPj4gTm90ZSB0aGF0IHRoaXMgdmFy
aWFudCBvZiBDTkEgbWF5IGludHJvZHVjZSBzdGFydmF0aW9uIGJ5IGNvbnRpbnVvdXNseQo+PiBw
YXNzaW5nIHRoZSBsb2NrIHRvIHRocmVhZHMgcnVubmluZyBvbiB0aGUgc2FtZSBub2RlLiBUaGlz
IGlzc3VlCj4+IHdpbGwgYmUgYWRkcmVzc2VkIGxhdGVyIGluIHRoZSBzZXJpZXMuCj4+IAo+PiBF
bmFibGluZyBDTkEgaXMgY29udHJvbGxlZCB2aWEgYSBuZXcgY29uZmlndXJhdGlvbiBvcHRpb24K
Pj4gKE5VTUFfQVdBUkVfU1BJTkxPQ0tTKSwgd2hpY2ggaXMgZW5hYmxlZCBieSBkZWZhdWx0IGlm
IE5VTUEgaXMgZW5hYmxlZC4KPj4gCj4+IFNpZ25lZC1vZmYtYnk6IEFsZXggS29nYW4gPGFsZXgu
a29nYW5Ab3JhY2xlLmNvbT4KPj4gUmV2aWV3ZWQtYnk6IFN0ZXZlIFNpc3RhcmUgPHN0ZXZlbi5z
aXN0YXJlQG9yYWNsZS5jb20+Cj4+IC0tLQo+PiBhcmNoL3g4Ni9LY29uZmlnICAgICAgICAgICAg
ICAgICAgICAgIHwgIDE0ICsrKwo+PiBpbmNsdWRlL2FzbS1nZW5lcmljL3FzcGlubG9ja190eXBl
cy5oIHwgIDEzICsrKwo+PiBrZXJuZWwvbG9ja2luZy9tY3Nfc3BpbmxvY2suaCAgICAgICAgIHwg
IDEwICsrCj4+IGtlcm5lbC9sb2NraW5nL3FzcGlubG9jay5jICAgICAgICAgICAgfCAgMjkgKysr
KystCj4+IGtlcm5lbC9sb2NraW5nL3FzcGlubG9ja19jbmEuaCAgICAgICAgfCAxNzMgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+PiA1IGZpbGVzIGNoYW5nZWQsIDIzNiBpbnNl
cnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+PiBjcmVhdGUgbW9kZSAxMDA2NDQga2VybmVsL2xv
Y2tpbmcvcXNwaW5sb2NrX2NuYS5oCj4+IAo+IChTTklQKQo+PiArCj4+ICtzdGF0aWMgX19hbHdh
eXNfaW5saW5lIGludCBnZXRfbm9kZV9pbmRleChzdHJ1Y3QgbWNzX3NwaW5sb2NrICpub2RlKQo+
PiArewo+PiArCXJldHVybiBkZWNvZGVfY291bnQobm9kZS0+bm9kZV9hbmRfY291bnQrKyk7Cj4g
V2hlbiBuZXN0aW5nIGxldmVsIGlzID4gNCwgaXQgd29uJ3QgcmV0dXJuIGEgaW5kZXggPj0gNCBo
ZXJlIGFuZCB0aGUgbnVtYSBub2RlIG51bWJlcgo+IGlzIGNoYW5nZWQgYnkgbWlzdGFrZS4gSXQg
d2lsbCBnbyBpbnRvIGEgd3Jvbmcgd2F5IGluc3RlYWQgb2YgdGhlIGZvbGxvd2luZyBicmFuY2gu
Cj4gCj4gCj4gCS8qCj4gCSAqIDQgbm9kZXMgYXJlIGFsbG9jYXRlZCBiYXNlZCBvbiB0aGUgYXNz
dW1wdGlvbiB0aGF0IHRoZXJlIHdpbGwKPiAJICogbm90IGJlIG5lc3RlZCBOTUlzIHRha2luZyBz
cGlubG9ja3MuIFRoYXQgbWF5IG5vdCBiZSB0cnVlIGluCj4gCSAqIHNvbWUgYXJjaGl0ZWN0dXJl
cyBldmVuIHRob3VnaCB0aGUgY2hhbmNlIG9mIG5lZWRpbmcgbW9yZSB0aGFuCj4gCSAqIDQgbm9k
ZXMgd2lsbCBzdGlsbCBiZSBleHRyZW1lbHkgdW5saWtlbHkuIFdoZW4gdGhhdCBoYXBwZW5zLAo+
IAkgKiB3ZSBmYWxsIGJhY2sgdG8gc3Bpbm5pbmcgb24gdGhlIGxvY2sgZGlyZWN0bHkgd2l0aG91
dCB1c2luZwo+IAkgKiBhbnkgTUNTIG5vZGUuIFRoaXMgaXMgbm90IHRoZSBtb3N0IGVsZWdhbnQg
c29sdXRpb24sIGJ1dCBpcwo+IAkgKiBzaW1wbGUgZW5vdWdoLgo+IAkgKi8KPiAJaWYgKHVubGlr
ZWx5KGlkeCA+PSBNQVhfTk9ERVMpKSB7Cj4gCQl3aGlsZSAoIXF1ZXVlZF9zcGluX3RyeWxvY2so
bG9jaykpCj4gCQkJY3B1X3JlbGF4KCk7Cj4gCQlnb3RvIHJlbGVhc2U7Cj4gCX0KR29vZCBwb2lu
dC4KVGhpcyBwYXRjaCBkb2VzIG5vdCBoYW5kbGUgY291bnQgb3ZlcmZsb3dzIGdyYWNlZnVsbHku
Ckl0IGNhbiBiZSBlYXNpbHkgZml4ZWQgYnkgYWxsb2NhdGluZyBtb3JlIGJpdHMgZm9yIHRoZSBj
b3VudCDigJQgd2UgZG9u4oCZdCByZWFsbHkgbmVlZCAzMCBiaXRzIGZvciAjTlVNQSBub2Rlcy4K
Ckhvd2V2ZXIsIEkgYW0gd29ya2luZyBvbiBhIG5ldyByZXZpc2lvbiBvZiB0aGUgcGF0Y2gsIGlu
IHdoaWNoIHRoZSBjbmEgbm9kZSBlbmNhcHN1bGF0ZXMgdGhlIG1jcyBub2RlIChmb2xsb3dpbmcg
UGV0ZXLigJlzIHN1Z2dlc3Rpb24gYW5kIHNpbWlsYXJseSB0byBwdl9ub2RlKS4KV2l0aCB0aGF0
IGFwcHJvYWNoLCB0aGlzIGlzc3VlIGlzIGdvbmUuCgpCZXN0IHJlZ2FyZHMsCuKAlCBBbGV4CgoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
