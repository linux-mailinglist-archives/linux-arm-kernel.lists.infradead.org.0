Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E454145AC5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 18:25:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dr0slDJQAejU/YnsHlCssYyieZis+CKSciae4sBUJb0=; b=LC/NrEdegykRuV
	YG7WhMUvnCP0M/Yv41s/tDjAyvTQio3uBtjGG5YcLEoOtBtEcYwhXD7E/CjieiKdvi9Btfyvv8rjx
	fGktkwfoMk+ZiLEcZjhKWSVtY78FPu+ml9ku2enlBSy0ez1eGsizhGicxVPihcZaXQja2NwEXniCC
	NJ9tBMqmX/RkPmeMZfXGb4+e6myWoxZ11q6NjhF1tsgLK9+KNJygJomnkBHeI/9O+y8j57w4WV2wB
	tDZ4f6N0MAAbASqcFJ9sy+KOmonEXRVvjlzhnkzQN83mAjl9qGQOC66ahmB4sG8BLGU/uGDAvN1iA
	AVXdLZt35tMD3ycgO+4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuJks-0004Eg-9x; Wed, 22 Jan 2020 17:25:26 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuJkg-0004Dh-2n
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 17:25:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579713910;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VHvnfO/LwUwnWaPYXVcUEbXAoTeNUswOZpwb/FvyBhE=;
 b=CQPAe3XltXfGW6y9WZaOfuUk6PbLVU0sFt4PFbL+qrtrezYWs4+oqTkfQqu2P1+nFqoRTb
 TY0K3ww0rZgKo/35t0YiewGpLbA9tPgLDW4JbnorAjprPlaZGiCMUzTBIbQ/OEVnyWP6kl
 iM5gQ2Pkhj2QNGc4z4ZLRViiZOl7NIE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-146-ckjOS28dPFaMDyNWePyqDQ-1; Wed, 22 Jan 2020 12:25:06 -0500
X-MC-Unique: ckjOS28dPFaMDyNWePyqDQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 492019920A;
 Wed, 22 Jan 2020 17:25:03 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-59.bos.redhat.com [10.18.17.59])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 61CEC87023;
 Wed, 22 Jan 2020 17:24:59 +0000 (UTC)
Subject: Re: [PATCH v9 0/5] Add NUMA-awareness to qspinlock
To: Lihao Liang <lihaoliang@google.com>, Alex Kogan <alex.kogan@oracle.com>
References: <20200115035920.54451-1-alex.kogan@oracle.com>
 <CAC4j=Y8rCeTX9oKKbh+dCdTP8Ud4hW1ybu+iE7t_nxMSYBOR5w@mail.gmail.com>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <4e15fa1d-9540-3274-502a-4195a0d46f63@redhat.com>
