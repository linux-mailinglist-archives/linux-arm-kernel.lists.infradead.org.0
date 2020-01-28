Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0E514ADE2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 03:12:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cPpobm1FtcMTNWfhfkQjoWuR76VOcJkXxklmen86Tbg=; b=dZbLpDuUevGKt/
	lud6oAPmP3f74sH/DF2ua9Geo9Sm6J9jbBolCT4PLcqQXqokPZbpLxvykBcaSrtgpElDK9XgZRxpk
	9Zej1r+fyW4DaH+/bVIHXuFhlFG8g+2Yru2l2qqeI5DWn6kpjR/wF3yY4eLr1iTQgQ1RdH5yE5OhU
	ccXj+gMEdndSpiwjo2IuAun6J/QDM0kbgChxTyX3YJ9xHCbAGbKOt12YKOLE9bwMP4ULl3XLmUpjC
	Zfg9ogtiF+VGUZIBIv++W8ztKWbp+WLBIG9TfH/I3mI+Ka7Ml6XfsJa9r+492s53XNayQoEIk/aLj
	V+d/nq8ZldOe6QMRIFNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwGMJ-0007sA-Q5; Tue, 28 Jan 2020 02:12:07 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwGM9-0007rR-1Q
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 02:11:58 +0000
Received: by mail-qv1-xf42.google.com with SMTP id x1so5529459qvr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 18:11:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=7Y+cJY1xhd0yBpcec7AzD+9evfVDrwqprX0erT9gNQ8=;
 b=jZmBH73pillRBQpbX84TZ57nVUbP8l/pwzyrT6F1TLbL143seIWhzMHM+f433HkTJ5
 4+74y+cXEGlf05IjEqB0rGqFVcscYw+GLhSFsx8WaySmYsTRfGWpPzerjlys6mf9W6z9
 7MQu28uGR+vExcu4XcFzxZsCEsEyIZnW5XYihpKw20TjtS/g7K7vcnSmLO9Y2I2ACMbR
 UKd7mEwngqjuWYnzl9qMnEhgnX2KVdsQpg9XPqLIZZY/9EZaReISvH0tgX5LHWCxTzuH
 Sdb0djgaeTc7Y2XT2pWCZ+vec+pYHc73GLTjZ8LH4FVsFHxU1dJtwXiD8faH/K6Piqjx
 Qz+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=7Y+cJY1xhd0yBpcec7AzD+9evfVDrwqprX0erT9gNQ8=;
 b=FnQlMqVWGRtHtp3onXiK2Iw5IaEuA/rbZBAHMLD6PMlSs/iMJ2e/j92AVHtxx4H+NA
 HCalK111+14gl52HW7pitJwrC9OyvAVXffUlXzLdxkE8Re2DcDFDEGgVB5C3c8A7Qeb/
 xva02S3qlbb4Oix9VW2pMc8BdaakXxEC7SbYYWH/FlxLmEsDFwnozUXgpUDEH3rhpTxN
 7c19bycZnbrW1Z1xBv6vtFMSgslw0ow1YOW8xJAHkXNFwr1UfMy8wvH620jCkF9PgQsK
 nf7Yl90LKEjpjfUI9uf66c2oVE2jglBftRyEEsWBEMxWTPMVyFoyRhCTnxwO+OPZQOvk
 RIrw==
X-Gm-Message-State: APjAAAW+yNjomB/vY0EBl05OomeO9m7skxj+AtEnVqJNHzLlIY0CJkwf
 nYhbk8KMweTuA34AuyTPuHezUg==
X-Google-Smtp-Source: APXvYqzg/cYWhjYHl3Ki3ZAih+ex/42KJTx6ZAw8WelCuco+qFvVUewpgAxMMsdmClIjS/CcngZCgg==
X-Received: by 2002:a05:6214:9d2:: with SMTP id
 dp18mr19624941qvb.98.1580177515237; 
 Mon, 27 Jan 2020 18:11:55 -0800 (PST)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id m21sm11036189qka.117.2020.01.27.18.11.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Jan 2020 18:11:54 -0800 (PST)
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH V12] mm/debug: Add tests validating architecture page
 table helpers
Date: Mon, 27 Jan 2020 21:11:53 -0500
Message-Id: <14882A91-17DE-4ABD-ABF2-08E7CCEDF660@lca.pw>
References: <1580174873-18117-1-git-send-email-anshuman.khandual@arm.com>
In-Reply-To: <1580174873-18117-1-git-send-email-anshuman.khandual@arm.com>
To: Anshuman Khandual <Anshuman.Khandual@arm.com>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_181157_122168_C61C01F3 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 linux-mm@kvack.org, Dave Hansen <dave.hansen@intel.com>,
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

