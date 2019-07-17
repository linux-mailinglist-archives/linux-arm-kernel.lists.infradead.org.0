Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E32B76C0B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 19:59:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m8OcfaaJ4jQDDucTQT/5BYXaQUEDIl0fIU3VPZhqoCA=; b=uPi/grshVVEV8a
	CNpUyUzZgBNRim0zriREYir/IW11eH79RUogitEiGkM6hB3Svhm4l87vTFL1ZAqoIE/ZRp7x9BwBQ
	679XzcxDRs4nanNGN9OcaimBgf7wCXlvP8l09pEiOm9t4MCCUYGDoFvmKE2Uyzje3ymbYVqBgDXxZ
	RM08+eyazxflNlGiGhEQdPykEvby8OgcC0WUNMSDfjOk3LU6mp432tyMUpn/zGW3gEgL2U7S5ds/V
	ElzQ1iPSpKf2jL9OWTxoRhZP7ZRZRLIER6vYHoj1uNPl+JkkwmgpbigpyonYpkOysxGe3lRhCOgSj
	26sMooGA38bdSC/odU3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnoCl-00074C-FI; Wed, 17 Jul 2019 17:59:03 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnoCU-0006tv-BO
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 17:58:48 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 43EDD307D933;
 Wed, 17 Jul 2019 17:58:45 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-160.bos.redhat.com [10.18.17.160])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 576405B689;
 Wed, 17 Jul 2019 17:58:41 +0000 (UTC)
