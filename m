Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CDD16EF80
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 21:00:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8MWiatpssFze1rJLUDKsXaFR/vEEded7kWMtSXKFr6s=; b=V9ZZNekz1fXyxQ
	qkhy7tkvvY7zSw7T6Ypc7e+Mg8t6bo/iN59DVYDAYRENj6mV8M1PsKi1N2Cu3Ddaa522LCxhHjFhY
	MpGm5+dWWtTkL0PSW9/Go9cWujMp7/01OxWrWau9juaAy0+YMQ05D+Z1ZGEq/3A7a7IuYn+Q/lH2b
	EnwGbzXDFV2xPP51gdky0sQDYcql7MUv/I9YFU167WRlyBuISfwiT0oIfR5G+OfMG9JcxWqYgrllU
	amcOmYQPW2o4v8qPFnr0Q7FKKiSAb/p6klIv9mXlLoywQuRePnJEpNR1O1IA1Z4R+wyVRNuuvjFgz
	Ra0cYgnS32JwlurDoQcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6gNp-0002ff-T2; Tue, 25 Feb 2020 20:00:45 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6gNf-0002e3-Gc
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 20:00:37 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 570BF5C3734;
 Tue, 25 Feb 2020 21:00:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1582660832;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4pbXjCTmSWvRoORcqT8xdio5aWElTyodfDE1yRwxE88=;
 b=fiBYar2G/FyAj0rGQCdcDOsJCqXNCqszfBq8dZigfTqmWS+tLIEW0neeI804TrlxLJifMa
 1HPUdZmB6ic3W68C63TuiBA0p28gC+eEavJlWTzyGQtOdhiHIAyb442lak/sbUJJ3J3Xlc
 r4VrpgUqOqIDPIowtDZgzmq74SNHJ6g=
MIME-Version: 1.0
Date: Tue, 25 Feb 2020 21:00:32 +0100
From: Stefan Agner <stefan@agner.ch>
To: Robin Murphy <robin.murphy@arm.com>, Nick Desaulniers
 <ndesaulniers@google.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH] ARM: use assembly mnemonics for VFP register access
In-Reply-To: <d7047fca-7efb-94bc-51aa-c33934df0721@arm.com>
References: <8bb16ac4b15a7e28a8e819ef9aae20bfc3f75fbc.1582266841.git.stefan@agner.ch>
 <CAKwvOdmV80xgvBnhB6ZpqYaqkxKi-_p+StnMojwNnf3kdxTT1A@mail.gmail.com>
 <CAKv+Gu881ZSwvuACmsbBnpfdeJpNYsEQxLSoepJBbZ=O6D6Rcg@mail.gmail.com>
 <d7047fca-7efb-94bc-51aa-c33934df0721@arm.com>
