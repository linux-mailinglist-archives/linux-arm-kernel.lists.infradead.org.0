Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E18E71B1D17
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 05:49:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ynQoAil0AVMRpfCKQpv+l0wmZZ1Nd85iBJnsw1UUuf8=; b=h9jVnfjNg/I9hfCtkN8kqyRSR
	iz7qQTKxJgDKiv3E0SCwLUW6p3GEaZzk0ZW04TumFzSbZ0RjYnN4tex7E7BGjffPZam21eyB5hg51
	JmQuU8sT8ZngcUG5eoC+2y3qU1DtIPhlBNjTntum8OFhc9YX3rSktakqPWhCUrYQWmwV3UcwA2m37
	1U7zEhIteled4dGbSc0pHdRZAsdLls5odEVCmaEu8Ge/i1qz+zNfVxFZxYC342rHvyKzE901IruTY
	h06I4olJCLCDijtk9DRcn6OFv+FInyprCY4LJbnGoV4xwOHiz/nW2Rquo0zySDYz8ir6zSWk1VHx3
	SHdkOG7dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQjul-0008MA-8M; Tue, 21 Apr 2020 03:49:39 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQjuP-0008Fq-2w
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 03:49:19 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587440956; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=jAl6zaKvi+5lW1/7o2BLtUtV7Gyv5Gw9FCFSeA0Ynj0=;
 b=HQ0ItVS8lBxh7cjMSJtBHfBbLUW60TeNp4G2DGC8nadcoWs7rnT+XZn8yXtrAlTVmjPu6xXt
 ITdqEbrsXoRFEWtGit9Qqt4elJd6dXr1vsRl/8tzqiqQ0fnFjlm4PJBxC4Qh8ZGBGGL0v5vT
 b5QbVgk5EcpmcrLy/AsBVC245dY=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9e6d3a.7f47865fe420-smtp-out-n01;
 Tue, 21 Apr 2020 03:49:14 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id C7D00C43636; Tue, 21 Apr 2020 03:49:13 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: tingwei)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id CF53FC432C2;
 Tue, 21 Apr 2020 03:49:11 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 21 Apr 2020 11:49:11 +0800
From: tingwei@codeaurora.org
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: hw_breakpoint: don't clear debug registers in halt
 mode
In-Reply-To: <20200331114502.GA29553@willie-the-truck>
References: <20200328083209.21793-1-tingwei@codeaurora.org>
 <20200330123946.GH1309@C02TD0UTHF1T.local>
 <20200330134218.GB10633@willie-the-truck>
 <2f4d076b2b21de3908f0821126d0c61e@codeaurora.org>
 <20200331074147.GA25612@willie-the-truck>
 <518d9ca9652c23bfc0e1831306144418@codeaurora.org>
 <20200331114502.GA29553@willie-the-truck>
