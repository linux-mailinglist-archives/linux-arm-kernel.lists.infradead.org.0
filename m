Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA2D48652
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 17:00:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Bi/1uUhFwta90nkPdXI9iuNLZNpc8c2wopWz6XRdCE0=; b=JLWOMWQVNFIlaSlCkErJiCmEvv
	ibBxrS8FDDtFHngCNzBGrl6mtTbHCH4nHY9TtLVXn6ssPX8W2JXWkJvCtSmULMl0mIRHmwQwJ9kTW
	SltC5r6MUgv+nnUL4CEOQ8CVoiE961McfVaHGan5jAJKI9ol4J6zndXFzwl1Fz2H/1KT5pTGK4CiE
	P4N6g4vZnPku8ATJiI8b36hWjEgO8UdGsPGL4YaZHjD+3lsgg2huTK28yblZlY/VHhkt4Z4u5l8L+
	7aOKu1ySu+HybUPC/sv7II+FJNNaPkqGawfWaPmsa3mrYfR21gK79tYZGzojFQ/w2INHiplcGkSiM
	lgy4BYzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hct7K-0003Jc-GC; Mon, 17 Jun 2019 15:00:18 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hct6w-00033j-DP
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 14:59:56 +0000
Received: by mail-wm1-x344.google.com with SMTP id w9so165159wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 07:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version:content-transfer-encoding;
 bh=ghbiEfQ6eCAvNR3r+RTqQOdACpqT5ffcn6cO7EYSCQI=;
 b=ingREZ1HqUKGlmG/guNYSpiJDuTNDsJ0go8J5yZCMurHP+Uu7wXwE1G75cLSbhlL3v
 qLsZT+UPiey6CH1QT59tUW9FgGrUOe0UToIOB9AnuRaqf/W+WIKzVgmH/FkL7ZdB1AAe
 c44+xWbOLjf2mCDY2E1y7GRWm4xvzmsDS1U7bROepRkLzIzbhaV09+ylFsWix8vF6Te3
 pgopenGGUoCzG9iMGp3U3HZLVESHEdn3nZtBbKOCAWf60sP6cmtDtsvf6bmezTktY4/8
 yZSfXxvOaE7uX9/+5O3mUiOz/ExnSgNpxTlwWz2JXVRiBgvq4Wch/RUA3yO7VaG3PELG
 Bk5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version:content-transfer-encoding;
 bh=ghbiEfQ6eCAvNR3r+RTqQOdACpqT5ffcn6cO7EYSCQI=;
 b=ZODTAgL2QAOT+jj3YVAaoNtr6oyopobI9HHvlt/wsQ6XYlAbCIzmkv9V+UxzF1pj7J
 +Sgg9ppahWXQpib2TJamey8JKLUKQQqs0vDzBdtfIxw5+4wx2zW4pzGExW8W4KR18Vmw
 sWEVApawb7087rXW5KrcpAdJWeKXGDgJaU/ShgN3B96GLO7kD0+DPdkPhFy8e4DpVO0H
 yYc/l1cwKQQFHkt/5vqleePgjorbugbDKLCHR4U/k1864oba/X3oqswLcg+h9xDnNfwz
 ddBH0ZtkXbiJP2Fp6EURpCvJ7itSVyh078DKTgyiQd7PxpsdABMFzIP844yeIrprsMOh
 Gxgg==
X-Gm-Message-State: APjAAAUqHSxhm8Up2JbWPFHvfUM3WD6IuIjMpcWCXv61B+Z8d5YnRAnU
 E1Ymt8vKgVCQ83PnWYGKcMtZhA==
X-Google-Smtp-Source: APXvYqzyEjO+Stva9Hk5FhGPLNeui4HWadt++cOLvSfgor8T/7IhZMEgLGDRVw8RCUNOBQHGwAp6pw==
X-Received: by 2002:a1c:f918:: with SMTP id x24mr12940842wmh.132.1560783592558; 
 Mon, 17 Jun 2019 07:59:52 -0700 (PDT)
Received: from zen.linaroharston ([81.128.185.34])
 by smtp.gmail.com with ESMTPSA id r2sm16240349wma.26.2019.06.17.07.59.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 17 Jun 2019 07:59:51 -0700 (PDT)
