Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C0A2C573
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 13:33:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFIsMjs7honTVVnOADV2iCl+4oBhTxosmIeGLX71g3Q=; b=b/Il4wKzg8SySV
	hRF7yA/Atq8Sz/bLilg/ZTrXAR9URQe2LR/qJhhQO+Tpnw+GSvs7LOlDHr795+/PVGeDD44GBFd+X
	WGrJlNzSKh24+rUL+fIjN8HhhEag133MndZQ7+9ct1sM4I61KUiAR1ufNe2+UD41sYaXjnbXLgLXI
	1SGculFE7jxlZwQ+ozUeVlI9cZWxidT7zuIw6FKcnvOnbqrEKgPw+8Fq8Yyyjof8qCglaBu2Z2gc4
	cw2SIvfUZEWkSU6/aGUA0l35S/xmRS6LN0Z6qr3ufhkMgheevsr1i61+spmu1rAX+w2bw3eWQEisz
	GK+8vgb1FJs5TmFU7Jvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVaMB-00058v-Ib; Tue, 28 May 2019 11:33:27 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVaM2-00057u-DG
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 11:33:21 +0000
Received: by mail-lj1-x244.google.com with SMTP id z1so11876798ljb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 04:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=MABWQ31ON0TR0IpKjWED0HazwKzgQ/WMHokiAHc03aw=;
 b=gp3O9MMh8feHVMlWj5VYKJcykIPIicL9qftBC/g9U0fwewHKMqLl/MofGdBtVkNQkn
 IVMlKW8Hg9P4j1I/cAMJa9HrB4mM0IErnXAPx5uimKXNozFbkOZjW9Pd6yh7lq5cNuXf
 doEylPmDq6h3Idyz947RnLdOZ827Ft3PUcSi4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=MABWQ31ON0TR0IpKjWED0HazwKzgQ/WMHokiAHc03aw=;
 b=bDEsdmciRcJ4oyeIhmeZasH6ndpv9BwimMU2QOx9o5on+LrFMLVLBSIgILkFvHwn4N
 zycupVzkorsVTvAniBGSuS2gS1oy+g1d3SPs9I+uhEfRnnCGuOrrh8ghopuz+P7Gr7Nm
 5dFOZEXlVOX4Hem1OU2F6uA3auRC81Npy5YP9lxNLNCQtYC1T0cZpeGr5rxeeAg7B8gU
 jDNGp9bhFODGR9pmoz/gLrTZk/pP7Mik0CEWwMmqClmVLejs6fu17MAVf2i3EkbtUzZP
 f6YDDgmEdhi8P5lj/5V97z15OjyLWuuvMuOF3zTUD1tQsz3pXuEF0/rHOk8laN7UBfJr
 qqwQ==
X-Gm-Message-State: APjAAAW0OHREGYHnmt97tx/r81BW+CkWqmQAIizMu5UpTetLL3/F0h6f
 Slb9G5WmfoF2Zl+TG0jvF32HjjuFjDe2UsSO
X-Google-Smtp-Source: APXvYqzAlj8nXBkXY9tXvwNZyhuuVjUcaz9St3nOjjKOjPyJt3ZdpGQUcyp52yMvVHPwvG4kJ/5Sbw==
X-Received: by 2002:a2e:12ce:: with SMTP id 75mr35464957ljs.7.1559043194790;
 Tue, 28 May 2019 04:33:14 -0700 (PDT)
