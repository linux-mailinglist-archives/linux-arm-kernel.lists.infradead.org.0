Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC9369B4C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 21:21:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t33gdoNMFKsSoNvDmSExqqRATQ9dUDCKMVIa9kBsnjM=; b=Zrg4Q06G+XGuK+
	sv0WJLX+jMvCR1TXX4cdMp2/yLpb0CI2VRmN9TIp2MTZuIHvXIQX8r3C7gfH9ZcIS/J78t5N2NAsz
	DBB1S5OaQDSb7RAMP8QzJKfk6B8uW+jG9Xu6y9ySEikHswCRt0hL/ZG94r4RV5MBggYg71SxwSYqa
	ePqhqg33WbZhVqMS69jIIOknG2IMHBLITuHnrB40MMs7onYhRVCOy4V1ZHlAwl3VIgBRaIGrnRw8h
	Kh7xMlUcp84EZdITnNLPVH32hrvCAd7nKNh8eATlt3utDC2bUAywJxuDIBbX+jMXxPkpeLmfBHuKX
	KKT+g25oLXgIhlaQf8zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn6XP-00031y-0T; Mon, 15 Jul 2019 19:21:27 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn6XD-00030w-Es
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 19:21:16 +0000
Received: by mail-yw1-xc41.google.com with SMTP id l124so7750469ywd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=T6L/T//A/hr8zs4n7h5mkmSwRWcgvC/d4JNrZUI4Hm8=;
 b=WNARhfF9FItohnvszMOVl4tf67FTBW8z6mVMLcqSbMbljIgUy+cX0Jp0YfAAn6kvUV
 6B6qTRPgZBjVJy0+wx5Cj2BakLpiAiVZthmkB8RwCAJT4lZqVISu/fGLTrTZrrYiHF+U
 yzM4+eKufO1eXC5AsamPg9bdbjtTI2uJcJPJsDIzAzR1eYQH2/3+DY2OOPuUGErHf+cH
 6s29jnfo/oPHtq5a/H0Sy1cvGpnTzS1ni4CRff8wbQQa+ysZ+sXz3lWCtiOED27rdf1t
 tkQL8IOHrjNfyHRrYx0QL8ftLKDHp1uf1JDapE1bQHyZKsu3iShgGsknBrH0rgd3UHOE
 ETDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=T6L/T//A/hr8zs4n7h5mkmSwRWcgvC/d4JNrZUI4Hm8=;
 b=W+xknzjrpqo4AlFHmKTvS2ptKWWgq9Jxez8jlIy+8rVgbQ2s5CyxLJnw0vRBFtCTm5
 3A45j8IAkUtE9bl/STo08QbBFbck7AoeT6r0S1ACqjL5lFcNhpMWLlszA9kVTmqaUDdd
 MqCqVxJqEuPYf/1Te/xX0F4YZCNsg4ZPtTqTysERiy48AFeqIVvUqBF3wgGRaKeKLbha
 ZevHAWy/Qa5o04zxndl37ghHaz5TR4l5POoht1aIibpUUPb1UzlUZ6bXR6Tr9N1qosJc
 wSFsrmDY7xd61CDg1wLoDQ+322BOvD8xKKIaOSPiy6TkS06DS7826yxy4XQiCWZJMAAO
 55eg==
X-Gm-Message-State: APjAAAW4MZ4+/sRl42bgzIUaYhTCGnPWDhm1zUsjb9WijRocTV1ogv3S
 lSnH0GAMTDhOhuv3IipHsuxyqiLYH1Ce980+3b8=
X-Google-Smtp-Source: APXvYqxcM/GTLLwXLJ0XLGxzMQuEi34XclLyeCNzAgq1oLJCQsl7q05aszfWDHWZs0j8skZrYjD5o0W5JZ3MI1abTjQ=
X-Received: by 2002:a0d:d884:: with SMTP id
 a126mr16542399ywe.349.1563218472776; 
 Mon, 15 Jul 2019 12:21:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190527200627.8635-1-peron.clem@gmail.com>
 <CAJiuCcfUhBxEr=o7VVpPROQZadQh7z1QC0SkWSYt-53Sj3H2qw@mail.gmail.com>