Subject: Re: [PATCH v3 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
To: Alex Kogan <alex.kogan@oracle.com>
References: <20190715192536.104548-1-alex.kogan@oracle.com>
 <20190715192536.104548-4-alex.kogan@oracle.com>
 <77bba626-f3e6-45a8-aae8-43b945d0fab9@redhat.com>
 <aa73b86d-902a-bb6f-d372-8645c8299a6d@redhat.com>
 <C1C55A40-FDB1-43B5-B551-F9B8BE776DF8@oracle.com>
 <2a7a3ea8-7a94-52d4-b8ef-581de28e0063@redhat.com>
 <10197432-47E5-49D7-AD68-8A412782012B@oracle.com>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <76d70284-dd6b-009c-710c-cc97bac8146f@redhat.com>
Date: Wed, 17 Jul 2019 13:58:40 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <10197432-47E5-49D7-AD68-8A412782012B@oracle.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Wed, 17 Jul 2019 17:58:45 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_105846_428126_EDC3ACC3 
X-CRM114-Status: GOOD (  20.13  )
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
 Peter Zijlstra <peterz@infradead.org>, dave.dice@oracle.com,
 jglauber@marvell.com, x86@kernel.org, Will Deacon <will.deacon@arm.com>,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, rahul.x.yadav@oracle.com,
 Ingo Molnar <mingo@redhat.com>, bp@alien8.de, hpa@zytor.com,
 steven.sistare@oracle.com, tglx@linutronix.de, daniel.m.jordan@oracle.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNy8xNy8xOSAxOjQ0IFBNLCBBbGV4IEtvZ2FuIHdyb3RlOgo+PiBPbiBKdWwgMTYsIDIwMTks
IGF0IDEwOjUwIEFNLCBXYWltYW4gTG9uZyA8bG9uZ21hbkByZWRoYXQuY29tPiB3cm90ZToKPj4K
Pj4gT24gNy8xNi8xOSAxMDoyOSBBTSwgQWxleCBLb2dhbiB3cm90ZToKPj4+PiBPbiBKdWwgMTUs
IDIwMTksIGF0IDc6MjIgUE0sIFdhaW1hbiBMb25nIDxsb25nbWFuQHJlZGhhdC5jb20KPj4+PiA8
bWFpbHRvOmxvbmdtYW5AcmVkaGF0LmNvbT4+IHdyb3RlOgo+Pj4+Cj4+Pj4gT24gNy8xNS8xOSA1
OjMwIFBNLCBXYWltYW4gTG9uZyB3cm90ZToKPj4+Pj4+IC0jaWZuZGVmIF9HRU5fUFZfTE9DS19T
TE9XUEFUSAo+Pj4+Pj4gKyNpZiAhZGVmaW5lZChfR0VOX1BWX0xPQ0tfU0xPV1BBVEgpICYmICFk
ZWZpbmVkKF9HRU5fQ05BX0xPQ0tfU0xPV1BBVEgpCj4+Pj4+Pgo+Pj4+Pj4gI2luY2x1ZGUgPGxp
bnV4L3NtcC5oPgo+Pj4+Pj4gI2luY2x1ZGUgPGxpbnV4L2J1Zy5oPgo+Pj4+Pj4gQEAgLTc3LDE4
ICs3NywxNCBAQAo+Pj4+Pj4gI2RlZmluZSBNQVhfTk9ERVMJNAo+Pj4+Pj4KPj4+Pj4+IC8qCj4+
Pj4+PiAtICogT24gNjQtYml0IGFyY2hpdGVjdHVyZXMsIHRoZSBtY3Nfc3BpbmxvY2sgc3RydWN0
dXJlIHdpbGwgYmUgMTYgYnl0ZXMgaW4KPj4+Pj4+IC0gKiBzaXplIGFuZCBmb3VyIG9mIHRoZW0g
d2lsbCBmaXQgbmljZWx5IGluIG9uZSA2NC1ieXRlIGNhY2hlbGluZS4gRm9yCj4+Pj4+PiAtICog
cHZxc3BpbmxvY2ssIGhvd2V2ZXIsIHdlIG5lZWQgbW9yZSBzcGFjZSBmb3IgZXh0cmEgZGF0YS4g
VG8gYWNjb21tb2RhdGUKPj4+Pj4+IC0gKiB0aGF0LCB3ZSBpbnNlcnQgdHdvIG1vcmUgbG9uZyB3
b3JkcyB0byBwYWQgaXQgdXAgdG8gMzIgYnl0ZXMuIElPVywgb25seQo+Pj4+Pj4gLSAqIHR3byBv
ZiB0aGVtIGNhbiBmaXQgaW4gYSBjYWNoZWxpbmUgaW4gdGhpcyBjYXNlLiBUaGF0IGlzIE9LIGFz
IGl0IGlzIHJhcmUKPj4+Pj4+IC0gKiB0byBoYXZlIG1vcmUgdGhhbiAyIGxldmVscyBvZiBzbG93
cGF0aCBuZXN0aW5nIGluIGFjdHVhbCB1c2UuIFdlIGRvbid0Cj4+Pj4+PiAtICogd2FudCB0byBw
ZW5hbGl6ZSBwdnFzcGlubG9ja3MgdG8gb3B0aW1pemUgZm9yIGEgcmFyZSBjYXNlIGluIG5hdGl2
ZQo+Pj4+Pj4gLSAqIHFzcGlubG9ja3MuCj4+Pj4+PiArICogT24gNjQtYml0IGFyY2hpdGVjdHVy
ZXMsIHRoZSBtY3Nfc3BpbmxvY2sgc3RydWN0dXJlIHdpbGwgYmUgMjAgYnl0ZXMgaW4KPj4+Pj4+
ICsgKiBzaXplLiBGb3IgcHZxc3BpbmxvY2sgb3IgdGhlIE5VTUEtYXdhcmUgdmFyaWFudCwgaG93
ZXZlciwgd2UgbmVlZCBtb3JlCj4+Pj4+PiArICogc3BhY2UgZm9yIGV4dHJhIGRhdGEuIFRvIGFj
Y29tbW9kYXRlIHRoYXQsIHdlIGluc2VydCB0d28gbW9yZSBsb25nIHdvcmRzCj4+Pj4+PiArICog
dG8gcGFkIGl0IHVwIHRvIDM2IGJ5dGVzLgo+Pj4+Pj4gKi8KPj4+Pj4gVGhlIDIwIGJ5dGVzIGZp
Z3VyZSBpcyB3cm9uZy4gSXQgaXMgYWN0dWFsbHkgMjQgYnl0ZXMgZm9yIDY0LWJpdCBhcyB0aGUK
Pj4+Pj4gbWNzX3NwaW5sb2NrIHN0cnVjdHVyZSBpcyA4LWJ5dGUgYWxpZ25lZC4gRm9yIGJldHRl
ciBjYWNoZWxpbmUKPj4+Pj4gYWxpZ25tZW50LCBJIHdpbGwgbGlrZSB0byBrZWVwIG1jc19zcGlu
bG9jayB0byAxNiBieXRlcyBhcyBiZWZvcmUuCj4+Pj4+IEluc3RlYWQsIHlvdSBjYW4gdXNlIGVu
Y29kZV90YWlsKCkgdG8gc3RvcmUgdGhlIENOQSBub2RlIHBvaW50ZXIgaW4KPj4+Pj4gImxvY2tl
ZCIuIEZvciBpbnN0YW5jZSwgdXNlIChlbmNvZGVfdGFpbCgpIDw8IDEpIGluIGxvY2tlZCB0bwo+
Pj4+PiBkaXN0aW5ndWlzaCBpdCBmcm9tIHRoZSByZWd1bGFyIGxvY2tlZD0xIHZhbHVlLgo+Pj4+
IEFjdHVhbGx5LCB0aGUgZW5jb2RlZCB0YWlsIHZhbHVlIGlzIGFscmVhZHkgc2hpZnQgbGVmdCBl
aXRoZXIgMTYgYml0cwo+Pj4+IG9yIDkgYml0cy4gU28gdGhlcmUgaXMgbm8gbmVlZCB0byBzaGlm
dCBpdC4gWW91IGNhbiBhc3NpZ25lZCBpdCBkaXJlY3RseToKPj4+Pgo+Pj4+IG1jcy0+bG9ja2Vk
ID0gY25hLT5lbmNvZGVkX3RhaWw7Cj4+Pj4KPj4+PiBZb3UgZG8gbmVlZCB0byBjaGFuZ2UgdGhl
IHR5cGUgb2YgbG9ja2VkIHRvICJ1bnNpZ25lZCBpbnQiLCB0aG91Z2gsCj4+Pj4gZm9yIHByb3Bl
ciBjb21wYXJpc29uIHdpdGggIjEiLgo+Pj4+Cj4+PiBHb3QgaXQsIHRoYW5rcy4KPj4+Cj4+IEkg
Zm9yZ290IHRvIG1lbnRpb24gdGhhdCBJIHdvdWxkIGxpa2UgdG8gc2VlIGEgYm9vdCBjb21tYW5k
IGxpbmUgb3B0aW9uCj4+IHRvIGZvcmNlIG9mZiBhbmQgbWF5YmUgb24gYXMgd2VsbCB0aGUgbnVt
YSBxc3BpbmxvY2sgY29kZS4gVGhpcyBjYW4gaGVscAo+PiBpbiB0ZXN0aW5nIGFzIHlvdSBkb24n
dCBuZWVkIHRvIGJ1aWxkIDIgc2VwYXJhdGUga2VybmVscywgb25lIHdpdGgKPj4gTlVNQV9BV0FS
RV9TUElOTE9DS1Mgb24gYW5kIG9uZSB3aXRoIGl0IG9mZi4KPiBJSVVDIGl0IHNob3VsZCBiZSBl
YXN5IHRvIGFkZCBhIGJvb3Qgb3B0aW9uIHRvIGZvcmNlIG9mZiB0aGUgTlVNQS1hd2FyZSBzcGlu
bG9jayAKPiBldmVuIGlmIGl0IGlzIGVuYWJsZWQgdGhvdWdoIGNvbmZpZywgYnV0IHRoZSBvdGhl
ciB3YXkgYXJvdW5kIHdvdWxkIHJlcXVpcmUgCj4gY29tcGlsaW5nIGluIHRoZSBOVU1BLWF3YXJl
IHNwaW5sb2NrIHN0dWZmIGV2ZW4gaWYgdGhlIGNvbmZpZyBvcHRpb24gaXMgZGlzYWJsZWQuCj4g
SXMgdGhhdCBvaz8KClRoYXQgaXMgbm90IHdoYXQgSSBhbSBsb29raW5nIGZvci4gSWYgdGhlIGNv
bmZpZyBvcHRpb24gaXMgZGlzYWJsZWQsIHRoZQpib290IGNvbW1hbmQgbGluZSBvcHRpb24gaXMg
ZGlzYWJsZWQgYWxzby4gRm9yIHRoZSBvbiBjYXNlLCBvbmUgcG9zc2libGUKdXNhZ2Ugc2NlbmFy
aW8gaXMgd2l0aCBhIFZNIGd1ZXN0IHdoZXJlIGFsbCB0aGUgdmNwdXMgYXJlIHBpbm5lZCB0byBh
CnBoeXNpY2FsIENQVXMgd2l0aCBubyBvdmVyLWNvbW1pdCBhbmQgY29ycmVjdCBudW1hIGluZm9y
bWF0aW9uLiBJbiB0aGF0CmNhc2UsIG9uZSBtYXkgd2FudCB0byB1c2UgbnVtYS1xc3BpbmxvY2sg
aW5zdGVhZCBvZiBwdi1xc3BpbmxvY2suCgo+IEFsc28sIHdoYXQgc2hvdWxkIHRoZSBvcHRpb24g
bmFtZSBiZT8KPiAibnVtYV9zcGlubG9jaz1vbi9vZmbigJ0gaWYgd2Ugd2FudCBib3RoIHdheXMs
IG9yIOKAnG5vX251bWFfc3BpbmxvY2siIGlmIHdlIHdhbnQganVzdCB0aGUg4oCcZm9yY2Ugb2Zm
4oCdIG9wdGlvbj8KCkkgdGhpbmsgIm51bWFfc3BpbmxvY2s9b24vb2ZmIiB3aWxsIGJlIGdvb2Qu
IFRoZSBkZWZhdWx0IGlzICJhdXRvIiB3aGVyZQppdCB3aWxsIGJlIHR1cm5lZCBvbiB3aGVuIHRo
ZXJlIGlzIG1vcmUgdGhhbiBvbmUgbnVtYSBub2RlcyBpbiB0aGUgc3lzdGVtLgoKPj4gRm9yIHNt
YWxsIDItc29ja2V0IHN5c3RlbXMsCj4+IG51bWEgcXNwaW5sb2NrIG1heSBub3QgaGVscCBtdWNo
Lgo+IEl0IGFjdHVhbGx5IGhlbHBzIHF1aXRlIGEgYml0IChlLmcuLCBzcGVlZHVwIG9mIHVwIHRv
IDQyLTU3JSBmb3Igd2lsbC1pdC1zY2FsZSBvbiBhIGR1YWwtc29ja2V0IHg4NiBzeXN0ZW0pLgo+
IFdlIGhhdmUgbnVtYmVycyBhbmQgcGxvdHMgaW4gb3VyIHBhcGVyIG9uIGFyeGl2LgoKSSBhbSB0
YWxraW5nIGFib3V0IG9sZGVyIDItc29ja2V0IHN5c3RlbXMgd2hlcmUgZWFjaCBzb2NrZXQgbWF5
IGhhdmUKanVzdCBhIGZldyBjcHVzLiBBbHNvIHNvbWUgSW50ZWwgQ1BVIGNhbiBiZSBjb25maWd1
cmVkIHRvIGhhdmUgMiBudW1hCm5vZGVzIHBlciBzb2NrZXQuIEZvciBBTUQgRVBZQywgaXQgY2Fu
IGJlIGNvbmZpZ3VyZWQgdG8gaGF2ZSA0IG51bWEKbm9kZXMgcGVyIHNvY2tldC4KCkNoZWVycywK
TG9uZ21hbgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
