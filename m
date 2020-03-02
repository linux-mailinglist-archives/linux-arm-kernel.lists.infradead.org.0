Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0472717642B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 20:41:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6KXcJxmnzU70qsAymyKYIJpzju3n56DgDJJXNdkLBJw=; b=OM9UdHJuo/DuzC
	yVXFLYkgvrNywy1LMJvY/Lmq/2dXFoaTRApkOqtgguFIcW6TFYjOjG7pqjJ5e3X7Jkzz+G+Q8R3Oz
	HzJ1DmHo78VA7v8g5+j9HKdE9r476x0YlnZ0m3iknolPxqX5nrVfcJLh8MYqwwvB8+X9FSKulfV4k
	JAaBLbOUiv9ezJ8lP3a1hlpfa9p4Bz9fW2TR2A28dOZPTvp0zeME5uvTw0aL9kp+Y28LjC3C7fYJb
	OgyrwAcP1nAiQe15E5D/WF93QiooCXfz6iAf5cJdZrhSloeeWPJniuAt1jJwjwxYv5SOLWAG2br06
	75o0w+sT/7nIzQyeH+2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8qvx-0006yF-Lw; Mon, 02 Mar 2020 19:40:57 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8qvq-0006wx-QF
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 19:40:52 +0000
Received: by mail-qk1-x741.google.com with SMTP id m2so890611qka.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 11:40:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Fpur9odzhdIzgZKAdXT5OufUWZiXDywyFJGHnsjLJuo=;
 b=dWCEq9TbdtlIn4IlSjT7wsgDMqKSoAKLzae3C569gQfG+p+Vk79gjYDp0p50OXn9hR
 Xm7x5cNfSGrA7pZOqbIyHB6YbB5olZ4ep8KMLse+bohRCUq99hLzFTyhfizQ0g1MVv9z
 PDB5fH+ahTLkKU8vUdes9sSXGelGjiIZoAKN6HTkKzUfig+h5pTHRYeWb9NP7s3wdS9t
 Tt4WNgQv8yFdtznernPNmQzDX+ip0C+UgbaM/+RzUP5kH1SCJgpVi8ZPrt/2QDdNj0Vc
 NTeqpeeYYjJCxNEWEDDoAqM078dLwnuNGGPGzRM4Bt0EmoCaK9xyew4usRNSVcQzIQqy
 2SAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Fpur9odzhdIzgZKAdXT5OufUWZiXDywyFJGHnsjLJuo=;
 b=m16acoU6/EQeIbDsNwhoMhwt+UB6lCRfeQ/4Q2KTHw+2ckx/qmZPsIM0sKubFiKtH+
 KwTGep3U77BVR8556dOPIVG3LYedJdwH3huPZEQXcXkEcGbJmqNja7I8dqWZRVHPu7YF
 PkRor+Nd4ZMFxBOBGnpoonatPp+gEbHrj78c4PB7Pon3cNf9DzyUtKdzy1jZpohvrVai
 jZgxbU4src1iKgHCyLBkFZ4OQvPwEmfTrbvQeMSLQoe4J8kTC95CBhiV9vVstyXpCl91
 Rbksz9lor2j0RECuvCspox4fJtEH9mEPRmUbtoN442NLrC2gDmesFgfT8s8TgjPWqx3X
 PHJQ==
X-Gm-Message-State: ANhLgQ1BkjgttsVX6Dx/rfwjcsvXxTKwXBBmL+WHcvI4f6r6z0pu0imP
 Iqx5IIQ4To7BdUcAS3zTM1O/XQ==
X-Google-Smtp-Source: ADFU+vvIre6Pknx1npljKo6V/87YN9X3Pm++i6mQcGcNAIn71bgolvXPcuZTIRGu9NVtwEvKfxAUQw==
X-Received: by 2002:ae9:f205:: with SMTP id m5mr857097qkg.152.1583178047563;
 Mon, 02 Mar 2020 11:40:47 -0800 (PST)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id s139sm6748558qke.70.2020.03.02.11.40.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Mar 2020 11:40:46 -0800 (PST)
