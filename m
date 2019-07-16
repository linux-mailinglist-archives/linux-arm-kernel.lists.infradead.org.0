Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1159D6AACC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 16:44:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ptFRgR14GIdf0UkGlYEpXSOv7acvbrG2PzRTgiI5Wdc=; b=A6rpqaEocAd+lk
	OOMVHb8QlgpClEFdA/B/BbBvucwErobQDhsKBsd7BfCnrCxmRhMYC40m1C5DC+h/nSnARzrYU+XOV
	RRC0omZ7y6imyVDByBBBhZN+Hw/NsVHHWt1pbHuzRzfAadEVNUhzWqrV8kXjRnW8VaTtdPRz/qmkX
	XY3LG24WCeZagMn3mfyN+VvYW4ctqSdVfkSHppboCzULewvEG+yFfMDBsxw9trud4Gl4t5sxKk6JN
	bQMll7lhLvFl8IUTqZ2XlyvopWSw5EYN8/tSnDxX1xDfeu8ye/TPqJrNLAdsHGtcCVW5PJxlNAbCY
	/Qz6E96ckzGVSMFjEZ/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnOhA-0004gh-HI; Tue, 16 Jul 2019 14:44:44 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnOgd-0004Uj-5r
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 14:44:13 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 14A2E85546;
 Tue, 16 Jul 2019 14:44:10 +0000 (UTC)
Received: from llong.remote.csb (ovpn-122-180.rdu2.redhat.com [10.10.122.180])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 457726013A;
 Tue, 16 Jul 2019 14:44:07 +0000 (UTC)
