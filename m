Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5F3CFC79
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 16:32:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xiBVyF/UnuGT4yYLvApoz7GEpQMg8gb5GxaLI0CyM+I=; b=ep0QmPMoeaQwSW
	xqJSS7f7wOTtXLvtEbFf8+PDHMIhVhp1ySaSh3BAQK6sa/W7hR93/Jf77zn4NFwdiqTyWsOhVaT7C
	SNPI6cIUV8/FXGpfqC8UITY+Y6AN3Yl6VdahWE0f248bP1wTwAN4VX4AtNRiANYbq5D2VOSnN7bWd
	LDNhwPs0eGcRi0gUYK6etIG82mxK2uE3H7nj4wRCX1JidtPph+SI1ic/aU8aBuLLAOH1tFHnABGKi
	ol2MOTf5oWspc6dXAGtoMzBQtBHElfk1G9bgMOSODAgGOLRs89t/TngRa9fI1SeQXh6REl5ub7gri
	UAJGGO64uThALpu54NuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHqXe-0004SJ-9T; Tue, 08 Oct 2019 14:32:46 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHqXT-0004Rv-S4
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 14:32:37 +0000
Received: by mail-ed1-x543.google.com with SMTP id f20so15808255edv.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 07:32:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=njSAfvEWqpgoU0gYs1bEj0p7fhAAPMVQsZ7cyfhOXFg=;
 b=L3eytFXDAeIwpwarvxe0IxbMkPQ+dIYA4tTHLo5Yw8fOEGweyFLbK2Xr3UlZMWoFhY
 VG9gE0gzprlJFzonnB3Dj922G288bBaQNi7WJHMg876FS4rT/+T8mkW9ZotgP09VZW+f
 TGcxwNXlIBtuKmQf7Wjg4Iwn73QP4qB8NuZqeiPQ8W8FK/7sYS6bN8fUjhS4+IsgfQUN
 1Gl3s5FqC/FQE5etDdbLM/iBAuhJE6VXrajmBUr/OO4vI8ScKNYDniM2Yks0vck5VNTa
 EEuIYW09UqkOTc3dzF1TuYOzFbJAOoiRZ64sW2/mMcJHn+v4yPrZlC+RN5Y+wkwLYq6/
 Hh+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=njSAfvEWqpgoU0gYs1bEj0p7fhAAPMVQsZ7cyfhOXFg=;
 b=j59ik6d7VsMTjxrKem3Q+M2VGHVvJOttLoVR4rt/YRMQS4dqEfnxSyy/jRUPLQZE+a
 j+3kxIgVYnQd8jMjBj+mTUXy2XZ6KeyhmFa3jvQQ1rRnSa8VeOXSV+biCWGSWkuxcPNb
 SRwTmtu9CXmu/I/D7ZfqjXW+Up/9P9j5E4fyKiLm92radb0UVdsHuk/r4P/E68Jx/MYQ
 pfk5QlfvVDiufjNta62jD8aNoYV79Q+9zfTUW3UwI+KLUg+KWbCdTbXF6F+TROvkjCCQ
 UErt702WS6pY4x69Fukbg30fu6DxY5+ICongVkjXSOcF/ClPYo/u2eR/xC6+IDaGNqhM
 pDBQ==
X-Gm-Message-State: APjAAAWZLAPA83YZNuKdrwo1UM5OKUlLailt7zcauLAnWb+lX4a3MNcr
 bIFGO+dFLXenx9FxXkO2eMO/Eg==
X-Google-Smtp-Source: APXvYqz6cvRMCxdLmtCQ2khfDe1iPEqAmLGkZ2CXZc2kazAbmaHM4vhnZ63e2XgGI3JqNjExeBFVDw==
X-Received: by 2002:aa7:d995:: with SMTP id u21mr34410415eds.271.1570545153868; 
 Tue, 08 Oct 2019 07:32:33 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id i30sm3938992ede.32.2019.10.08.07.32.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 07:32:32 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id 5440710170F; Tue,  8 Oct 2019 17:32:32 +0300 (+03)
