Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EAE514AF2B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 06:48:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xhX4UecMB19j9lxj7waUgA9cRk9zi5JEyrFcQeY86eo=; b=s7QN8/+fyRbCJQ
	EDzmck8whZw1rSYqCbi0DKgLKxeJFrkZ8X3Eq8XXzhQd/fIMR1riireuiZTeLz84fCrkwDl28Y5Ue
	xuYLKHcfK1LwS0cMNihPBzTQgAHbnoOS3xSUWVpSTfiED/suNys25Qm2PStblG5Aefpv+f3bMtu4O
	OWAXCSy9QYpwhUo+9GLBYHP5JZYe7Yfh7AArP88v3t8y5pIIIyU1cgsRFwJxKYXFmUfhI+G7SjPa7
	K1t6axZ4cclUX4FPI1vSzEvA8+hII1i3E2+Lcw67z1IydNeHUT9pbWF0aFx1vLR+Re35un+889rAa
	BK7YGFwoMKCpkDnwIWTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwJjv-0000yU-Cg; Tue, 28 Jan 2020 05:48:43 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwJjl-0000xY-5W
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 05:48:34 +0000
Received: by mail-qk1-x742.google.com with SMTP id x1so12198890qkl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 21:48:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=LCR4yoPyKXUQ+V6Rzx8Vr1pGJBzG7ybCO5xmGhWVO2E=;
 b=Hma1sjKpCAmCNDeQeafPYa2ae6jBDESB1PCm6wfy4m1d7M9+BWh8FVkywYWY7ykCiy
 SzQx25lgeC+4duHJWx6KqUIh8QXTw8di5MeaGwQuHHn89Nhc7uYjdWvvsMbKeA7vFD83
 eZ0ttxqv+O0UBv0Q1ELfjNP83to7CnSAWkh7s2C27oDB+u7jHIZRBxLZHGidOdsQf1JK
 mEEo4/yiVKjxGyBlmRHpRnDqvkuHhNTxRoPqy1Zumzpfc60DAz3G+S+hPw5+FUChoT/q
 bS0YqS6g/Diq0QYdhlCFXqUUyepH5ufSRHLX0WMtxLjOyn6wC8W9mPq32swU9Z657Mb6
 aYdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=LCR4yoPyKXUQ+V6Rzx8Vr1pGJBzG7ybCO5xmGhWVO2E=;
 b=fZJyAJzCGfi/Tn/WneDcGWyHUA0AZJQoTLFo1lAfOKiYfJHtUKXfXMl8qe09Vz8aMy
 P+zVYWZaKtxBzMiEotzG+VEP0gy7DCiaN7lOT9ffGLjlAd2MPVCtw4X1pheXnLzg74am
 1oNzY5kPREjFJgS27e/k/qqLOP3CFTqkHvaE9dS4R4xOJjDz0+ppRACBzsw8bDypTV+z
 C33Lal0HIdc27fiT7pvr2KF5EvfXbf8ovh/HiwNRQv3Ao0D8Z3ZpcDxiKZvjAuT5NfjG
 AmnjLvkzI4NpjKB5GJ84WAc+psUMqjRgsrWoBRkYhvkQe7jbDq1LI0hzM1UE3vBX+ws8
 JshQ==
X-Gm-Message-State: APjAAAWg0ZXaeztaqpsxPvf1th8GvuER7C7PpYrGsovs4fBszP+p3HOW
 YxTvPQwdR0Lu4xRmSTR1fcMyJw==
X-Google-Smtp-Source: APXvYqwn3oHOOTfkm4bMswvjR/8+st1VKZNpzuQd0q1CmHzfURBt8o3+PL4pjZF1Mk5vBV26vMgvyQ==
X-Received: by 2002:ae9:edc8:: with SMTP id
 c191mr20758894qkg.227.1580190511462; 
 Mon, 27 Jan 2020 21:48:31 -0800 (PST)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id 8sm11519536qkm.92.2020.01.27.21.48.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Jan 2020 21:48:30 -0800 (PST)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH V12] mm/debug: Add tests validating architecture page
 table helpers
Date: Tue, 28 Jan 2020 00:48:30 -0500
Message-Id: <EE5B936C-121E-4322-A285-603D82D59B3A@lca.pw>
References: <012158b7-a40e-050f-cd1b-d6ce7faf042f@arm.com>
In-Reply-To: <012158b7-a40e-050f-cd1b-d6ce7faf042f@arm.com>
To: Anshuman Khandual <Anshuman.Khandual@arm.com>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_214833_204372_A24A5C6F 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Ingo Molnar <mingo@kernel.org>, Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
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

