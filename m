Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E18105BFF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 22:32:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VHJCRjMe2QjGQNntE6A1J2ETJSlok7u2rb/GWKcQVcI=; b=Erpbx4gVsHBVY0
	QUUgH+LGjmQ0oMmQx1S1E8pwt7FkthoG2YBjBEcUqdqbLcV5fZcpevAekfhlbYVfcdL9RyA2x6n4W
	6Iroa4Mf2w50Sr2W8l5FxFRGtqiEd/cMEQhX6U9T/pxomPQKruv1VF+xHM2Cnvn6uJxAWpEBiWMjA
	nL/7vUXpFm5psAGrVJoTqMO7eSYrwh5s3oc+IxL2ZGTenyWqfEkFG8qZULffsW1uWTXKT26CGdlka
	qE60jZP3ffAYn5YtOn5ldd/eKi+ZGe70Py77tUyJcwkjhm0U1kOnVa6lhpuiHj+rPIypBkTeK+ES3
	Gs4nUfGLhCwC89DEn82g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXu3P-0003XI-UM; Thu, 21 Nov 2019 21:31:55 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXu3E-0003Ws-UG
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 21:31:46 +0000
Received: by mail-wr1-x444.google.com with SMTP id b18so6196727wrj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 13:31:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=SoUQjIpFH9P3ATfJoGFUNE500XWpftLyS5ervo+RPr0=;
 b=UEfE1SngNpm6u6VyDXcMCWEbOBNvZBhnOw/HHfv1NOUt8C4HjuZ9AVT61Krh9rYZ/G
 B/Qe30Em1qPbRb2B058RM3d4A2kv+3Lc//WvO/36DQBUdBGD04iWs23v0p99nY4Dd866
 54tqpQ18Vf1uCwiNcgeaSxVX/QHM3yk1LDR0ZZxNH86mpwxzxYL6waZFQS5I1T1yiszg
 6t3lmLXpM48Yz4Mfamr8dzJtFHf5gfnD06jm3D9x5WjzO+syTHvNsAxd2foMhBS/NIuL
 ZPLYsGtC5XvkQWb7edA9heFd1VfbOeC24cLpaDwaU6Ue/kyT2U3rn0MUdXrFjLfbrCXt
 ghZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=SoUQjIpFH9P3ATfJoGFUNE500XWpftLyS5ervo+RPr0=;
 b=rnuC8yClJ+K4+KlGcG3De6L8iW/xEgVDeeG0k4DwmWbKABjBhaxgKE8n//PKn5OQpy
 QXLaCcUTHNumzVwOtrJzb9RuLi9+pMIq5FnqZ6wIVwACa+5bQEMf65jeCGuH/7XWeSrM
 MRfC0ui+cAHiGcBBE4d0tOl+94KiSXhBpdUETOsd/MWqu2fMYY4HaI/TlZyt0r9T8RLk
 /t8yqZRE0MQq6B2PgTeYHZfe/UrJnGqXSiHrriDwepuqoePRpIC26ye1GggcX42p1Mn0
 DgDz7RfQHKqjIzF4s+u8ii0W4cDUjdPJ+So7WngNIanXbhiUmOBsii2eq/xZeUKbG6Dm
 aVKg==
X-Gm-Message-State: APjAAAVVzV0kA81oDXZHEaj/pwvGQJUi0DQpsYPIhjubNm+hPnXSlFTw
 cScnKdLtMVrEB57N4ivLHQ3g8VRJOcRxHvIEV/s=
X-Google-Smtp-Source: APXvYqxsJhXfTc8mMDtjZSX8K/+oYy2Mi3i1Rsn27A6eUuEv2h+lplYbUwux8ECvZizvbfOakcuTlnkkQPqrPK41ZIk=
X-Received: by 2002:a5d:5411:: with SMTP id g17mr13463079wrv.360.1574371902690; 
 Thu, 21 Nov 2019 13:31:42 -0800 (PST)
MIME-Version: 1.0
References: <20191121195902.6906-1-peron.clem@gmail.com>
 <20191121195902.6906-4-peron.clem@gmail.com>
 <20191121210559.pz3nsyomqfrjuoe4@pengutronix.de>
