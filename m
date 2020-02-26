Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 995D517032A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 16:52:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IPX5jShGTiYh5Z4OH7fNRiT2J1WSzKXNnm3TxqpUwbk=; b=BNSvmfYmvEIcwR
	FjoQmH9jJCZwAu6HVJb8P61jY1D2ZTdYKLZrXzy4FBQ3EPX83Q6Td4oqalxyknvUxOB1prfhsHk5x
	KmSDpw88N/LowRXL11IRQ6eJJ5hdfPPhImO3yEXuI7ktIi47aUvv8k61Z9adGWrm+7cmyFsa3k2xE
	YhEhjfh7phIl2cb/o9HSf8thX1FiR2O4xEopc+3D7qEqFvRd2DqTgmiz/EVOVylZMtCCHukdUV0kc
	LdWAQL33zYSbMAxnCjX3XreO9kjnNNks3AHsugfWrcZoKn7Ztxsy7Ld190B+GBE3lKsXcx/Qga/j9
	pyn/A5RAwT9uHMXis84Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6yys-0005zT-UH; Wed, 26 Feb 2020 15:52:14 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6yyh-0005yZ-CI
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 15:52:05 +0000
Received: by mail-qk1-x743.google.com with SMTP id b5so3048903qkh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 07:52:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4GYwlf0Xa2QHt1cHVU8f4uTPVQEe66S6tW8iKIjB1EY=;
 b=PEkBC2gGo9Wp0CTNFzcX/uGLGqh45la2h+234pEbgb0JKCTWiVwR5CK2qWd8o7GV9+
 vZ0V3mJmWDxwpkokIiWuE2AK5D0JvSuKri12uT1Y5ZmnM2+2x1lk6TfjQrITZNEH8kqT
 OpLenMqGsrmR+s2Jh+PZTctbpw7UkSpOJj3m46DAs7sTe9V+A8PrxIZxTU0Jx2ozkU+h
 l2FfR5Vf/ZZGO7KqofRi3aS6TzSV2SHQoTpS42nUl+B16nz+oN/qYJaqXNzKW0WQZswg
 b+O0gHwTc4Y9Ju+CjJy1uD3JRDYV9kySWYvBERLoM4RJvQwJnkBJANxBmrBhZlFtAjqz
 NmYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4GYwlf0Xa2QHt1cHVU8f4uTPVQEe66S6tW8iKIjB1EY=;
 b=QBqtsUTC1IWqg0A3lelO3IQh21iPgMOQ9S9rUYYxjv+RyotiMVoGXgasHEUIoIn9WM
 byae1pLLdYtVFkXnkfWSTFJCIOpeAMHFjxVFwwxVCWEabHFh1fAgRdAWMhvEbJXjwiMl
 3h2Qgu7hHuHKm7isYtMRNMiHYOWP0w6J/iJUOkwr/6sMDBo1WpnF8f9s+dwADSVCxoSt
 UhOv5LMd0wHqT+AKSLbnymSCmWHDlb8tBOYMljvLotI2Zuf0Bm2QfrLsmpZYXFFKTc59
 4PK8gInl337c/H20R0rHbYI9qd/LgLAZ0b3658OZInF/CvDTJWbdSUVrc+Z5AREbUVXD
 g/kQ==
X-Gm-Message-State: APjAAAV6w+PacKOMqzVXB9SUtHuCskarZg1ZEmG+cOI71RSKPsRe2DkX
 tzJbtwifB3irq5PKpafJcD+nNg==
X-Google-Smtp-Source: APXvYqxycYwltSMF6mRZHm7TjXsCzQqI/GC2y1t3waZQf56agLdqkPAjaYu5yvSrjxUQYf0tQtgA0w==
X-Received: by 2002:a37:64cb:: with SMTP id y194mr5808427qkb.364.1582732321799; 
 Wed, 26 Feb 2020 07:52:01 -0800 (PST)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id 3sm1332599qte.59.2020.02.26.07.51.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Feb 2020 07:52:01 -0800 (PST)
Message-ID: <1582732318.7365.129.camel@lca.pw>
Subject: Re: [PATCH V14] mm/debug: Add tests validating architecture page
 table helpers
From: Qian Cai <cai@lca.pw>
To: Christophe Leroy <christophe.leroy@c-s.fr>, Anshuman Khandual
 <anshuman.khandual@arm.com>, linux-mm@kvack.org
Date: Wed, 26 Feb 2020 10:51:58 -0500
In-Reply-To: <7c707b7f-ce3d-993b-8042-44fdc1ed28bf@c-s.fr>
References: <1581909460-19148-1-git-send-email-anshuman.khandual@arm.com>
 <1582726182.7365.123.camel@lca.pw>
 <7c707b7f-ce3d-993b-8042-44fdc1ed28bf@c-s.fr>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_075203_447814_B83BA738 
