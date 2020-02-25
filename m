Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E68416EF58
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 20:45:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QaWVdM3QO3mxQeTUHk0VdK2f5jKGQo1jaeflXmBF/kk=; b=l6hphIvrSrnnR5js7XuglLmVf
	g8aSU94uJ6CqWDBwYAHcnzD2IH3Zxg3AvXEl7r+0Vu9Kko7LA1BVTznFnR6mCnfY9UijjnsKh+Y5e
	ZHsrxKfh/fjbs5dHjjLGvda7ZjSoiyHezZ2j2ZoE8/kZmGcyEkHhHdvgiUvuCLlIapsTdkfWGNH1O
	sNtu/w/17Vd/ex8db+rKT0r1T4vzV7LsEwSo5pC/Vj2du7pimYBvREuOT3rjfR0NHatqlxwMhjxhP
	dpMqb/gOkolg80+zZBwqe5PnNbF7eml9HF+bT3vYVkG8W+kHxd9rSA5AFLFM1acSCsBUvsqGubfvg
	NqK9VIVRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6g9F-0005SS-GP; Tue, 25 Feb 2020 19:45:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6g97-0005Ox-0z
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 19:45:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 714AE31B;
 Tue, 25 Feb 2020 11:45:30 -0800 (PST)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A62DC3FA00;
 Tue, 25 Feb 2020 11:45:28 -0800 (PST)
Subject: Re: [PATCH] ARM: use assembly mnemonics for VFP register access
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>
References: <8bb16ac4b15a7e28a8e819ef9aae20bfc3f75fbc.1582266841.git.stefan@agner.ch>
 <CAKwvOdmV80xgvBnhB6ZpqYaqkxKi-_p+StnMojwNnf3kdxTT1A@mail.gmail.com>
 <CAKv+Gu881ZSwvuACmsbBnpfdeJpNYsEQxLSoepJBbZ=O6D6Rcg@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <d7047fca-7efb-94bc-51aa-c33934df0721@arm.com>
