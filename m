Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D6CDEB69
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:53:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=as0ZFkVLZei9qdeQ910xyF/UX9kbM44pmtrT9t4KvTI=; b=d8aXq8o+v0zOwn
	KfwTaQDkR2DK8YmJYDt5MROtsm8tMxh9tfk2mp6S5itKxUQszWulekAsvoZueZwizyKn16U/bTM6X
	VjZlRfnuI1ovrAyYoeImvkv7tfjcT39l3BPZZcq2D6FEAtsgOUvmHLyXUOIorzLk8vUD33gi09m/1
	+Ue1+7giLATXNXF9ZKvrOeRZk/j2YQgXDSDfSCRe7++ImfnZpbWLiWF/9fvJ+Kio/uwBFymalav5X
	+f0vmmSf3sPmgfqxiTV4Y9wEw9w9kwLks19l5cj0CJhE14bKDXkPI0fTLNwC2tTyW8OYUq9SY77nx
	q5YbeHDUPRAEoHPPLaYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMWG2-0003vQ-1r; Mon, 21 Oct 2019 11:53:54 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMWFs-0003uN-1W
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:53:45 +0000
Received: by mail-wm1-x342.google.com with SMTP id r19so13002327wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 04:53:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=gt1pw+YVWT7/dtSjPazx4KZ8zuAkMJu/EEZtr/YppJ4=;
 b=PW548Q7S1ucxAGLAirhRIThSR6vhXeyQlJt/1GkEJqhFhb+x1wmN2Somtz0kPsilLJ
 GRv9wI2ob5s2YFWXIfeekILmnLr8SAfxd3Pi5nCIsCTg/Wy4nVxz/LuqqK9Qck4qtAhH
 RSJx2EACue5lXH68etee39b7Kn4drVB9WgVTbSruHJ2Re0WAPNMn1RegI5Lfe7w0B7gE
 NxtbhRn7DwmedhoyjkaLEQMQQXDozzE/wQuM3li9rABXirDW3ZbHZ5XAl3nAUPTEGrwq
 iGKKGuCgR9tdE22vTkzO7geM9U6DqcE0vTQ1xDFNIwbSorzZlU6BKh/ZXGCkuRFkjBj8
 fXEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=gt1pw+YVWT7/dtSjPazx4KZ8zuAkMJu/EEZtr/YppJ4=;
 b=QpkO20jZBz8WYxeqOLlhvVDHb82eaX9+qlpb9EEDa5ufEdqdfA0OEIJOsN1v5DT9fY
 1M0hrtH1iHgrW9RTDVTO5xmKg9ZrdePcOJTji5kwXoracpKFq+Xn+FOOWQuZw4E12Uqh
 qpMBS6yA3Y4ZefeRik70VT58E8+3li2yoK6CD0mcABeJBQEfcsT9t0arZACnKeP46QpH
 ne8urIq5tIjXZfUa04v+8HUaG0s5i+UrJrgukp1Pkk26ZVSwtbvQu9QmBu4T/QgfVlyF
 Va7LtNc7A8io3SV4+lLpoJyTm2dmU04qrjZaH3eJCQ3Z4Kjlu51ufKe30jhMtc8bSaEn
 ZIlQ==
X-Gm-Message-State: APjAAAXRPOhif3Sw8ThIkuPzz/FTxerSHlQSxvnjYMp3wbSf9r4k1jEu
 N/zT4gueiyXinCAhoMCTMp7d5Q==
X-Google-Smtp-Source: APXvYqw2RzfTvxPIekgfd9ydtKYE1bADmPmuJnFLPw0eQVY/hpfGQwr4dItAV4gPrFqutZU8JEE7Kw==
X-Received: by 2002:a1c:4e15:: with SMTP id g21mr17623911wmh.148.1571658821037; 
 Mon, 21 Oct 2019 04:53:41 -0700 (PDT)
Received: from dell ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id v10sm7531052wrm.26.2019.10.21.04.53.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 21 Oct 2019 04:53:40 -0700 (PDT)
Date: Mon, 21 Oct 2019 12:53:39 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH v2 0/9] Simplify MFD Core
Message-ID: <20191021115339.GF4365@dell>
References: <20191021105822.20271-1-lee.jones@linaro.org>
 <CAK8P3a10w9Xg6U8EgUqPLbucP3A0wc9xO_WNG06LxHrsZkZc1g@mail.gmail.com>
 <e5e7695cc82b4370752f45082be007dbe410c74c.camel@v3.sk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e5e7695cc82b4370752f45082be007dbe410c74c.camel@v3.sk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_045344_088651_5864699B 
