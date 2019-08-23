Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC689B178
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 15:56:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UHafhtMiUAFU5QrVMSdvpTExPA6Ryzpp9tykDvwheLY=; b=B+REsakGzLbi5r
	uJOrC30ATYjkFN+e9UeMYwiaiUfZvLARIV6rgMXDNPd+RJZ0UV1U3GLCkSrswLHW2QOpq9RVRo3yB
	lL0o87QyGYBKsTy6oKZPx+x+NzjzGrMWQWiUhU9Xl9ZvB8DFEv/2AB92AmXFUJJ7AY/FTP3QqTDAj
	gDEQ+FPJKISu/rMu0QebLsiiIoIrTsqVdV+FakReAHJ5pnuzSotv0kQahu3eFPL2K8Ib79xk2nFqf
	Goyz7P3abTJD9xHpcyMG8XBQtmt2XRv9r4B6kzK69W+y8AJ6ZM2Zq2L0uXxVdOrjlE+w1FtozFgGP
	WdjCX+HTCYR4PIzjeE2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1A3J-0003bA-5J; Fri, 23 Aug 2019 13:56:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i1A38-0003N9-R7
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 13:56:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EBE6B28;
 Fri, 23 Aug 2019 06:56:17 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 310B13F718;
 Fri, 23 Aug 2019 06:56:13 -0700 (PDT)
Subject: Re: [PATCH v18 15/15] selftests, arm64: add a selftest for passing
 tagged pointers to kernel
To: Andrey Konovalov <andreyknvl@google.com>,
 linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org,
 linux-media@vger.kernel.org, kvm@vger.kernel.org,
 linux-kselftest@vger.kernel.org
References: <cover.1561386715.git.andreyknvl@google.com>
 <0999c80cd639b78ae27c0674069d552833227564.1561386715.git.andreyknvl@google.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <6af3f619-4356-2f67-ed76-92beceb1e0a0@arm.com>