Subject: Re: [PATCH v3 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
To: Alex Kogan <alex.kogan@oracle.com>
References: <20190715192536.104548-1-alex.kogan@oracle.com>
 <20190715192536.104548-4-alex.kogan@oracle.com>
 <77bba626-f3e6-45a8-aae8-43b945d0fab9@redhat.com>
 <32DD898E-0F5E-4A63-9795-F78411B77A98@oracle.com>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <8ceec931-2921-6ee6-2642-476b4a12281e@redhat.com>
Date: Tue, 16 Jul 2019 10:44:06 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <32DD898E-0F5E-4A63-9795-F78411B77A98@oracle.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Tue, 16 Jul 2019 14:44:10 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_074411_292972_4CB3571F 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

T24gNy8xNi8xOSAxMDoyNiBBTSwgQWxleCBLb2dhbiB3cm90ZToKPj4gT24gSnVsIDE1LCAyMDE5
LCBhdCA1OjMwIFBNLCBXYWltYW4gTG9uZyA8bG9uZ21hbkByZWRoYXQuY29tPiB3cm90ZToKPj4K
Pj4gT24gNy8xNS8xOSAzOjI1IFBNLCBBbGV4IEtvZ2FuIHdyb3RlOgo+Pgo+Pj4gLyoKPj4+IC0g
KiBPbiA2NC1iaXQgYXJjaGl0ZWN0dXJlcywgdGhlIG1jc19zcGlubG9jayBzdHJ1Y3R1cmUgd2ls
bCBiZSAxNiBieXRlcyBpbgo+Pj4gLSAqIHNpemUgYW5kIGZvdXIgb2YgdGhlbSB3aWxsIGZpdCBu
aWNlbHkgaW4gb25lIDY0LWJ5dGUgY2FjaGVsaW5lLiBGb3IKPj4+IC0gKiBwdnFzcGlubG9jaywg
aG93ZXZlciwgd2UgbmVlZCBtb3JlIHNwYWNlIGZvciBleHRyYSBkYXRhLiBUbyBhY2NvbW1vZGF0
ZQo+Pj4gLSAqIHRoYXQsIHdlIGluc2VydCB0d28gbW9yZSBsb25nIHdvcmRzIHRvIHBhZCBpdCB1
cCB0byAzMiBieXRlcy4gSU9XLCBvbmx5Cj4+PiAtICogdHdvIG9mIHRoZW0gY2FuIGZpdCBpbiBh
IGNhY2hlbGluZSBpbiB0aGlzIGNhc2UuIFRoYXQgaXMgT0sgYXMgaXQgaXMgcmFyZQo+Pj4gLSAq
IHRvIGhhdmUgbW9yZSB0aGFuIDIgbGV2ZWxzIG9mIHNsb3dwYXRoIG5lc3RpbmcgaW4gYWN0dWFs
IHVzZS4gV2UgZG9uJ3QKPj4+IC0gKiB3YW50IHRvIHBlbmFsaXplIHB2cXNwaW5sb2NrcyB0byBv
cHRpbWl6ZSBmb3IgYSByYXJlIGNhc2UgaW4gbmF0aXZlCj4+PiAtICogcXNwaW5sb2Nrcy4KPj4+
ICsgKiBPbiA2NC1iaXQgYXJjaGl0ZWN0dXJlcywgdGhlIG1jc19zcGlubG9jayBzdHJ1Y3R1cmUg
d2lsbCBiZSAyMCBieXRlcyBpbgo+Pj4gKyAqIHNpemUuIEZvciBwdnFzcGlubG9jayBvciB0aGUg
TlVNQS1hd2FyZSB2YXJpYW50LCBob3dldmVyLCB3ZSBuZWVkIG1vcmUKPj4+ICsgKiBzcGFjZSBm
b3IgZXh0cmEgZGF0YS4gVG8gYWNjb21tb2RhdGUgdGhhdCwgd2UgaW5zZXJ0IHR3byBtb3JlIGxv
bmcgd29yZHMKPj4+ICsgKiB0byBwYWQgaXQgdXAgdG8gMzYgYnl0ZXMuCj4+PiAgKi8KPj4gVGhl
IDIwIGJ5dGVzIGZpZ3VyZSBpcyB3cm9uZy4gSXQgaXMgYWN0dWFsbHkgMjQgYnl0ZXMgZm9yIDY0
LWJpdCBhcyB0aGUKPj4gbWNzX3NwaW5sb2NrIHN0cnVjdHVyZSBpcyA4LWJ5dGUgYWxpZ25lZC4g
Rm9yIGJldHRlciBjYWNoZWxpbmUKPj4gYWxpZ25tZW50LCBJIHdpbGwgbGlrZSB0byBrZWVwIG1j
c19zcGlubG9jayB0byAxNiBieXRlcyBhcyBiZWZvcmUuCj4+IEluc3RlYWQsIHlvdSBjYW4gdXNl
IGVuY29kZV90YWlsKCkgdG8gc3RvcmUgdGhlIENOQSBub2RlIHBvaW50ZXIgaW4KPj4gImxvY2tl
ZCIuIEZvciBpbnN0YW5jZSwgdXNlIChlbmNvZGVfdGFpbCgpIDw8IDEpIGluIGxvY2tlZCB0bwo+
PiBkaXN0aW5ndWlzaCBpdCBmcm9tIHRoZSByZWd1bGFyIGxvY2tlZD0xIHZhbHVlLgo+IEkgdGhp
bmsgdGhpcyBjYW4gd29yay4KPiBkZWNvZGVfdGFpbCgpIHdpbGwgZ2V0IHRoZSBhY3R1YWwgbm9k
ZSBwb2ludGVyIGZyb20gdGhlIGVuY29kZWQgdmFsdWUuCj4gQW5kIHRoYXQgd291bGQga2VlcCB0
aGUgc2l6ZSBvZiBtY3Nfc3BpbmxvY2sgaW50YWN0Lgo+IEdvb2QgaWRlYSwgdGhhbmtzIQo+Cj4g
QlRXLCBtYXliZSBiZXR0ZXIgY2hhbmdlIHRob3NlIGZ1bmN0aW9uIG5hbWVzIHRvIGVuY29kZV9u
b2RlKCkgLyBkZWNvZGVfbm9kZSgpIHRoZW4/CgpUaGUgbmFtZXMgbG9vayBnb29kIHRvIG1lLgoK
Cj4KPj4+IHMKPj4+ICsKPj4+ICtzdGF0aWMgdm9pZCBjbmFfaW5pdF9ub2RlKHN0cnVjdCBtY3Nf
c3BpbmxvY2sgKm5vZGUpCj4+PiArewo+Pj4gKwlzdHJ1Y3QgY25hX25vZGUgKmNuID0gQ05BX05P
REUobm9kZSk7Cj4+PiArCXN0cnVjdCBtY3Nfc3BpbmxvY2sgKmJhc2Vfbm9kZTsKPj4+ICsJaW50
IGNwdWlkOwo+Pj4gKwo+Pj4gKwlCVUlMRF9CVUdfT04oc2l6ZW9mKHN0cnVjdCBjbmFfbm9kZSkg
PiBzaXplb2Yoc3RydWN0IHFub2RlKSk7Cj4+PiArCS8qIHdlIHN0b3JlIGEgcG9pbnRlciBpbiB0
aGUgbm9kZSdzIEBsb2NrZWQgZmllbGQgKi8KPj4+ICsJQlVJTERfQlVHX09OKHNpemVvZih1aW50
cHRyX3QpID4gc2l6ZW9mX2ZpZWxkKHN0cnVjdCBtY3Nfc3BpbmxvY2ssIGxvY2tlZCkpOwo+Pj4g
Kwo+Pj4gKwljcHVpZCA9IHNtcF9wcm9jZXNzb3JfaWQoKTsKPj4+ICsJY24tPm51bWFfbm9kZSA9
IGNwdV90b19ub2RlKGNwdWlkKTsKPj4+ICsKPj4+ICsJYmFzZV9ub2RlID0gdGhpc19jcHVfcHRy
KCZxbm9kZXNbMF0ubWNzKTsKPj4+ICsJY24tPmVuY29kZWRfdGFpbCA9IGVuY29kZV90YWlsKGNw
dWlkLCBiYXNlX25vZGUtPmNvdW50IC0gMSk7Cj4+PiArfQo+Pgo+PiBJIHRoaW5rIHlvdSBjYW4g
dXNlIGFuIGVhcmx5X2luaXQgY2FsbCB0byBpbml0aWFsaXplIHRoZSBudW1hX25vZGUgYW5kCj4+
IGVuY29kZWRfdGFpbCB2YWx1ZXMgZm9yIGFsbCB0aGUgcGVyLWNwdSBDTkEgbm9kZXMgaW5zdGVh
ZCBvZiBkb2luZyBpdAo+PiBldmVyeSB0aW1lIGEgbm9kZSBpcyB1c2VkLiBJZiBpdCB0dXJucyBv
dXQgdGhhdCBwdl9xc3BpbmxvY2sgaXMgdXNlZCwKPj4gdGhlIHB2X25vZGVfaW5pdCgpIHdpbGwg
cHJvcGVybHkgcmUtaW5pdGlhbGl6ZSBpdC4KPiBZZXMsIHRoaXMgc2hvdWxkIHdvcmsuIFRoYW5r
cy4KPgo+IEJUVywgc2hvdWxkIG5vdCB3ZSBpbml0aWFsaXplIGBjcHVgIGluIHB2X2luaXRfbm9k
ZSgpIHRoYXQgc2FtZSB3YXk/CgpXZSB3b3VsZCBhbHNvIGluaXRpYWxpemUgY3B1IHRoaXMgd2F5
IGluIHB2X2luaXRfbm9kZS4gVGhlCnNtcF9wcm9jZXNzb3JfaWQoKSBjYWxsIGlzIHJlbGF0aXZl
bHkgY2hlYXAsIGJ1dCB0aGUgaW5pdGlhbGl6YXRpb24gZG9uZQpoZXJlIGlzIG1vcmUgZXhwZW5z
aXZlLgoKCj4+IFRoZSBvbmx5IHRoaW5nIGxlZnQKPj4gdG8gZG8gaGVyZSBpcyBwZXJoYXBzIHNl
dHRpbmcgdGFpbCB0byBOVUxMLgo+IFRoZXJlIGlzIG5vIG5lZWQgdG8gaW5pdGlhbGl6ZSBjbmFf
bm9kZS50YWlsIOKAlCB3ZSBuZXZlciBhY2Nlc3MgaXQgdW5sZXNzCj4gdGhlIG5vZGUgaXMgYXQg
dGhlIGhlYWQgb2YgdGhlIHNlY29uZGFyeSBxdWV1ZSwgYW5kIGluIHRoYXQgY2FzZSB3ZSAKPiBp
bml0aWFsaXplIGl0IGJlZm9yZSBwbGFjaW5nIHRoZSBub2RlIGF0IHRoZSBoZWFkIG9mIHRoYXQg
cXVldWUgCj4gKHNlZSBmaW5kX3N1Y2Nlc3NvcigpKS4KCk9LLgoKLUxvbmdtYW4KCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
