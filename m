Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F0DEDBE1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 10:48:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=naMUJdwkTsmMuPs/d/KQjv58mIev4PMVfePH1DNEU5U=; b=ezRFyKJLipdZzG
	FqBIwWtnIgIIYtUGb4YWSZO1ZyljEqOi60Uj75WAtVwUGD0P6hNA9Fqg8+INLFC3k9Fd1X7tui9n7
	haUNkziR464iM0Ud4IenZoWPlX8rp6NfYNPATeYMa4CLsF/rgyJ55DO/qjMxIrF+DD13ZIS4m9f2I
	SJhXppYrP3OUOV1Bl0rs8AZF6wwlvSroGelZ3q5Mb4Mk8hu4M7aUJXGNsusZhvA1iSHEAQwu40TIL
	qaPKhOpbIUME8OCJoH6lWAp/plfy+SCVx6exSPl/CPvKlu4mUcKuH+OhzZa09+rgsuv83SWkwIgfQ
	KV3uc+B3u9qB1xVXpPTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRYy4-0001xo-Cv; Mon, 04 Nov 2019 09:48:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRYxv-0001xC-WE; Mon, 04 Nov 2019 09:48:05 +0000
Received: from rapoport-lnx (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 703FA222D2;
 Mon,  4 Nov 2019 09:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572860881;
 bh=jF2dTw4x+geuuqWT+rNLEAExdkU6oqK6ll5Aip/G7wo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yIO+RdRi15/vhMR8gf577AKF/lpxu4XVhUJZy1DLQjBpIac45yVLkW8bxFv1JrMxI
 yZ1wC+sVzO1/hBGimU5x16z9OqkqLi949PDdXnnhKpHXL9oAbagRWpOMkzhiQoM5bs
 EavnCVX+JUJOuq3PVNevDE54nL9/PZK4/k8P5qpU=
Date: Mon, 4 Nov 2019 11:47:49 +0200
From: Mike Rapoport <rppt@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v3 05/13] m68k: mm: use pgtable-nopXd instead of
 4level-fixup
Message-ID: <20191104094748.GB23288@rapoport-lnx>
References: <1572850587-20314-1-git-send-email-rppt@kernel.org>
 <1572850587-20314-6-git-send-email-rppt@kernel.org>
 <CAMuHMdUG3V7uxzhbetw75vVeobeP0-bQySb3r=0V5XujUF123g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdUG3V7uxzhbetw75vVeobeP0-bQySb3r=0V5XujUF123g@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_014804_083103_451BCFDE 
