Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57211168E4B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 11:40:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iZxRxwkzLJG0ZdYeoatpmy3+gSsQ+N2kix7zqbLey0I=; b=ZXbZYQztz1oeQo
	FEgnZBZGGjULG2x5oKbUncknJtm3y+Ac0uX81oW5KU0h+tJSshJZ73OtO+ij9ajQ9qAUa5ur4WkXl
	Rdav/r+JRjB0v9ZeC49omq9ypfWSBtOSyZcWO3P3oV/stW8v0DruZF4oNXthELAVTczH76kF6hvec
	Goophee4sbUuoim0gbtgkfg4NhMO8E7cBD7hwsoM447p8xUPwr7Z3VNH+L9nBRoXe8X/tLoVe6u/h
	4RxDumlqyn3TtXfwrhbmn9EYz62F8iYB0YrRh0zgK+gmGXoVZdNm49s9sck4jNOVHfkdXID2EWyAg
	CHqgj+n6V0SjsjSGUqCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5SCq-0002XP-Mu; Sat, 22 Feb 2020 10:40:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5SCi-0002Q9-VC
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 10:40:14 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D7B7D206E2;
 Sat, 22 Feb 2020 10:40:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582368009;
 bh=6Wmafw7bm+Sez1pspQxTJG8ckuulq3Dz0SOXvtDrc8A=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hJ8vBz5YImwnzyR06r0PXFCCN11xWNCuBXVBewnggMEXfopP9vYh1WEsVMg+gPhTA
 Pta7BW5qW7O0b8swPoD0AcoUJLoyU8UZTxeguzE+JF5jwVXQCY094k+ou6/5ZW+9d2
 wWxV4aYnWdNzE/lGr7ZsYz7aTDrMVRFADKpQVn80=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j5SCc-007C3Z-NX; Sat, 22 Feb 2020 10:40:06 +0000
Date: Sat, 22 Feb 2020 10:40:05 +0000
From: Marc Zyngier <maz@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v2 0/3] Fix arm_arch_timer clockmode when vDSO disabled
Message-ID: <20200222104005.6fc4019d@why>
In-Reply-To: <20200221181849.40351-1-vincenzo.frascino@arm.com>
References: <20200221181849.40351-1-vincenzo.frascino@arm.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: vincenzo.frascino@arm.com, linux-arch@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux@armlinux.org.uk,
 tglx@linutronix.de, luto@kernel.org, m.szyprowski@samsung.com,
 Mark.Rutland@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_024013_043710_D15A867F 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, Mark.Rutland@arm.com, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 luto@kernel.org, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAyMSBGZWIgMjAyMCAxODoxODo0NiArMDAwMApWaW5jZW56byBGcmFzY2lubyA8dmlu