Date: Fri, 23 Aug 2019 14:56:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <0999c80cd639b78ae27c0674069d552833227564.1561386715.git.andreyknvl@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_065618_965159_B5E89489 
X-CRM114-Status: GOOD (  27.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>, Khalid Aziz <khalid.aziz@oracle.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmV5CgpPbiAyNC8wNi8yMDE5IDE1OjMzLCBBbmRyZXkgS29ub3ZhbG92IHdyb3RlOgo+
IFRoaXMgcGF0Y2ggaXMgYSBwYXJ0IG9mIGEgc2VyaWVzIHRoYXQgZXh0ZW5kcyBrZXJuZWwgQUJJ
IHRvIGFsbG93IHRvIHBhc3MKPiB0YWdnZWQgdXNlciBwb2ludGVycyAod2l0aCB0aGUgdG9wIGJ5
dGUgc2V0IHRvIHNvbWV0aGluZyBlbHNlIG90aGVyIHRoYW4KPiAweDAwKSBhcyBzeXNjYWxsIGFy
Z3VtZW50cy4KPiAKPiBUaGlzIHBhdGNoIGFkZHMgYSBzaW1wbGUgdGVzdCwgdGhhdCBjYWxscyB0
aGUgdW5hbWUgc3lzY2FsbCB3aXRoIGEKPiB0YWdnZWQgdXNlciBwb2ludGVyIGFzIGFuIGFyZ3Vt
ZW50LiBXaXRob3V0IHRoZSBrZXJuZWwgYWNjZXB0aW5nIHRhZ2dlZAo+IHVzZXIgcG9pbnRlcnMg
dGhlIHRlc3QgZmFpbHMgd2l0aCBFRkFVTFQuCj4gCj4gU2lnbmVkLW9mZi1ieTogQW5kcmV5IEtv
bm92YWxvdiA8YW5kcmV5a252bEBnb29nbGUuY29tPgo+IC0tLQo+ICB0b29scy90ZXN0aW5nL3Nl
bGZ0ZXN0cy9hcm02NC8uZ2l0aWdub3JlICAgICAgfCAgMSArCj4gIHRvb2xzL3Rlc3Rpbmcvc2Vs
ZnRlc3RzL2FybTY0L01ha2VmaWxlICAgICAgICB8IDExICsrKysrKysKPiAgLi4uL3Rlc3Rpbmcv
c2VsZnRlc3RzL2FybTY0L3J1bl90YWdzX3Rlc3Quc2ggIHwgMTIgKysrKysrKysKPiAgdG9vbHMv
dGVzdGluZy9zZWxmdGVzdHMvYXJtNjQvdGFnc190ZXN0LmMgICAgIHwgMjkgKysrKysrKysrKysr
KysrKysrKwo+ICA0IGZpbGVzIGNoYW5nZWQsIDUzIGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2FybTY0Ly5naXRpZ25vcmUKPiAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2FybTY0L01ha2VmaWxlCj4g
IGNyZWF0ZSBtb2RlIDEwMDc1NSB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9hcm02NC9ydW5fdGFn
c190ZXN0LnNoCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9h
cm02NC90YWdzX3Rlc3QuYwoKQWZ0ZXIgYnVpbGRpbmcgYSBmcmVzaCBLZXJuZWwgZnJvbSBhcm02
NC9mb3ItbmV4dC1jb3JlIGZyb20gc2NyYXRjaCBhdDoKCmNvbW1pdCAyMzlhYjY1OGJlYTNiMzg3
NDI0NTAxZTdjNDE2NjQwZDY3NTJkYzBjIApNZXJnZTogNmJmYTMxMzRiZDNhIDQyZDAzOGM0ZmIw
MCAxMjQzY2I2YTY3NmYgZDU1YzVmMjhhZmFmIGQwNmZhNWExMThmMSAzNGI1NTYwZGI0MGQKQXV0
aG9yOiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPgpEYXRlOiAgIFRodSBBdWcgMjIgMTg6
MjM6NTMgMjAxOSArMDEwMAoKICAgIE1lcmdlIGJyYW5jaGVzICdmb3ItbmV4dC9lcnJvci1pbmpl
Y3Rpb24nLCAnZm9yLW5leHQvdGJpJywgJ2Zvci1uZXh0L3BzY2ktY3B1aWRsZScsICdmb3ItbmV4
dC9jcHUtdG9wb2xvZ3knIGFuZCAnZm9yLW5leHQvNTItYml0LWt2YScgaW50byBmb3ItbmV4dC9j
b3JlCgoKS1NGVCBhcm02NCB0ZXN0cyBidWlsZCBpcyBicm9rZW4gZm9yIG1lLCBib3RoIHNldHRp
bmcgb3Igbm90IEtCVUlMRF9PVVRQVVQ9CgoxMzozMCAkIG1ha2UgVEFSR0VUUz1hcm02NCBrc2Vs
ZnRlc3QtY2xlYW4gICAgICAgICAgICAgICAgICAgICAgIAptYWtlWzFdOiBFbnRlcmluZyBkaXJl
Y3RvcnkgJy9ob21lL2NyaW1hcjAxL0FSTS9kZXYvc3JjL3Bkc3cvb3V0X2xpbnV4JwpybSAtZiAt
ciAvaG9tZS9jcmltYXIwMS9BUk0vZGV2L3NyYy9wZHN3L291dF9saW51eC8va3NlbGZ0ZXN0L2Fy
bTY0L3RhZ3NfdGVzdAptYWtlWzFdOiBMZWF2aW5nIGRpcmVjdG9yeSAnL2hvbWUvY3JpbWFyMDEv
QVJNL2Rldi9zcmMvcGRzdy9vdXRfbGludXgnCgrinJQgfi9BUk0vZGV2L3NyYy9wZHN3L2xpbnV4
IFthcm02NF9mb3JfbmV4dF9jb3JlfOKApjjimpEgMjNdCgoxMzozMCAkIG1ha2UgVEFSR0VUUz1h
cm02NCBrc2VsZnRlc3QgICAgICAgICAgICAgICAgICAKbWFrZVsxXTogRW50ZXJpbmcgZGlyZWN0
b3J5ICcvaG9tZS9jcmltYXIwMS9BUk0vZGV2L3NyYy9wZHN3L291dF9saW51eCcKYXJjaC9hcm02
NC9NYWtlZmlsZTo1NjogQ1JPU1NfQ09NUElMRV9DT01QQVQgbm90IGRlZmluZWQgb3IgZW1wdHks
IHRoZSBjb21wYXQgdkRTTyB3aWxsIG5vdCBiZSBidWlsdAptYWtlIC0tbm8tYnVpbHRpbi1ydWxl
cyBJTlNUQUxMX0hEUl9QQVRIPSRCVUlMRC91c3IgXAogICAgICAgIEFSQ0g9YXJtNjQgLUMgLi4v
Li4vLi4gaGVhZGVyc19pbnN0YWxsICAgICAgICAgICAgIAogIEhPU1RDQyAgc2NyaXB0cy9iYXNp
Yy9maXhkZXAgICAgICAgICAgICAgICAgICAgICAKICBIT1NUQ0MgIHNjcmlwdHMvdW5pZmRlZiAg
ICAgICAgICAgICAgICAgICAgICAgICAKLi4uCi4uLgogIEhEUklOU1QgdXNyL2luY2x1ZGUvYXNt
L21zZ2J1Zi5oCiAgSERSSU5TVCB1c3IvaW5jbHVkZS9hc20vc2htYnVmLmgKICBJTlNUQUxMIC9o
b21lL2NyaW1hcjAxL0FSTS9kZXYvc3JjL3Bkc3cvb3V0X2xpbnV4Ly9rc2VsZnRlc3QvdXNyL2lu
Y2x1ZGUKL29wdC90b29sY2hhaW5zL2djYy1hcm0tOC4zLTIwMTkuMDMteDg2XzY0LWFhcmNoNjQt
bGludXgtZ251L2Jpbi9hYXJjaDY0LWxpbnV4LWdudS1nY2MgICAgIHRhZ3NfdGVzdC5jICAtbyAv
aG9tZS9jcmltYXIwMS9BUk0vZGV2L3NyYy9wZHN3L291dF9saW51eC8va3NlbGZ0ZXN0L2FybTY0
L3RhZ3NfdGVzdAp0YWdzX3Rlc3QuYzogSW4gZnVuY3Rpb24g4oCYbWFpbuKAmToKdGFnc190ZXN0
LmM6MjE6MTI6IGVycm9yOiDigJhQUl9TRVRfVEFHR0VEX0FERFJfQ1RSTOKAmSB1bmRlY2xhcmVk
IChmaXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlvbik7IGRpZCB5b3UgbWVhbiDigJhQUl9HRVRfVElE
X0FERFJFU1PigJk/CiAgaWYgKHByY3RsKFBSX1NFVF9UQUdHRURfQUREUl9DVFJMLCBQUl9UQUdH
RURfQUREUl9FTkFCTEUsIDAsIDAsIDApID09IDApCiAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+CiAgICAgICAgICAgIFBSX0dFVF9USURfQUREUkVTUwp0YWdzX3Rlc3QuYzoyMTox
Mjogbm90ZTogZWFjaCB1bmRlY2xhcmVkIGlkZW50aWZpZXIgaXMgcmVwb3J0ZWQgb25seSBvbmNl
IGZvciBlYWNoIGZ1bmN0aW9uIGl0IGFwcGVhcnMgaW4KdGFnc190ZXN0LmM6MjE6Mzc6IGVycm9y
OiDigJhQUl9UQUdHRURfQUREUl9FTkFCTEXigJkgdW5kZWNsYXJlZCAoZmlyc3QgdXNlIGluIHRo
aXMgZnVuY3Rpb24pOyBkaWQgeW91IG1lYW4g4oCYUFJfR0VUX0RVTVBBQkxF4oCZPwogIGlmIChw
cmN0bChQUl9TRVRfVEFHR0VEX0FERFJfQ1RSTCwgUFJfVEFHR0VEX0FERFJfRU5BQkxFLCAwLCAw
LCAwKSA9PSAwKQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+
fn5+fn5+fn5+fn5+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQUl9HRVRf
RFVNUEFCTEUKLi4vbGliLm1rOjEzODogcmVjaXBlIGZvciB0YXJnZXQgJy9ob21lL2NyaW1hcjAx
L0FSTS9kZXYvc3JjL3Bkc3cvb3V0X2xpbnV4Ly9rc2VsZnRlc3QvYXJtNjQvdGFnc190ZXN0JyBm
YWlsZWQKbWFrZVszXTogKioqIFsvaG9tZS9jcmltYXIwMS9BUk0vZGV2L3NyYy9wZHN3L291dF9s
aW51eC8va3NlbGZ0ZXN0L2FybTY0L3RhZ3NfdGVzdF0gRXJyb3IgMQpNYWtlZmlsZToxMzY6IHJl
Y2lwZSBmb3IgdGFyZ2V0ICdhbGwnIGZhaWxlZAptYWtlWzJdOiAqKiogW2FsbF0gRXJyb3IgMgov
aG9tZS9jcmltYXIwMS9BUk0vZGV2L3NyYy9wZHN3L2xpbnV4L01ha2VmaWxlOjEyMzc6IHJlY2lw
ZSBmb3IgdGFyZ2V0ICdrc2VsZnRlc3QnIGZhaWxlZAptYWtlWzFdOiAqKiogW2tzZWxmdGVzdF0g
RXJyb3IgMgptYWtlWzFdOiBMZWF2aW5nIGRpcmVjdG9yeSAnL2hvbWUvY3JpbWFyMDEvQVJNL2Rl
di9zcmMvcGRzdy9vdXRfbGludXgnCk1ha2VmaWxlOjE3OTogcmVjaXBlIGZvciB0YXJnZXQgJ3N1
Yi1tYWtlJyBmYWlsZWQKbWFrZTogKioqIFtzdWItbWFrZV0gRXJyb3IgMgoKRGVzcGl0ZSBzZWVp
bmcgS1NGVCBpbnN0YWxsaW5nIEtlcm5lbCBIZWFkZXJzLCB0aGV5IGNhbm5vdCBiZSBmb3VuZC4K
CkZpeGluZyB0aGlzIHBhdGNoIGxpa2UgdGhpcyBtYWtlIGl0IHdvcmsgZm9yIG1lOgoKZGlmZiAt
LWdpdCBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2FybTY0L01ha2VmaWxlIGIvdG9vbHMvdGVz
dGluZy9zZWxmdGVzdHMvYXJtNjQvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgCmluZGV4IGE2MWIyZTc0M2U5OS4uZjlmNzlmYjI3MmYwIDEwMDY0NCAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgCi0tLSBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2FybTY0L01ha2Vm
aWxlICAgCisrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2FybTY0L01ha2VmaWxlICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKQEAgLTQsNiAr
NCw3IEBAICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAKIEFSQ0ggPz0gJChzaGVsbCB1bmFtZSAtbSAyPi9kZXYvbnVs
bCB8fCBlY2hvIG5vdCkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAKIGlmbmVxICgsJChmaWx0ZXIgJChBUkNIKSxhYXJjaDY0IGFybTY0KSkgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAorQ0ZMQUdTICs9IC1JLi4vLi4vLi4vLi4v
dXNyL2luY2x1ZGUvICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgCiBURVNUX0dFTl9QUk9HUyA6PSB0YWdzX3Rlc3QgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgCiBURVNUX1BST0dTIDo9IHJ1bl90YWdzX3Rlc3Quc2gg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKIGVuZGlmICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAoKYnV0IGlzIG5v
dCByZWFsbHkgYSBwcm9wZXIgZml4IHNpbmNlIGl0IGRvZXMgTk9UIGFjY291bnQgZm9yIGNhc2Ug
aW4gd2hpY2ggeW91IGhhdmUKaW5zdGFsbGVkIHRoZSBLZXJuZWwgSGVhZGVycyBpbiBhIG5vbiBz
dGFuZGFyZCBsb2NhdGlvbiBsaWtlIHdoZW4geW91IHVzZSBLQlVJTERfT1VUUFVULgoKQW0gSSBt
aXNzaW5nIHNvbWV0aGluZyA/CgpUaGFua3MKCkNyaXN0aWFuCgo+IAo+IGRpZmYgLS1naXQgYS90
b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9hcm02NC8uZ2l0aWdub3JlIGIvdG9vbHMvdGVzdGluZy9z
ZWxmdGVzdHMvYXJtNjQvLmdpdGlnbm9yZQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXgg
MDAwMDAwMDAwMDAwLi5lOGZhZThkNjFlZDYKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvdG9vbHMv
dGVzdGluZy9zZWxmdGVzdHMvYXJtNjQvLmdpdGlnbm9yZQo+IEBAIC0wLDAgKzEgQEAKPiArdGFn
c190ZXN0Cj4gZGlmZiAtLWdpdCBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2FybTY0L01ha2Vm
aWxlIGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYXJtNjQvTWFrZWZpbGUKPiBuZXcgZmlsZSBt
b2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uYTYxYjJlNzQzZTk5Cj4gLS0tIC9kZXYv
bnVsbAo+ICsrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2FybTY0L01ha2VmaWxlCj4gQEAg
LTAsMCArMSwxMSBAQAo+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4gKwo+
ICsjIEFSQ0ggY2FuIGJlIG92ZXJyaWRkZW4gYnkgdGhlIHVzZXIgZm9yIGNyb3NzIGNvbXBpbGlu
Zwo+ICtBUkNIID89ICQoc2hlbGwgdW5hbWUgLW0gMj4vZGV2L251bGwgfHwgZWNobyBub3QpCj4g
Kwo+ICtpZm5lcSAoLCQoZmlsdGVyICQoQVJDSCksYWFyY2g2NCBhcm02NCkpCj4gK1RFU1RfR0VO
X1BST0dTIDo9IHRhZ3NfdGVzdAo+ICtURVNUX1BST0dTIDo9IHJ1bl90YWdzX3Rlc3Quc2gKPiAr
ZW5kaWYKPiArCj4gK2luY2x1ZGUgLi4vbGliLm1rCj4gZGlmZiAtLWdpdCBhL3Rvb2xzL3Rlc3Rp
bmcvc2VsZnRlc3RzL2FybTY0L3J1bl90YWdzX3Rlc3Quc2ggYi90b29scy90ZXN0aW5nL3NlbGZ0
ZXN0cy9hcm02NC9ydW5fdGFnc190ZXN0LnNoCj4gbmV3IGZpbGUgbW9kZSAxMDA3NTUKPiBpbmRl
eCAwMDAwMDAwMDAwMDAuLjc0NWYxMTM3OTkzMAo+IC0tLSAvZGV2L251bGwKPiArKysgYi90b29s
cy90ZXN0aW5nL3NlbGZ0ZXN0cy9hcm02NC9ydW5fdGFnc190ZXN0LnNoCj4gQEAgLTAsMCArMSwx
MiBAQAo+ICsjIS9iaW4vc2gKPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+
ICsKPiArZWNobyAiLS0tLS0tLS0tLS0tLS0tLS0tLS0iCj4gK2VjaG8gInJ1bm5pbmcgdGFncyB0
ZXN0Igo+ICtlY2hvICItLS0tLS0tLS0tLS0tLS0tLS0tLSIKPiArLi90YWdzX3Rlc3QKPiAraWYg
WyAkPyAtbmUgMCBdOyB0aGVuCj4gKwllY2hvICJbRkFJTF0iCj4gK2Vsc2UKPiArCWVjaG8gIltQ
QVNTXSIKPiArZmkKPiBkaWZmIC0tZ2l0IGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYXJtNjQv
dGFnc190ZXN0LmMgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9hcm02NC90YWdzX3Rlc3QuYwo+
IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi4yMmExYjI2NmUzNzMK
PiAtLS0gL2Rldi9udWxsCj4gKysrIGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYXJtNjQvdGFn
c190ZXN0LmMKPiBAQCAtMCwwICsxLDI5IEBACj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiBHUEwtMi4wCj4gKwo+ICsjaW5jbHVkZSA8c3RkaW8uaD4KPiArI2luY2x1ZGUgPHN0ZGxpYi5o
Pgo+ICsjaW5jbHVkZSA8dW5pc3RkLmg+Cj4gKyNpbmNsdWRlIDxzdGRpbnQuaD4KPiArI2luY2x1
ZGUgPHN5cy9wcmN0bC5oPgo+ICsjaW5jbHVkZSA8c3lzL3V0c25hbWUuaD4KPiArCj4gKyNkZWZp
bmUgU0hJRlRfVEFHKHRhZykJCSgodWludDY0X3QpKHRhZykgPDwgNTYpCj4gKyNkZWZpbmUgU0VU
X1RBRyhwdHIsIHRhZykJKCgodWludDY0X3QpKHB0cikgJiB+U0hJRlRfVEFHKDB4ZmYpKSB8IFwK
PiArCQkJCQlTSElGVF9UQUcodGFnKSkKPiArCj4gK2ludCBtYWluKHZvaWQpCj4gK3sKPiArCXN0
YXRpYyBpbnQgdGJpX2VuYWJsZWQgPSAwOwo+ICsJc3RydWN0IHV0c25hbWUgKnB0ciwgKnRhZ2dl
ZF9wdHI7Cj4gKwlpbnQgZXJyOwo+ICsKPiArCWlmIChwcmN0bChQUl9TRVRfVEFHR0VEX0FERFJf
Q1RSTCwgUFJfVEFHR0VEX0FERFJfRU5BQkxFLCAwLCAwLCAwKSA9PSAwKQo+ICsJCXRiaV9lbmFi
bGVkID0gMTsKPiArCXB0ciA9IChzdHJ1Y3QgdXRzbmFtZSAqKW1hbGxvYyhzaXplb2YoKnB0cikp
Owo+ICsJaWYgKHRiaV9lbmFibGVkKQo+ICsJCXRhZ2dlZF9wdHIgPSAoc3RydWN0IHV0c25hbWUg
KilTRVRfVEFHKHB0ciwgMHg0Mik7Cj4gKwllcnIgPSB1bmFtZSh0YWdnZWRfcHRyKTsKPiArCWZy
ZWUocHRyKTsKPiArCj4gKwlyZXR1cm4gZXJyOwo+ICt9Cj4gCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
