Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC86117C6EA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 21:17:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rc8vpz85Nny0+GZcdK/Nhl5oClYFq1+QZMrcpw5kpmI=; b=Tk1W4RqKY6P96b
	S352lwzMrWL1UyvZ5ktny3RXD8Xb16dFx9nv+NpkTzjYX9YjvpvIBLapeJJidSdN+wKjPsIkC8R7E
	cXS7bmzLg0iWmn/+hJdgJqB/xpudHx4k0VOOKzRW/HIXPbSszv0h98fwTezni0ETxpLgcccpZEBDX
	1PA7hSWslFYWEDHREa6P8DlzL1rbtXwIgYBNwwbySgxnh/2M6myQudZV7mjYxc3OFrmGAs3ZEHATh
	vF1KDb5ANWd+3Qd3Ad0f/weJVQGtFiWqrTSp3uv7dsaEUiR55XXnS/DO7f3ygdLa3PoOaROcvXhPF
	2Ni/NR5HhMlW2ugeQocg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAJPS-0008TL-K8; Fri, 06 Mar 2020 20:17:26 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAJPI-0008Sy-PN
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 20:17:18 +0000
Received: by mail-wr1-x443.google.com with SMTP id n15so3776384wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 12:17:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=W5vuMAQlP/pswYB/GXVE3Zl4riEFKEE7ie+SKRmal+A=;
 b=TnbXAUNOymXAg4E5ylEB78BCKLRoqRyjo7HHwCE5mF5chf989aKRi7x9lEHcEms0ru
 EfAUDSuI+9iWOgBkapOAhY4MS6CAQKN3EMIKBDMggPya+en8EhD8SEWRFDlVb4pX6Mc1
 cUw0WwjMN0r3oFcSQlmXFbNl08L9CutLo8Yjs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=W5vuMAQlP/pswYB/GXVE3Zl4riEFKEE7ie+SKRmal+A=;
 b=Qsp5sgAEksd4E0Hq80Zwus9mLa+wacgC2GsLO86ZBE3WBy+XhjxRqbUYPxMmDSX65A
 hodGF9L8Jo18PKGL4K5RcuT8sxgvXQtTiofFAVX4uQEUgyUVsaQ7F7nI56l8v6iN64ZI
 dXWVMazs/DAIMEzVasanz/rFVJQmrE1Bsscww3IxgL0adBEgA2PxM923lFDsvTGkulew
 cpjUx6+4/PjH+UHGutMxO36WZjeBX0sUrS4tItx3/SJNy1vIIkakoN3Pf5iS9ryQOkbm
 0uQz2s1JjKN1yBQ4Xd2qTiequrB9tV5Y4r2qRek3olaSMA6XG1Af8InZk2upXDFm0w1Z
 VO0A==
X-Gm-Message-State: ANhLgQ2ikUxfYnF+EBhaJEKGw5sXrIfn+Y6vyJg0OfcBmHGOhXKC7FJU
 gfbAzHAcgqMTyDA5/HHDQDCVp0dztdSl8PLS
X-Google-Smtp-Source: ADFU+vvqY4qKDIwiATZaIBtsRMHroux6pd0ex8+HlwjC7e401argo9O7tDWbHCc0DheRr1aJ7k6v5A==
X-Received: by 2002:a5d:5682:: with SMTP id f2mr5332496wrv.327.1583525833437; 
 Fri, 06 Mar 2020 12:17:13 -0800 (PST)
Received: from ub1910 ([213.48.11.149])
 by smtp.gmail.com with ESMTPSA id w1sm14361781wmc.11.2020.03.06.12.17.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 12:17:13 -0800 (PST)
Date: Fri, 6 Mar 2020 20:17:08 +0000
From: Paul Barker <pbarker@konsulko.com>
To: Michal =?UTF-8?B?Vm9rw6HEjQ==?= <michal.vokac@ysoft.com>
Subject: Re: Inverted PWM output on iMX6
Message-ID: <20200306201708.0b94a5ac@ub1910>
In-Reply-To: <619c279c-5dd7-8d81-3527-dc37f8827104@ysoft.com>
References: <20200305132232.1aced378@ub1910>
 <20200305133649.bx7r7d4ntwi75qqb@pengutronix.de>
 <619c279c-5dd7-8d81-3527-dc37f8827104@ysoft.com>
