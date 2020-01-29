Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D9214C94C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 12:10:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mIwmlUqX5MW3POTCDRaolI6W09N34AEODVxWnZTHuvo=; b=ZQvgDi8MKzdaYp
	St81soXbWR/HkRDiHM1nkQKJIubkcbt4iRUmfoQ8Jac+p217+A1JqFG6G3mQiqHqdc2KLXEoNPUYW
	gS/MqHrFKp50aZSwu9bJVa/jUfsUlWgjTG3n8LY1Cylv+Q9YPuzaquoLtxRtmPsSUnC1LG7bfyst7
	r4/BtuDiN4iPCiOBt17AeJkhiO6EwfA5GxMq9SrPh9RmNWA3/L0MRG2oUI7sNG0BRGstBUXK/Z8we
	J4IkULpaySdxWGG5Bp/DIqhuRL5vGpYg8y1jHpKVDUClC01TTZiXkaW16x2v9L5TQVSV/SKkk4SYb
	w7KmzCeW/F5C5Nb55v6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwlEe-0002XA-Ga; Wed, 29 Jan 2020 11:10:16 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwlEQ-00020I-Dx
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 11:10:04 +0000
Received: by mail-qv1-xf44.google.com with SMTP id dc14so7790742qvb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Jan 2020 03:09:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Rdg0eRE4Rs/tOFVa1nKjmhUlRl2NKOMw55LDI32OSOc=;
 b=VJ8O0yAWe2cXlzCT1mNhPcxqqFeCKhkmfpyAWfq4oYf0VFJ3BC4CHwckKloSIN0EXg
 v5DJKr5FfAbivbt4bmiixvzRDbgAX4zdyDY3Z7zJENEidZcJ7qqrRNPRT7y2J7WlkuAW
 ewW0RwL5VtfuLoAx485pn8lnifxaC15SKUc8607bIEelaurpzyi5k7hkoO7yxuV3yb4d
 hRnFShBFGIfDCfAPvTiAO0yxsNG/bViMXer6WnGqfUy8ySyDKJC0Q4H5WpZ3O51VPBPp
 7I+z1htSl8yn6YxMeGxxXZDeFn0jXFFJZ2cfPzD73Zg0RLbASOFkEZ8dO14ZZO1X4gAp
 ELnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Rdg0eRE4Rs/tOFVa1nKjmhUlRl2NKOMw55LDI32OSOc=;
 b=I8VujJlS3WXbySyfZaLstfmrCOIrqaAVJom5ZjSfeI5ENWTTV+gUY+rVG1MMffy+QS
 L1aNIBA3ipPPaS768NV9Bjm+8lbh+CkVPby7RpkFmvZCA6RLYC+n/6sNtn7W3Ei+AtRs
 z6L8sVPYvkgefCckXBI+bhjjziRehfGZRIPpY/j7mqAQ7llkEN+hr93rmTOPNuesgU1U
 v/J5Gv7ICmbAKwhI/Pm60gcIJfpmkH7CWqD9COD3AGkixzwpUg1oQn/5bce57XdhjC7K
 mdqzTzVtAQyiN9rlmkzs6e12zdQ7yAWt++gBIs0pU00aq0qEMnJxR8jyzqkScyA0QCsV
 PcWw==
X-Gm-Message-State: APjAAAW/8Cnq63yRXeiRVVnEcNQxwLJdY6cTIeAXq9ELszHdTMnF5GIt
 tK0ZL2wP2ckl8td+ZJjyM/r2mg==
X-Google-Smtp-Source: APXvYqwSo4IdEjgBam29nZ7sdiS8q0FjVa1Z465Vm5JMHa3pbBcFWxe+wcLkVFwcg7WF0RMbdVCuCg==
X-Received: by 2002:a0c:9d4f:: with SMTP id n15mr22120161qvf.194.1580296199181; 
 Wed, 29 Jan 2020 03:09:59 -0800 (PST)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id v7sm882184qtk.89.2020.01.29.03.09.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 Jan 2020 03:09:58 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: [PATCH V12] mm/debug: Add tests validating architecture page
 table helpers
