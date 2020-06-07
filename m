Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7641F0F84
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jun 2020 22:21:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZL+vYfh8wqIOIJ81hmUr9o/3kI21LwMbgp3f2CQasE=; b=TW2VJvY9TSTOQ0
	upPvm4MY1pYhNs94xPrx2oDTGA2POopfh25FWwtier8YT3WJAUSAXjmLIN914DB4EPs4GdWkaAQSE
	iGiSp/KV45zGVKuJfLJ8W3mWZK90pXKRzFXYIIqVcuTHtV8fw3xff/7G4xzDPsQNfTPXF4l0EJXjG
	LK+V//n5Ns6lOUOrdyJvRXnGe6uz/JreFZBxWv0iFgG2wswP55Iti7ZJ+Z20toqVtwkl6XMHDVdm1
	XKowziSetGXztM0Z0dbFjBi4TcHXwtakPqND53TkwWyAv4x5zJweCBRzi56B5lNeyD0aIT7I0ImOk
	KG+H9G02YQTc4dQBX3pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ji1nI-0000Ig-OW; Sun, 07 Jun 2020 20:21:24 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji1nB-0000Hz-AG
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jun 2020 20:21:19 +0000
Received: by mail-qt1-x844.google.com with SMTP id e16so13155454qtg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jun 2020 13:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=9LawDuy/RIabvhu0uplVQvfkvDtwIE3mp3pxEyl0OCo=;
 b=xyg7NNw/6CFp+2prS3ZmKEc7KRZ4wF4LfFYUxmwtbWO2fPGtzUPYWot2jCEfSM8GL+
 vYu5mYUFBJROpZNlw1T8eezV+kJcsuplAIPX8kf2s3JOhMlQ+eRAh8yfyvwXx2hspAID
 ajbPtT1rvA8wAcQ/mvWr9l71Jmhuo2nD76GoGPBBxcuvmNcD13LZzVZSb6p8alA5LyO/
 sRhlPURTUNMCmBFQeXy0g2dNZAAC/1WIPzwDK1+gywjOIoESQLDBDp8caH/VgrkmAiw1
 UIm+tY45PrYEVtCGI2SpoqtZ8M/CDq9U0E+07+OpUw1anRWAij1ATw+g2gTXUQYGdLgc
 LlCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=9LawDuy/RIabvhu0uplVQvfkvDtwIE3mp3pxEyl0OCo=;
 b=sgKXKjX2SAyjyohwnF5aUiSraqyQfxGduaAZVl71r5Xl72trTLj0Du/oJFCka8/OOs
 qjCXiBEqEcLFMSY2qquPFuaiad7XZJWRJFsk3Q9o4fxi1LPCRkXVWL3JBOwImtjRbN+1
 mNeiTzb5/8oleeaXkgK/CxqVupHYhEPYd7zyf1aqPc4I0K8f7ZMjSgYGb461CHdBIVCa
 wbF7LqleImRQ2Czxh3mGICK3ZS+Zuwiw0AZPrvvZOWOpzRrFoxtSqmhch9g6E9bD4KQ6
 8jKZw0s3d779B/veAg+cU+n3ydhnhqmZEmiw982mYe7cYDICxlq/4gxQOXxxYuSwpLEA
 G5Zg==
X-Gm-Message-State: AOAM532zG/gUggMEC8+h2COhLFOkz9UlYrGHTocLrOiE8yc+FmwDeaFs
 fMUxhpuw9O3SeMHJM+4HONlBYQ==
X-Google-Smtp-Source: ABdhPJyLwaCF3KfXtIkP4NWNySYcM34mEzgKXXQ6Qtd+nViXMM87OeQnxkJT1kGrsLiQODYghGvCOQ==
X-Received: by 2002:ac8:7296:: with SMTP id v22mr20359236qto.239.1591561272023; 
 Sun, 07 Jun 2020 13:21:12 -0700 (PDT)
Received: from skullcanyon
 (marriott-chateau-champlain-montreal.sites.intello.com. [66.171.169.34])
 by smtp.gmail.com with ESMTPSA id h77sm5633202qke.37.2020.06.07.13.21.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Jun 2020 13:21:11 -0700 (PDT)
Message-ID: <572f23d1945a685bf899e96de147454f31674ae1.camel@ndufresne.ca>
Subject: Re: [PATCH 0/3] media: uapi: cedrus: Fix decoding interlaced H264
 content
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Jernej Skrabec
 <jernej.skrabec@siol.net>
