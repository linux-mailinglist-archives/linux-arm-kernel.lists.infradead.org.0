Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65600A9DA5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 10:59:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L/a/JKGJbKDxSMsPWUn4GhwKCXw88HgK1Uc3hak+xak=; b=ASNhBx390BnB/5
	jgoFwUp2jpfHblPVi0f7pLs6xgHlvtHcluQZ8vZ2y4j9noPW+NP/VydcBehrqCuEuCWNvVZmYOZPT
	n604GgEPyhNNZpwj06YC34iUmtIZDVtaq41M+jMKh6qTyUlgbQwY7BxnXizMXrGJ0FrBIvSvmL2PI
	74SPh0/BRcc9tCWFLudeJo7L2r0iPeWtG7En1k1z0aLQXJ1cCIcGPegzqfQ4Em/7A5b1DHUStuk0D
	X3wiK2M6eOyQdIJY0v04U/AJc5aWT68psuXcD8G1xgeSVcsm7d/bp3/1zN2gej0l29p/v00L/so8I
	EbFqpeoqGjjdshsLfcYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5nbz-0001Cm-O9; Thu, 05 Sep 2019 08:59:27 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5nbm-0001BW-Pz
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 08:59:16 +0000
Received: by mail-ed1-x541.google.com with SMTP id u6so1915354edq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 01:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=SKtJJu4FCFZsJ92b3cW6n8O2xfCEANWfldD9FkzpDzQ=;
 b=R8BlrmFhCk2x1HCIE9OG+MzqwkVVvHT7xE/I4ZOytjMQkYUn6niG46sVFILMlRZ0wa
 hnpRdMnQxL0M6N7DzlsNvJtuHrm2YYjqELC8r/mXNrp4n+j5uoHa6nbZiuvc8wrnT/t6
 4nureBeZq0SanvEKzbmw5Vki4JKtNGpleNIYkZagBCFngBNM3yw6nhahf/tuodmQp0f3
 Y0ruk0kL+Dj3gQQ29z0NBH6NwktGQzVePR1emsKENHFifDwOfLe9idjet5jyzABWjuRX
 f39uHKvkUv+7WUzGyUECMghUmTiVEGNrdHlzcBwe02Kaf8vWGnnCAEW53LJ7sKx8wTFX
 +lTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=SKtJJu4FCFZsJ92b3cW6n8O2xfCEANWfldD9FkzpDzQ=;
 b=rYW6uRX6l5DZ9bARr+2zvbLp3JCVzUO/QMWC8jwVs4E1RqPc82N0F+heR0E2M1f1Cm
 C/cPXlZibhdrUbr2TbK4/Xv2c/WriPASlwV7jq1OKQRHuVRmyQcHNvheFz9Kk6C2ULxK
 gh1EPZJ1TRcec0jhZa61Pnu5yW9quPYHQk44cEX3u0eicG2CEYK6tck1tehJWB4hYFw9
 mU7OkZyyxgPHzCxmS5i6gVy0ujBp0GEsK12cu1m73qE+7bbfCj20+h4XyqdfDJDtv0XK
 VsKdkdCpSO/6OUBd8NlSS9Q+lfTfYshCt6wdG1Dux5Cc/r8qSCpXcuyZmVbJ2H+pJ8to
 ojSQ==
X-Gm-Message-State: APjAAAV7qd/xMWhgdywnV5DVtVWy5gpjpo90OzGpRFt/nN8IFrzaBvKe
 Ji8UGvAIDGTIUFiQC9vbBbG9qg==
X-Google-Smtp-Source: APXvYqwS8JLF/JnkIaUo5JF41+czQxMqyXPCFFoUEhsPXNX+sGdC7T/bBd4BAC8GGRtwPWaIloZ1rA==
X-Received: by 2002:a50:f98c:: with SMTP id q12mr2065158edn.75.1567673952348; 
 Thu, 05 Sep 2019 01:59:12 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id u14sm275438edy.55.2019.09.05.01.59.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 01:59:11 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id C58BF104AE5; Thu,  5 Sep 2019 11:59:10 +0300 (+03)
Date: Thu, 5 Sep 2019 11:59:10 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 1/1] mm/pgtable/debug: Add test validating architecture
 page table helpers