Organization: Konsulko Group
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_121716_835176_E912AFCC 
X-CRM114-Status: GOOD (  28.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <u.kleine-koenig@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCA2IE1hciAyMDIwIDA4OjQzOjQ1ICswMTAwCk1pY2hhbCBWb2vDocSNIDxtaWNoYWwu
dm9rYWNAeXNvZnQuY29tPiB3cm90ZToKCj4gT24gMDUuIDAzLiAyMCAxNDozNiwgVXdlIEtsZWlu
ZS1Lw7ZuaWcgd3JvdGU6Cj4gPiBIZWxsbywKPiA+IAo+ID4gT24gVGh1LCBNYXIgMDUsIDIwMjAg
YXQgMDE6MjI6MzJQTSArMDAwMCwgUGF1bCBCYXJrZXIgd3JvdGU6ICAKPiA+PiBJIHJlY2VudGx5
IHJhbiBpbnRvIGFuIGlzc3VlIHVzaW5nIHRoZSBwd20tZmFuIGRyaXZlciB3aXRoIGFuIGludmVy
dGVkCj4gPj4gUFdNIG91dHB1dCBvbiBpTVg2Lgo+ID4+Cj4gPj4gVGhlIGZhbiBpcyBkZWZpbmVk
IGluIHRoZSBkZXZpY2UgdHJlZSBhcyBmb2xsb3dzOgo+ID4+Cj4gPj4gCWZhbjA6IHB3bS1mYW4g
ewo+ID4+IAkJY29tcGF0aWJsZSA9ICJwd20tZmFuIjsKPiA+PiAJCXB3bXMgPSA8JnB3bTIgMCAy
NTAwMCBQV01fUE9MQVJJVFlfSU5WRVJURUQ+Owo+ID4+IAkJLi4uCj4gPj4gCX0KPiA+Pgo+ID4+
IEluIHB3bV9pbXgyN19wcm9iZSgpIHRoZSBzdXBwb3J0IGZvciBhIHRoaXJkIGBmbGFnc2AgYXJn
dW1lbnQgaW4gYSBwd20KPiA+PiByZWZlcmVuY2UgaXMgZW5hYmxlZDoKPiA+Pgo+ID4+IAlpbXgt
PmNoaXAub2ZfeGxhdGUgPSBvZl9wd21feGxhdGVfd2l0aF9mbGFnczsKPiA+PiAJaW14LT5jaGlw
Lm9mX3B3bV9uX2NlbGxzID0gMzsKPiA+Pgo+ID4+IEhvd2V2ZXIsIHRoZSBmbGFnIGlzIGlnbm9y
ZWQgYW5kIHRoZSBvdXRwdXQgaXMgbm90IGludmVydGVkLgo+ID4+Cj4gPj4gQnkgYWRkaW5nIHNv
bWUgcHJpbnRzIEkgc2F3IHRoYXQgd2hlbiBvZl9wd21feGxhdGVfd2l0aF9mbGFncygpIGlzCj4g
Pj4gY2FsbGVkLCBhcmdzLT5hcmdzX2NvdW50IGlzIDIgaW5zdGVhZCBvZiAzLgo+ID4+Cj4gPj4g
TG9va2luZyBhdCB0aGUgZGVmaW5pdGlvbiBvZiB0aGUgcHdtIGRldmljZSBpdHNlbGYgaW4gaW14
NnFkbC5kdHNpIEkKPiA+PiBjYW4gc2VlIHRoYXQgdGhlIG51bWJlciBvZiBjZWxscyBpbiBhIHB3
bSByZWZlcmVuY2UgaXMgc2V0IHRvIDIgbm90IDM6Cj4gPj4KPiA+PiAJcHdtMjogcHdtQDIwODQw
MDAgewo+ID4+IAkJI3B3bS1jZWxscyA9IDwyPjsKPiA+PiAJCS4uLgo+ID4+IAl9Owo+ID4+Cj4g
Pj4gVGhhdCBzZWVtcyB0byBiZSBwcmV2ZW50aW5nIGEgdGhpcmQgYXJndW1lbnQgZnJvbSBiZWlu
ZyBwYXNzZWQuCj4gPj4KPiA+PiBJIGNhbiBjaGFuZ2UgYCNwd20tY2VsbHNgIHRvIDwzPiBhbmQg
dGhlbiBldmVyeXRoaW5nIHdvcmtzIGZvciBteQo+ID4+IGRldmljZSBidXQgSSdtIG5vdCBzdXJl
IHRoYXQgaXMgdGhlIGNvcnJlY3Qgc29sdXRpb24gZm9yIGV2ZXJ5b25lLiBUaGF0Cj4gPj4gd291
bGQgcmVxdWlyZSBhbGwgcHdtIHJlZmVyZW5jZXMgb24gaU1YNiBkZXZpY2VzIHRvIHVzZSAzIGNl
bGxzLiBUaGUKPiA+PiBjb2RlIGluIG9mX3B3bV94bGF0ZV93aXRoX2ZsYWdzKCkgc2VlbXMgdG8g
YmUgYnVpbHQgdG8gaGFuZGxlIGVpdGhlciAyCj4gPj4gb3IgMyBhcmd1bWVudCBjZWxscyBidXQg
SSBjYW4ndCBzZWUgYW55IHdheSB0byBhbGxvdyB0aGlzIGNob2ljZSBpbiB0aGUKPiA+PiBkZXZp
Y2UgdHJlZS4KPiA+Pgo+ID4+IElmIHRoZSBzb2x1dGlvbiBpcyB0byBzZXQgYCNwd20tY2VsbHNg
IHRvIDwzPiBJJ20gaGFwcHkgdG8gc2VuZCBhIHBhdGNoCj4gPj4gd2hpY2ggZG9lcyB0aGlzIGFu
ZCB1cGRhdGVzIGFsbCBwd20gcmVmZXJlbmNlcyBpbiBkZXZpY2UgdHJlZXMgd2hpY2gKPiA+PiBp
bmNsdWRlIGBpbXg2ZHFsLmR0c2lgLiBCZWZvcmUgSSBkbyB0aGF0IEknZCBsaWtlIHRvIGtub3cg
dGhhdCBpdCdzIHRoZQo+ID4+IGNvcnJlY3QgYXBwcm9hY2ggdGhvdWdoLgo+ID4+Cj4gPj4gRm9y
IGNvbnRleHQgSSd2ZSBjb25maXJtZWQgdGhpcyBpcyB0aGUgY2FzZSBpbiBMaW51eCA1LjQgYW5k
IHRoYXQgdGhlCj4gPj4gcmVsZXZhbnQgZmlsZXMgaGF2ZW4ndCBjaGFuZ2VkIGJldHdlZW4gdGhh
dCByZWxlYXNlIGFuZCA1LjYuMC1yYzQuICAKPiA+IAo+ID4gSSB0aGluayBjaGFuZ2luZyB0aGF0
IGlzIGZpbmUuIEhvd2V2ZXIgeW91J2QgaGF2ZSB0byBjYXJlIHRoYXQgYWxsCj4gPiBpbi10cmVl
IHVzZXJzIHRoYXQgcmVseSBvbiAjcHdtLWNlbGxzID0gPDI+IGFyZSBmaXhlZCBhY2NvcmRpbmds
eS4KPiA+IAo+ID4gSSdkIGRvOiBhZGQgI3B3bS1jZWxscyA9IDwzPiBpbiB0aGUgY3B1LmR0c2kg
YW5kIHRoZW4gYWRhcHQgYWxsCj4gPiBtYWNoaW5lLmR0cyB0byBhZGQgI3B3bS1jZWxscyA9IDwy
PiB1bnRpbCB0aGVyZSBhcmUgbm8gbW9yZSBjaGFuZ2VzIHRvCj4gPiB0aGUgZ2VuZXJhdGVkIGZp
bGVzIGNvbXBhcmVkIHRvIHRoZSBjdXJyZW50IHN0YXRlLiAgCj4gCj4gSSBzb2x2ZWQgdGhhdCBp
biB0aGUgcGFzdCBvbiBvdXIgYm9hcmQgdGhlIHNhbWUgd2F5IGFzIG90aGVyIGlteDYgYm9hcmRz
Cj4gZGlkLiBKdXN0IG92ZXJyaWRlIHRoZSAjcHdtLWNlbGxzIHByb3BlcnR5IGluIHlvdXIgYm9h
cmQgc3BlY2lmaWMgZGV2aWNldHJlZQo+IGFuZCB5b3UgYXJlIGZpbmU6Cj4gCj4gICAgbGludXgt
c3JjJCBnaXQgZ3JlcCBwd20tY2VsbHMgLS0gYXJjaC9hcm0vYm9vdC9kdHMvaW14NiotKgo+ICAg
IGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZkbC15YXBwNC1jb21tb24uZHRzaTogICAgICNwd20tY2Vs
bHMgPSA8Mz47Cj4gICAgYXJjaC9hcm0vYm9vdC9kdHMvaW14NnEtZGlzcGxheTUuZHRzaTogICNw
d20tY2VsbHMgPSA8Mz47Cj4gICAgYXJjaC9hcm0vYm9vdC9kdHMvaW14NnEtbWNjbW9uNi5kdHM6
ICAgICNwd20tY2VsbHMgPSA8Mz47Cj4gICAgYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFkbC10eDYu
ZHRzaTogICAgICNwd20tY2VsbHMgPSA8Mz47Cj4gICAgYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFk
bC10eDYuZHRzaTogICAgICNwd20tY2VsbHMgPSA8Mz47Cj4gICAgYXJjaC9hcm0vYm9vdC9kdHMv
aW14NnVsLXR4NnVsLmR0c2k6ICAgICNwd20tY2VsbHMgPSA8Mz47Cj4gICAgYXJjaC9hcm0vYm9v
dC9kdHMvaW14NnVsbC1jb2xpYnJpLmR0c2k6ICNwd20tY2VsbHMgPSA8Mz47Cj4gICAgYXJjaC9h
cm0vYm9vdC9kdHMvaW14NnVsbC1jb2xpYnJpLmR0c2k6ICNwd20tY2VsbHMgPSA8Mz47Cj4gICAg
YXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsbC1jb2xpYnJpLmR0c2k6ICNwd20tY2VsbHMgPSA8Mz47
Cj4gICAgYXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsbC1jb2xpYnJpLmR0c2k6ICNwd20tY2VsbHMg
PSA8Mz47CgpNaWNoYWwsCgpUaGF0IGFwcHJvYWNoIHdvdWxkIGJlIGdvb2QgZW5vdWdoIGZvciBt
eSBsaW1pdGVkIHVzZSBjYXNlIGJ1dCBpdCBkb2Vzbid0CnByZXZlbnQgb3RoZXJzIGZyb20gaGl0
dGluZyB0aGUgc2FtZSBjb25mdXNpb24gaW4gdGhlIGZ1dHVyZS4gSSdkIHJhdGhlcgpmaXggdGhl
IGJhc2UgaW14NiBkdHNpIGZpbGVzIHRvIGhhdmUgI3B3bS1jZWxscyA9IDwzPiBpZiB0aGUgZHJp
dmVyIHN1cHBvcnRzCnRoZSB0aGlyZCBjZWxsIGNvbnRhaW5pbmcgZmxhZ3MuCgpJJ2xsIHNlbmQg
YSBwYXRjaCBvbmNlIEkndmUgZG9uZSBhIGJpdCBtb3JlIGludmVzdGlnYXRpb24uCgpUaGFua3Ms
CgotLSAKUGF1bCBCYXJrZXIKS29uc3Vsa28gR3JvdXAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
