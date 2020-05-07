Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7093D1C85A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 11:25:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=efuGgMzrS8/hVtUXqPEmSOJNWD8GHrE9H4eStajgdr8=; b=flXtvdymAOIhdI
	Rq9pE0Uiog/a2AhZHTE0b+PnqopdKZbvRe8x/OZqX9hfGMIUqtwMQkPAfc9pFKMEwuv52LNuLCMFv
	368DfCyc1ba2JlPCZdz2ZSrrOspxTIS3VjTmip3JsU3ew82NUig3Fdfb7Ia3Kg9FwK8DJINC2c0wG
	+tjMYveUF/1q0MKhtoCyiQsgRhKxJVRqD0pEcoyQbcPrySUCcxM0OPvBreHwD6s27JGoWg+OX3jS0
	g6GEA0w6P2rkKWbGNS2O03q9Kq2FnSnbLlCJjSFUNOgUBAmUNY3JcW/bcaVrf30bLTsYvoDDsXAl5
	hKljesl66BRkAkFhCeHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWcmT-0007gE-Mb; Thu, 07 May 2020 09:25:25 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWcmJ-0007e3-Ce
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 09:25:17 +0000
Received: by mail-qk1-x741.google.com with SMTP id q7so5262741qkf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 02:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=JbyrTxjTZIm41hIBopPv7oBGmFhzJlTGvI6JGZoJteY=;
 b=hVcFRSKFl9lmb9j77HI03fHv6Hk1v73kcQa902XWtGd6PrAdnJrdvBGI59aZDmbRnl
 QnTav+0K5mLsSEZQ+KAHILuJauchPaRpwCZ2HSvGeKxlR2yK4cJ0EcXZADu40Fwy4x1Z
 7Td0waIzoSgNxJnjGTqKuH6UjSRss+Omt6RfgBDuoNZUOr1hny/f+F+Kqz8+YBJjRvbF
 VI5sQ5IOLK/ydoybPZPeKcEAJqD5SJUS8bRmzndUxkTm6yJSD6dATGFBmttsyzC366Lk
 ATnnN77ZG4GiXFS++MXDBiLfnEwEZzbIJZrEkoVLXC2F5G/7JO9R6O9saQzfQLTr4med
 V/Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=JbyrTxjTZIm41hIBopPv7oBGmFhzJlTGvI6JGZoJteY=;
 b=bNbUlxcOgy2LdDzI/GR1IYOkKL9x248MlIo9E6jk9xoF/ZGrzm7lqIqSbFJPxTuHBO
 khnyyU+XPkugaAezhb2WHDFlFOryYO0zn3VF32xkb7v6VdLPLcUbEJgSTSB3RYz4Y8qH
 Z603f8eT1K7eFZmkZ6fVatcHqUCIHGZ7B/u/S1lTKjasHq1ANdIj6Ls+q6F/UBW0vsh3
 A89Inu/W4aS6EQvK3zjspt9MZ6J6jD6R0t3dV2p39nKTPVKd4EExF7YMzp7BMQ1cehRC
 fO7r6qko450PsJb8aN6+Y7OcPNUH8zMargtl0LhvuJ1nN1D+jxP3dOsfcqfIAUG//CUu
 eojw==
X-Gm-Message-State: AGi0Pub5oF/qSlIkusGctWWw1SCO1pQZyrNdCQuQUZpyI5s/hEKPBstx
 8vZ7acn6/fMCpxa3knm6zSaEVHQRaqK4807/C9/KNg==
X-Google-Smtp-Source: APiQypLSXck1EaP6FHaf/R4OayTt1mguGYQPHoVpSdiDDIrFzvY+Z5TozNRG3W20rgYO4xwmyohpCkW+LYwhZ5sejQE=
X-Received: by 2002:a05:620a:1289:: with SMTP id
 w9mr12058283qki.263.1588843511709; 
 Thu, 07 May 2020 02:25:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200505140231.16600-1-brgl@bgdev.pl>
 <20200505140231.16600-6-brgl@bgdev.pl>
 <20200505103105.1c8b0ce3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAMRc=Mf0ipaeLKhHCZaq2YeZKzi=QBAse7bEz2hHxXN5OL=ptg@mail.gmail.com>
 <20200506101236.25a13609@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200506101236.25a13609@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 7 May 2020 11:25:01 +0200
