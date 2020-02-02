Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A82EA14FC50
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 09:31:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rbgKfsOm5ztZGp417lDv4dFZ3rEmWBRcfMj4oU5BIt8=; b=Re/KyFiStgEYuc4xY6unKVMHB
	SdQ+uugRar1YO0KQmL9c4XOy1gk9J0WLv1A4Z/5vKEZBo7AZryYx6VWDrCvbl+MpugxWxdsI5zqVS
	BEu5spu+rCjqUcRMe4W/FIeRqeaF7+ySKfzpxRiJbQu/p3pHnPW52gYFL5z3+W449JtMEXZynO83a
	um663eEtvPxfY+1Ik5tWyE+VrKyyxdnfKjbjyPIK4KhZo4+BBof7d2m8RoJ47ogZ9Uu9CKSHkBFVb
	VtVR0G5mqQBYnCwzkVsR+6zIhweDml4r2C7JVguWilXmFZB85/5mdKXfX00OXs4ZlXHaBDx2MdtYq
	kV/DNOlfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyAfR-0007vu-C8; Sun, 02 Feb 2020 08:31:45 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyAfI-0007uZ-Sp; Sun, 02 Feb 2020 08:31:38 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 489PLc2Pfyz9tyWF;
 Sun,  2 Feb 2020 09:31:20 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=jxSd4bcB; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id 0yWRy2TLi9QC; Sun,  2 Feb 2020 09:31:20 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 489PLc0zVpz9tyWB;
 Sun,  2 Feb 2020 09:31:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1580632280; bh=gJ+YBiU1siNA6yw0ERrSRXytsUyJ6J4mmY1g8irtvMg=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=jxSd4bcBMPwDDkQQtltYvbDM7RjmY7wn3YHePmJyrQoSpGxb+srr+7WWVT07acbk4
 Gd8wx/ElVf48v1NQ7kacblPWNxOSr0bIjH1lQW4QiWnAuYKH9BZIwizDmpyvIglx32
 bf4U9cZQC+HCcZh0MgO0YttEmPTxX2H/LjarVNYo=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id E45E88B762;
 Sun,  2 Feb 2020 09:31:22 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id wqc16BLAbHuO; Sun,  2 Feb 2020 09:31:22 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id A80498B752;
 Sun,  2 Feb 2020 09:31:20 +0100 (CET)
Subject: Re: [PATCH V12] mm/debug: Add tests validating architecture page
 table helpers
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <1580174873-18117-1-git-send-email-anshuman.khandual@arm.com>
 <68ed6488-aa25-ab41-8da6-f0ddeb15d52b@c-s.fr>
 <49754f74-53a7-0e4a-bb16-53617f8c902c@arm.com>
 <473d8198-3ac4-af3b-e2ec-c0698a3565d3@c-s.fr>
 <ad5ad414-3524-2efa-df16-1ee357e6e2e4@arm.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <e1e046d7-bf1d-eaec-1d0b-fe056b83b84c@c-s.fr>
Date: Sun, 2 Feb 2020 09:31:18 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <ad5ad414-3524-2efa-df16-1ee357e6e2e4@arm.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_003137_225559_6413E58A 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michal Hocko <mhocko@kernel.org>, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, Ingo Molnar <mingo@kernel.org>,
 Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 linux-arm-kernel@lists.infradead.org,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAwMi8wMi8yMDIwIMOgIDA4OjE4LCBBbnNodW1hbiBLaGFuZHVhbCBhIMOpY3JpdMKgOgo+
