Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36646B3C55
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 16:16:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0KuCGt93NyN0GIX5wu2Y1ZJ5OxThle74N2i7coW3jvs=; b=GZhreYJRTs3Rue
	Vganajc0xNFxd8kcghTu/4T923At6f+FMuEmlE/egpW9L9WzsaBepi8p8yR8zlnpp1eHmKYSAdrkS
	v1Z4cJfdx4eoC7HGajObQPfBgjGmc2Vv8G0lSOnWk6m4zRvCb5S7clz1hEonczHOd1tNM/su1z1h8
	TIXpGfKA3kjBigki/Huwbe9bHeCaaSuD6RKxbmokdaqGl41/HtYKe1O5911luxXBYnONOa8WNyNKB
	AuRWJL5Eccknyl1N+Y7uuXMXq2TodPUb1EI3ecw1/6Xy8H8D5YMWG/PgqX9NW6Q1zYHu+SV/apC4x
	qu4G4m1RfkfvqFUfJDlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9rnp-0005rj-UQ; Mon, 16 Sep 2019 14:16:29 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9rnd-0005r1-RR
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 14:16:19 +0000
Received: by mail-ed1-x542.google.com with SMTP id c4so236552edl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 07:16:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=iYHGzDIv1KzvKWmRcaQWixDVtJ/l+waBXIAZNFlOORY=;
 b=uoufnWNYyyoUFU3I8EZ2FjWQJI1fk2jaowm+PRXps1aPXy/Bug4LyT1HxxPWDIv/gx
 ANWG2jH6BrrUuB2d5wGTccaP+GFqG3qPb7ZKXUI3CynXAtCk55Z24FrgrfqmKB+HYqv9
 eZX5A2WbBYQjf/PJRS3Xp0IG8jaF5ccjPMOXiAGspyptVDnN7CWLlKXp8HqdiOMVMNwi
 Lrztn2exL7MwdI2hCKpYgfLeBmc15ls/95jBGOwVuKGevojnCjWqS+a4SJWaIiWPUZRz
 PCdGAfCrQ1uxmBWoOH2T6g4YGi0KF8n+ShssDAEo3r9fL7UylNepRARP+ObCVqe7w+d1
 J2Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=iYHGzDIv1KzvKWmRcaQWixDVtJ/l+waBXIAZNFlOORY=;
 b=qICC4fYYoXbA+kIG6ioHC9YVyrgp/5OhUzhVfRTUzgHmHiCEH8xSN/Xfawv5jP237Z
 eTQ1LQael8z5gFFHgugq5DBswwBYcjfN4zVwu4xBS/eMIQTI3SuCOFP6ZzcDo2RAMlYI
 d22ZLCx5ngknBuFTh2COS6M/PlZa34LxpstL6FVliU4bHS7J9EuokdC0oTVDKamqXnvf
 yZ9QbiP5IQwYQeW5r8MclQd4y8FvgjUXkIhXjnKCpWNThd9OMiWTiOkcBJbSxJ58oj1g
 /I0ni14m1DAoVAvYj39WEO7KELoDoA6acrxwPgisSibOG2MLAwryN7bFVdYxUqK9WgsB
 XGJw==
X-Gm-Message-State: APjAAAVp/2A4mzmSZXW3cE11t2yy/nc4bDuUVpq6JTJnZs2SpNr9UQY6
 WcFyIgUb/b52CDYTIAi+zbXIkw==
X-Google-Smtp-Source: APXvYqwVELfEYu/2by3UrulbVxWW2SeDDD32u+0bbNxJnb0ZeHSHXe+A09WBLHGeiz74P6WslA1xdg==
X-Received: by 2002:a50:eb07:: with SMTP id y7mr26445045edp.240.1568643375711; 
 Mon, 16 Sep 2019 07:16:15 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id s26sm2044850eds.80.2019.09.16.07.16.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Sep 2019 07:16:14 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id D99A310019A; Mon, 16 Sep 2019 17:16:16 +0300 (+03)