Message-ID: <20190905085910.i6dppgnqi4ple22w@box.shutemov.name>
References: <1567497706-8649-1-git-send-email-anshuman.khandual@arm.com>
 <1567497706-8649-2-git-send-email-anshuman.khandual@arm.com>
 <20190904141950.ykoe3h7b4hcvnysu@box>
 <6d4b989d-8eaa-d26e-6068-4b0e4d7a52f9@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6d4b989d-8eaa-d26e-6068-4b0e4d7a52f9@arm.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_015915_159378_CBFD4570 
X-CRM114-Status: GOOD (  20.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-arm-kernel@lists.infradead.org,
 linux-snps-arc@lists.infradead.org, Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Vlastimil Babka <vbabka@suse.cz>, Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBTZXAgMDUsIDIwMTkgYXQgMDE6NDg6MjdQTSArMDUzMCwgQW5zaHVtYW4gS2hhbmR1
YWwgd3JvdGU6Cj4gPj4gKyNkZWZpbmUgVkFERFJfVEVTVAkoUEdESVJfU0laRSArIFBVRF9TSVpF
ICsgUE1EX1NJWkUgKyBQQUdFX1NJWkUpCj4gPiAKPiA+IFdoYXQgaXMgc3BlY2lhbCBhYm91dCB0
aGlzIGFkZHJlc3M/IEhvdyBkbyB5b3Uga25vdyBpZiBpdCBpcyBub3Qgb2NjdXBpZWQKPiA+IHll
dD8KPiAKPiBXZSBhcmUgY3JlYXRpbmcgdGhlIHBhZ2UgdGFibGUgZnJvbSBzY3JhdGNoIGFmdGVy
IGFsbG9jYXRpbmcgYW4gbW1fc3RydWN0Cj4gZm9yIGEgZ2l2ZW4gcmFuZG9tIHZpcnR1YWwgYWRk
cmVzcyAnVkFERFJfVEVTVCcuIEhlbmNlIG5vdGhpbmcgaXMgb2NjdXBpZWQKPiBqdXN0IHlldC4g
VGhlcmUgaXMgbm90aGluZyBzcGVjaWFsIGFib3V0IHRoaXMgYWRkcmVzcywganVzdCB0aGF0IGl0
IHRyaWVzCj4gdG8gZW5zdXJlIHRoZSBwYWdlIHRhYmxlIGVudHJpZXMgYXJlIGJlaW5nIGNyZWF0
ZWQgd2l0aCBzb21lIG9mZnNldCBmcm9tCj4gYmVnaW5uaW5nIG9mIHJlc3BlY3RpdmUgcGFnZSB0
YWJsZSBwYWdlIGF0IGFsbCBsZXZlbHMgPyBUaGUgaWRlYSBpcyB0bwo+IGhhdmUgYSBtb3JlIHJl
cHJlc2VudGF0aXZlIGZvcm0gb2YgcGFnZSB0YWJsZSBzdHJ1Y3R1cmUgZm9yIHRlc3QuCgpXaHkg
UDREX1NJWkUgaXMgbWlzc2luZz8KCkFyZSB5b3Ugc3VyZSBpdCB3aWxsIG5vdCBsYW5kIGludG8g
a2VybmVsIGFkZHJlc3Mgc3BhY2Ugb24gYW55IGFyY2g/CgpJIHRoaW5rIG1vcmUgcm9idXN0IHdh
eSB0byBkZWFsIHdpdGggdGhpcyB3b3VsZCBiZSB1c2luZwpnZXRfdW5tYXBwZWRfYXJlYSgpIGlu
c3RlYWQgb2YgZml4ZWQgYWRkcmVzcy4KCj4gVGhpcyBtYWtlcyBzZW5zZSBmb3IgcnVudGltZSBj
YXNlcyBidXQgdGhlcmUgaXMgYSBwcm9ibGVtIGhlcmUuCj4gCj4gT24gYXJtNjQsIHBnZF9wb3B1
bGF0ZSgpIHdoaWNoIHRha2VzIChwdWRfdCAqKSBhcyBsYXN0IGFyZ3VtZW50IGluc3RlYWQgb2YK
PiAocDRkX3QgKikgd2lsbCBmYWlsIHRvIGJ1aWxkIHdoZW4gbm90IHdyYXBwZWQgaW4gIV9fUEFH
RVRBQkxFX1A0RF9GT0xERUQKPiBvbiBjZXJ0YWluIGNvbmZpZ3VyYXRpb25zLgo+IAo+IC4vYXJj
aC9hcm02NC9pbmNsdWRlL2FzbS9wZ2FsbG9jLmg6ODE6NzU6IG5vdGU6Cj4gZXhwZWN0ZWQg4oCY
cHVkX3QgKuKAmSB7YWthIOKAmHN0cnVjdCA8YW5vbnltb3VzPiAq4oCZfQo+IGJ1dCBhcmd1bWVu
dCBpcyBvZiB0eXBlIOKAmHBnZF90ICrigJkge2FrYSDigJhzdHJ1Y3QgPGFub255bW91cz4gKuKA
mX0KPiBzdGF0aWMgaW5saW5lIHZvaWQgcGdkX3BvcHVsYXRlKHN0cnVjdCBtbV9zdHJ1Y3QgKm1t
LCBwZ2RfdCAqcGdkcCwgcHVkX3QgKnB1ZHApCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH5+fn5+fn5efn5+Cj4gV29u
ZGVyaW5nIGlmIHRoaXMgaXMgc29tZXRoaW5nIHRvIGJlIGZpeGVkIG9uIGFybTY0IG9yIGl0cyBt
b3JlIGdlbmVyYWwKPiBwcm9ibGVtLiBXaWxsIGxvb2sgaW50byB0aGlzIGZ1cnRoZXIuCgpJIHRo
aW5rIHlvdSBuZWVkIHdyYXAgdGhpcyBpbnRvICNpZm5kZWYgX19BUkNIX0hBU181TEVWRUxfSEFD
Sy4KCj4gPj4gKwlwbWRfcG9wdWxhdGVfdGVzdHMobW0sIHBtZHAsIChwZ3RhYmxlX3QpIHBhZ2Up
Owo+ID4gCj4gPiBUaGlzIGlzIG5vdCBjb3JyZWN0IGZvciBhcmNoaXRlY3R1cmVzIHRoYXQgZGVm
aW5lcyBwZ3RhYmxlX3QgYXMgcHRlX3QKPiA+IHBvaW50ZXIsIG5vdCBzdHJ1Y3QgcGFnZSBwb2lu
dGVyLgo+IAo+IFJpZ2h0LCBhIGdyZXAgb24gdGhlIHNvdXJjZSBjb25maXJtcyB0aGF0Lgo+IAo+
IFRoZXNlIHBsYXRmb3JtcyBkZWZpbmUgcGd0YWJsZV90IGFzIHN0cnVjdCBwYWdlICoKPiAKPiBh
cmNoL2FscGhhL2luY2x1ZGUvYXNtL3BhZ2UuaDp0eXBlZGVmIHN0cnVjdCBwYWdlICpwZ3RhYmxl
X3Q7Cj4gYXJjaC9hcm0vaW5jbHVkZS9hc20vcGFnZS5oOnR5cGVkZWYgc3RydWN0IHBhZ2UgKnBn
dGFibGVfdDsKPiBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL3BhZ2UuaDp0eXBlZGVmIHN0cnVjdCBw
YWdlICpwZ3RhYmxlX3Q7Cj4gYXJjaC9jc2t5L2luY2x1ZGUvYXNtL3BhZ2UuaDp0eXBlZGVmIHN0
cnVjdCBwYWdlICpwZ3RhYmxlX3Q7Cj4gYXJjaC9oZXhhZ29uL2luY2x1ZGUvYXNtL3BhZ2UuaDp0
eXBlZGVmIHN0cnVjdCBwYWdlICpwZ3RhYmxlX3Q7Cj4gYXJjaC9pYTY0L2luY2x1ZGUvYXNtL3Bh
Z2UuaDogIHR5cGVkZWYgc3RydWN0IHBhZ2UgKnBndGFibGVfdDsKPiBhcmNoL2lhNjQvaW5jbHVk
ZS9hc20vcGFnZS5oOiAgICB0eXBlZGVmIHN0cnVjdCBwYWdlICpwZ3RhYmxlX3Q7Cj4gYXJjaC9t
NjhrL2luY2x1ZGUvYXNtL3BhZ2UuaDp0eXBlZGVmIHN0cnVjdCBwYWdlICpwZ3RhYmxlX3Q7Cj4g
YXJjaC9taWNyb2JsYXplL2luY2x1ZGUvYXNtL3BhZ2UuaDp0eXBlZGVmIHN0cnVjdCBwYWdlICpw
Z3RhYmxlX3Q7Cj4gYXJjaC9taXBzL2luY2x1ZGUvYXNtL3BhZ2UuaDp0eXBlZGVmIHN0cnVjdCBw
YWdlICpwZ3RhYmxlX3Q7Cj4gYXJjaC9uZHMzMi9pbmNsdWRlL2FzbS9wYWdlLmg6dHlwZWRlZiBz
dHJ1Y3QgcGFnZSAqcGd0YWJsZV90Owo+IGFyY2gvbmlvczIvaW5jbHVkZS9hc20vcGFnZS5oOnR5
cGVkZWYgc3RydWN0IHBhZ2UgKnBndGFibGVfdDsKPiBhcmNoL29wZW5yaXNjL2luY2x1ZGUvYXNt
L3BhZ2UuaDp0eXBlZGVmIHN0cnVjdCBwYWdlICpwZ3RhYmxlX3Q7Cj4gYXJjaC9wYXJpc2MvaW5j
bHVkZS9hc20vcGFnZS5oOnR5cGVkZWYgc3RydWN0IHBhZ2UgKnBndGFibGVfdDsKPiBhcmNoL3Jp
c2N2L2luY2x1ZGUvYXNtL3BhZ2UuaDp0eXBlZGVmIHN0cnVjdCBwYWdlICpwZ3RhYmxlX3Q7Cj4g
YXJjaC9zaC9pbmNsdWRlL2FzbS9wYWdlLmg6dHlwZWRlZiBzdHJ1Y3QgcGFnZSAqcGd0YWJsZV90
Owo+IGFyY2gvc3BhcmMvaW5jbHVkZS9hc20vcGFnZV8zMi5oOnR5cGVkZWYgc3RydWN0IHBhZ2Ug
KnBndGFibGVfdDsKPiBhcmNoL3VtL2luY2x1ZGUvYXNtL3BhZ2UuaDp0eXBlZGVmIHN0cnVjdCBw
YWdlICpwZ3RhYmxlX3Q7Cj4gYXJjaC91bmljb3JlMzIvaW5jbHVkZS9hc20vcGFnZS5oOnR5cGVk
ZWYgc3RydWN0IHBhZ2UgKnBndGFibGVfdDsKPiBhcmNoL3g4Ni9pbmNsdWRlL2FzbS9wZ3RhYmxl
X3R5cGVzLmg6dHlwZWRlZiBzdHJ1Y3QgcGFnZSAqcGd0YWJsZV90Owo+IGFyY2gveHRlbnNhL2lu
Y2x1ZGUvYXNtL3BhZ2UuaDp0eXBlZGVmIHN0cnVjdCBwYWdlICpwZ3RhYmxlX3Q7Cj4gCj4gVGhl
c2UgcGxhdGZvcm1zIGRlZmluZSBwZ3RhYmxlX3QgYXMgcHRlX3QgKgo+IAo+IGFyY2gvYXJjL2lu
Y2x1ZGUvYXNtL3BhZ2UuaDp0eXBlZGVmIHB0ZV90ICogcGd0YWJsZV90Owo+IGFyY2gvcG93ZXJw
Yy9pbmNsdWRlL2FzbS9tbXUuaDp0eXBlZGVmIHB0ZV90ICpwZ3RhYmxlX3Q7Cj4gYXJjaC9zMzkw
L2luY2x1ZGUvYXNtL3BhZ2UuaDp0eXBlZGVmIHB0ZV90ICpwZ3RhYmxlX3Q7Cj4gYXJjaC9zcGFy
Yy9pbmNsdWRlL2FzbS9wYWdlXzY0Lmg6dHlwZWRlZiBwdGVfdCAqcGd0YWJsZV90Owo+IAo+IFNo
b3VsZCB3ZSBuZWVkIGhhdmUgdHdvIHBtZF9wb3B1bGF0ZV90ZXN0cygpIGRlZmluaXRpb25zIHdp
dGgKPiBkaWZmZXJlbnQgYXJndW1lbnRzIChzdHJ1Y3QgcGFnZSBwb2ludGVyIG9yIHB0ZV90IHBv
aW50ZXIpIGFuZCB0aGVuCj4gY2FsbCBlaXRoZXIgb25lIGFmdGVyIGRldGVjdGluZyB0aGUgZ2l2
ZW4gcGxhdGZvcm0gPwoKVXNlIHB0ZV9hbGxvY19vbmUoKSBpbnN0ZWFkIG9mIGFsbG9jX21hcHBl
ZF9wYWdlKCkgdG8gYWxsb2NhdGUgdGhlIHBhZ2UKdGFibGUuCgo+ID4+ICsJcHVkX3BvcHVsYXRl
X3Rlc3RzKG1tLCBwdWRwLCBwbWRwKTsKPiA+PiArCXA0ZF9wb3B1bGF0ZV90ZXN0cyhtbSwgcDRk
cCwgcHVkcCk7Cj4gPj4gKwlwZ2RfcG9wdWxhdGVfdGVzdHMobW0sIHBnZHAsIHA0ZHApOwo+ID4g
Cj4gPiBUaGlzIGlzIHdyb25nLiBBbGwgcD9kcCBwb2ludHMgdG8gdGhlIHNlY29uZCBlbnRyeSBp
biBwYWdlIHRhYmxlIGVudHJ5Lgo+ID4gVGhpcyBpcyBub3QgdmFsaWQgcG9pbnRlciBmb3IgcGFn
ZSB0YWJsZSBhbmQgdHJpZ2dlcnMgcD9kX2JhZCgpIG9uIHg4Ni4KPiAKPiBZZWFoIHRoZXNlIGFy
ZSBzZWNvbmQgZW50cmllcyBiZWNhdXNlIG9mIHRoZSB3YXkgd2UgY3JlYXRlIHRoZSBwYWdlIHRh
YmxlLgo+IEJ1dCBJIGd1ZXNzIGl0cyBhcHBsaWNhYmxlIG9ubHkgdG8gdGhlIHNlY29uZCBhcmd1
bWVudCBpbiBhbGwgdGhlc2UgYWJvdmUKPiBjYXNlcyBiZWNhdXNlIHRoZSBmaXJzdCBhcmd1bWVu
dCBjYW4gYmUgYW55IHZhbGlkIGVudHJ5IG9uIHByZXZpb3VzIHBhZ2UKPiB0YWJsZSBsZXZlbC4K
ClllczoKCkBAIC0zOTcsOSArMzk2LDkgQEAgc3RhdGljIGludCBfX2luaXQgYXJjaF9wZ3RhYmxl
X3Rlc3RzX2luaXQodm9pZCkKIAlwZ2RfY2xlYXJfdGVzdHMocGdkcCk7CiAKIAlwbWRfcG9wdWxh
dGVfdGVzdHMobW0sIHBtZHAsIChwZ3RhYmxlX3QpIHBhZ2UpOwotCXB1ZF9wb3B1bGF0ZV90ZXN0
cyhtbSwgcHVkcCwgcG1kcCk7Ci0JcDRkX3BvcHVsYXRlX3Rlc3RzKG1tLCBwNGRwLCBwdWRwKTsK
LQlwZ2RfcG9wdWxhdGVfdGVzdHMobW0sIHBnZHAsIHA0ZHApOworCXB1ZF9wb3B1bGF0ZV90ZXN0
cyhtbSwgcHVkcCwgc2F2ZWRfcG1kcCk7CisJcDRkX3BvcHVsYXRlX3Rlc3RzKG1tLCBwNGRwLCBz
YXZlZF9wdWRwKTsKKwlwZ2RfcG9wdWxhdGVfdGVzdHMobW0sIHBnZHAsIHNhdmVkX3A0ZHApOwog
CiAJcDRkX2ZyZWUobW0sIHNhdmVkX3A0ZHApOwogCXB1ZF9mcmVlKG1tLCBzYXZlZF9wdWRwKTsK
Ci0tIAogS2lyaWxsIEEuIFNodXRlbW92CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
