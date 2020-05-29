Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A15D1E7C8D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 14:04:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2NRSP4RZh92V/0i0uSlmX69XpvJ1wjEePFzkEETvsGw=; b=lRIz7CAALNCyKP
	eW0Zt5AeC3n/xpZ13uUCUcw+01PUvsh8JX4grTeJ7+Jwf/d+J+41MyCQlPLArJhEt/fO2EVQv9/1x
	s++HfzAR06Q/S4gK2quLqOFUvIUe1fOECaHJBzEJdxyVQHeDc7a7PWPxufwT7BLrzfWc0tFPsiCXl
	Qx7UWbB/o61BKZng4aCwP/p2pAhusNwmzlIZncwKO3HIB3V8gFRSzY7jvG/lKEf/ldz1AVSdEJL2t
	OrphlLxXuoviguxPrBktQkGO+PmdQ/JgljuLFukBfvJD8mbKiaW5X44DfNfo0JXUL9c+M4H9xcQqh
	0pQQCmQNtLzht3L2vVNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jedkC-0002ov-Tl; Fri, 29 May 2020 12:04:12 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jedk2-0002oU-QJ; Fri, 29 May 2020 12:04:04 +0000
Received: by mail-pg1-x544.google.com with SMTP id p21so1391276pgm.13;
 Fri, 29 May 2020 05:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Mnz73Vl3a4PfmC0Z2phyqbZVdHEOz6JLhDTMxB2wsIM=;
 b=ID4REpDkr7y96phQaJslv9etO7e56tB1Fvs2pQVFThbt3OWxnE9cd6GOB4rfNCZKy9
 SwmDBqEJwZh4h1516wBaUfJ5W0ErSpigoJo+K36t1tPn3Y1NrFHpmHJb5tCMcudzMvyv
 TEgH2Mm0Tvj974phEVKJVRrjUnKCpqIQm9Z8bW5wIzbYafwg6tnpmNTemy8Uvw0guST4
 Wv4LD8tAAcArg51qh6JzClmSlR2Qemwv5raR/846IhRnK84BKN6fnbwcKWf4h8uf2H9q
 QxvInPyaI7jXvmtBaIeEZ6vUxQv8eXDeKzto41yIYFuVP30P/tA6/MaBD+7fhmmGXVvz
 Fykg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Mnz73Vl3a4PfmC0Z2phyqbZVdHEOz6JLhDTMxB2wsIM=;
 b=WcQZmJNao21FYKjLqgjeIrJLKHF8wolu9V+rkxGLuA7AQ/lIIEpsBwIzMXgeKi9qt8
 PvzsNnugvUbTcYc6C0GEeqcq8c9vTP3yWxMEu5WCqQ34aLVsPzLD70WU89o92rr+Xj/J
 pQ7UnJOk3hFs5wTczeClfciwkJ4oLE1TjegEVEIO8h6TpfYV/IOcAv65uaj8AfVBplWP
 M3ZlAxPN/V2TNCRgejN/Ix/j7sLRt0MKf+s3zveMqg6+KI++LMW8sZOdUTL0sORWjqwG
 AAOKqNgMF3bxDAIi0XRYjQyzCwgk+E1DmIYhAE4pmPUhZEmwehXJL8fuullABzaFxFOd
 0JOg==
X-Gm-Message-State: AOAM531Iz59cOkbF6/wV/OgJ3tObMGQt+Y7WZ8VFVUE1p2AoRcer+M5d
 k/G3nqEkLdGaQS/8YRawCRmdAgorTOPP1pNINvQ=
X-Google-Smtp-Source: ABdhPJy3uKd3F67NcorbaDRpeFbpdAHqLp9X6qgyjdspi41F2UUGxJniR9HNoYQ1KudpdkBhWYdPVejNGSthnAiDc3A=
X-Received: by 2002:a63:545a:: with SMTP id e26mr7868665pgm.4.1590753841885;
 Fri, 29 May 2020 05:04:01 -0700 (PDT)
MIME-Version: 1.0
References: <89f6393934fc6d493f8b9e87c1a6e916642b6a18.1590749143.git.cristian.ciocaltea@gmail.com>
 <20200529113419.GA1631227@kroah.com>
 <4c40d6c1-47e8-b4ec-f2fd-e9767b03630c@suse.de>