Cgo+IE9uIEphbiAyNywgMjAyMCwgYXQgODoyOCBQTSwgQW5zaHVtYW4gS2hhbmR1YWwgPEFuc2h1
bWFuLktoYW5kdWFsQGFybS5jb20+IHdyb3RlOgo+IAo+IFRoaXMgYWRkcyB0ZXN0cyB3aGljaCB3
aWxsIHZhbGlkYXRlIGFyY2hpdGVjdHVyZSBwYWdlIHRhYmxlIGhlbHBlcnMgYW5kCj4gb3RoZXIg
YWNjZXNzb3JzIGluIHRoZWlyIGNvbXBsaWFuY2Ugd2l0aCBleHBlY3RlZCBnZW5lcmljIE1NIHNl
bWFudGljcy4KPiBUaGlzIHdpbGwgaGVscCB2YXJpb3VzIGFyY2hpdGVjdHVyZXMgaW4gdmFsaWRh
dGluZyBjaGFuZ2VzIHRvIGV4aXN0aW5nCj4gcGFnZSB0YWJsZSBoZWxwZXJzIG9yIGFkZGl0aW9u
IG9mIG5ldyBvbmVzLgo+IAo+IFRoaXMgdGVzdCBjb3ZlcnMgYmFzaWMgcGFnZSB0YWJsZSBlbnRy
eSB0cmFuc2Zvcm1hdGlvbnMgaW5jbHVkaW5nIGJ1dCBub3QKPiBsaW1pdGVkIHRvIG9sZCwgeW91
bmcsIGRpcnR5LCBjbGVhbiwgd3JpdGUsIHdyaXRlIHByb3RlY3QgZXRjIGF0IHZhcmlvdXMKPiBs
ZXZlbCBhbG9uZyB3aXRoIHBvcHVsYXRpbmcgaW50ZXJtZWRpYXRlIGVudHJpZXMgd2l0aCBuZXh0
IHBhZ2UgdGFibGUgcGFnZQo+IGFuZCB2YWxpZGF0aW5nIHRoZW0uCj4gCj4gVGVzdCBwYWdlIHRh
YmxlIHBhZ2VzIGFyZSBhbGxvY2F0ZWQgZnJvbSBzeXN0ZW0gbWVtb3J5IHdpdGggcmVxdWlyZWQg
c2l6ZQo+IGFuZCBhbGlnbm1lbnRzLiBUaGUgbWFwcGVkIHBmbnMgYXQgcGFnZSB0YWJsZSBsZXZl
bHMgYXJlIGRlcml2ZWQgZnJvbSBhCj4gcmVhbCBwZm4gcmVwcmVzZW50aW5nIGEgdmFsaWQga2Vy
bmVsIHRleHQgc3ltYm9sLiBUaGlzIHRlc3QgZ2V0cyBjYWxsZWQKPiByaWdodCBhZnRlciBwYWdl
X2FsbG9jX2luaXRfbGF0ZSgpLgo+IAo+IFRoaXMgZ2V0cyBidWlsZCBhbmQgcnVuIHdoZW4gQ09O
RklHX0RFQlVHX1ZNX1BHVEFCTEUgaXMgc2VsZWN0ZWQgYWxvbmcgd2l0aAo+IENPTkZJR19WTV9E
RUJVRy4gQXJjaGl0ZWN0dXJlcyB3aWxsaW5nIHRvIHN1YnNjcmliZSB0aGlzIHRlc3QgYWxzbyBu
ZWVkIHRvCj4gc2VsZWN0IENPTkZJR19BUkNIX0hBU19ERUJVR19WTV9QR1RBQkxFIHdoaWNoIGZv
ciBub3cgaXMgbGltaXRlZCB0byB4ODYgYW5kCj4gYXJtNjQuIEdvaW5nIGZvcndhcmQsIG90aGVy
IGFyY2hpdGVjdHVyZXMgdG9vIGNhbiBlbmFibGUgdGhpcyBhZnRlciBmaXhpbmcKPiBidWlsZCBv
ciBydW50aW1lIHByb2JsZW1zIChpZiBhbnkpIHdpdGggdGhlaXIgcGFnZSB0YWJsZSBoZWxwZXJz
LgoKV2hhdOKAmXMgdGhlIHZhbHVlIG9mIHRoaXMgYmxvY2sgb2YgbmV3IGNvZGU/IEl0IG9ubHkg
c3VwcG9ydHMgeDg2IGFuZCBhcm02NCB3aGljaCBhcmUgc3VwcG9zZWQgdG8gYmUgZ29vZCBub3cu
IERpZCB0aG9zZSB0ZXN0cyBldmVyIGZpbmQgYW55IHJlZ3Jlc3Npb24gb3IgdGhpcyBpcyBhbG1v
c3Qgb25seSB1c2VmdWwgZm9yIG5ldyBhcmNoaXRlY3R1cmVzIHdoaWNoIG9ubHkgaGFwcGVuZWQg
b25jZSBpbiBhIGZldyB5ZWFycz8gVGhlIHdvcnJ5IGlmIG5vdCBtYW55IHBlb3BsZSB3aWxsIHVz
ZSB0aGlzIGNvbmZpZyBhbmQgY29kZSB0aG9zZSB0aGF0IG11Y2ggaW4gdGhlIGZ1dHVyZSBiZWNh
dXNlIGl0IGlzIGluZWZmaWNpZW50IHRvIGZpbmQgYnVncywgaXQgd2lsbCBzaW1wbHkgYmUgcm90
dGVuIGxpa2UgYSBmZXcgb3RoZXIgZGVidWdnaW5nIG9wdGlvbnMgb3V0IHRoZXJlIHdlIGhhdmUg
aW4gdGhlIG1haW5saW5lIHRoYXQgd2lsbCBiZSBhIHBhaW4gdG8gcmVtb3ZlIGxhdGVyIG9uLgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
