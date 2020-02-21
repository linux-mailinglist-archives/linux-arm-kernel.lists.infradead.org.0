Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C33167EB3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 14:34:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fRVVajdgr5vSulqJOjzd9/6IiwhZ+doB4uT+pjVAlL8=; b=N3s0+7CPNbmIxdixsL54TBNWS
	Liwf6X7kGBLMDj0wNs1xc19I3tcB+RH+Oznrc+I7pzO/gkrVAQk65u98q2fzXwuKZfIcJpRllNvC8
	JZkd4gzTFsUUpCi9QbuVrn2MtPi3IJg5yspFh6+z9rsYr3B2wdVRlvUXppgSzwXz4rzJX+V9bw8A0
	HQ+yr7ACKgWwC5nLKKfXTy4rEKxbk+YsN5QwxJEbJci/56qYOEn0GEloWdrWBPa1+MHefJxnQnwPq
	eGRvNBBlnkztn7MaQpr+aP2ZDZX3Li9BHwc+5mO3geUO03JJiHjDYw31fFNGw5Ni8rAnRL/FWA5Ni
	J4XcX/J6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j58Rc-0002Hi-RU; Fri, 21 Feb 2020 13:34:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j58RV-0002HJ-5R
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 13:34:10 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9C516222C4;
 Fri, 21 Feb 2020 13:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582292048;
 bh=ht0Kot+tQa78hnxsSn96tptAjd8/4mQfr9EaFTef3O8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=oy+EN63iEddKvYOlWVbCEDGUr2gOmr1RRgvosDWa//pluv+N0vpSC2BeZ6Vr5vZNC
 AWfC9ciArKoDqC9TEsOOHkWceWCDvLl/zM2fEzhbZNucU+JGMgSN+oQv/SQz9cXmlE
 2zaGtXIAqR2TxCbNn8ILo7L8NUXKC5iNQAi95uFk=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j58RS-0072qM-TP; Fri, 21 Feb 2020 13:34:07 +0000
MIME-Version: 1.0
Date: Fri, 21 Feb 2020 13:34:06 +0000
From: Marc Zyngier <maz@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH] clocksource: Fix arm_arch_timer clockmode when vDSO
 disabled
In-Reply-To: <20200221130355.21373-1-vincenzo.frascino@arm.com>
References: <20200221130355.21373-1-vincenzo.frascino@arm.com>
Message-ID: <a81251e813d54caddd56b9aac4b55e85@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: vincenzo.frascino@arm.com, linux-arch@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux@armlinux.org.uk,
 luto@kernel.org, tglx@linutronix.de, m.szyprowski@samsung.com,
 mark.rutland@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_053409_245671_A32DB55D 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, mark.rutland@arm.com, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 luto@kernel.org, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VmluY2Vuem8sCgpQbGVhc2UgaW5jbHVkZSBNYXJrIGFuZCBteXNlbGYgZm9yIGFueXRoaW5nIHRo
