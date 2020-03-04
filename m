Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EAFA1791DC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 15:02:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1pRnNJb9cIsELLor73zDTnK33pc1mF8IwaSUdoMH1P4=; b=C6mbrxUFzdA7vM
	NllaBLs+VwzXQ+L5WnqcJiSRtEHTOeMKpDymc6udUXcbLMYRGSsF8QH+RDEUDr/lPzqBXylfcf/72
	fXAch3b0qaDGjqLF2OhgGbQBqtOA52Wg/UsSbVDaOMfRNNCCOitj1YUjctxI7C+OZgCqxW8XqPLT5
	zIMjbQ2B5NG8KEtvTf7TDlbYZM9wNtCB6vwsRF3i+JaIBbwFJmg0I2TNPYGnqgChfoyId4Rk34j15
	P3DtWJoqcb7VnTOCzcc3X4iq1nwDJ8U9o3XWW6boR42UPC5nOsmXKQlIRWqLZEyL3O4o/ALpUCEXj
	aoqKVWeWtY/I3wpqwbaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9UbL-0003bU-PH; Wed, 04 Mar 2020 14:02:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9UbE-0003az-KW
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 14:02:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EA92631B;
 Wed,  4 Mar 2020 06:02:11 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2B8D33F6CF;
 Wed,  4 Mar 2020 06:02:11 -0800 (PST)
Date: Wed, 4 Mar 2020 14:02:09 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: =?utf-8?B?UsOpbWk=?= Denis-Courmont <remi@remlab.net>,
 James Morse <james.morse@arm.com>