Date: Wed, 22 Jan 2020 12:24:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAC4j=Y8rCeTX9oKKbh+dCdTP8Ud4hW1ybu+iE7t_nxMSYBOR5w@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_092514_206917_93AF4F9F 
X-CRM114-Status: GOOD (  23.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 steven.sistare@oracle.com, tglx@linutronix.de, daniel.m.jordan@oracle.com,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMS8yMi8yMCA2OjQ1IEFNLCBMaWhhbyBMaWFuZyB3cm90ZToKPiBIaSBBbGV4LAo+Cj4gT24g
V2VkLCBKYW4gMjIsIDIwMjAgYXQgMTA6MjggQU0gQWxleCBLb2dhbiA8YWxleC5rb2dhbkBvcmFj
bGUuY29tPiB3cm90ZToKPj4gU3VtbWFyeQo+PiAtLS0tLS0tCj4+Cj4+IExvY2sgdGhyb3VnaHB1
dCBjYW4gYmUgaW5jcmVhc2VkIGJ5IGhhbmRpbmcgYSBsb2NrIHRvIGEgd2FpdGVyIG9uIHRoZQo+
PiBzYW1lIE5VTUEgbm9kZSBhcyB0aGUgbG9jayBob2xkZXIsIHByb3ZpZGVkIGNhcmUgaXMgdGFr
ZW4gdG8gYXZvaWQKPj4gc3RhcnZhdGlvbiBvZiB3YWl0ZXJzIG9uIG90aGVyIE5VTUEgbm9kZXMu
IFRoaXMgcGF0Y2ggaW50cm9kdWNlcyBDTkEKPj4gKGNvbXBhY3QgTlVNQS1hd2FyZSBsb2NrKSBh
cyB0aGUgc2xvdyBwYXRoIGZvciBxc3BpbmxvY2suIEl0IGlzCj4+IGVuYWJsZWQgdGhyb3VnaCBh
IGNvbmZpZ3VyYXRpb24gb3B0aW9uIChOVU1BX0FXQVJFX1NQSU5MT0NLUykuCj4+Cj4gVGhhbmtz
IGZvciB5b3VyIHBhdGNoZXMuIFRoZSBleHBlcmltZW50YWwgcmVzdWx0cyBsb29rIHByb21pc2lu
ZyEKPgo+IEkgdW5kZXJzdGFuZCB0aGF0IHRoZSBuZXcgQ05BIHFzcGlubG9jayB1c2VzIHJhbmRv
bWl6YXRpb24gdG8gYWNoaWV2ZQo+IGxvbmctdGVybSBmYWlybmVzcywgYW5kIHByb3ZpZGVzIHRo
ZSBudW1hX3NwaW5sb2NrX3RocmVzaG9sZCBwYXJhbWV0ZXIKPiBmb3IgdXNlcnMgdG8gdHVuZS4g
QXMgTGludXggcnVucyBleHRyZW1lbHkgZGl2ZXJzZSB3b3JrbG9hZHMsIGl0IGlzIG5vdAo+IGNs
ZWFyIGhvdyByYW5kb21pemF0aW9uIGFmZmVjdHMgaXRzIGZhaXJuZXNzLCBhbmQgaG93IHVzZXJz
IHdpdGgKPiBkaWZmZXJlbnQgcmVxdWlyZW1lbnRzIGFyZSBzdXBwb3NlZCB0byB0dW5lIHRoaXMg
cGFyYW1ldGVyLgo+Cj4gVG8gdGhpcyBlbmQsIFdpbGwgYW5kIEkgY29uc2lkZXIgaXQgYmVuZWZp
Y2lhbCB0byBiZSBhYmxlIHRvIGFuc3dlciB0aGUKPiBmb2xsb3dpbmcgcXVlc3Rpb246Cj4KPiBX
aXRoIGRpZmZlcmVudCB2YWx1ZXMgb2YgbnVtYV9zcGlubG9ja190aHJlc2hvbGQgYW5kCj4gU0hV
RkZMRV9SRURVQ1RJT05fUFJPQl9BUkcsIGhvdyBsb25nIGRvIHRocmVhZHMgcnVubmluZyBvbiBk
aWZmZXJlbnQKPiBzb2NrZXRzIGhhdmUgdG8gd2FpdCB0byBhY3F1aXJlIHRoZSBsb2NrPyBUaGlz
IGlzIHBhcnRpY3VsYXJseSByZWxldmFudAo+IGluIGhpZ2ggY29udGVudGlvbiBzaXR1YXRpb25z
IHdoZW4gbmV3IHRocmVhZHMga2VlcCBhcnJpdmluZyBvbiB0aGUgc2FtZQo+IHNvY2tldCBhcyB0
aGUgbG9jayBob2xkZXIuCj4KPiBJbiB0aGlzIGVtYWlsLCBJIHRyeSB0byBwcm92aWRlIHNvbWUg
Zm9ybWFsIGFuYWx5c2lzIHRvIGFkZHJlc3MgdGhpcwo+IHF1ZXN0aW9uLiBMZXQncyBhc3N1bWUg
dGhlIHByb2JhYmlsaXR5IGZvciB0aGUgbG9jayB0byBzdGF5IG9uIHRoZQo+IHNhbWUgc29ja2V0
IGlzICphdCBsZWFzdCogcCwgd2hpY2ggY29ycmVzcG9uZHMgdG8gdGhlIHByb2JhYmlsaXR5IGZv
cgo+IHRoZSBmdW5jdGlvbiBwcm9iYWJseSh1bnNpZ25lZCBpbnQgbnVtX2JpdHMpIGluIHRoZSBw
YXRjaCB0byByZXR1cm4gKmZhbHNlKiwKPiB3aGVyZSBTSFVGRkxFX1JFRFVDVElPTl9QUk9CX0FS
RyBpcyBwYXNzZWQgYXMgdGhlIHZhbHVlIG9mIG51bV9iaXRzIHRvIHRoZQo+IGZ1bmN0aW9uLgoK
VGhhdCBpcyBub3Qgc3RyaWN0bHkgdHJ1ZSBmcm9tIG15IHVuZGVyc3RhbmRpbmcgb2YgdGhlIGNv
ZGUuIFRoZQpwcm9iYWJseSgpIGZ1bmN0aW9uIGRvZXMgbm90IGNvbWUgaW50byBwbGF5IGlmIGEg
c2Vjb25kYXJ5IHF1ZXVlIGlzCnByZXNlbnQuIEFsc28gY2FsbGluZyBjbmFfc2Nhbl9tYWluX3F1
ZXVlKCkgZG9lc24ndCBndWFyYW50ZWUgdGhhdCBhCndhaXRlciBpbiB0aGUgc2FtZSBub2RlIGNh
biBiZSBmb3VuZC4gU28gdGhlIHNpbXBsZSBtYXRoZW1hdGljYWwKYW5hbHlzaXMgaXNuJ3QgdGhh
dCBhcHBsaWNhYmxlIGluIHRoaXMgY2FzZS4gT25lIHdpbGwgaGF2ZSB0byBkbyBhbgphY3R1YWwg
c2ltdWxhdGlvbiB0byBmaW5kIG91dCB3aGF0IHRoZSBhY3R1YWwgYmVoYXZpb3Igd2lsbCBiZS4K
ClRoZSBjb21tZW50IGluIHRoZSBjb2RlIHN0YXRlcyB0aGF0OgoKLyoKwqAqIENvbnRyb2xzIHRo
ZSBwcm9iYWJpbGl0eSBmb3IgZW5hYmxpbmcgdGhlIHNjYW4gb2YgdGhlIG1haW4gcXVldWUgd2hl
bgrCoCogdGhlIHNlY29uZGFyeSBxdWV1ZSBpcyBlbXB0eS4gVGhlIGNob3NlbiB2YWx1ZSByZWR1
Y2VzIHRoZSBhbW91bnQgb2YKwqAqIHVubmVjZXNzYXJ5IHNodWZmbGluZyBvZiB0aHJlYWRzIGJl
dHdlZW4gdGhlIHR3byB3YWl0aW5nIHF1ZXVlcyB3aGVuCsKgKiB0aGUgY29udGVudGlvbiBpcyBs
b3csIHdoaWxlIHJlc3BvbmRpbmcgZmFzdCBlbm91Z2ggYW5kIGVuYWJsaW5nCsKgKiB0aGUgc2h1
ZmZsaW5nIHdoZW4gdGhlIGNvbnRlbnRpb24gaXMgaGlnaC4KwqAqLwojZGVmaW5lIFNIVUZGTEVf
UkVEVUNUSU9OX1BST0JfQVJHwqAgKDcpCgpDaGVlcnMsCkxvbmdtYW4KCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