Cgo+IE9uIEphbiAyNywgMjAyMCwgYXQgMTE6NTggUE0sIEFuc2h1bWFuIEtoYW5kdWFsIDxBbnNo
dW1hbi5LaGFuZHVhbEBhcm0uY29tPiB3cm90ZToKPiAKPiBBcyBJIGhhZCBtZW50aW9uZWQgYmVm
b3JlLCB0aGUgdGVzdCBhdHRlbXB0cyB0byBmb3JtYWxpemUgcGFnZSB0YWJsZSBoZWxwZXIgc2Vt
YW50aWNzCj4gYXMgZXhwZWN0ZWQgZnJvbSBnZW5lcmljIE1NIGNvZGUgcGF0aHMgYW5kIGludGVu
ZCB0byBjYXRjaCBkZXZpYXRpb25zIHdoZW4gZW5hYmxlZCBvbgo+IGEgZ2l2ZW4gcGxhdGZvcm0u
IEhvdyBlbHNlIHNob3VsZCB3ZSB0ZXN0IHNlbWFudGljcyBlcnJvcnMgb3RoZXJ3aXNlID8gVGhl
cmUgYXJlIHBhc3QKPiBleGFtcGxlcyBvZiB1c2VmdWxuZXNzIGZvciB0aGlzIHByb2NlZHVyZSBv
biBhcm02NCBhbmQgb24gczM5MC4gSSBhbSB3b25kZXJpbmcgaG93Cj4gZWxzZSB0byBwcm92ZSB0
aGUgdXNlZnVsbmVzcyBvZiBhIGRlYnVnIGZlYXR1cmUgaWYgdGhlc2UgcmVmZXJlbmNlcyBhcmUg
bm90IGVub3VnaC4KCk5vdCBzYXlpbmcgaXQgd2lsbCBub3QgYmUgdXNlZnVsLiBBcyB5b3UgbWVu
dGlvbmVkIGl0IGFjdHVhbGx5IGZvdW5kIGEgYnVnIG9yIHR3byBpbiB0aGUgcGFzdC4gVGhlIHBy
b2JsZW0gaXMgdGhhdCB0aGVyZSBpcyBhbHdheXMgYSBjb3N0IHRvIG1haW50YWluIHNvbWV0aGlu
ZyBsaWtlIHRoaXMsIGFuZCBub2JvZHkga25ldyBob3cgdGhpbmdzIGNvdWxkIGJlIGJyb2tlbiBl
dmVuIGZvciB0aGUgaXNvbGF0ZWQgY29kZSB5b3UgbWVudGlvbmVkIGluIHRoZSBmdXR1cmUgZ2l2
ZW4gaG93IGNvbXBsaWNhdGVkIHRoZSBrZXJuZWwgY29kZSBiYXNlIGlzLiBJIGFtIG5vdCBzbyBw
b3NpdGl2ZSB0aGF0IG1hbnkgZGV2ZWxvcGVycyB3b3VsZCBlbmFibGUgdGhpcyBkZWJ1ZyBmZWF0
dXJlIGFuZCB1c2UgaXQgb24gYSByZWd1bGFyIGJhc2lzIGZyb20gdGhlIGluZm9ybWF0aW9uIHlv
dSBnYXZlIHNvIGZhci4gCgpPbiB0aGUgb3RoZXIgaGFuZCwgaXQgbWlnaHQganVzdCBiZSBnb29k
IGF0IG1haW50YWluaW5nIHRoaXMgdGhpbmcgb3V0IG9mIHRyZWUgYnkgeW91cnNlbGYgYW55d2F5
LCBiZWNhdXNlIGlmIHRoZXJlIGlzbuKAmXQgZ29pbmcgdG8gYmUgdXNlZCBieSBtYW55IGRldmVs
b3BlcnMsIGZldyBwZW9wbGUgaXMgZ29pbmcgdG8gY29udHJpYnV0ZSB0byB0aGlzIGFuZCBldmVu
IG5vdGljZWQgd2hlbiBpdCBpcyBicm9rZW4uIFdoYXTigJlzIHRoZSBwb2ludCBvZiBnZXR0aW5n
IHRoaXMgbWVyZ2VkIGFwYXJ0IGZyb20gYmVpbmcgZ2V0dGluZyBzb21lIG1lYW5pbmdsZXNzIGNy
ZWRpdHM/Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
