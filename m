Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 434D3879C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 14:21:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5vibMX5/EUbPTGLdxTDS99bPbBLCyG+JELgSMsOLm8A=; b=FpOG8ipezZ5/FbjSLEnL8vQCA
	QLiyvU6osp0MkxUb/wWTK/rQDmhLGftRvKpQA+FLDb2ZQNWlR7u7kvU1BsvKfg4dEqByn32T0kPZw
	db48nW/DvWMnESjaxVz7+l+sI/DNJ7hq18UKw9gfZ3P8sFScAV2iKk0TkltwF3yLJcohH/PSh2flf
	Cu6UNJptya2BSMwNNUW8kOF/s/GHyof9ySfTuHlr7t/psHbLjePMWUtIOlPSsCnEnYy7OcEBsJXZw
	Zu+xI9dTZkp0U/lkTb5bmMq0dcMyBqnxYm4zjuJbXLh28H/y3XCDrLUSNvEfONmFX92VoEy9RwKbW
	BqYVwJX+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw3tF-00051Z-N2; Fri, 09 Aug 2019 12:21:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw3t2-0004zw-KJ
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 12:20:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F0E3A15AB;
 Fri,  9 Aug 2019 05:20:47 -0700 (PDT)
Received: from [10.37.8.148] (unknown [10.37.8.148])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5204E3F706;
 Fri,  9 Aug 2019 05:20:47 -0700 (PDT)
Subject: Re: [PATCH v3 02/11] kselftest: arm64: adds first test and common
 utils
To: Dave Martin <Dave.Martin@arm.com>
References: <20190802170300.20662-1-cristian.marussi@arm.com>
 <20190802170300.20662-3-cristian.marussi@arm.com>
 <20278fdd-95d0-060f-088d-aba8ac2b0b01@arm.com>
 <20190809111635.GL10425@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <4a73fcdf-911e-b44a-ce6b-f9bcde34eec8@arm.com>