YXQgdG91Y2hlcyB0aGUgYXJjaCB0aW1lcnMKKGdldF9tYWludGFpbmVyLnBsIHdpbGwgdGVsbCB5
b3Ugd2hvIHlvdSBuZWVkIHRvIGNjKS4KCk9uIDIwMjAtMDItMjEgMTM6MDMsIFZpbmNlbnpvIEZy
YXNjaW5vIHdyb3RlOgo+IFRoZSBhcm1fYXJjaF90aW1lciByZXF1aXJlcyB0aGF0IFZEU09fQ0xP
Q0tNT0RFX0FSQ0hUSU1FUiB0byBiZQo+IGRlZmluZWQgdG8gY29tcGlsZSBjb3JyZWN0bHkuIE9u
IGFybSB0aGUgdkRTTyBjYW4gYmUgZGlzYWJsZWQgYW5kIHdoZW4KPiB0aGlzIGlzIHRoZSBjYXNl
IHRoZSBjb21waWxhdGlvbiBlbmRzIHByZW1hdHVyZWx5IHdpdGggYW4gZXJyb3I6Cj4gCj4gICQg
bWFrZSBBUkNIPWFybSBtdWx0aV92N19kZWZjb25maWcKPiAgJCAuL3NjcmlwdHMvY29uZmlnIC1k
IFZEU08KPiAgJCBtYWtlCj4gCj4gZHJpdmVycy9jbG9ja3NvdXJjZS9hcm1fYXJjaF90aW1lci5j
OjczOjQ0OiBlcnJvcjoKPiDigJhWRFNPX0NMT0NLTU9ERV9BUkNIVElNRVLigJkgdW5kZWNsYXJl
ZCBoZXJlIChub3QgaW4gYSBmdW5jdGlvbikKPiAgIHN0YXRpYyBlbnVtIHZkc29fY2xvY2tfbW9k
ZSB2ZHNvX2RlZmF1bHQgPSBWRFNPX0NMT0NLTU9ERV9BUkNIVElNRVI7Cj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXgo+IHNjcmlwdHMvTWFrZWZpbGUuYnVp
bGQ6MjY3OiByZWNpcGUgZm9yIHRhcmdldAo+ICdkcml2ZXJzL2Nsb2Nrc291cmNlL2FybV9hcmNo
X3RpbWVyLm8nIGZhaWxlZAo+IG1ha2VbMl06ICoqKiBbZHJpdmVycy9jbG9ja3NvdXJjZS9hcm1f
YXJjaF90aW1lci5vXSBFcnJvciAxCj4gbWFrZVsyXTogKioqIFdhaXRpbmcgZm9yIHVuZmluaXNo
ZWQgam9icy4uLi4KPiBzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUwNTogcmVjaXBlIGZvciB0YXJn
ZXQgJ2RyaXZlcnMvY2xvY2tzb3VyY2UnIAo+IGZhaWxlZAo+IG1ha2VbMV06ICoqKiBbZHJpdmVy
cy9jbG9ja3NvdXJjZV0gRXJyb3IgMgo+IG1ha2VbMV06ICoqKiBXYWl0aW5nIGZvciB1bmZpbmlz
aGVkIGpvYnMuLi4uCj4gTWFrZWZpbGU6MTY4MzogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMn
IGZhaWxlZAo+IG1ha2U6ICoqKiBbZHJpdmVyc10gRXJyb3IgMgo+IAo+IERlZmluZSBWRFNPX0NM
T0NLTU9ERV9BUkNIVElNRVIgYXMgVkRTT19DTE9DS01PREVfTk9ORSB3aGVuIHRoZSB2RFNPcyAK
PiBhcmUKPiBub3QgZW5hYmxlZCB0byBhZGRyZXNzIHRoZSBpc3N1ZS4KPiAKPiBGaXhlczogNWUz
YzZhMzEyYTA5ICgiQVJNL2FybTY0OiB2ZHNvOiBVc2UgY29tbW9uIHZkc28gY2xvY2sgbW9kZSAK
PiBzdG9yYWdlIikKPiBDYzogUnVzc2VsbCBLaW5nIDxsaW51eEBhcm1saW51eC5vcmcudWs+Cj4g
Q2M6IFRob21hcyBHbGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgo+IFJlcG9ydGVkLWJ5OiBN
YXJlayBTenlwcm93c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+Cj4gU2lnbmVkLW9mZi1i
eTogVmluY2Vuem8gRnJhc2Npbm8gPHZpbmNlbnpvLmZyYXNjaW5vQGFybS5jb20+Cj4gLS0tCj4g
IGRyaXZlcnMvY2xvY2tzb3VyY2UvYXJtX2FyY2hfdGltZXIuYyB8IDUgKysrKysKPiAgMSBmaWxl
IGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsb2Nr
c291cmNlL2FybV9hcmNoX3RpbWVyLmMKPiBiL2RyaXZlcnMvY2xvY2tzb3VyY2UvYXJtX2FyY2hf
dGltZXIuYwo+IGluZGV4IGVlMjQyMGQ1NmY2Ny4uNjE5ODM5MjIxZjk0IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvY2xvY2tzb3VyY2UvYXJtX2FyY2hfdGltZXIuYwo+ICsrKyBiL2RyaXZlcnMvY2xv
Y2tzb3VyY2UvYXJtX2FyY2hfdGltZXIuYwo+IEBAIC00OSw2ICs0OSwxMSBAQAo+ICAjZGVmaW5l
IENOVFZfVFZBTAkweDM4Cj4gICNkZWZpbmUgQ05UVl9DVEwJMHgzYwo+IAo+ICsjaWZuZGVmIENP
TkZJR19HRU5FUklDX0dFVFRJTUVPRkRBWQo+ICsvKiBUaGUgZGVmaW5lIGJlbG93IGlzIHJlcXVp
cmVkIGJlY2F1c2Ugb24gYXJtIHRoZSBWRFNPcyBjYW4gYmUgCj4gZGlzYWJsZWQgKi8KPiArI2Rl
ZmluZSBWRFNPX0NMT0NLTU9ERV9BUkNIVElNRVIJVkRTT19DTE9DS01PREVfTk9ORQo+ICsjZW5k
aWYgLyogQ09ORklHX0dFTkVSSUNfR0VUVElNRU9GREFZICovCgpUaGlzIGZlZWxzIHByZXR0eSBj
bHVua3kuCgpJJ2QgZXh0ZWN0IFZEU09fQVJDSF9DTE9DS01PREVTIChvciBzb21lIHNpbWlsYXIg
YXJjaGl0ZWN0dXJlLXNwZWNpZmljCnN5bWJvbCkgdG8gYmUgdXNlZCBmb3IgdmRzb19kZWZhdWx0
LCBhbmQgdGhhdCBzeW1ib2wgdG8gYmUgZGVmaW5lZCBhcwpWRFNPX0NMT0NLTU9ERV9OT05FIHdo
ZW4gQ09ORklHX0dFTkVSSUNfR0VUVElNRU9GREFZIGlzbid0IHNlbGVjdGVkLgoKT3RoZXJ3aXNl
LCB5b3UnbGwgZW5kLXVwIHJlcGxpY2F0aW5nIHRoZSBzYW1lIHBhdHRlcm4gaW4gZXZlcnkKY2xv
Y2stc291cmNlIHRoYXQgZ2V0cyB1c2VkIGJ5IHRoZSBWRFNPLgoKICAgICAgICAgTS4KLS0gCkph
enogaXMgbm90IGRlYWQuIEl0IGp1c3Qgc21lbGxzIGZ1bm55Li4uCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
