Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5AD1F65CC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 12:38:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JZZY4RfuwQjlaYfOBY3df/xMiqrD31IWaI3XSFMWQss=; b=NFqZ12g/NkT/2h
	6tHXawDPtb9AelRmk19RY55xSymMebeuRs9RaBcqO3rPdArAEyzHFttdLkPNGajDyBA9KaqRLx3uu
	+NjUpvnndzSiTCxlWSOh3GfxncsXx7KcCvSqjnLfzsDzCAAcybCPhYG3NAhx/4ZW8hIyE5S0W5PpG
	m36MxCSpuzgdVNG65mm7384DPrXCVqAzl/o5//i2FKAvq7+bbjc+jEgdr40Zx6h1e5fLW+Tgo35lf
	gIEjAJPlxR8p5SSwv2QVNjEL1is0F3doVI/orAyz+vLDdqebDyYk/G+fTv3VsWmEsm1wTWCeDrXJg
	IiZCDEoUPJS9y6ucWi4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjKb3-0003cW-8z; Thu, 11 Jun 2020 10:38:09 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjKas-0003ay-1E
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 10:37:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591871874;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pVpU95O+J56tcCcKm/rQbMqFedeKvQz8SMkjM9+3a7I=;
 b=Mah74+TmCgi6+D6HrO50/4lMw1FzZryCQEYUEpxj5sRov2YfkpXf/wN0zQMTkNCqHFKu9j
 oN8CnmmqeEE+ImrGK/1BsGmHoF6mD5XtHq4oPRNuFoXoStnAF+jfcI9EOFNNgDFWUwY257
 bzUdihzpLn8Y4DkY90Nrg1MuWQJSYNA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-486-V2bqYhnhNjSBKC62ZxAhxw-1; Thu, 11 Jun 2020 06:37:49 -0400
X-MC-Unique: V2bqYhnhNjSBKC62ZxAhxw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0AD211800D41;
 Thu, 11 Jun 2020 10:37:47 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-13-51.pek2.redhat.com
 [10.72.13.51])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id BA2CC5D9EF;
 Thu, 11 Jun 2020 10:37:40 +0000 (UTC)
Date: Thu, 11 Jun 2020 18:37:37 +0800
From: Dave Young <dyoung@redhat.com>
To: =?utf-8?Q?=C5=81ukasz?= Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH 0/5] kexec_file_load() for arm
Message-ID: <20200611103737.GA5079@dhcp-128-65.nay.redhat.com>
References: <CGME20200601142806eucas1p2680c5625411e7a695d8469760a926520@eucas1p2.samsung.com>
 <20200601142754.26139-1-l.stelmach@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200601142754.26139-1-l.stelmach@samsung.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_033758_178560_5524757A 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Kees Cook <keescook@chromium.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 kexec@lists.infradead.org, Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, Ben Dooks <ben-linux@fluff.org>,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q2Mga2V4ZWMgbGlzdCBpbiBjYXNlIHBlb3BsZSBtYXkgbWlzc2VkIHRoZSBwaWVjZXMuCk9uIDA2
LzAxLzIwIGF0IDA0OjI3cG0sIMWBdWthc3ogU3RlbG1hY2ggd3JvdGU6Cj4gVGhlIGZvbGxvd2lu
ZyBzZXJpZXMgb2YgcGF0Y2hlcyBwcm92aWRlcyBpbXBsZW1lbnRhdGlvbiBvZiB0aGUKPiBrZXhl
Y19maWxlX2xvYWQoKSBzeXN0ZW0gY2FsbCBmb3JtIHRoZSBhcm0gYXJjaGl0ZWN0dXJlLiB6SW1h
Z2UgYW5kIHVJbWFnZQo+IChsZWdhY3kgZm9ybWF0KSBmaWxlcyBhcmUgc3VwcG9ydGVkLiBMaWtl
IG9uIGFybTY0LCB0aGVyZSBpcyBubwo+IHBvc3NpYmlsaXR5IG9mIGxvYWRpbmcgYSBuZXcgRFRC
IGFuZCB0aGUgY3VycmVudGx5IGxvYWRlZCBpcyByZXVzZWQuCj4gCj4gxYF1a2FzeiBTdGVsbWFj
aCAoNSk6Cj4gICBhcm06IGRlY29tcHJlc3Nvcjogc2V0IG1hbGxvYyBwb29sIHNpemUgZm9yIHRo
ZSBkZWNvbXByZXNzb3IKPiAgIGFybTogYWRkIGltYWdlIGhlYWRlciBkZWZpbml0aW9ucwo+ICAg
YXJtOiBkZWNvbXByZXNzb3I6IGRlZmluZSBhIG5ldyB6SW1hZ2UgdGFnCj4gICBhcm06IEFkZCBr
ZXhlY19pbWFnZV9pbmZvCj4gICBhcm06IGtleGVjX2ZpbGU6IGxvYWQgekltYWdlIG9yIHVJbWFn
ZSwgaW5pdHJkIGFuZCBkdGIKPiAKPiAgYXJjaC9hcm0vS2NvbmZpZyAgICAgICAgICAgICAgICAg
ICAgICAgfCAgMTUgKysKPiAgYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL01ha2VmaWxlICAgICAg
fCAgIDIgKwo+ICBhcmNoL2FybS9ib290L2NvbXByZXNzZWQvaGVhZC5TICAgICAgICB8ICAgOSAr
LQo+ICBhcmNoL2FybS9ib290L2NvbXByZXNzZWQvdm1saW51eC5sZHMuUyB8ICAyMiArLS0KPiAg
YXJjaC9hcm0vaW5jbHVkZS9hc20vaW1hZ2UuaCAgICAgICAgICAgfCAgODcgKysrKysrKysrKwo+
ICBhcmNoL2FybS9pbmNsdWRlL2FzbS9rZXhlYy5oICAgICAgICAgICB8ICAxNCArKwo+ICBhcmNo
L2FybS9rZXJuZWwvTWFrZWZpbGUgICAgICAgICAgICAgICB8ICAgNSArLQo+ICBhcmNoL2FybS9r
ZXJuZWwva2V4ZWNfdWltYWdlLmMgICAgICAgICB8ICA4MCArKysrKysrKysrCj4gIGFyY2gvYXJt
L2tlcm5lbC9rZXhlY196aW1hZ2UuYyAgICAgICAgIHwgMTk5ICsrKysrKysrKysrKysrKysrKysr
KysrCj4gIGFyY2gvYXJtL2tlcm5lbC9tYWNoaW5lX2tleGVjLmMgICAgICAgIHwgIDM5ICsrKyst
Cj4gIGFyY2gvYXJtL2tlcm5lbC9tYWNoaW5lX2tleGVjX2ZpbGUuYyAgIHwgMjA5ICsrKysrKysr
KysrKysrKysrKysrKysrKysKPiAgMTEgZmlsZXMgY2hhbmdlZCwgNjYyIGluc2VydGlvbnMoKyks
IDE5IGRlbGV0aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vaW5jbHVkZS9h
c20vaW1hZ2UuaAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0va2VybmVsL2tleGVjX3Vp
bWFnZS5jCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9rZXJuZWwva2V4ZWNfemltYWdl
LmMKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2tlcm5lbC9tYWNoaW5lX2tleGVjX2Zp
bGUuYwo+IAo+IC0tIAo+IDIuMjYuMgo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