Message-ID: <CAMpxmJWckQdKvUGFDAJ1WMtD9WoGWmGe3kyKYhcfRT2nOB93xw@mail.gmail.com>
Subject: Re: [PATCH 05/11] net: core: provide devm_register_netdev()
To: Jakub Kicinski <kuba@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_022515_488374_60F7B786 
X-CRM114-Status: GOOD (  17.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree <devicetree@vger.kernel.org>, Felix Fietkau <nbd@openwrt.org>,
 Arnd Bergmann <arnd@arndb.de>, netdev <netdev@vger.kernel.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

xZtyLiwgNiBtYWogMjAyMCBvIDE5OjEyIEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+
IG5hcGlzYcWCKGEpOgo+Cj4gT24gV2VkLCA2IE1heSAyMDIwIDA4OjM5OjQ3ICswMjAwIEJhcnRv
c3ogR29sYXN6ZXdza2kgd3JvdGU6Cj4gPiB3dC4sIDUgbWFqIDIwMjAgbyAxOTozMSBKYWt1YiBL
aWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPiBuYXBpc2HFgihhKToKPiA+ID4KPiA+ID4gT24gVHVl
LCAgNSBNYXkgMjAyMCAxNjowMjoyNSArMDIwMCBCYXJ0b3N6IEdvbGFzemV3c2tpIHdyb3RlOgo+
ID4gPiA+IEZyb206IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJnb2xhc3pld3NraUBiYXlsaWJyZS5j
b20+Cj4gPiA+ID4KPiA+ID4gPiBQcm92aWRlIGRldm1fcmVnaXN0ZXJfbmV0ZGV2KCkgLSBhIGRl
dmljZSByZXNvdXJjZSBtYW5hZ2VkIHZhcmlhbnQKPiA+ID4gPiBvZiByZWdpc3Rlcl9uZXRkZXYo
KS4gVGhpcyBuZXcgaGVscGVyIHdpbGwgb25seSB3b3JrIGZvciBuZXRfZGV2aWNlCj4gPiA+ID4g
c3RydWN0cyB0aGF0IGhhdmUgYSBwYXJlbnQgZGV2aWNlIGFzc2lnbmVkIGFuZCBhcmUgZGV2cmVz
IG1hbmFnZWQgdG9vLgo+ID4gPiA+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQmFydG9zeiBHb2xh
c3pld3NraSA8YmdvbGFzemV3c2tpQGJheWxpYnJlLmNvbT4KPiA+ID4KPiA+ID4gPiBkaWZmIC0t
Z2l0IGEvbmV0L2NvcmUvZGV2LmMgYi9uZXQvY29yZS9kZXYuYwo+ID4gPiA+IGluZGV4IDUyMjI4
ODE3N2JiZC4uOTlkYjUzN2M5NDY4IDEwMDY0NAo+ID4gPiA+IC0tLSBhL25ldC9jb3JlL2Rldi5j
Cj4gPiA+ID4gKysrIGIvbmV0L2NvcmUvZGV2LmMKPiA+ID4gPiBAQCAtOTUxOSw2ICs5NTE5LDU0
IEBAIGludCByZWdpc3Rlcl9uZXRkZXYoc3RydWN0IG5ldF9kZXZpY2UgKmRldikKPiA+ID4gPiAg
fQo+ID4gPiA+ICBFWFBPUlRfU1lNQk9MKHJlZ2lzdGVyX25ldGRldik7Cj4gPiA+ID4KPiA+ID4g
PiArc3RydWN0IG5ldGRldmljZV9kZXZyZXMgewo+ID4gPiA+ICsgICAgIHN0cnVjdCBuZXRfZGV2
aWNlICpuZGV2Owo+ID4gPiA+ICt9Owo+ID4gPgo+ID4gPiBJcyB0aGVyZSByZWFsbHkgYSBuZWVk
IHRvIGRlZmluZSBhIHN0cnVjdHVyZSBpZiB3ZSBvbmx5IG5lZWQgYSBwb2ludGVyPwo+ID4gPgo+
ID4KPiA+IFRoZXJlIGlzIG5vIG5lZWQgZm9yIHRoYXQsIGJ1dCBpdCByZWFsbHkgaXMgbW9yZSBy
ZWFkYWJsZSB0aGlzIHdheS4KPiA+IEFsc286IHVzaW5nIGEgcG9pbnRlciBkaXJlY3RseSBkb2Vz
bid0IHNhdmUgdXMgYW55IG1lbW9yeSBub3IgY29kZQo+ID4gaGVyZS4KPgo+IEkgZG9uJ3QgY2Fy
ZSBlaXRoZXIgd2F5IGJ1dCBkZXZtX2FsbG9jX2V0aGVyZGV2X21xcygpIGFuZCBjby4gYXJlIHVz
aW5nCj4gdGhlIGRvdWJsZSBwb2ludGVyIGRpcmVjdGx5LiBQbGVhc2UgbWFrZSB0aGluZ3MgY29u
c2lzdGVudC4gRWl0aGVyIGRvCj4gdGhlIHNhbWUsIG9yIGRlZmluZSB0aGUgc3RydWN0dXJlIGlu
IHNvbWUgaGVhZGVyIGFuZCBjb252ZXJ0IG90aGVyCj4gaGVscGVycyB0byBhbHNvIG1ha2UgdXNl
IG9mIGl0LgoKSW4gb3JkZXIgdG8gdXNlIGRldnJlc19maW5kKCkgdG8gY2hlY2sgaWYgc3RydWN0
IG5ldF9kZXZpY2UgaXMgbWFuYWdlZAppbiBkZXZtX3JlZ2lzdGVyX25ldGRldigpIEkgbmVlZCB0
byBrbm93IHRoZSBhZGRyZXNzIG9mIHRoZSByZWxlYXNlCmZ1bmN0aW9uIHVzZWQgYnkgZGV2bV9h
bGxvY19ldGhlcmRldl9tcXMoKS4gRG8geW91IG1pbmQgaWYgSSBtb3ZlIGFsbApuZXR3b3JraW5n
IGRldnJlcyByb3V0aW5lcyAoY3VycmVudGx5IG9ubHkgZGV2bV9hbGxvY19ldGhlcmRldl9tcXMo
KSkKaW50byBhIHNlcGFyYXRlIC5jIGZpbGUgKGUuZy4gdW5kZXIgbmV0L2RldnJlcy5jKT8KCkJh
cnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