In-Reply-To: <CAJiuCcfUhBxEr=o7VVpPROQZadQh7z1QC0SkWSYt-53Sj3H2qw@mail.gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 15 Jul 2019 21:21:01 +0200
Message-ID: <CAJiuCcc3_1jZWV7G3+fFQYRZ8b6qcAbnH+K6pkRvww6_D=OMAw@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] Allwinner H6 SPDIF support
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_122115_501323_730255EB 
X-CRM114-Status: GOOD (  22.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpJJ20gbWlzc2luZyBBQ0sgZnJvbSBBU29DIE1haW50YWluZXJzIHBhdGNoIDItMy00LgoK
SXQncyByZWFsbHkgc21hbGwgcGFjaGVzLCBpZiB5b3UgY291bGQgaGF2ZSBhIGxvb2sgYXQgaXQu
Ck1hbnkgdGhhbmtzLApDbMOpbWVudAoKCgpPbiBGcmksIDE0IEp1biAyMDE5IGF0IDEwOjI5LCBD
bMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPiB3cm90ZToKPgo+IEhpLAo+Cj4g
T24gTW9uLCAyNyBNYXkgMjAxOSBhdCAyMjoxMCwgQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVt
QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4gKkg2IERNQSBzdXBwb3J0IElTIFJFUVVJUkVEKgo+
Cj4gRE1BIGhhcyBiZWVuIG1lcmdlZCwgc28gdGhpcyBzZXJpZXMgY2FuIGJlIG1lcmdlIHdoZW4g
QVNvQyBtYWludGFpbmVycwo+IGhhdmUgcmV2aWV3ZWQgaXQuCj4KPiBSZWdhcmRzLAo+IENsw6lt
ZW50Cj4KPiA+Cj4gPiBBbGx3aW5uZXIgSDYgU29DIGhhcyBhIFNQRElGIGNvbnRyb2xsZXIgY2Fs
bGVkIE9uZSBXaXJlIEF1ZGlvIChPV0EpIHdoaWNoCj4gPiBpcyBkaWZmZXJlbnQgZnJvbSB0aGUg
cHJldmlvdXMgSDMgZ2VuZXJhdGlvbiBhbmQgbm90IGNvbXBhdGlibGUuCj4gPgo+ID4gRGlmZmVy
ZW5jZSBhcmUgYW4gaW5jcmVhc2Ugb2YgZmlmbyBzaXplcywgc29tZSBtZW1vcnkgbWFwcGluZyBh
cmUgZGlmZmVyZW50Cj4gPiBhbmQgdGhlcmUgaXMgbm93IHRoZSBwb3NzaWJpbGl0eSB0byBvdXRw
dXQgdGhlIG1hc3RlciBjbG9jayBvbiBhIHBpbi4KPiA+Cj4gPiBBY3R1YWxseSBhbGwgdGhlc2Ug
ZmVhdHVyZXMgYXJlIHVudXNlZCBhbmQgb25seSBhIGJpdCBmb3IgZmx1c2hpbmcgdGhlIFRYCj4g
PiBmaWZvIGlzIHJlcXVpcmVkLgo+ID4KPiA+IEFsc28gdGhpcyBzZXJpZXMgcmVxdWlyZXMgdGhl
IERNQSB3b3JraW5nIG9uIEg2LCBhIGZpcnN0IHZlcnNpb24gaGFzIGJlZW4KPiA+IHN1Ym1pdHRl
ZCBieSBKZXJuZWogxaBrcmFiZWNbMV0gYnV0IGhhcyBub3QgYmVlbiBhY2NlcHRlZCB5ZXQuCj4g
Pgo+ID4gWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1hcm0t
a2VybmVsL2xpc3QvP3Nlcmllcz04OTAxMQo+ID4KPiA+IENoYW5nZXMgc2luY2UgdjM6Cj4gPiAg
LSByZW5hbWUgcmVnX2ZjdGxfZnR4IHRvIHZhbF9mY3RsX2Z0eAo+ID4gIC0gcmViYXNlIHRoaXMg
c2VyaWVzIG9uIHNvdW5kLW5leHQKPiA+ICAtIGZpeCBkdC1iaW5kaW5ncyBkdWUgdG8gY2hhbmdl
IGluIHNvdW5kLW5leHQKPiA+ICAtIGNoYW5nZSBub2RlIG5hbWUgc291bmRfc3BkaWYgdG8gc291
bmQtc3BkaWYKPiA+Cj4gPiBDaGFuZ2VzIHNpbmNlIHYyOgo+ID4gIC0gU3BsaXQgcXVpcmtzIGFu
ZCBINiBzdXBwb3J0IHBhdGNoCj4gPiAgLSBBZGQgc3BlY2lmaWMgc2VjdGlvbiBmb3IgcXVpcmtz
IGNvbW1lbnQKPiA+Cj4gPiBDaGFuZ2VzIHNpbmNlIHYxOgo+ID4gIC0gUmVtb3ZlIEgzIGNvbXBh
dGlibGUKPiA+ICAtIEFkZCBUWCBmaWZvIGJpdCBmbHVzaCBxdWlya3MKPiA+ICAtIEFkZCBINiBi
aW5kaW5ncyBpbiBTUERJRiBkcml2ZXIKPiA+Cj4gPiBDbMOpbWVudCBQw6lyb24gKDcpOgo+ID4g
ICBkdC1iaW5kaW5nczogc291bmQ6IHN1bjRpLXNwZGlmOiBBZGQgQWxsd2lubmVyIEg2IGNvbXBh
dGlibGUKPiA+ICAgQVNvQzogc3VuNGktc3BkaWY6IE1vdmUgcXVpcmtzIHRvIHRoZSB0b3AKPiA+
ICAgQVNvQzogc3VuNGktc3BkaWY6IEFkZCBUWCBmaWZvIGJpdCBmbHVzaCBxdWlya3MKPiA+ICAg
QVNvQzogc3VuNGktc3BkaWY6IEFkZCBzdXBwb3J0IGZvciBINiBTb0MKPiA+ICAgYXJtNjQ6IGR0
czogYWxsd2lubmVyOiBBZGQgU1BESUYgbm9kZSBmb3IgQWxsd2lubmVyIEg2Cj4gPiAgIGFybTY0
OiBkdHM6IGFsbHdpbm5lcjogaDY6IEVuYWJsZSBTUERJRiBmb3IgQmVlbGluayBHUzEKPiA+ICAg
YXJtNjQ6IGRlZmNvbmZpZzogRW5hYmxlIFN1bjRpIFNQRElGIG1vZHVsZQo+ID4KPiA+ICAuLi4v
c291bmQvYWxsd2lubmVyLHN1bjRpLWExMC1zcGRpZi55YW1sICAgICAgfCAgMSArCj4gPiAgLi4u
L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cyAgIHwgIDQgKysKPiA+ICBh
cmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSAgfCAzOCArKysrKysr
KysrKysrKwo+ID4gIGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcgICAgICAgICAgICAgICAg
ICB8ICAxICsKPiA+ICBzb3VuZC9zb2Mvc3VueGkvc3VuNGktc3BkaWYuYyAgICAgICAgICAgICAg
ICAgfCA0OSArKysrKysrKysrKysrKysrLS0tCj4gPiAgNSBmaWxlcyBjaGFuZ2VkLCA4NyBpbnNl
cnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+ID4KPiA+IC0tCj4gPiAyLjIwLjEKPiA+CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