User-Agent: Roundcube Webmail/1.4.1
Message-ID: <0e4196b528284b07d088dec086f3378a@agner.ch>
X-Sender: stefan@agner.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_120035_849485_1D94ACC5 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Manoj Gupta <manojgupta@google.com>, Jian Cai <jiancai@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wMi0yNSAyMDo0NSwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IE9uIDIwMjAtMDItMjUg
NzozMyBwbSwgQXJkIEJpZXNoZXV2ZWwgd3JvdGU6Cj4+IE9uIFR1ZSwgMjUgRmViIDIwMjAgYXQg
MjA6MTAsIE5pY2sgRGVzYXVsbmllcnMgPG5kZXNhdWxuaWVyc0Bnb29nbGUuY29tPiB3cm90ZToK
Pj4+Cj4+PiBPbiBNb24sIEZlYiAyNCwgMjAyMCBhdCA5OjIyIFBNIFN0ZWZhbiBBZ25lciA8c3Rl
ZmFuQGFnbmVyLmNoPiB3cm90ZToKPj4+Pgo+Pj4+IENsYW5nJ3MgaW50ZWdyYXRlZCBhc3NlbWJs
ZXIgZG9lcyBub3QgYWxsb3cgdG8gdG8gdXNlIHRoZSBtY3IKPj4+PiBpbnN0cnVjdGlvbiB0byBh
Y2Nlc3MgZmxvYXRpbmcgcG9pbnQgY28tcHJvY2Vzc29yIHJlZ2lzdGVyczoKPj4+PiBhcmNoL2Fy
bS92ZnAvdmZwbW9kdWxlLmM6MzQyOjI6IGVycm9yOiBpbnZhbGlkIG9wZXJhbmQgZm9yIGluc3Ry
dWN0aW9uCj4+Pj4gICAgICAgICAgZm14cihGUEVYQywgZnBleGMgJiB+KEZQRVhDX0VYfEZQRVhD
X0RFWHxGUEVYQ19GUDJWfEZQRVhDX1ZWfEZQRVhDX1RSQVBfTUFTSykpOwo+Pj4+ICAgICAgICAg
IF4KPj4+PiBhcmNoL2FybS92ZnAvdmZwaW5zdHIuaDo3OTo2OiBub3RlOiBleHBhbmRlZCBmcm9t
IG1hY3JvICdmbXhyJwo+Pj4+ICAgICAgICAgIGFzbSgibWNyIHAxMCwgNywgJTAsICIgdmZwcmVn
KF92ZnBfKSAiLCBjcjAsIDAgQCBmbXhyICAgIiAjX3ZmcF8gIiwgJTAiIFwKPj4+PiAgICAgICAg
ICAgICAgXgo+Pj4+IDxpbmxpbmUgYXNtPjoxOjY6IG5vdGU6IGluc3RhbnRpYXRlZCBpbnRvIGFz
c2VtYmx5IGhlcmUKPj4+PiAgICAgICAgICBtY3IgcDEwLCA3LCByMCwgY3I4LCBjcjAsIDAgQCBm
bXhyICAgICAgRlBFWEMsIHIwCj4+Pj4gICAgICAgICAgICAgIF4KPj4+Pgo+Pj4+IFRoZSBHTlUg
YXNzZW1ibGVyIHN1cHBvcnRzIHRoZSAuZnB1IGRpcmVjdGl2ZSBhdCBsZWFzdCBzaW5jZSAyLjE3
ICh3aGVuCj4+Pj4gZG9jdW1lbnRhdGlvbiBoYXMgYmVlbiBhZGRlZCkuIFNpbmNlIExpbnV4IHJl
cXVpcmVzIGJpbnV0aWxzIDIuMjEgaXQgaXMKPj4+PiBzYWZlIHRvIHVzZSAuZnB1IGRpcmVjdGl2
ZS4gVXNlIHRoZSAuZnB1IGRpcmVjdGl2ZSBhbmQgbW5lbW9uaWNzIGZvciBWRlAKPj4+PiByZWdp
c3RlciBhY2Nlc3MuCj4+Pj4KPj4+PiBUaGlzIGFsbG93cyB0byBidWlsZCB2ZnBtb2R1bGUuYyB3
aXRoIENsYW5nIGFuZCBpdHMgaW50ZWdyYXRlZCBhc3NlbWJsZXIuCj4+Pj4KPj4+PiBMaW5rOiBo
dHRwczovL2dpdGh1Yi5jb20vQ2xhbmdCdWlsdExpbnV4L2xpbnV4L2lzc3Vlcy85MDUKPj4+PiBT
aWduZWQtb2ZmLWJ5OiBTdGVmYW4gQWduZXIgPHN0ZWZhbkBhZ25lci5jaD4KPj4+PiAtLS0KPj4+
PiAgIGFyY2gvYXJtL3ZmcC92ZnBpbnN0ci5oIHwgMTIgKysrKy0tLS0tLS0tCj4+Pj4gICAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+Pj4+Cj4+Pj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtL3ZmcC92ZnBpbnN0ci5oIGIvYXJjaC9hcm0vdmZwL3ZmcGluc3Ry
LmgKPj4+PiBpbmRleCAzOGRjMTU0ZTM5ZmYuLjc5OWNjZjA2NTQwNiAxMDA2NDQKPj4+PiAtLS0g
YS9hcmNoL2FybS92ZnAvdmZwaW5zdHIuaAo+Pj4+ICsrKyBiL2FyY2gvYXJtL3ZmcC92ZnBpbnN0
ci5oCj4+Pj4gQEAgLTYyLDIxICs2MiwxNyBAQAo+Pj4+ICAgI2RlZmluZSBGUFNDUl9DICgxIDw8
IDI5KQo+Pj4+ICAgI2RlZmluZSBGUFNDUl9WICAgICAgICAoMSA8PCAyOCkKPj4+Pgo+Pj4+IC0v
Kgo+Pj4+IC0gKiBTaW5jZSB3ZSBhcmVuJ3QgYnVpbGRpbmcgd2l0aCAtbWZwdT12ZnAsIHdlIG5l
ZWQgdG8gY29kZQo+Pj4+IC0gKiB0aGVzZSBpbnN0cnVjdGlvbnMgdXNpbmcgdGhlaXIgTVJDL01D
UiBlcXVpdmFsZW50cy4KPj4+PiAtICovCj4+Pj4gLSNkZWZpbmUgdmZwcmVnKF92ZnBfKSAjX3Zm
cF8KPj4+PiAtCj4+Pj4gICAjZGVmaW5lIGZtcngoX3ZmcF8pICh7ICAgICAgICAgICAgICAgICBc
Cj4+Pj4gICAgICAgICAgdTMyIF9fdjsgICAgICAgICAgICAgICAgICAgICAgICBcCj4+Pj4gLSAg
ICAgICBhc20oIm1yYyBwMTAsIDcsICUwLCAiIHZmcHJlZyhfdmZwXykgIiwgY3IwLCAwIEAgZm1y
eCAgICUwLCAiICNfdmZwXyAgICBcCj4+Pj4gKyAgICAgICBhc20oIi5mcHUgICAgICAgdmZwdjJc
biIgICAgICAgIFwKPj4+PiArICAgICAgICAgICAidm1ycyAgICAgICAlMCwgIiAjX3ZmcF8gICAg
XAo+Pj4+ICAgICAgICAgICAgICA6ICI9ciIgKF9fdikgOiA6ICJjYyIpOyAgICAgXAo+Pj4+ICAg
ICAgICAgIF9fdjsgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+Pj4+ICAgIH0pCj4+Pj4K
Pj4+PiAgICNkZWZpbmUgZm14cihfdmZwXyxfdmFyXykgICAgICAgICAgICAgIFwKPj4+PiAtICAg
ICAgIGFzbSgibWNyIHAxMCwgNywgJTAsICIgdmZwcmVnKF92ZnBfKSAiLCBjcjAsIDAgQCBmbXhy
ICAgIiAjX3ZmcF8gIiwgJTAiIFwKPj4+PiArICAgICAgIGFzbSgiLmZwdSAgICAgICB2ZnB2Mlxu
IiAgICAgICAgXAo+Pj4+ICsgICAgICAgICAgICJ2bXNyICAgICAgICIgI192ZnBfICIsICUwIiBc
Cj4+Pj4gICAgICAgICAgICAgOiA6ICJyIiAoX3Zhcl8pIDogImNjIikKPj4+Pgo+Pj4+ICAgdTMy
IHZmcF9zaW5nbGVfY3Bkbyh1MzIgaW5zdCwgdTMyIGZwc2NyKTsKPj4+PiAtLQo+Pj4KPj4+IEhp
IFN0ZWZhbiwKPj4+IFRoYW5rcyBmb3IgdGhlIHBhdGNoLiAgUmVhZGluZyB0aHJvdWdoOgo+Pj4g
LSBGTVJYLCBGTVhSLCBhbmQgRk1TVEFUOgo+Pj4gaHR0cDovL2luZm9jZW50ZXIuYXJtLmNvbS9o
ZWxwL2luZGV4LmpzcD90b3BpYz0vY29tLmFybS5kb2MuZHVpMDA2OGIvQmNmYmRpaGkuaHRtbAo+
Pj4gLSBWTVJTIGFuZCBWTVNSOgo+Pj4gaHR0cDovL2luZm9jZW50ZXIuYXJtLmNvbS9oZWxwL2lu
ZGV4LmpzcD90b3BpYz0vY29tLmFybS5kb2MuZHVpMDIwNGgvQmNmYmRpaGkuaHRtbAo+Pj4KPj4+
IFNob3VsZCBhIG1hY3JvIGNhbGxlZCBgZm1yeGAgdGhhdCBoYWQgYSBjb21tZW50IGFib3V0IGBm
bXJ4YCBiZSB1c2luZwo+Pj4gYHZtcnNgIGluIHBsYWNlIG9mIGBmbXJ4YD8KPj4+Cj4+PiBJdCBs
b29rcyBsaWtlIENsYW5nIHRyZWF0cyB0aGVtIHRoZSBzYW1lLCBidXQgR0NDIGtlZXBzIHRoZW0g
c2VwYXJhdGU6Cj4+PiBodHRwczovL2dvZGJvbHQub3JnL3ovWUttU0FzCj4+PiBBaCwgdGhpcyBp
cyBvbmx5IHdoZW4gc3RyZWFtaW5nIHRvIGFzc2VtYmx5LiBMb29rcyBsaWtlIHRoZXkgaGF2ZSB0
aGUKPj4+IHNhbWUgZW5jb2RpbmcsIGFuZCBwcm9kdWNlIHRoZSBzYW1lIGRpc2Fzc2VtYmx5LiAo
R29kYm9sdCBlbWl0cwo+Pj4gYXNzZW1ibHkgYnkgZGVmYXVsdCwgYW5kIGhhcyB0aGUgb3B0aW9u
IHRvIGNvbXBpbGUsIHRoZW4gZGlzYXNzZW1ibGUpLgo+Pj4gSWYgSSB0YWtlIG15IGNhc2UgZnJv
bSBnb2Rib2x0IGFib3ZlOgo+Pj4KPj4+IOKenCAgL3RtcCBhcm0tbGludXgtZ251ZWFiaWhmLWdj
YyAtTzIgLWMgeC5jCj4+PiDinpwgIC90bXAgbGx2bS1vYmpkdW1wIC1kciB4Lm8KPj4+Cj4+PiB4
Lm86IGZpbGUgZm9ybWF0IGVsZjMyLWFybS1saXR0bGUKPj4+Cj4+Pgo+Pj4gRGlzYXNzZW1ibHkg
b2Ygc2VjdGlvbiAudGV4dDoKPj4+Cj4+PiAwMDAwMDAwMCBiYXI6Cj4+PiAgICAgICAgIDA6IGYx
IGVlIDEwIDBhICAgICAgICAgICAgICAgICAgdm1ycyByMCwgZnBzY3IKPj4+ICAgICAgICAgNDog
NzAgNDcgICAgICAgICAgICAgICAgICAgICAgICBieCBscgo+Pj4gICAgICAgICA2OiAwMCBiZiAg
ICAgICAgICAgICAgICAgICAgICAgIG5vcAo+Pj4KPj4+IDAwMDAwMDA4IGJhejoKPj4+ICAgICAg
ICAgODogZjEgZWUgMTAgMGEgICAgICAgICAgICAgICAgICB2bXJzIHIwLCBmcHNjcgo+Pj4gICAg
ICAgICBjOiA3MCA0NyAgICAgICAgICAgICAgICAgICAgICAgIGJ4IGxyCj4+PiAgICAgICAgIGU6
IDAwIGJmICAgICAgICAgICAgICAgICAgICAgICAgbm9wCj4+Pgo+Pj4gU28gaW5kZWVkIGEgc2lt
aWxhciBlbmNvZGluZyBleGlzdHMgZm9yIHRoZSB0d28gZGlmZmVyZW50IGFzc2VtYmxlcgo+Pj4g
aW5zdHJ1Y3Rpb25zLgo+Pgo+PiBEb2VzIHRoYXQgaG9sZCBmb3IgQVJNIChBMzIpIGluc3RydWN0
aW9ucyBhcyB3ZWxsPwo+IAo+IEl0IHNob3VsZCBkbyAtIHRoZXkncmUgYWxsIHRoZSBzYW1lIHRo
aW5nIHVuZGVybmVhdGguIFRoZSBVQUwgc3ludGF4Cj4ganVzdCByZW5hbWVkIGFsbCB0aGUgbGVn
YWN5IFZGUCBtbmVtb25pY3MgZnJvbSBGeHh4IHRvIFZ4eHggZm9ybSwKPiBhcGFydCBmcm9tIGEg
Y291cGxlIG9mIHRoaW5ncyB0aGF0IHdlcmUgYWxyZWFkeSBkZXByZWNhdGVkLiBHQVMgc3RpbGwK
PiBhY2NlcHRzIGJvdGggcmVnYXJkbGVzcyBvZiAiLnN5bnRheCB1bmlmaWVkIiwgYW5kIGFzIGEg
cmVzdWx0IEdDQwo+IG5ldmVyIHNhdyBhIHJlYXNvbiB0byBzdG9wIGVtaXR0aW5nIHRoZSBvbGQg
bW5lbW9uaWNzLgo+IAoKWWVzIHRoaXMgaXMgcmVhbGx5IG9ubHkgYSBtbmVtb25pYyBjaGFuZ2Ug
d2hlbiB1bmlmaWVkIGFzc2VtYmxlcgpsYW5ndWFnZSAoVUFMKSBnb3QgaW50cm9kdWNlLCB0aGUg
QVJNIEFSTSBoYXMgYSBsaXN0IG9mIG1uZW1vbmljIGNoYW5nZXMKaW4gdGhlIGFwcGVuZGl4LgoK
SnVzdCBkbyBtYWtlIHN1cmUgSSBhbHNvIGRpZCBjb21wYXJlIHRoZSBkaXNhc3NlbWJsZWQgb2Jq
ZWN0IGZpbGUgb2YKdmZwbW9kdWxlLmMgYmVmb3JlIGFuZCBhZnRlciB0aGlzIGNoYW5nZS4KCkkg
Z3Vlc3Mgd2UgY291bGQgKHNob3VsZD8pIGFsc28gY2hhbmdlIHRoZSBtYWNybyBuYW1lLCBidXQg
SSBndWVzcyB0aGF0CnNob3VsZCBiZSBhIHNlcGFyYXRlIGNvbW1pdCBhbnl3YXkuCgotLQpTdGVm
YW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
