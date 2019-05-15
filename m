Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D025A1F77D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 17:30:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Date:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2PCzJaMtu1uG+y9fVdrRAsJXuCaJgkMFbgVSAXC6Yzw=; b=AbfiBfyHsMNfRz
	TMZKTGCx8v6TbJwZRtbzBEPrj8j5AOpweNT+eW7NKaT2Ot15/0Wbi6FUMf3iG8Hpl4zlohmPaU0Jq
	x3kbp1IpFdwHC7kL5arWtDsDVI9qY9SDg3/VYTLkLb7vY0MYHhZbBcubgnuGydc4//rUsZhpSCcPF
	YTk383h71zsyo/KX6pOmCfjvyvV8UDLOLezgaqkk37ltlphs+5jS28oxw6aufQJIxa2X7OOlQmlJy
	eEpwPAcVdW1s/r92dtRlWu2aQ6d2jtSI3UFvandOHu5qGM02S3xOHiJ2m7sLXqBvhIROjA/wqDN+g
	29OdmAF3k0R4ikIqgFdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQvrb-0007FA-KC; Wed, 15 May 2019 15:30:39 +0000
Received: from [2001:bc8:3541:100::1] (helo=ou.quest-ce.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQvrT-0007Eg-NF
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 15:30:33 +0000
Received: from [2a01:e35:39f2:1220:2452:dd6c:fe2f:be2c] (helo=opteyam2)
 by ou.quest-ce.net with esmtpsa (TLS1.1:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <ydroneaud@opteya.com>)
 id 1hQvqH-0005C0-ER; Wed, 15 May 2019 17:29:17 +0200
Message-ID: <7afb23699142a3a15f06afde43506458a58614a6.camel@opteya.com>
From: Yann Droneaud <ydroneaud@opteya.com>
To: Christian Brauner <christian@brauner.io>
Date: Wed, 15 May 2019 17:29:16 +0200
In-Reply-To: <20190515141634.lrc5ynllcmjr64mn@brauner.io>
References: <20190515100400.3450-1-christian@brauner.io>
 <4c5ae46657e1931a832def5645db61eb0bf1accd.camel@opteya.com>
 <20190515141634.lrc5ynllcmjr64mn@brauner.io>
Organization: OPTEYA
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a01:e35:39f2:1220:2452:dd6c:fe2f:be2c
X-SA-Exim-Mail-From: ydroneaud@opteya.com
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on ou.quest-ce.net
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham version=3.3.2
Subject: Re: [PATCH 1/2] pid: add pidfd_open()
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on ou.quest-ce.net)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_083031_896693_92D15F90 
X-CRM114-Status: GOOD (  23.58  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
 linux-kselftest@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-api@vger.kernel.org, elena.reshetova@intel.com,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, keescook@chromium.org, arnd@arndb.de,
 jannh@google.com, linux-m68k@lists.linux-m68k.org, viro@zeniv.linux.org.uk,
 luto@kernel.org, oleg@redhat.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 cyphar@cyphar.com, torvalds@linux-foundation.org, linux-mips@vger.kernel.org,
 luto@amacapital.net, ebiederm@xmission.com, linux-alpha@vger.kernel.org,
 akpm@linux-foundation.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpMZSBtZXJjcmVkaSAxNSBtYWkgMjAxOSDDoCAxNjoxNiArMDIwMCwgQ2hyaXN0aWFuIEJy
YXVuZXIgYSDDqWNyaXQgOgo+IE9uIFdlZCwgTWF5IDE1LCAyMDE5IGF0IDA0OjAwOjIwUE0gKzAy
MDAsIFlhbm4gRHJvbmVhdWQgd3JvdGU6Cj4gPiBMZSBtZXJjcmVkaSAxNSBtYWkgMjAxOSDDoCAx
MjowMyArMDIwMCwgQ2hyaXN0aWFuIEJyYXVuZXIgYSDDqWNyaXQgOgo+ID4gPiBkaWZmIC0tZ2l0
IGEva2VybmVsL3BpZC5jIGIva2VybmVsL3BpZC5jCj4gPiA+IGluZGV4IDIwODgxNTk4YmRmYS4u
MjM3ZDE4ZDZlY2I4IDEwMDY0NAo+ID4gPiAtLS0gYS9rZXJuZWwvcGlkLmMKPiA+ID4gKysrIGIv
a2VybmVsL3BpZC5jCj4gPiA+IEBAIC00NTEsNiArNDUyLDUzIEBAIHN0cnVjdCBwaWQgKmZpbmRf
Z2VfcGlkKGludCBuciwgc3RydWN0Cj4gPiA+IHBpZF9uYW1lc3BhY2UgKm5zKQo+ID4gPiAgCXJl
dHVybiBpZHJfZ2V0X25leHQoJm5zLT5pZHIsICZucik7Cj4gPiA+ICB9Cj4gPiA+ICAKPiA+ID4g
Ky8qKgo+ID4gPiArICogcGlkZmRfb3BlbigpIC0gT3BlbiBuZXcgcGlkIGZpbGUgZGVzY3JpcHRv
ci4KPiA+ID4gKyAqCj4gPiA+ICsgKiBAcGlkOiAgIHBpZCBmb3Igd2hpY2ggdG8gcmV0cmlldmUg
YSBwaWRmZAo+ID4gPiArICogQGZsYWdzOiBmbGFncyB0byBwYXNzCj4gPiA+ICsgKgo+ID4gPiAr
ICogVGhpcyBjcmVhdGVzIGEgbmV3IHBpZCBmaWxlIGRlc2NyaXB0b3Igd2l0aCB0aGUgT19DTE9F
WEVDIGZsYWcgc2V0IGZvcgo+ID4gPiArICogdGhlIHByb2Nlc3MgaWRlbnRpZmllZCBieSBAcGlk
LiBDdXJyZW50bHksIHRoZSBwcm9jZXNzIGlkZW50aWZpZWQgYnkKPiA+ID4gKyAqIEBwaWQgbXVz
dCBiZSBhIHRocmVhZC1ncm91cCBsZWFkZXIuIFRoaXMgcmVzdHJpY3Rpb24gY3VycmVudGx5IGV4
aXN0cwo+ID4gPiArICogZm9yIGFsbCBhc3BlY3RzIG9mIHBpZGZkcyBpbmNsdWRpbmcgcGlkZmQg
Y3JlYXRpb24gKENMT05FX1BJREZEIGNhbm5vdAo+ID4gPiArICogYmUgdXNlZCB3aXRoIENMT05F
X1RIUkVBRCkgYW5kIHBpZGZkIHBvbGxpbmcgKG9ubHkgc3VwcG9ydHMgdGhyZWFkIGdyb3VwCj4g
PiA+ICsgKiBsZWFkZXJzKS4KPiA+ID4gKyAqCj4gPiAKPiA+IFdvdWxkIGl0IGJlIHBvc3NpYmxl
IHRvIGNyZWF0ZSBmaWxlIGRlc2NyaXB0b3Igd2l0aCAicmVzdHJpY3RlZCIKPiA+IG9wZXJhdGlv
biA/Cj4gPiAKPiA+IC0gT19SRE9OTFk6IHdhaXRpbmcgZm9yIHByb2Nlc3MgY29tcGxldGlvbiBh
bGxvd2VkIChmb3IgZXhhbXBsZSkKPiA+IC0gT19XUk9OTFk6IHNlbmRpbmcgcHJvY2VzcyBzaWdu
YWwgYWxsb3dlZAo+IAo+IFllcywgc29tZXRoaW5nIGxpa2UgdGhpcyBpcyBsaWtlbHkgZ29pbmcg
dG8gYmUgcG9zc2libGUgaW4gdGhlIGZ1dHVyZS4KPiBXZSBoYWQgZGlzY3Vzc2lvbiBhcm91bmQg
dGhpcy4gQnV0IG1hcHBpbmcgdGhpcyB0byBPX1JET05MWSBhbmQgT19XUk9OTFkKPiBpcyBub3Qg
dGhlIHJpZ2h0IG1vZGVsLiBJdCBtYWtlcyBtb3JlIHNlbnNlIHRvIGhhdmUgc3BlY2lhbGl6ZWQg
ZmxhZ3MKPiB0aGF0IHJlc3RyaWN0IGFjdGlvbnMuCgpZZXMsIGRlZGljYXRlZCBmbGFncyBhcmUg
dGhlIHdheSB0byBnby4gSSd2ZSB1c2VkIHRoZSBvbGQgb3BlbigpIGZsYWdzCmhlcmUgYXMgZXhh
bXBsZXMgYXMgYW4gZWNobyBvZiB0aGUgT19DTE9FWEVDIGZsYWcgdXNlZCBpbiB0aGUgY29tbWVu
dC4KCj4gPiBGb3IgZXhhbXBsZSwgYSBwcm9jZXNzIGNvdWxkIHNlbmQgb3ZlciBhIFVuaXggc29j
a2V0IGEgcHJvY2VzcyBhIHBpZGZkLAo+ID4gYWxsb3dpbmcgdGhpcyB0byBvbmx5IHdhaXQgZm9y
IGNvbXBsZXRpb24sIGJ1dCBub3Qgc2VuZGluZyBzaWduYWwgPwo+ID4gCj4gPiBJIHNlZSB0aGUg
cGVybWlzc2lvbiBjaGVjayBpcyBub3QgZG9uZSBpbiBwaWRmZF9vcGVuKCksIHNvIHdoYXQgcHJl
dmVudAo+ID4gYSB1c2VyIGZyb20gc2VuZGluZyBhIHNpZ25hbCB0byBhbm90aGVyIHVzZXIgb3du
ZWQgcHJvY2VzcyA/Cj4gCj4gVGhhdCdzIHN1cHBvc2VkIHRvIGJlIHBvc3NpYmxlLiBZb3UgY2Fu
IGRvIHRoZSBzYW1lIHJpZ2h0IG5vdyBhbHJlYWR5Cj4gd2l0aCBwaWRzLiBUb29scyBsaWtlIExN
SyBuZWVkIHRoaXMgcHJvYmFibHkgdmVyeSBtdWNoLgo+IFBlcm1pc3Npb24gY2hlY2tpbmcgZm9y
IHNpZ25hbHMgaXMgZG9uZSBhdCBzZW5kIHRpbWUgcmlnaHQgbm93Lgo+IEFuZCBpZiB5b3UgY2Fu
J3Qgc2lnbmFsIHZpYSBhIHBpZCB5b3UgY2FuJ3Qgc2lnbmFsIHZpYSBhIHBpZGZkIGFzCj4gdGhl
eSdyZSBib3RoIHN1YmplY3QgdG8gdGhlIHNhbWUgcGVybWlzc2lvbnMgY2hlY2tzLgo+IAoKSSB3
b3VsZCBoYXZlIGV4cGVjdCBpdCB0byBiZWhhdmUgbGlrZSBtb3N0IG90aGVyIGZpbGUgZGVzY3Jp
cHRvciwKcGVybWlzc2lvbiBjaGVjayBkb25lIGF0IG9wZW5pbmcgdGltZSwgd2hpY2ggYWxsb3cg
bW9yZSBwcml2aWxlZ2VkCnByb2Nlc3MgdG8gb3BlbiB0aGUgZmlsZSBkZXNjcmlwdG9yLCB0aGVu
IHBhc3MgaXQgdG8gYSBsZXNzIHByaXZpbGVnZWQKcHJvY2Vzcywgb3IgY2hhbmdlIGl0cyBvd24g
cHJpdmlsZWdlZCB3aXRoIHNldHVpZCgpIGFuZCBzdWNoLiBUaGVuIHRoZQpsZXNzIHByaXZpbGVn
ZWQgcHJvY2VzcyBjYW4gYWN0IG9uIGJlaGFsZiBvZiB0aGUgcHJpdmlsZWdlZCBwcm9jZXNzCnRo
cm91Z2ggdGhlIGZpbGUgZGVzY3JpcHRvci4KCj4gPiBJZiBpdCdzIGluIHBpZGZkX3NlbmRfc2ln
bmFsKCksIHRoZW4sIHBhc3NpbmcgdGhlIHNvY2tldCB0aHJvdWdoCj4gPiBTQ01fUklHSFQgd29u
J3QgYmUgdXNlZnVsIGlmIHRoZSB0YXJnZXQgcHJvY2VzcyBpcyBub3Qgb3duZWQgYnkgdGhlCj4g
PiBzYW1lIHVzZXIsIG9yIHJvb3QuCj4gPiAKCklmIHRoZSBwZXJtaXNzaW9uIGNoZWNrIGlzIGRv
bmUgYXQgc2VuZGluZyB0aW1lLCB0aGUgc2NlbmFyaW8gYWJvdmUKY2FzZSBjYW5ub3QgYmUgaW1w
bGVtZW50ZWQuCgpTZW5kaW5nIGEgcGlkZmQgdGhyb3VnaCBTQ01fUklHSFQgaXMgb25seSB1c2Vm
dWwgaWYgdGhlIHJlY2VpdmVyCnByb2Nlc3MgaXMgZXF1YWxseSBvciBtb3JlIHByaXZpbGVnZWQg
dGhhbiB0aGUgc2VuZGVyIHRoZW4uCgpGb3IgaXNvbGF0aW9uIHB1cnBvc2UsIEkgd291bGQgaGF2
ZSBleHBlY3QgdG8gYmUgYWJsZSB0byBnaXZlIGEgcmlnaHQKdG8gc2VuZCBhIHNpZ25hbCB0byBh
IGhpZ2hseSBwcml2aWxlZ2VkIHByb2Nlc3MgYSBzcGVjaWZpYyBsZXNzCnByaXZpbGVnZWQgcHJv
Y2VzcyB0aG91Z2ggVW5peCBzb2NrZXQuCgpCdXQgSSBjYW4ndCBjb21lIHVwIHdpdGggYSBzcGVj
aWZpYyB1c2UgY2FzZS4gU28gSSBkdW5uby4KClJlZ2FyZHMuCgotLSAKWWFubiBEcm9uZWF1ZApP
UFRFWUEKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
