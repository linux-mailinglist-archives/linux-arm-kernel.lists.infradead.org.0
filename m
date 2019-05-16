Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B476920E75
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 20:11:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DPCKs6owfS9TudEGn2BugXQqv8ZPMzvrwBtV++rD8DM=; b=jB7WKrnJv+9XMq
	a2ZOJIy87e1puR6MmedQ4ZsWpfrJ2WNidNn5tpDKpklvfuOmmDzdqESMkzytYhbLObKldE52HQfvz
	ljdtntkvtucExCNY6W5yyLO+XSdEPNCMzc8w5JkO5ZjvcQ5mj6KrxCNXqU79D5hJrH0xwHL0pM+ZD
	Z73C1RiUa1BefKrzOfzfGEUJ+1Un/xYp3Fau3xav15MZESHv9NVgZ3NZsYjY3qt4vb4HGqe0ktyU1
	VWf7Bt5+tEjXzHinqHVb/Oah6n6pp9/TH/16o3ZMUB0JAMX+0sp7yVas5H8hlM2ueTk/gPgjYJrjn
	QIzHsEf0O94lHGAzKeTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRKqQ-00059V-2r; Thu, 16 May 2019 18:11:06 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRKqJ-00058n-Df
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 18:11:00 +0000
Received: by mail-io1-xd41.google.com with SMTP id g16so3341152iom.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 11:10:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=rrGlTyg4XJrCjk7zo+Wrsd+XH074LHjGtQBQcTuoJf8=;
 b=e6Rkx2rEJlR6Pl2yJlIYa/FZ2zIzhZ5FqSoNux6pGC2cWT4VG3VtLz0dC5EFO+ax7A
 fnQ487yNANJ4O3ukMIjS/hevihf6hMlG7XZiS0NrWZO5kEc4q5O0oEVjmpxG0OZCY6V5
 jp53iKg3oyxCYy/xDgCqzVCQtwOz2SS08UbDDQU/grZbTGPJsiebIM3zJ/GlhCEaiUAD
 0TI/2THjAlSnQDJwcCVgMXgPh+COK2Et6tK9Rq4XMzIt/5XZz9bqaxvHyv/QiPi/sOdb
 IPh1Za3RIy24L4KLOQVCjvobjLNRpFwByWSFLzJLaNrUcxcQ0RPZ7WmYiqUvcLHgMkT8
 WOMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=rrGlTyg4XJrCjk7zo+Wrsd+XH074LHjGtQBQcTuoJf8=;
 b=mYJ1AK9Y25a4DO3MZ6zmouI/PWf8rfpkehFrdE/RvAsJK/6RwDTembvWD991FeFlAi
 meVre0p1JtcBct9aHzI/2eKHVQyzw1p9PJqpjZnSZccM3a4IiGsNZg/iVl0+DA20/lHb
 twkRt6dSWIPyvl+/74tHSuDuQ6+28pRtMeuzYtb90dRfyEy4S3JlMm96zgywArS380pt
 OtcnjgNf4FjRK/btDKYWNMWGhyhzoSQj2Vt7CxN4K81HbLXby/KPWyYQMoCDZCHi5M+p
 xvUfUT4oTYDEZ/I6HxD83hySuZ60LoTz1UB3+tCu4jPaX8yJJwOGWMtMnp/myxEAZ7Si
 Lpkw==
X-Gm-Message-State: APjAAAVnx2B81ZxToOXm/mKoDbyHvBWXLfN/ijN6I3mIrneHnub8Iglb
 eUNBMdKVpVxf8zRqP9UUVvaLw3jiKqHX4foS+AU=
X-Google-Smtp-Source: APXvYqyN7uANqDZJ6+qL41HrSGltOXSAYi6UW1Aa3IiAikG26LjBrhhWgLXP44A77oh8vNwx8s4k5mvjhxpuwUynad8=
X-Received: by 2002:a5d:9616:: with SMTP id w22mr1735164iol.40.1558030258541; 
 Thu, 16 May 2019 11:10:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
 <20190512082614.9045-3-tiny.windzz@gmail.com>
 <20190512133930.t5txssl7mou2gljt@flea>
 <20190512214128.qjyys3vfpwdiacib@core.my.home>
 <20190516150252.hf4u3bloo37chy6q@flea>