Date: Tue, 8 Oct 2019 17:32:32 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: "Justin He (Arm Technology China)" <Justin.He@arm.com>
Subject: Re: [PATCH v10 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Message-ID: <20191008143232.e7r4auxwlcllvlqh@box>
References: <20190930015740.84362-1-justin.he@arm.com>
 <20190930015740.84362-4-justin.he@arm.com>
 <20191001125413.mhxa6qszwnuhglky@willie-the-truck>
 <DB7PR08MB3082563BD18482E5D541F019F79A0@DB7PR08MB3082.eurprd08.prod.outlook.com>
 <20191008123943.j7q6dlu2qb2az6xa@willie-the-truck>
 <DB7PR08MB30828D5469EA39EA0825B809F79A0@DB7PR08MB3082.eurprd08.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB7PR08MB30828D5469EA39EA0825B809F79A0@DB7PR08MB3082.eurprd08.prod.outlook.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_073236_044264_8EB50BE8 
X-CRM114-Status: GOOD (  23.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, James Morse <James.Morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Punit Agrawal <punitagrawal@gmail.com>, Marc Zyngier <maz@kernel.org>,
 "hejianet@gmail.com" <hejianet@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, nd <nd@arm.com>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBPY3QgMDgsIDIwMTkgYXQgMTI6NTg6NTdQTSArMDAwMCwgSnVzdGluIEhlIChBcm0g
VGVjaG5vbG9neSBDaGluYSkgd3JvdGU6Cj4gSGkgV2lsbAo+IAo+ID4gLS0tLS1PcmlnaW5hbCBN
ZXNzYWdlLS0tLS0KPiA+IEZyb206IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+Cj4gPiBT
ZW50OiAyMDE55bm0MTDmnIg45pelIDIwOjQwCj4gPiBUbzogSnVzdGluIEhlIChBcm0gVGVjaG5v
bG9neSBDaGluYSkgPEp1c3Rpbi5IZUBhcm0uY29tPgo+ID4gQ2M6IENhdGFsaW4gTWFyaW5hcyA8
Q2F0YWxpbi5NYXJpbmFzQGFybS5jb20+OyBNYXJrIFJ1dGxhbmQKPiA+IDxNYXJrLlJ1dGxhbmRA
YXJtLmNvbT47IEphbWVzIE1vcnNlIDxKYW1lcy5Nb3JzZUBhcm0uY29tPjsgTWFyYwo+ID4gWnlu
Z2llciA8bWF6QGtlcm5lbC5vcmc+OyBNYXR0aGV3IFdpbGNveCA8d2lsbHlAaW5mcmFkZWFkLm9y
Zz47IEtpcmlsbCBBLgo+ID4gU2h1dGVtb3YgPGtpcmlsbC5zaHV0ZW1vdkBsaW51eC5pbnRlbC5j
b20+OyBsaW51eC1hcm0tCj4gPiBrZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgbGludXgta2Vy
bmVsQHZnZXIua2VybmVsLm9yZzsgbGludXgtCj4gPiBtbUBrdmFjay5vcmc7IFB1bml0IEFncmF3
YWwgPHB1bml0YWdyYXdhbEBnbWFpbC5jb20+OyBUaG9tYXMKPiA+IEdsZWl4bmVyIDx0Z2x4QGxp
bnV0cm9uaXguZGU+OyBBbmRyZXcgTW9ydG9uIDxha3BtQGxpbnV4LQo+ID4gZm91bmRhdGlvbi5v
cmc+OyBoZWppYW5ldEBnbWFpbC5jb207IEthbHkgWGluIChBcm0gVGVjaG5vbG9neSBDaGluYSkK
PiA+IDxLYWx5LlhpbkBhcm0uY29tPjsgbmQgPG5kQGFybS5jb20+Cj4gPiBTdWJqZWN0OiBSZTog
W1BBVENIIHYxMCAzLzNdIG1tOiBmaXggZG91YmxlIHBhZ2UgZmF1bHQgb24gYXJtNjQgaWYgUFRF
X0FGCj4gPiBpcyBjbGVhcmVkCj4gPiAKPiA+IE9uIFR1ZSwgT2N0IDA4LCAyMDE5IGF0IDAyOjE5
OjA1QU0gKzAwMDAsIEp1c3RpbiBIZSAoQXJtIFRlY2hub2xvZ3kKPiA+IENoaW5hKSB3cm90ZToK
PiA+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gPiA+IEZyb206IFdpbGwgRGVh
Y29uIDx3aWxsQGtlcm5lbC5vcmc+Cj4gPiA+ID4gU2VudDogMjAxOeW5tDEw5pyIMeaXpSAyMDo1
NAo+ID4gPiA+IFRvOiBKdXN0aW4gSGUgKEFybSBUZWNobm9sb2d5IENoaW5hKSA8SnVzdGluLkhl
QGFybS5jb20+Cj4gPiA+ID4gQ2M6IENhdGFsaW4gTWFyaW5hcyA8Q2F0YWxpbi5NYXJpbmFzQGFy
bS5jb20+OyBNYXJrIFJ1dGxhbmQKPiA+ID4gPiA8TWFyay5SdXRsYW5kQGFybS5jb20+OyBKYW1l
cyBNb3JzZSA8SmFtZXMuTW9yc2VAYXJtLmNvbT47Cj4gPiBNYXJjCj4gPiA+ID4gWnluZ2llciA8
bWF6QGtlcm5lbC5vcmc+OyBNYXR0aGV3IFdpbGNveCA8d2lsbHlAaW5mcmFkZWFkLm9yZz47Cj4g
PiBLaXJpbGwgQS4KPiA+ID4gPiBTaHV0ZW1vdiA8a2lyaWxsLnNodXRlbW92QGxpbnV4LmludGVs
LmNvbT47IGxpbnV4LWFybS0KPiA+ID4gPiBrZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgbGlu
dXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgbGludXgtCj4gPiA+ID4gbW1Aa3ZhY2sub3JnOyBQ
dW5pdCBBZ3Jhd2FsIDxwdW5pdGFncmF3YWxAZ21haWwuY29tPjsgVGhvbWFzCj4gPiA+ID4gR2xl
aXhuZXIgPHRnbHhAbGludXRyb25peC5kZT47IEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgtCj4g
PiA+ID4gZm91bmRhdGlvbi5vcmc+OyBoZWppYW5ldEBnbWFpbC5jb207IEthbHkgWGluIChBcm0g
VGVjaG5vbG9neSBDaGluYSkKPiA+ID4gPiA8S2FseS5YaW5AYXJtLmNvbT4KPiA+ID4gPiBTdWJq
ZWN0OiBSZTogW1BBVENIIHYxMCAzLzNdIG1tOiBmaXggZG91YmxlIHBhZ2UgZmF1bHQgb24gYXJt
NjQgaWYKPiA+IFBURV9BRgo+ID4gPiA+IGlzIGNsZWFyZWQKPiA+ID4gPgo+ID4gPiA+IE9uIE1v
biwgU2VwIDMwLCAyMDE5IGF0IDA5OjU3OjQwQU0gKzA4MDAsIEppYSBIZSB3cm90ZToKPiA+ID4g
PiA+IGRpZmYgLS1naXQgYS9tbS9tZW1vcnkuYyBiL21tL21lbW9yeS5jCj4gPiA+ID4gPiBpbmRl
eCBiMWNhNTFhMDc5ZjIuLjFmNTZiMDExOGVmNSAxMDA2NDQKPiA+ID4gPiA+IC0tLSBhL21tL21l
bW9yeS5jCj4gPiA+ID4gPiArKysgYi9tbS9tZW1vcnkuYwo+ID4gPiA+ID4gQEAgLTExOCw2ICsx
MTgsMTMgQEAgaW50IHJhbmRvbWl6ZV92YV9zcGFjZSBfX3JlYWRfbW9zdGx5ID0KPiA+ID4gPiA+
ICAJCQkJCTI7Cj4gPiA+ID4gPiAgI2VuZGlmCj4gPiA+ID4gPgo+ID4gPiA+ID4gKyNpZm5kZWYg
YXJjaF9mYXVsdHNfb25fb2xkX3B0ZQo+ID4gPiA+ID4gK3N0YXRpYyBpbmxpbmUgYm9vbCBhcmNo
X2ZhdWx0c19vbl9vbGRfcHRlKHZvaWQpCj4gPiA+ID4gPiArewo+ID4gPiA+ID4gKwlyZXR1cm4g
ZmFsc2U7Cj4gPiA+ID4gPiArfQo+ID4gPiA+ID4gKyNlbmRpZgo+ID4gPiA+Cj4gPiA+ID4gS2ly
aWxsIGhhcyBhY2tlZCB0aGlzLCBzbyBJJ20gaGFwcHkgdG8gdGFrZSB0aGUgcGF0Y2ggYXMtaXMs
IGhvd2V2ZXIgaXNuJ3QKPiA+ID4gPiBpdCB0aGUgY2FzZSB0aGF0IC9tb3N0LyBhcmNoaXRlY3R1
cmVzIHdpbGwgd2FudCB0byByZXR1cm4gdHJ1ZSBmb3IKPiA+ID4gPiBhcmNoX2ZhdWx0c19vbl9v
bGRfcHRlKCk/IEluIHdoaWNoIGNhc2UsIHdvdWxkbid0IGl0IG1ha2UgbW9yZSBzZW5zZQo+ID4g
Zm9yCj4gPiA+ID4gdGhhdCB0byBiZSB0aGUgZGVmYXVsdCwgYW5kIGhhdmUgeDg2IGFuZCBhcm02
NCBwcm92aWRlIGFuIG92ZXJyaWRlPwo+ID4gRm9yCj4gPiA+ID4gZXhhbXBsZSwgYXJlbid0IG1v
c3QgYXJjaGl0ZWN0dXJlcyBzdGlsbCBnb2luZyB0byBoaXQgdGhlIGRvdWJsZSBmYXVsdAo+ID4g
PiA+IHNjZW5hcmlvIGV2ZW4gd2l0aCB5b3VyIHBhdGNoIGFwcGxpZWQ/Cj4gPiA+Cj4gPiA+IE5v
LCBhZnRlciBhcHBseWluZyBteSBwYXRjaCBzZXJpZXMsIG9ubHkgdGhvc2UgYXJjaGl0ZWN0dXJl
cyB3aGljaCBkb24ndAo+ID4gcHJvdmlkZQo+ID4gPiBzZXR0aW5nIGFjY2VzcyBmbGFnIGJ5IGhh
cmR3YXJlIEFORCBkb24ndCBpbXBsZW1lbnQgdGhlaXIKPiA+IGFyY2hfZmF1bHRzX29uX29sZF9w
dGUKPiA+ID4gd2lsbCBoaXQgdGhlIGRvdWJsZSBwYWdlIGZhdWx0Lgo+ID4gPgo+ID4gPiBUaGUg
bWVhbmluZyBvZiB0cnVlIGZvciBhcmNoX2ZhdWx0c19vbl9vbGRfcHRlKCkgaXMgInRoaXMgYXJj
aCBkb2Vzbid0Cj4gPiBoYXZlIHRoZSBoYXJkd2FyZQo+ID4gPiBzZXR0aW5nIGFjY2VzcyBmbGFn
IHdheSwgaXQgbWlnaHQgY2F1c2UgcGFnZSBmYXVsdCBvbiBhbiBvbGQgcHRlIgo+ID4gPiBJIGRv
bid0IHdhbnQgdG8gY2hhbmdlIG90aGVyIGFyY2hpdGVjdHVyZXMnIGRlZmF1bHQgYmVoYXZpb3Ig
aGVyZS4gU28gYnkKPiA+IGRlZmF1bHQsCj4gPiA+IGFyY2hfZmF1bHRzX29uX29sZF9wdGUoKSBp
cyBmYWxzZS4KPiA+IAo+ID4gLi4uYW5kIG15IGNvbXBsYWludCBpcyB0aGF0IHRoaXMgaXMgdGhl
IG1ham9yaXR5IG9mIHN1cHBvcnRlZCBhcmNoaXRlY3R1cmVzLAo+ID4gc28geW91J3JlIGZpeGlu
ZyBzb21ldGhpbmcgZm9yIGFybTY0IHdoaWNoIGFsc28gYWZmZWN0cyBhcm0sIHBvd2VycGMsCj4g
PiBhbHBoYSwgbWlwcywgcmlzY3YsIC4uLgo+IAo+IFNvLCBJSVVDLCB5b3Ugc3VnZ2VzdGVkIHRo
YXQ6Cj4gMS4gYnkgZGVmYXVsdCwgYXJjaF9mYXVsdHNfb25fb2xkX3B0ZSgpIHJldHVybiB0cnVl
Cj4gMi4gb24gWDg2LCBsZXQgYXJjaF9mYXVsdHNfb25fb2xkX3B0ZSgpIGJlIG92ZXJyaWRlZCBh
cyByZXR1cm5pbmcgZmFsc2UKPiAzLiBvbiBhcm02NCwgbGV0IGl0IGJlIGFzLWlzIG15IHBhdGNo
IHNldC4KPiA0LiBsZXQgb3RoZXIgYXJjaGl0ZWN0dXJlcyBkZWNpZGUgdGhlIGJlaGF2aW9yLiAo
QnV0IGJ5IGRlZmF1bHQsIGl0IHdpbGwgc2V0Cj4gcHRlX3lvdW5nKQo+IAo+IEkgYW0gb2sgd2l0
aCB0aGF0IGlmIG5vIG9iamVjdGlvbnMgZnJvbSBvdGhlcnMuCj4gCj4gQEtpcmlsbCBBLiBTaHV0
ZW1vdiBEbyB5b3UgaGF2ZSBhbnkgY29tbWVudHM/IFRoYW5rcwoKU291bmRzIHNhbmUgdG8gbWUu
CgotLSAKIEtpcmlsbCBBLiBTaHV0ZW1vdgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