Date: Fri, 9 Aug 2019 13:20:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190809111635.GL10425@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_052048_760935_428492E8 
X-CRM114-Status: GOOD (  25.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpCgpPbiA4LzkvMTkgMTI6MTYgUE0sIERhdmUgTWFydGluIHdyb3RlOgo+IE9uIEZyaSwgQXVn
IDA5LCAyMDE5IGF0IDExOjU0OjA2QU0gKzAxMDAsIENyaXN0aWFuIE1hcnVzc2kgd3JvdGU6Cj4+
IEhpCj4+Cj4+IE9uIDgvMi8xOSA2OjAyIFBNLCBDcmlzdGlhbiBNYXJ1c3NpIHdyb3RlOgo+Pj4g
QWRkZWQgc29tZSBhcm02NC9zaWduYWwgc3BlY2lmaWMgYm9pbGVycGxhdGUgYW5kIHV0aWxpdHkg
Y29kZSB0byBoZWxwCj4+PiBmdXJ0aGVyIHRlc3RjYXNlIGRldmVsb3BtZW50Lgo+Pj4KPj4+IEEg
c2ltcGxlIHRlc3RjYXNlIGFuZCByZWxhdGVkIGhlbHBlcnMgYXJlIGFsc28gaW50cm9kdWNlZCBp
biB0aGlzIGNvbW1pdDoKPj4+IG1hbmdsZV9wc3RhdGVfaW52YWxpZF9jb21wYXRfdG9nZ2xlIGlz
IGEgc2ltcGxlIG1hbmdsZSB0ZXN0Y2FzZSB3aGljaAo+Pj4gbWVzc2VzIHdpdGggdGhlIHVjb250
ZXh0X3QgZnJvbSB3aXRoaW4gdGhlIHNpZ19oYW5kbGVyLCB0cnlpbmcgdG8gdG9nZ2xlCj4+PiBQ
U1RBVEUgc3RhdGUgYml0cyB0byBzd2l0Y2ggdGhlIHN5c3RlbSBiZXR3ZWVuIDMyYml0LzY0Yml0
IGV4ZWN1dGlvbiBzdGF0ZS4KPj4+IEV4cGVjdHMgU0lHU0VHViBvbiB0ZXN0IFBBU1MuCj4+Pgo+
Pj4gU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gTWFydXNzaSA8Y3Jpc3RpYW4ubWFydXNzaUBhcm0u
Y29tPgo+Pj4gLS0tCj4+PiBBIGZldyBmaXhlczoKPj4+IC0gdGVzdF9hcm02NF9zaWduYWxzLnNo
IHJ1bm5lciBzY3JpcHQgZ2VuZXJhdGlvbiBoYXMgYmVlbiByZXZpZXdlZCBpbiBvcmRlciB0bwo+
Pj4gICAgYmUgc2FmZSBhZ2FpbnN0IHRoZSAuZ2l0aWdub3JlCj4+PiAtIHVzaW5nIGtzZWxmdGVz
dC5oIG9mZmljaWFsbHkgcHJvdmlkZWQgZGVmaW5lcyBmb3IgdGVzdHMnIHJldHVybiB2YWx1ZXMK
Pj4+IC0gcmVtb3ZlZCBTQUZFX1dSSVRFKCkvZHVtcF91YygpCj4+PiAtIGxvb2tpbmcgZm9yIHNp
X2NvZGU9PVNFR1ZfQUNDRVJSIG9uIFNFR1YgdGVzdCBjYXNlcyB0byBiZXR0ZXIgdW5kZXJzdGFu
ZCBpZgo+Pj4gICAgdGhlIHNpZ2ZhdWx0IGhhZCBiZWVuIGRpcmVjdGx5IHRyaWdnZXJlZCBieSBL
ZXJuZWwKPj4+IC0tLQo+Pj4gICB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9hcm02NC9NYWtlZmls
ZSAgICAgICAgfCAgIDIgKy0KPj4+ICAgLi4uL3Rlc3Rpbmcvc2VsZnRlc3RzL2FybTY0L3NpZ25h
bC8uZ2l0aWdub3JlIHwgICA2ICsKPj4+ICAgdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYXJtNjQv
c2lnbmFsL01ha2VmaWxlIHwgIDg4ICsrKysrKwo+Pj4gICB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0
cy9hcm02NC9zaWduYWwvUkVBRE1FICAgfCAgNTkgKysrKwo+Pj4gICAuLi4vYXJtNjQvc2lnbmFs
L3Rlc3RfYXJtNjRfc2lnbmFscy5zcmNfc2hlbGwgfCAgNTUgKysrKwo+Pj4gICAuLi4vc2VsZnRl
c3RzL2FybTY0L3NpZ25hbC90ZXN0X3NpZ25hbHMuYyAgICAgfCAgMjYgKysKPj4+ICAgLi4uL3Nl
bGZ0ZXN0cy9hcm02NC9zaWduYWwvdGVzdF9zaWduYWxzLmggICAgIHwgMTM3ICsrKysrKysrKwo+
Pj4gICAuLi4vYXJtNjQvc2lnbmFsL3Rlc3Rfc2lnbmFsc191dGlscy5jICAgICAgICAgfCAyNjEg
KysrKysrKysrKysrKysrKysrCj4+PiAgIC4uLi9hcm02NC9zaWduYWwvdGVzdF9zaWduYWxzX3V0
aWxzLmggICAgICAgICB8ICAxMyArCj4+PiAgIC4uLi9hcm02NC9zaWduYWwvdGVzdGNhc2VzLy5n
aXRpZ25vcmUgICAgICAgICB8ICAgMSArCj4+PiAgIC4uLi9tYW5nbGVfcHN0YXRlX2ludmFsaWRf
Y29tcGF0X3RvZ2dsZS5jICAgICB8ICAyNSArKwo+Pj4gICAuLi4vYXJtNjQvc2lnbmFsL3Rlc3Rj
YXNlcy90ZXN0Y2FzZXMuYyAgICAgICAgfCAxNTAgKysrKysrKysrKwo+Pj4gICAuLi4vYXJtNjQv
c2lnbmFsL3Rlc3RjYXNlcy90ZXN0Y2FzZXMuaCAgICAgICAgfCAgODMgKysrKysrCj4+PiAgIDEz
IGZpbGVzIGNoYW5nZWQsIDkwNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+PiAgIGNy
ZWF0ZSBtb2RlIDEwMDY0NCB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9hcm02NC9zaWduYWwvLmdp
dGlnbm9yZQo+Pj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMv
YXJtNjQvc2lnbmFsL01ha2VmaWxlCj4+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCB0b29scy90ZXN0
aW5nL3NlbGZ0ZXN0cy9hcm02NC9zaWduYWwvUkVBRE1FCj4+PiAgIGNyZWF0ZSBtb2RlIDEwMDc1
NSB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9hcm02NC9zaWduYWwvdGVzdF9hcm02NF9zaWduYWxz
LnNyY19zaGVsbAo+Pj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgdG9vbHMvdGVzdGluZy9zZWxmdGVz
dHMvYXJtNjQvc2lnbmFsL3Rlc3Rfc2lnbmFscy5jCj4+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCB0
b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9hcm02NC9zaWduYWwvdGVzdF9zaWduYWxzLmgKPj4+ICAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IHRvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2FybTY0L3NpZ25hbC90
ZXN0X3NpZ25hbHNfdXRpbHMuYwo+Pj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgdG9vbHMvdGVzdGlu
Zy9zZWxmdGVzdHMvYXJtNjQvc2lnbmFsL3Rlc3Rfc2lnbmFsc191dGlscy5oCj4+PiAgIGNyZWF0
ZSBtb2RlIDEwMDY0NCB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9hcm02NC9zaWduYWwvdGVzdGNh
c2VzLy5naXRpZ25vcmUKPj4+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IHRvb2xzL3Rlc3Rpbmcvc2Vs
ZnRlc3RzL2FybTY0L3NpZ25hbC90ZXN0Y2FzZXMvbWFuZ2xlX3BzdGF0ZV9pbnZhbGlkX2NvbXBh
dF90b2dnbGUuYwo+Pj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgdG9vbHMvdGVzdGluZy9zZWxmdGVz
dHMvYXJtNjQvc2lnbmFsL3Rlc3RjYXNlcy90ZXN0Y2FzZXMuYwo+Pj4gICBjcmVhdGUgbW9kZSAx
MDA2NDQgdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYXJtNjQvc2lnbmFsL3Rlc3RjYXNlcy90ZXN0
Y2FzZXMuaAo+Pj4KPj4KPj4gQSBmZXcgbW9yZSBjb21waWxhdGlvbiB3YXJuaW5ncyB0cmlnZ2Vy
ZWQgYnkgR0NDLTggT05MWSB3aGVuIGNvbXBpbGluZyB2aWEgdGhlIHRvcCBrc2VsZnRlc3QgTWFr
ZWZpbGUvdGFyZ2V0Cj4+IChkdWUgdG8gc29tZSBhZGRpdGlvbmFsIC1XIHBhc3NlZCBkb3duIGFu
ZCBhbiBhd2t3YXJkIHVzZSBvZiBzbnByaW50ZiBvbiBteSBzaWRlLi4uKQo+Pgo+Pgo+PiB0ZXN0
X3NpZ25hbHNfdXRpbHMuYzogSW4gZnVuY3Rpb24g4oCYZmVhdHNfdG9fc3RyaW5n4oCZOgo+PiB0
ZXN0X3NpZ25hbHNfdXRpbHMuYzozODoxMzogd2FybmluZzogcGFzc2luZyBhcmd1bWVudCAxIHRv
IHJlc3RyaWN0LXF1YWxpZmllZCBwYXJhbWV0ZXIgYWxpYXNlcyB3aXRoIGFyZ3VtZW50IDQgWy1X
cmVzdHJpY3RdCj4+ICAgICAgc25wcmludGYoZmVhdHNfc3RyaW5nLCBNQVhfRkVBVFNfU1ogLSAx
LCAiJXMgJXMgIiwKPj4gICAgICAgICAgICAgICBefn5+fn5+fn5+fn4KPj4gdGVzdF9zaWduYWxz
X3V0aWxzLmM6IEluIGZ1bmN0aW9uIOKAmGRlZmF1bHRfaGFuZGxlcuKAmToKPj4gdGVzdF9zaWdu
YWxzX3V0aWxzLmM6MTkyOjE5OiB3YXJuaW5nOiBmb3JtYXQg4oCYJXDigJkgZXhwZWN0cyBhcmd1
bWVudCBvZiB0eXBlIOKAmHZvaWQgKuKAmSwgYnV0IGFyZ3VtZW50IDMgaGFzIHR5cGUg4oCYbG9u
ZyBsb25nIHVuc2lnbmVkIGludOKAmSBbLVdmb3JtYXQ9XQo+PiAgICAgICJTSUdfT0sgLS0gU1A6
JXAgIHNpX2FkZHJAOjB4JXAgIHNpX2NvZGU6JWQgIHRva2VuQDoweCVwICBvZmZzZXQ6JWxkXG4i
LAo+PiAgICAgICAgICAgICAgICAgICAgfl4KPj4KPj4gd2lsbCBiZSBmaXhlZCBpbiBWNCBhczoK
Pj4KPj4KPj4gZGlmZiAtLWdpdCBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2FybTY0L3NpZ25h
bC90ZXN0X3NpZ25hbHNfdXRpbHMuYyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2FybTY0L3Np
Z25hbC90ZXN0X3NpZ25hbHNfdXRpbHMuYwo+PiBpbmRleCAzMTc4OGExZDMzYTQuLmMwZjNjZDFi
NTYwYSAxMDA2NDQKPj4gLS0tIGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYXJtNjQvc2lnbmFs
L3Rlc3Rfc2lnbmFsc191dGlscy5jCj4+ICsrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2Fy
bTY0L3NpZ25hbC90ZXN0X3NpZ25hbHNfdXRpbHMuYwo+PiBAQCAtMjMsMjEgKzIzLDI1IEBAIGV4
dGVybiBzdHJ1Y3QgdGRlc2NyICpjdXJyZW50Owo+PiAgIHN0YXRpYyBpbnQgc2lnX2NvcHljdHgg
PSBTSUdUUkFQOwo+PiAgIHN0YXRpYyBjaGFyICpmZWF0c19zdG9yZVtGTUFYX0VORF0gPSB7Cj4+
IC0gICAgICAgIlNTQlMiLAo+PiAtICAgICAgICJQQU4iLAo+PiAtICAgICAgICJVQU8iLAo+PiAr
ICAgICAgICIgU1NCUyAiLAo+PiArICAgICAgICIgUEFOICIsCj4+ICsgICAgICAgIiBVQU8gIiwK
Pj4gICB9Owo+PiAgICNkZWZpbmUgTUFYX0ZFQVRTX1NaICAgMTI4Cj4+ICtzdGF0aWMgY2hhciBm
ZWF0c19zdHJpbmdbTUFYX0ZFQVRTX1NaXTsKPj4gKwo+PiAgIHN0YXRpYyBpbmxpbmUgY2hhciAq
ZmVhdHNfdG9fc3RyaW5nKHVuc2lnbmVkIGxvbmcgZmVhdHMpCj4+ICAgewo+PiAtICAgICAgIHN0
YXRpYyBjaGFyIGZlYXRzX3N0cmluZ1tNQVhfRkVBVFNfU1pdOwo+PiArICAgICAgIGZvciAoaW50
IGkgPSAwOyBpIDwgRk1BWF9FTkQ7IGkrKykgewo+PiArICAgICAgICAgICAgICAgc2l6ZV90IHRs
ZW4gPSAwOwo+PiAtICAgICAgIGZvciAoaW50IGkgPSAwOyBpIDwgRk1BWF9FTkQgJiYgZmVhdHNf
c3RvcmVbaV1bMF07IGkrKykgewo+PiAtICAgICAgICAgICAgICAgaWYgKGZlYXRzICYgMVVMIDw8
IGkpCj4+IC0gICAgICAgICAgICAgICAgICAgICAgIHNucHJpbnRmKGZlYXRzX3N0cmluZywgTUFY
X0ZFQVRTX1NaIC0gMSwgIiVzICVzICIsCj4+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGZlYXRzX3N0cmluZywgZmVhdHNfc3RvcmVbaV0pOwo+PiArICAgICAgICAgICAgICAgaWYg
KGZlYXRzICYgMVVMIDw8IGkpIHsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgc3RybmNhdChm
ZWF0c19zdHJpbmcsIGZlYXRzX3N0b3JlW2ldLAo+IAo+IFNob3VsZCB0aGlzIGJlIGZlYXRzX3N0
cmluZyArIHRsZW4/Cj4KCnN0cm5jYXQgYXBwZW5kcyB0byB0aGUgZW5kIG9mIGEgTlVMTCB0ZXJt
aW5hdGVkIHN0cmluZyBvdmVyd3JpdGluZyB0aGUgTlVMTCBpdHNlbGYgYW5kCmFwcGVuZGluZyBp
dHMgb3duIE5VTEwgKGFzIGxvbmcgYXMgZGVzdCBhbmQgc3JjIGRvIG5vdCBvdmVybGFwIGFuZCBm
aXRzIHRoZSBtYXggc2l6ZSBwYXJhbSksCnNvIGl0IG11c3QgYmUgZmVkIHRoZSBzdGFydCBvZiB0
aGUgZGVzdCBzdHJpbmcgdG8gd2hpY2ggd2UgYXJlIGFwcGVuZGluZwogIAo+PiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIE1BWF9GRUFUU19TWiAtIDEgLSB0bGVuKTsKPiAKPiBBbiBh
c3NlcnQodGxlbiA8PSBNQVhfRkVBVFNfU1ogLSAxKSBpcyBwcm9iYWJseSBhIGdvb2QgaWRlYSBo
ZXJlLAo+IGluIGNhc2UgbW9yZSBmZWF0dXJlcyBhcmUgYWRkZWQgdG8gZmVhdHNfc3RvcmVbXSBz
b21lZGF5Lgo+IAoKWWVzIGluIGZhY3QuLi5pZiBub3QgaXQgd291bGQgYmUgc2ltcGx5IHRydW5j
YXRlZCBzaWxlbnRseQoKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgdGxlbiArPSBzdHJsZW4o
ZmVhdHNfc3RvcmVbaV0pOwo+PiArICAgICAgICAgICAgICAgfQo+IAo+IERvbid0IHdlIG5lZWQg
dG8gaW5pdGlhbGlzZSB0bGVuIG91dHNpZGUgdGhlIGxvb3A/ICBPdGhlcndpc2Ugd2UganVzdAo+
IHplcm8gaXQgYWdhaW4gYWZ0ZXIgdGhlICs9LgoKLi5hbmQgdGhhdCdzIGEgYnVnIDo8Cgo+IAo+
PiAgICAgICAgICB9Cj4+ICAgICAgICAgIHJldHVybiBmZWF0c19zdHJpbmc7Cj4+IEBAIC0xOTAs
NyArMTk0LDcgQEAgc3RhdGljIHZvaWQgZGVmYXVsdF9oYW5kbGVyKGludCBzaWdudW0sIHNpZ2lu
Zm9fdCAqc2ksIHZvaWQgKnVjKQo+PiAgICAgICAgICAgICAgICAgIC8qIGl0J3MgYSBidWcgaW4g
dGhlIHRlc3QgY29kZSB3aGVuIHRoaXMgYXNzZXJ0IGZhaWwgKi8KPj4gICAgICAgICAgICAgICAg
ICBhc3NlcnQoIWN1cnJlbnQtPnNpZ190cmlnIHx8IGN1cnJlbnQtPnRyaWdnZXJlZCk7Cj4+ICAg
ICAgICAgICAgICAgICAgZnByaW50ZihzdGRlcnIsCj4+IC0gICAgICAgICAgICAgICAgICAgICAg
ICJTSUdfT0sgLS0gU1A6JXAgIHNpX2FkZHJAOjB4JXAgIHNpX2NvZGU6JWQgIHRva2VuQDoweCVw
ICBvZmZzZXQ6JWxkXG4iLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAiU0lHX09LIC0tIFNQ
OiVsbFggIHNpX2FkZHJAOjB4JXAgIHNpX2NvZGU6JWQgIHRva2VuQDoweCVwICBvZmZzZXQ6JWxk
XG4iLAo+IAo+IEZvciBjb25zaXN0ZW5jeSwgY2FuIHdlIGhhdmUgYSAiMHgiIHByZWZpeD8KPiAK
PiBJIHRoaW5rICVwIHVzdWFsbHkgZ2VuZXJhdGVzIGEgIjB4IiBwcmVmaXggYnkgaXRzZWxmLCBz
byAweCVwIG1pZ2h0IGdpdmUKPiBhIGRvdWJsZSBwcmVmaXguCj4gCgpZZXMgeW91IGFyZSByaWdo
dC4KCk1vcmVvdmVyIEknbSBpbiBkb3VidCB3aGF0IHRvIGRvIGdlbmVyYWxseSB3aXRoIGFsbCB0
aGVzZSBzdGRlcnIgb3V0cHV0LCBiZWNhdXNlIEkgb3B0aW9uYWxseSBkaXNjYXJkIHRvIG51bGwK
dGVzdGluZyBzdGFuZGFsb25lLCBidXQgdGhpcyBpcyBub3Qgd2hhdCB0aGUgS1NGVCBmcmFtZXdv
cmsgcnVubmVyIHNjcmlwdCBkb2VzLCBzbyBhcm02NC9zaWduYWwgdGVzdHMKZW5kIHVwIGJlaW5n
IG92ZXJseSB2ZXJib3NlIHdoZW4gcnVuIGZyb20gdGhlIGZyYW1ld29yayAoZXZlbiBpZiB0ZXN0
cyB1c2UgYW55d2F5IHRoZSBLU0ZUIGV4aXQgY29kZXMKY29udmVudGlvbnMgc28gYWxsIHRoZSBy
ZXN1bHRzIGFyZSBjb3JyZWN0bHkgcmVwb3J0ZWQpOyBidXQgSSBzdXBwb3NlIEknbGwgcmVjZWl2
ZSBhIGNsZWFyIGluZGljYXRpb24gb24gdGhpcyBtYXR0ZXIKZnJvbSB0aGUgbWFpbnRhaW5lcnMg
YXQgdGhlIGVuZC4uLgogIApDaGVlcnMKCkNyaXN0aWFuCgo+IFsuLi5dCj4gCj4gQ2hlZXJzCj4g
LS0tRGF2ZQo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
