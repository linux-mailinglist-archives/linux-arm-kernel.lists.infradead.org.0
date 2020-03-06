Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC7717C736
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 21:45:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0BUF6Bhgg/dlHAvpCR9gg1dtdIzjGKeafHi6y/ycDe0=; b=LGavh7TuH132IZ
	NyUHu9EcgZg7NreS9C21HdK1xWUhmqvK9hqVqHG5RgjTpu1PLAHDrGLjVLW9uv3UKuLNt9eaWcJfN
	/+QkQF7HE9mDt4o/HAILhlc3L1JPSHUNYBdYxqgF7jz5ynLStSWCqVuqfmiTdzzDs0PymXsF3Laut
	bVu9XYmdprKry3F6rISelJ12K/rVkK1cgk8pNqwWecq84oGMIfT1lHoZKIp7UbmYtQ8OZBbx8EYEU
	CyHTEp/uI0X3S7PbaObptmI+3BZcAnu61yNK1FbnATnVY6Z6PcN4jw7SKXvh0D4XavE7MbUBvbTbZ
	WGDBjD2bMSVcSvaOoZBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAJq9-0000Wu-7d; Fri, 06 Mar 2020 20:45:01 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAJpu-0000UO-Na
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 20:44:48 +0000
Received: by mail-qt1-x844.google.com with SMTP id l21so2729663qtr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 12:44:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VIytyDCq7f0kiHtZyAPYuhAfxkdQ6oPpVlPc91ezlzw=;
 b=sVQp0SNzavyEmQgQgPO7gOzbjdxNHOBGOKLb2+i6xH5nTB6ZP6ociRcsHZFKZahWzv
 lVQMhT0TucKZE0jr1svRTaAecWqS9Lak/5QCDTaDSkOc6vq9y74In5QZ3C0vju5Y/YSJ
 seKiYzybOes0y2OWOOVvb45ZEYoBXTTL7/NQZvUeV5Umj/iFPmYuELjQmpwwRG/RbM00
 WMRsRryr0bUnfhZtTUXyLUc60zizY1/bRX7olknPmplQ8VZG+HU7CqTLWPWwICtR5QAk
 sPbgocfLtbClg6uijm1uY7WawL446OXTMUcERTf+StMaVG507VDTlm1AAJaTPJabMPKz
 9fdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VIytyDCq7f0kiHtZyAPYuhAfxkdQ6oPpVlPc91ezlzw=;
 b=DkfrT+Y1N+jYimgVpbYbuikZhwFWr+Zm+HIE0u/6pUICQWI9ps7fDvgdOrb40CopLc
 6OiGPk9Ki/xd/jK9mB8P8LFDivC63urJNliwRyDZJKthsUH1Mb3mvbDluiT6RgZKxC3t
 AXl632+j5M2ObYhSJKMkx08nMQIdtwosvlb6IOLgOSv+G2J2MCDrj4me5GoHa9ISxh5y
 mDCaUQ/5aUUXu0Nx4A3fKIFDi4xQ9zQP2S8Aya8+hmGQE85U4z5mTn69zaDlNJ4cA+g0
 pdmJ12yR7TvxOm11jE6tkkACAtYMWB5zTvd+xGNVm8YD7zYPj0gQEMwnXD1oq/c954yz
 1N4A==
X-Gm-Message-State: ANhLgQ1GHSk/Q3Wu0fNhuVsagxcBZGM3zrNZYSQ1msMY0lSTtFWZK8Jh
 Zg2lmPvNY0YlTh9e+QR9gtSW2Q==
X-Google-Smtp-Source: ADFU+vtc3atgWoG361itKB4xApBMGrMUExpxNIdab4Ow4UUWS5fC6T+QADXDozQS4OkwoR392p5sKA==
X-Received: by 2002:ac8:43c1:: with SMTP id w1mr4780630qtn.381.1583527484932; 
 Fri, 06 Mar 2020 12:44:44 -0800 (PST)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id g15sm14611541qtq.71.2020.03.06.12.44.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Mar 2020 12:44:44 -0800 (PST)