Date: Sun, 07 Jun 2020 16:21:10 -0400
In-Reply-To: <CAAEAJfDFMzMkDkN7zzNvkwsmYzgQPNGkP=dhW7neycYYRBJzHA@mail.gmail.com>
References: <20200604185745.23568-1-jernej.skrabec@siol.net>
 <CAAEAJfDFMzMkDkN7zzNvkwsmYzgQPNGkP=dhW7neycYYRBJzHA@mail.gmail.com>
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_132117_423123_6FB3E803 
X-CRM114-Status: GOOD (  25.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org, Jonas Karlman <jonas@kwiboo.se>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgc2FtZWRpIDA2IGp1aW4gMjAyMCDDoCAwOTo0NiAtMDMwMCwgRXplcXVpZWwgR2FyY2lhIGEg
w6ljcml0IDoKPiBIaSBKZXJuZWosCj4gCj4gT24gVGh1LCA0IEp1biAyMDIwIGF0IDE1OjU1LCBK
ZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+IHdyb3RlOgo+ID4gQ3VycmVu
dGx5IEgyNjQgaW50ZXJsYWNlZCBjb250ZW50IGl0J3Mgbm90IHByb3Blcmx5IGRlY29kZWQgb24g
Q2VkcnVzLgo+ID4gVGhlcmUgYXJlIHR3byByZWFzb25zIGZvciB0aGlzOgo+ID4gMS4gc2xpY2Ug
cGFyYW1ldGVycyBjb250cm9sIGRvZXNuJ3QgcHJvdmlkZSBlbm91Z2ggaW5mb3JtYXRpb24KPiA+
IDIuIGJ1ZyBpbiBmcmFtZSBsaXN0IGNvbnN0cnVjdGlvbiBpbiBDZWRydXMgZHJpdmVyCj4gPiAK
PiA+IEFzIGRlc2NyaWJlZCBpbiBjb21taXQgbWVzc2FnZSBpbiBwYXRjaCAxLCByZWZlcmVuY2Vz
IHN0b3JlZCBpbgo+ID4gcmVmZXJlbmNlIGxpc3RzIHNob3VsZCB0ZWxsIGlmIHJlZmVyZW5jZSB0
YXJnZXRzIHRvcCBvciBib3R0b20gZmllbGQuCj4gPiBIb3dldmVyLCB0aGlzIGluZm9ybWF0aW9u
IGlzIGN1cnJlbnRseSBub3QgcHJvdmlkZWQuIFBhdGNoIDEgYWRkcwo+ID4gaXQgaW4gZm9ybSBv
ZiBmbGFncyB3aGljaCBhcmUgc2V0IGZvciBlYWNoIHJlZmVyZW5jZS4gUGF0Y2ggMiB0aGVuCj4g
PiB1c2VzIHRob3NlIGZsYWdzIGluIENlZHJ1cyBkcml2ZXIuCj4gPiAKPiA+IEZyYW1lIGxpc3Qg
Y29uc3RydWN0aW9uIGlzIGZpeGVkIGluIHBhdGNoIDMuCj4gPiAKPiA+IFRoaXMgc29sdXRpb24g
d2FzIGV4dGVuc2l2ZWx5IHRlc3RlZCB1c2luZyBLb2RpIG9uIExpYnJlRUxFQyB3aXRoIEE2NCwK
PiA+IEgzLCBINSBhbmQgSDYgU29DcyBpbiBzbGlnaHRseSBkaWZmZXJlbnQgZm9ybSAoZmxhZ3Mg
d2VyZSB0cmFuc21pdHRlZAo+ID4gaW4gTVNCIGJpdHMgaW4gaW5kZXgpLgo+ID4gCj4gCj4gU28s
IGlmIEkgdW5kZXJzdGFuZCBjb3JyZWN0bHkgdGhlIGZpZWxkIG5lZWRzIHRvIGJlIHBhc3NlZCBw
ZXItcmVmZXJlbmNlLAo+IGFuZCB0aGUgY3VycmVudCBwZXItRFBCIGVudHJ5IGlzIG5vdCBnb29k
PwoKRm9yIGludGVybGFjZWQgY29udGVudCB3ZSByZWZlcmVuY2UgZmllbGRzIHNlcGFyYXRlbHku
IFRoYXQncyB0aGUKcmVhc29uIHRoZXJlIGlzIDMyIGVudHJpZXMgaW4gbDAvbDEuIFRob3VnaCwg
YXMgd2UgZGVjb2RlIGJvdGggZmllbGRzCmluIHRoZSBzYW1lIGJ1ZmZlciAoaW50ZXJsZWF2ZWQp
LCB0aGUgRFBCIGluZGljZSBpcyBub3Qgc3VmZmljaWVudCB0bwppbmZvcm0gdGhlIGRlY29kZXIg
d2hhdCB3ZSBhcmUgcmVmZXJlbmNpbmcuIFVuZGVyc3RhbmQgdGhhdCBhIHRvcCBmaWVsZApjYW4g
YmUgdXNlZCB0byBkZWNvZGUgdGhlIG5leHQgYm90dG9tIGZpZWxkLiBUaGlzIGV2ZW4gbWFrZSBz
ZW5zZSBhcwp0aGV5IGFyZSBjbG9zZXIgb24gdGhlIGNhcHR1cmUgdGltZWxpbmUuIFRoaXMgY292
ZXJzIHNsaWNlIGJhc2VkCmRlY29kZXJzLgoKVGhlIGZsYWdzIHRvIGluZGljYXRlIHByZXNlbmNl
IG9mIHRvcC9ib3R0b20gZmllbGRzIGluIERQQiBhcnJheSBzZWVtcwpvbmx5IHVzZWZ1bCB0byBm
cmFtZSBiYXNlIGRlY29kZXJzLiBUaGlzIGlzIHNvIHRoYXQgZGVjb2RlciBjYW4gYXZvaWQKdXNp
bmcgbG9zdCBmaWVsZHMgd2hlbiBjb25zdHJ1Y3RpbmcgaXQncyBvd24gbDAvbDEgaW50ZXJuYWxs
eS4KCj4gCj4gSWYgeW91IGNvdWxkIHBvaW50IGF0IHRoZSB1c2Vyc3BhY2UgY29kZSBmb3IgdGhp
cywgaXQgd291bGQgYmUgaW50ZXJlc3RpbmcKPiB0byB0YWtlIGEgbG9vay4KPiAKPiA+IE5vdGU6
IEknbSBub3QgMTAwJSBzdXJlIGlmIGZsYWdzIGZvciBib3RoLCB0b3AgYW5kIGJvdHRvbSBmaWVs
ZHMgYXJlCj4gPiBuZWVkZWQuIEFueSBpbnB1dCBoZXJlIHdvdWxkIGJlIHdlbGNvbWUuCj4gPiAK
PiAKPiBHaXZlbiBlbnVtIHY0bDJfZmllbGQgaXMgYWxyZWFkeSBwYXJ0IG9mIHRoZSB1QVBJLCBw
ZXJoYXBzIGl0IG1ha2VzCj4gc2Vuc2UgdG8ganVzdCByZXVzZSB0aGF0IGZvciB0aGUgZmllbGQg
dHlwZT8gTWF5YmUgaXQncyBhbiBvdmVya2lsbCwKPiBidXQgaXQgd291bGQgbWFrZSBzZW5zZSB0
byByZXVzZSB0aGUgY29uY2VwdHMgYW5kIHR5cGVzIHRoYXQKPiBhbHJlYWR5IGV4aXN0Lgo+IAo+
IFdlIGNhbiBzdGlsbCBhZGQgYSByZXNlcnZlZCBmaWVsZCB0byBtYWtlIHRoaXMgbmV3IHJlZmVy
ZW5jZSB0eXBlCj4gZXh0ZW5zaXZlLgoKSSB0aGluayBpdCdzIGZpbmUgdG8gY3JlYXRlIG5ldyBm
bGFnIGZvciB0aGlzLCBhcyB5b3VyIHNvbHV0aW9uIHdvdWxkCnJlcXVpcmUgZXh0ZW5kaW5nIGEg
cmVmZXJlbmNlIHRvIDI0Yml0ICh0aGlzIHBhdGNoIGV4dGVuZCB0byAxNmJpdHMpLgpUaG91Z2gg
aW5kZWVkLCB3ZSBjb3VsZCBjb21iaW5lIGZyYW1lIGFuZCBUT1AgYW5kIHJlc2VydmUgbW9yZSBi
aXRzIGZvcgpmdXR1cmUgdXNlLgoKPiAKPiBUaGFua3MsCj4gRXplcXVpZWwKPiAKPiAKPiA+IFBs
ZWFzZSB0YWtlIGEgbG9vay4KPiA+IAo+ID4gQmVzdCByZWdhcmRzLAo+ID4gSmVybmVqCj4gPiAK
PiA+IEplcm5laiBTa3JhYmVjICgzKToKPiA+ICAgbWVkaWE6IHVhcGk6IGgyNjQ6IHVwZGF0ZSBy
ZWZlcmVuY2UgbGlzdHMKPiA+ICAgbWVkaWE6IGNlZHJ1czogaDI2NDogUHJvcGVybHkgY29uZmln
dXJlIHJlZmVyZW5jZSBmaWVsZAo+ID4gICBtZWRpYTogY2VkcnVzOiBoMjY0OiBGaXggZnJhbWUg
bGlzdCBjb25zdHJ1Y3Rpb24KPiA+IAo+ID4gIC4uLi9tZWRpYS92NGwvZXh0LWN0cmxzLWNvZGVj
LnJzdCAgICAgICAgICAgICB8IDQwICsrKysrKysrKysrKysrKysrKy0KPiA+ICAuLi4vc3RhZ2lu
Zy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYyAgfCAyNyArKysrKysrLS0tLS0tCj4g
PiAgaW5jbHVkZS9tZWRpYS9oMjY0LWN0cmxzLmggICAgICAgICAgICAgICAgICAgIHwgMTIgKysr
KystCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCA2MiBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMo
LSkKPiA+IAo+ID4gLS0KPiA+IDIuMjcuMAo+ID4gCj4gPiAKPiA+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdAo+ID4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPiBodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
