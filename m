Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 548144411B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 18:12:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fKbAaMJiQD+8Apeg+Fmi7xfZzBHhP9tBG8VUQww/j2I=; b=GLDT7UHOY5RTCI
	h0F6H6V1rMA1BRYpxxyJVhcIRWh4vYJ9b1gfx6KhrS1+zqNojCbyHyJHGh6+Sn7AmC4ZC16JSR2B3
	HuXmhz/NT6e+SQNPHui+fbEJxXIzsjbZ/R6bCQyJjjJ2iE01v1hiDLW0i9Eou0aTNPr8kzXtWpTS2
	qd6kqlqiFuZF57P9V5jSYORmi5TgOfWO6TgwAUf1tE8wthOP6DEkHyj7eCVxb3PtsKAuV7ALOisbg
	ri7bBfh6welMutqbhVezDfiKE/3cx2YInX0/iqOPY5eSj7GVvsLDk6cvk1HeglWx9a6lH+DZWWTi1
	lcj2O9f/vmYcQwdSIH8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbSKu-00007x-CQ; Thu, 13 Jun 2019 16:12:24 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbSKi-00007N-FA
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 16:12:13 +0000
Received: by mail-io1-xd43.google.com with SMTP id n5so18144545ioc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 09:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6v/23h74yo3j/zUughy0wFFC9yfO7oR+qGcuy0DJBZk=;
 b=DuXyWXqHXbK8HuFNvok5v3l44KGSaXUZ1sTcFqSZMnKszMlUEbzqFaaqQKvrgWdt46
 YYkGsl/GqHupyJpXzDqjbJB5SvCmaNd07MaC3gtGS19OoCkNrhvVaEi1/Fyj0w5IwK10
 NYvTsRGyh722FTs2L1AN0LF1/jyu/pNUmRZsU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6v/23h74yo3j/zUughy0wFFC9yfO7oR+qGcuy0DJBZk=;
 b=UR1cx2LpZgE6lZKCY5/s1IxUVjX/SjxjzQzO41zPVS7aFm1cucjtRbWy6ooEcfE8MI
 UbTCfNxJa2GijkEa2LlrKABHcAJ6aOyd2oNBi81XwiwxiXu4zJdJNMpJ5F3SDsXjW8VU
 88tLtjpOY0A7K7KAJWtrQ+syeslw26tmp70g0foKQzkDzM/+v8IcH0FXzOUMamA1tBPM
 bCiD8XSbFllg/vRpiCKVXXxeZPKNSivmnzBL1u/k+U/OQQYZxfu6cBpOJwwEqZX+AKa6
 Qu2iPVNxidZki/57FoiL7kqIxRMqvVmRY8h7zafJEpodGlP1Wwt/8QCUoQdJw5mYa7T4
 jXdg==
X-Gm-Message-State: APjAAAVv13tU+63qOTPvC27LWOIowQDsLtYE9ZsZ9kAs5Ar/NDg3Hdcq
 R8wNWlnIMwk8BoyHhYjDU9I3ezFUZqY=
X-Google-Smtp-Source: APXvYqyUYVd2Rhq6+5bvk5xH7rq8XQuStxDs9Q57lBa+TVgcTdN8/zX45+j2kiNmgMsIjdjP+tWx+A==
X-Received: by 2002:a5d:9ec4:: with SMTP id a4mr791895ioe.125.1560442331255;
 Thu, 13 Jun 2019 09:12:11 -0700 (PDT)
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com.
 [209.85.166.52])
 by smtp.gmail.com with ESMTPSA id o7sm346943ioo.81.2019.06.13.09.12.08
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 09:12:09 -0700 (PDT)
Received: by mail-io1-f52.google.com with SMTP id k13so18154613iop.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 09:12:08 -0700 (PDT)
X-Received: by 2002:a5e:db0a:: with SMTP id q10mr11718339iop.168.1560442328298; 
 Thu, 13 Jun 2019 09:12:08 -0700 (PDT)
MIME-Version: 1.0
References: <c2e6af51-5676-3715-6666-c3f18df7b992@free.fr>
 <CAK8P3a1_WvHYW243MR5-NdFm3cSt+cVGM5EJmOM8uiQMQ3vQjQ@mail.gmail.com>
 <a732f522-5e65-3ac4-de04-802ef5455747@free.fr>