From: Qian Cai <cai@lca.pw>
In-Reply-To: <20200129103640.GA668562@arrakis.emea.arm.com>
Date: Wed, 29 Jan 2020 06:09:56 -0500
Message-Id: <50B7EFFE-1FF0-4B16-84A1-D851052B18B4@lca.pw>
References: <20200128174709.GK655507@arrakis.emea.arm.com>
 <69091BA4-18C4-4425-A5E2-31FBE4654AF9@lca.pw>
 <20200129103640.GA668562@arrakis.emea.arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_031002_481328_565ABAAB 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michal Hocko <mhocko@kernel.org>, Linux-MM <linux-mm@kvack.org>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Ingo Molnar <mingo@kernel.org>, linux-s390@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>, Michael Ellerman <mpe@ellerman.id.au>,
 the arch/x86 maintainers <x86@kernel.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Vlastimil Babka <vbabka@suse.cz>, linux-snps-arc@lists.infradead.org,
 Kees Cook <keescook@chromium.org>,
 Anshuman Khandual <Anshuman.Khandual@arm.com>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>, Mark Brown <broonie@kernel.org>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Dave Hansen <dave.hansen@intel.com>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIEphbiAyOSwgMjAyMCwgYXQgNTozNiBBTSwgQ2F0YWxpbiBNYXJpbmFzIDxjYXRhbGlu
