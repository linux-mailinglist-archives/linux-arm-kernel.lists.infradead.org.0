Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2191E799E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 11:42:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k5tl6f5MxtSsS//CfF5QsQUdh0qqF0h/WebGalFHEnQ=; b=nNEU+HqvBzskShm8djUnvczRw
	gJ8lKIuS7WrT5cbxrb9gQSo6ANXKdO3oswcgiFAMRka1G382kDYSXx7Eie/WPl1RrJtW73SmIbBiz
	NGUnb0Up3mdVohSK85GY0FvrpAFpb4Zn6H/U/wjvMc1GfB53riD+iKrG9Xzw0uWjo8w/C6Ygnmw4x
	qHPXBIdgLt42FXOQMR7aqUA3S9962Yr7I6dKvP5ElfOZyG4xRc4rwGV7QJiohUjrjbkP3TMEMFNVC
	ISFqxEJhGYOrl3ZMP54bzR4uR0phLSqiLjmahYNdjJ3Pk/sfh2qSEuqmRt65PLKCwutxkfuiTX6WW
	JsHQd3hEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jebWZ-0003mE-Iq; Fri, 29 May 2020 09:41:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jebWN-0003kO-7H
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 09:41:48 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8050720810;
 Fri, 29 May 2020 09:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590745306;
 bh=7656s4eYWhYzzAhobQ/p864RjB2diU/xpekCGE7YNZ0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=VQmr+kTgz6xT6jL5yWNdjI6CmqoEcxAQUP7Yjg5gfK3TvAVPbNdb45ezQRJ9TGm5G
 TYEBNnIFHaH7aClx19eT+daZr2aERlM073SlgHsQTree3AC6yibKxy1OhiiSgkbohN
 obMAXKU++5wiqUu1N0nZETdr3VtZjSVNHuHPj2mA=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jebWK-00GEXJ-Vz; Fri, 29 May 2020 10:41:45 +0100
MIME-Version: 1.0
Date: Fri, 29 May 2020 10:41:44 +0100
From: Marc Zyngier <maz@kernel.org>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH RFCv2 9/9] arm64: Support async page fault
In-Reply-To: <6a4a82a4-af01-98c2-c854-9199f55f7bd3@redhat.com>
References: <20200508032919.52147-1-gshan@redhat.com>
 <20200508032919.52147-10-gshan@redhat.com>
 <81adf013-3de7-23e6-7648-8aec821b033c@redhat.com>
 <a6addc25-29af-3690-8392-efa5e8381e98@redhat.com>
 <8ab64c6a-582b-691d-79ab-21cdc0455cd3@redhat.com>
 <6a4a82a4-af01-98c2-c854-9199f55f7bd3@redhat.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <6965aaf641a23fab64fbe2ceeb790272@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: gshan@redhat.com, pbonzini@redhat.com,
 kvmarm@lists.cs.columbia.edu, linux-kernel@vger.kernel.org,
 shan.gavin@gmail.com, catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_024147_296371_1821AB6E 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org, shan.gavin@gmail.com,
 Paolo Bonzini <pbonzini@redhat.com>, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNS0yOSAwMDowMiwgR2F2aW4gU2hhbiB3cm90ZToKPiBIaSBQYW9sbywKPiAKPiBP
biA1LzI4LzIwIDg6NDggUE0sIFBhb2xvIEJvbnppbmkgd3JvdGU6Cj4+IE9uIDI4LzA1LzIwIDA4
OjE0LCBHYXZpbiBTaGFuIHdyb3RlOgo+Pj4+IC0gZm9yIHg4NiB3ZSdyZSBhbHNvIHRoaW5raW5n
IG9mIGluaXRpYXRpbmcgdGhlIHBhZ2UgZmF1bHQgZnJvbSB0aGUKPj4+PiBleGNlcHRpb24gaGFu
ZGxlciwgcmF0aGVyIHRoYW4gZG9pbmcgc28gZnJvbSB0aGUgaHlwZXJ2aXNvciBiZWZvcmUKPj4+
PiBpbmplY3RpbmcgdGhlIGV4Y2VwdGlvbi7CoCBJZiBBUk0gbGVhZHMgdGhlIHdheSBoZXJlLCB3
ZSB3b3VsZCBkbyBvdXIKPj4+PiBiZXN0IHRvIHNoYXJlIGNvZGUgd2hlbiB4ODYgZG9lcyB0aGUg
c2FtZS4KPj4+IAo+Pj4gU29ycnksIFBhb2xvLCBJIGRvbid0IGZvbGxvdyB5b3VyIGlkZWEgaGVy
ZS4gQ291bGQgeW91IHBsZWFzZSBwcm92aWRlCj4+PiBtb3JlIGRldGFpbHM/Cj4+IAo+PiBUaGUg
aWRlYSBpcyB0byBpbmplY3Qgc3RhZ2UyIHBhZ2UgZmF1bHRzIGludG8gdGhlIGd1ZXN0IGV2ZW4g
YmVmb3JlIAo+PiB0aGUKPj4gaG9zdCBzdGFydHMgcG9wdWxhdGVzIHRoZSBwYWdlLiAgVGhlIGd1
ZXN0IHRoZW4gaW52b2tlcyBhIGh5cGVyY2FsbCwKPj4gdGVsbGluZyB0aGUgaG9zdCB0byBwb3B1
bGF0ZSB0aGUgcGFnZSB0YWJsZSBhbmQgaW5qZWN0IHRoZSAncGFnZSAKPj4gcmVhZHknCj4+IGV2
ZW50IChpbnRlcnJ1cHQpIHdoZW4gaXQncyBkb25lLgo+PiAKPj4gRm9yIHg4NiB0aGUgYWR2YW50
YWdlIGlzIHRoYXQgdGhlIHByb2Nlc3NvciBjYW4gdGFrZSBjYXJlIG9mIHJhaXNpbmcgCj4+IHRo
ZQo+PiBzdGFnZTIgcGFnZSBmYXVsdCBpbiB0aGUgZ3Vlc3QsIHNvIGl0J3MgZmFzdGVyLgo+PiAK
PiBJIHRoaW5rIHRoZXJlIG1pZ2h0IGJlIHRvbyBtdWNoIG92ZXJoZWFkIGlmIHRoZSBwYWdlIGNh
biBiZSBwb3B1bGF0ZWQKPiBxdWlja2x5IGJ5IGhvc3QuIEZvciBleGFtcGxlLCBpdCdzIGZhc3Qg
dG8gcG9wdWxhdGUgdGhlIHBhZ2VzIGlmIHN3YXBpbgo+IGlzbid0IGludm9sdmVkLgo+IAo+IElm
IEknbSBjb3JyZWN0IGVub3VnaCwgaXQgc2VlbXMgYXJtNjQgZG9lc24ndCBoYXZlIHNpbWlsYXIg
bWVjaGFuaXNtLAo+IHJvdXRpbmcgc3RhZ2UyIHBhZ2UgZmF1bHQgdG8gZ3Vlc3QuCgpJbmRlZWQs
IHRoaXMgaXNuJ3QgYSB0aGluZyBvbiBhcm02NC4gRXhjZXB0aW9uIGNhdXNlZCBieSBhIFMyIGZh
dWx0IGFyZQphbHdheXMgcm91dGVkIHRvIEVMMi4KCiAgICAgICAgIE0uCi0tIApKYXp6IGlzIG5v
dCBkZWFkLiBJdCBqdXN0IHNtZWxscyBmdW5ueS4uLgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
