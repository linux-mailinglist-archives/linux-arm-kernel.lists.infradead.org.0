Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D131F93EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:51:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ywa76LPN65kVpFFPoMW4VRCcJVP3tdTe/OlZkN3Vaek=; b=oavo4x20YcwhdV
	//ByBt+zG13mKKx3oYFx0qxfXBq5fj1SyF4Vt92FfW63F3GqovVFIHAGEDbtcN6xDDVeC7+actqUw
	QhvoRxFYt6W3PeRVqIERXHGTfkTugmNgQSALU5nPManigCSRc6NdJraTcmXzSTDrO9lcwUJjCgpa9
	6HvH+CiQ57xKMuc9bJMsXRBzQmRepZrl9Rn5RtnPa36iGsPvbFIoTJ3nz09t0AkvGeOzgKI2AOg++
	yGa3hUftM93Myh6VP4cdUvk3/vblBphVzGH4IlfUV5KYu33//PZewc6OhrgoSas2+V5Ne2E/IKwTx
	MZ+mUSXSGn4xBmWksWuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklmQ-0004JU-Sb; Mon, 15 Jun 2020 09:51:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jklmG-0004Ig-T1
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:51:42 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 473972068E;
 Mon, 15 Jun 2020 09:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592214698;
 bh=VQSsnQX35sR5TfD+RN9LG5tzaQw22yankU/+xU93cY4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NQlHIN8i1uqF1tHVpoAL5v8g7CDhJAeOmA5A4ZAFG/9WAYr0bA3PhhvfkIL4Y7/Ou
 f9FQVRO5Ig4MDP3DfzPHGzWExA+gt3xKXnkuw3xtrvsmBqYDns3yZXwM6Ccwytdxom
 9D7nTIyyyknQuA1HM6+iRJOwaNtrKorByKA5bYhg=
Date: Mon, 15 Jun 2020 10:51:34 +0100
From: Will Deacon <will@kernel.org>
To: Achin Gupta <achin.gupta@arm.com>
Subject: Re: [RFC PATCH 1/3] dt-bindings: Add ARM PSA FF binding for
 non-secure VM partitions
Message-ID: <20200615095133.GA2477@willie-the-truck>
References: <20200601094512.50509-1-sudeep.holla@arm.com>
 <20200601094512.50509-2-sudeep.holla@arm.com>
 <20200609223551.GA1620273@bogus>
 <20200610074346.GB15939@willie-the-truck>
 <5B3F18A4-5DA4-411E-9E26-7D25DEE3D414@arm.com>
 <20200611171222.GB7725@willie-the-truck>
 <20200615091639.GD46361@C02TC1ARHF1T>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615091639.GD46361@C02TC1ARHF1T>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_025140_975806_297C5337 