Lm1hcmluYXNAYXJtLmNvbT4gd3JvdGU6Cj4gCj4gT24gVHVlLCBKYW4gMjgsIDIwMjAgYXQgMDI6
MDc6MTBQTSAtMDUwMCwgUWlhbiBDYWkgd3JvdGU6Cj4+IE9uIEphbiAyOCwgMjAyMCwgYXQgMTI6
NDcgUE0sIENhdGFsaW4gTWFyaW5hcyA8Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+IHdyb3RlOgo+
Pj4gVGhlIHByaW1hcnkgZ29hbCBoZXJlIGlzIG5vdCBmaW5kaW5nIHJlZ3Jlc3Npb25zIGJ1dCBo
YXZpbmcgY2xlYXJseQo+Pj4gZGVmaW5lZCBzZW1hbnRpY3Mgb2YgdGhlIHBhZ2UgdGFibGUgYWNj
ZXNzb3JzIGFjcm9zcyBhcmNoaXRlY3R1cmVzLiB4ODYKPj4+IGFuZCBhcm02NCBhcmUgYSBnb29k
IHN0YXJ0aW5nIHBvaW50IGFuZCBvdGhlciBhcmNoaXRlY3R1cmVzIHdpbGwgYmUKPj4+IGVuYWJs
ZWQgYXMgdGhleSBhcmUgYWxpZ25lZCB0byB0aGUgc2FtZSBzZW1hbnRpY3MuCj4+IAo+PiBUaGlz
IHN0aWxsIGRvZXMgbm90IGFuc3dlciB0aGUgZnVuZGFtZW50YWwgcXVlc3Rpb24uIElmIHRoaXMg
dGVzdCBpcwo+PiBzaW1wbHkgaW5lZmZpY2llbnQgdG8gZmluZCBidWdzLAo+IAo+IFdobyBzYWlk
IHRoaXMgaXMgaW5lZmZpY2llbnQgKG90aGVyIHRoYW4geW91KT8KCkluZWZmaWNpZW50IG9mIGZp
bmRpbmcgYnVncy4gSXQgc2FpZCBvbmx5IGZvdW5kIGEgYnVnIG9yIHR3byBpbiBpdHMgbGlmZXRp
bWU/Cgo+IAo+PiB3aG8gd2FudHMgdG8gc3BlbmQgdGltZSB0byB1c2UgaXQgcmVndWxhcmx5PyAK
PiAKPiBBcmNoIG1haW50YWluZXJzLCBtbSBtYWludGFpbmVycyBpbnRyb2R1Y2luZyBuZXcgbWFj
cm9zIG9yIGFzc3VtaW5nCj4gY2VydGFpbiBuZXcgc2VtYW50aWNzIG9mIHRoZSBleGlzdGluZyBt
YWNyb3MuCj4gCj4+IElmIHRoaXMgaXMganVzdCBvbmUgb2ZmIHRlc3QgdGhhdCBtYXkgZ2V0IHJ1
bm5pbmcgb25jZSBpbiBhIGZldyB5ZWFycwo+PiAod2hlbiBpbnRyb2R1Y2luZyBhIG5ldyBhcmNo
KSwgaG93IGRvZXMgaXQganVzdGlmeSB0aGUgb25nb2luZyBjb3N0IHRvCj4+IG1haW50YWluIGl0
Pwo+IAo+IFlvdSBhcmUgcmVhbGx5IG1pc3NpbmcgdGhlIHBvaW50LiBJdCdzIG5vdCBvbmx5IGZv
ciBhIG5ldyBhcmNoIGJ1dAo+IGNoYW5nZXMgdG8gZXhpc3RpbmcgYXJjaCBjb2RlLiBBbmQgaWYg
dGhlIGFyY2ggY29kZSBjaHVybiBpbiB0aGlzIGFyZWEKPiBpcyByZWxhdGl2ZWx5IHNtYWxsLCBJ
J2QgZXhwZWN0IGEgc2ltaWxhcmx5IHNtYWxsIGNvc3Qgb2YgbWFpbnRhaW5pbmcKPiB0aGlzIHRl
c3QuCj4gCj4gSWYgeW91IG9ubHkgdHVybiBERUJVR19WTSBvbiBvbmNlIGV2ZXJ5IGZldyB5ZWFy
cywgZG9uJ3QgZ2VuZXJhbGlzZSB0aGlzCj4gdG8gdGhlIHJlc3Qgb2YgdGhlIGtlcm5lbCBkZXZl
bG9wZXJzIChhcyBvdGhlcnMgcG9pbnRlZCBvdXQsIHRoaXMgdGVzdAo+IGlzIGRlZmF1bHQgeSBp
ZiBERUJVR19WTSkuCgpRdWl0ZSB0aGUgb3Bwb3NpdGUsIEkgYW0gcnVubmluZyBERUJVR19WTSBh
bG1vc3QgZGFpbHkgZm9yIHJlZ3Jlc3Npb24Kd29ya2xvYWQgd2hpbGUgSSBmZWx0IHN0cm9uZ2x5
IHRoaXMgdGhpbmcgZG9lcyBub3QgYWRkIGFueSB2YWx1ZSBtaXhpbmcgdGhlcmUuCgpTbywgSSB3
b3VsZCBzdWdnZXN0IHRvIGRlY291cGxlIHRoaXMgYXdheSBmcm9tIERFQlVHX1ZNLCBhbmQgY2xl
YXJseQpkb2N1bWVudCB0aGF0IHRoaXMgdGVzdCBpcyBub3Qgc29tZXRoaW5nIGludGVuZGVkIGZv
ciBhdXRvbWF0ZWQgcmVncmVzc2lvbgp3b3JrbG9hZHMsIHNvIHRob3NlIHBlb3BsZSBkb27igJl0
IG5lZWQgdG8gd2FzdGUgdGltZSBydW5uaW5nIHRoaXMuCgo+IAo+IEFueXdheSwgSSB0aGluayB0
aGF0J3MgYSBwb2ludGxlc3MgZGlzY3Vzc2lvbiwgc28gbm90IGdvaW5nIHRvIHJlcGx5Cj4gZnVy
dGhlciAodW5sZXNzIHlvdSBoYXZlIHRlY2huaWNhbCBjb250ZW50IHRvIGFkZCkuCj4gCj4gLS0g
Cj4gQ2F0YWxpbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
