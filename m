Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3711A18142E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 10:10:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pwepgh7oo307VXzE0dxg/f91PSCwWybMJPLCfCwcb0I=; b=q8hf+oDo+Yk/iz
	olq3WoSiAiMqTjmUNbye6XOLsGhV88+tNqlpI+LEzYGvIlkcOVPQW5ISJy5oNcaoxu6mlrGbRu/fk
	XyOZHyJIpOi4z3hPgaqCMqnLibrZrPcIDHk7OSDMzyeT7Tn8esSCvWeMvCX9YMvxSG9gBlrCdrRod
	ZjifMtiJmShQEVYhs2BSfxkEbepLJzp3TEQaQ1pc53SYB1hTysa2Hu48TsuGrXzylwz8F/B3qHRr3
	X/THXpqj2/bNQth/UwtvUsMxlg4suK0y04SPbVuYPhE5QZJPgHHmOOKk3Eqm0SJ4Ozw9f6UfoE1Ti
	LI4y7RromPzstux8STNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBxNd-0006Jy-Co; Wed, 11 Mar 2020 09:10:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBxMk-0005qF-AZ
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 09:09:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4B28B31B;
 Wed, 11 Mar 2020 02:09:25 -0700 (PDT)
Received: from [172.16.1.159] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 745013F67D;
 Wed, 11 Mar 2020 02:09:22 -0700 (PDT)
Subject: Re: [PATCH v6 13/18] arm64: unwind: strip PAC from kernel addresses
To: Amit Kachhap <amit.kachhap@arm.com>
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-14-git-send-email-amit.kachhap@arm.com>
 <ec2c78db-31e7-9e82-525e-921b9bf6b3a3@arm.com>
 <cfab1e7c-61af-f3ff-a09b-2c5d78264e02@arm.com>
 <4e56a236-0744-aa18-d5af-1ab5d89808ec@arm.com>
 <feb49588-56ce-8052-bef1-ef3d88c0af81@arm.com>