In-Reply-To: <20191121210559.pz3nsyomqfrjuoe4@pengutronix.de>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Thu, 21 Nov 2019 22:31:31 +0100
Message-ID: <CAJiuCcfj7rngTgbZQDwjKoLgRGcqsYscBvrCP095zzyASKSqdQ@mail.gmail.com>
Subject: Re: [PATCH v8 3/6] pwm: sun4i: Add an optional probe for bus clock
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_133144_974784_D0487D34 
X-CRM114-Status: GOOD (  21.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>, Philipp Zabel <pza@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlLAoKT24gVGh1LCAyMSBOb3YgMjAxOSBhdCAyMjowNiwgVXdlIEtsZWluZS1Lw7ZuaWcK
PHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4KPiBPbiBUaHUsIE5vdiAy
MSwgMjAxOSBhdCAwODo1ODo1OVBNICswMTAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiBG
cm9tOiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+Cj4gPgo+ID4gSDYg
UFdNIGNvcmUgbmVlZHMgYnVzIGNsb2NrIHRvIGJlIGVuYWJsZWQgaW4gb3JkZXIgdG8gd29yay4K
PiA+Cj4gPiBBZGQgYW4gb3B0aW9uYWwgcHJvYmUgZm9yIGl0Lgo+ID4KPiA+IFNpZ25lZC1vZmYt
Ynk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KPiA+IFNpZ25lZC1v
ZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+
ICBkcml2ZXJzL3B3bS9wd20tc3VuNGkuYyB8IDIzICsrKysrKysrKysrKysrKysrKysrKysrCj4g
PiAgMSBmaWxlIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgYi9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwo+ID4gaW5k
ZXggMzY5OTkwYWU3ZDA5Li42NmJlZmQ4ZDZmOWMgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3B3
bS9wd20tc3VuNGkuYwo+ID4gKysrIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKPiA+IEBAIC03
OCw2ICs3OCw3IEBAIHN0cnVjdCBzdW40aV9wd21fZGF0YSB7Cj4gPgo+ID4gIHN0cnVjdCBzdW40
aV9wd21fY2hpcCB7Cj4gPiAgICAgICBzdHJ1Y3QgcHdtX2NoaXAgY2hpcDsKPiA+ICsgICAgIHN0
cnVjdCBjbGsgKmJ1c19jbGs7Cj4gPiAgICAgICBzdHJ1Y3QgY2xrICpjbGs7Cj4gPiAgICAgICBz
dHJ1Y3QgcmVzZXRfY29udHJvbCAqcnN0Owo+ID4gICAgICAgdm9pZCBfX2lvbWVtICpiYXNlOwo+
ID4gQEAgLTM5MSw2ICszOTIsMTQgQEAgc3RhdGljIGludCBzdW40aV9wd21fcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ICAgICAgICAgICAgICAgfQo+ID4gICAgICAgfQo+
ID4KPiA+ICsgICAgIHB3bS0+YnVzX2NsayA9IGRldm1fY2xrX2dldF9vcHRpb25hbCgmcGRldi0+
ZGV2LCAiYnVzIik7Cj4gPiArICAgICBpZiAoSVNfRVJSKHB3bS0+YnVzX2NsaykpIHsKPiA+ICsg
ICAgICAgICAgICAgaWYgKFBUUl9FUlIocHdtLT5yc3QpICE9IC1FUFJPQkVfREVGRVIpCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgZGV2X2VycigmcGRldi0+ZGV2LCAiZ2V0IGJ1cyBjbG9jayBm
YWlsZWQgJXBlXG4iLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcHdtLT5idXNf
Y2xrKTsKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIocHdtLT5idXNfY2xrKTsKPiA+
ICsgICAgIH0KPiA+ICsKPiA+ICAgICAgIHB3bS0+cnN0ID0gZGV2bV9yZXNldF9jb250cm9sX2dl
dF9vcHRpb25hbF9zaGFyZWQoJnBkZXYtPmRldiwgTlVMTCk7Cj4gPiAgICAgICBpZiAoSVNfRVJS
KHB3bS0+cnN0KSkgewo+ID4gICAgICAgICAgICAgICBpZiAoUFRSX0VSUihwd20tPnJzdCkgIT0g
LUVQUk9CRV9ERUZFUikKPiA+IEBAIC00MDcsNiArNDE2LDE3IEBAIHN0YXRpYyBpbnQgc3VuNGlf
cHdtX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiAgICAgICAgICAgICAg
IHJldHVybiByZXQ7Cj4gPiAgICAgICB9Cj4gPgo+ID4gKyAgICAgLyoKPiA+ICsgICAgICAqIFdl
J3JlIGtlZXBpbmcgdGhlIGJ1cyBjbG9jayBvbiBmb3IgdGhlIHNha2Ugb2Ygc2ltcGxpY2l0eS4K
PiA+ICsgICAgICAqIEFjdHVhbGx5IGl0IG9ubHkgbmVlZHMgdG8gYmUgb24gZm9yIGhhcmR3YXJl
IHJlZ2lzdGVyIGFjY2Vzc2VzLgo+ID4gKyAgICAgICovCj4gPiArICAgICByZXQgPSBjbGtfcHJl
cGFyZV9lbmFibGUocHdtLT5idXNfY2xrKTsKPiA+ICsgICAgIGlmIChyZXQpIHsKPiA+ICsgICAg
ICAgICAgICAgZGV2X2VycigmcGRldi0+ZGV2LCAiQ2Fubm90IHByZXBhcmUgYW5kIGVuYWJsZSBi
dXNfY2xrICVkXG4iLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJldCk7Cj4KPiBuaXRwaWNr
OiBvdGhlciBlcnJvciBtZXNzYWdlcyBpbiB0aGlzIGRyaXZlciBzdGFydCB3aXRoIGEgbG93ZXIg
Y2FzZQo+IGxldHRlci4KPgo+IFVudGlsIHRoZXJlIGlzIGFuIGVxdWl2YWxlbnQgZm9yICVwZSB0
aGF0IGNvbnN1bWVzIGFuIGludCwgSSBzdWdnZXN0IHRvCj4gdXNlCj4KPiAgICAgICAgIGRldl9l
cnIoJnBkZXYtPmRldiwgIkNhbm5vdCBwcmVwYXJlIGFuZCBlbmFibGUgYnVzX2NsazogJXBlXG4i
LAo+ICAgICAgICAgICAgICAgICBFUlJfUFRSKHJldCkpOwo+Cj4gdG8gYmVuZWZpdCBmcm9tIGEg
c3ltYm9saWMgZXJyb3IgbmFtZSBpbnN0ZWFkIG9mIGFuIGVycm9yIGNvbnN0YW50LgoKT2sgaSB3
aWxsIGZpeCBib3RoCgpUaGFua3MsCkNsZW1lbnQKCj4KPiBCZXN0IHJlZ2FyZHMKPiBVd2UKPgo+
IC0tCj4gUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgVXdlIEts
ZWluZS1Lw7ZuaWcgICAgICAgICAgICB8Cj4gSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAg
ICAgICAgICAgICAgIHwgaHR0cHM6Ly93d3cucGVuZ3V0cm9uaXguZGUvIHwKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
