Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F2815F759
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 21:02:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uQgm+MayGC6Ote51NgdjkVP0jabH8u8glICy9NSQ+bE=; b=gOAN+4N/NlgE/3
	4dYVe2oLJ1wbFhL6EYadqaN/NZEDQGO8mQXFO12cN7XwO7BWa6J6ZY5ZeeUG7UQiSnaGMBQ9MZJ2D
	RtnyZ6R/4Fp9kKdp+i0xiTc531MGC4tO20CSa/pDJRfOLFjxV91QyU/NVU23pzXQ/9kpTQAiJVTfF
	SyYsDRl7yEPbhWmrDepA80o+uTlhdg3ZgHbjFZYpuUd/q1W/t4m9MmT4C480I1gNb02NjmejWQ9Qr
	mOIH4yFx3JF95AO9qrYOJZJTiU0LsBjLnEhshBJovBy8Pz9rCH3o6D1nryTcAnFK6BOlkJSnk8b+1
	GUSJ7MdbnYhewKOKL8QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2hAu-0007RK-FW; Fri, 14 Feb 2020 20:02:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2hAl-0007Qd-S1
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 20:02:49 +0000
Received: from localhost (unknown [12.246.51.142])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 756F124673;
 Fri, 14 Feb 2020 20:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581710566;
 bh=ztsFQuOS0jDxnxVmgdeYoi1OWAbYtzzS6bn2PGzoXXs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V2NYCqcBDEnnIrQDdlzOcVVq1BES3aGdj3DrZgNnTiz8J3qTTPLMi1BN0O31c7AO/
 9YflMvVvZ6DgO3fmA0Y6FAQ9iH+37x2vY2VKidy1WCE0znwIlU4xBuqKqWYsyyWX0U
 7Sufa/UxI9CMUfe5jXVhF9Znu85MVwaqHmFUlGVs=
Date: Fri, 14 Feb 2020 09:10:05 -0800
From: 'Greg KH' <gregkh@linuxfoundation.org>
To: Jolly Shah <jolly.shah@xilinx.com>
Subject: Re: [PATCH v2 1/4] firmware: xilinx: Add sysfs interface
Message-ID: <20200214171005.GB4034785@kroah.com>
References: <20200114145257.GA1910108@kroah.com>
 <BYAPR02MB5992FC37E0D2AD9946414417B80F0@BYAPR02MB5992.namprd02.prod.outlook.com>
 <20200124060339.GB2906795@kroah.com>
 <2D4B924A-D10C-4A90-A8E6-507BF6C30654@xilinx.com>
 <20200128062814.GA2097606@kroah.com>
 <4EF659A1-2844-46B9-9ED6-5A6A20401D9D@xilinx.com>
 <20200131061038.GA2180358@kroah.com>
 <BYAPR02MB40559D6B62C4532C0EAD0281B7070@BYAPR02MB4055.namprd02.prod.outlook.com>
 <20200131093646.GA2271937@kroah.com>
 <3ef20e9d-052f-665c-7fc8-69a1f8bc9bd2@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3ef20e9d-052f-665c-7fc8-69a1f8bc9bd2@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_120247_948330_DD577F88 