X-CRM114-Status: GOOD (  19.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-snps-arc@lists.infradead.org, Vasily Gorbik <gor@linux.ibm.com>,
 Borislav Petkov <bp@alien8.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Vineet Gupta <vgupta@synopsys.com>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyMDIwLTAyLTI2IGF0IDE1OjQ1ICswMTAwLCBDaHJpc3RvcGhlIExlcm95IHdyb3Rl
Ogo+IAo+IExlIDI2LzAyLzIwMjAgw6AgMTU6MDksIFFpYW4gQ2FpIGEgw6ljcml0wqA6Cj4gPiBP
biBNb24sIDIwMjAtMDItMTcgYXQgMDg6NDcgKzA1MzAsIEFuc2h1bWFuIEtoYW5kdWFsIHdyb3Rl
Ogo+ID4gPiBUaGlzIGFkZHMgdGVzdHMgd2hpY2ggd2lsbCB2YWxpZGF0ZSBhcmNoaXRlY3R1cmUg
cGFnZSB0YWJsZSBoZWxwZXJzIGFuZAo+ID4gPiBvdGhlciBhY2Nlc3NvcnMgaW4gdGhlaXIgY29t
cGxpYW5jZSB3aXRoIGV4cGVjdGVkIGdlbmVyaWMgTU0gc2VtYW50aWNzLgo+ID4gPiBUaGlzIHdp
bGwgaGVscCB2YXJpb3VzIGFyY2hpdGVjdHVyZXMgaW4gdmFsaWRhdGluZyBjaGFuZ2VzIHRvIGV4
aXN0aW5nCj4gPiA+IHBhZ2UgdGFibGUgaGVscGVycyBvciBhZGRpdGlvbiBvZiBuZXcgb25lcy4K
PiA+ID4gCj4gPiA+IFRoaXMgdGVzdCBjb3ZlcnMgYmFzaWMgcGFnZSB0YWJsZSBlbnRyeSB0cmFu
c2Zvcm1hdGlvbnMgaW5jbHVkaW5nIGJ1dCBub3QKPiA+ID4gbGltaXRlZCB0byBvbGQsIHlvdW5n
LCBkaXJ0eSwgY2xlYW4sIHdyaXRlLCB3cml0ZSBwcm90ZWN0IGV0YyBhdCB2YXJpb3VzCj4gPiA+
IGxldmVsIGFsb25nIHdpdGggcG9wdWxhdGluZyBpbnRlcm1lZGlhdGUgZW50cmllcyB3aXRoIG5l
eHQgcGFnZSB0YWJsZSBwYWdlCj4gPiA+IGFuZCB2YWxpZGF0aW5nIHRoZW0uCj4gPiA+IAo+ID4g
PiBUZXN0IHBhZ2UgdGFibGUgcGFnZXMgYXJlIGFsbG9jYXRlZCBmcm9tIHN5c3RlbSBtZW1vcnkg
d2l0aCByZXF1aXJlZCBzaXplCj4gPiA+IGFuZCBhbGlnbm1lbnRzLiBUaGUgbWFwcGVkIHBmbnMg
YXQgcGFnZSB0YWJsZSBsZXZlbHMgYXJlIGRlcml2ZWQgZnJvbSBhCj4gPiA+IHJlYWwgcGZuIHJl
cHJlc2VudGluZyBhIHZhbGlkIGtlcm5lbCB0ZXh0IHN5bWJvbC4gVGhpcyB0ZXN0IGdldHMgY2Fs
bGVkCj4gPiA+IGluc2lkZSBrZXJuZWxfaW5pdCgpIHJpZ2h0IGFmdGVyIGFzeW5jX3N5bmNocm9u
aXplX2Z1bGwoKS4KPiA+ID4gCj4gPiA+IFRoaXMgdGVzdCBnZXRzIGJ1aWx0IGFuZCBydW4gd2hl
biBDT05GSUdfREVCVUdfVk1fUEdUQUJMRSBpcyBzZWxlY3RlZC4gQW55Cj4gPiA+IGFyY2hpdGVj
dHVyZSwgd2hpY2ggaXMgd2lsbGluZyB0byBzdWJzY3JpYmUgdGhpcyB0ZXN0IHdpbGwgbmVlZCB0
byBzZWxlY3QKPiA+ID4gQVJDSF9IQVNfREVCVUdfVk1fUEdUQUJMRS4gRm9yIG5vdyB0aGlzIGlz
IGxpbWl0ZWQgdG8gYXJjLCBhcm02NCwgeDg2LCBzMzkwCj4gPiA+IGFuZCBwcGMzMiBwbGF0Zm9y
bXMgd2hlcmUgdGhlIHRlc3QgaXMga25vd24gdG8gYnVpbGQgYW5kIHJ1biBzdWNjZXNzZnVsbHku
Cj4gPiA+IEdvaW5nIGZvcndhcmQsIG90aGVyIGFyY2hpdGVjdHVyZXMgdG9vIGNhbiBzdWJzY3Jp
YmUgdGhlIHRlc3QgYWZ0ZXIgZml4aW5nCj4gPiA+IGFueSBidWlsZCBvciBydW50aW1lIHByb2Js
ZW1zIHdpdGggdGhlaXIgcGFnZSB0YWJsZSBoZWxwZXJzLiBNZWFud2hpbGUgZm9yCj4gPiA+IGJl
dHRlciBwbGF0Zm9ybSBjb3ZlcmFnZSwgdGhlIHRlc3QgY2FuIGFsc28gYmUgZW5hYmxlZCB3aXRo
IENPTkZJR19FWFBFUlQKPiA+ID4gZXZlbiB3aXRob3V0IEFSQ0hfSEFTX0RFQlVHX1ZNX1BHVEFC
TEUuCj4gPiA+IAo+ID4gPiBGb2xrcyBpbnRlcmVzdGVkIGluIG1ha2luZyBzdXJlIHRoYXQgYSBn
aXZlbiBwbGF0Zm9ybSdzIHBhZ2UgdGFibGUgaGVscGVycwo+ID4gPiBjb25mb3JtIHRvIGV4cGVj
dGVkIGdlbmVyaWMgTU0gc2VtYW50aWNzIHNob3VsZCBlbmFibGUgdGhlIGFib3ZlIGNvbmZpZwo+
ID4gPiB3aGljaCB3aWxsIGp1c3QgdHJpZ2dlciB0aGlzIHRlc3QgZHVyaW5nIGJvb3QuIEFueSBu
b24gY29uZm9ybWl0eSBoZXJlIHdpbGwKPiA+ID4gYmUgcmVwb3J0ZWQgYXMgYW4gd2FybmluZyB3
aGljaCB3b3VsZCBuZWVkIHRvIGJlIGZpeGVkLiBUaGlzIHRlc3Qgd2lsbCBoZWxwCj4gPiA+IGNh
dGNoIGFueSBjaGFuZ2VzIHRvIHRoZSBhZ3JlZWQgdXBvbiBzZW1hbnRpY3MgZXhwZWN0ZWQgZnJv
bSBnZW5lcmljIE1NIGFuZAo+ID4gPiBlbmFibGUgcGxhdGZvcm1zIHRvIGFjY29tbW9kYXRlIGl0
IHRoZXJlYWZ0ZXIuCj4gPiAKPiA+IEhvdyB1c2VmdWwgaXMgdGhpcyB0aGF0IHN0cmFpZ2h0bHkg
Y3Jhc2ggdGhlIHBvd2VycGM/Cj4gPiAKPiA+IFvCoMKgwqAyMy4yNjM0MjVdW8KgwqDCoMKgVDFd
IGRlYnVnX3ZtX3BndGFibGU6IGRlYnVnX3ZtX3BndGFibGU6IFZhbGlkYXRpbmcKPiA+IGFyY2hp
dGVjdHVyZSBwYWdlIHRhYmxlIGhlbHBlcnMKPiA+IFvCoMKgwqAyMy4yNjM2MjVdW8KgwqDCoMKg
VDFdIC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQo+ID4gW8KgwqDCoDIzLjI2
MzY0OV1bwqDCoMKgwqBUMV0ga2VybmVsIEJVRyBhdCBhcmNoL3Bvd2VycGMvbW0vcGd0YWJsZS5j
OjI3NCEKPiAKPiBUaGUgcHJvYmxlbSBvbiBQUEM2NCBpcyBrbm93biBhbmQgaGFzIHRvIGJlIGlu
dmVzdGlnYXRlZCBhbmQgZml4ZWQuCgpJdCBtaWdodCBiZSBpbnRlcmVzdGluZyB0byBoZWFyIHdo
YXQgcG93ZXJwYzY0IG1haW50YWluZXJzIHdvdWxkIHNheSBhYm91dCBpdAphbmQgaWYgaXQgaXMg
YWN0dWFsbHkgd29ydGggImZpeGluZyIgaW4gdGhlIGFyY2ggY29kZSwgYnV0IHRoYXQgQlVHX09O
KCkgd2FzCnRoZXJlIHNpbmNlIDIwMDkgYW5kIGhhZCBub3QgYmVlbiBleHBvc2VkIHVudGlsIHRo
aXMgcGF0Y2ggY29tZXMgYWxvbmU/CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
