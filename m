Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 607146098F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:46:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=00JC+OqFqwZjwJPJ28ipc/KrIpQb+La+WRea2AM3tBA=; b=NUgs1fSHm0EGHE
	8M/zJ5sOME9I9rIKnvwn8yInzDzxWP2HYriiL3glTKgYuO8VUk+aoIfGiJ4bKfOPsTWV+fCjipKlF
	HEgi1hvAlmnIpYVpN7hIa8aX29Qly5gCDlZOK8jKQJeVuLjfYlckJfLXto8XgPPXWJjsiFz0lt21F
	iVnmaYQ1R0lQTVxKUu5SY4fAVDX2uUfdNlqyqH0YrwfIogJzk8Ye0jB/vXjiASsBFeuSJcd0KC4yF
	5xipuKDFDuQsD2Fv4ZZMqCvQMJdzUZLaZN+/86tLuerJr4gyPrM5+Ff4haLYtRGhe9w05DSf89KGy
	JNRgzAAp90DYZPaCSzRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQQ6-0000pi-1d; Fri, 05 Jul 2019 15:46:42 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQNQ-0005Yr-DB; Fri, 05 Jul 2019 15:43:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eZgHUiebS7cvirXhc4tBTnQenlmfFbvQZ6WtezhynTU=; b=aV8jKjFWHAG/uA0QJPPja8iuLQ
 cDe9W3HRM3Pj9GBoOmfHlSmehwmD+1YF1jdWt//N8gnoIZx7+jD9JAKocKsu+drO+tuJdWLKHja3H
 s3rH2aS40HsGzSjYChb4sSE+5ZL4zcjttlhBTB5Igmo5+gFBgYzp4k3kzIZHGwftati3pFZbDer+a
 Oi2FYWoI64+JvH7x1SHTO75PpUxj08C+7CQhTSyoxiRsMml5eQUn3gsa8tN/fA94WMx9sfUGi0w7e
 17qSPcqC0OuMREhldAPbABsLun3ZGaOrfYEV4uOUBVUEyYjx2KFm7NPj3uECLtPy9qpBSB53Aihlw
 xYZdxd8A==;
Received: from mx1.redhat.com ([209.132.183.28])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjHGG-0007pk-Qg; Fri, 05 Jul 2019 05:59:58 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BE7D813A98;
 Fri,  5 Jul 2019 05:59:17 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-83.pek2.redhat.com [10.72.12.83])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 073FB60BF1;
 Fri,  5 Jul 2019 05:59:07 +0000 (UTC)
Date: Fri, 5 Jul 2019 13:59:04 +0800
From: Dave Young <dyoung@redhat.com>
To: Alex Shi <alex.shi@linux.alibaba.com>
Subject: Re: [PATCH 18/39] docs: admin-guide: add kdump documentation into it
Message-ID: <20190705055904.GB2790@localhost.localdomain>
References: <cover.1561724493.git.mchehab+samsung@kernel.org>
 <654e7591c044632c06257e0f069a52c0bb993554.1561724493.git.mchehab+samsung@kernel.org>
 <6911b74c-848f-0060-3db5-b5d7e8061cb5@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6911b74c-848f-0060-3db5-b5d7e8061cb5@linux.alibaba.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Fri, 05 Jul 2019 05:59:18 +0000 (UTC)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Rich Felker <dalias@libc.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Jerry Hoemann <jerry.hoemann@hpe.com>, Harry Wei <harryxiyou@gmail.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Will Deacon <will@kernel.org>, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Jonathan Corbet <corbet@lwn.net>, linux-sh@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Guenter Roeck <linux@roeck-us.net>, linux-watchdog@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@infradead.org>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, Baoquan He <bhe@redhat.com>,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Vivek Goyal <vgoyal@redhat.com>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDcvMDUvMTkgYXQgMTE6NDNhbSwgQWxleCBTaGkgd3JvdGU6Cj4gCj4gCj4g5ZyoIDIwMTkv
Ni8yOCDkuIvljYg4OjMwLCBNYXVybyBDYXJ2YWxobyBDaGVoYWIg5YaZ6YGTOgo+ID4gVGhlIEtk
dW1wIGRvY3VtZW50YXRpb24gZGVzY3JpYmVzIHByb2NlZHVyZXMgd2l0aCBhZG1pbnMgdXNlCj4g
PiBpbiBvcmRlciB0byBzb2x2ZSBpc3N1ZXMgb24gdGhlaXIgc3lzdGVtcy4KPiA+IAo+ID4gU2ln
bmVkLW9mZi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK3NhbXN1bmdAa2VybmVs
Lm9yZz4KPiA+IC0tLQo+ID4gIERvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvYnVnLWh1bnRpbmcu
cnN0ICAgICAgICAgICAgfCA0ICsrLS0KPiA+ICBEb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2lu
ZGV4LnJzdCAgICAgICAgICAgICAgICAgIHwgMSArCj4gPiAgRG9jdW1lbnRhdGlvbi97ID0+IGFk
bWluLWd1aWRlfS9rZHVtcC9nZGJtYWNyb3MudHh0ICB8IDAKPiA+ICBEb2N1bWVudGF0aW9uL3sg
PT4gYWRtaW4tZ3VpZGV9L2tkdW1wL2luZGV4LnJzdCAgICAgIHwgMSAtCj4gPiAgRG9jdW1lbnRh
dGlvbi97ID0+IGFkbWluLWd1aWRlfS9rZHVtcC9rZHVtcC5yc3QgICAgICB8IDAKPiA+ICBEb2N1
bWVudGF0aW9uL3sgPT4gYWRtaW4tZ3VpZGV9L2tkdW1wL3ZtY29yZWluZm8ucnN0IHwgMAo+IAo+
IEkgYW0gbm90IHN1cmUgaWYgaXQncyBjb252ZW5pZW5jZSBmb3IgcGVvcGxlIHRvIGhhdmUgbW9y
ZSBsZXZlbHMgaW4gZG9jcy4KPiAKPiBCdXQgSSBndWVzcywgbW92ZSBhcmNocyBpbnRvIGEgRG9j
dW1lbnRhdGlvbi9hcmNoLyBkaXIgc2hvdWxkIGJlIGZpbmUuIGxpa2UgRG9jdW1lbnRhdGlvbi9h
cmNoL3t4ODYsYXJtLGFybTY0LGlhNjQsbTY4ayxzMzkwLHBvd2VycGMsLi4ufQoKQWxleCwgbW92
aW5nIGtkdW1wIHRvIGFkbWluLWd1aWRlIHNvdW5kcyByZWFzb25hYmxlIHRvIG1lLiAgSSBhbHNv
IGFncmVlCndpdGggeW91IGZvciB0aG9zZSBhcmNoIGRlcGVuZGVudCBmaWxlcyBjYW4gYmUgbW92
ZWQgdG8KRG9jdW1lbnRhdGlvbi9hcmNoLywgbWF5YmUgeW91IGFyZSB0YWxraW5nIGFib3V0IHNv
bWUgb3RoZXIgcGF0Y2hlcyBpbgp0aGUgc2VyaWVzIGZvciB0aGUgYXJjaC8/IAoKVGhhbmtzCmRh
dmUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