Y2Vuem8uZnJhc2Npbm9AYXJtLmNvbT4gd3JvdGU6Cgo+IFRoZSBhcm1fYXJjaF90aW1lciByZXF1
aXJlcyB0aGF0IFZEU09fQ0xPQ0tNT0RFX0FSQ0hUSU1FUiB0byBiZQo+IGRlZmluZWQgdG8gY29t
cGlsZSBjb3JyZWN0bHkuIE9uIGFybSB0aGUgdkRTTyBjYW4gYmUgZGlzYWJsZWQgYW5kIHdoZW4K
PiB0aGlzIGlzIHRoZSBjYXNlIHRoZSBjb21waWxhdGlvbiBlbmRzIHByZW1hdHVyZWx5IHdpdGgg
YW4gZXJyb3I6Cj4gCj4gICQgbWFrZSBBUkNIPWFybSBtdWx0aV92N19kZWZjb25maWcKPiAgJCAu
L3NjcmlwdHMvY29uZmlnIC1kIFZEU08KPiAgJCBtYWtlCj4gCj4gIGRyaXZlcnMvY2xvY2tzb3Vy
Y2UvYXJtX2FyY2hfdGltZXIuYzo3Mzo0NDogZXJyb3I6Cj4gIOKAmFZEU09fQ0xPQ0tNT0RFX0FS
Q0hUSU1FUuKAmSB1bmRlY2xhcmVkIGhlcmUgKG5vdCBpbiBhIGZ1bmN0aW9uKQo+ICBzdGF0aWMg
ZW51bSB2ZHNvX2Nsb2NrX21vZGUgdmRzb19kZWZhdWx0ID0gVkRTT19DTE9DS01PREVfQVJDSFRJ
TUVSOwo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXgo+ICBz
Y3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI2NzogcmVjaXBlIGZvciB0YXJnZXQKPiAgJ2RyaXZlcnMv
Y2xvY2tzb3VyY2UvYXJtX2FyY2hfdGltZXIubycgZmFpbGVkCj4gIG1ha2VbMl06ICoqKiBbZHJp
dmVycy9jbG9ja3NvdXJjZS9hcm1fYXJjaF90aW1lci5vXSBFcnJvciAxCj4gIG1ha2VbMl06ICoq
KiBXYWl0aW5nIGZvciB1bmZpbmlzaGVkIGpvYnMuLi4uCj4gIHNjcmlwdHMvTWFrZWZpbGUuYnVp
bGQ6NTA1OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9jbG9ja3NvdXJjZScgZmFpbGVkCj4g
IG1ha2VbMV06ICoqKiBbZHJpdmVycy9jbG9ja3NvdXJjZV0gRXJyb3IgMgo+ICBtYWtlWzFdOiAq
KiogV2FpdGluZyBmb3IgdW5maW5pc2hlZCBqb2JzLi4uLgo+ICBNYWtlZmlsZToxNjgzOiByZWNp
cGUgZm9yIHRhcmdldCAnZHJpdmVycycgZmFpbGVkCj4gIG1ha2U6ICoqKiBbZHJpdmVyc10gRXJy
b3IgMgo+IAo+IFRoaXMgcGF0Y2ggc2VyaWVzIGFkZHJlc3NlcyB0aGUgaXNzdWUgZGVmaW5pbmcg
YSBkZWZhdWx0IGFyY2ggY2xvY2ttb2RlCj4gZm9yIGFybSBhbmQgYXJtNjQgYW5kIHVzaW5nIGl0
IHRvIGluaXRpYWxpemUgdGhlIGFybV9hcmNoX3RpbWVyLgoKYXJtIG9ubHkuIGFybTY0IGlzIGp1
c3QgZmluZS4KCj4gCj4gQ2hhbmdlczoKPiAtLS0tLS0tLQo+IHYyOgo+ICAgLSBBZGRyZXNzZWQg
TWFyYyBaeW5naWVyIGNvbW1lbnRzLgo+ICAgLSBSZWJhc2VkIG9uIDUuNi1yYzIuCgpUaGlzIGRv
ZXNuJ3QgYXBwbHkgdG8gLXJjMiwgYW5kIGlzIHJhdGhlciBhZ2FpbnN0IG5leHQuCgo+IAo+IENj
OiBDYXRhbGluIE1hcmluYXMgPGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29tPgo+IENjOiBXaWxsIERl
YWNvbiA8d2lsbC5kZWFjb25AYXJtLmNvbT4KPiBDYzogUnVzc2VsbCBLaW5nIDxsaW51eEBhcm1s
aW51eC5vcmcudWs+Cj4gQ2M6IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgo+
IENjOiBNYXJjIFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPgo+IENjOiBNYXJrIFJ1dGxhbmQgPE1h
cmsuUnV0bGFuZEBhcm0uY29tPgo+IENjOiBNYXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dza2lA
c2Ftc3VuZy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVmluY2Vuem8gRnJhc2Npbm8gPHZpbmNlbnpv
LmZyYXNjaW5vQGFybS5jb20+Cj4gCj4gVmluY2Vuem8gRnJhc2Npbm8gKDMpOgo+ICAgYXJtOiBj
bG9ja3NvdXJjZTogQWRkIFZEU08gZGVmYXVsdCBjbG9ja21vZGUKPiAgIGFybTY0OiBjbG9ja3Nv
dXJjZTogQWRkIFZEU08gZGVmYXVsdCBjbG9ja21vZGUKPiAgIGNsb2Nrc291cmNlOiBGaXggYXJt
X2FyY2hfdGltZXIgY2xvY2ttb2RlIHdoZW4gdkRTTyBkaXNhYmxlZAoKUGxlYXNlIHNxdWFzaCB0
aGUgdGhyZWUgcGF0Y2hlcyBpbnRvIGEgc2luZ2xlIG9uZS4gVGhlcmUgaXMgemVybyBwb2ludApp
biBoYXZpbmcgMyBwYXRjaGVzIGZvciBzb21ldGhpbmcgdGhhdCBzbWFsbC4KCglNLgotLSAKSmF6
eiBpcyBub3QgZGVhZC4gSXQganVzdCBzbWVsbHMgZnVubnkuLi4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