Subject: Re: [PATCH] arm64/sdei: fix trampoline vector alignment
Message-ID: <20200304140208.GB3575@lakrids.cambridge.arm.com>
References: <20200304093516.190964-1-remi@remlab.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200304093516.190964-1-remi@remlab.net>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_060212_721871_18DAA907 
X-CRM114-Status: GOOD (  18.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUmVtaSwKCkluIGZ1dHVyZSBjb3VsZCB5b3UgcGxlYXNlIENjIG1haW50YWluZXJzPyBZb3Ug
Y2FuIHVzZQpzY3JpcHRzL2dldF9tYWludGFpbmVyLnBsIHRvIGdldCBhIGxpc3Qgb2YgcmVsZXZh
bnQgcGVvcGxlIGZvciBhIHBhdGNoIG9yIGZpbGUuCgpJJ3ZlIGFkZGVkIHRoZSByZWxldmFudCBh
cm02NCBmb2xrIGhlcmUuCgpPbiBXZWQsIE1hciAwNCwgMjAyMCBhdCAxMTozNToxNkFNICswMjAw
LCBSw6ltaSBEZW5pcy1Db3VybW9udCB3cm90ZToKPiBGcm9tOiBSZW1pIERlbmlzLUNvdXJtb250
IDxyZW1pLmRlbmlzLmNvdXJtb250QGh1YXdlaS5jb20+Cj4gCj4gVGhlIGV4Y2VwdGlvbiB2ZWN0
b3IgaXMgYWxpZ25lZCBvbiAyS2lCLiBUbyBjb21wdXRlIHRoZSBjb3JyZWN0IGFkZHJlc3MKPiB0
byB0aGUgU0RFSSBoYW5kbGVyLCB1c2UgQURSUCBmb3IgdGhlIHBhZ2UgbnVtYmVyLiBUaGUgZXhp
c3RpbmcgY29kZQo+IHVzaW5nIEFEUiB3b3VsZCBvbmx5IGNvbXB1dGUgdGhlIGNvcnJlY3QgYWRk
cmVzcyBpZiB0aGUgdmVjdG9yIGlzCj4gYWxpZ25lZCBvbiA0S2lCLCBpLmUuLCB3b3JrcyBieSBs
dWNrLgoKVGhpcyB3b3JrcyBiZWNhdXNlIC5lbnRyeS50cmFtcC50ZXN0IGlzIGFsaWduZWQgdG8g
UEFHRV9TSVpFLCBhbmQgdHJhbXBfdmVjdG9ycwppcyB0aGUgZmlyc3QgZWxlbWVudCBpbiAuZW50
cnkudHJhbXAudGVzdCwgc28gaXQncyBhbGlnbmVkIHRvIFBBR0VfU0laRS4KCk90aGVyIGNvZGUg
cmVsaWVzIG9uIHRyYW1wX3ZlY3RvcnMgYmVpbmcgcGFnZSBhbGlnbmVkLApzbyBJIHRoaW5rIGl0
IHdvdWxkIG1ha2Ugc2Vuc2UgdG8gcmVtb3ZlIHRoZSAiLmFsaWduIDExIiBhbmQgcmVwbGFjZSBp
dAp3aXRoICIuYWxpZ24gUEFHRV9TSElGVCIgYW5kIGEgY29tbWVudCByZWdhcmRpbmcgLmVudHJ5
LnRyYW1wLnRleHQgYmVpbmcKcGFnZS1hbGlnbmVkLgoKSSB0aGluayB0aGUgY29tbWl0IG1lc3Nh
Z2UgbmVlZHMgdG8gYmUgY29ycmVjdGVkLCBzaW5jZSB0aGlzIHdvcmtzIGJ5Cm1vcmUgdGhhbiBs
dWNrLgoKPiBUaGlzIGFsc28gY29tYmluZXMgdGhlIGZvbGxvd2luZyBBREQgYW5kIExEUiBpbnRv
IGEgc2luZ2xlIExEUiB3aXRoIGEKPiByZWxvY2F0ZWQgb2Zmc2V0LgoKVGhpcyBsb29rcyBzYW5l
IHRvIG1lLgoKVGhhbmtzLApNYXJrLgoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBSZW1pIERlbmlzLUNv
dXJtb250IDxyZW1pLmRlbmlzLmNvdXJtb250QGh1YXdlaS5jb20+Cj4gLS0tCj4gIGFyY2gvYXJt
NjQva2VybmVsL2VudHJ5LlMgfCA1ICsrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQva2VybmVs
L2VudHJ5LlMgYi9hcmNoL2FybTY0L2tlcm5lbC9lbnRyeS5TCj4gaW5kZXggOTQ2MWQ4MTJhZTI3
Li4yMDI1OWU2YTJmZDcgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9rZXJuZWwvZW50cnkuUwo+
ICsrKyBiL2FyY2gvYXJtNjQva2VybmVsL2VudHJ5LlMKPiBAQCAtOTUzLDkgKzk1Myw4IEBAIEVO
VFJZKF9fc2RlaV9hc21fZW50cnlfdHJhbXBvbGluZSkKPiAgMToJc3RyCXg0LCBbeDEsICMoU0RF
SV9FVkVOVF9JTlRSRUdTICsgU19PUklHX0FERFJfTElNSVQpXQo+ICAKPiAgI2lmZGVmIENPTkZJ
R19SQU5ET01JWkVfQkFTRQo+IC0JYWRyCXg0LCB0cmFtcF92ZWN0b3JzICsgUEFHRV9TSVpFCj4g
LQlhZGQJeDQsIHg0LCAjOmxvMTI6X19zZGVpX2FzbV90cmFtcG9saW5lX25leHRfaGFuZGxlcgo+
IC0JbGRyCXg0LCBbeDRdCj4gKwlhZHJwCXg0LCB0cmFtcF92ZWN0b3JzICsgUEFHRV9TSVpFCj4g
KwlsZHIJeDQsIFt4NCwgIzpsbzEyOl9fc2RlaV9hc21fdHJhbXBvbGluZV9uZXh0X2hhbmRsZXJd
Cj4gICNlbHNlCj4gIAlsZHIJeDQsID1fX3NkZWlfYXNtX2hhbmRsZXIKPiAgI2VuZGlmCj4gLS0g
Cj4gMi4yNS4xCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