IE9uIDAxLzMwLzIwMjAgMDc6NDMgUE0sIENocmlzdG9waGUgTGVyb3kgd3JvdGU6Cj4+Cj4+Cj4+
IExlIDMwLzAxLzIwMjAgw6AgMTQ6MDQsIEFuc2h1bWFuIEtoYW5kdWFsIGEgw6ljcml0wqA6Cj4+
Pgo+Pj4gT24gMDEvMjgvMjAyMCAxMDozNSBQTSwgQ2hyaXN0b3BoZSBMZXJveSB3cm90ZToKPj4K
Pj4+Cj4+Pj4gSSB0aGluayB3ZSBjb3VsZCBtYWtlIGl0IHN0YW5kYWxvbmUgYW5kICdkZWZhdWx0
IHkgaWYgREVCVUdfVk0nIGluc3RlYWQuCj4+Pgo+Pj4gV2hpY2ggd2lsbCB5aWVsZCB0aGUgc2Ft
ZSByZXN1bHQgbGlrZSBiZWZvcmUgYnV0IGluIGEgZGlmZmVyZW50IHdheS4gQnV0Cj4+PiB5ZXMs
IHRoaXMgdGVzdCBjb3VsZCBnbyBhYm91dCBlaXRoZXIgd2F5IGJ1dCB1bmxlc3MgdGhlcmUgaXMg
YSBnb29kIGVub3VnaAo+Pj4gcmVhc29uIHdoeSBjaGFuZ2UgdGhlIGN1cnJlbnQgb25lLgo+Pgo+
PiBJIHRoaW5rIGlmIHdlIHdhbnQgcGVvcGxlIHRvIHJlYWxseSB1c2UgaXQgb24gb3RoZXIgYXJj
aGl0ZWN0dXJlcyBpdCBtdXN0IGJlIHBvc3NpYmxlIHRvIGFjdGl2YXRlIGl0IHdpdGhvdXQgaGF2
aW5nIHRvIG1vZGlmeSBLY29uZmlnLiBPdGhlcndpc2UgcGVvcGxlIHdvbid0IGV2ZW4ga25vdyB0
aGUgdGVzdCBleGlzdHMgYW5kIHRoZSBhcmNoaXRlY3R1cmUgZmFpbHMgdGhlIHRlc3QuCj4+Cj4+
IFRoZSBwdXJwb3NlIG9mIGEgdGVzdCBzdWl0ZSBpcyB0byBkZXRlY3QgYnVncy4gSWYgeW91IGNh
bid0IHJ1biB0aGUgdGVzdCB1bnRpbCB5b3UgaGF2ZSBmaXhlZCB0aGUgYnVncywgSSBndWVzcyBu
b2JvZHkgd2lsbCBldmVyIGRldGVjdCB0aGUgYnVncyBhbmQgdGhleSB3aWxsIG5ldmVyIGJlIGZp
eGVkLgo+Pgo+PiBTbyBJIHRoaW5rOgo+PiAtIHRoZSB0ZXN0IHNob3VsZCBiZSAnZGVmYXVsdCB5
JyB3aGVuIEFSQ0hfSEFTX0RFQlVHX1ZNX1BHVEFCTEUgaXMgc2VsZWN0ZWQKPj4gLSB0aGUgdGVz
dCBzaG91bGQgYmUgJ2RlZmF1bHQgbicgd2hlbiBBUkNIX0hBU19ERUJVR19WTV9QR1RBQkxFIGlz
IG5vdCBzZWxlY3RlZCwgYW5kIGl0IHNob3VsZCBiZSB1c2VyIHNlbGVjdGFibGUgaWYgRVhQRVJU
IGlzIHNlbGVjdGVkLgo+Pgo+PiBTb21ldGhpbmcgbGlrZToKPj4KPj4gY29uZmlnIERFQlVHX1ZN
X1BHVEFCTEUKPj4gIMKgwqDCoCBib29sICJEZWJ1ZyBhcmNoIHBhZ2UgdGFibGUgZm9yIHNlbWFu
dGljcyBjb21wbGlhbmNlIiBpZiBBUkNIX0hBU19ERUJVR19WTV9QR1RBQkxFIHx8IEVYUEVSVAo+
PiAgwqDCoMKgIGRlcGVuZHMgb24gTU1VCj4gCj4gKEFSQ0hfSEFTX0RFQlVHX1ZNX1BHVEFCTEUg
fHwgRVhQRVJUKSBiZSBtb3ZlZCBhbG9uZyBzaWRlIE1NVSBvbiB0aGUgc2FtZSBsaW5lID8KClll
cyBjb3VsZCBhbHNvIGdvIGFsb25nIHNpZGUgTU1VLCBvciBjb3VsZCBiZSBhIGRlcGVuZCBieSBp
dHNlbGY6CglkZXBlbmRzIG9uIEFSQ0hfSEFTX0RFQlVHX1ZNX1BHVEFCTEUgfHwgRVhQRVJUCgo+
IAo+PiAgwqDCoMKgIGRlZmF1bHQgJ24nIGlmICFBUkNIX0hBU19ERUJVR19WTV9QR1RBQkxFCj4+
ICDCoMKgwqAgZGVmYXVsdCAneScgaWYgREVCVUdfVk0KPiAKPiBUaGlzIGxvb2tzIGdvb2QsIGF0
IGxlYXN0IHVudGlsIHdlIGdldCBhbGwgcGxhdGZvcm1zIGVuYWJsZWQuIFdpbGwgZG8gYWxsIHRo
ZXNlCj4gY2hhbmdlcyBhbG9uZyB3aXRoIHMzOTAgZW5hYmxlbWVudCBhbmQgcmUtc3Bpbi4KCkNo
cmlzdG9waGUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