In-Reply-To: <4c40d6c1-47e8-b4ec-f2fd-e9767b03630c@suse.de>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 29 May 2020 15:03:50 +0300
Message-ID: <CAHp75Vcz0a87LSnb6Ubt5_bSF3wUcs21GbP119trXER5KBDxbQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] tty: serial: owl: Initialize lock before registering
 port
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_050402_864076_71833372 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-actions@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Cristian Ciocaltea <cristian.ciocaltea@gmail.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMjksIDIwMjAgYXQgMjo1NiBQTSBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVy
QHN1c2UuZGU+IHdyb3RlOgo+Cj4gQW0gMjkuMDUuMjAgdW0gMTM6MzQgc2NocmllYiBHcmVnIEty
b2FoLUhhcnRtYW46Cj4gPiBPbiBGcmksIE1heSAyOSwgMjAyMCBhdCAwMjowNjo0N1BNICswMzAw
LCBDcmlzdGlhbiBDaW9jYWx0ZWEgd3JvdGU6Cj4gPj4gUnVubmluZyBhIGxvY2tkZXAtZW5hYmxl
ZCBrZXJuZWwgbGVhZHMgdG8gdGhlIGZvbGxvd2luZyBzcGxhdCB3aGVuCj4gPj4gcHJvYmluZyB0
aGUgb3dsLXVhcnQgZHJpdmVyOgoKLi4uCgo+ID4+IEZpeGVzOiBhM2NiMzlkMjU4ZWYgKCJzZXJp
YWw6IGNvcmU6IEFsbG93IGRldGFjaCBhbmQgYXR0YWNoIHNlcmlhbCBkZXZpY2UgZm9yIGNvbnNv
bGUiKQo+ID4+IFNpZ25lZC1vZmYtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lv
Y2FsdGVhQGdtYWlsLmNvbT4KCj4gPj4gKyAgICBzcGluX2xvY2tfaW5pdCgmb3dsX3BvcnQtPnBv
cnQubG9jayk7Cj4gPj4gKwo+ID4+ICAgICAgcmV0ID0gdWFydF9hZGRfb25lX3BvcnQoJm93bF91
YXJ0X2RyaXZlciwgJm93bF9wb3J0LT5wb3J0KTsKPiA+PiAgICAgIGlmIChyZXQpCj4gPj4gICAg
ICAgICAgICAgIG93bF91YXJ0X3BvcnRzW3BkZXYtPmlkXSA9IE5VTEw7Cj4gPgo+ID4gVWdoLCBh
bm90aGVyIG9uZSA6KAo+ID4KPiA+IFRoYW5rcyBmb3IgdGhpcywgd2lsbCBxdWV1ZSB0aGlzIHVw
IG5vdy4KPgo+IFRoYW5rcy4gSWYgdGhpcyBpcyB0aGUgZXhwZWN0ZWQgcGF0dGVybiBub3csIEkn
bGwgYWxzbyBoYXZlIHRvIHVwZGF0ZQo+IGluLWZsaWdodCBwYXRjaGVzLCBzdWNoIGFzIFN1bnBs
dXMuCgpFeHBlY3RlZCBpcyB0byByZWdpc3RlciBwcm9wZXJseSBjb25zb2xlIHZpYSByZWdpc3Rl
cl9jb25zb2xlKCkgY2FsbC4KSWYgeW91IGRvIHNvLCB5b3UgYWxzbyBuZWVkIHRvIGluaXRpYWxp
emUgc3BpbiBsb2NrIGJlZm9yZSBjb21pbmcgdG8KdWFydF9hZGRfb25lX3BvcnQoKS4KSXQgc2Vl
bXMgZHJpdmVycyAoYWIpdXNlZCB0aGF0IGZlYXR1cmUuCgokIGdpdCBncmVwIC1uIC13IHJlZ2lz
dGVyX2NvbnNvbGUgLS0gZHJpdmVycy90dHkvc2VyaWFsLyB8IGN1dCAtZjEgLWQ6Cnwgc29ydCAt
dSB8IHdjIC1sCiAgICAzNwokIGdpdCBncmVwIC1uIF9DT05TT0xFIC0tIGRyaXZlcnMvdHR5L3Nl
cmlhbC8gfCBjdXQgLWYxIC1kOiAgfCBzb3J0IC11IHwgd2MgLWwKICAgIDc3CgpCdXQgYXMgYSBx
dWljayBmaXggdGhpcyBpbml0aWFsaXphdGlvbiBpcyBva2F5LgoKLS0gCldpdGggQmVzdCBSZWdh
cmRzLApBbmR5IFNoZXZjaGVua28KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
