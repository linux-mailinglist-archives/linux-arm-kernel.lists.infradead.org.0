Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7BFE3366
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 15:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EFfTE0hxroajdorFrZaqnOJX48kqpm2EI4yYdHdCmwk=; b=p1AmmBEpi7SQGV
	Sq7TcIBvzs4x24r19/msHz34gg+a+RgqqeTpQT2ReR/czCJbBnFzUEeXAYhkSG/+dmeAxj118UsQv
	GTGyXu7uS49Srlu+3LCZIqihIkiYrznpus0aJAGr4CwkNvNxzc2EHiwvaBpehi4rlzzF4pXENCT4y
	Aei5lHw06cLmjCWc/Mt/nH9oup3ox7mKRY8jqbqxaNoGbmUK9R4fOtttM1mv+0qnVDfD28Dum2NdR
	K5WUj/blVNudVPCAbDBYMOqKsfDOvyRNDN5eFWN4T9BNkOrOamJ6abJ44th0GecscdhXYZzb84bVq
	J/D492UgxvOrjAR7ztYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNcoX-0001MO-5H; Thu, 24 Oct 2019 13:06:05 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNcoN-0001Lp-Ex
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 13:05:56 +0000
Received: by mail-lj1-x241.google.com with SMTP id f5so24965404ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 06:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3v7HH2EtuoXM2xnYmFQQeluZt2onP/7EoTuMaBySF5U=;
 b=pqYYecC9th9J+VMMUSolsRioNbW/0/V0vjiWIHl+uu0z7rYYHip2twHnjAB8pA/e4+
 NY06bM0/dAlPMsGT91KAjlvpX1B2sYR++kMK39hV5mBasK3u+6yJPcwXOmeKsosabJcY
 F7nlEXJnzLEY4t47EahMVbav3mRqBdpHxmO/Spi1U7knnubGN91YjpvNMrka6/ELrZzn
 VjyCzI6mEmQ7WrDHaXFlppakXY8WS6MM+yhLTSzTQCDwxxSTzfgbABIB2vAze3KsoLlv
 SvEtrjoPO1h0pB40w+Skj2BcKhdpx1QvMOS2UMXw3gt1T6VvPy1KyKALT5KNK43GlIV2
 8HdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3v7HH2EtuoXM2xnYmFQQeluZt2onP/7EoTuMaBySF5U=;
 b=XvmDHh4oF/kvi5hSmyYGPpiI9k7rmeJsG8+SldX9ZEI81FqWO5w84fSAGhLPTCatAq
 Vh0pDZNF9aDG/X+z85+UeLIk4HTnoLB/xU/eENRU/heYlsse8GWMDUj0tCzAO9YXNDvV
 7zn8QFeRexclQ6y1YdJDNLhzZn4cyDw1nZC3zOAmzlLS5CTmZcLbY6clAKN49OaPRuy1
 iktHicoz77dcPC1CS7Rvc0iSQoeUREKZ3lehyJJ7T8i+fzFpeiaYwTcZaIE+b/Kiposm
 73DSgj+zzmjVf0ZxUDFQ6tyzjflXZFSBtzoPhjuAaUaRzatWEONlgbhIgVfZ4eXmCcEZ
 XCIw==
X-Gm-Message-State: APjAAAU1yAgE3bVbeNj8mYSH7bRWyCCci+7GrFk2wCmp0l1vMI562tZ1
 vbSlTYRCQrgR2s8DGsJGaByxEVth16pLt7KgN+c=
X-Google-Smtp-Source: APXvYqyCfZieYyM9plUxMjd6WgwJX7NZdXwGL0kJacHdG/yeJ3DtK/SWrNwnJoNrghLsNdJEWI+EiN9bnEo6avAv3i4=
X-Received: by 2002:a2e:6101:: with SMTP id v1mr26121771ljb.122.1571922353123; 
 Thu, 24 Oct 2019 06:05:53 -0700 (PDT)
MIME-Version: 1.0
References: <20191018101248.33727-1-steven.price@arm.com>
 <20191018101248.33727-13-steven.price@arm.com>
