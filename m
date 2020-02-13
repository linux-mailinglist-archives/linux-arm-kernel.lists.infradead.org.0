Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8007715BD18
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 11:50:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1AYL3/ekcVvB2KrNhDejHrv/jfh7L5OQKtQX8K4mwvw=; b=ScEB+VR9ktdWb+U05ICnDoAjg
	Es9euBSgFPGMo24W5kIDNozQzsWq2LOh3mBSpQpny4nOMosScfU/kwwE94fN/5lf7GbqBJTRBx6Pd
	mYHvmtZLnrjiEF32cC9qtZDLCQUkr39n+SvdhmQ6UK0/j2gUC+RKK+X2vp/0ZlKNsjct9lx14wxZ0
	AycQFcB8ndat/IUqr1Ppu7MWOuKDtAq128QCVMy5Yj1Y92AK3KFPdVKAWnR/q/VXgZGh7uQTbEn4Y
	kA7Azy8YYoTAiHJ8RsRgIKouaqf86VYDGYXdWp7NGjl9KvqgXDSrClJzy0h29nqhSUR3lzf8THIsL
	rfaM49hRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2C4w-0002aX-5g; Thu, 13 Feb 2020 10:50:42 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2C4o-0002aE-F0
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 10:50:36 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 48JCvx1tKgz9vBmx;
 Thu, 13 Feb 2020 11:50:21 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=j4nIpV63; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id lNMaryXYPCfP; Thu, 13 Feb 2020 11:50:21 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 48JCvx0Nrhz9vBmv;
 Thu, 13 Feb 2020 11:50:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1581591021; bh=a0AdfaSXewQASk+OQDLMZqVVvGG6bse26JEwu3kkGK8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=j4nIpV63cfg4kmkQx5p0ao6MB3efkedTnFl3cl62wRxJIbdldqXF9DpkDOikDEbp7
 MmBRHWqrHVH3uv8Syy+RBPHPoefCGrmzJ9qnve2+A4MqE/pXODXXQuWw/Pne5CDRRx
 7mc3KVJvf2hLZhrwtE33a0vZQlRhywDc6m0/0jOU=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 6F18E8B840;
 Thu, 13 Feb 2020 11:50:21 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id dp7BPwOlgiYQ; Thu, 13 Feb 2020 11:50:21 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id EA4B88B83E;
 Thu, 13 Feb 2020 11:50:18 +0100 (CET)
Subject: Re: [Regression 5.6-rc1][Bisected b6231ea2b3c6] Powerpc 8xx doesn't
 boot anymore
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>, Li Yang
 <leoyang.li@nxp.com>, Qiang Zhao <qiang.zhao@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <0d45fa64-51ee-0052-cb34-58c770c5b3ce@c-s.fr>
 <aee10440-c244-7c93-d3bb-fd29d8a83be4@c-s.fr>
 <59487f8a-fd2e-703d-d954-d263f756a3a0@rasmusvillemoes.dk>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <a1b742ab-54ad-1027-f11c-820009c54e8e@c-s.fr>
