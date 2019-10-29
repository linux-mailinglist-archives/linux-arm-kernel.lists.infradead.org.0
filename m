Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFA6E7DAB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 01:55:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l//w3pTGo/X/BBDifQmpTfLZ/nc+QvfVyb86hTlVYO0=; b=WWtTnA86hfIk3j
	3sNvbDKPI2ngCULvgg6omVxA4ru1mLSFFVJiXMWyi+CErhdVeOGsz4mufdl6VtdRiBb9xsl/bwx2m
	ejjFZpn0shPfReL7rlhEuplL/xUNr6pGSx/F2PaofMUMN9RUhY6mbc+sR0Tj5EXhwXFykN3ez7+Jb
	piZJfHkgRnbpJXidnC6qJK3SbvKvppCDCahFYR8QWVHkXpvwZ5CGgBifiUg1QDWULzfyZbcqYbNMm
	NZphgI6sgOb29RFnysMQWfl386+dIxdf0WCCPd9ohn5g4gANmC8PY1SuIiibEIbE8/KlU7kGhI92w
	PWL8O6hos8r+NNo/tobQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPFmz-0005jV-CU; Tue, 29 Oct 2019 00:55:13 +0000
Received: from m15-29.126.com ([220.181.15.29])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPFmf-0005iZ-GT
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 00:54:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=o9kOr
 YaqlgPCNYELJO60GxLO5IRWhjf22v9Q6GsZNpw=; b=o2ppX4Baukw9V1x0l11C6
 58s6PeIP7Bztoip8xade2ADFfT/x3b8s5CcJgAXqUOskYR1CPhP23/gbhNEqYe3V
 lyZRr3vgcuio/qB2JZ0Gt/NH9aELggA59A2Q9p11MzPzlPRYHHOjHL2bTguJIdqR
 Ezaf/u02N5hYtHLS8dVavY=
Received: from figure1802$126.com ( [192.102.204.38] ) by
 ajax-webmail-wmsvr29 (Coremail) ; Tue, 29 Oct 2019 08:54:38 +0800 (CST)
X-Originating-IP: [192.102.204.38]
Date: Tue, 29 Oct 2019 08:54:38 +0800 (CST)
From: FF  <figure1802@126.com>
To: "Catalin Marinas" <catalin.marinas@arm.com>, runninglinuxkernel@126.com
Subject: Re:Re: about the ptep_set_access_flags() for hardware AF/DBM
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10 build 20190724(ac680a23)
 Copyright (c) 2002-2019 www.mailtech.cn 126com
In-Reply-To: <20191028184303.GB6619@arrakis.emea.arm.com>
References: <22add3c1.16c1.16e0ca535d4.Coremail.figure1802@126.com>
 <20191028184303.GB6619@arrakis.emea.arm.com>
