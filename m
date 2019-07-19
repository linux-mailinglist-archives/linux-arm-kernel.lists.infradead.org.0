Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 327766E3EC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 12:08:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gApjexotVf18YS8SVLmBHmySgrbea2TJDiwzz1CMV0k=; b=J/L1yvDcJis68T
	mYwtZ8CTvVkSWJKQNSmwC9eOkEHWAZ9dwXJBOLAwe9EkC0lycQhLGcLqQoeIXDZ3mqmk7L3i39qbt
	9qQg0W53KX32RK1se3VGCp6f0TtBhSETz7kNEcCHHXWS+mtEst4t5uHbfyXLQlGL7E76NSeWsxGXm
	NCH4GC1QbZ/kUK+y77aIVrQEubBMZK9F/E3nwFWAcmjNkjeBabwRaxsAbL3ikIss+P/+Re2lygB3C
	Iteu9E+9KegUHuYV54dvvefdDJpN3wH7qt78IP9DXS+5YN+30aBKQuGQ+Z3/rJULYkA31beVtTeg0
	rlTeaPNM39zSCJjj6Xpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoPny-0003qy-So; Fri, 19 Jul 2019 10:07:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hoPnj-0003qE-5j
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 10:07:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A3C0D337;
 Fri, 19 Jul 2019 03:07:39 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 625283F59C;
 Fri, 19 Jul 2019 03:07:38 -0700 (PDT)
Subject: Re: [PATCH 1/3] arm64: kprobes: Recover pstate.D in single-step
 exception handler
To: Masami Hiramatsu <mhiramat@kernel.org>
References: <156342860634.8565.14804606041960884732.stgit@devnote2>
 <156342861775.8565.9122725195458920037.stgit@devnote2>
