Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8123824EB5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 14:10:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X032sUyl/QbBzE521kyjgNj876013ESbPaWEKhewLQw=; b=pe5S9WrGN0qR3q
	+OxLygon9emYj0W//gwL+g7ce1QYtCLgeKconpVFpm44etUTOxPWD7NTrPQ4pgIa59loiNu+1ie6C
	OpdMzRyqtb7Ctq+Sk55pBk1YUA3JN16k9FGDnE9BvqeknYL5ANouodurVnIqoKD6r4kBJfDIlNbO4
	KTi6O0NDeodRszqhwNTWJJVFs188i83vl9hEBmHFcZW+qaZkV+t2Rp7AnuH+6+8YWU6OWovklniJQ
	c67CP+rl58Fo3edAS8EoGt6FHfjoxsXeTt7j12naAbHSNAbwtoxoOB8hK3nKyqjVrCi+31JpvJ3p0
	y8zvzk+lLI5CWzbpxF/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT3as-00073Z-1Y; Tue, 21 May 2019 12:10:10 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT3ag-00072S-Tx
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 12:10:00 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CAE443179162;
 Tue, 21 May 2019 12:09:38 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (dhcp-192-219.str.redhat.com
 [10.33.192.219])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8854750A63;
 Tue, 21 May 2019 12:09:30 +0000 (UTC)
From: Florian Weimer <fweimer@redhat.com>
To: Christian Brauner <christian@brauner.io>
Subject: Re: [PATCH 1/2] open: add close_range()
References: <20190521113448.20654-1-christian@brauner.io>
Date: Tue, 21 May 2019 14:09:29 +0200
In-Reply-To: <20190521113448.20654-1-christian@brauner.io> (Christian
 Brauner's message of "Tue, 21 May 2019 13:34:47 +0200")
Message-ID: <87tvdoau12.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Tue, 21 May 2019 12:09:49 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_050958_985678_FD195D19 
X-CRM114-Status: GOOD (  15.74  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, dhowells@redhat.com,
 linux-kselftest@vger.kernel.org, sparclinux@vger.kernel.org, shuah@kernel.org,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org, miklos@szeredi.hu,
 x86@kernel.org, torvalds@linux-foundation.org, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, tkjos@android.com, arnd@arndb.de,
 jannh@google.com, linux-m68k@lists.linux-m68k.org, viro@zeniv.linux.org.uk,
 tglx@linutronix.de, ldv@altlinux.org, linux-arm-kernel@lists.infradead.org,
 linux-parisc@vger.kernel.org, linux-api@vger.kernel.org, oleg@redhat.com,
 linux-alpha@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KiBDaHJpc3RpYW4gQnJhdW5lcjoKCj4gKy8qKgo+ICsgKiBfX2Nsb3NlX3JhbmdlKCkgLSBDbG9z
ZSBhbGwgZmlsZSBkZXNjcmlwdG9ycyBpbiBhIGdpdmVuIHJhbmdlLgo+ICsgKgo+ICsgKiBAZmQ6
ICAgICBzdGFydGluZyBmaWxlIGRlc2NyaXB0b3IgdG8gY2xvc2UKPiArICogQG1heF9mZDogbGFz
dCBmaWxlIGRlc2NyaXB0b3IgdG8gY2xvc2UKPiArICoKPiArICogVGhpcyBjbG9zZXMgYSByYW5n
ZSBvZiBmaWxlIGRlc2NyaXB0b3JzLiBBbGwgZmlsZSBkZXNjcmlwdG9ycwo+ICsgKiBmcm9tIEBm
ZCB1cCB0byBhbmQgaW5jbHVkaW5nIEBtYXhfZmQgYXJlIGNsb3NlZC4KPiArICovCj4gK2ludCBf
X2Nsb3NlX3JhbmdlKHN0cnVjdCBmaWxlc19zdHJ1Y3QgKmZpbGVzLCB1bnNpZ25lZCBmZCwgdW5z
aWduZWQgbWF4X2ZkKQo+ICt7Cj4gKwl1bnNpZ25lZCBpbnQgY3VyX21heDsKPiArCj4gKwlpZiAo
ZmQgPiBtYXhfZmQpCj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gKwo+ICsJcmN1X3JlYWRfbG9jaygp
Owo+ICsJY3VyX21heCA9IGZpbGVzX2ZkdGFibGUoZmlsZXMpLT5tYXhfZmRzOwo+ICsJcmN1X3Jl
YWRfdW5sb2NrKCk7Cj4gKwo+ICsJLyogY2FwIHRvIGxhc3QgdmFsaWQgaW5kZXggaW50byBmZHRh
YmxlICovCj4gKwlpZiAobWF4X2ZkID49IGN1cl9tYXgpCj4gKwkJbWF4X2ZkID0gY3VyX21heCAt
IDE7Cj4gKwo+ICsJd2hpbGUgKGZkIDw9IG1heF9mZCkKPiArCQlfX2Nsb3NlX2ZkKGZpbGVzLCBm
ZCsrKTsKPiArCj4gKwlyZXR1cm4gMDsKPiArfQoKVGhpcyBzZWVtcyByYXRoZXIgZHJhc3RpYy4g
IEhvdyBsb25nIGRvZXMgdGhpcyBibG9jayBpbiBrZXJuZWwgbW9kZT8KTWF5YmUgaXQncyBva2F5
IGFzIGxvbmcgYXMgdGhlIG1heGltdW0gcG9zc2libGUgdmFsdWUgZm9yIGN1cl9tYXggc3RheXMK
YXJvdW5kIDQgbWlsbGlvbiBvciBzby4KClNvbGFyaXMgaGFzIGFuIGZkd2FsayBmdW5jdGlvbjoK
CiAgPGh0dHBzOi8vZG9jcy5vcmFjbGUuY29tL2NkL0U4ODM1M18wMS9odG1sL0UzNzg0My9jbG9z
ZWZyb20tM2MuaHRtbD4KClNvIGEgZGlmZmVyZW50IHdheSB0byBpbXBsZW1lbnQgdGhpcyB3b3Vs
ZCBleHBvc2UgYSBuZXh0ZmQgc3lzdGVtIGNhbGwKdG8gdXNlcnNwYWNlLCBzbyB0aGF0IHdlIGNh
biB1c2UgdGhhdCB0byBpbXBsZW1lbnQgYm90aCBmZHdhbGsgYW5kCmNsb3NlZnJvbS4gIEJ1dCBt
YXliZSBmZHdhbGsgaXMganVzdCB0b28gb2JzY3VyZSwgZ2l2ZW4gdGhlIGV4aXN0ZW5jZSBvZgov
cHJvYy4KCkknbGwgaGFwcGlseSBpbXBsZW1lbnQgY2xvc2Vmcm9tIG9uIHRvcCBvZiBjbG9zZV9y
YW5nZSBpbiBnbGliYyAocGx1cwpmYWxsYmFjayBmb3Igb2xkZXIga2VybmVscyBiYXNlZCBvbiAv
cHJvY+KAlHdpdGggYW4gYWJvcnQgaW4gY2FzZSB0aGF0CmRvZXNuJ3Qgd29yayBiZWNhdXNlIHRo
ZSBSTElNSVRfTk9GSUxFIGhhY2sgaXMgdW5yZWxpYWJsZQp1bmZvcnR1bmF0ZWx5KS4KClRoYW5r
cywKRmxvcmlhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
