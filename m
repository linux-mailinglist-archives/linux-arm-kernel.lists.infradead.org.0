Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 236DAAFBA7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 13:43:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kDEZdo4FVLoz7tzj7dC5K7MM26EdW9atd5hjY/VS41A=; b=egtJKkbfbpi+9f
	DtWI/PQyKLn3MJ436gqV8vp/Hyz4RSrjvpa3wYRtjRynpTKSbzg8RyxlHeBMTHA08iZ6UhtvOK46c
	YG+s8XuGIjeHw6crbu2WYI8w7Mog1Swzg1riuPFbJ349UTgfT6bsU24UM9T9sHvIgfxS1YtJ1Eh/4
	jvHmov13Roy+zXJY/OeSWrk7HHhUqY92Y850nMvXZqY+goM4f/ls0XIrRWRLYk08m/7L8C/qd45P+
	y+HrOa3Kurdxjr7p0n8Ka4G2ANrDhKY3IK/U617qf3u/gdyj6qBRYwjroUsUB4xsNViAmAX16o7d3
	Fmh6k/855EooVT1h7QGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i811t-0008NB-Cn; Wed, 11 Sep 2019 11:43:21 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i811Q-0008Mc-Bo
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 11:42:54 +0000
Received: by mail-qt1-x841.google.com with SMTP id r15so24772159qtn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 04:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=8+OX84D3OD8DVrZ9a7q2Ku1fRaie55mt1/8kXZjuUUE=;
 b=dcdd0RrZs3IuwCK0B9ztsaOEdtmef6QmlZkSJ4i9ttAnUde5fq6unM5o543/4nHt2b
 lSv1MI5CZUboFhMcEpVXc/wEmeP3GsK+whAWjMRvGYn4RKo8giZxaJuNDe/DBxYE/7Vr
 MMU6YZVXjFAEDCqr4Ay0EL2G4fDuwwYW/2jSnL8wZXaIokLsM5FNw2oVUASBCSlZ2aeU
 szi7kG67/hbyDHIGyGyC19oC3r/xUtSSVzVg8/yvAYoauf05JJr0eu4hNlW51dzaJjfM
 Tfgee44HF/AYXXt3SluHMBOgH7+gfn5ZHMR8JopogHm9LUf73hHJ+zgK5hZNUkT0Gfpq
 /+0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8+OX84D3OD8DVrZ9a7q2Ku1fRaie55mt1/8kXZjuUUE=;
 b=bjkilreyiz/1YlgV0Ut1YveKnep0roOUl63OJ+IY3rCsKB3HR/hGXEu3RBT3Izw+Do
 3GDl/F0RaeEjVu2gY7xw1Qg5i7ogxrKC6c3eWuLNmqO/rYe3hlUOH5KaTcDdy7+FJnwo
 VWgx7NlU1A+HvOKHIV2k4SCEFAWeS0a+9KVBmkEolJEfffXpDrQFtQ1q+sWdjHHe84CB
 gnqNSY8h6mjvOxp+S92FpH/KbATF2dVRWHhobvdVRxO3Az7CMGU3KmRr1KFLsg6BRR5r
 yWS5i9FrzpjKOX9EnLAQ80H8OX6y0bYIRrfcnfEsBqUbtGTk33RVVeUI55obHpadimyO
 1MFA==
X-Gm-Message-State: APjAAAWFfGpVaBoxJt+n7jwbh8mH5KT+DvJrrfCQJylPZ+LmocW4WcGg
 +j1na4E9TiVzbiPIB30fhGTZ1Nlg45gEXRL+F2l8kX/KraK9zw==
X-Google-Smtp-Source: APXvYqwRIeQKQzY3Fp+rsnAuzP7HMudQTmIIvcqXrDAlGm5cZTe0O/lVFaVD2m63xyjJkWChI6g1pX9rKql+XrE3az4=
X-Received: by 2002:ac8:51c4:: with SMTP id d4mr35213431qtn.17.1568202171389; 
 Wed, 11 Sep 2019 04:42:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190911045408.GA62424@LGEARND20B15>
 <20190911094031.GU13294@shell.armlinux.org.uk>