Date: Mon, 16 Sep 2019 17:16:16 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: "Justin He (Arm Technology China)" <Justin.He@arm.com>
Subject: Re: [PATCH v3 2/2] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Message-ID: <20190916141616.ikanlznwcgkaxady@box.shutemov.name>
References: <20190913163239.125108-1-justin.he@arm.com>
 <20190913163239.125108-3-justin.he@arm.com>
 <20190916091628.bkuvd3g3ie3x6qav@box.shutemov.name>
 <DB7PR08MB30825C23ABB0962CC8826CBAF78C0@DB7PR08MB3082.eurprd08.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB7PR08MB30825C23ABB0962CC8826CBAF78C0@DB7PR08MB3082.eurprd08.prod.outlook.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_071617_896067_EBE99313 
X-CRM114-Status: GOOD (  28.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Ralph Campbell <rcampbell@nvidia.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Anshuman Khandual <Anshuman.Khandual@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, Jun Yao <yaojun8558363@gmail.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 =?utf-8?B?SsOpcsO0bWU=?= Glisse <jglisse@redhat.com>,
 James Morse <James.Morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Punit Agrawal <punitagrawal@gmail.com>, Marc Zyngier <maz@kernel.org>,
 "hejianet@gmail.com" <hejianet@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Alex Van Brunt <avanbrunt@nvidia.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Robin Murphy <Robin.Murphy@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBTZXAgMTYsIDIwMTkgYXQgMDk6MzU6MjFBTSArMDAwMCwgSnVzdGluIEhlIChBcm0g
VGVjaG5vbG9neSBDaGluYSkgd3JvdGU6Cj4gCj4gSGkgS2lyaWxsCj4gPiAtLS0tLU9yaWdpbmFs
IE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogS2lyaWxsIEEuIFNodXRlbW92IDxraXJpbGxAc2h1dGVt
b3YubmFtZT4KPiA+IFNlbnQ6IDIwMTnlubQ55pyIMTbml6UgMTc6MTYKPiA+IFRvOiBKdXN0aW4g
SGUgKEFybSBUZWNobm9sb2d5IENoaW5hKSA8SnVzdGluLkhlQGFybS5jb20+Cj4gPiBDYzogQ2F0
YWxpbiBNYXJpbmFzIDxDYXRhbGluLk1hcmluYXNAYXJtLmNvbT47IFdpbGwgRGVhY29uCj4gPiA8
d2lsbEBrZXJuZWwub3JnPjsgTWFyayBSdXRsYW5kIDxNYXJrLlJ1dGxhbmRAYXJtLmNvbT47IEph
bWVzIE1vcnNlCj4gPiA8SmFtZXMuTW9yc2VAYXJtLmNvbT47IE1hcmMgWnluZ2llciA8bWF6QGtl
cm5lbC5vcmc+OyBNYXR0aGV3Cj4gPiBXaWxjb3ggPHdpbGx5QGluZnJhZGVhZC5vcmc+OyBLaXJp
bGwgQS4gU2h1dGVtb3YKPiA+IDxraXJpbGwuc2h1dGVtb3ZAbGludXguaW50ZWwuY29tPjsgbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOwo+ID4gbGludXgta2VybmVsQHZnZXIu
a2VybmVsLm9yZzsgbGludXgtbW1Aa3ZhY2sub3JnOyBQdW5pdCBBZ3Jhd2FsCj4gPiA8cHVuaXRh
Z3Jhd2FsQGdtYWlsLmNvbT47IEFuc2h1bWFuIEtoYW5kdWFsCj4gPiA8QW5zaHVtYW4uS2hhbmR1
YWxAYXJtLmNvbT47IEp1biBZYW8gPHlhb2p1bjg1NTgzNjNAZ21haWwuY29tPjsKPiA+IEFsZXgg
VmFuIEJydW50IDxhdmFuYnJ1bnRAbnZpZGlhLmNvbT47IFJvYmluIE11cnBoeQo+ID4gPFJvYmlu
Lk11cnBoeUBhcm0uY29tPjsgVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+Owo+
ID4gQW5kcmV3IE1vcnRvbiA8YWtwbUBsaW51eC1mb3VuZGF0aW9uLm9yZz47IErDqXLDtG1lIEds
aXNzZQo+ID4gPGpnbGlzc2VAcmVkaGF0LmNvbT47IFJhbHBoIENhbXBiZWxsIDxyY2FtcGJlbGxA
bnZpZGlhLmNvbT47Cj4gPiBoZWppYW5ldEBnbWFpbC5jb20KPiA+IFN1YmplY3Q6IFJlOiBbUEFU
Q0ggdjMgMi8yXSBtbTogZml4IGRvdWJsZSBwYWdlIGZhdWx0IG9uIGFybTY0IGlmIFBURV9BRgo+
ID4gaXMgY2xlYXJlZAo+ID4KPiA+IE9uIFNhdCwgU2VwIDE0LCAyMDE5IGF0IDEyOjMyOjM5QU0g
KzA4MDAsIEppYSBIZSB3cm90ZToKPiA+ID4gV2hlbiB3ZSB0ZXN0ZWQgcG1kayB1bml0IHRlc3Qg
WzFdIHZtbWFsbG9jX2ZvcmsgVEVTVDEgaW4gYXJtNjQgZ3Vlc3QsCj4gPiB0aGVyZQo+ID4gPiB3
aWxsIGJlIGEgZG91YmxlIHBhZ2UgZmF1bHQgaW4gX19jb3B5X2Zyb21fdXNlcl9pbmF0b21pYyBv
Zgo+ID4gY293X3VzZXJfcGFnZS4KPiA+ID4KPiA+ID4gQmVsb3cgY2FsbCB0cmFjZSBpcyBmcm9t
IGFybTY0IGRvX3BhZ2VfZmF1bHQgZm9yIGRlYnVnZ2luZyBwdXJwb3NlCj4gPiA+IFsgIDExMC4w
MTYxOTVdIENhbGwgdHJhY2U6Cj4gPiA+IFsgIDExMC4wMTY4MjZdICBkb19wYWdlX2ZhdWx0KzB4
NWE0LzB4NjkwCj4gPiA+IFsgIDExMC4wMTc4MTJdICBkb19tZW1fYWJvcnQrMHg1MC8weGIwCj4g
PiA+IFsgIDExMC4wMTg3MjZdICBlbDFfZGErMHgyMC8weGM0Cj4gPiA+IFsgIDExMC4wMTk0OTJd
ICBfX2FyY2hfY29weV9mcm9tX3VzZXIrMHgxODAvMHgyODAKPiA+ID4gWyAgMTEwLjAyMDY0Nl0g
IGRvX3dwX3BhZ2UrMHhiMC8weDg2MAo+ID4gPiBbICAxMTAuMDIxNTE3XSAgX19oYW5kbGVfbW1f
ZmF1bHQrMHg5OTQvMHgxMzM4Cj4gPiA+IFsgIDExMC4wMjI2MDZdICBoYW5kbGVfbW1fZmF1bHQr
MHhlOC8weDE4MAo+ID4gPiBbICAxMTAuMDIzNTg0XSAgZG9fcGFnZV9mYXVsdCsweDI0MC8weDY5
MAo+ID4gPiBbICAxMTAuMDI0NTM1XSAgZG9fbWVtX2Fib3J0KzB4NTAvMHhiMAo+ID4gPiBbICAx
MTAuMDI1NDIzXSAgZWwwX2RhKzB4MjAvMHgyNAo+ID4gPgo+ID4gPiBUaGUgcHRlIGluZm8gYmVm
b3JlIF9fY29weV9mcm9tX3VzZXJfaW5hdG9taWMgaXMgKFBURV9BRiBpcyBjbGVhcmVkKToKPiA+
ID4gW2ZmZmY5YjAwNzAwMF0gcGdkPTAwMDAwMDAyM2Q0ZjgwMDMsIHB1ZD0wMDAwMDAwMjNkYTli
MDAzLAo+ID4gcG1kPTAwMDAwMDAyM2Q0YjMwMDMsIHB0ZT0zNjAwMDAyOTg2MDdiZDMKPiA+ID4K
PiA+ID4gQXMgdG9sZCBieSBDYXRhbGluOiAiT24gYXJtNjQgd2l0aG91dCBoYXJkd2FyZSBBY2Nl
c3MgRmxhZywgY29weWluZwo+ID4gZnJvbQo+ID4gPiB1c2VyIHdpbGwgZmFpbCBiZWNhdXNlIHRo
ZSBwdGUgaXMgb2xkIGFuZCBjYW5ub3QgYmUgbWFya2VkIHlvdW5nLiBTbyB3ZQo+ID4gPiBhbHdh
eXMgZW5kIHVwIHdpdGggemVyb2VkIHBhZ2UgYWZ0ZXIgZm9yaygpICsgQ29XIGZvciBwZm4gbWFw
cGluZ3MuIHdlCj4gPiA+IGRvbid0IGFsd2F5cyBoYXZlIGEgaGFyZHdhcmUtbWFuYWdlZCBhY2Nl
c3MgZmxhZyBvbiBhcm02NC4iCj4gPiA+Cj4gPiA+IFRoaXMgcGF0Y2ggZml4IGl0IGJ5IGNhbGxp
bmcgcHRlX21reW91bmcuIEFsc28sIHRoZSBwYXJhbWV0ZXIgaXMKPiA+ID4gY2hhbmdlZCBiZWNh
dXNlIHZtZiBzaG91bGQgYmUgcGFzc2VkIHRvIGNvd191c2VyX3BhZ2UoKQo+ID4gPgo+ID4gPiBb
MV0KPiA+IGh0dHBzOi8vZ2l0aHViLmNvbS9wbWVtL3BtZGsvdHJlZS9tYXN0ZXIvc3JjL3Rlc3Qv
dm1tYWxsb2NfZm9yawo+ID4gPgo+ID4gPiBSZXBvcnRlZC1ieTogWWlibyBDYWkgPFlpYm8uQ2Fp
QGFybS5jb20+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEppYSBIZSA8anVzdGluLmhlQGFybS5jb20+
Cj4gPiA+IC0tLQo+ID4gPiAgbW0vbWVtb3J5LmMgfCAzMCArKysrKysrKysrKysrKysrKysrKysr
KysrLS0tLS0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0
aW9ucygtKQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvbW0vbWVtb3J5LmMgYi9tbS9tZW1vcnku
Ywo+ID4gPiBpbmRleCBlMmJiNTFiNjI0MmUuLmE2NGFmNjQ5NWY3MSAxMDA2NDQKPiA+ID4gLS0t
IGEvbW0vbWVtb3J5LmMKPiA+ID4gKysrIGIvbW0vbWVtb3J5LmMKPiA+ID4gQEAgLTExOCw2ICsx
MTgsMTMgQEAgaW50IHJhbmRvbWl6ZV92YV9zcGFjZSBfX3JlYWRfbW9zdGx5ID0KPiA+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMjsKPiA+ID4gICNlbmRpZgo+ID4gPgo+
ID4gPiArI2lmbmRlZiBhcmNoX2ZhdWx0c19vbl9vbGRfcHRlCj4gPiA+ICtzdGF0aWMgaW5saW5l
IGJvb2wgYXJjaF9mYXVsdHNfb25fb2xkX3B0ZSh2b2lkKQo+ID4gPiArewo+ID4gPiArICAgcmV0
dXJuIGZhbHNlOwo+ID4gPiArfQo+ID4gPiArI2VuZGlmCj4gPiA+ICsKPiA+ID4gIHN0YXRpYyBp
bnQgX19pbml0IGRpc2FibGVfcmFuZG1hcHMoY2hhciAqcykKPiA+ID4gIHsKPiA+ID4gICAgIHJh
bmRvbWl6ZV92YV9zcGFjZSA9IDA7Cj4gPiA+IEBAIC0yMTQwLDcgKzIxNDcsOCBAQCBzdGF0aWMg
aW5saW5lIGludCBwdGVfdW5tYXBfc2FtZShzdHJ1Y3QKPiA+IG1tX3N0cnVjdCAqbW0sIHBtZF90
ICpwbWQsCj4gPiA+ICAgICByZXR1cm4gc2FtZTsKPiA+ID4gIH0KPiA+ID4KPiA+ID4gLXN0YXRp
YyBpbmxpbmUgdm9pZCBjb3dfdXNlcl9wYWdlKHN0cnVjdCBwYWdlICpkc3QsIHN0cnVjdCBwYWdl
ICpzcmMsCj4gPiB1bnNpZ25lZCBsb25nIHZhLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkK
PiA+ID4gK3N0YXRpYyBpbmxpbmUgdm9pZCBjb3dfdXNlcl9wYWdlKHN0cnVjdCBwYWdlICpkc3Qs
IHN0cnVjdCBwYWdlICpzcmMsCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1
Y3Qgdm1fZmF1bHQgKnZtZikKPiA+ID4gIHsKPiA+ID4gICAgIGRlYnVnX2RtYV9hc3NlcnRfaWRs
ZShzcmMpOwo+ID4gPgo+ID4gPiBAQCAtMjE1MiwyMCArMjE2MCwzMiBAQCBzdGF0aWMgaW5saW5l
IHZvaWQgY293X3VzZXJfcGFnZShzdHJ1Y3QgcGFnZQo+ID4gKmRzdCwgc3RydWN0IHBhZ2UgKnNy
YywgdW5zaWduZWQgbG8KPiA+ID4gICAgICAqLwo+ID4gPiAgICAgaWYgKHVubGlrZWx5KCFzcmMp
KSB7Cj4gPiA+ICAgICAgICAgICAgIHZvaWQgKmthZGRyID0ga21hcF9hdG9taWMoZHN0KTsKPiA+
ID4gLSAgICAgICAgICAgdm9pZCBfX3VzZXIgKnVhZGRyID0gKHZvaWQgX191c2VyICopKHZhICYg
UEFHRV9NQVNLKTsKPiA+ID4gKyAgICAgICAgICAgdm9pZCBfX3VzZXIgKnVhZGRyID0gKHZvaWQg
X191c2VyICopKHZtZi0+YWRkcmVzcyAmCj4gPiBQQUdFX01BU0spOwo+ID4gPiArICAgICAgICAg
ICBwdGVfdCBlbnRyeTsKPiA+ID4KPiA+ID4gICAgICAgICAgICAgLyoKPiA+ID4gICAgICAgICAg
ICAgICogVGhpcyByZWFsbHkgc2hvdWxkbid0IGZhaWwsIGJlY2F1c2UgdGhlIHBhZ2UgaXMgdGhl
cmUKPiA+ID4gICAgICAgICAgICAgICogaW4gdGhlIHBhZ2UgdGFibGVzLiBCdXQgaXQgbWlnaHQg
anVzdCBiZSB1bnJlYWRhYmxlLAo+ID4gPiAgICAgICAgICAgICAgKiBpbiB3aGljaCBjYXNlIHdl
IGp1c3QgZ2l2ZSB1cCBhbmQgZmlsbCB0aGUgcmVzdWx0IHdpdGgKPiA+ID4gLSAgICAgICAgICAg
ICogemVyb2VzLgo+ID4gPiArICAgICAgICAgICAgKiB6ZXJvZXMuIElmIFBURV9BRiBpcyBjbGVh
cmVkIG9uIGFybTY0LCBpdCBtaWdodAo+ID4gPiArICAgICAgICAgICAgKiBjYXVzZSBkb3VibGUg
cGFnZSBmYXVsdC4gU28gbWFrZXMgcHRlIHlvdW5nIGhlcmUKPiA+ID4gICAgICAgICAgICAgICov
Cj4gPiA+ICsgICAgICAgICAgIGlmIChhcmNoX2ZhdWx0c19vbl9vbGRfcHRlKCkgJiYgIXB0ZV95
b3VuZyh2bWYtPm9yaWdfcHRlKSkKPiA+IHsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICBzcGlu
X2xvY2sodm1mLT5wdGwpOwo+ID4gPiArICAgICAgICAgICAgICAgICAgIGVudHJ5ID0gcHRlX21r
eW91bmcodm1mLT5vcmlnX3B0ZSk7Cj4gPgo+ID4gU2hvdWxkJ3QgeW91IHJlLXZhbGlkYXRlIHRo
YXQgb3JpZ19wdGUgYWZ0ZXIgcmUtdGFraW5nIHB0bD8gSXQgY2FuIGJlCj4gPiBzdGFsZSBieSBu
b3cuCj4gVGhhbmtzLCBkbyB5b3UgbWVhbiBmbHVzaF9jYWNoZV9wYWdlKHZtYSwgdm1mLT5hZGRy
ZXNzLCBwdGVfcGZuKHZtZi0+b3JpZ19wdGUpKQo+IGJlZm9yZSBwdGVfbWt5b3VuZz8KCk5vLiBZ
b3UgbmVlZCB0byBjaGVjayBwdGVfc2FtZSgqdm1mLT5wdGUsIHZtZi0+b3JpZ19wdGUpIGJlZm9y
ZSBtb2RpZnlpbmcKYW55dGhpbmcgYW5kIGJhaWwgb3V0IGlmICp2bWYtPnB0ZSBoYXMgY2hhbmdl
ZCB1bmRlciB5b3UuCgotLSAKIEtpcmlsbCBBLiBTaHV0ZW1vdgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