X-CRM114-Status: GOOD (  22.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
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
Cc: Barry Song <baohua@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 stephan@gerhold.net, Linus Walleij <linus.walleij@linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Daniel Drake <drake@endlessm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 James Cameron <quozl@laptop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyMSBPY3QgMjAxOSwgTHVib21pciBSaW50ZWwgd3JvdGU6Cgo+IE9uIE1vbiwgMjAx
OS0xMC0yMSBhdCAxMzoyOSArMDIwMCwgQXJuZCBCZXJnbWFubiB3cm90ZToKPiA+IE9uIE1vbiwg
T2N0IDIxLCAyMDE5IGF0IDEyOjU4IFBNIExlZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+
IHdyb3RlOgo+ID4gPiBNRkQgY3VycmVudGx5IGhhcyBvbmUgb3Zlci1jb21wbGljYXRlZCB1c2Vy
LiAgQ1M1NTM1IHVzZXMgYSBtaXh0dXJlIG9mCj4gPiA+IGNlbGwgY2xvbmluZywgcmVmZXJlbmNl
IGNvdW50aW5nIGFuZCBzdWJzeXN0ZW0tbGV2ZWwgY2FsbC1iYWNrcyB0bwo+ID4gPiBhY2hpZXZl
IGl0cyBnb2FsIG9mIHJlcXVlc3RpbmcgYW4gSU8gbWVtb3J5IHJlZ2lvbiBvbmx5IG9uY2UgYWNy
b3NzIDMKPiA+ID4gY29uc3VtZXJzLiAgVGhlIHNhbWUgY2FuIGJlIGFjaGlldmVkIGJ5IGhhbmRs
aW5nIHRoZSByZWdpb24gY2VudHJhbGx5Cj4gPiA+IGR1cmluZyB0aGUgcGFyZW50IGRldmljZSdz
IC5wcm9iZSgpIHNlcXVlbmNlLiAgUmVsZWFzaW5nIGNhbiBiZSBoYW5kZWQKPiA+ID4gaW4gYSBz
aW1pbGFyIHdheSBkdXJpbmcgLnJlbW92ZSgpLgo+ID4gPiAKPiA+ID4gV2hpbGUgd2UncmUgaGVy
ZSwgdGFrZSB0aGUgb3Bwb3J0dW5pdHkgdG8gcHJvdmlkZSBzb21lIGNsZWFuLXVwcyBhbmQKPiA+
ID4gZXJyb3IgY2hlY2tpbmcgdG8gaXNzdWVzIG5vdGljZWQgYWxvbmcgdGhlIHdheS4KPiA+ID4g
Cj4gPiA+IFRoaXMgYWxzbyBwYXZlcyB0aGUgd2F5IGZvciBjbGVhbiBjZWxsIGRpc2FibGluZyB2
aWEgRGV2aWNlIFRyZWUgYmVpbmcKPiA+ID4gZGlzY3Vzc2VkIGF0IFswXQo+ID4gPiAKPiA+ID4g
WzBdIGh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDE5LzEwLzE4LzYxMi4KPiA+IAo+ID4gQXMgdGhl
IENTNTUzNSBpcyBwcmltYXJpbHkgdXNlZCBvbiB0aGUgT0xQQyBYTzEsIGl0IHdvdWxkIGJlCj4g
PiBnb29kIHRvIGhhdmUgc29tZW9uZSB0ZXN0IHRoZSBzZXJpZXMgb24gc3VjaCBhIG1hY2hpbmUu
Cj4gPiAKPiA+IEkndmUgYWRkZWQgYSBmZXcgcGVvcGxlIHRvIENjIHRoYXQgbWF5IGJlIGFibGUg
dG8gaGVscCB0ZXN0IGl0LCBvcgo+ID4ga25vdyBzb21lb25lIHdobyBjYW4uCj4gPiAKPiA+IEZv
ciB0aGUgYWN0dWFsIHBhdGNoZXMsIHNlZQo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGtt
bC8yMDE5MTAyMTEwNTgyMi4yMDI3MS0xLWxlZS5qb25lc0BsaW5hcm8ub3JnL1QvI3QKPiAKPiBU
aGFua3MgZm9yIHRoZSBwb2ludGVyLiBJJ2QgYnkgaGFwcHkgdG8gdGVzdCB0aGlzLgo+IAo+IFdo
aWNoIHRyZWUgZG8gdGhlIHBhdGNoZXMgYXBwbHkgdG8/Cj4gT3IsIGJldHRlciwgaXMgdGhlcmUg
YSB0cmVlIHdpdGggdGhlIHBhdGNoZXMgYXBwbGllZCB0aGF0IEkgY291bGQgdXNlPwoKSWRlYWwu
ICBUaGFuayB5b3UuCgpodHRwOi8vZ2l0LmxpbmFyby5vcmcvcGVvcGxlL2xlZS5qb25lcy9saW51
eC5naXQvbG9nLz9oPXRvcGljL21mZC1yZW1vdmUtY2xvbmUtY3M1NTM1LW1mZAoKPiA+ID4gTGVl
IEpvbmVzICg5KToKPiA+ID4gICBtZmQ6IGNzNTUzNS1tZmQ6IFVzZSBQTEFURk9STV9ERVZJRF8q
IGRlZmluZXMgYW5kIHRpZHkgZXJyb3IgbWVzc2FnZQo+ID4gPiAgIG1mZDogY3M1NTM1LW1mZDog
UmVtb3ZlIG1mZF9jZWxsLT5pZCBoYWNrCj4gPiA+ICAgbWZkOiBjczU1MzUtbWZkOiBSZXF1ZXN0
IHNoYXJlZCBJTyByZWdpb25zIGNlbnRyYWxseQo+ID4gPiAgIG1mZDogY3M1NTM1LW1mZDogUmVn
aXN0ZXIgY2xpZW50cyB1c2luZyB0aGVpciBvd24gZGVkaWNhdGVkIE1GRCBjZWxsCj4gPiA+ICAg
ICBlbnRyaWVzCj4gPiA+ICAgbWZkOiBtZmQtY29yZTogUmVtb3ZlIG1mZF9jbG9uZV9jZWxsKCkK
PiA+ID4gICB4ODY6IG9scGM6IFJlbW92ZSBpbnZvY2F0aW9uIG9mIE1GRCdzIC5lbmFibGUoKS8u
ZGlzYWJsZSgpIGNhbGwtYmFja3MKPiA+ID4gICBtZmQ6IG1mZC1jb3JlOiBQcm90ZWN0IGFnYWlu
c3QgTlVMTCBjYWxsLWJhY2sgZnVuY3Rpb24gcG9pbnRlcgo+ID4gPiAgIG1mZDogbWZkLWNvcmU6
IFJlbW92ZSB1c2FnZSBjb3VudGluZyBmb3IgLntlbixkaXN9YWJsZSgpIGNhbGwtYmFja3MKPiA+
ID4gICBtZmQ6IG1mZC1jb3JlOiBNb3ZlIHBkZXYtPm1mZF9jZWxsIGNyZWF0aW9uIGJhY2sgaW50
byBtZmRfYWRkX2RldmljZSgpCj4gPiA+IAo+ID4gPiAgYXJjaC94ODYvcGxhdGZvcm0vb2xwYy9v
bHBjLXhvMS1wbS5jIHwgICA2IC0tCj4gPiA+ICBkcml2ZXJzL21mZC9jczU1MzUtbWZkLmMgICAg
ICAgICAgICAgfCAxMjQgKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tCj4gPiA+ICBkcml2ZXJz
L21mZC9tZmQtY29yZS5jICAgICAgICAgICAgICAgfCAxMTMgKysrKy0tLS0tLS0tLS0tLS0tLS0t
LS0tCj4gPiA+ICBpbmNsdWRlL2xpbnV4L21mZC9jb3JlLmggICAgICAgICAgICAgfCAgMjAgLS0t
LS0KPiA+ID4gIDQgZmlsZXMgY2hhbmdlZCwgNzkgaW5zZXJ0aW9ucygrKSwgMTg0IGRlbGV0aW9u
cygtKQo+ID4gPiAKPiAKCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2Vz
IFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBB
Uk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
