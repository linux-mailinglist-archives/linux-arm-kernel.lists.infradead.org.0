Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E387CEE6ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 19:07:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Q/X+Uh14URcVEuqrSvQnW99hRSHA/rGFxbtn9yp41g=; b=cfqtRtRSlfQAXY
	UMRBacFzpXSVeyQmOcuEoXwcqpc44iZOaj7TpS9LEJ159pDxnkfKqt7Rb7sxiHYO+hpYQ2+i0dpMv
	AJgYG+QR0N1DUZtapNH4Ad4uE/5nzScLGX2NqaVewYkalTOjKd/JcRc4m+53SM0qneokXiW8aihCd
	PaimRijLmzbFH79C0vpIn5WIFTlkDXeA10gJQaRSPV2SEfB/l9K9aK/3SdWqBXJ/yjDOjPJVY254H
	DojCNYnckZSkDSxyoTnRO/FPBoOmWtBGKapwXA3yAK4ykcPZ6bKLZvwS0DPLUXEzJ6yswGpF3dboa
	oRMmT/CcuTWlSa9dRiEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRgl9-0004wN-51; Mon, 04 Nov 2019 18:07:23 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRgl0-0004ve-8l
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 18:07:15 +0000
Received: by mail-wm1-x343.google.com with SMTP id z19so12927108wmk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 10:07:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=D72jRVZqmBfC7+Kb0tuNNuuY7Rbqh0u4ZcubYxJiVEw=;
 b=gg9RZglh3dQ4I9+Zrbd1c//TX0x8bXkbzTd7d9zunTP8ch+dDb4GuNaR8AxJbaDO4c
 gMzwKdy0JWl8EtwbGmeZ0f5nux/vtpAGkzSuPORs8AmbWG9FpekLb+jivIWLgha5NMgB
 s9MAaYyn/7ZheraWZiRQjs0d0MQLB88RCjv82Skmh3/0Fm4oXhzXXa/7J2wML4wuDVes
 P64tXVOd2Jy8BEbF5Mnzr6Q2nnVaWxs3zKkOQlmIzW1vUhqhrxyVIyvJCR6YQl7yqxJi
 /ta4JBzY6klYitSHVeFATcHL878nhxbkfevLByjfHmWcgKKfPyxBr+sqESD2oVWEWcj8
 ZYdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=D72jRVZqmBfC7+Kb0tuNNuuY7Rbqh0u4ZcubYxJiVEw=;
 b=dHRysYuWxURzH7lkkrfULpacYQrawBuCdoG/C1eU/uuk98foWyRpkhO+LofaF0mDf7
 R6kE7EzX7id+ot1nq5hEQYrzK17hJlgTwwzkr1PbG1HWL0UP+A6FOvnJiDvTY0EbuD3m
 b6YxgHxSh4b7BtVetiaJlCYeCpeQcRcX3F9XXjjHxsMfjbzz38KYuhx3aEA2IgSzKuqO
 xmhLV2S3/6qxnCg8ne5V3VH2VYG+y4M00tu6k9nlTqA1eX6QOfuPRRewCaTZs+u6T/nc
 JGHuWKerfsMd9eiB0Vccdm/fLpg93bTF+43EG48Q7KpfEAuwELG1NgTnEPTzbdIrOzbt
 PzWQ==
X-Gm-Message-State: APjAAAU8VrVsjLFcKzOhtF/uOA/vSyg76qtJJy/A0PyoMpXAPDJ1A9He
 eep1r4gL4yzVcAUbs7p1VCFbs4oEY/EpyXsQtoc=
X-Google-Smtp-Source: APXvYqxE/svCT32/l15YGFj4OySpY2sp1btqvHGxgQbUQ4gig2jWXLFKgpgss9RjBjRgyjDvqnAyDZbUF5kA36KzIRQ=
X-Received: by 2002:a1c:480a:: with SMTP id v10mr360011wma.138.1572890831792; 
 Mon, 04 Nov 2019 10:07:11 -0800 (PST)
MIME-Version: 1.0
References: <20191103203334.10539-1-peron.clem@gmail.com>
 <20191103203334.10539-4-peron.clem@gmail.com>
 <20191104082410.qdgcnphkamlzaipf@pengutronix.de>