Message-ID: <1583178042.7365.146.camel@lca.pw>
Subject: Re: [PATCH V14] mm/debug: Add tests validating architecture page
 table helpers
From: Qian Cai <cai@lca.pw>
To: Christophe Leroy <christophe.leroy@c-s.fr>, Anshuman Khandual
 <anshuman.khandual@arm.com>, linux-mm@kvack.org
Date: Mon, 02 Mar 2020 14:40:42 -0500
In-Reply-To: <1582732318.7365.129.camel@lca.pw>
References: <1581909460-19148-1-git-send-email-anshuman.khandual@arm.com>
 <1582726182.7365.123.camel@lca.pw>
 <7c707b7f-ce3d-993b-8042-44fdc1ed28bf@c-s.fr>
 <1582732318.7365.129.camel@lca.pw>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_114050_859113_0BE78165 
X-CRM114-Status: GOOD (  24.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

T24gV2VkLCAyMDIwLTAyLTI2IGF0IDEwOjUxIC0wNTAwLCBRaWFuIENhaSB3cm90ZToKPiBPbiBX
ZWQsIDIwMjAtMDItMjYgYXQgMTU6NDUgKzAxMDAsIENocmlzdG9waGUgTGVyb3kgd3JvdGU6Cj4g
PiAKPiA+IExlIDI2LzAyLzIwMjAgw6AgMTU6MDksIFFpYW4gQ2FpIGEgw6ljcml0wqA6Cj4gPiA+
IE9uIE1vbiwgMjAyMC0wMi0xNyBhdCAwODo0NyArMDUzMCwgQW5zaHVtYW4gS2hhbmR1YWwgd3Jv
dGU6Cj4gPiA+ID4gVGhpcyBhZGRzIHRlc3RzIHdoaWNoIHdpbGwgdmFsaWRhdGUgYXJjaGl0ZWN0
dXJlIHBhZ2UgdGFibGUgaGVscGVycyBhbmQKPiA+ID4gPiBvdGhlciBhY2Nlc3NvcnMgaW4gdGhl
aXIgY29tcGxpYW5jZSB3aXRoIGV4cGVjdGVkIGdlbmVyaWMgTU0gc2VtYW50aWNzLgo+ID4gPiA+
IFRoaXMgd2lsbCBoZWxwIHZhcmlvdXMgYXJjaGl0ZWN0dXJlcyBpbiB2YWxpZGF0aW5nIGNoYW5n
ZXMgdG8gZXhpc3RpbmcKPiA+ID4gPiBwYWdlIHRhYmxlIGhlbHBlcnMgb3IgYWRkaXRpb24gb2Yg
bmV3IG9uZXMuCj4gPiA+ID4gCj4gPiA+ID4gVGhpcyB0ZXN0IGNvdmVycyBiYXNpYyBwYWdlIHRh
YmxlIGVudHJ5IHRyYW5zZm9ybWF0aW9ucyBpbmNsdWRpbmcgYnV0IG5vdAo+ID4gPiA+IGxpbWl0
ZWQgdG8gb2xkLCB5b3VuZywgZGlydHksIGNsZWFuLCB3cml0ZSwgd3JpdGUgcHJvdGVjdCBldGMg
YXQgdmFyaW91cwo+ID4gPiA+IGxldmVsIGFsb25nIHdpdGggcG9wdWxhdGluZyBpbnRlcm1lZGlh
dGUgZW50cmllcyB3aXRoIG5leHQgcGFnZSB0YWJsZSBwYWdlCj4gPiA+ID4gYW5kIHZhbGlkYXRp
bmcgdGhlbS4KPiA+ID4gPiAKPiA+ID4gPiBUZXN0IHBhZ2UgdGFibGUgcGFnZXMgYXJlIGFsbG9j
YXRlZCBmcm9tIHN5c3RlbSBtZW1vcnkgd2l0aCByZXF1aXJlZCBzaXplCj4gPiA+ID4gYW5kIGFs
aWdubWVudHMuIFRoZSBtYXBwZWQgcGZucyBhdCBwYWdlIHRhYmxlIGxldmVscyBhcmUgZGVyaXZl
ZCBmcm9tIGEKPiA+ID4gPiByZWFsIHBmbiByZXByZXNlbnRpbmcgYSB2YWxpZCBrZXJuZWwgdGV4
dCBzeW1ib2wuIFRoaXMgdGVzdCBnZXRzIGNhbGxlZAo+ID4gPiA+IGluc2lkZSBrZXJuZWxfaW5p
dCgpIHJpZ2h0IGFmdGVyIGFzeW5jX3N5bmNocm9uaXplX2Z1bGwoKS4KPiA+ID4gPiAKPiA+ID4g
PiBUaGlzIHRlc3QgZ2V0cyBidWlsdCBhbmQgcnVuIHdoZW4gQ09ORklHX0RFQlVHX1ZNX1BHVEFC
TEUgaXMgc2VsZWN0ZWQuIEFueQo+ID4gPiA+IGFyY2hpdGVjdHVyZSwgd2hpY2ggaXMgd2lsbGlu
ZyB0byBzdWJzY3JpYmUgdGhpcyB0ZXN0IHdpbGwgbmVlZCB0byBzZWxlY3QKPiA+ID4gPiBBUkNI
X0hBU19ERUJVR19WTV9QR1RBQkxFLiBGb3Igbm93IHRoaXMgaXMgbGltaXRlZCB0byBhcmMsIGFy
bTY0LCB4ODYsIHMzOTAKPiA+ID4gPiBhbmQgcHBjMzIgcGxhdGZvcm1zIHdoZXJlIHRoZSB0ZXN0
IGlzIGtub3duIHRvIGJ1aWxkIGFuZCBydW4gc3VjY2Vzc2Z1bGx5Lgo+ID4gPiA+IEdvaW5nIGZv
cndhcmQsIG90aGVyIGFyY2hpdGVjdHVyZXMgdG9vIGNhbiBzdWJzY3JpYmUgdGhlIHRlc3QgYWZ0
ZXIgZml4aW5nCj4gPiA+ID4gYW55IGJ1aWxkIG9yIHJ1bnRpbWUgcHJvYmxlbXMgd2l0aCB0aGVp
ciBwYWdlIHRhYmxlIGhlbHBlcnMuIE1lYW53aGlsZSBmb3IKPiA+ID4gPiBiZXR0ZXIgcGxhdGZv
cm0gY292ZXJhZ2UsIHRoZSB0ZXN0IGNhbiBhbHNvIGJlIGVuYWJsZWQgd2l0aCBDT05GSUdfRVhQ
RVJUCj4gPiA+ID4gZXZlbiB3aXRob3V0IEFSQ0hfSEFTX0RFQlVHX1ZNX1BHVEFCTEUuCj4gPiA+
ID4gCj4gPiA+ID4gRm9sa3MgaW50ZXJlc3RlZCBpbiBtYWtpbmcgc3VyZSB0aGF0IGEgZ2l2ZW4g
cGxhdGZvcm0ncyBwYWdlIHRhYmxlIGhlbHBlcnMKPiA+ID4gPiBjb25mb3JtIHRvIGV4cGVjdGVk
IGdlbmVyaWMgTU0gc2VtYW50aWNzIHNob3VsZCBlbmFibGUgdGhlIGFib3ZlIGNvbmZpZwo+ID4g
PiA+IHdoaWNoIHdpbGwganVzdCB0cmlnZ2VyIHRoaXMgdGVzdCBkdXJpbmcgYm9vdC4gQW55IG5v
biBjb25mb3JtaXR5IGhlcmUgd2lsbAo+ID4gPiA+IGJlIHJlcG9ydGVkIGFzIGFuIHdhcm5pbmcg
d2hpY2ggd291bGQgbmVlZCB0byBiZSBmaXhlZC4gVGhpcyB0ZXN0IHdpbGwgaGVscAo+ID4gPiA+
IGNhdGNoIGFueSBjaGFuZ2VzIHRvIHRoZSBhZ3JlZWQgdXBvbiBzZW1hbnRpY3MgZXhwZWN0ZWQg
ZnJvbSBnZW5lcmljIE1NIGFuZAo+ID4gPiA+IGVuYWJsZSBwbGF0Zm9ybXMgdG8gYWNjb21tb2Rh
dGUgaXQgdGhlcmVhZnRlci4KPiA+ID4gCj4gPiA+IEhvdyB1c2VmdWwgaXMgdGhpcyB0aGF0IHN0
cmFpZ2h0bHkgY3Jhc2ggdGhlIHBvd2VycGM/Cj4gPiA+IAo+ID4gPiBbwqDCoMKgMjMuMjYzNDI1
XVvCoMKgwqDCoFQxXSBkZWJ1Z192bV9wZ3RhYmxlOiBkZWJ1Z192bV9wZ3RhYmxlOiBWYWxpZGF0
aW5nCj4gPiA+IGFyY2hpdGVjdHVyZSBwYWdlIHRhYmxlIGhlbHBlcnMKPiA+ID4gW8KgwqDCoDIz
LjI2MzYyNV1bwqDCoMKgwqBUMV0gLS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0t
Cj4gPiA+IFvCoMKgwqAyMy4yNjM2NDldW8KgwqDCoMKgVDFdIGtlcm5lbCBCVUcgYXQgYXJjaC9w
b3dlcnBjL21tL3BndGFibGUuYzoyNzQhCj4gPiAKPiA+IFRoZSBwcm9ibGVtIG9uIFBQQzY0IGlz
IGtub3duIGFuZCBoYXMgdG8gYmUgaW52ZXN0aWdhdGVkIGFuZCBmaXhlZC4KPiAKPiBJdCBtaWdo
dCBiZSBpbnRlcmVzdGluZyB0byBoZWFyIHdoYXQgcG93ZXJwYzY0IG1haW50YWluZXJzIHdvdWxk
IHNheSBhYm91dCBpdAo+IGFuZCBpZiBpdCBpcyBhY3R1YWxseSB3b3J0aCAiZml4aW5nIiBpbiB0
aGUgYXJjaCBjb2RlLCBidXQgdGhhdCBCVUdfT04oKSB3YXMKPiB0aGVyZSBzaW5jZSAyMDA5IGFu
ZCBoYWQgbm90IGJlZW4gZXhwb3NlZCB1bnRpbCB0aGlzIHBhdGNoIGNvbWVzIGFsb25lPwoKVGhp
cyBwYXRjaCBiZWxvdyBtYWtlcyBpdCB3b3JrcyBvbiBwb3dlcnBjNjQgaW4gb3JkZXIgdG8gZG9k
Z2UgdGhlIEJVR19PTigpcyBpbiAKYXNzZXJ0X3B0ZV9sb2NrZWQoKSB0cmlnZ2VyZWQgYnkgcHRl
X2NsZWFyX3Rlc3RzKCkuCgoKZGlmZiAtLWdpdCBhL21tL2RlYnVnX3ZtX3BndGFibGUuYyBiL21t
L2RlYnVnX3ZtX3BndGFibGUuYwppbmRleCA5NmRkN2Q1NzRjZWYuLjUwYjM4NTIzMzk3MSAxMDA2
NDQKLS0tIGEvbW0vZGVidWdfdm1fcGd0YWJsZS5jCisrKyBiL21tL2RlYnVnX3ZtX3BndGFibGUu
YwpAQCAtNTUsNiArNTUsOCBAQArCoCNkZWZpbmUgUkFORE9NX09SVkFMVUUJR0VOTUFTSyhCSVRT
X1BFUl9MT05HIC0gMSwgUzM5MF9NQVNLX0JJVFMpCsKgI2RlZmluZSBSQU5ET01fTlpWQUxVRQlH
RU5NQVNLKDcsIDApCsKgCit1bnNpZ25lZCBsb25nIHZhZGRyOworCsKgc3RhdGljIHZvaWQgX19p
bml0IHB0ZV9iYXNpY190ZXN0cyh1bnNpZ25lZCBsb25nIHBmbiwgcGdwcm90X3QgcHJvdCkKwqB7
CsKgCXB0ZV90IHB0ZSA9IHBmbl9wdGUocGZuLCBwcm90KTsKQEAgLTI1Niw3ICsyNTgsNyBAQCBz
dGF0aWMgdm9pZCBfX2luaXQgcHRlX2NsZWFyX3Rlc3RzKHN0cnVjdCBtbV9zdHJ1Y3QgKm1tLApw
dGVfdCAqcHRlcCkKwqAKwqAJcHRlID0gX19wdGUocHRlX3ZhbChwdGUpIHwgUkFORE9NX09SVkFM
VUUpOwrCoAlXUklURV9PTkNFKCpwdGVwLCBwdGUpOwotCXB0ZV9jbGVhcihtbSwgMCwgcHRlcCk7
CisJcHRlX2NsZWFyKG1tLCB2YWRkciwgcHRlcCk7CsKgCXB0ZSA9IFJFQURfT05DRSgqcHRlcCk7
CsKgCVdBUk5fT04oIXB0ZV9ub25lKHB0ZSkpOwrCoH0KQEAgLTMxMCw4ICszMTIsOSBAQCB2b2lk
IF9faW5pdCBkZWJ1Z192bV9wZ3RhYmxlKHZvaWQpCsKgCXBndGFibGVfdCBzYXZlZF9wdGVwOwrC
oAlwZ3Byb3RfdCBwcm90OwrCoAlwaHlzX2FkZHJfdCBwYWRkcjsKLQl1bnNpZ25lZCBsb25nIHZh
ZGRyLCBwdGVfYWxpZ25lZCwgcG1kX2FsaWduZWQ7CisJdW5zaWduZWQgbG9uZyBwdGVfYWxpZ25l
ZCwgcG1kX2FsaWduZWQ7CsKgCXVuc2lnbmVkIGxvbmcgcHVkX2FsaWduZWQsIHA0ZF9hbGlnbmVk
LCBwZ2RfYWxpZ25lZDsKKwlzcGlubG9ja190ICpwdGw7CsKgCsKgCXByX2luZm8oIlZhbGlkYXRp
bmcgYXJjaGl0ZWN0dXJlIHBhZ2UgdGFibGUgaGVscGVyc1xuIik7CsKgCXByb3QgPSB2bV9nZXRf
cGFnZV9wcm90KFZNRkxBR1MpOwpAQCAtMzQ0LDcgKzM0Nyw3IEBAIHZvaWQgX19pbml0IGRlYnVn
X3ZtX3BndGFibGUodm9pZCkKwqAJcDRkcCA9IHA0ZF9hbGxvYyhtbSwgcGdkcCwgdmFkZHIpOwrC
oAlwdWRwID0gcHVkX2FsbG9jKG1tLCBwNGRwLCB2YWRkcik7CsKgCXBtZHAgPSBwbWRfYWxsb2Mo
bW0sIHB1ZHAsIHZhZGRyKTsKLQlwdGVwID0gcHRlX2FsbG9jX21hcChtbSwgcG1kcCwgdmFkZHIp
OworCXB0ZXAgPSBwdGVfYWxsb2NfbWFwX2xvY2sobW0sIHBtZHAsIHZhZGRyLCAmcHRsKTsKwqAK
wqAJLyoKwqAJwqAqIFNhdmUgYWxsIHRoZSBwYWdlIHRhYmxlIHBhZ2UgYWRkcmVzc2VzIGFzIHRo
ZSBwYWdlIHRhYmxlCkBAIC0zNzAsNyArMzczLDcgQEAgdm9pZCBfX2luaXQgZGVidWdfdm1fcGd0
YWJsZSh2b2lkKQrCoAlwNGRfY2xlYXJfdGVzdHMobW0sIHA0ZHApOwrCoAlwZ2RfY2xlYXJfdGVz
dHMobW0sIHBnZHApOwrCoAotCXB0ZV91bm1hcChwdGVwKTsKKwlwdGVfdW5tYXBfdW5sb2NrKHB0
ZXAsIHB0bCk7CsKgCsKgCXBtZF9wb3B1bGF0ZV90ZXN0cyhtbSwgcG1kcCwgc2F2ZWRfcHRlcCk7
CsKgCXB1ZF9wb3B1bGF0ZV90ZXN0cyhtbSwgcHVkcCwgc2F2ZWRfcG1kcCk7CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