In-Reply-To: <20190911094031.GU13294@shell.armlinux.org.uk>
From: Austin Kim <austindh.kim@gmail.com>
Date: Wed, 11 Sep 2019 20:42:47 +0900
Message-ID: <CADLLry7XKojSy5gaWBd0pkp5OVNrt-xysiHf69tEUPjHOS8kxA@mail.gmail.com>
Subject: Re: [PATCH] ARM: module: Drop 'rel->r_offset < 0' always false
 statement
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_044252_421928_EF2ADC9D 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (austindh.kim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: matthias.schiffer@ew.tq-group.com, info@metux.net,
 linux-arm-kernel@lists.infradead.org, allison@lohutok.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjAxOeuFhCA57JuUIDEx7J28ICjsiJgpIOyYpO2bhCA2OjQwLCBSdXNzZWxsIEtpbmcgLSBBUk0g
TGludXggYWRtaW4KPGxpbnV4QGFybWxpbnV4Lm9yZy51az7ri5jsnbQg7J6R7ISxOgo+Cj4gT24g
V2VkLCBTZXAgMTEsIDIwMTkgYXQgMDE6NTQ6MDhQTSArMDkwMCwgQXVzdGluIEtpbSB3cm90ZToK
PiA+IFNpbmNlIHJlbC0+cl9vZmZzZXQgaXMgZGVjbGFyZWQgYXMgRWxmMzJfQWRkciwKPiA+IHRo
aXMgdmFsdWUgaXMgYWx3YXlzIG5vbi1uZWdhdGl2ZS4KPiA+IHR5cGVkZWYgc3RydWN0IGVsZjMy
X3JlbCB7Cj4gPiAgICAgICAgIEVsZjMyX0FkZHIgICAgcl9vZmZzZXQ7Cj4gPiAgICAgICAgICAg
RWxmMzJfV29yZCAgcl9pbmZvOwo+ID4gfSBFbGYzMl9SZWw7Cj4gPgo+ID4gdHlwZWRlZiBfX3Uz
MiBFbGYzMl9BZGRyOwo+ID4gdHlwZWRlZiB1bnNpZ25lZCBpbnQgX191MzI7Cj4gPgo+ID4gRHJv
cCAncmVsLT5yX29mZnNldCA8IDAnIHN0YXRlbWVudCB3aGljaCBpcyBhbHdheXMgZmFsc2UuCj4g
Pgo+ID4gU2lnbmVkLW9mZi1ieTogQXVzdGluIEtpbSA8YXVzdGluZGgua2ltQGdtYWlsLmNvbT4K
PiA+IC0tLQo+ID4gIGFyY2gvYXJtL2tlcm5lbC9tb2R1bGUuYyB8IDIgKy0KPiA+ICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm0va2VybmVsL21vZHVsZS5jIGIvYXJjaC9hcm0va2VybmVsL21vZHVsZS5jCj4g
PiBpbmRleCBkZWVmMTdmLi4wOTIxY2U3IDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm0va2VybmVs
L21vZHVsZS5jCj4gPiArKysgYi9hcmNoL2FybS9rZXJuZWwvbW9kdWxlLmMKPiA+IEBAIC05Miw3
ICs5Miw3IEBAIGFwcGx5X3JlbG9jYXRlKEVsZjMyX1NoZHIgKnNlY2hkcnMsIGNvbnN0IGNoYXIg
KnN0cnRhYiwgdW5zaWduZWQgaW50IHN5bWluZGV4LAo+ID4gICAgICAgICAgICAgICBzeW0gPSAo
KEVsZjMyX1N5bSAqKXN5bXNlYy0+c2hfYWRkcikgKyBvZmZzZXQ7Cj4gPiAgICAgICAgICAgICAg
IHN5bW5hbWUgPSBzdHJ0YWIgKyBzeW0tPnN0X25hbWU7Cj4gPgo+ID4gLSAgICAgICAgICAgICBp
ZiAocmVsLT5yX29mZnNldCA8IDAgfHwgcmVsLT5yX29mZnNldCA+IGRzdHNlYy0+c2hfc2l6ZSAt
IHNpemVvZih1MzIpKSB7Cj4gPiArICAgICAgICAgICAgIGlmIChyZWwtPnJfb2Zmc2V0ID4gZHN0
c2VjLT5zaF9zaXplIC0gc2l6ZW9mKHUzMikpIHsKPiA+ICAgICAgICAgICAgICAgICAgICAgICBw
cl9lcnIoIiVzOiBzZWN0aW9uICV1IHJlbG9jICV1IHN5bSAnJXMnOiBvdXQgb2YgYm91bmRzIHJl
bG9jYXRpb24sIG9mZnNldCAlZCBzaXplICV1XG4iLAo+Cj4gQWxzbyBjaGFuZ2UgJWQgdG8gJXUg
aGVyZS4KCkxldCBtZSByZXNlbmQgdGhlIHBhdGNoIHdpdGggdGhlIGNoYW5nZSglZCB0byAldSku
CgpUaGFua3MsCkF1c3RpbiBLaW0KCj4KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
bW9kdWxlLT5uYW1lLCByZWxpbmRleCwgaSwgc3ltbmFtZSwKPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgcmVsLT5yX29mZnNldCwgZHN0c2VjLT5zaF9zaXplKTsKPiA+IC0tCj4gPiAy
LjYuMgo+ID4KPiA+Cj4KPiAtLQo+IFJNSydzIFBhdGNoIHN5c3RlbTogaHR0cHM6Ly93d3cuYXJt
bGludXgub3JnLnVrL2RldmVsb3Blci9wYXRjaGVzLwo+IEZUVEMgYnJvYWRiYW5kIGZvciAwLjht
aWxlIGxpbmUgaW4gc3VidXJiaWE6IHN5bmMgYXQgMTIuMU1icHMgZG93biA2MjJrYnBzIHVwCj4g
QWNjb3JkaW5nIHRvIHNwZWVkdGVzdC5uZXQ6IDExLjlNYnBzIGRvd24gNTAwa2JwcyB1cAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