Message-ID: <1583527481.7365.165.camel@lca.pw>
Subject: Re: [PATCH V15] mm/debug: Add tests validating architecture page
 table helpers
From: Qian Cai <cai@lca.pw>
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
Date: Fri, 06 Mar 2020 15:44:41 -0500
In-Reply-To: <1583452659-11801-1-git-send-email-anshuman.khandual@arm.com>
References: <1583452659-11801-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_124446_818972_50AAE32C 
X-CRM114-Status: GOOD (  17.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
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
 Christophe Leroy <christophe.leroy@c-s.fr>, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAyMDIwLTAzLTA2IGF0IDA1OjI3ICswNTMwLCBBbnNodW1hbiBLaGFuZHVhbCB3cm90
ZToKPiBUaGlzIGFkZHMgdGVzdHMgd2hpY2ggd2lsbCB2YWxpZGF0ZSBhcmNoaXRlY3R1cmUgcGFn
ZSB0YWJsZSBoZWxwZXJzIGFuZAo+IG90aGVyIGFjY2Vzc29ycyBpbiB0aGVpciBjb21wbGlhbmNl
IHdpdGggZXhwZWN0ZWQgZ2VuZXJpYyBNTSBzZW1hbnRpY3MuCj4gVGhpcyB3aWxsIGhlbHAgdmFy
aW91cyBhcmNoaXRlY3R1cmVzIGluIHZhbGlkYXRpbmcgY2hhbmdlcyB0byBleGlzdGluZwo+IHBh
Z2UgdGFibGUgaGVscGVycyBvciBhZGRpdGlvbiBvZiBuZXcgb25lcy4KPiAKPiBUaGlzIHRlc3Qg
Y292ZXJzIGJhc2ljIHBhZ2UgdGFibGUgZW50cnkgdHJhbnNmb3JtYXRpb25zIGluY2x1ZGluZyBi
dXQgbm90Cj4gbGltaXRlZCB0byBvbGQsIHlvdW5nLCBkaXJ0eSwgY2xlYW4sIHdyaXRlLCB3cml0
ZSBwcm90ZWN0IGV0YyBhdCB2YXJpb3VzCj4gbGV2ZWwgYWxvbmcgd2l0aCBwb3B1bGF0aW5nIGlu
dGVybWVkaWF0ZSBlbnRyaWVzIHdpdGggbmV4dCBwYWdlIHRhYmxlIHBhZ2UKPiBhbmQgdmFsaWRh
dGluZyB0aGVtLgo+IAo+IFRlc3QgcGFnZSB0YWJsZSBwYWdlcyBhcmUgYWxsb2NhdGVkIGZyb20g
c3lzdGVtIG1lbW9yeSB3aXRoIHJlcXVpcmVkIHNpemUKPiBhbmQgYWxpZ25tZW50cy4gVGhlIG1h
cHBlZCBwZm5zIGF0IHBhZ2UgdGFibGUgbGV2ZWxzIGFyZSBkZXJpdmVkIGZyb20gYQo+IHJlYWwg
cGZuIHJlcHJlc2VudGluZyBhIHZhbGlkIGtlcm5lbCB0ZXh0IHN5bWJvbC4gVGhpcyB0ZXN0IGdl
dHMgY2FsbGVkCj4gaW5zaWRlIGtlcm5lbF9pbml0KCkgcmlnaHQgYWZ0ZXIgYXN5bmNfc3luY2hy
b25pemVfZnVsbCgpLgo+IAo+IFRoaXMgdGVzdCBnZXRzIGJ1aWx0IGFuZCBydW4gd2hlbiBDT05G
SUdfREVCVUdfVk1fUEdUQUJMRSBpcyBzZWxlY3RlZC4gQW55Cj4gYXJjaGl0ZWN0dXJlLCB3aGlj
aCBpcyB3aWxsaW5nIHRvIHN1YnNjcmliZSB0aGlzIHRlc3Qgd2lsbCBuZWVkIHRvIHNlbGVjdAo+
IEFSQ0hfSEFTX0RFQlVHX1ZNX1BHVEFCTEUuIEZvciBub3cgdGhpcyBpcyBsaW1pdGVkIHRvIGFy
YywgYXJtNjQsIHg4NiwgczM5MAo+IGFuZCBwcGMzMiBwbGF0Zm9ybXMgd2hlcmUgdGhlIHRlc3Qg
aXMga25vd24gdG8gYnVpbGQgYW5kIHJ1biBzdWNjZXNzZnVsbHkuCj4gR29pbmcgZm9yd2FyZCwg
b3RoZXIgYXJjaGl0ZWN0dXJlcyB0b28gY2FuIHN1YnNjcmliZSB0aGUgdGVzdCBhZnRlciBmaXhp
bmcKPiBhbnkgYnVpbGQgb3IgcnVudGltZSBwcm9ibGVtcyB3aXRoIHRoZWlyIHBhZ2UgdGFibGUg
aGVscGVycy4gTWVhbndoaWxlIGZvcgo+IGJldHRlciBwbGF0Zm9ybSBjb3ZlcmFnZSwgdGhlIHRl
c3QgY2FuIGFsc28gYmUgZW5hYmxlZCB3aXRoIENPTkZJR19FWFBFUlQKPiBldmVuIHdpdGhvdXQg
QVJDSF9IQVNfREVCVUdfVk1fUEdUQUJMRS4KPiAKPiBGb2xrcyBpbnRlcmVzdGVkIGluIG1ha2lu
ZyBzdXJlIHRoYXQgYSBnaXZlbiBwbGF0Zm9ybSdzIHBhZ2UgdGFibGUgaGVscGVycwo+IGNvbmZv
cm0gdG8gZXhwZWN0ZWQgZ2VuZXJpYyBNTSBzZW1hbnRpY3Mgc2hvdWxkIGVuYWJsZSB0aGUgYWJv
dmUgY29uZmlnCj4gd2hpY2ggd2lsbCBqdXN0IHRyaWdnZXIgdGhpcyB0ZXN0IGR1cmluZyBib290
LiBBbnkgbm9uIGNvbmZvcm1pdHkgaGVyZSB3aWxsCj4gYmUgcmVwb3J0ZWQgYXMgYW4gd2Fybmlu
ZyB3aGljaCB3b3VsZCBuZWVkIHRvIGJlIGZpeGVkLiBUaGlzIHRlc3Qgd2lsbCBoZWxwCj4gY2F0
Y2ggYW55IGNoYW5nZXMgdG8gdGhlIGFncmVlZCB1cG9uIHNlbWFudGljcyBleHBlY3RlZCBmcm9t
IGdlbmVyaWMgTU0gYW5kCj4gZW5hYmxlIHBsYXRmb3JtcyB0byBhY2NvbW1vZGF0ZSBpdCB0aGVy
ZWFmdGVyLgoKT0ssIEkgZ2V0IHRoaXMgd29ya2luZyBvbiBwb3dlcnBjIGhhc2ggTU1VIGFzIHdl
bGwsIHNvIHRoaXM/CgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9mZWF0dXJlcy9kZWJ1Zy9k
ZWJ1Zy12bS1wZ3RhYmxlL2FyY2gtc3VwcG9ydC50eHQKYi9Eb2N1bWVudGF0aW9uL2ZlYXR1cmVz
L2RlYnVnL2RlYnVnLXZtLXBndGFibGUvYXJjaC1zdXBwb3J0LnR4dAppbmRleCA2NGQwZjliMTVj
NDkuLmM1MjdkMDVjMDQ1OSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9mZWF0dXJlcy9kZWJ1
Zy9kZWJ1Zy12bS1wZ3RhYmxlL2FyY2gtc3VwcG9ydC50eHQKKysrIGIvRG9jdW1lbnRhdGlvbi9m
ZWF0dXJlcy9kZWJ1Zy9kZWJ1Zy12bS1wZ3RhYmxlL2FyY2gtc3VwcG9ydC50eHQKQEAgLTIyLDgg
KzIyLDcgQEAKwqDCoMKgwqDCoHzCoMKgwqDCoMKgwqDCoG5pb3MyOiB8IFRPRE8gfArCoMKgwqDC
oMKgfMKgwqDCoMKgb3BlbnJpc2M6IHwgVE9ETyB8CsKgwqDCoMKgwqB8wqDCoMKgwqDCoMKgcGFy
aXNjOiB8IFRPRE8gfAotwqDCoMKgwqB8wqDCoHBvd2VycGMvMzI6IHzCoMKgb2vCoMKgfAotwqDC
oMKgwqB8wqDCoHBvd2VycGMvNjQ6IHwgVE9ETyB8CivCoMKgwqDCoHzCoMKgwqDCoMKgcG93ZXJw
YzogfMKgwqBva8KgwqB8CsKgwqDCoMKgwqB8wqDCoMKgwqDCoMKgwqByaXNjdjogfCBUT0RPIHwK
wqDCoMKgwqDCoHzCoMKgwqDCoMKgwqDCoMKgczM5MDogfMKgwqBva8KgwqB8CsKgwqDCoMKgwqB8
wqDCoMKgwqDCoMKgwqDCoMKgwqBzaDogfCBUT0RPIHwKZGlmZiAtLWdpdCBhL2FyY2gvcG93ZXJw
Yy9LY29uZmlnIGIvYXJjaC9wb3dlcnBjL0tjb25maWcKaW5kZXggMmU3ZWVlNTIzYmExLi4xNzY5
MzBmNDBlMDcgMTAwNjQ0Ci0tLSBhL2FyY2gvcG93ZXJwYy9LY29uZmlnCisrKyBiL2FyY2gvcG93
ZXJwYy9LY29uZmlnCkBAIC0xMTYsNyArMTE2LDcgQEAgY29uZmlnIFBQQwrCoAkjCsKgCXNlbGVj
dCBBUkNIXzMyQklUX09GRl9UIGlmIFBQQzMyCsKgCXNlbGVjdCBBUkNIX0hBU19ERUJVR19WSVJU
VUFMCi0Jc2VsZWN0IEFSQ0hfSEFTX0RFQlVHX1ZNX1BHVEFCTEUgaWYgUFBDMzIKKwlzZWxlY3Qg
QVJDSF9IQVNfREVCVUdfVk1fUEdUQUJMRQrCoAlzZWxlY3QgQVJDSF9IQVNfREVWTUVNX0lTX0FM
TE9XRUQKwqAJc2VsZWN0IEFSQ0hfSEFTX0VMRl9SQU5ET01JWkUKwqAJc2VsZWN0IEFSQ0hfSEFT
X0ZPUlRJRllfU09VUkNFCmRpZmYgLS1naXQgYS9tbS9kZWJ1Z192bV9wZ3RhYmxlLmMgYi9tbS9k
ZWJ1Z192bV9wZ3RhYmxlLmMKaW5kZXggOTZhOTFiZGEzYTg1Li45ODk5MGE1MTUyNjggMTAwNjQ0
Ci0tLSBhL21tL2RlYnVnX3ZtX3BndGFibGUuYworKysgYi9tbS9kZWJ1Z192bV9wZ3RhYmxlLmMK
QEAgLTI1Niw3ICsyNTYsOCBAQCBzdGF0aWMgdm9pZCBfX2luaXQgcHRlX2NsZWFyX3Rlc3RzKHN0
cnVjdCBtbV9zdHJ1Y3QgKm1tLApwdGVfdCAqcHRlcCwKwqAJcHRlX3QgcHRlID0gUkVBRF9PTkNF
KCpwdGVwKTsKwqAKwqAJcHRlID0gX19wdGUocHRlX3ZhbChwdGUpIHwgUkFORE9NX09SVkFMVUUp
OwotCVdSSVRFX09OQ0UoKnB0ZXAsIHB0ZSk7CisJc2V0X3B0ZV9hdChtbSwgdmFkZHIsIHB0ZXAs
IHB0ZSk7CisJYmFycmllcigpOwrCoAlwdGVfY2xlYXIobW0sIHZhZGRyLCBwdGVwKTsKwqAJcHRl
ID0gUkVBRF9PTkNFKCpwdGVwKTsKwqAJV0FSTl9PTighcHRlX25vbmUocHRlKSk7CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
