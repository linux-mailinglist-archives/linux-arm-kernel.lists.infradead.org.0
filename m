Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73773E3369
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 15:06:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rpa8o73O22hhl9vfIpHPRKI1HuK/y/Mcgd9GqM6ee5w=; b=pOlcRG2P27JdH3
	SmbTrZC+U5bA2pqK9xiNAAI+8teBvlXpR17Ahwl5VfPeRaLoIh0D6nY33Zni6Z5lgzN0czf3xY3NU
	EhtdQ0BiJ/8jQIdTJK6WIgXqpWq34CC8viLV0MMLojJwpW41Bk7cXJCQ1Yz743AgH6U14TucXOpez
	x5OFaTFUiZivwtm59D6GQpNX+W8O7Pp1idPdc063UrWBRw0fo7a24K6tJu/7Wq+DmuZzOC7Iv47bl
	z5OkR/O6rEAK6XeqahHYRT0zeWQaZb5VuzZbqsuZivcAuZBJtJSd1+SBMH1T1Y/095mxTmvk02aWz
	RoepmtdF+DTUQZfnW/Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNcpH-0001cy-Tc; Thu, 24 Oct 2019 13:06:51 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNcp5-0001cQ-0b
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 13:06:40 +0000
Received: by mail-lf1-x141.google.com with SMTP id v8so18508265lfa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 06:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=HDI1nMpN8cFss4OwSUFkCMchIJFxmoHYUy+Ih0fewHU=;
 b=aoticqknGS4hVpEf8tkwGg+bleUukTVXvfVLJTxI90RUTbPJ5Q9xNJ+xkQm55yZvxI
 AOVRhD7HbgRi29Elo40E9ltluUbz0DeUsPAPogsGTEXbd6oet2qBNt+nN3CQhC5uVS3H
 faS8ugVOL5fySQFEZzZg5GHg+4N385CqIGUtW6tVcOokhfwfISQBj+DTCT71YV1N6xIO
 aBqBs36ywc8f6oD7pyyDtADBbRq+K3uGxhtrXYK4516KviInn2P9IwU3OkMZQflcNJmp
 NZljDflPC2r+EIcKv8uk0ccx4WHEnniJkQtThEDf5Wey4GrTJDeY4Iv+RJZhfM6jHLYN
 piUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HDI1nMpN8cFss4OwSUFkCMchIJFxmoHYUy+Ih0fewHU=;
 b=tkAZxEXO1U0i8OhGp1MAd/AdAJ1rrT6NT1XHl6Sv9tI9MHMDEVqogB3l79PBRMgOc9
 aKxYmkopGgzQrKJcxiygtCE7FiZAFjxN6Ibtr6zbOyHi2MDSsLormR+k56hiNK1lwu3k
 N9xDs+JbuS1cvsyE75bappU2bOL/3QB0igdzMvhMxKHlfHZyuJ+/FQDkn7LFGI+dOubX
 RB0Js2KsTARZ/Gk8C0fps1lO0c4KoB4+6Z/ww4YzZEgTt6seinKvaJwhtsC8ZGpB8fjM
 qDC78Cvj8ZHTAWBOZcWOycm2hjwYTnASDOxeC7izPuMQa02/ZwVvczp5eWU/YdtlVWIu
 TWMA==
X-Gm-Message-State: APjAAAV85XP/lyNIeqHvXZipKod/tZCERh51PHlhKso8N1QaptNRxKvZ
 VMWEflhhbm+JKdG+CEzwS3hfPxnXdUU9arMJXqw=
X-Google-Smtp-Source: APXvYqx8YXIxrwmTEpKXWITnQbu1h5M4d0TVoM9rBpsl5zJVo47ouTa6cTDmUbarEsDlDPx7JrS89w2MervyEJbX/28=
X-Received: by 2002:a19:40cf:: with SMTP id
 n198mr19674953lfa.189.1571922397191; 
 Thu, 24 Oct 2019 06:06:37 -0700 (PDT)