In-Reply-To: <20191018101248.33727-13-steven.price@arm.com>
From: Zong Li <zongbox@gmail.com>
Date: Thu, 24 Oct 2019 21:05:41 +0800
Message-ID: <CA+ZOyaiE2w686TmWWPT6tzu1MR3Fkm805k2hY1_VMfAnAwQPuQ@mail.gmail.com>
Subject: Re: [PATCH v12 12/22] mm: pagewalk: Allow walking without vma
To: Steven Price <steven.price@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_060555_507820_E16BCF6A 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zongbox[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, x86@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-mm@kvack.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U3RldmVuIFByaWNlIDxzdGV2ZW4ucHJpY2VAYXJtLmNvbT4g5pa8IDIwMTnlubQxMOaciDE55pel
IOmAseWFrSDkuIvljYg0OjEy5a+r6YGT77yaCgo+Cj4gU2luY2UgNDg2ODRhNjViNGUzOiAibW06
IHBhZ2V3YWxrOiBmaXggbWlzYmVoYXZpb3Igb2Ygd2Fsa19wYWdlX3JhbmdlCj4gZm9yIHZtYShW
TV9QRk5NQVApIiwgcGFnZV90YWJsZV93YWxrKCkgd2lsbCByZXBvcnQgYW55IGtlcm5lbCBhcmVh
IGFzCj4gYSBob2xlLCBiZWNhdXNlIGl0IGxhY2tzIGEgdm1hLgo+Cj4gVGhpcyBtZWFucyBlYWNo
IGFyY2ggaGFzIHJlLWltcGxlbWVudGVkIHBhZ2UgdGFibGUgd2Fsa2luZyB3aGVuIG5lZWRlZCwK
PiBmb3IgZXhhbXBsZSBpbiB0aGUgcGVyLWFyY2ggcHRkdW1wIHdhbGtlci4KPgo+IFJlbW92ZSB0
aGUgcmVxdWlyZW1lbnQgdG8gaGF2ZSBhIHZtYSBleGNlcHQgd2hlbiB0cnlpbmcgdG8gc3BsaXQg
aHVnZQo+IHBhZ2VzLgo+Cj4gU2lnbmVkLW9mZi1ieTogU3RldmVuIFByaWNlIDxzdGV2ZW4ucHJp
Y2VAYXJtLmNvbT4KPiAtLS0KPiAgbW0vcGFnZXdhbGsuYyB8IDI1ICsrKysrKysrKysrKysrKysr
LS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25z
KC0pCj4KPiBkaWZmIC0tZ2l0IGEvbW0vcGFnZXdhbGsuYyBiL21tL3BhZ2V3YWxrLmMKPiBpbmRl
eCBmYzRkOThhM2E1YTAuLjQxMzllOTE2M2FlZSAxMDA2NDQKPiAtLS0gYS9tbS9wYWdld2Fsay5j
Cj4gKysrIGIvbW0vcGFnZXdhbGsuYwo+IEBAIC0zOCw3ICszOCw3IEBAIHN0YXRpYyBpbnQgd2Fs
a19wbWRfcmFuZ2UocHVkX3QgKnB1ZCwgdW5zaWduZWQgbG9uZyBhZGRyLCB1bnNpZ25lZCBsb25n
IGVuZCwKPiAgICAgICAgIGRvIHsKPiAgYWdhaW46Cj4gICAgICAgICAgICAgICAgIG5leHQgPSBw
bWRfYWRkcl9lbmQoYWRkciwgZW5kKTsKPiAtICAgICAgICAgICAgICAgaWYgKHBtZF9ub25lKCpw
bWQpIHx8ICF3YWxrLT52bWEpIHsKPiArICAgICAgICAgICAgICAgaWYgKHBtZF9ub25lKCpwbWQp
KSB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgaWYgKG9wcy0+cHRlX2hvbGUpCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBlcnIgPSBvcHMtPnB0ZV9ob2xlKGFkZHIsIG5leHQs
IHdhbGspOwo+ICAgICAgICAgICAgICAgICAgICAgICAgIGlmIChlcnIpCj4gQEAgLTYxLDkgKzYx
LDE0IEBAIHN0YXRpYyBpbnQgd2Fsa19wbWRfcmFuZ2UocHVkX3QgKnB1ZCwgdW5zaWduZWQgbG9u
ZyBhZGRyLCB1bnNpZ25lZCBsb25nIGVuZCwKPiAgICAgICAgICAgICAgICAgaWYgKCFvcHMtPnB0
ZV9lbnRyeSkKPiAgICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsKPgo+IC0gICAgICAg
ICAgICAgICBzcGxpdF9odWdlX3BtZCh3YWxrLT52bWEsIHBtZCwgYWRkcik7Cj4gLSAgICAgICAg
ICAgICAgIGlmIChwbWRfdHJhbnNfdW5zdGFibGUocG1kKSkKPiAtICAgICAgICAgICAgICAgICAg
ICAgICBnb3RvIGFnYWluOwo+ICsgICAgICAgICAgICAgICBpZiAod2Fsay0+dm1hKSB7Cj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgc3BsaXRfaHVnZV9wbWQod2Fsay0+dm1hLCBwbWQsIGFkZHIp
Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIGlmIChwbWRfdHJhbnNfdW5zdGFibGUocG1kKSkK
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gYWdhaW47Cj4gKyAgICAgICAg
ICAgICAgIH0gZWxzZSBpZiAocG1kX2xlYWYoKnBtZCkpIHsKPiArICAgICAgICAgICAgICAgICAg
ICAgICBjb250aW51ZTsKPiArICAgICAgICAgICAgICAgfQo+ICsKPiAgICAgICAgICAgICAgICAg
ZXJyID0gd2Fsa19wdGVfcmFuZ2UocG1kLCBhZGRyLCBuZXh0LCB3YWxrKTsKPiAgICAgICAgICAg
ICAgICAgaWYgKGVycikKPiAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPiBAQCAtODQs
NyArODksNyBAQCBzdGF0aWMgaW50IHdhbGtfcHVkX3JhbmdlKHA0ZF90ICpwNGQsIHVuc2lnbmVk
IGxvbmcgYWRkciwgdW5zaWduZWQgbG9uZyBlbmQsCj4gICAgICAgICBkbyB7Cj4gICBhZ2FpbjoK
PiAgICAgICAgICAgICAgICAgbmV4dCA9IHB1ZF9hZGRyX2VuZChhZGRyLCBlbmQpOwo+IC0gICAg
ICAgICAgICAgICBpZiAocHVkX25vbmUoKnB1ZCkgfHwgIXdhbGstPnZtYSkgewo+ICsgICAgICAg
ICAgICAgICBpZiAocHVkX25vbmUoKnB1ZCkpIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICBp
ZiAob3BzLT5wdGVfaG9sZSkKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVyciA9
IG9wcy0+cHRlX2hvbGUoYWRkciwgbmV4dCwgd2Fsayk7Cj4gICAgICAgICAgICAgICAgICAgICAg
ICAgaWYgKGVycikKPiBAQCAtOTgsOSArMTAzLDEzIEBAIHN0YXRpYyBpbnQgd2Fsa19wdWRfcmFu
Z2UocDRkX3QgKnA0ZCwgdW5zaWduZWQgbG9uZyBhZGRyLCB1bnNpZ25lZCBsb25nIGVuZCwKPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ICAgICAgICAgICAgICAgICB9
Cj4KPiAtICAgICAgICAgICAgICAgc3BsaXRfaHVnZV9wdWQod2Fsay0+dm1hLCBwdWQsIGFkZHIp
Owo+IC0gICAgICAgICAgICAgICBpZiAocHVkX25vbmUoKnB1ZCkpCj4gLSAgICAgICAgICAgICAg
ICAgICAgICAgZ290byBhZ2FpbjsKPiArICAgICAgICAgICAgICAgaWYgKHdhbGstPnZtYSkgewo+
ICsgICAgICAgICAgICAgICAgICAgICAgIHNwbGl0X2h1Z2VfcHVkKHdhbGstPnZtYSwgcHVkLCBh
ZGRyKTsKPiArICAgICAgICAgICAgICAgICAgICAgICBpZiAocHVkX25vbmUoKnB1ZCkpCj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBnb3RvIGFnYWluOwo+ICsgICAgICAgICAgICAg
ICB9IGVsc2UgaWYgKHB1ZF9sZWFmKCpwdWQpKSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAg
Y29udGludWU7Cj4gKyAgICAgICAgICAgICAgIH0KPgo+ICAgICAgICAgICAgICAgICBpZiAob3Bz
LT5wbWRfZW50cnkgfHwgb3BzLT5wdGVfZW50cnkpCj4gICAgICAgICAgICAgICAgICAgICAgICAg
ZXJyID0gd2Fsa19wbWRfcmFuZ2UocHVkLCBhZGRyLCBuZXh0LCB3YWxrKTsKPiAtLQo+IDIuMjAu
MQo+CgpJdCdzIGdvb2QgdG8gbWUuCgpUZXN0ZWQtYnk6IFpvbmcgTGkgPHpvbmcubGlAc2lmaXZl
LmNvbT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