In-Reply-To: <a732f522-5e65-3ac4-de04-802ef5455747@free.fr>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 13 Jun 2019 09:11:56 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U+Ky1bAuAuuY+eBdTP9U3kbuH0tfwyN0Zs-iw0GNUFyQ@mail.gmail.com>
Message-ID: <CAD=FV=U+Ky1bAuAuuY+eBdTP9U3kbuH0tfwyN0Zs-iw0GNUFyQ@mail.gmail.com>
Subject: Re: [PATCH v1] iopoll: Tweak readx_poll_timeout sleep range
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_091212_534936_344D9113 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Arnd Bergmann <arnd@arndb.de>, Will Deacon <will.deacon@arm.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Bjorn Helgaas <helgaas@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBUaHUsIEp1biAxMywgMjAxOSBhdCA5OjA0IEFNIE1hcmMgR29uemFsZXogPG1hcmMu
dy5nb256YWxlekBmcmVlLmZyPiB3cm90ZToKPgo+IE9uIDEzLzA2LzIwMTkgMTQ6NDIsIEFybmQg
QmVyZ21hbm4gd3JvdGU6Cj4KPiA+IE9uIFRodSwgSnVuIDEzLCAyMDE5IGF0IDI6MTYgUE0gTWFy
YyBHb256YWxleiB3cm90ZToKPiA+Cj4gPj4gQ2hvcHBpbmcgbWF4IGRlbGF5IGluIDQgc2VlbXMg
ZXhjZXNzaXZlLiBMZXQncyBqdXN0IGN1dCBpdCBpbiBoYWxmLgo+ID4+Cj4gPj4gU2lnbmVkLW9m
Zi1ieTogTWFyYyBHb256YWxleiA8bWFyYy53LmdvbnphbGV6QGZyZWUuZnI+Cj4gPj4gLS0tCj4g
Pj4gV2hlbiBtYXhfdXM9MTAwLCBvbGRfbWluIHdhcyAyNiB1czsgbmV3X21pbiB3b3VsZCBiZSA1
MCB1cwo+ID4+IFdhcyB0aGVyZSBhIGdvb2QgcmVhc29uIGZvciB0aGUgMS80dGg/Cj4gPj4gSXMg
bmV3X21pbj0wIGEgcHJvYmxlbT8gKGZvciBtYXg9MSkKPiA+Cj4gPiBZb3Ugbm9ybWFsbHkgd2Fu
dCBhIGxhcmdlIGVub3VnaCByYW5nZSBiZXR3ZWVuIG1pbiBhbmQgbWF4LiBJIGRvbid0Cj4gPiBz
ZWUgYW55dGhpbmcgd3Jvbmcgd2l0aCBhIGZhY3RvciBvZiBmb3VyLgo+Cj4gSG1tbSwgSSBleHBl
Y3QgdGhlIHR5cGljYWwgdXNlLWNhc2UgdG8gYmU6Cj4gIkhXIG1hbnVhbCBzdGF0ZXMgb3BlcmF0
aW9uIFggY29tcGxldGVzIGluIDEwMCDCtXMuCj4gTGV0J3MgY2FsbCB1c2xlZXBfcmFuZ2UoMTAw
LCBmb28pOyBiZWZvcmUgaGl0dGluZyB0aGUgcmVnLiIKPgo+IEFuZCBmb28gbmVlZHMgdG8gYmUg
YSAicmVhc29uYWJsZSIgdmFsdWU6IGJpZyBlbm91Z2ggdG8gYmUgYWJsZQo+IHRvIG1lcmdlIHNl
dmVyYWwgcmVxdWVzdHMsIGxvdyBlbm91Z2ggbm90IHRvIHdhaXQgdG9vIGxvbmcgYWZ0ZXIKPiB0
aGUgSFcgaXMgcmVhZHkuCj4KPiBJbiB0aGlzIGNhc2UsIEknZCBzYXkgdXNsZWVwX3JhbmdlKDEw
MCwgMjAwKTsgbWFrZXMgc2Vuc2UuCj4KPiBDb21lIHRvIHRoaW5rIG9mIGl0LCBJJ20gbm90IHN1
cmUgbWluPTI2IChvciBtaW49NTApIG1ha2VzIHNlbnNlLi4uCj4gV2h5IHdhaXQgKmxlc3MqIHRo
YW4gd2hhdCB0aGUgdXNlciBzcGVjaWZpZWQ/CgpJSVJDIHVzbGVlcF9yYW5nZSgpIG5lYXJseSBh
bHdheXMgdHJpZXMgdG8gc2xlZXAgZm9yIHRoZSBtYXguICBNeQpyZWNvbGxlY3Rpb24gb2YgdGhl
IGRlc2lnbiBpcyB0aGF0IHlvdSBvbmx5IGVuZCB1cCB3aXRoIHNvbWV0aGluZyBsZXNzCnRoYW4g
dGhlIG1heCBpZiB0aGUgc3lzdGVtIHdhcyBnb2luZyB0byB3YWtlIHVwIGFueXdheS4gIEluIHN1
Y2ggYQpjYXNlIGl0IHNlZW1zIGxpa2UgaXQgd291bGRuJ3QgYmUgaW5zYW5lIHRvIGdvIGFuZCBj
aGVjayBpZiB0aGUKY29uZGl0aW9uIGlzIGFscmVhZHkgdHJ1ZSBpZiAyNSUgb2YgdGhlIHRpbWUg
aGFzIHBhc3NlZC4gIE1heWJlIHlvdSdsbApnZXQgbHVja3kgYW5kIHlvdSBjYW4gcmV0dXJuIGVh
cmx5LgoKQXJlIHlvdSBhY3R1YWxseSBzZWVpbmcgcHJvYmxlbXMgd2l0aCB0aGUgLyA0LCBvciBp
cyB0aGlzIHBhdGNoIGp1c3QgYQpyZXN1bHQgb2YgY29kZSBpbnNwZWN0aW9uPwoKLURvdWcKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