MIME-Version: 1.0
References: <20191018101248.33727-1-steven.price@arm.com>
 <20191018101248.33727-14-steven.price@arm.com>
In-Reply-To: <20191018101248.33727-14-steven.price@arm.com>
From: Zong Li <zongbox@gmail.com>
Date: Thu, 24 Oct 2019 21:06:25 +0800
Message-ID: <CA+ZOyahE7Z8jw60iu__wE5eeBSvmE57eAY8XY4q3fDdJb6gDrQ@mail.gmail.com>
Subject: Re: [PATCH v12 13/22] mm: pagewalk: Add test_p?d callbacks
To: Steven Price <steven.price@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_060639_059906_903E2D5D 
X-CRM114-Status: GOOD (  19.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
IOmAseWFrSDkuIvljYg0OjEy5a+r6YGT77yaCj4KPiBJdCBpcyB1c2VmdWwgdG8gYmUgYWJsZSB0
byBza2lwIHBhcnRzIG9mIHRoZSBwYWdlIHRhYmxlIHRyZWUgZXZlbiB3aGVuCj4gd2Fsa2luZyB3
aXRob3V0IFZNQXMuIEFkZCB0ZXN0X3A/ZCBjYWxsYmFja3Mgc2ltaWxhciB0byB0ZXN0X3dhbGsg
YnV0Cj4gd2hpY2ggYXJlIGNhbGxlZCBqdXN0IGJlZm9yZSBhIHRhYmxlIGF0IHRoYXQgbGV2ZWwg
aXMgd2Fsa2VkLiBJZiB0aGUKPiBjYWxsYmFjayByZXR1cm5zIG5vbi16ZXJvIHRoZW4gdGhlIGVu
dGlyZSB0YWJsZSBpcyBza2lwcGVkLgo+Cj4gU2lnbmVkLW9mZi1ieTogU3RldmVuIFByaWNlIDxz
dGV2ZW4ucHJpY2VAYXJtLmNvbT4KPiAtLS0KPiAgaW5jbHVkZS9saW51eC9wYWdld2Fsay5oIHwg
MTEgKysrKysrKysrKysKPiAgbW0vcGFnZXdhbGsuYyAgICAgICAgICAgIHwgMjQgKysrKysrKysr
KysrKysrKysrKysrKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgMzUgaW5zZXJ0aW9ucygrKQo+Cj4g
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvcGFnZXdhbGsuaCBiL2luY2x1ZGUvbGludXgvcGFn
ZXdhbGsuaAo+IGluZGV4IDEyMDA0YjA5N2VhZS4uZGY0MjQxOTdhMjVhIDEwMDY0NAo+IC0tLSBh
L2luY2x1ZGUvbGludXgvcGFnZXdhbGsuaAo+ICsrKyBiL2luY2x1ZGUvbGludXgvcGFnZXdhbGsu
aAo+IEBAIC0yNCw2ICsyNCwxMSBAQCBzdHJ1Y3QgbW1fd2FsazsKPiAgICogICAgICAgICAgICAg
ICAgICAgICAiZG8gcGFnZSB0YWJsZSB3YWxrIG92ZXIgdGhlIGN1cnJlbnQgdm1hIiwgcmV0dXJu
aW5nCj4gICAqICAgICAgICAgICAgICAgICAgICAgYSBuZWdhdGl2ZSB2YWx1ZSBtZWFucyAiYWJv
cnQgY3VycmVudCBwYWdlIHRhYmxlIHdhbGsKPiAgICogICAgICAgICAgICAgICAgICAgICByaWdo
dCBub3ciIGFuZCByZXR1cm5pbmcgMSBtZWFucyAic2tpcCB0aGUgY3VycmVudCB2bWEiCj4gKyAq
IEB0ZXN0X3BtZDogICAgICAgICAgc2ltaWxhciB0byB0ZXN0X3dhbGsoKSwgYnV0IGNhbGxlZCBm
b3IgZXZlcnkgcG1kLgo+ICsgKiBAdGVzdF9wdWQ6ICAgICAgICAgIHNpbWlsYXIgdG8gdGVzdF93
YWxrKCksIGJ1dCBjYWxsZWQgZm9yIGV2ZXJ5IHB1ZC4KPiArICogQHRlc3RfcDRkOiAgICAgICAg
ICBzaW1pbGFyIHRvIHRlc3Rfd2FsaygpLCBidXQgY2FsbGVkIGZvciBldmVyeSBwNGQuCj4gKyAq
ICAgICAgICAgICAgICAgICAgICAgUmV0dXJuaW5nIDAgbWVhbnMgd2FsayB0aGlzIHBhcnQgb2Yg
dGhlIHBhZ2UgdGFibGVzLAo+ICsgKiAgICAgICAgICAgICAgICAgICAgIHJldHVybmluZyAxIG1l
YW5zIHRvIHNraXAgdGhpcyByYW5nZS4KPiAgICoKPiAgICogcD9kX2VudHJ5IGNhbGxiYWNrcyBh
cmUgY2FsbGVkIGV2ZW4gaWYgdGhvc2UgbGV2ZWxzIGFyZSBmb2xkZWQgb24gYQo+ICAgKiBwYXJ0
aWN1bGFyIGFyY2hpdGVjdHVyZS9jb25maWd1cmF0aW9uLgo+IEBAIC00Niw2ICs1MSwxMiBAQCBz
dHJ1Y3QgbW1fd2Fsa19vcHMgewo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0
IG1tX3dhbGsgKndhbGspOwo+ICAgICAgICAgaW50ICgqdGVzdF93YWxrKSh1bnNpZ25lZCBsb25n
IGFkZHIsIHVuc2lnbmVkIGxvbmcgbmV4dCwKPiAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1
Y3QgbW1fd2FsayAqd2Fsayk7Cj4gKyAgICAgICBpbnQgKCp0ZXN0X3BtZCkodW5zaWduZWQgbG9u
ZyBhZGRyLCB1bnNpZ25lZCBsb25nIG5leHQsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgcG1k
X3QgKnBtZF9zdGFydCwgc3RydWN0IG1tX3dhbGsgKndhbGspOwo+ICsgICAgICAgaW50ICgqdGVz
dF9wdWQpKHVuc2lnbmVkIGxvbmcgYWRkciwgdW5zaWduZWQgbG9uZyBuZXh0LAo+ICsgICAgICAg
ICAgICAgICAgICAgICAgIHB1ZF90ICpwdWRfc3RhcnQsIHN0cnVjdCBtbV93YWxrICp3YWxrKTsK
PiArICAgICAgIGludCAoKnRlc3RfcDRkKSh1bnNpZ25lZCBsb25nIGFkZHIsIHVuc2lnbmVkIGxv
bmcgbmV4dCwKPiArICAgICAgICAgICAgICAgICAgICAgICBwNGRfdCAqcDRkX3N0YXJ0LCBzdHJ1
Y3QgbW1fd2FsayAqd2Fsayk7Cj4gIH07Cj4KPiAgLyoqCj4gZGlmZiAtLWdpdCBhL21tL3BhZ2V3
YWxrLmMgYi9tbS9wYWdld2Fsay5jCj4gaW5kZXggNDEzOWU5MTYzYWVlLi40M2FjZmZlZmQ0M2Yg
MTAwNjQ0Cj4gLS0tIGEvbW0vcGFnZXdhbGsuYwo+ICsrKyBiL21tL3BhZ2V3YWxrLmMKPiBAQCAt
MzQsNiArMzQsMTQgQEAgc3RhdGljIGludCB3YWxrX3BtZF9yYW5nZShwdWRfdCAqcHVkLCB1bnNp
Z25lZCBsb25nIGFkZHIsIHVuc2lnbmVkIGxvbmcgZW5kLAo+ICAgICAgICAgY29uc3Qgc3RydWN0
IG1tX3dhbGtfb3BzICpvcHMgPSB3YWxrLT5vcHM7Cj4gICAgICAgICBpbnQgZXJyID0gMDsKPgo+
ICsgICAgICAgaWYgKG9wcy0+dGVzdF9wbWQpIHsKPiArICAgICAgICAgICAgICAgZXJyID0gb3Bz
LT50ZXN0X3BtZChhZGRyLCBlbmQsIHBtZF9vZmZzZXQocHVkLCAwVUwpLCB3YWxrKTsKPiArICAg
ICAgICAgICAgICAgaWYgKGVyciA8IDApCj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJu
IGVycjsKPiArICAgICAgICAgICAgICAgaWYgKGVyciA+IDApCj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgcmV0dXJuIDA7Cj4gKyAgICAgICB9Cj4gKwo+ICAgICAgICAgcG1kID0gcG1kX29mZnNl
dChwdWQsIGFkZHIpOwo+ICAgICAgICAgZG8gewo+ICBhZ2FpbjoKPiBAQCAtODUsNiArOTMsMTQg
QEAgc3RhdGljIGludCB3YWxrX3B1ZF9yYW5nZShwNGRfdCAqcDRkLCB1bnNpZ25lZCBsb25nIGFk
ZHIsIHVuc2lnbmVkIGxvbmcgZW5kLAo+ICAgICAgICAgY29uc3Qgc3RydWN0IG1tX3dhbGtfb3Bz
ICpvcHMgPSB3YWxrLT5vcHM7Cj4gICAgICAgICBpbnQgZXJyID0gMDsKPgo+ICsgICAgICAgaWYg
KG9wcy0+dGVzdF9wdWQpIHsKPiArICAgICAgICAgICAgICAgZXJyID0gb3BzLT50ZXN0X3B1ZChh
ZGRyLCBlbmQsIHB1ZF9vZmZzZXQocDRkLCAwVUwpLCB3YWxrKTsKPiArICAgICAgICAgICAgICAg
aWYgKGVyciA8IDApCj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIGVycjsKPiArICAg
ICAgICAgICAgICAgaWYgKGVyciA+IDApCj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJu
IDA7Cj4gKyAgICAgICB9Cj4gKwo+ICAgICAgICAgcHVkID0gcHVkX29mZnNldChwNGQsIGFkZHIp
Owo+ICAgICAgICAgZG8gewo+ICAgYWdhaW46Cj4gQEAgLTEyOCw2ICsxNDQsMTQgQEAgc3RhdGlj
IGludCB3YWxrX3A0ZF9yYW5nZShwZ2RfdCAqcGdkLCB1bnNpZ25lZCBsb25nIGFkZHIsIHVuc2ln
bmVkIGxvbmcgZW5kLAo+ICAgICAgICAgY29uc3Qgc3RydWN0IG1tX3dhbGtfb3BzICpvcHMgPSB3
YWxrLT5vcHM7Cj4gICAgICAgICBpbnQgZXJyID0gMDsKPgo+ICsgICAgICAgaWYgKG9wcy0+dGVz
dF9wNGQpIHsKPiArICAgICAgICAgICAgICAgZXJyID0gb3BzLT50ZXN0X3A0ZChhZGRyLCBlbmQs
IHA0ZF9vZmZzZXQocGdkLCAwVUwpLCB3YWxrKTsKPiArICAgICAgICAgICAgICAgaWYgKGVyciA8
IDApCj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIGVycjsKPiArICAgICAgICAgICAg
ICAgaWYgKGVyciA+IDApCj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIDA7Cj4gKyAg
ICAgICB9Cj4gKwo+ICAgICAgICAgcDRkID0gcDRkX29mZnNldChwZ2QsIGFkZHIpOwo+ICAgICAg
ICAgZG8gewo+ICAgICAgICAgICAgICAgICBuZXh0ID0gcDRkX2FkZHJfZW5kKGFkZHIsIGVuZCk7
Cj4gLS0KPiAyLjIwLjEKPgoKSXQncyBnb29kIHRvIG1lLgoKVGVzdGVkLWJ5OiBab25nIExpIDx6
b25nLmxpQHNpZml2ZS5jb20+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