From: James Morse <james.morse@arm.com>
Message-ID: <3a198660-35cc-0c65-6a6d-e30d2494ff21@arm.com>
Date: Fri, 19 Jul 2019 11:07:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <156342861775.8565.9122725195458920037.stgit@devnote2>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_030744_056559_21E5E232 
X-CRM114-Status: GOOD (  26.51  )
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
Cc: Dan Rue <dan.rue@linaro.org>, Daniel Diaz <daniel.diaz@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Matt Hart <matthew.hart@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkhCgpPbiAxOC8wNy8yMDE5IDA2OjQzLCBNYXNhbWkgSGlyYW1hdHN1IHdyb3RlOgo+IE9uIGFy
bTY0LCBpZiBhIG5lc3RlZCBrcHJvYmVzIGhpdCwgaXQgY2FuIGNyYXNoIHRoZSBrZXJuZWwgd2l0
aCBiZWxvdwo+IGVycm9yIG1lc3NhZ2UuCj4gCj4gWyAgMTUyLjExODkyMV0gVW5leHBlY3RlZCBr
ZXJuZWwgc2luZ2xlLXN0ZXAgZXhjZXB0aW9uIGF0IEVMMQo+IAo+IFRoaXMgaXMgYmVjYXVzZSBj
b21taXQgNzQxOTMzM2ZhMTVlICgiYXJtNjQ6IGtwcm9iZTogQWx3YXlzIGNsZWFyCj4gcHN0YXRl
LkQgaW4gYnJlYWtwb2ludCBleGNlcHRpb24gaGFuZGxlciIpIGNsZWFycyBwc3RhdGUuRCBhbHdh
eXMgaW4KPiB0aGUgbmVzdGVkIGtwcm9iZXMuIFRoYXQgaXMgY29ycmVjdCAqdW5sZXNzKiBhbnkg
bmVzdGVkIGtwcm9iZXMKPiAoc2luZ2xlLXN0ZXBwaW5nKSBydW5zIGluc2lkZSBvdGhlciBrcHJv
YmVzIChpbmNsdWRpbmcga3Byb2JlcyBpbgo+ICB1c2VyIGhhbmRsZXIpLgoKa3Byb2JlcyBwcm9i
aW5nIGtwcm9iZXMhPyAuLi4gd2h5IGRvIHdlIHN1cHBvcnQgdGhpcz8KCldlIHRyZWF0ICdkZWJ1
ZycgYXMgb3VyIGhpZ2hlc3QgZXhjZXB0aW9uIGxldmVsLCBpdCBjYW4gaW50ZXJydXB0IHBOTUkg
YW5kIFJBUy1lcnJvcnMuCkxldHRpbmcgaXQgbG9vcCBkb2Vzbid0IHNvdW5kIGxpa2UgYSBnb29k
IGlkZWEuCgoKPiBXaGVuIHRoZSAxc3Qga3Byb2JlIGhpdHMsIGRvX2RlYnVnX2V4Y2VwdGlvbigp
IHdpbGwgYmUgY2FsbGVkLiBBdCB0aGlzCj4gcG9pbnQsIGRlYnVnIGV4Y2VwdGlvbiAoPSBwc3Rh
dGUuRCkgbXVzdCBiZSBtYXNrZWQgKD0xKS4KCj4gV2hlbiB0aGUgMm5kIChuZXN0ZWQpIGtwcm9i
ZSBpcyBoaXQgYmVmb3JlIHNpbmdsZS1zdGVwIG9mIHRoZSBmaXJzdCBrcHJvYmUsCgpIb3cgZG9l
cyB0aGlzIGhhcHBlbj8KSSBndWVzcyB0aGUga3Byb2JlLWhlbHBlci1mdW5jdGlvbiBnZXRzIGNh
bGxlZCBpbiBkZWJ1ZyBjb250ZXh0LCBidXQgc3VyZWx5IHlvdSBjYW4ndAprcHJvYmUgYSBrcHJv
YmUtaGVscGVyLWZ1bmN0aW9uPyBXaGF0IHN0b3BzIHRoaXMgZ29pbmcgaW4gYSBsb29wPwoKCj4g
aXQgbW9kaWZpZXMgZGVidWcgZXhjZXB0aW9uIGNsZWFyIChwc3RhdGUuRCA9IDApLgoKQWZ0ZXIg
dGFraW5nIHRoZSBmaXJzdCBCUkssIERBSUY9MHhmLCBldmVyeXRoaW5nIGlzIG1hc2tlZC4gV2hl
biB5b3UgdGFrZSB0aGUgc2Vjb25kIEJSSwp0aGlzIHNob3VsZG4ndCBjaGFuZ2UuCgpUaG9zZSBz
cHNyX3NldF9kZWJ1Z19mbGFnKCkgY2FsbHMgYXJlIG1vZGlmeWluZyB0aGUgc3BzciBpbiB0aGUg
cmVncyBzdHJ1Y3R1cmUsIHRoZXkgb25seQpiZWNvbWUgUFNUQVRFIHdoZW4gd2UgZXJldCBmb3Ig
c2luZ2xlLXN0ZXAuCgoKPiBUaGVuLCB3aGVuIHRoZSAxc3Qga3Byb2JlIHNldHRpbmcgdXAgc2lu
Z2xlLXN0ZXAsIGl0IHNhdmVzIGN1cnJlbnQKPiBEQUlGLCBtYXNrIERBSUYsIGVuYWJsZSBzaW5n
bGUtc3RlcCwgYW5kIHJlc3RvcmUgREFJRi4KCj4gSG93ZXZlciwgc2luY2UgIkQiIGZsYWcgaW4g
REFJRiBpcyBjbGVhcmVkIGJ5IHRoZSAybmQga3Byb2JlLCB0aGUKPiBzaW5nbGUtc3RlcCBleGNl
cHRpb24gaGFwcGVucyBzb29uIGFmdGVyIHJlc3RvcmluZyBEQUlGLgoKUFNUQVRFLkQgYml0IGNs
ZWFyaW5nIHNob3VsZCBvbmx5IGJlIGVmZmVjdGl2ZSBmb3IgdGhlIGR1cmF0aW9uIG9mIHRoZSBz
aW5nbGUtc3RlcC4KCgo+IFRvIHNvbHZlIHRoaXMgaXNzdWUsIHRoaXMgcmVmZXJzIHNhdmVkIHBz
dGF0ZSByZWdpc3RlciB0byBjaGVjayB0aGUKPiBwcmV2aW91cyBwc3RhdGUuRCBhbmQgcmVjb3Zl
ciBpdCBpZiBuZWVkZWQuCgooVGhpcyBzb3VuZHMgbGlrZSB1bmRvaW5nIHNvbWV0aGluZyB0aGF0
IHNob3VsZG4ndCBoYXZlIGhhcHBlbmVkIGluIHRoZSBmaXJzdCBwbGFjZSkKCgo+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2tlcm5lbC9wcm9iZXMva3Byb2Jlcy5jIGIvYXJjaC9hcm02NC9rZXJu
ZWwvcHJvYmVzL2twcm9iZXMuYwo+IGluZGV4IGJkNWRmZmZjYTI3Mi4uNmUxZGMwYmI0YzgyIDEw
MDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQva2VybmVsL3Byb2Jlcy9rcHJvYmVzLmMKPiArKysgYi9h
cmNoL2FybTY0L2tlcm5lbC9wcm9iZXMva3Byb2Jlcy5jCj4gQEAgLTIwMSwxMiArMjAxLDE0IEBA
IHNwc3Jfc2V0X2RlYnVnX2ZsYWcoc3RydWN0IHB0X3JlZ3MgKnJlZ3MsIGludCBtYXNrKQo+ICAg
KiBpbnRlcnJ1cHQgb2NjdXJyZW5jZSBpbiB0aGUgcGVyaW9kIG9mIGV4Y2VwdGlvbiByZXR1cm4g
YW5kICBzdGFydCBvZgo+ICAgKiBvdXQtb2YtbGluZSBzaW5nbGUtc3RlcCwgdGhhdCByZXN1bHQg
aW4gd3JvbmdseSBzaW5nbGUgc3RlcHBpbmcKPiAgICogaW50byB0aGUgaW50ZXJydXB0IGhhbmRs
ZXIuCj4gKyAqIFRoaXMgYWxzbyBjb250cm9scyBkZWJ1ZyBmbGFnLCBzbyB0aGF0IHdlIGNhbiBy
ZWZlciB0aGUgc2F2ZWQgcHN0YXRlLgo+ICAgKi8KPiAgc3RhdGljIHZvaWQgX19rcHJvYmVzIGtw
cm9iZXNfc2F2ZV9sb2NhbF9pcnFmbGFnKHN0cnVjdCBrcHJvYmVfY3RsYmxrICprY2IsCj4gIAkJ
CQkJCXN0cnVjdCBwdF9yZWdzICpyZWdzKQo+ICB7Cj4gIAlrY2ItPnNhdmVkX2lycWZsYWcgPSBy
ZWdzLT5wc3RhdGU7Cj4gIAlyZWdzLT5wc3RhdGUgfD0gUFNSX0lfQklUOwo+ICsJc3Bzcl9zZXRf
ZGVidWdfZmxhZyhyZWdzLCAwKTsKCihOaXQ6IHRoaXMgaXMgdGhlIG9ubHkgY2FsbGVyIG9mIHNw
c3Jfc2V0X2RlYnVnX2ZsYWcoKSwgYXMgd2UncmUgbW9kaWZpbmcgcmVncy0+cHN0YXRlCmRpcmVj
dGx5IGhlcmUsIGNhbiB3ZSBsb3NlIHRoZSBoZWxwZXIgYW5kIGp1c3QgbWFuaXB1bGF0ZSByZWdz
LT5wc3RhdGU/ICkKCj4gIH0KPiAgCj4gIHN0YXRpYyB2b2lkIF9fa3Byb2JlcyBrcHJvYmVzX3Jl
c3RvcmVfbG9jYWxfaXJxZmxhZyhzdHJ1Y3Qga3Byb2JlX2N0bGJsayAqa2NiLAo+IEBAIC0yNDUs
MTUgKzI1MSwxMiBAQCBzdGF0aWMgdm9pZCBfX2twcm9iZXMgc2V0dXBfc2luZ2xlc3RlcChzdHJ1
Y3Qga3Byb2JlICpwLAo+ICAJCWtjYi0+a3Byb2JlX3N0YXR1cyA9IEtQUk9CRV9ISVRfU1M7Cj4g
IAl9Cj4KPiAtCj4gIAlpZiAocC0+YWluc24uYXBpLmluc24pIHsKPiAgCQkvKiBwcmVwYXJlIGZv
ciBzaW5nbGUgc3RlcHBpbmcgKi8KPiAgCQlzbG90ID0gKHVuc2lnbmVkIGxvbmcpcC0+YWluc24u
YXBpLmluc247Cj4KPiAgCQlzZXRfc3NfY29udGV4dChrY2IsIHNsb3QpOwkvKiBtYXJrIHBlbmRp
bmcgc3MgKi8KPgo+IC0JCXNwc3Jfc2V0X2RlYnVnX2ZsYWcocmVncywgMCk7Cj4gLQo+ICAJCS8q
IElSUXMgYW5kIHNpbmdsZSBzdGVwcGluZyBkbyBub3QgbWl4IHdlbGwuICovCj4gIAkJa3Byb2Jl
c19zYXZlX2xvY2FsX2lycWZsYWcoa2NiLCByZWdzKTsKPiAgCQlrZXJuZWxfZW5hYmxlX3Npbmds
ZV9zdGVwKHJlZ3MpOwoKVGhlc2UgdHdvIGh1bmtzIGxvb2sgbGlrZSBjbGVhbnVwLCBjb3VsZCB3
ZSBkbyB0aGlzIHNlcGFyYXRlbHkgZnJvbSBhIGZpeCBmb3Igc3RhYmxlPwoKCgo+IEBAIC0yMTYs
NiArMjE4LDEwIEBAIHN0YXRpYyB2b2lkIF9fa3Byb2JlcyBrcHJvYmVzX3Jlc3RvcmVfbG9jYWxf
aXJxZmxhZyhzdHJ1Y3Qga3Byb2JlX2N0bGJsayAqa2NiLAo+ICAJCXJlZ3MtPnBzdGF0ZSB8PSBQ
U1JfSV9CSVQ7Cj4gIAllbHNlCj4gIAkJcmVncy0+cHN0YXRlICY9IH5QU1JfSV9CSVQ7Cj4gKwo+
ICsJLyogUmVjb3ZlciBwc3RhdGUuRCBtYXNrIGlmIG5lZWRlZCAqLwo+ICsJaWYgKGtjYi0+c2F2
ZWRfaXJxZmxhZyAmIFBTUl9EX0JJVCkKPiArCQlzcHNyX3NldF9kZWJ1Z19mbGFnKHJlZ3MsIDEp
Owo+ICB9CgpVZ2guIC4uIEkgZ2V0IGl0IC4uCgpJIHRoaW5rIHRoZSBzaW1wbGVzdCBzdW1tYXJ5
IG9mIHRoZSBwcm9ibGVtIGlzOgpLcHJvYmVzIHVubWFza3MgZGVidWcgZXhjZXB0aW9ucyBmb3Ig
c2luZ2xlLXN0ZXAsIHRoZW4gbGVhdmVzIHRoZW0gdW5tYXNrZWQgd2hlbiB0aGUKcHJvYmVkIGZ1
bmN0aW9uIGlzIHJlc3RhcnRlZC4KCkknZCBsaWtlIHRvIGtub3cgbW9yZSBhYm91dCB0aGlzIG5l
c3RlZCBjYXNlLCBidXQgSSBkb24ndCB0aGluayBpdHMgdGhlIHNpbXBsZXN0IGV4YW1wbGUKb2Yg
dGhpcyBwcm9ibGVtLgpUaGUgY29tbWl0IG1lc3NhZ2UgaXMgZGVzY3JpYmluZyBib3RoIHRoZSBp
bnRlcnJ1cHRlZCBhbmQgcnVubmluZyBQU1RBVEUgYXMgUFNUQVRFLiBJCnRoaW5rIGl0IHdvdWxk
IGJlIGNsZWFyZXIgaWYgeW91IGNhbGxlZCB0aGUgaW50ZXJydXB0ZWQgb25lIFNQU1IgKHNhdmVk
IHBzdGF0ZSByZWdpc3RlcikuClRoYXQncyB0aGUgdmFsdWUgaW4gdGhlIHJlZ3Mgc3RydWN0dXJl
LgoKClBsZWFzZSBkb24ndCByZS1tYW5pcHVsYXRlIHRoZSBmbGFncywgaXRzIG92ZXJseSB2ZXJi
b3NlIGFuZCB3ZSd2ZSBhbHJlYWR5IGdvdCB0aGlzIHdyb25nCm9uY2UhIFdlIHNob3VsZCBqdXN0
IGJsaW5kbHkgcmVzdG9yZSB0aGUgREFJRiBzZXR0aW5nIHdlIGhhZCBiZWZvcmUgYXMgaXRzIHNp
bXBsZXIuCgpDb3VsZCB3ZSBjaGFuZ2Uga3Byb2Jlc19zYXZlX2xvY2FsX2lycWZsYWcoKSB0byBz
YXZlIHRoZSBEQUlGIGJpdHMgb2YgcHN0YXRlOgp84oCDa2NiLT5zYXZlZF9pcnFmbGFnID0gcmVn
cy0+cHN0YXRlICYgREFJRl9NQVNLOwooREFJRl9NQVNLIGlzIGFsbCBmb3VyIFBTUiBiaXRzKQoK
U28gdGhhdCB3ZSBjYW4gdGhlbiBmaXggdGhpcyBpbiBrcHJvYmVzX3Jlc3RvcmVfbG9jYWxfaXJx
ZmxhZygpIHdpdGg6CnwgcmVncy0+cHN0YXRlICY9IH5EQUlGX01BU0s7CnwgcmVncy0+cHN0YXRl
IHw9IGtjYi0+c2F2ZWRfaXJxZmxhZwoKKHRoZSB2YWx1ZSBzcGxpY2luZyBpcyBuZWVkZWQgYmVj
YXVzZSByZWdzLT5wc3RhdGUgYWxzbyBob2xkcyB0aGUgJ2NvbmRpdGlvbiBjb2RlJyBmbGFncywK
d2hpY2ggY291bGQgYmUgbW9kaWZpZWQgYnkgdGhlIHNpbmdsZS1zdGVwIGluc3RydWN0aW9uLCB0
aGVuIGRlcGVuZGVkIG9uIGFmdGVyd2FyZHMuKQoKClRoYW5rcywKCkphbWVzCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