In-Reply-To: <20191104082410.qdgcnphkamlzaipf@pengutronix.de>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 4 Nov 2019 19:07:00 +0100
Message-ID: <CAJiuCcdxHDwoQYBsrjK5dcOtMDie62DzJ84NH+bZzYHHv49fEQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/7] pwm: sun4i: Add an optional probe for bus clock
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_100714_335241_1575B2A7 
X-CRM114-Status: GOOD (  28.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBNb24sIDQgTm92IDIwMTkgYXQgMDk6MjQsIFV3ZSBLbGVpbmUtS8O2bmlnCjx1Lmts
ZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gSGVsbG8sCj4KPiBPbiBTdW4s
IE5vdiAwMywgMjAxOSBhdCAwOTozMzozMFBNICswMTAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6
Cj4gPiBGcm9tOiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+Cj4gPgo+
ID4gSDYgUFdNIGNvcmUgbmVlZHMgYnVzIGNsb2NrIHRvIGJlIGVuYWJsZWQgaW4gb3JkZXIgdG8g
d29yay4KPiA+Cj4gPiBBZGQgYW4gb3B0aW9uYWwgcHJvYmUgZm9yIGl0IGFuZCBhIGZhbGxiYWNr
IGZvciBwcmV2aW91cwo+ID4gYmluZGluZ3Mgd2l0aG91dCBuYW1lIG9uIG1vZHVsZSBjbG9jay4K
PiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lv
bC5uZXQ+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21h
aWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgfCAzNiArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMzYgaW5z
ZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYyBi
L2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCj4gPiBpbmRleCBkMTk0YjhlYmRiMDAuLmI1ZTdhYzM2
NGY1OSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCj4gPiArKysgYi9k
cml2ZXJzL3B3bS9wd20tc3VuNGkuYwo+ID4gQEAgLTc4LDYgKzc4LDcgQEAgc3RydWN0IHN1bjRp
X3B3bV9kYXRhIHsKPiA+Cj4gPiAgc3RydWN0IHN1bjRpX3B3bV9jaGlwIHsKPiA+ICAgICAgIHN0
cnVjdCBwd21fY2hpcCBjaGlwOwo+ID4gKyAgICAgc3RydWN0IGNsayAqYnVzX2NsazsKPiA+ICAg
ICAgIHN0cnVjdCBjbGsgKmNsazsKPiA+ICAgICAgIHN0cnVjdCByZXNldF9jb250cm9sICpyc3Q7
Cj4gPiAgICAgICB2b2lkIF9faW9tZW0gKmJhc2U7Cj4gPiBAQCAtMzY3LDYgKzM2OCwzMSBAQCBz
dGF0aWMgaW50IHN1bjRpX3B3bV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
Cj4gQWRkaW5nIG1vcmUgY29udGV4dCBoZXJlOgo+Cj4gfCAgICAgICBwd20tPmNsayA9IGRldm1f
Y2xrX2dldCgmcGRldi0+ZGV2LCBOVUxMKTsKPiA+ICAgICAgIGlmIChJU19FUlIocHdtLT5jbGsp
KQo+ID4gICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihwd20tPmNsayk7Cj4gPgo+ID4gKyAg
ICAgLyogR2V0IGFsbCBjbG9ja3MgYW5kIHJlc2V0IGxpbmUgKi8KPiA+ICsgICAgIHB3bS0+Y2xr
ID0gZGV2bV9jbGtfZ2V0X29wdGlvbmFsKCZwZGV2LT5kZXYsICJtb2QiKTsKPiA+ICsgICAgIGlm
IChJU19FUlIocHdtLT5jbGspKSB7Cj4gPiArICAgICAgICAgICAgIGRldl9lcnIoJnBkZXYtPmRl
diwgImdldCBjbG9jayBmYWlsZWQgJWxkXG4iLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgIFBU
Ul9FUlIocHdtLT5jbGspKTsKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIocHdtLT5j
bGspOwo+ID4gKyAgICAgfQo+Cj4gSSBndWVzcyB5b3Ugd2FudCB0byBkcm9wIHRoZSBmaXJzdCBh
c3NpZ25tZW50IHRvIHB3bS0+Y2xrLgoKZGV2bV9jbGtfZ2V0X29wdGlvbmFsIHdpbGwgcmV0dXJu
IE5VTEwgaWYgdGhlcmUgaXMgbm8gZW50cnksIEkgZG9uJ3QKZ2V0IHdoZXJlIEkgbmVlZCB0byBk
cm9wIGl0IGFzc2lnbm1lbnQuCgo+Cj4gPiArICAgICAvKiBGYWxsYmFjayBmb3Igb2xkIGR0YnMg
d2l0aCBhIHNpbmdsZSBjbG9jayBhbmQgbm8gbmFtZSAqLwo+ID4gKyAgICAgaWYgKCFwd20tPmNs
aykgewo+ID4gKyAgICAgICAgICAgICBwd20tPmNsayA9IGRldm1fY2xrX2dldCgmcGRldi0+ZGV2
LCBOVUxMKTsKPiA+ICsgICAgICAgICAgICAgaWYgKElTX0VSUihwd20tPmNsaykpIHsKPiA+ICsg
ICAgICAgICAgICAgICAgICAgICBkZXZfZXJyKCZwZGV2LT5kZXYsICJnZXQgY2xvY2sgZmFpbGVk
ICVsZFxuIiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFBUUl9FUlIocHdtLT5j
bGspKTsKPiA+ICsgICAgICAgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihwd20tPmNsayk7
Cj4gPiArICAgICAgICAgICAgIH0KPiA+ICsgICAgIH0KPgo+IFRoZXJlIGlzIGEgc2xpZ2h0IGNo
YW5nZSBvZiBiZWhhdmlvdXIgaWYgSSdtIG5vdCBtaXN0YWtlbi4gSWYgeW91IGhhdmUKPiB0aGlz
Ogo+Cj4gICAgICAgICBjbG9ja3MgPSA8JmNsazE+Owo+ICAgICAgICAgY2xvY2stbmFtZXMgPSAi
bW9kIjsKPgo+ICAgICAgICAgcHdtIHsKPiAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJh
bGx3aW5uZXIsc3VuNGktYTEwLXB3bSIKPiAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbGsy
PjsKPiAgICAgICAgIH0KPgo+IHlvdSBub3cgdXNlIGNsazEgaW5zdGVhZCBvZiBjbGsyIGJlZm9y
ZS4KPgo+IEFzc3VtaW5nIHRoaXMgaXMgb25seSBhIHRoZW9yZXRpY2FsIHByb2JsZW0sIGF0IGxl
YXN0IHBvaW50aW5nIHRoaXMgb3V0Cj4gaW4gdGhlIGNvbW1pdCBsb2cgd291bGQgYmUgZ29vZCBJ
IHRoaW5rLgoKWWVzIGl0J3MgY29ycmVjdCBhbmQgYXMgeW91IHNhaWQgdGhlIGRyaXZlciBkb24n
dCBjaGVjayBmb3IgYSBjb3JyZWN0CmRldmljZSB0cmVlLAp0aGF0IHdoeSBpdCdzIG5vdyBvcHRp
b25hbCBwcm9iZS4KTGV0J3MgYXNzdW1lIHRoYXQncyB0aGUgZGV2aWNlLXRyZWUgaXMgY29ycmVj
dCwgSSB3aWxsIGFkZCBhIGNvbW1lbnQKaW4gdGhlIGNvbW1pdCBsb2cuCgo+Cj4gPiArICAgICBw
d20tPmJ1c19jbGsgPSBkZXZtX2Nsa19nZXRfb3B0aW9uYWwoJnBkZXYtPmRldiwgImJ1cyIpOwo+
ID4gKyAgICAgaWYgKElTX0VSUihwd20tPmJ1c19jbGspKSB7Cj4gPiArICAgICAgICAgICAgIGRl
dl9lcnIoJnBkZXYtPmRldiwgImdldCBidXNfY2xvY2sgZmFpbGVkICVsZFxuIiwKPiA+ICsgICAg
ICAgICAgICAgICAgICAgICBQVFJfRVJSKHB3bS0+YnVzX2NsaykpOwo+ID4gKyAgICAgICAgICAg
ICByZXR1cm4gUFRSX0VSUihwd20tPmJ1c19jbGspOwo+ID4gKyAgICAgfQo+ID4gKwo+ID4gICAg
ICAgcHdtLT5yc3QgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0X29wdGlvbmFsKCZwZGV2LT5kZXYs
IE5VTEwpOwo+ID4gICAgICAgaWYgKElTX0VSUihwd20tPnJzdCkpIHsKPiA+ICAgICAgICAgICAg
ICAgaWYgKFBUUl9FUlIocHdtLT5yc3QpID09IC1FUFJPQkVfREVGRVIpCj4gPiBAQCAtMzgxLDYg
KzQwNywxMyBAQCBzdGF0aWMgaW50IHN1bjRpX3B3bV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQo+ID4gICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gICAgICAgfQo+ID4K
PiA+ICsgICAgIC8qIEVuYWJsZSBidXMgY2xvY2sgKi8KPiA+ICsgICAgIHJldCA9IGNsa19wcmVw
YXJlX2VuYWJsZShwd20tPmJ1c19jbGspOwo+ID4gKyAgICAgaWYgKHJldCkgewo+ID4gKyAgICAg
ICAgICAgICBkZXZfZXJyKCZwZGV2LT5kZXYsICJDYW5ub3QgcHJlcGFyZV9lbmFibGUgYnVzX2Ns
a1xuIik7Cj4KPiBJJ2QgZG8gcy9wcmVwYXJlX2VuYWJsZS9wcmVwYXJlIGFuZCBlbmFibGUvIGhl
cmUuCk9rCgo+Cj4gPiArICAgICAgICAgICAgIGdvdG8gZXJyX2J1czsKPiA+ICsgICAgIH0KPiA+
ICsKPiA+ICAgICAgIHB3bS0+Y2hpcC5kZXYgPSAmcGRldi0+ZGV2Owo+ID4gICAgICAgcHdtLT5j
aGlwLm9wcyA9ICZzdW40aV9wd21fb3BzOwo+ID4gICAgICAgcHdtLT5jaGlwLmJhc2UgPSAtMTsK
PiA+IEBAIC00MDEsNiArNDM0LDggQEAgc3RhdGljIGludCBzdW40aV9wd21fcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ICAgICAgIHJldHVybiAwOwo+ID4KPiA+ICBlcnJf
cHdtX2FkZDoKPiA+ICsgICAgIGNsa19kaXNhYmxlX3VucHJlcGFyZShwd20tPmJ1c19jbGspOwo+
ID4gK2Vycl9idXM6Cj4gPiAgICAgICByZXNldF9jb250cm9sX2Fzc2VydChwd20tPnJzdCk7Cj4g
Pgo+ID4gICAgICAgcmV0dXJuIHJldDsKPgo+IFdoYXQgaXMgdGhhdCBjbG9jayB1c2VkIGZvcj8g
SXMgaXQgcmVxdWlyZWQgdG8gYWNjZXNzIHRoZSBoYXJkd2FyZQo+IHJlZ2lzdGVycz8gT3IgaXMg
aXQgb25seSByZXF1aXJlZCB3aGlsZSB0aGUgUFdNIGlzIGVuYWJsZWQ/IElmIHNvIHlvdQo+IGNv
dWxkIGVuYWJsZSB0aGUgY2xvY2sgbW9yZSBmaW5lZ3JhaW5kZWQuCgpSZWdhcmRpbmcgdGhlIGRh
dGFzaGVldCBpdCdzIHJlcXVpcmVkIHRvIGFjY2VzcyB0aGUgaGFyZHdhcmUuCnBhZ2UgMjYxIDog
aHR0cHM6Ly9saW51eC1zdW54aS5vcmcvRmlsZTpBbGx3aW5uZXJfSDZfVjIwMF9Vc2VyX01hbnVh
bF9WMS4xLnBkZgoKUmVnYXJkcywKQ2zDqW1lbnQKCj4KPiBCZXN0IHJlZ2FyZHMKPiBVd2UKPgo+
IC0tCj4gUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgVXdlIEts
ZWluZS1Lw7ZuaWcgICAgICAgICAgICB8Cj4gSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAg
ICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