Received: from zen (localhost [127.0.0.1])
 by zen.linaroharston (Postfix) with ESMTP id 993AE1FF87;
 Mon, 17 Jun 2019 15:59:51 +0100 (BST)
References: <20190617104237.2082388-1-arnd@arndb.de>
 <20190617112652.GB30800@fuggles.cambridge.arm.com>
 <CAK8P3a2aJNiLTyfRDqazJa2sAc-Jf-QShSZ7+4-whHSxKbLUVQ@mail.gmail.com>
User-agent: mu4e 1.3.2; emacs 26.1
From: Alex =?utf-8?Q?Benn=C3=A9e?= <alex.bennee@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] arm64/sve: fix genksyms generation
In-reply-to: <CAK8P3a2aJNiLTyfRDqazJa2sAc-Jf-QShSZ7+4-whHSxKbLUVQ@mail.gmail.com>
Date: Mon, 17 Jun 2019 15:59:51 +0100
Message-ID: <87a7eg9s0o.fsf@zen.linaroharston>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_075954_454179_4CC422C2 
X-CRM114-Status: GOOD (  27.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Julien Grall <julien.grall@arm.com>, Alan Hayward <alan.hayward@arm.com>,
 Andrew Murray <andrew.murray@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+IHdyaXRlczoKCj4gT24gTW9uLCBKdW4gMTcs
IDIwMTkgYXQgMToyNiBQTSBXaWxsIERlYWNvbiA8d2lsbC5kZWFjb25AYXJtLmNvbT4gd3JvdGU6
Cj4+Cj4+IEhpIEFybmQsCj4+Cj4+IE9uIE1vbiwgSnVuIDE3LCAyMDE5IGF0IDEyOjQyOjExUE0g
KzAyMDAsIEFybmQgQmVyZ21hbm4gd3JvdGU6Cj4+ID4gZ2Vua3N5bXMgZG9lcyBub3QgdW5kZXJz
dGFuZCBfX3VpbnQxMjhfdCwgc28gd2UgZ2V0IGEgYnVpbGQgZmFpbHVyZQo+PiA+IGluIHRoZSBm
cHNpbWQgbW9kdWxlIHdoZW4gaXQgY2Fubm90IGV4cG9ydCBhIHN5bWJvbCByaWdodDoKPj4KPj4g
VGhlIGZwc2ltZCBjb2RlIGlzIGJ1aWx0aW4sIHNvIHdoaWNoIG1vZHVsZSBpcyBhY3R1YWxseSBm
YWlsaW5nPyBNeQo+PiBhbGxtb2Rjb25maWcgYnVpbGQgc3VjY2VlZHMsIHNvIEkgbXVzdCBiZSBt
aXNzaW5nIHNvbWV0aGluZy4KPgo+IEl0IGhhcHBlbmVkIGZvciBtZSBvbiByYW5kY29uZmlnIGJ1
aWxkcywgeW91IGNhbiBmaW5kIG9uZSBzdWNoIGNvbmZpZ3VyYXRpb24KPiBhdCBodHRwczovL3Bh
c3RlYmluLmNvbS9jVThpUTR0YSBub3cuIEkgd2FzIGJ1aWxkaW5nIHRoaXMgd2l0aCBjbGFuZwo+
IHJhdGhlciB0aGFuIGdjYywgd2hpY2ggbWF5IGFmZmVjdCB0aGUgaXNzdWUsIGJ1dCBJIGFzc3Vt
ZWQgbm90Lgo+Cj4+ID4gV0FSTklORzogRVhQT1JUIHN5bWJvbCAia2VybmVsX25lb25fYmVnaW4i
IFt2bWxpbnV4XSB2ZXJzaW9uIGdlbmVyYXRpb24gZmFpbGVkLCBzeW1ib2wgd2lsbCBub3QgYmUg
dmVyc2lvbmVkLgo+PiA+IC9ob21lL2FybmQvY3Jvc3MveDg2XzY0L2djYy04LjEuMC1ub2xpYmMv
YWFyY2g2NC1saW51eC9iaW4vYWFyY2g2NC1saW51eC1sZDogYXJjaC9hcm02NC9rZXJuZWwvZnBz
aW1kLm86IHJlbG9jYXRpb24gUl9BQVJDSDY0X0FCUzMyIGFnYWluc3QgYF9fY3JjX2tlcm5lbF9u
ZW9uX2JlZ2luJyBjYW4gbm90IGJlIHVzZWQgd2hlbiBtYWtpbmcgYSBzaGFyZWQgb2JqZWN0Cj4+
ID4gYXJjaC9hcm02NC9rZXJuZWwvZnBzaW1kLm86KC5kYXRhKzB4MCk6IGRhbmdlcm91cyByZWxv
Y2F0aW9uOiB1bnN1cHBvcnRlZCByZWxvY2F0aW9uCj4+ID4gYXJjaC9hcm02NC9rZXJuZWwvZnBz
aW1kLm86KCIuZGlzY2FyZC5hZGRyZXNzYWJsZSIrMHgwKTogZGFuZ2Vyb3VzIHJlbG9jYXRpb246
IHVuc3VwcG9ydGVkIHJlbG9jYXRpb24KPj4gPiBhcmNoL2FybTY0L2tlcm5lbC9mcHNpbWQubzoo
Ii5kaXNjYXJkLmFkZHJlc3NhYmxlIisweDgpOiBkYW5nZXJvdXMgcmVsb2NhdGlvbjogdW5zdXBw
b3J0ZWQgcmVsb2NhdGlvbgo+PiA+Cj4+ID4gV2UgY291bGQgdGVhY2ggZ2Vua3N5bXMgYWJvdXQg
dGhlIHR5cGUsIGJ1dCBpdCdzIGVhc2llciB0byBqdXN0Cj4+ID4gd29yayBhcm91bmQgaXQgYnkg
ZGVmaW5pbmcgdGhhdCB0eXBlIGxvY2FsbHkgaW4gYSB3YXkgdGhhdCBnZW5rc3ltcwo+PiA+IHVu
ZGVyc3RhbmRzLgo+PiA+Cj4+ID4gRml4ZXM6IDQxMDQwY2Y3YzVmMCAoImFybTY0L3N2ZTogRml4
IG1pc3NpbmcgU1ZFL0ZQU0lNRCBlbmRpYW5uZXNzIGNvbnZlcnNpb25zIikKPj4KPj4gSSBjYW4n
dCBzZWUgd2hpY2ggcGFydCBvZiB0aGF0IHBhdGNoIGNhdXNlcyB0aGUgcHJvYmxlbSwgc28gSSdt
IGEgYml0IHdhcnkKPj4gb2YgdGhlIGZpeC4gV2UndmUgYmVlbiB1c2luZyBfX3VpbnQxMjhfdCBm
b3IgYSB3aGlsZSBub3csIGFuZCBJIHNlZSB0aGVyZSdzCj4+IG9uZSBpbiB0aGUgeDg2IGt2bSBj
b2RlIGFzIHdlbGwsIHNvIGl0IHdvdWxkIGJlIG5pY2UgdG8gdW5kZXJzdGFuZCB3aGF0J3MKPj4g
aGFwcGVuaW5nIGhlcmUgc28gdGhhdCB3ZSBjYW4gYXZvaWQgcnVubmluZyBpbnRvIGl0IGluIGZ1
dHVyZSBhcyB3ZWxsLgo+Cj4gVGhlIHByb2JsZW0gaXMgb25seSBpbiBmaWxlcyB0aGF0IGV4cG9y
dCBhIHN5bWJvbC4gVGhpcyBpcyBhbHNvIHRoZQo+IGNhc2UgaW4gYXJjaC94ODYva2VybmVsL2t2
bS5jLCBidXQgaXQgbWF5IGJlIGx1Y2t5IGJlY2F1c2UgdGhlCj4gdHlwZSBvbmx5IGFwcGVhcnMg
L2FmdGVyLyB0aGUgbGFzdCBleHBvcnQgaW4gdGhhdCBmaWxlLgo+Cj4+ID4gU2lnbmVkLW9mZi1i
eTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KPj4gPiAtLS0KPj4gPiAgYXJjaC9hcm02
NC9rZXJuZWwvZnBzaW1kLmMgfCAzICsrKwo+PiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRp
b25zKCspCj4+ID4KPj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJuZWwvZnBzaW1kLmMg
Yi9hcmNoL2FybTY0L2tlcm5lbC9mcHNpbWQuYwo+PiA+IGluZGV4IDA3ZjIzOGVmNDdhZS4uMmFi
YTA3Y2NjZjUwIDEwMDY0NAo+PiA+IC0tLSBhL2FyY2gvYXJtNjQva2VybmVsL2Zwc2ltZC5jCj4+
ID4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvZnBzaW1kLmMKPj4gPiBAQCAtNDAwLDYgKzQwMCw5
IEBAIHN0YXRpYyBpbnQgX19pbml0IHN2ZV9zeXNjdGxfaW5pdCh2b2lkKSB7IHJldHVybiAwOyB9
Cj4+ID4gICNkZWZpbmUgWlJFRyhzdmVfc3RhdGUsIHZxLCBuKSAoKGNoYXIgKikoc3ZlX3N0YXRl
KSArICAgICAgICAgICAgICAgIFwKPj4gPiAgICAgICAoU1ZFX1NJR19aUkVHX09GRlNFVCh2cSwg
bikgLSBTVkVfU0lHX1JFR1NfT0ZGU0VUKSkKPj4gPgo+PiA+ICsjaWZkZWYgX19HRU5LU1lNU19f
Cj4+ID4gK3R5cGVkZWYgX191NjQgX191aW50MTI4X3RbMl07Cj4+ID4gKyNlbmRpZgo+Pgo+PiBJ
IHN1c3BlY3QgSSBuZWVkIHRvIGZpZ3VyZSBvdXQgd2hhdCBnZW5rc3ltcyBpcyBkb2luZywgYnV0
IEknbSBuZXJ2b3VzCj4+IGFib3V0IGV4cG9zaW5nIHRoaXMgYXMgYW4gYXJyYXkgdHlwZSB3aXRo
b3V0IHVuZGVyc3RhbmRpbmcgd2hldGhlciBvcgo+PiBub3QgdGhhdCBoYXMgY29uc2VxdWVuY2Vz
IGZvciBpdHMgb3BlcmF0aW9uLgo+Cj4gVGhlIGVudGlyZSBwb2ludCBpcyBnZW5rc3ltcyBpcyB0
byBlbnN1cmUgdGhhdCB0eXBlcyBvZiBleHBvcnRlZCBzeW1ib2xzCj4gYXJlIGNvbXBhdGlibGUu
IFRvIGRvIHRoaXMsIGl0IGhhcyBhIGxpbWl0ZWQgcGFyc2VyIGZvciBDIHNvdXJjZSBjb2RlIHRo
YXQKPiB1bmRlcnN0YW5kcyB0aGUgYmFzaWMgdHlwZXMgKGNoYXIsIGludCwgbG9uZywgX0Jvb2ws
IGV0YykgYW5kIGhvdyB0bwo+IGFnZ3JlZ2F0ZSB0aGVtIGludG8gc3RydWN0cyBhbmQgZnVuY3Rp
b24gYXJndW1lbnRzLiBUaGlzIHByb2Nlc3MgaGFzCj4gYWx3YXlzIGJlZW4gZnJhZ2lsZSwgYW5k
IGl0IGNsZWFybHkgYnJlYWtzIHdoZW4gaXQgZmFpbHMgdG8gdW5kZXJzdGFuZCBhCj4gcGFydGlj
dWxhciB0eXBlLgoKU2hvdWxkbid0IHRoZSBzb2x1dGlvbiBmb3IgdGhpcyBiZSB0byBmaXggZ2Vu
a3N5bXMgdG8gYmUgbGVzcyBmcmFnaWxlCmFuZCBtb3JlIHVuZGVyc3RhbmRpbmc/IFRoZSBjb2Rl
IGJhc2UgZG9lc24ndCBzZWVtIHRvIGJlIGZ1bGwgb2YgdGhlc2UKc29ydHMgb2YgaWZkZWYgd29y
a2Fyb3VuZHMuCgo+Cj4gICAgICAgICAgIEFybmQKCgotLQpBbGV4IEJlbm7DqWUKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