Received: from [172.16.11.26] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id d2sm2177643lfj.0.2019.05.28.04.33.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 May 2019 04:33:13 -0700 (PDT)
Subject: Re: LZ4 decompressor broken on ARM due to missing strchrnul() string
 traverse in cpumask_parse"
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Yury Norov <ynorov@marvell.com>, Andrew Morton <akpm@linux-foundation.org>
References: <20190528110412.gg66fl67yahtwb6i@linutronix.de>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <ffc779fe-3735-9665-8ee2-6a3ff1a7dd83@rasmusvillemoes.dk>
Date: Tue, 28 May 2019 13:33:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190528110412.gg66fl67yahtwb6i@linutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_043318_673384_FAEDED05 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: tglx@linutronix.de, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjgvMDUvMjAxOSAxMy4wNCwgU2ViYXN0aWFuIEFuZHJ6ZWogU2lld2lvciB3cm90ZToKPiB8
ICBDQyAgICAgIGFyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC9kZWNvbXByZXNzLm8KPiB8SW4gZmls
ZSBpbmNsdWRlZCBmcm9tIGluY2x1ZGUvbGludXgvbW1fdHlwZXNfdGFzay5oOjE0LAo+IHwgICAg
ICAgICAgICAgICAgIGZyb20gaW5jbHVkZS9saW51eC9tbV90eXBlcy5oOjUsCj4gfCAgICAgICAg
ICAgICAgICAgZnJvbSBpbmNsdWRlL2xpbnV4L21tem9uZS5oOjIxLAo+IHwgICAgICAgICAgICAg
ICAgIGZyb20gaW5jbHVkZS9saW51eC9nZnAuaDo2LAo+IHwgICAgICAgICAgICAgICAgIGZyb20g
aW5jbHVkZS9saW51eC91bWguaDo0LAo+IHwgICAgICAgICAgICAgICAgIGZyb20gaW5jbHVkZS9s
aW51eC9rbW9kLmg6MjIsCj4gfCAgICAgICAgICAgICAgICAgZnJvbSBpbmNsdWRlL2xpbnV4L21v
ZHVsZS5oOjEzLAo+IHwgICAgICAgICAgICAgICAgIGZyb20gYXJjaC9hcm0vYm9vdC9jb21wcmVz
c2VkLy4uLy4uLy4uLy4uL2xpYi9sejQvbHo0X2RlY29tcHJlc3MuYzozOSwKPiB8ICAgICAgICAg
ICAgICAgICBmcm9tIGFyY2gvYXJtL2Jvb3QvY29tcHJlc3NlZC8uLi8uLi8uLi8uLi9saWIvZGVj
b21wcmVzc191bmx6NC5jOjEzLAo+IHwgICAgICAgICAgICAgICAgIGZyb20gYXJjaC9hcm0vYm9v
dC9jb21wcmVzc2VkL2RlY29tcHJlc3MuYzo1NToKPiB8aW5jbHVkZS9saW51eC9jcHVtYXNrLmg6
IEluIGZ1bmN0aW9uIOKAmGNwdW1hc2tfcGFyc2XigJk6Cj4gfGluY2x1ZGUvbGludXgvY3B1bWFz
ay5oOjYzNjoyMTogZXJyb3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mIGZ1bmN0aW9uIOKAmHN0
cmNocm51bOKAmTsgZGlkIHlvdSBtZWFuIOKAmHN0cmNocuKAmT8gWy1XZXJyb3I9aW1wbGljaXQt
ZnVuY3Rpb24tZGVjbGFyYXRpb25dCj4gfCAgdW5zaWduZWQgaW50IGxlbiA9IHN0cmNocm51bChi
dWYsICdcbicpIC0gYnVmOwo+IHwgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn4KPiB8ICAg
ICAgICAgICAgICAgICAgICAgc3RyY2hyCj4gfGluY2x1ZGUvbGludXgvY3B1bWFzay5oOjYzNjo0
MjogZXJyb3I6IGludmFsaWQgb3BlcmFuZHMgdG8gYmluYXJ5IC0gKGhhdmUg4oCYaW504oCZIGFu
ZCDigJhjb25zdCBjaGFyICrigJkpCj4gfCAgdW5zaWduZWQgaW50IGxlbiA9IHN0cmNocm51bChi
dWYsICdcbicpIC0gYnVmOwo+IHwgICAgICAgICAgICAgICAgICAgICB+fn5+fn5+fn5+fn5+fn5+
fn5+fiBeCj4gfGNjMTogc29tZSB3YXJuaW5ncyBiZWluZyB0cmVhdGVkIGFzIGVycm9ycwo+IAo+
IDM3MTNhNGUxZmRiOGRhODZmOTZhM2U3NzBiMDhlMjc4ZDk3NTI5YjQgaXMgdGhlIGZpcnN0IGJh
ZCBjb21taXQKPiBjb21taXQgMzcxM2E0ZTFmZGI4ZGE4NmY5NmEzZTc3MGIwOGUyNzhkOTc1Mjli
NAo+IEF1dGhvcjogWXVyeSBOb3JvdiA8eW5vcm92QG1hcnZlbGwuY29tPgo+IERhdGU6ICAgVHVl
IE1heSAxNCAxNTo0NDo0NiAyMDE5IC0wNzAwCj4gCj4gICAgIGluY2x1ZGUvbGludXgvY3B1bWFz
ay5oOiBmaXggZG91YmxlIHN0cmluZyB0cmF2ZXJzZSBpbiBjcHVtYXNrX3BhcnNlCj4gCj4gICAg
IGNwdW1hc2tfcGFyc2UoKSBmaW5kcyBmaXJzdCBvY2N1cnJlbmNlIG9mIGVpdGhlciBvciBzdHJj
aHIoKSBhbmQKPiAgICAgc3RybGVuKCkuICBXZSBjYW4gZG8gaXQgYmV0dGVyIHdpdGggYSBzaW5n
bGUgY2FsbCBvZiBzdHJjaHJudWwoKS4KPiAKPiAgICAgW2FrcG1AbGludXgtZm91bmRhdGlvbi5v
cmc6IHJlbW92ZSB1bm5lZWRlZCBjYXN0XQo+ICAgICBMaW5rOiBodHRwOi8vbGttbC5rZXJuZWwu
b3JnL3IvMjAxOTA0MDkyMDQyMDguMTIxOTAtMS15bm9yb3ZAbWFydmVsbC5jb20KPiAgICAgU2ln
bmVkLW9mZi1ieTogWXVyeSBOb3JvdiA8eW5vcm92QG1hcnZlbGwuY29tPgo+ICAgICBBY2tlZC1i
eTogUmFzbXVzIFZpbGxlbW9lcyA8bGludXhAcmFzbXVzdmlsbGVtb2VzLmRrPgo+ICAgICBTaWdu
ZWQtb2ZmLWJ5OiBBbmRyZXcgTW9ydG9uIDxha3BtQGxpbnV4LWZvdW5kYXRpb24ub3JnPgo+ICAg
ICBTaWduZWQtb2ZmLWJ5OiBMaW51cyBUb3J2YWxkcyA8dG9ydmFsZHNAbGludXgtZm91bmRhdGlv
bi5vcmc+Cj4gCj4gOjA0MDAwMCAwNDAwMDAgZjIwZDhhOWVjMTc1NWIzOTgxNTIwZWNmMDE1MjQ4
ZjZhMGQ5ZjExNiBkYjY3Y2FmNjRmOTlhOWJlODA4Y2Q3M2U0MTNjMTA2YzVhZWUxNWI3IE0gICAg
ICBpbmNsdWRlCj4gCj4gVGhpcyBjb21taXQgaXMgdjUuMi1yYzF+NjJeMn40OS4KPiBIb3cgZG8g
d2UgZGVhbCB3aXRoIHRoaXMgb25lPwoKVXJnaC4gVGhlIHByb2JsZW0gaXMgcmVhbGx5IGluIGFy
Y2gvYXJtL2Jvb3QvY29tcHJlc3NlZC9kZWNvbXByZXNzLmMKd2hpY2ggZG9lcwoKI2RlZmluZSBf
TElOVVhfU1RSSU5HX0hfCgpwcmV2ZW50aW5nIGxpbnV4L3N0cmluZy5oIGZyb20gcHJvdmlkaW5n
IHN0cmNocm51bC4gSXQgYWxzbyAjaW5jbHVkZXMKYXNtL3N0cmluZy5oLCB3aGljaCBmb3IgYXJt
IGhhcyBhIGRlY2xhcmF0aW9uIG9mIHN0cmNocigpLCBleHBsYWluaW5nCndoeSB0aGlzIGRpZG4n
dCB1c2UgdG8gZmFpbC4KCkhvd2V2ZXIsIHRoZSBzb2x1dGlvbiBpcyBhbHNvIGluIHRoZSBzYW1l
IGZpbGUsIGl0IGFscmVhZHkgaGFzIGEgc2VjdGlvbgoKLyogTm90IG5lZWRlZCwgYnV0IHVzZWQg
aW4gc29tZSBoZWFkZXJzIHB1bGxlZCBpbiBieSBkZWNvbXByZXNzb3JzICovCmV4dGVybiBjaGFy
ICogc3Ryc3RyKGNvbnN0IGNoYXIgKiBzMSwgY29uc3QgY2hhciAqczIpOwpleHRlcm4gc2l6ZV90
IHN0cmxlbihjb25zdCBjaGFyICpzKTsKZXh0ZXJuIGludCBtZW1jbXAoY29uc3Qgdm9pZCAqY3Ms
IGNvbnN0IHZvaWQgKmN0LCBzaXplX3QgY291bnQpOwoKc28ganVzdCBhZGQgYW5vdGhlciBkZWNs
YXJhdGlvbiB0byB0aGF0IGxpc3QgLSBJIHN0cm9uZ2x5IGFzc3VtZSB3ZQp3b24ndCBnZXQgYSBs
aW5rIGZhaWx1cmUgc2luY2UgSSBmaW5kIGl0IGhhcmQgdG8gYmVsaWV2ZSB0aGUKZGVjb21wcmVz
c29yIHdvdWxkIGFjdHVhbGx5IGNhbGwgY3B1bWFza19wYXJzZS4uLgoKSSdtIHdvbmRlcmluZyB3
aHkgdGhpcyB3YXNuJ3QgY2F1Z2h0IGJ5IDBkYXkgYW5kL29yIHdoaWxlIGluIC1uZXh0PwoKUmFz
bXVzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