Date: Thu, 13 Feb 2020 11:50:17 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <59487f8a-fd2e-703d-d954-d263f756a3a0@rasmusvillemoes.dk>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_025034_794973_EC259DB0 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Scott Wood <oss@buserror.net>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAxMy8wMi8yMDIwIMOgIDEwOjM3LCBSYXNtdXMgVmlsbGVtb2VzIGEgw6ljcml0wqA6Cj4g
T24gMTIvMDIvMjAyMCAxNS41MCwgQ2hyaXN0b3BoZSBMZXJveSB3cm90ZToKPj4KPj4KPj4gT24g
MDIvMTIvMjAyMCAwMjoyNCBQTSwgQ2hyaXN0b3BoZSBMZXJveSB3cm90ZToKPiAKPj4+IEluIHlv
dXIgY29tbWl0IHRleHQgeW91IGV4cGxhaW4gdGhhdCBjcG1fbXVyYW1faW5pdCgpIGlzIGNhbGxl
ZCB2aWEKPj4+IHN1YnN5c19pbml0Y2FsbC4gQnV0IGNvbnNvbGUgaW5pdCBpcyBkb25lIGJlZm9y
ZSB0aGF0LCBzbyBpdCBjYW5ub3Qgd29yay4KPj4+Cj4+PiBEbyB5b3UgaGF2ZSBhIGZpeCBmb3Ig
dGhhdCA/Cj4+Pgo+Pgo+PiBUaGUgZm9sbG93aW5nIHBhdGNoIGFsbG93cyBwb3dlcnBjIDh4eCB0
byBib290IGFnYWluLiBEb24ndCBrbm93IGlmCj4+IHRoYXQncyB0aGUgZ29vZCBwbGFjZSBhbmQg
d2F5IHRvIGRvIHRoZSBmaXggdGhvdWdoLgo+Pgo+PiAtLS0KPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvdHR5L3NlcmlhbC9jcG1fdWFydC9jcG1fdWFydF9jb3JlLmMKPj4gYi9kcml2ZXJzL3R0eS9z
ZXJpYWwvY3BtX3VhcnQvY3BtX3VhcnRfY29yZS5jCj4+IGluZGV4IDRjYWJkZWQ4MzkwYi4uMzQx
ZDY4MmVjNmViIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3R0eS9zZXJpYWwvY3BtX3VhcnQvY3Bt
X3VhcnRfY29yZS5jCj4+ICsrKyBiL2RyaXZlcnMvdHR5L3NlcmlhbC9jcG1fdWFydC9jcG1fdWFy
dF9jb3JlLmMKPj4gQEAgLTEzNTEsNiArMTM1MSw3IEBAIHN0YXRpYyBpbnQgX19pbml0IGNwbV91
YXJ0X2NvbnNvbGVfc2V0dXAoc3RydWN0Cj4+IGNvbnNvbGUgKmNvLCBjaGFyICpvcHRpb25zKQo+
PiAgwqDCoMKgwqDCoMKgwqDCoCBjbHJiaXRzMzIoJnBpbmZvLT5zY2NwLT5zY2NfZ3NtcmwsIFND
Q19HU01STF9FTlIgfCBTQ0NfR1NNUkxfRU5UKTsKPj4gIMKgwqDCoMKgIH0KPj4KPj4gK8KgwqDC
oCBjcG1fbXVyYW1faW5pdCgpOwo+PiAgwqDCoMKgwqAgcmV0ID0gY3BtX3VhcnRfYWxsb2NidWYo
cGluZm8sIDEpOwo+Pgo+PiAgwqDCoMKgwqAgaWYgKHJldCkKPiAKPiBIbW0sIHRoYXQgc2VlbXMg
dG8gYmUgYSBzb21ld2hhdCByYW5kb20gcGxhY2UsIG1ha2luZyBpdCBoYXJkIHRvIHNlZQo+IHRo
YXQgaXQgaXMgaW5kZWVkIGVhcmx5IGVub3VnaC4gV291bGQgaXQgd29yayB0byBwdXQgaXQgaW5z
aWRlIHRoZQo+IGNvbnNvbGVfaW5pdGNhbGwgdGhhdCByZWdpc3RlcnMgdGhlIGNwbSBjb25zb2xl
PyBJLmUuCj4gCj4gc3RhdGljIGludCBfX2luaXQgY3BtX3VhcnRfY29uc29sZV9pbml0KHZvaWQp
Cj4gewo+ICsgICAgICAgY3BtX211cmFtX2luaXQoKTsKPiAgICAgICAgICByZWdpc3Rlcl9jb25z
b2xlKCZjcG1fc2NjX3VhcnRfY29uc29sZSk7Cj4gICAgICAgICAgcmV0dXJuIDA7Cj4gfQo+IAo+
IGNvbnNvbGVfaW5pdGNhbGwoY3BtX3VhcnRfY29uc29sZV9pbml0KTsKPiAKClllcyB0aGF0IHdv
cmtzIHRvby4KClRoYW5rcwpDaHJpc3RvcGhlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