In-Reply-To: <20190516150252.hf4u3bloo37chy6q@flea>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Fri, 17 May 2019 02:10:47 +0800
Message-ID: <CAEExFWu-T2mGQ9Teo7TQOcJsEzXi_dB=S8CFv7MiwHyu5z4-ow@mail.gmail.com>
Subject: Re: [PATCH 2/3] thermal: sun50i: add thermal driver for h6
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_111059_502373_AD875698 
X-CRM114-Status: GOOD (  18.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, bjorn.andersson@linaro.org, marc.w.gonzalez@free.fr,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, paulmck@linux.ibm.com,
 stefan.wahren@i2se.com, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Chen-Yu Tsai <wens@csie.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Andy Gross <andy.gross@linaro.org>, rui.zhang@intel.com,
 devicetree@vger.kernel.org, Linux PM <linux-pm@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, olof@lixom.net, robh+dt@kernel.org,
 Jonathan.Cameron@huawei.com, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 enric.balletbo@collabora.com, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMTYsIDIwMTkgYXQgMTE6MDMgUE0gTWF4aW1lIFJpcGFyZAo8bWF4aW1lLnJp
cGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBIaSwKPgo+IE9uIFN1biwgTWF5IDEyLCAyMDE5
IGF0IDExOjQxOjI4UE0gKzAyMDAsIE9uZMWZZWogSmlybWFuIHdyb3RlOgo+ID4gPiA+ICtzdGF0
aWMgaW50IHRzZW5zX2dldF90ZW1wKHZvaWQgKmRhdGEsIGludCAqdGVtcCkKPiA+ID4gPiArewo+
ID4gPiA+ICsgc3RydWN0IHRzZW5zb3IgKnMgPSBkYXRhOwo+ID4gPiA+ICsgc3RydWN0IHRzZW5z
X2RldmljZSAqdG1kZXYgPSBzLT50bWRldjsKPiA+ID4gPiArIGludCB2YWw7Cj4gPiA+ID4gKwo+
ID4gPiA+ICsgcmVnbWFwX3JlYWQodG1kZXYtPnJlZ21hcCwgdG1kZXYtPmNoaXAtPnRlbXBfZGF0
YV9iYXNlICsKPiA+ID4gPiArICAgICAgICAgICAgIDB4NCAqIHMtPmlkLCAmdmFsKTsKPiA+ID4g
PiArCj4gPiA+ID4gKyBpZiAodW5saWtlbHkodmFsID09IDApKQo+ID4gPiA+ICsgICAgICAgICBy
ZXR1cm4gLUVCVVNZOwo+ID4gPgo+ID4gPiBJJ20gbm90IHN1cmUgd2h5IGEgdmFsIGVxdWFscyB0
byAwIHdvdWxkIGJlIGFzc29jaWF0ZWQgd2l0aCBFQlVTWT8KPiA+Cj4gPiBUaGVybWFsIHpvbmUg
ZHJpdmVyIGNhbiAod2lsbCkgY2FsbCBnZXRfdGVtcCBiZWZvcmUgd2UgZ290IHRoZQo+ID4gZmly
c3QgaW50ZXJydXB0IGFuZCB0aGUgdGhlcm1hbCBkYXRhLiBJbiB0aGF0IGNhc2UgdmFsIHdpbGwg
YmUgMC4KPiA+Cj4gPiBSZXN1bHRpbmcgaW46Cj4gPgo+ID4gICh2YWwgKyBvZmZzZXQpICogc2Nh
bGUgPSAoLTI3OTQpICogLTY3ID0gMTg3MTk4Cj4gPgo+ID4gMTg3wrBDIGFuZCBpbW1lZGlhdGUg
c2h1dGRvd24gZHVyaW5nIGJvb3QgLSBiYXNlZCBvbiBjaXJ0aWNhbAo+ID4gdGVtcGVyYXR1cmUg
YmVpbmcgcmVhY2hlZC4KPiA+Cj4gPiBCdXN5IGhlcmUgbWVhbnMsIGdldF90ZW1wIGRvZXMgbm90
IHlldCBoYXZlIGRhdGEuIFRoZXJtYWwgem9uZQo+ID4gZHJpdmVyIGp1c3QgcmVwb3J0cyBhbnkg
ZXJyb3IgdG8gZG1lc2cgb3V0cHV0Lgo+Cj4gQWgsIHRoYXQgbWFrZXMgc2Vuc2UuCj4KPiBJIGd1
ZXNzIGlmIHdlJ3JlIHN3aXRjaGluZyB0byBhbiBpbnRlcnJ1cHQtYmFzZWQgZHJpdmVyLCB0aGVu
IHdlIGNhbgo+IGp1c3QgdXNlIGEgd2FpdHF1ZXVlLCBvciBpcyBnZXRfdGVtcCBzdXBwb3NlZCB0
byBiZSBhdG9taWM/CkkgdGhpbmsgZ2V0X3RlbXAgc2hvdWxkIG5vdCBiZSBibG9hY2tlZC4KCllh
bmd0YW8KPgo+IE1heGltZQo+Cj4gLS0KPiBNYXhpbWUgUmlwYXJkLCBCb290bGluCj4gRW1iZWRk
ZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmluZwo+IGh0dHBzOi8vYm9vdGxpbi5jb20KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