From: James Morse <james.morse@arm.com>
Openpgp: preference=signencrypt
Message-ID: <455e8848-a1c4-e279-2ec0-1edccf34bb08@arm.com>
Date: Wed, 11 Mar 2020 09:09:19 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <feb49588-56ce-8052-bef1-ef3d88c0af81@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_020926_448361_33C4E7FE 
X-CRM114-Status: GOOD (  13.84  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW1pdCwKCk9uIDMvMTEvMjAgNjowNyBBTSwgQW1pdCBLYWNoaGFwIHdyb3RlOgo+IE9uIDMv
MTAvMjAgMTE6MDcgUE0sIEphbWVzIE1vcnNlIHdyb3RlOgo+PiBPbiAxMC8wMy8yMDIwIDEyOjI4
LCBBbWl0IEthY2hoYXAgd3JvdGU6Cj4+PiBPbiAzLzEwLzIwIDEyOjMzIEFNLCBKYW1lcyBNb3Jz
ZSB3cm90ZToKPj4+PiBPbiAwNi8wMy8yMDIwIDA2OjM1LCBBbWl0IERhbmllbCBLYWNoaGFwIHdy
b3RlOgo+Pj4+PiBGcm9tOiBNYXJrIFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0uY29tPgo+Pj4+
Pgo+Pj4+PiBXaGVuIHdlIGVuYWJsZSBwb2ludGVyIGF1dGhlbnRpY2F0aW9uIGluIHRoZSBrZXJu
ZWwsIExSIHZhbHVlcwo+Pj4+PiBzYXZlZCB0bwo+Pj4+PiB0aGUgc3RhY2sgd2lsbCBoYXZlIGEg
UEFDIHdoaWNoIHdlIG11c3Qgc3RyaXAgaW4gb3JkZXIgdG8gcmV0cmlldmUgdGhlCj4+Pj4+IHJl
YWwgcmV0dXJuIGFkZHJlc3MuCj4+Pj4+Cj4+Pj4+IFN0cmlwIFBBQ3Mgd2hlbiB1bndpbmRpbmcg
dGhlIHN0YWNrIGluIG9yZGVyIHRvIGFjY291bnQgZm9yIHRoaXMuCj4+Pj4KPj4+PiBUaGlzIHBh
dGNoIGhhZCBtZSBsb29raW5nIGF0IHRoZSB3aWRlciBwb2ludGVyLWF1dGggKyBmdHJhY2UKPj4+
PiBpbnRlcmFjdGlvbi4uLgoKPj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva2VybmVsL3N0
YWNrdHJhY2UuYwo+Pj4+PiBiL2FyY2gvYXJtNjQva2VybmVsL3N0YWNrdHJhY2UuYwo+Pj4+PiBp
bmRleCBhMzM2Y2IxLi5iNDc5ZGY3IDEwMDY0NAo+Pj4+PiAtLS0gYS9hcmNoL2FybTY0L2tlcm5l
bC9zdGFja3RyYWNlLmMKPj4+Pj4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvc3RhY2t0cmFjZS5j
Cj4+Pj4+IEBAIC0xNCw2ICsxNCw3IEBACj4+Pj4+IMKgwqAgI2luY2x1ZGUgPGxpbnV4L3N0YWNr
dHJhY2UuaD4KPj4+Pj4gwqDCoCDCoCAjaW5jbHVkZSA8YXNtL2lycS5oPgo+Pj4+PiArI2luY2x1
ZGUgPGFzbS9wb2ludGVyX2F1dGguaD4KPj4+Pj4gwqDCoCAjaW5jbHVkZSA8YXNtL3N0YWNrX3Bv
aW50ZXIuaD4KPj4+Pj4gwqDCoCAjaW5jbHVkZSA8YXNtL3N0YWNrdHJhY2UuaD4KPj4+Pj4gwqDC
oCBAQCAtMTAxLDYgKzEwMiw4IEBAIGludCBub3RyYWNlIHVud2luZF9mcmFtZShzdHJ1Y3QgdGFz
a19zdHJ1Y3QKPj4+Pj4gKnRzaywgc3RydWN0Cj4+Pj4+IHN0YWNrZnJhbWUgKmZyYW1lKQo+Pj4+
Cj4+Pj4gVGhlcmUgaXMgYW4gZWFybGllciByZWFkZXIgb2YgZnJhbWUtPnBjOgo+Pj4+IHwgI2lm
ZGVmIENPTkZJR19GVU5DVElPTl9HUkFQSF9UUkFDRVIKPj4+PiB8wqDCoMKgwqAgaWYgKHRzay0+
cmV0X3N0YWNrICYmCj4+Pj4gfMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoZnJhbWUtPnBjID09
ICh1bnNpZ25lZCBsb25nKXJldHVybl90b19oYW5kbGVyKSkgewo+Pj4+Cgo+Pj4+IENvdWxkIHRo
ZSBwdHJhdXRoX3N0cmlwX2luc25fcGFjKCkgY2FsbCBtb3ZlIGFib3ZlIHRoZQo+Pj4+IENPTkZJ
R19GVU5DVElPTl9HUkFQSF9UUkFDRVIgYmxvY2ssCj4+Cj4+PiBUaGlzIG1heSBub3QgYmUgcmVx
dWlyZWQgYXMgd2UgbmV2ZXIgZXhwbGljaXRseSBzaWduIHJldHVybl90b19oYW5kbGVyCj4+Cj4+
IERvZXNuJ3QgdGhlIG9yaWdpbmFsIGNhbGxlciBzaWduIGl0PyAoSSBhZ3JlZSB0aGF0IGFzc2Vt
Ymx5IGlzIHRyaWNreQo+PiB0byB3b3JrIG91dCkKCj4gSSB1c2VkIGR1bXBfc3RhY2soKSBpbnN0
ZWFkIG9mIFdBUk5fT04gYW5kIGFibGUgdG8gcmVwcm9kdWNlIHRoZSBpc3N1ZS4KPiBZZXMgcHRy
YXV0aF9zdHJpcF9pbnNuX3BhYyBuZWVkcyB0byBtb3ZlIHVwIHRvIGZpeCB0aGlzLiBUaGFua3Mg
Zm9yIHRoZQo+IGRldGFpbHMuCgpHcmVhdCEKCgo+Pj4+IGFuZCBjb3VsZCB3ZSBhZGQgc29tZXRo
aW5nIGxpa2U6Cj4+Pj4gfMKgwqDCoCBkZXBlbmRzIG9uICghRlRSQUNFIHx8IEhBVkVfRFlOQU1J
Q19GVFJBQ0VfV0lUSF9SRUdTKQo+Pj4+Cj4+Pj4gdG8gdGhlIEtjb25maWcgdG8gcHJldmVudCBi
b3RoIEZUUkFDRSBhbmQgUFRSX0FVVEggYmVpbmcgZW5hYmxlZAo+Pj4+IHVubGVzcyB0aGUgY29t
cGlsZXIgaGFzCj4+Pj4gc3VwcG9ydCBmb3IgcGF0Y2hhYmxlLWZ1bmN0aW9uLWVudHJ5Pwo+Pj4K
Pj4+IFllcyB0aGlzIGlzIGEgZ29vZCBjb25kaXRpb24gdG8gaGF2ZS4gSSBmZWVsIGJlbG93IGNv
bmRpdGlvbiBpcyBtb3JlCj4+PiBzdWl0YWJsZSBhcyB0aGVyZSBpcwo+Pj4gaXNzdWUgb25seSB3
aXRoIEZVTkNUSU9OX0dSQVBIX1RSQUNFUiwKPj4KPj4gRXIsIHllcyEKPj4gQmVjYXVzZSBpdHMg
Y2FsbGVycyBvZiBwcmVwYXJlX2Z0cmFjZV9yZXR1cm4oKSB0aGF0IGhhdmUgdGhlIHByb2JsZW0s
Cj4+IGFuZCB0aGF0IGlzIGJlaGluZAo+PiAjaWZkZWYgRlVOQ1RJT05fR1JBUEhfVFJBQ0VSLgoK
V2l0aCB0aGUgcHRyYXV0aF9zdHJpcF9pbnNuX3BhYygpIG1vdmVkLCBhbmQgeW91ciBiZXR0ZXIg
dmVyc2lvbiBvZiB0aGF0Cktjb25maWcgc3VnZ2VzdGlvbjoKUmV2aWV3ZWQtYnk6IEphbWVzIE1v
cnNlIDxqYW1lcy5tb3JzZUBhcm0uY29tPgoKClRoYW5rcyEKCkphbWVzCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