X-CRM114-Status: GOOD (  27.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Rob Herring <robh@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Marc Zyngier <maz@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sudeep Holla <Sudeep.Holla@arm.com>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdW4gMTUsIDIwMjAgYXQgMTA6MTY6MzlBTSArMDEwMCwgQWNoaW4gR3VwdGEgd3Jv
dGU6Cj4gT24gVGh1LCBKdW4gMTEsIDIwMjAgYXQgMDY6MTI6MjNQTSArMDEwMCwgV2lsbCBEZWFj
b24gd3JvdGU6Cj4gPiBPbiBUaHUsIEp1biAxMSwgMjAyMCBhdCAwMzo0NjozNVBNICswMDAwLCBB
Y2hpbiBHdXB0YSB3cm90ZToKPiA+ID4gPiBPbiAxMCBKdW4gMjAyMCwgYXQgMDg6NDMsIFdpbGwg
RGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gPiA+IE9uIFR1ZSwgSnVuIDA5LCAy
MDIwIGF0IDA0OjM1OjUxUE0gLTA2MDAsIFJvYiBIZXJyaW5nIHdyb3RlOgo+ID4gPiA+PiBPbiBN
b24sIEp1biAwMSwgMjAyMCBhdCAxMDo0NToxMEFNICswMTAwLCBTdWRlZXAgSG9sbGEgd3JvdGU6
Cj4gPiA+ID4+PiBBZGQgZGV2aWNldHJlZSBiaW5kaW5ncyBmb3IgYSBBcm0gUFNBIEZGLUEgY29t
cGxpYW50IG5vbi1zZWN1cmUgcGFydGl0aW9uCj4gPiA+ID4+PiBhdCB2aXJ0dWFsIGludGVyZmFj
ZShWTXMpLgo+ID4gPiA+Pj4KPiA+ID4gPj4+IFNpZ25lZC1vZmYtYnk6IFN1ZGVlcCBIb2xsYSA8
c3VkZWVwLmhvbGxhQGFybS5jb20+Cj4gPiA+ID4+PiAtLS0KPiA+ID4gPj4+IC4uLi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2FybS9hcm0scHNhLWZmYS50eHQgICB8IDQ3ICsrKysrKysrKysrKysrKysr
KysKPiA+ID4gPj4+IDEgZmlsZSBjaGFuZ2VkLCA0NyBpbnNlcnRpb25zKCspCj4gPiA+ID4+PiBj
cmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9h
cm0scHNhLWZmYS50eHQKPiA+ID4gPj4KPiA+ID4gPj4gSSdtIGhvcGluZyB0aGlzIGdvZXMgYXdh
eSBpZiB0aGUgZmlybXdhcmUgaXMgZGlzY292ZXJhYmxlLCBidXQgaWYgbm90IERUCj4gPiA+ID4+
IGJpbmRpbmdzIGFyZSBEVCBzY2hlbWEgbm93Lgo+ID4gPiA+Cj4gPiA+ID4gV2UnbGwgbmVlZCB0
aGUgYmluZGluZyBmb3IgdGhlIGt2bSBob3N0IHNpZGUsIGJlY2F1c2UgdGhlcmUgYXJlIHBsZW50
eQo+ID4gPiA+IG9mIHBhcnRpdGlvbiBwcm9wZXJ0aWVzIHRoYXQgYXJlIG5vdCBkaXNjb3ZlcmFi
bGUgKGUuZy4gbnVtYmVyIG9mIHZDUFVzKS4KPiA+ID4KPiA+ID4gSnVzdCB0cnlpbmcgdG8gdW5k
ZXJzdGFuZCB0aGUgcmVxLiBhIGJpdCBiZXR0ZXLigKYKPiA+ID4KPiA+ID4gVGhlIEZGLUEgZHJp
dmVyIGluIHRoZSBob3N0IGNhbiB1c2UgRkZBX1BBUlRJVElPTl9JTkZPX0dFVCB0byBkZXRlcm1p
bmUKPiA+ID4gdGhlIGNvdW50IG9mIHBhcnRpdGlvbnMgYW5kIHRoZWlyIHZDUFVzLgo+ID4gPgo+
ID4gPiBJcyB0aGlzIGFib3V0IGEgZ3Vlc3QgYmVpbmcgYWJsZSB0byBmaW5kIG91dCBob3cgbWFu
eSB2Q1BVcyBpdCBoYXM/Cj4gPgo+ID4gVGhpcyBpcyBhYm91dCBLVk0gZmluZGluZyBvdXQgdGhl
IGluZm9ybWF0aW9uIGl0IG5lZWRzIGluIG9yZGVyIHRvIHNwYXduCj4gPiBub24tc2VjdXJlIHBh
cnRpdGlvbnMuIEkgZG9uJ3Qgc2VlIGhvdyBpdCBjYW4gZG8gdGhhdCB3aXRoCj4gPiBGRkFfUEFS
VElUSU9OX0lORk9fR0VUIC0tIHdobyB3b3VsZCByZXNwb25kPwo+IAo+IFJpZ2h0ISBGRkFfUEFS
VElUSU9OX0lORk9fR0VUIGlzIG1lYW50IHRvIGhlbHAgdGhlIEZGLUEgZHJpdmVyIGluIHRoZSBr
ZXJuZWwgdG8KPiBkZXRlcm1pbmUgcGFydGl0aW9uIHByb3BlcnRpZXMuIEl0IGFzc3VtZXMgdGhh
dCBFTDIgU1cgaGFzIGFscmVhZHkgcmVhZCBlYWNoCj4gcGFydGl0aW9uJ3MgbWFuaWZlc3QgYW5k
IHdpbGwgcmVwbHkgdG8gdGhpcyBBQkkuCj4gCj4gSUlVQywgd2l0aCBwcm90ZWN0ZWQgS1ZNLCB0
aGlzIGluZm9ybWF0aW9uIHdpbGwgaGF2ZSB0byBiZSBhIHBhcnQgb2YgdGhlCj4gbWFuaWZlc3Qg
dGhhdCB0aGUgS1ZNIGhvc3QgY29uc3VtZXMuCgpUaGUgaG9zdCBkb2VzIG5vdCBjb25zdW1lIHRo
ZSBtYW5pZmVzdCBkaXJlY3RseSAtLSBpbnN0ZWFkLCB0aGUgYm9vdGxvYWRlcgp3aWxsIHVzZSB0
aGUgbWFuaWZlc3QgdG8gcG9wdWxhdGUgdGhlc2UgRFQgbm9kZXMuIEFnYWluLCB0aGVzZSBhcmUg
Km9ubHkqCmZvciBub24tc2VjdXJlIHZpcnR1YWwgcGFydGl0aW9ucyB3aGljaCBhcmUgdG8gYmUg
bWFuYWdlZCBieSBLVk0uCgo+IEJ1dCB0aGVuLCBjYW4gdGhpcyBiZSBtYWRlIGRpc2NvdmVyYWJs
ZSAodXNlIGEgU01DIGZvciBkaXNjb3ZlcnkpIGF0IGFsbCBhcyBSb2IKPiBoYWQgb3JpZ2luYWxs
eSBzdWdnZXN0ZWQuIEZpcm13YXJlIChTZWN1cmUgd29ybGQpIGhhcyBubyBjbHVlIGFuZCB0aGUg
Ym9vdGxvYWRlcgo+IGlzIGxvbmcgZ29uZS4KCk1ha2Ugd2hhdCBkaXNjb3ZlcmFibGU/Cgo+IFNl
cGFyYXRlIHRvcGljLCBwcm90ZWN0ZWQgS1ZNIGRvZXMgbm90IGdldCBkaWJzIG9uIHRoZSBtYW5p
ZmVzdCBhbmQgaXQgcmVsaWVzIG9uCj4gdGhlIEtWTSBob3N0IHRvIHNwZWNpZnkgdGhlIGFkZHJl
c3MgcmFuZ2VzIGZvciBlYWNoIHBhcnRpdGlvbj8gRG9lcyB0aGlzIG5vdAo+IG1lYW4gdGhhdCB0
aGUgS1ZNIGhvc3QgY2FuIGNvbnRyb2wgdGhlIHBoeXNpY2FsIGFkZHJlc3Mgc3BhY2UgZWFjaCBw
YXJ0aXRpb24KPiBzZWVzLiBUaGlzIHNlZW1zIGNvbnRyYXJ5IHRvIHRoZSBpc29sYXRpb24gZ3Vh
cmFudGVlcyB0aGF0IHByb3RlY3RlZCBLVk0gbXVzdAo+IHByb3ZpZGU/CgpUaGUgaG9zdCBpcyB0
cnVzdGVkIGR1cmluZyBlYXJseSBib290LCBhbmQgZ2l2ZXMgdXAgdGhpcyB0cnVzdCBhZnRlcgpp
bml0aWFsaXNpbmcgRUwyIGZ1bGx5LiBTbyByb3VnaGx5IHNwZWFraW5nLCB3ZToKCgkqIEJvb3Qg
YXQgRUwyIGFuZCBpbnN0YWxsIGEgc2hpbQoJKiBEcm9wIGRvd24gdG8gRUwyIGFuZCBzdGFydCB0
aGUgaG9zdCBrZXJuZWwKCSogQmVmb3JlIHNvbWUgaW5pdGlhbGlzYXRpb24gKERUIHBhcnNpbmcs
IFNNUCBicmluZ3VwLCBldGMpCgkqIEluaXQgS1ZNIGJ5IGNhbGxpbmcgYmFjayB1cCB0byBFTDIg
dG8gaW5zdGFsbCB0aGUgZnVsbCBoeXBlcnZpc29yCgpBdCB0aGF0IHBvaW50LCB0aGUgRUwxIGhv
c3QgaXMgbm8gbG9uZ2VyIHRydXN0ZWQgYW5kIHRoZSBsYXN0IGNhbGwKZWZmZWN0aXZlbHkgImxv
Y2tzIGl0IG91dCIgZnJvbSBFTDIuCgo+ID4gQnV0IHlvdSdyZSByaWdodCB0aGF0IG51bWJlciBv
ZiB2Q1BVcyB3YXMgYSBiYWQgZXhhbXBsZS4gV2UgYWxzbyBuZWVkCj4gPiBpbmZvcm1hdGlvbiBz
dWNoIGFzIHRoZSBlbnRyeSBwb2ludC4KPiAKPiBZZXMuIEZyb20gYSBzcGVjIHBlcnNwZWN0aXZl
IHRoaXMgc2hvdWxkIGJlIHNwZWNpZmllZCBpbiB0aGUgcGFydGl0aW9uIG1hbmlmZXN0Cj4gdW5s
ZXNzIHRoZSBiYXNlIGFkZHJlc3Mgb2YgdGhlIGxvYWRlZCBpbWFnZSBjYW4gYmUgYXNzdW1tZWQg
dG8gYmUgdGhlIGVudHJ5Cj4gcG9pbnQuCgpSaWdodCwgYnV0IHRoZSBmb3JtYXQgb2YgdGhlIG1h
bmlmZXN0IGlzbid0IGRlZmluZWQgYnkgdGhlIHNwZWMgc28gSSByZWFsbHkKZG9uJ3QgdGhpbmsg
aXQncyBzb21ldGhpbmcgdGhhdCBMaW51eCBzaG91bGQgYmUgZGVhbGluZyB3aXRoIGRpcmVjdGx5
LgoKV2lsbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