Message-ID: <20b8c92a16db07978dfcb8cdf3b0e185@codeaurora.org>
X-Sender: tingwei@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_204917_217253_04B7BD18 
X-CRM114-Status: GOOD (  29.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

5ZyoIDIwMjAtMDMtMzEgMTk6NDXvvIxXaWxsIERlYWNvbiDlhpnpgZPvvJoKPiBPbiBUdWUsIE1h
ciAzMSwgMjAyMCBhdCAwNzozMzozOFBNICswODAwLCB0aW5nd2VpQGNvZGVhdXJvcmEub3JnIHdy
b3RlOgo+PiDlnKggMjAyMC0wMy0zMSAxNTo0Me+8jFdpbGwgRGVhY29uIOWGmemBk++8mgo+PiA+
IE9uIFR1ZSwgTWFyIDMxLCAyMDIwIGF0IDEwOjM5OjQyQU0gKzA4MDAsIHRpbmd3ZWlAY29kZWF1
cm9yYS5vcmcgd3JvdGU6Cj4+ID4gPiDlnKggMjAyMC0wMy0zMCAyMTo0Mu+8jFdpbGwgRGVhY29u
IOWGmemBk++8mgo+PiA+ID4gPiBPbiBNb24sIE1hciAzMCwgMjAyMCBhdCAwMTozOTo0NlBNICsw
MTAwLCBNYXJrIFJ1dGxhbmQgd3JvdGU6Cj4+ID4gPiA+ID4gT24gU2F0LCBNYXIgMjgsIDIwMjAg
YXQgMDQ6MzI6MDlQTSArMDgwMCwgVGluZ3dlaSBaaGFuZyB3cm90ZToKPj4gPiA+ID4gPiA+IElm
IGV4dGVybmFsIGRlYnVnZ2VyIHNldHMgYSBicmVha3BvaW50IGZvciBvbmUgS2VybmVsIGZ1bmN0
aW9uCj4+ID4gPiA+ID4gPiB3aGVuIGRldmljZSBpcyBpbiBib290bG9hZGVyIG1vZGUgYW5kIGxv
YWRzIEtlcm5lbCwgdGhpcwo+PiA+ID4gPiA+ID4gYnJlYWtwb2ludAo+PiA+ID4gPiA+ID4gd2ls
bCBiZSB3aXBlZCBvdXQgaW4gaHdfYnJlYWtwb2ludF9yZXNldCgpLiBUbyBmaXggdGhpcywgY2hl
Y2sKPj4gPiA+ID4gPiA+IE1EU0NSX0VMMS5IREUgaW4gaHdfYnJlYWtwb2ludF9yZXNldCgpLiBX
aGVuIE1EU0NSX0VMMS5IREUgaXMKPj4gPiA+ID4gPiA+IDBiMSwgaGFsdGluZyBkZWJ1ZyBpcyBl
bmFibGVkLiBEb24ndCByZXNldCBkZWJ1ZyByZWdpc3RlcnMgaW4KPj4gPiA+ID4gPiA+IHRoaXMK
Pj4gPiA+ID4gY2FzZS4KPj4gPiA+ID4gPgo+PiA+ID4gPiA+IEkgZG9uJ3QgdGhpbmsgdGhpcyBp
cyBzdWZmaWNpZW50LCBiZWNhdXNlIHRoZSBrZXJuZWwgY2FuIHN0aWxsCj4+ID4gPiA+ID4gc3Vi
c2VxdWVudGx5IG1lc3Mgd2l0aCBicmVha3BvaW50cywgYW5kIHRoZSBIVyBkZWJ1Z2dlciBtaWdo
dCBub3QKPj4gPiA+ID4gPiBiZQo+PiA+ID4gPiA+IGF0dGFjaGVkIGF0IHRoaXMgcG9pbnQgaW4g
dGltZSBhbnlob3cuCj4+ID4gPiA+ID4KPj4gPiA+ID4gPiBJIHJlY2tvbiB0aGlzIHNob3VsZCBo
YW5nIG9mZiB0aGUgZXhpc3RpbmcgIm5vZGVidW1vbiIgY29tbWFuZAo+PiA+ID4gPiA+IGxpbmUK
Pj4gPiA+ID4gPiBvcHRpb24sIGFuZCB3ZSBzaG91bGRuJ3QgdXNlIEhXIGJyZWFrcG9pbnRzIGF0
IGFsbCB3aGVuIHRoYXQgaXMKPj4gPiA+ID4gPiBwYXNzZWQuCj4+ID4gPiA+ID4gVGhlbiB5b3Ug
Y2FuIHBhc3MgdGhhdCB0byBwcmV2ZW50IHRoZSBrZXJuZWwgc3RvbXBpbmcgb24gdGhlCj4+ID4g
PiA+ID4gZXh0ZXJuYWwKPj4gPiA+ID4gPiBkZWJ1Z2dlci4KPj4gPiA+ID4gPgo+PiA+ID4gPiA+
IFdpbGwsIHRob3VnaHRzPwo+PiA+ID4gPgo+PiA+ID4gPiBJIHdhcyBnb2luZyB0byBzdWdnZXN0
IHRoZSBzYW1lIHRoaW5nLCBhbHRob3VnaCB3ZSB3aWxsIGFsc28gbmVlZCB0bwo+PiA+ID4gPiB0
YWtlCj4+ID4gPiA+IGNhcmUgdG8gcmVzZXQgdGhlIHJlZ2lzdGVycyBpZiAibm9kZWJ1Z21vbiIg
aXMgdG9nZ2xlZCBhdCBydW50aW1lCj4+ID4gPiA+IHZpYQo+PiA+ID4gPiB0aGUKPj4gPiA+ID4g
ImRlYnVnX2VuYWJsZWQiIGZpbGUgaW4gZGVidWdmcy4KPj4gPiA+ID4KPj4gPiA+IFRoYW5rcyBm
b3IgdGhlIHN1Z2dlc3Rpb24sIE1hcmsgYW5kIFdpbGwuIEl0J3MgYSBncmVhdCBpZGVhIHRvIHVz
ZQo+PiA+ID4gIm5vZGVidWdtb24iLiBXaGVuICJub2RlYnVnbW9uIiBpcyBzZXQsIEtlcm5lbCB3
b24ndCBjaGFuZ2UgSFcKPj4gPiA+IGJyZWFrcG9pbnRzLgo+PiA+ID4KPj4gPiA+IEZvciByZXNl
dCB0aGUgcmVnaXN0ZXJzIGFmdGVyICJkZWJ1Z19lbmFibGVkIiBpcyB0b2dnbGVkLCBJJ20KPj4g
PiA+IHRoaW5raW5nIGlmCj4+ID4gPiB3ZSBhcmUgYWRkaW5nIHVubmVjZXNzYXJ5IGNvbXBsZXhp
dHkgaGVyZS5JZiB3ZSB0YWtlIHRoYXQgYXBwcm9hY2gsIHdlCj4+ID4gPiB3aWxsCj4+ID4gPiBo
b29rICJkZWJ1Z19lbmFibGVkIiBpbnRlcmZhY2UgYW5kIHVzZSBzbXBfY2FsbF9mdW5jdGlvbl9z
aW5nbGUoKSB0bwo+PiA+ID4gY2FsbAo+PiA+ID4gaHdfYnJlYWtwb2ludF9yZXNldCgpIG9uIGVh
Y2ggQ1BVLiBXYWl0IGZvciBhbGwgQ1BVcycgZXhlY3V0aW9uIGRvbmUKPj4gPiA+IGFuZAo+PiA+
ID4gY2hhbmdlICJkZWJ1Z19lbmFibGVkIi4gRXh0ZXJuYWwgZGVidWdnZXIgd291bGQgY2xlYXIg
dGhlCj4+ID4gPiBicmVha3BvaW50cyB3aGVuCj4+ID4gPiBpdCBkZXRhY2hlcyB0aGUgZGV2aWNl
IGFuZCByZXN0b3JlcyBpdHMgYnJlYWtwb2ludHMgd2hlbiBhdHRhY2hlcyB0aGUKPj4gPiA+IGRl
dmljZS4KPj4gPiA+IEFzc3VtZSBkZWJ1Z19lbmFibGVkIGlzIGNoYW5nZWQgdG8gb25lIGFmdGVy
IGV4dGVybmFsIGRlYnVnZ2VyCj4+ID4gPiBkZXRhY2hlcwo+PiA+ID4gdGhlCj4+ID4gPiBkZXZp
Y2UuIERlYnVnZ2VyIHdvdWxkIGFscmVhZHkgY2xlYXIgdGhlIGJyZWFrcG9pbnQgcmVnaXN0ZXJz
LiBJZgo+PiA+ID4gZGViZ2dlcgo+PiA+ID4gaXMKPj4gPiA+IHN0aWxsIGF0dGFjaGVkLCB0aGVy
ZSdzIG5vdGhpbmcgS2VybmVsIGNhbiBkbyB0byBzdG9wIGl0Cj4+ID4gPiByZXN0b3Jlcy9wcm9n
cmFtcwo+PiA+ID4gdGhlIGJyZWFrcG9pbnQgcmVnaXN0ZXJzLgo+PiA+ID4KPj4gPiA+IFdoYXQg
ZG8geW91IHRoaW5rIG9mIHRoaXM/Cj4+ID4KPj4gPiBJdCdzIGFsbCBhIGJpdCBvZiBhIG1lc3Mu
IExvb2tpbmcgYXQgaXQgc29tZSBtb3JlLCB3aHkgY2FuJ3QgdGhlCj4+ID4gZXh0ZXJuYWwKPj4g
PiBkZWJ1Z2dlciBzaW1wbHkgdHJhcCBhY2Nlc3MgdG8gdGhlIGRlYnVnIHJlZ2lzdGVycyB1c2lu
ZyBFRFNDUi5UREE/IFRoYXQKPj4gPiB3YXksIHdlIGRvbid0IGhhdmUgdG8gY2hhbmdlIGFueXRo
aW5nIGluIHRoZSBrZXJuZWwuCj4+ID4KPj4gCj4+IEV4dGVybmFsIGRlYnVnZ2VyIGhhcyB0aGUg
ZnVuY3Rpb24gdG8gdHJhcCBhY2Nlc3MgdG8gZGVidWcgcmVnaXN0ZXJzIAo+PiBub3cuCj4+IFdo
YXQgZG8gd2UgZXhwZWN0IGRlYnVnZ2VyIHRvIGRvIGFmdGVyIGNvcmUgaXMgc3RvcHBlZD8gU2tp
cCB0aGF0IG1zcgo+PiBpbnN0cnVjdGlvbiBhbmQgY29udGludWUgdG8gcnVuPwo+IAo+IFRoZSBu
aWNlc3QgdGhpbmcgdG8gZG8gd291bGQgcHJvYmFibHkgYmUgdG8gcmVjb3JkIGFsbCB0aGUgYWNj
ZXNzZXMgCj4gbWFkZQo+IGJ5IHRoZSBPUyBzbyB0aGF0IGl0IGNhbiBlbXVsYXRlIHJlYWRzIGFu
ZCByZXBsYXkgd3JpdGVzIHdoZW4gZXh0ZXJuYWwKPiBkZWJ1Z2dpbmcgaXMgb3Zlci4gR2l2ZW4g
dGhhdCB5b3UnZCBzdGlsbCBiZSBleHBlY3RpbmcgdG8gcGFzcyAKPiAibm9kZWJ1Z21vbiIsCj4g
dGhlIGVtdWxhdGlvbiBzaG91bGQgYmUgcHJldHR5IHN0cmFpZ2h0Zm9yd2FyZCwgSSB0aGluay4K
PiAKPiBXaWxsCgpXaWxsLAoKVG8gcHJvdmlkZSBhbiB1cGRhdGUgb24gdGhpcywgSSd2ZSB3b3Jr
ZWQgd2l0aCBleHRlcm5hbCBkZWJ1Z2dlciB2ZW5kb3IgCm9uIHRoaXMuCk5vdyBleHRlcm5hbCBk
ZWJ1Z2dlciBjYW4gdHJhcCB0aGUgd3JpdGUgdG8gZGVidWcgcmVnaXN0ZXJzIGFuZCBpZ25vcmUg
CnRoZSB3cml0ZS4KVGhpcyBpcyB0aGUgZmlyc3Qgc3RlcC4KClRoYW5rcywKVGluZ3dlaQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