X-CRM114-Status: GOOD (  28.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Linux MM <linux-mm@kvack.org>, sparclinux <sparclinux@vger.kernel.org>,
 Rolf Eike Beer <eike-kernel@sf-tec.de>, Vincent Chen <deanbo422@gmail.com>,
 Greg Ungerer <gerg@linux-m68k.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Linux-Arch <linux-arch@vger.kernel.org>, linux-c6x-dev@linux-c6x.org,
 Richard Weinberger <richard@nod.at>, Helge Deller <deller@gmx.de>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Mark Salter <msalter@redhat.com>, Matt Turner <mattst88@gmail.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, Sam Creasey <sammy@sammy.net>,
 Arnd Bergmann <arnd@arndb.de>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Greentime Hu <green.hu@gmail.com>, "Kirill A. Shutemov" <kirill@shutemov.name>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>, Parisc List <linux-parisc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, alpha <linux-alpha@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Peter Rosin <peda@axentia.se>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBOb3YgMDQsIDIwMTkgYXQgMDk6NTM6MzRBTSArMDEwMCwgR2VlcnQgVXl0dGVyaG9l
dmVuIHdyb3RlOgo+IEhpIE1pa2UsCj4gCj4gT24gTW9uLCBOb3YgNCwgMjAxOSBhdCA3OjU3IEFN
IE1pa2UgUmFwb3BvcnQgPHJwcHRAa2VybmVsLm9yZz4gd3JvdGU6Cj4gPiBGcm9tOiBNaWtlIFJh
cG9wb3J0IDxycHB0QGxpbnV4LmlibS5jb20+Cj4gPiBtNjhrIGhhcyB0d28gb3IgdGhyZWUgbGV2
ZWxzIG9mIHBhZ2UgdGFibGVzIGFuZCBjYW4gdXNlIGFwcHJvcHJpYXRlCj4gPiBwZ3RhYmxlLW5v
cFhkIGFuZCBmb2xkaW5nIG9mIHRoZSB1cHBlciBsYXllcnMuCj4gPgo+ID4gUmVwbGFjZSB1c2Fn
ZSBvZiBpbmNsdWRlL2FzbS1nZW5lcmljLzRsZXZlbC1maXh1cC5oIGFuZCBleHBsaWNpdAo+ID4g
ZGVmaW5pdGlvbnMgb2YgX19QQUdFVEFCTEVfUHhEX0ZPTERFRCBpbiBtNjhrIHdpdGgKPiA+IGlu
Y2x1ZGUvYXNtLWdlbmVyaWMvcGd0YWJsZS1ub3BtZC5oIGZvciB0d28tbGV2ZWwgY29uZmlndXJh
dGlvbnMgYW5kIHdpdGgKPiA+IGluY2x1ZGUvYXNtLWdlbmVyaWMvcGd0YWJsZS1ub3B1ZC5oIGZv
ciB0aHJlZS1sZWx2ZSBjb25maWd1cmF0aW9ucyBhbmQKPiA+IGFkanVzdCBwYWdlIHRhYmxlIG1h
bmlwdWxhdGlvbiBtYWNyb3MgYW5kIGZ1bmN0aW9ucyBhY2NvcmRpbmdseS4KPiA+Cj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBNaWtlIFJhcG9wb3J0IDxycHB0QGxpbnV4LmlibS5jb20+Cj4gPiBBY2tlZC1i
eTogR3JlZyBVbmdlcmVyIDxnZXJnQGxpbnV4LW02OGsub3JnPgo+IAo+IFRoYW5rcyBmb3IgeW91
ciBwYXRjaCEKPiAKPiBUaGUgYnVpbGQgZXJyb3IgcmVwb3J0ZWQgZm9yIHYxIGJ5IGtidWlsZCB0
ZXN0IHJvYm90IHdoZW4gYnVpbGRpbmcgZm9yCj4gc3VuM3ggaXMgc3RpbGwgdGhlcmUgKG02OGsg
ZGVmY29uZmlnIG9yIHN1bjN4X2RlZmNvbmZpZyk6Cj4gCj4gICAgIGFyY2gvbTY4ay9zdW4zeC9k
dm1hLmM6IEluIGZ1bmN0aW9uIOKAmGR2bWFfbWFwX2NwdeKAmToKPiAgICAgYXJjaC9tNjhrL3N1
bjN4L2R2bWEuYzo5ODozMzogZXJyb3I6IHBhc3NpbmcgYXJndW1lbnQgMiBvZgo+IOKAmHBtZF9h
bGxvY+KAmSBmcm9tIGluY29tcGF0aWJsZSBwb2ludGVyIHR5cGUKPiBbLVdlcnJvcj1pbmNvbXBh
dGlibGUtcG9pbnRlci10eXBlc10KPiAgICAgICAgaWYoKHBtZCA9IHBtZF9hbGxvYygmaW5pdF9t
bSwgcGdkLCB2YWRkcikpID09IE5VTEwpIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgXn5+Cj4gICAgIEluIGZpbGUgaW5jbHVkZWQgZnJvbSBhcmNoL202OGsvc3VuM3gv
ZHZtYS5jOjE3Ogo+ICAgICBpbmNsdWRlL2xpbnV4L21tLmg6MTg3NTo2MTogbm90ZTogZXhwZWN0
ZWQg4oCYcHVkX3QgKuKAmSB7YWthIOKAmHN0cnVjdAo+IDxhbm9ueW1vdXM+ICrigJl9IGJ1dCBh
cmd1bWVudCBpcyBvZiB0eXBlIOKAmHBnZF90ICrigJkge2FrYSDigJhzdHJ1Y3QKPiA8YW5vbnlt
b3VzPiAq4oCZfQo+ICAgICAgc3RhdGljIGlubGluZSBwbWRfdCAqcG1kX2FsbG9jKHN0cnVjdCBt
bV9zdHJ1Y3QgKm1tLCBwdWRfdCAqcHVkLAo+IHVuc2lnbmVkIGxvbmcgYWRkcmVzcykKPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfn5+
fn5+fl5+fgoKVGhlIGluaXRpYWwgcmVwb3J0IHdhcyBhZ2FpbnN0IG9sZGVyIG1tb3RtIChiYXNl
OgpnaXQ6Ly9naXQuY21weGNoZy5vcmcvbGludXgtbW1vdG0uZ2l0IG1hc3RlcikgYW5kIEkgcHJl
c3VtZWQgdGhpcyB3YXMgdGhlCmNhdXNlIG9mIHRoZSBlcnJvci4gV2lsbCBmaXggaW4gdjQuCiAK
PiBUaGlzIGluZGVlZCBib290cyBmaW5lIG9uIEFSQW55TSwgd2hpY2ggZW11bGF0ZXMgb24gNjgw
NDAuCj4gSXQgd291bGQgYmUgZ29vZCB0byBoYXZlIHNvbWUgYm9vdCB0ZXN0aW5nIG9uICcwMjAv
MDMwLCB0b28uCiAKVG8gYmUgaG9uZXN0LCBJIGhhdmUgbm8gaWRlYSBob3cgdG8gdG8gdGhhdCA6
KQoKPiA+IC0tLSBhL2FyY2gvbTY4ay9tbS9rbWFwLmMKPiA+ICsrKyBiL2FyY2gvbTY4ay9tbS9r
bWFwLmMKPiAKPiA+IEBAIC0xOTYsMTcgKzE5OCwyMSBAQCB2b2lkIF9faW9tZW0gKl9faW9yZW1h
cCh1bnNpZ25lZCBsb25nIHBoeXNhZGRyLCB1bnNpZ25lZCBsb25nIHNpemUsIGludCBjYWNoZWZs
YQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgcHJpbnRrICgiXG5wYT0lI2x4IHZhPSUjbHgg
IiwgcGh5c2FkZHIsIHZpcnRhZGRyKTsKPiA+ICAjZW5kaWYKPiA+ICAgICAgICAgICAgICAgICBw
Z2RfZGlyID0gcGdkX29mZnNldF9rKHZpcnRhZGRyKTsKPiA+IC0gICAgICAgICAgICAgICBwbWRf
ZGlyID0gcG1kX2FsbG9jKCZpbml0X21tLCBwZ2RfZGlyLCB2aXJ0YWRkcik7Cj4gPiArICAgICAg
ICAgICAgICAgcDRkX2RpciA9IHA0ZF9vZmZzZXQocGdkX2RpciwgdmlydGFkZHIpOwo+ID4gKyAg
ICAgICAgICAgICAgIHB1ZF9kaXIgPSBwdWRfb2Zmc2V0KHA0ZF9kaXIsIHZpcnRhZGRyKTsKPiA+
ICsgICAgICAgICAgICAgICBwbWRfZGlyID0gcG1kX2FsbG9jKCZpbml0X21tLCBwdWRfZGlyLCB2
aXJ0YWRkcik7Cj4gPiAgICAgICAgICAgICAgICAgaWYgKCFwbWRfZGlyKSB7Cj4gPiAgICAgICAg
ICAgICAgICAgICAgICAgICBwcmludGsoImlvcmVtYXA6IG5vIG1lbSBmb3IgcG1kX2RpclxuIik7
Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gTlVMTDsKPiA+ICAgICAgICAgICAg
ICAgICB9Cj4gPgo+ID4gICAgICAgICAgICAgICAgIGlmIChDUFVfSVNfMDIwX09SXzAzMCkgewo+
ID4gKyNpZiBDT05GSUdfUEdUQUJMRV9MRVZFTFMgPT0gMwo+IAo+IFRoaXMgY2hlY2sgcHV6emxl
ZCBtZSBhIGJpdDogd2hlbiB3ZSBnZXQgaGVyZSwgQ09ORklHX1BHVEFCTEVfTEVWRUxTIGlzCj4g
YWx3YXlzIHRydWUuCj4gSG93ZXZlciwgdGhlIGNoZWNrIGNhbm5vdCBiZSByZW1vdmVkLCBhcyB0
aGUgY29kZSBpdCBwcm90ZWN0cyBmYWlscyB0byBjb21waWxlCj4gd2hlbiBidWlsZGluZyBmb3Ig
Q29sZGZpcmUuCj4gCj4gUGVyaGFwcyB0aGlzIGNhbiBiZSBtYWRlIG1vcmUgY2xlYXIgYnkgcmV2
ZXJ0aW5nIHRoZSBvcmRlcj8KPiBJLmUuCj4gCj4gICAgICNpZiBDT05GSUdfUEdUQUJMRV9MRVZF
TFMgPT0gMwo+ICAgICAgICAgICAgIGlmIChDUFVfSVNfMDIwX09SXzAzMCkgewo+ICAgICAgICAg
ICAgICAgICAgICAgLi4uCj4gICAgICAgICAgICAgfSBlbHNlCj4gICAgICNlbmRpZgo+ICAgICAg
ICAgICAgIHsKPiAKPiBPciBpcyB0aGVyZSBzb21lIGJldHRlciB3YXk/CgpJIHRoaW5rIHJldmVy
dGluZyB0aGUgb3JkZXIgaXMgZmluZS4gSGVyZSBpdCdzIGEgYml0IHVnbHkgYmVjYXVzZSBvZgon
fSBlbHNlIHsnLCBidXQgZm9yIHRoZSBvdGhlciBjYXNlcyBiZWxvdyBpdCB3aWxsIGZpbmUuCiAK
PiA+ICAgICAgICAgICAgICAgICAgICAgICAgIHBtZF9kaXItPnBtZFsodmlydGFkZHIvUFRSVFJF
RVNJWkUpICYgMTVdID0gcGh5c2FkZHI7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBwaHlz
YWRkciArPSBQVFJUUkVFU0laRTsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIHZpcnRhZGRy
ICs9IFBUUlRSRUVTSVpFOwo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgc2l6ZSAtPSBQVFJU
UkVFU0laRTsKPiA+ICsjZW5kaWYKPiA+ICAgICAgICAgICAgICAgICB9IGVsc2Ugewo+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgcHRlX2RpciA9IHB0ZV9hbGxvY19rZXJuZWwocG1kX2Rpciwg
dmlydGFkZHIpOwo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgaWYgKCFwdGVfZGlyKSB7Cj4g
PiBAQCAtMjU4LDE5ICsyNjQsMjQgQEAgdm9pZCBfX2lvdW5tYXAodm9pZCAqYWRkciwgdW5zaWdu
ZWQgbG9uZyBzaXplKQo+ID4gIHsKPiA+ICAgICAgICAgdW5zaWduZWQgbG9uZyB2aXJ0YWRkciA9
ICh1bnNpZ25lZCBsb25nKWFkZHI7Cj4gPiAgICAgICAgIHBnZF90ICpwZ2RfZGlyOwo+ID4gKyAg
ICAgICBwNGRfdCAqcDRkX2RpcjsKPiA+ICsgICAgICAgcHVkX3QgKnB1ZF9kaXI7Cj4gPiAgICAg
ICAgIHBtZF90ICpwbWRfZGlyOwo+ID4gICAgICAgICBwdGVfdCAqcHRlX2RpcjsKPiA+Cj4gPiAg
ICAgICAgIHdoaWxlICgobG9uZylzaXplID4gMCkgewo+ID4gICAgICAgICAgICAgICAgIHBnZF9k
aXIgPSBwZ2Rfb2Zmc2V0X2sodmlydGFkZHIpOwo+ID4gLSAgICAgICAgICAgICAgIGlmIChwZ2Rf
YmFkKCpwZ2RfZGlyKSkgewo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgcHJpbnRrKCJpb3Vu
bWFwOiBiYWQgcGdkKCUwOGx4KVxuIiwgcGdkX3ZhbCgqcGdkX2RpcikpOwo+ID4gLSAgICAgICAg
ICAgICAgICAgICAgICAgcGdkX2NsZWFyKHBnZF9kaXIpOwo+ID4gKyAgICAgICAgICAgICAgIHA0
ZF9kaXIgPSBwNGRfb2Zmc2V0KHBnZF9kaXIsIHZpcnRhZGRyKTsKPiA+ICsgICAgICAgICAgICAg
ICBwdWRfZGlyID0gcHVkX29mZnNldChwNGRfZGlyLCB2aXJ0YWRkcik7Cj4gPiArICAgICAgICAg
ICAgICAgaWYgKHB1ZF9iYWQoKnB1ZF9kaXIpKSB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAg
ICBwcmludGsoImlvdW5tYXA6IGJhZCBwZ2QoJTA4bHgpXG4iLCBwdWRfdmFsKCpwdWRfZGlyKSk7
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICBwdWRfY2xlYXIocHVkX2Rpcik7Cj4gPiAgICAg
ICAgICAgICAgICAgICAgICAgICByZXR1cm47Cj4gPiAgICAgICAgICAgICAgICAgfQo+ID4gLSAg
ICAgICAgICAgICAgIHBtZF9kaXIgPSBwbWRfb2Zmc2V0KHBnZF9kaXIsIHZpcnRhZGRyKTsKPiA+
ICsgICAgICAgICAgICAgICBwbWRfZGlyID0gcG1kX29mZnNldChwdWRfZGlyLCB2aXJ0YWRkcik7
Cj4gPgo+ID4gICAgICAgICAgICAgICAgIGlmIChDUFVfSVNfMDIwX09SXzAzMCkgewo+ID4gKyNp
ZiBDT05GSUdfUEdUQUJMRV9MRVZFTFMgPT0gMwo+IAo+IExpa2V3aXNlLgo+IAo+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgaW50IHBtZF9vZmYgPSAodmlydGFkZHIvUFRSVFJFRVNJWkUpICYg
MTU7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBpbnQgcG1kX3R5cGUgPSBwbWRfZGlyLT5w
bWRbcG1kX29mZl0gJiBfREVTQ1RZUEVfTUFTSzsKPiA+Cj4gCj4gPiBAQCAtMzQxLDE0ICszNTUs
MTcgQEAgdm9pZCBrZXJuZWxfc2V0X2NhY2hlbW9kZSh2b2lkICphZGRyLCB1bnNpZ25lZCBsb25n
IHNpemUsIGludCBjbW9kZSkKPiA+Cj4gPiAgICAgICAgIHdoaWxlICgobG9uZylzaXplID4gMCkg
ewo+ID4gICAgICAgICAgICAgICAgIHBnZF9kaXIgPSBwZ2Rfb2Zmc2V0X2sodmlydGFkZHIpOwo+
ID4gLSAgICAgICAgICAgICAgIGlmIChwZ2RfYmFkKCpwZ2RfZGlyKSkgewo+ID4gLSAgICAgICAg
ICAgICAgICAgICAgICAgcHJpbnRrKCJpb2NhY2hlbW9kZTogYmFkIHBnZCglMDhseClcbiIsIHBn
ZF92YWwoKnBnZF9kaXIpKTsKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgIHBnZF9jbGVhcihw
Z2RfZGlyKTsKPiA+ICsgICAgICAgICAgICAgICBwNGRfZGlyID0gcDRkX29mZnNldChwZ2RfZGly
LCB2aXJ0YWRkcik7Cj4gPiArICAgICAgICAgICAgICAgcHVkX2RpciA9IHB1ZF9vZmZzZXQocDRk
X2RpciwgdmlydGFkZHIpOwo+ID4gKyAgICAgICAgICAgICAgIGlmIChwdWRfYmFkKCpwdWRfZGly
KSkgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgcHJpbnRrKCJpb2NhY2hlbW9kZTogYmFk
IHB1ZCglMDhseClcbiIsIHB1ZF92YWwoKnB1ZF9kaXIpKTsKPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgIHB1ZF9jbGVhcihwdWRfZGlyKTsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIHJl
dHVybjsKPiA+ICAgICAgICAgICAgICAgICB9Cj4gPiAtICAgICAgICAgICAgICAgcG1kX2RpciA9
IHBtZF9vZmZzZXQocGdkX2RpciwgdmlydGFkZHIpOwo+ID4gKyAgICAgICAgICAgICAgIHBtZF9k
aXIgPSBwbWRfb2Zmc2V0KHB1ZF9kaXIsIHZpcnRhZGRyKTsKPiA+Cj4gPiAgICAgICAgICAgICAg
ICAgaWYgKENQVV9JU18wMjBfT1JfMDMwKSB7Cj4gPiArI2lmIENPTkZJR19QR1RBQkxFX0xFVkVM
UyA9PSAzCj4gCj4gTGlrZXdpc2UKPiAKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIGludCBw
bWRfb2ZmID0gKHZpcnRhZGRyL1BUUlRSRUVTSVpFKSAmIDE1Owo+ID4KPiA+ICAgICAgICAgICAg
ICAgICAgICAgICAgIGlmICgocG1kX2Rpci0+cG1kW3BtZF9vZmZdICYgX0RFU0NUWVBFX01BU0sp
ID09IF9QQUdFX1BSRVNFTlQpIHsKPiAKPiBHcntvZXRqZSxlZXRpbmd9cywKPiAKPiAgICAgICAg
ICAgICAgICAgICAgICAgICBHZWVydAo+IAo+IC0tIAo+IEdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBU
aGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcK
PiAKPiBJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBj
YWxsIG15c2VsZiBhIGhhY2tlci4gQnV0Cj4gd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0
cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0Lgo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKCi0tIApTaW5jZXJl
bHkgeW91cnMsCk1pa2UuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