MIME-Version: 1.0
Message-ID: <1b0920d5.c4b.16e1501ef37.Coremail.figure1802@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: HcqowABHvejPjbddkzObAA--.8212W
X-CM-SenderInfo: pilj32bhryija6rslhhfrp/1tbiTwdcXlpD+rEnXQABsj
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_175453_881155_29BBDC1B 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (figure1802[at]126.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (figure1802[at]126.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: mark.rutland@arm.com, steve.capper@arm.com, will.deacon@arm.com,
 runninglinuxkernel@126.com, julien.grall@arm.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpBdCAyMDE5LTEwLTI5IDAyOjQzOjAzLCAiQ2F0YWxpbiBNYXJpbmFzIiA8Y2F0YWxpbi5tYXJp
bmFzQGFybS5jb20+IHdyb3RlOgo+T24gU3VuLCBPY3QgMjcsIDIwMTkgYXQgMDU6NTY6MjRQTSAr
MDgwMCwgRkYgd3JvdGU6Cj4+IGkgc2VlIGEgcGF0Y2gsIGNvbW1pdCBpZDrCoDY2ZGJkNmU2MWE1
MiAiYXJtNjQ6IEltcGxlbWVudCBwdGVwX3NldF9hY2Nlc3NfZmxhZ3MoKSBmb3IgaGFyZHdhcmUg
QUYvREJNIgo+PiBpbiB0aGlzIHBhdGNoLCB0aGUgYXV0aG9yIHNob3cgYSBpbnN0ZXJlc3Rpbmcg
Y2FzZSBvZiB0aGUgcmFjeSBvZiBoYXJkd2FyZSBBRi9EQk0uCj4+IAo+PiBIZXJlIGlzIHRoZSBz
Y2VuYXJpbzoKPj4gQSBtb3JlIGNvbXBsZXggc2l0dWF0aW9uIGlzIHBvc3NpYmxlIHdoZW4gYWxs
IENQVXMgc3VwcG9ydCBoYXJkd2FyZQo+PiAgICBBRi9EQk06Cj4+IAo+PiAgICBhKSBJbml0aWFs
IHN0YXRlOiBzaGFyZWFibGUgKyB3cml0YWJsZSB2bWEgYW5kIHB0ZV9ub25lKHB0ZSkKPj4gICAg
YikgUmVhZCBmYXVsdCB0YWtlbiBieSB0d28gdGhyZWFkcyBvZiB0aGUgc2FtZSBwcm9jZXNzIG9u
IGRpZmZlcmVudAo+PiAgICAgICBDUFVzCj4+ICAgIGMpIENQVTAgdGFrZXMgdGhlIG1tYXBfc2Vt
IGFuZCBwcm9jZWVkcyB0byBoYW5kbGluZyB0aGUgZmF1bHQuIEl0Cj4+ICAgICAgIGV2ZW50dWFs
bHkgcmVhY2hlcyBkb19zZXRfcHRlKCkgd2hpY2ggc2V0cyBhIHdyaXRhYmxlICsgY2xlYW4gcHRl
Lgo+PiAgICAgICBDUFUwIHJlbGVhc2VzIHRoZSBtbWFwX3NlbQo+PiAgICBkKSBDUFUxIGFjcXVp
cmVzIHRoZSBtbWFwX3NlbSBhbmQgcHJvY2VlZHMgdG8gaGFuZGxlX3B0ZV9mYXVsdCgpLiBUaGUK
Pj4gICAgICAgcHRlIGVudHJ5IGl0IHJlYWRzIGlzIHByZXNlbnQsIHdyaXRhYmxlIGFuZCBjbGVh
biBhbmQgaXQgY29udGludWVzCj4+ICAgICAgIHRvIHB0ZV9ta3lvdW5nKCkKPj4gICAgZSkgQ1BV
MSBjYWxscyBwdGVwX3NldF9hY2Nlc3NfZmxhZ3MoKQo+PiAKPj4gICAgSWYgYmV0d2VlbiAoZCkg
YW5kIChlKSB0aGUgaGFyZHdhcmUgKGFub3RoZXIgQ1BVKSB1cGRhdGVzIHRoZSBkaXJ0eQo+PiAg
ICBzdGF0ZSAoY2xlYXJzIFBURV9SRE9OTFkpLCBDUFUxIHdpbGwgb3ZlcnJpZGUgdGhlIFBUUl9S
RE9OTFkgYml0Cj4+ICAgIG1hcmtpbmcgdGhlIGVudHJ5IGNsZWFuIGFnYWluLgo+PiAKPj4gbXkg
cXVlc3Rpb24gaXM6Cj4+IDEuIGluIHN0ZXAgYSwgaXQgc2F5LCB0aGUgaW5pdGlhbCBzdGF0ZSB2
bWEgaXMgOiBzaGFyYWJsZSArIHdyaXRhYmxlICsKPj4gcHRlX25vbmUuIGxldCBzdXBwb3NlIHRo
aXMgaXMgYSBhbm9uIG1hcHBpbmcgYnkgbW1hcCgpIEFQSS4KPgo+V2hhdCBJIGhhZCBpbiBtaW5k
IGF0IHRoZSB0aW1lIHdhcyBhIGZpbGUgbWFwcGluZyByYXRoZXIgdGhhbiBhbm9ueW1vdXMKPm9u
ZSAodm1hX2lzX2Fub255bW91cygpIGlzIGZhbHNlIGZvciBzaGFyZWQgbWFwcGluZ3MpLgo+Cj4+
IHNvIHRoZSB2bWEtPnZtX3BhZ2VfcHJvdCBzaG91bGQgYmUgOiBWTV9SRUFEIHwgIFZNX1dSSVRF
IHwgVk1fU0hBUkVECj4+IGluIHZtX2dldF9wYWdlX3Byb3QoKSwgaXQgd2lsbCBjaGFuZ2UgdG8g
cHRlIGF0dHJpYnV0Ze+8jGluIGxpbnV4Cj4+IGtlcm5lbCBpdCBoYXMgYSBwcm90ZWN0aW9uX21h
cFtdIGFycmF5LiBpbiB0aGF0IGNhc2UsIGl0IHNob3VsZCBiZQo+PiBfX1MwMTEgKFBBR0VfU0hB
UkVEKS4gZm9yIFBBR0VfU0hBUkVELCB0aGUgcHRlIGF0dHJpYnV0ZSB3aWxsIHNldAo+PiBQVEVf
V1JJVEXvvIxzbyBQVEVfREJNIGlzIHNldCwgYnV0IHRoZSBQVEVfUkRPTkxZIHNob3VsZCBiZSB6
ZXJvLAo+PiByaWdodD8KPgo+UEFHRV9TSEFSRUQgaXMgaW5kZWVkIHdyaXRhYmxlIGJ1dCBob3cg
aXQgZW5kcyB1cCBpbiB0aGUgcHRlIGRlcGVuZHMgb24KPnRoZSBtYXBwaW5nLiBGb3IgYSBzaGFy
ZWQgbWVtb3J5IG1hcHBpbmcsIEkgdGhpbmsgeW91IGRvIGdldCBhIHdyaXRhYmxlCj5lbnRyeSBv
biBhIHJlYWQgZmF1bHQuCj4KPkZvciBmaWxlIG1hcHBpbmdzLCB0aGUgd3JpdGFibGUgYXR0cmli
dXRlIGlzIGNsZWFyZWQgZnJvbSB2bV9wYWdlX3Byb3QKPnZpYSB0aGUgdm1hX3NldF9wYWdlX3By
b3QoKSBmdW5jdGlvbiBiZWNhdXNlIHZtYV93YW50c193cml0ZW5vdGlmeSgpIGlzCj50cnVlLiBG
aWxlc3lzdGVtIG5vcm1hbGx5IHdhbnQgdG8gdHJhY2sgd2hpY2ggcGFnZXMgaGF2ZSBiZWVuIGRp
cnRpZWQgdG8KPndyaXRlIGJhY2suCj4KPj4gaW4gc3RlcCBjLCBDUFUwIHRyaWdnZXIgcmVhZCBm
YXVsdCBhbmQgaGFuZGxlIHRoZSBwYWdlIGZhdWx0LCBpdCB3aWxsCj4+IGNhbGwgZG9fYW5vbnlt
b3VzX3BhZ2UoKSwgYW5kIHVzaW5nICBzeXN0ZW1femVyb19wYWdlLiBpIGRvbid0IHdoYXQgaXMK
Pj4gYSBjbGVhbiBwdGU/ICBidXQgY3VycmVudGx5LCB0aGUgIFBURV9SRE9OTFkgaXMgemVybywg
aXQgbWVhbnMgdGhpcwo+PiBwdGUgaXMgd3JpdGFibGUuCj4KPk5vdGUgdGhhdCB3ZSBjYW4ndCBp
bnZva2UgZG9fYW5vbnltb3VzX3BhZ2UoKSBmb3IgVk1fU0hBUkVEIG1hcHBpbmdzLgo+VGhpcyBp
cyBvbmx5IGZvciBwcml2YXRlIG1hcHBpbmdzLiBJZiB5b3UgbG9vayBhdCBtbWFwX3JlZ2lvbigp
LCB0aGUgdm1hCj5pcyBub3Qgc2V0IHVwIGFzIGFub255bW91cyBpZiBNQVBfU0hBUkVEIGlzIGdp
dmVuIGJ1dCBhcyBhIHNobWVtLgo+Cj4+IHdoZW4gdGhlIENQVTIgd3JpdGUgdGhpcyBtZW1vcnks
IGl0IHdpbGwgdXBkYXRlIHRoZSBkaXJ0eSBzdGF0ZSBsaWtlCj4+IGNsZWFyIFBURV9SRE9OTFks
IGJ1dCBteSBxdWVzdGlvbnMsIHRoZSBQVEVfUkRPTkxZIGlzIHN0aWxsIHplcm8sIGluCj4+IHN0
ZXAgYX5kLCBzbyB3aHkgQ1BVMSB3aWxsIG92ZXJyaWRlIFJUX1JET05MWSBiaXQgYW5kIG1hcmtp
bmcgdGhlCj4+IGVudHJ5IGNsZWFuIGFnYWluLgo+Cj5BcyBJIHNhaWQgYWJvdmUsIHRoaXMgc2Nl
bmFyaW8gaXMgZm9yIHNoYXJlZCBmaWxlIG1hcHBpbmdzIHdoZXJlIHlvdSBkbwo+Z2V0IGEgUFRF
X1JET05MWSBzZXQgZm9yIGNsZWFuIG1hcHBpbmdzLgo+Cj4tLSAKPkNhdGFsaW4KCgpoaSBDYXRh
bGluOgoKVGhhbmtzIGZvciB5b3VyIHBvaW50IG91dC4KaSB3YW50IHRvIGVsYWJvcmF0ZSB0aGUg
c2NlbmFyaW8sIGkgc2F3IHRoZSBmaXJzdCBwYXRjaCB0byBmaXggdGhlIHB0ZXBfc2V0X2FjY2Vz
c19mbGFncygpIGZvciBoYXJkd2FyZSBBRi9EQk0gaXMgb24gTGludXggNC43LXJjMS4KY29tbWl0
IGlkICI2NmRiZDZlNiIgLGFybTY0OiBJbXBsZW1lbnQgcHRlcF9zZXRfYWNjZXNzX2ZsYWdzKCkg
Zm9yIGhhcmR3YXJlIEFGL0RCTQoKaSB0aGluayB5b3UgaGF2ZSBpc3N1ZSBvbiBMaW51eCA0LjYs
IGxldCdzICBhc3N1bWUgdGhhdCB3ZSBhcmUgbG9vayBhdCBMaW51eCA0LjYgc291cmNlIGNvZGUu
CgoxLiBpbml0aWFsIHBoYXNlOiB3ZSB3YW50IHRvIGNyZWF0ZSBhIHNoYXJhYmxlK3dyaXRhYmxl
IGZpbGUgbWFwcGluZyBieSBtbWFwKCkgQVBJLCB0aGUgZmlsZXN5c3RlIGlzOmV4dDQKICAgCiAg
IGluIGRvX21tYXAoKSwgdGhlIHZtX2ZsYWdzIHNob3VsZCBiZSBzZXQgVk1fUkVBRCB8IFZNX1dS
SVRFIHwgVk1fU0hBUkVELgogICBpbiBtbWFwX3JlZ2lvbigpLT52bWFfc2V0X3BhZ2VfcHJvdCgp
LCBpdCB3aWxsIGxldCB0aGUgc29tZSBzaGFyZWQgbWFwcGlnbnMgd2lsbCB3YW50IHRoZSBwYWdl
cyBtYXJrZWQgcmVhZC1vbmx5IHRvIHRyYWNrIHdyaXRlIGV2ZW50cywKICAgc28gaXQgd2lsbCBj
bGVhciB0aGUgVk1fU0hBUkVELiBzbyBpdCB3aWxsIGdldCB0aGUgcHRlIGF0dHJpYnV0ZSBmcm9t
IHByb3RlY3Rpb25fbWFwW10gaXMgX19QMDExLgogICAKICAgSW4gTGludXggNC42LCBfX1AwMTEg
aXMgUEFHRV9DT1BZOgogICAjZGVmaW5lIFBBR0VfQ09QWQkJX19wZ3Byb3QoX1BBR0VfREVGQVVM
VCB8IFBURV9VU0VSIHwgUFRFX05HIHwgUFRFX1BYTiB8IFBURV9VWE4pCiAgIAogICBmb3IgUEFH
RV9DT1BZLCB0aGUgUFRFX1JET05MWSBhbmQgUFRFX1dSSVRFKERNQikgYXJlIHplcm8uCiAgIHNv
IHRoZSB2bV9mbGFncyBpczogVk1fUkVBRCB8IFZNX1dSSVRFCiAgIAoyLiBUaHJlYWQgMSBvbiBD
UFUwIHdhbnQgdG8gd3JpdGUgdGhpcyBwYWdlLCBwYWdlX2ZhdWx0IHdpbGwgYmUgdHJpZ2dlci4K
ICAgaW4gaGFuZGxlX3B0ZV9mYXVsdC0+ZG9fZmF1bHQtPmRvX3NoYXJlZF9mYXVsdCgpLCBpdCB3
aWxsIGFsbG9jYXRlIGEgbmV3IHBhZ2UgY2FjaGUsIGFuZCBpbiBkb19zZXRfcHRlKCksCiAgIGl0
IHdpbGwgY2FsbDogIm1heWJlX21rd3JpdGUocHRlX21rZGlydHkoZW50cnkpLCB2bWEpIiB0byBz
ZXQgdGhlIHB0ZSBlbnRyeS4KICAgc28gdGhlIHB0ZSBhdHRyaWJ1dGUgc2hvdWxkIGJlOiBQVEVf
RElSVFkgfCBQVEVfV1JJVEUuCiAgIAozLiBUaHJlYWQgMiBvbiBDUFUxIGFsc28gd2FudCB0byBy
ZWFkIHRoaXMgcGFnZSBidXQgdGhpcyBwdGUgaGFzIG5vdCBjcmVhdGUgYnkgVGhyZWFkIDEsIHNv
IHBhZ2VfZmF1bHQgaGFwcGVuLgogICBpbiBwdGVfb2Zmc2V0X21hcCgpLCBpdCBmb3VuZCB0aGF0
IHRoZSBwdGUgaXMgY3JlYXRlZCBieSBUaHJlYWQgMSwgc28gaXQgd2lsbCBkaXJlY3RseSBjYWxs
OgogICAKICAgZW50cnkgPSBwdGVfbWt5b3VuZyhlbnRyeSk7CiAgIHB0ZXBfc2V0X2FjY2Vzc19m
bGFncygpCiAgIAogICBpbiBwdGVwX3NldF9hY2Nlc3NfZmxhZ3MsIGl0IHdpbGwgY2FsbCBzZXRf
cHRlX2F0KCkgdG8gc2V0IHB0ZS4KICAgYnV0IGluIHNldF9wdGVfYXQoKSBmdW5jdGlvbjoKICAg
CiAgIAlpZiAocHRlX3ByZXNlbnQocHRlKSkgewoJCWlmIChwdGVfc3dfZGlydHkocHRlKSAmJiBw
dGVfd3JpdGUocHRlKSkKCQkJcHRlX3ZhbChwdGUpICY9IH5QVEVfUkRPTkxZOwoJCWVsc2UKCQkJ
cHRlX3ZhbChwdGUpIHw9IFBURV9SRE9OTFk7CgkJaWYgKHB0ZV91c2VyKHB0ZSkgJiYgcHRlX2V4
ZWMocHRlKSAmJiAhcHRlX3NwZWNpYWwocHRlKSkKCQkJX19zeW5jX2ljYWNoZV9kY2FjaGUocHRl
LCBhZGRyKTsKCX0KCQoJaXQgd2lsbCBjbGVhbiB0aGUgUFRFX1JET05MWSBiaXQsIGJlY2F1c2Ug
dGhlIFBURV9ESVJUWSB8IFBURV9XUklURSBpcyBzZXQgaW4gb3VyIHNjZW5hcmlvLgoJb3RoZXJ3
aXNlLCBhbnlvbmUgY2xlYW4gdGhlICBQVEVfRElSVFkgYml0LCB3aG8gd2lsbCBjbGVhbiB0aGlz
IFBURV9ESVJUWSBiaXQ/CgpzbyBpIGFtIHZlcnkgY29uZnVzaW5nIHRoZSBwYXRjaCAiYXJtNjQ6
IEltcGxlbWVudCBwdGVwX3NldF9hY2Nlc3NfZmxhZ3MoKSBmb3IgaGFyZHdhcmUgQUYvREJNIiBj
b21taXQgbG9nJ3Mgc2NlbnJpby4Kd291bGQgeW91IGxpa2UgcG9pbnQgb3V0IHdoYXQgaSBhbSBt
aXNzaW5nPwoKQmVzdApCZW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