Date: Tue, 25 Feb 2020 19:45:14 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu881ZSwvuACmsbBnpfdeJpNYsEQxLSoepJBbZ=O6D6Rcg@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_114533_153012_BA598498 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>, LKML <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, Jian Cai <jiancai@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Manoj Gupta <manojgupta@google.com>, Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wMi0yNSA3OjMzIHBtLCBBcmQgQmllc2hldXZlbCB3cm90ZToKPiBPbiBUdWUsIDI1
IEZlYiAyMDIwIGF0IDIwOjEwLCBOaWNrIERlc2F1bG5pZXJzIDxuZGVzYXVsbmllcnNAZ29vZ2xl
LmNvbT4gd3JvdGU6Cj4+Cj4+IE9uIE1vbiwgRmViIDI0LCAyMDIwIGF0IDk6MjIgUE0gU3RlZmFu
IEFnbmVyIDxzdGVmYW5AYWduZXIuY2g+IHdyb3RlOgo+Pj4KPj4+IENsYW5nJ3MgaW50ZWdyYXRl
ZCBhc3NlbWJsZXIgZG9lcyBub3QgYWxsb3cgdG8gdG8gdXNlIHRoZSBtY3IKPj4+IGluc3RydWN0
aW9uIHRvIGFjY2VzcyBmbG9hdGluZyBwb2ludCBjby1wcm9jZXNzb3IgcmVnaXN0ZXJzOgo+Pj4g
YXJjaC9hcm0vdmZwL3ZmcG1vZHVsZS5jOjM0MjoyOiBlcnJvcjogaW52YWxpZCBvcGVyYW5kIGZv
ciBpbnN0cnVjdGlvbgo+Pj4gICAgICAgICAgZm14cihGUEVYQywgZnBleGMgJiB+KEZQRVhDX0VY
fEZQRVhDX0RFWHxGUEVYQ19GUDJWfEZQRVhDX1ZWfEZQRVhDX1RSQVBfTUFTSykpOwo+Pj4gICAg
ICAgICAgXgo+Pj4gYXJjaC9hcm0vdmZwL3ZmcGluc3RyLmg6Nzk6Njogbm90ZTogZXhwYW5kZWQg
ZnJvbSBtYWNybyAnZm14cicKPj4+ICAgICAgICAgIGFzbSgibWNyIHAxMCwgNywgJTAsICIgdmZw
cmVnKF92ZnBfKSAiLCBjcjAsIDAgQCBmbXhyICAgIiAjX3ZmcF8gIiwgJTAiIFwKPj4+ICAgICAg
ICAgICAgICBeCj4+PiA8aW5saW5lIGFzbT46MTo2OiBub3RlOiBpbnN0YW50aWF0ZWQgaW50byBh
c3NlbWJseSBoZXJlCj4+PiAgICAgICAgICBtY3IgcDEwLCA3LCByMCwgY3I4LCBjcjAsIDAgQCBm
bXhyICAgICAgRlBFWEMsIHIwCj4+PiAgICAgICAgICAgICAgXgo+Pj4KPj4+IFRoZSBHTlUgYXNz
ZW1ibGVyIHN1cHBvcnRzIHRoZSAuZnB1IGRpcmVjdGl2ZSBhdCBsZWFzdCBzaW5jZSAyLjE3ICh3
aGVuCj4+PiBkb2N1bWVudGF0aW9uIGhhcyBiZWVuIGFkZGVkKS4gU2luY2UgTGludXggcmVxdWly
ZXMgYmludXRpbHMgMi4yMSBpdCBpcwo+Pj4gc2FmZSB0byB1c2UgLmZwdSBkaXJlY3RpdmUuIFVz
ZSB0aGUgLmZwdSBkaXJlY3RpdmUgYW5kIG1uZW1vbmljcyBmb3IgVkZQCj4+PiByZWdpc3RlciBh
Y2Nlc3MuCj4+Pgo+Pj4gVGhpcyBhbGxvd3MgdG8gYnVpbGQgdmZwbW9kdWxlLmMgd2l0aCBDbGFu
ZyBhbmQgaXRzIGludGVncmF0ZWQgYXNzZW1ibGVyLgo+Pj4KPj4+IExpbms6IGh0dHBzOi8vZ2l0
aHViLmNvbS9DbGFuZ0J1aWx0TGludXgvbGludXgvaXNzdWVzLzkwNQo+Pj4gU2lnbmVkLW9mZi1i
eTogU3RlZmFuIEFnbmVyIDxzdGVmYW5AYWduZXIuY2g+Cj4+PiAtLS0KPj4+ICAgYXJjaC9hcm0v
dmZwL3ZmcGluc3RyLmggfCAxMiArKysrLS0tLS0tLS0KPj4+ICAgMSBmaWxlIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm0vdmZwL3ZmcGluc3RyLmggYi9hcmNoL2FybS92ZnAvdmZwaW5zdHIuaAo+Pj4gaW5kZXggMzhk
YzE1NGUzOWZmLi43OTljY2YwNjU0MDYgMTAwNjQ0Cj4+PiAtLS0gYS9hcmNoL2FybS92ZnAvdmZw
aW5zdHIuaAo+Pj4gKysrIGIvYXJjaC9hcm0vdmZwL3ZmcGluc3RyLmgKPj4+IEBAIC02MiwyMSAr
NjIsMTcgQEAKPj4+ICAgI2RlZmluZSBGUFNDUl9DICgxIDw8IDI5KQo+Pj4gICAjZGVmaW5lIEZQ
U0NSX1YgICAgICAgICgxIDw8IDI4KQo+Pj4KPj4+IC0vKgo+Pj4gLSAqIFNpbmNlIHdlIGFyZW4n
dCBidWlsZGluZyB3aXRoIC1tZnB1PXZmcCwgd2UgbmVlZCB0byBjb2RlCj4+PiAtICogdGhlc2Ug
aW5zdHJ1Y3Rpb25zIHVzaW5nIHRoZWlyIE1SQy9NQ1IgZXF1aXZhbGVudHMuCj4+PiAtICovCj4+
PiAtI2RlZmluZSB2ZnByZWcoX3ZmcF8pICNfdmZwXwo+Pj4gLQo+Pj4gICAjZGVmaW5lIGZtcngo
X3ZmcF8pICh7ICAgICAgICAgICAgICAgICBcCj4+PiAgICAgICAgICB1MzIgX192OyAgICAgICAg
ICAgICAgICAgICAgICAgIFwKPj4+IC0gICAgICAgYXNtKCJtcmMgcDEwLCA3LCAlMCwgIiB2ZnBy
ZWcoX3ZmcF8pICIsIGNyMCwgMCBAIGZtcnggICAlMCwgIiAjX3ZmcF8gICAgXAo+Pj4gKyAgICAg
ICBhc20oIi5mcHUgICAgICAgdmZwdjJcbiIgICAgICAgIFwKPj4+ICsgICAgICAgICAgICJ2bXJz
ICAgICAgICUwLCAiICNfdmZwXyAgICBcCj4+PiAgICAgICAgICAgICAgOiAiPXIiIChfX3YpIDog
OiAiY2MiKTsgICAgIFwKPj4+ICAgICAgICAgIF9fdjsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgXAo+Pj4gICAgfSkKPj4+Cj4+PiAgICNkZWZpbmUgZm14cihfdmZwXyxfdmFyXykgICAgICAg
ICAgICAgIFwKPj4+IC0gICAgICAgYXNtKCJtY3IgcDEwLCA3LCAlMCwgIiB2ZnByZWcoX3ZmcF8p
ICIsIGNyMCwgMCBAIGZteHIgICAiICNfdmZwXyAiLCAlMCIgXAo+Pj4gKyAgICAgICBhc20oIi5m
cHUgICAgICAgdmZwdjJcbiIgICAgICAgIFwKPj4+ICsgICAgICAgICAgICJ2bXNyICAgICAgICIg
I192ZnBfICIsICUwIiBcCj4+PiAgICAgICAgICAgICA6IDogInIiIChfdmFyXykgOiAiY2MiKQo+
Pj4KPj4+ICAgdTMyIHZmcF9zaW5nbGVfY3Bkbyh1MzIgaW5zdCwgdTMyIGZwc2NyKTsKPj4+IC0t
Cj4+Cj4+IEhpIFN0ZWZhbiwKPj4gVGhhbmtzIGZvciB0aGUgcGF0Y2guICBSZWFkaW5nIHRocm91
Z2g6Cj4+IC0gRk1SWCwgRk1YUiwgYW5kIEZNU1RBVDoKPj4gaHR0cDovL2luZm9jZW50ZXIuYXJt
LmNvbS9oZWxwL2luZGV4LmpzcD90b3BpYz0vY29tLmFybS5kb2MuZHVpMDA2OGIvQmNmYmRpaGku
aHRtbAo+PiAtIFZNUlMgYW5kIFZNU1I6Cj4+IGh0dHA6Ly9pbmZvY2VudGVyLmFybS5jb20vaGVs
cC9pbmRleC5qc3A/dG9waWM9L2NvbS5hcm0uZG9jLmR1aTAyMDRoL0JjZmJkaWhpLmh0bWwKPj4K
Pj4gU2hvdWxkIGEgbWFjcm8gY2FsbGVkIGBmbXJ4YCB0aGF0IGhhZCBhIGNvbW1lbnQgYWJvdXQg
YGZtcnhgIGJlIHVzaW5nCj4+IGB2bXJzYCBpbiBwbGFjZSBvZiBgZm1yeGA/Cj4+Cj4+IEl0IGxv
b2tzIGxpa2UgQ2xhbmcgdHJlYXRzIHRoZW0gdGhlIHNhbWUsIGJ1dCBHQ0Mga2VlcHMgdGhlbSBz
ZXBhcmF0ZToKPj4gaHR0cHM6Ly9nb2Rib2x0Lm9yZy96L1lLbVNBcwo+PiBBaCwgdGhpcyBpcyBv
bmx5IHdoZW4gc3RyZWFtaW5nIHRvIGFzc2VtYmx5LiBMb29rcyBsaWtlIHRoZXkgaGF2ZSB0aGUK
Pj4gc2FtZSBlbmNvZGluZywgYW5kIHByb2R1Y2UgdGhlIHNhbWUgZGlzYXNzZW1ibHkuIChHb2Ri
b2x0IGVtaXRzCj4+IGFzc2VtYmx5IGJ5IGRlZmF1bHQsIGFuZCBoYXMgdGhlIG9wdGlvbiB0byBj
b21waWxlLCB0aGVuIGRpc2Fzc2VtYmxlKS4KPj4gSWYgSSB0YWtlIG15IGNhc2UgZnJvbSBnb2Ri
b2x0IGFib3ZlOgo+Pgo+PiDinpwgIC90bXAgYXJtLWxpbnV4LWdudWVhYmloZi1nY2MgLU8yIC1j
IHguYwo+PiDinpwgIC90bXAgbGx2bS1vYmpkdW1wIC1kciB4Lm8KPj4KPj4geC5vOiBmaWxlIGZv
cm1hdCBlbGYzMi1hcm0tbGl0dGxlCj4+Cj4+Cj4+IERpc2Fzc2VtYmx5IG9mIHNlY3Rpb24gLnRl
eHQ6Cj4+Cj4+IDAwMDAwMDAwIGJhcjoKPj4gICAgICAgICAwOiBmMSBlZSAxMCAwYSAgICAgICAg
ICAgICAgICAgIHZtcnMgcjAsIGZwc2NyCj4+ICAgICAgICAgNDogNzAgNDcgICAgICAgICAgICAg
ICAgICAgICAgICBieCBscgo+PiAgICAgICAgIDY6IDAwIGJmICAgICAgICAgICAgICAgICAgICAg
ICAgbm9wCj4+Cj4+IDAwMDAwMDA4IGJhejoKPj4gICAgICAgICA4OiBmMSBlZSAxMCAwYSAgICAg
ICAgICAgICAgICAgIHZtcnMgcjAsIGZwc2NyCj4+ICAgICAgICAgYzogNzAgNDcgICAgICAgICAg
ICAgICAgICAgICAgICBieCBscgo+PiAgICAgICAgIGU6IDAwIGJmICAgICAgICAgICAgICAgICAg
ICAgICAgbm9wCj4+Cj4+IFNvIGluZGVlZCBhIHNpbWlsYXIgZW5jb2RpbmcgZXhpc3RzIGZvciB0
aGUgdHdvIGRpZmZlcmVudCBhc3NlbWJsZXIKPj4gaW5zdHJ1Y3Rpb25zLgo+IAo+IERvZXMgdGhh
dCBob2xkIGZvciBBUk0gKEEzMikgaW5zdHJ1Y3Rpb25zIGFzIHdlbGw/CgpJdCBzaG91bGQgZG8g
LSB0aGV5J3JlIGFsbCB0aGUgc2FtZSB0aGluZyB1bmRlcm5lYXRoLiBUaGUgVUFMIHN5bnRheCAK
anVzdCByZW5hbWVkIGFsbCB0aGUgbGVnYWN5IFZGUCBtbmVtb25pY3MgZnJvbSBGeHh4IHRvIFZ4
eHggZm9ybSwgYXBhcnQgCmZyb20gYSBjb3VwbGUgb2YgdGhpbmdzIHRoYXQgd2VyZSBhbHJlYWR5
IGRlcHJlY2F0ZWQuIEdBUyBzdGlsbCBhY2NlcHRzIApib3RoIHJlZ2FyZGxlc3Mgb2YgIi5zeW50
YXggdW5pZmllZCIsIGFuZCBhcyBhIHJlc3VsdCBHQ0MgbmV2ZXIgc2F3IGEgCnJlYXNvbiB0byBz
dG9wIGVtaXR0aW5nIHRoZSBvbGQgbW5lbW9uaWNzLgoKUm9iaW4uCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