X-CRM114-Status: GOOD (  29.89  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "keescook@chromium.org" <keescook@chromium.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "matt@codeblueprint.co.uk" <matt@codeblueprint.co.uk>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rajan Vaja <RAJANV@xilinx.com>, Michal Simek <michals@xilinx.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBGZWIgMTAsIDIwMjAgYXQgMDQ6NTc6MDFQTSAtMDgwMCwgSm9sbHkgU2hhaCB3cm90
ZToKPiBIaSBHcmVnLAo+IAo+ID4gLS0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tLQo+ID4gRnJv
bTogJ0dyZWcgS2gnIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KPiA+IFNlbnQ6ICBGcmlk
YXksIEphbnVhcnkgMzEsIDIwMjAgMTozNkFNCj4gPiBUbzogUmFqYW4gVmFqYSA8UkFKQU5WQHhp
bGlueC5jb20+Cj4gPiBDYzogSm9sbHkgU2hhaCA8Sk9MTFlTQHhpbGlueC5jb20+LCBBcmQgQmll
c2hldXZlbAo+IDxhcmQuYmllc2hldXZlbEBsaW5hcm8ub3JnPiwgTWluZ28gPG1pbmdvQGtlcm5l
bC5vcmc+LCBNYXR0Cj4gPG1hdHRAY29kZWJsdWVwcmludC5jby51az4sIFN1ZGVlcCBIb2xsYSA8
c3VkZWVwLmhvbGxhQGFybS5jb20+LCBIa2FsbHdlaXQxCj4gPGhrYWxsd2VpdDFAZ21haWwuY29t
PiwgS2Vlc2Nvb2sgPGtlZXNjb29rQGNocm9taXVtLm9yZz4sIERtaXRyeSBUb3Jva2hvdgo+IDxk
bWl0cnkudG9yb2tob3ZAZ21haWwuY29tPiwgTWljaGFsIFNpbWVrIDxtaWNoYWxzQHhpbGlueC5j
b20+LAo+IExpbnV4LWFybS1rZXJuZWwgPGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZz4sIExpbnV4LWtlcm5lbAo+IDxsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnPgo+ID4g
U3ViamVjdDogUmU6IFtQQVRDSCB2MiAxLzRdIGZpcm13YXJlOiB4aWxpbng6IEFkZCBzeXNmcyBp
bnRlcmZhY2UKPiA+Cj4gPiBPbiBGcmksIEphbiAzMSwgMjAyMCBhdCAwOTowNToxNUFNICswMDAw
LCBSYWphbiBWYWphIHdyb3RlOgo+ID4gPiBIaSBHcmVnLAo+ID4gPiAKPiA+ID4gPiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gPiA+IEZyb206IEdyZWcgS0ggPGdyZWdraEBsaW51eGZv
dW5kYXRpb24ub3JnPgo+ID4gPiA+IFNlbnQ6IDMxIEphbnVhcnkgMjAyMCAxMTo0MSBBTQo+ID4g
PiA+IFRvOiBKb2xseSBTaGFoIDxKT0xMWVNAeGlsaW54LmNvbT4KPiA+ID4gPiBDYzogYXJkLmJp
ZXNoZXV2ZWxAbGluYXJvLm9yZzsgbWluZ29Aa2VybmVsLm9yZzsgbWF0dEBjb2RlYmx1ZXByaW50
LmNvLnVrOwo+ID4gPiA+IHN1ZGVlcC5ob2xsYUBhcm0uY29tOyBoa2FsbHdlaXQxQGdtYWlsLmNv
bTsga2Vlc2Nvb2tAY2hyb21pdW0ub3JnOwo+ID4gPiA+IGRtaXRyeS50b3Jva2hvdkBnbWFpbC5j
b207IE1pY2hhbCBTaW1layA8bWljaGFsc0B4aWxpbnguY29tPjsgUmFqYW4gVmFqYQo+ID4gPiA+
IDxSQUpBTlZAeGlsaW54LmNvbT47IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZzsgbGludXgtCj4gPiA+ID4ga2VybmVsQHZnZXIua2VybmVsLm9yZwo+ID4gPiA+IFN1YmplY3Q6
IFJlOiBbUEFUQ0ggdjIgMS80XSBmaXJtd2FyZTogeGlsaW54OiBBZGQgc3lzZnMgaW50ZXJmYWNl
Cj4gPiA+ID4gCj4gPiA+ID4gRVhURVJOQUwgRU1BSUwKPiA+ID4gPiAKPiA+ID4gPiBPbiBUaHUs
IEphbiAzMCwgMjAyMCBhdCAxMTo1OTowM1BNICswMDAwLCBKb2xseSBTaGFoIHdyb3RlOgo+ID4g
PiA+ID4gSGkgR3JlZywKPiA+ID4gPiA+IAo+ID4gPiA+ID4g77u/T24gMS8yNy8yMCwgMTA6Mjgg
UE0sICJsaW51eC1rZXJuZWwtb3duZXJAdmdlci5rZXJuZWwub3JnIG9uIGJlaGFsZiBvZiBHcmVn
Cj4gPiA+ID4gS0giIDxsaW51eC1rZXJuZWwtb3duZXJAdmdlci5rZXJuZWwub3JnIG9uIGJlaGFs
ZiBvZgo+ID4gPiA+IGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPiB3cm90ZToKPiA+ID4gPiA+
IAo+ID4gPiA+ID4gICAgICBPbiBNb24sIEphbiAyNywgMjAyMCBhdCAxMTowMToyN1BNICswMDAw
LCBKb2xseSBTaGFoIHdyb3RlOgo+ID4gPiA+ID4gICAgICA+ICAgICA+ID4gPiArICAgICByZXQg
PSBrc3RydG9sKHRvaywgMTYsICZ2YWx1ZSk7Cj4gPiA+ID4gPiAgICAgID4gICAgID4gPiA+ICsg
ICAgIGlmIChyZXQpIHsKPiA+ID4gPiA+ICAgICAgPiAgICAgPiA+ID4gKyAgICAgICAgICAgICBy
ZXQgPSAtRUZBVUxUOwo+ID4gPiA+ID4gICAgICA+ICAgICA+ID4gPiArICAgICAgICAgICAgIGdv
dG8gZXJyOwo+ID4gPiA+ID4gICAgICA+ICAgICA+ID4gPiArICAgICB9Cj4gPiA+ID4gPiAgICAg
ID4gICAgID4gPiA+ICsKPiA+ID4gPiA+ICAgICAgPiAgICAgPiA+ID4gKyAgICAgcmV0ID0gZWVt
aV9vcHMtPmlvY3RsKDAsIHJlYWRfaW9jdGwsIHJlZywgMCwgcmV0X3BheWxvYWQpOwo+ID4gPiA+
ID4gICAgICA+ICAgICA+ID4KPiA+ID4gPiA+ICAgICAgPiAgICAgPiA+IFRoaXMgZmVlbHMgInRy
aWNreSIsIGlmIHlvdSB0aWUgdGhpcyB0byB0aGUgZGV2aWNlIHlvdSBoYXZlIHlvdXIgZHJpdmVy
Cj4gPiA+ID4gPiAgICAgID4gICAgID4gPiBib3VuZCB0bywgd2lsbCB0aGlzIG1ha2UgaXQgZWFz
aWVyIGluc3RlYWQgb2YgaGF2aW5nIHRvIGdvIHRocm91Z2ggdGhlCj4gPiA+ID4gPiAgICAgID4g
ICAgID4gPiBpb2N0bCBjYWxsYmFjaz8KPiA+ID4gPiA+ICAgICAgPiAgICAgPiA+Cj4gPiA+ID4g
PiAgICAgID4gICAgID4KPiA+ID4gPiA+ICAgICAgPiAgICAgPiBHR1MoZ2VuZXJhbCBnbG9iYWwg
c3RvcmFnZSkgcmVnaXN0ZXJzIGFyZSBpbiBQTVUgc3BhY2UgYW5kIGxpbnV4Cj4gPiA+ID4gZG9l
c24ndCBoYXZlIGFjY2VzcyB0byBpdAo+ID4gPiA+ID4gICAgICA+ICAgICA+IEhlbmNlIGlvY3Rs
IGlzIHVzZWQuCj4gPiA+ID4gPiAgICAgID4KPiA+ID4gPiA+ICAgICAgPiAgICAgV2h5IG5vdCBq
dXN0IGEgInJlYWwiIGNhbGwgdG8gdGhlIGRyaXZlciB0byBtYWtlIHRoaXMgdHlwZSBvZiByZWFk
aW5nPwo+ID4gPiA+ID4gICAgICA+ICAgICBZb3UgZG9uJ3QgaGF2ZSBpb2N0bHMgd2l0aGluIHRo
ZSBrZXJuZWwgZm9yIG90aGVyIGRyaXZlcnMgdG8gY2FsbCwKPiA+ID4gPiA+ICAgICAgPiAgICAg
dGhhdCdzIG5vdCBuZWVkZWQgYXQgYWxsLgo+ID4gPiA+ID4gICAgICA+Cj4gPiA+ID4gPiAgICAg
ID4gdGhlc2UgcmVnaXN0ZXJzIGFyZSBmb3IgdXNlcnMgIGFuZCBmb3Igc3BlY2lhbCBuZWVkcyB3
aGVyZSB1c2VycyB3YW50cwo+ID4gPiA+ID4gICAgICA+IHRvIHJldGFpbiB2YWx1ZXMgb3ZlciBy
ZXNldHMuIGJ1dCBhcyB0aGV5IGJlbG9uZyB0byBQTVUgYWRkcmVzcyBzcGFjZSwKPiA+ID4gPiA+
ICAgICAgPiB0aGVzZSBpbnRlcmZhY2UgQVBJcyBhcmUgcHJvdmlkZWQuIFRoZXkgZG9u4oCZdCBh
bGxvdyBhY2Nlc3MgdG8gYW55Cj4gPiA+ID4gPiAgICAgID4gb3RoZXIgcmVnaXN0ZXJzLgo+ID4g
PiA+ID4gCj4gPiA+ID4gPiAgICAgIFRoYXQncyBub3QgdGhlIGlzc3VlIGhlcmUuICBUaGUgaXNz
dWUgaXMgeW91IGFyZSB1c2luZyBhbiAiaW50ZXJuYWwiCj4gPiA+ID4gPiAgICAgIGlvY3RsLCBp
bnN0ZWFkIGp1c3QgbWFrZSBhICJyZWFsIiBjYWxsLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBTb3Jy
eSBJIGFtIG5vdCBjbGVhci4gRG8geW91IG1lYW4gdGhhdCB3ZSBzaG91bGQgdXNlIGxpbnV4IHN0
YW5kYXJkCj4gPiA+ID4gPiBpb2N0bCBpbnRlcmZhY2UgaW5zdGVhZCBvZiBpbnRlcm5hbCBpb2N0
bCBieSBtZW50aW9uaW5nICJyZWFsIiA/Cj4gPiA+ID4gCj4gPiA+ID4gTm8sIHlvdSBzaG91bGQg
anVzdCBtYWtlIGEgInJlYWwiIGZ1bmN0aW9uIGNhbGwgdG8gdGhlIGV4YWN0IHRoaW5nIHlvdQo+
ID4gPiA+IHdhbnQgdG8gZG8uICBOb3QgaGF2ZSBhbiBpbnRlcm5hbCBtdWx0aS1wbGV4b3IgaW9j
dGwoKSBjYWxsIHRoYXQgb3RoZXJzCj4gPiA+ID4gdGhlbiBjYWxsLiAgVGhpcyBpc24ndCBhIG1p
Y3Jva2VybmVsIDopCj4gPiA+IFtSYWphbl0gU29ycnkgZm9yIG11bHRpcGxlIGJhY2sgYW5kIGZv
cnRoIGJ1dCBhcyBJIHVuZGVyc3RhbmQsIHlvdSBhcmUgc3VnZ2VzdGluZyB0byBjcmVhdGUgYSBu
ZXcgQVBJIGZvcgo+ID4gPiBSZWFkL3dyaXRlIG9mIEdHUyByZWdpc3RlciBpbnN0ZWFkIG9mIHVz
aW5nIFBNX0lPQ1RMIEFQSSAoZWVtaV9vcHMtPmlvY3RsKSBmb3IgbXVsdGlwbGUgcHVycG9zZS4g
SXMgbXkgdW5kZXJzdGFuZGluZyBjb3JyZWN0Pwo+ID4gCj4gPiBUaGF0IGlzIGNvcnJlY3QuCj4g
Cj4gCj4gCj4gV291bGQgbGlrZSB0byBjbGFyaWZ5IHB1cnBvc2Ugb2YgaGF2aW5nIGlvY3RsIEFQ
SSB0byBhdm9pZCBhbnkgY29uZnVzaW9uLgo+IGVlbWkgaW50ZXJmYWNlIGFwaXMgYXJlIGRlZmlu
ZWQgdG8gYmUgcGxhdGZvcm0gaW5kZXBlbmRlbnQgYW5kIGFsbG93cyBjbG9jaywKPiByZXNldCwg
cG93ZXIgZXRjIG1hbmFnZW1lbnQgdGhyb3VnaCBmaXJtd2FyZSBidXQgYXBhcnQgZnJvbSB0aGVz
ZSBnZW5lcmljCj4gb3BlcmF0aW9ucywgdGhlcmUgYXJlIHNvbWUgb3BlcmF0aW9ucyB3aGljaCBu
ZWVkcyBzZWN1cmUgYWNjZXNzIHRocm91Z2gKPiBmaXJtd2FyZS4gRXhhbXBsZXMgYXJlIGFjY2Vz
c2luZyBzb21lIHN0b3JhZ2UgcmVnaXN0ZXJzKGdncyBhbmQgcGdncykgZm9yCj4gaW50ZXIgYWdl
bnQgY29tbXVuaWNhdGlvbiwgY29uZmlndXJpbmcgYW5vdGhlciBhZ2VudChSUFUpIG1vZGUsIGJv
b3QgZGV2aWNlCj4gY29uZmlndXJhdGlvbiBldGMuIFRob3NlIG9wZXJhdGlvbnMgYXJlIGNvdmVy
ZWQgYXMgaW9jdGxzIGFzIHRoZXkgYXJlIHZlcnkKPiBwbGF0Zm9ybSBzcGVjaWZpYy4gQWxzbyBv
bmx5IHdoaXRlbGlzdGVkIG9wZXJhdGlvbnMgYXJlIGFsbG93ZWQgdGhyb3VnaAo+IGlvY3RsIGFu
ZCBpcyBub3QgZXhwb3NlZCB0byB1c2VyIGZvciBhbnkgcmFuZG9tIHJlYWQvd3JpdGUgb3BlcmF0
aW9uLgo+IAo+IE9sb2YgZWFybGllciBoYWQgc2FtZSBjb25jZXJucy4gV2UgaGFkIGNsYXJpZmll
ZCB0aGUgcHVycG9zZSBhbmQgd2l0aCBoaXMKPiBhZ3JlZW1lbnQsIGluaXRpYWwgc2V0IG9mIGlv
Y3RscyB3ZXJlIGFjY2VwdGVkLgo+IChodHRwczovL3d3dy5sa21sLm9yZy9sa21sLzIwMTgvOS8y
NC8xNTcwKQo+IAo+IFBsZWFzZSBzdWdnZXN0IHRoZSBiZXN0IGFwcHJvYWNoIHRvIGhhbmRsZSB0
aGlzIGZvciBjdXJyZW50IGFuZCBmdXR1cmUKPiBwYXRjaGVzLgoKT2ssIGluIGxvb2tpbmcgZnVy
dGhlciBhdCB0aGlzLCBpdCdzIGJvdGggYmV0dGVyIHRoYW4gSSB0aG91Z2h0LCBhbmQKdG90YWxs
eSB3b3JzZS4KClRoaXMgaW50ZXJmYWNlIHlvdSBhbGwgYXJlIHVzaW5nIHdoZXJlIHlvdSBhc2sg
dGhlIGZpcm13YXJlIGRyaXZlciBmb3IgYQpwb2ludGVyIHRvIGEgc2V0IG9mIG9wZXJhdGlvbiBm
dW5jdGlvbnMgYW5kIHRoZW4gbWFrZSBjYWxscyB0aHJvdWdoIHRoYXQKaXMgaW5kaWNpdGl2ZSBv
ZiBhbiBhcGkgdGhhdCBpcyBOT1Qgd2hhdCB3ZSBub3JtYWxseSB1c2UgaW4gTGludXggYXQKYWxs
LgoKSnVzdCBtYWtlIHRoZSBkaXJlY3QgY2FsbCB0byB0aGUgZmlybXdhcmUgZHJpdmVyLCBubyBu
ZWVkIHRvIG11Y2sgYXJvdW5kCndpdGggdGFibGVzIG9mIGZ1bmN0aW9uIHBvaW50ZXJzLiAgSW4g
ZmFjdCwgd2l0aCB0aGUgc3BlY3RyZSBjaGFuZ2VzLAp5b3UganVzdCBtYWRlIHRoaW5ncyBzbG93
ZXIgdGhhbiBuZWVkZWQsIGFuZCB5b3UgY2FuIGdldCBiYWNrIGEgYnVuY2ggb2YKdGhyb3VnaHB1
dCBieSByZW1vdmluZyB0aGF0IHdob2xlIG1pZGRsZSBsYXllci4KClNvIGdvIGRvIHRoYXQgZmly
c3QgcGxlYXNlLCBiZWZvcmUgYWRkaW5nIGFueSBuZXcgc3R1ZmYuCgpOb3cgZm9yIHRoZSBpb2N0
bCwgeWVhaCwgdGhhdCdzIG5vdCBhICJub3JtYWwiIHBhdHRlcm4gZWl0aGVyLiAgQnV0CnJpZ2h0
IG5vdyB5b3Ugb25seSBoYXZlIDIgImRpZmZlcmVudCIgaW9jdGxzIHRoYXQgeW91IGNhbGwuICBT
byB3aHkgbm90Cmp1c3QgdHVybiB0aG9zZSAyIGludG8gcmVhbCBmdW5jdGlvbiBjYWxscyBhcyB3
ZWxsIHRoYXQgdGhlbiBtYWtlcyB0aGUKImlvY3RsIiBjYWxsIHRvIHRoZSBoYXJkd2FyZT8gIFRo
YXQgbWFrZXMgdGhpbmdzIGEgbG90IG1vcmUgb2J2aW91cyBvbgp0aGUga2VybmVsIGRyaXZlciBz
aWRlIGV4YWN0bHkgd2hhdCBpcyBnb2luZyBvbi4KCklmIHlvdSBuZWVkIHRvIGFkZCBtb3JlICJp
b2N0bCIgbGlrZSBjYWxscywganVzdCBhZGQgdGhlbSBhcyBtb3JlCmZ1bmN0aW9ucywgbm8gYmln
IGRlYWwuICBIb3cgbWFueSBtb3JlIG9mIHRoZXNlIGFyZSB5b3UgZ29pbmcgdG8gbmVlZApvdmVy
IHRpbWU/CgpCdXQgdGhhdCdzIG5vdCBhbGwgdGhhdCBiaWcgb2YgYSBkZWFsIHJpZ2h0IG5vdywg
Z2V0IHJpZCBvZiB0aGF0IHdob2xlCm1pZGRsZS1sYXllciBmaXJzdCwgdGhhdCdzIG1vcmUgaW1w
b3J0YW50IHRvIGNsZWFuIHVwLiAgWW91IHdpbGwgZ2V0IHJpZApvZiBhIGxvdCBvZiB1bm5lZWRl
ZCBjb2RlIGFuZCBpbmRpcmVjdGlvbiB0aGF0IHdheSwgbWFraW5nIGl0IHNpbXBsZXIKYW5kIGVh
c2llciB0byB1bmRlcnN0YW5kIHdoYXQgZXhhY3RseSBpcyBoYXBwZW5pbmcuCgp0aGFua3MsCgpn
cmVnIGstaAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
