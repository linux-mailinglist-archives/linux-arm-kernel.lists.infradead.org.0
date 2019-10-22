Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB40CE03A2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 14:13:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XCAMBG453V0KGFV2x7xTMVxGjrjOOsAREQYQORu93Bc=; b=aNp+pefSIGAFFW
	a5ybzbp9cRzn/oHXPWaGbLHQGNjNN9mJ04fmdJhvsNt5ZQUQzwZpGvJ1Cp/DxN6UYf48020vKSW1t
	N9T0XD/i/xB6NJdtkUNZLV7MshG7TrK/aZJP2USjMSOUsYmtdr70xycUOk1244xXpAVUcgQGpJ6D0
	SMs6ZC5wucihmMRJD7+ukfEVXd5CPmjgBajk0v/bQ6GRQR4Q44WQdK28ygq0OMJr/5E8QF5eO4lH6
	Kk/nacyWDf2SUo98K3P6/usdX5wkzGdYMsfKnP6JEgTHSSPcli2u2W7tZZzzfh5He9FDb33gb1iNQ
	UN/P8LnWC/5x/WO/x1Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMt2P-0005eK-N1; Tue, 22 Oct 2019 12:13:21 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMt2H-0005de-1W
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 12:13:14 +0000
Received: by mail-io1-xd43.google.com with SMTP id c25so20031077iot.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 05:13:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=7VUSL4glh9tdmGltrbXAxLhst/cC64H17TVs7Wd2ISI=;
 b=KNj120IAsn18ftYPNYtGAMO522hDC71q+lnhMtWOYXoXlDsQo9QgcVuidnJk/ml7tr
 UbqrQwC1U8wazJ7pHfzxOF7LsixYPLXxRE9/JTcNA33V/m2jTWO+KAELTbrPE8q0D6HW
 S9+0vi0V/9gTXRujRZeQ8kuvFFrKCsEWVB5YHsGdr//QG36RtI8w7Ivuc3u3oSfL7y0U
 07cTguxrdcpKQNMzG+oFAzr+Ziun2e0ahAEXELyZvsQxszVck3Pxet4kl1tSkrZdOCHp
 z0Jy+6K1Gkapib2IaHiK6EzZNdk0P8i9rV92PT0J1kYTE863bAcw/RHuDUMxThwvDmiy
 imCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=7VUSL4glh9tdmGltrbXAxLhst/cC64H17TVs7Wd2ISI=;
 b=buOPLcUGDgWi+BgeG/wj7Vp4fqIgZ3CSsab7A3r6gFu98W0ZYdg93erENS2v/YDPS/
 iFCMGwlo3aSCkHEWzgDv6DCW/Rl/MdLp2iUBrqHrMndjNUbyirWxXiPBV5V5HpFWvfsi
 bi9wsOoGYrZ5/zbC8UpSZ5iWWeFpA5KSBAM2ldSf2IiEqZ/4N41oPGgVr1lZ54To4HwK
 f072M6O5IDV7Vg09djoTitWNLD+Rh6bgLkv+dTdY+3lkres5opjriNKVrSsBSoZk27Dg
 1q1sGBJ7S1AidNdP/0fN3cOdyQQPTm7aSPLo3SiAPzUJb87f+l/8jUN/tHShV2C+W3Ni
 1PBA==
X-Gm-Message-State: APjAAAXPJ0DA06qjusyiPWDkcbAOt5I1rDwxyx5/KlEJM1/ri6TrXDil
 BP6FIXmpC6kcKUQ3vG0kpwqdCTWrSQ3IBcE3Blk=
X-Google-Smtp-Source: APXvYqz9BuIKcbppibeFWeJbwe4oRUtRoe+yhYAEZFYke6YfzSl3wycLo6ueyYsgQWQ8Is+1lpwo08JP+zHbKn3n89w=
X-Received: by 2002:a02:92c9:: with SMTP id c9mr3507699jah.0.1571746391225;
 Tue, 22 Oct 2019 05:13:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190828150037.2640-1-aford173@gmail.com>
 <20190905230443.GA52127@atomide.com>
 <CAHCN7xL0fbr=Sv+b=0AuGB1PPhAAFdAFLEd_iBM+ZMTkUw5sHQ@mail.gmail.com>
 <CAHCN7xL-Gfxe0qF5w7BUsHnyhcNNpmCnchdKErnmiqggXfsLWw@mail.gmail.com>
 <20190909134033.s26eiurpat3iekse@pali> <20190909163543.GQ52127@atomide.com>
In-Reply-To: <20190909163543.GQ52127@atomide.com>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 22 Oct 2019 07:13:00 -0500
Message-ID: <CAHCN7xJjMNOLT5oPn8CArApM5b2ksPon8eALq=gUi0ZqoLjGHQ@mail.gmail.com>
Subject: Re: [RFC] ARM: omap3: Enable HWMODS for HW Random Number Generator
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_051313_109667_AAA59613 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Paul Walmsley <paul@pwsan.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali.rohar@gmail.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>, Adam Ford <adam.ford@logicpd.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBTZXAgOSwgMjAxOSBhdCAxMTozNSBBTSBUb255IExpbmRncmVuIDx0b255QGF0b21p
ZGUuY29tPiB3cm90ZToKPgo+ICogUGFsaSBSb2jDoXIgPHBhbGkucm9oYXJAZ21haWwuY29tPiBb
MTkwOTA5IDEzOjQxXToKPiA+IE9uIE1vbmRheSAwOSBTZXB0ZW1iZXIgMjAxOSAwODozNzowOSBB
ZGFtIEZvcmQgd3JvdGU6Cj4gPiA+IEkgYXBwbGllZCB0aGlzIG9uIDUuMyBhbmQgaXQgaXMgd29y
a2luZy4gIEkgYXNzdW1lIHRoZSBzYW1lIGlzIHRydWUgaW4gZm9yLW5leHQuCj4KPiBIbW0gSSBu
b3RpY2VkIEkgc3RvcHBlZCBnZXR0aW5nIFJORyBkYXRhIGFmdGVyIHNldmVyYWwgcm1tb2QgbW9k
cHJvYmUKPiBjeWNsZXMsIG9yIHNldmVyYWwgaGQgL2Rldi9yYW5kb20gcmVhZHMuIEFueWJvZHkg
ZWxzZSBzZWVpbmcgdGhhdD8KPgo+ID4gPiBEbyB5b3Ugd2FudCB0byBzdWJtaXQgYSBmb3JtYWwg
cGF0Y2g/ICBJICBjYW4gbWFyayBpdCBhcyAndGVzdGVkLWJ5Jwo+ID4gPiBUaGlzIHJlYWxseSBo
ZWxwcyBzcGVlZCB1cCB0aGUgc3RhcnR1cCBzZXF1ZW5jZSBvbiBib2FyZHMgd2l0aCBzc2hkCj4g
PiA+IGJlY2F1c2UgaXQgZGVsYXlzIGZvciBuZWFybHkgODAgc2Vjb25kcyB3YWl0aW5nIGZvciBl
bnRyb3B5IHdpdGhvdXQKPiA+ID4gdGhlIGh3cm5nLgo+ID4KPiA+IEhpISBXaGVuIGFwcGx5aW5n
IGEgcGF0Y2gsIGNvdWxkIHlvdSBwbGVhc2UgZGlzYWJsZSB0aGlzIHJuZyBmb3IgbjkwMD8KPiA+
Cj4gPiBJbiBvbWFwMy1uOTAwLmR0cyBmb3Igcm5nIHNob3VsZCBiZSBzdGF0dXMgPSAiZGlzYWJs
ZWQiIChhcyBUb255IGFscmVhZHkKPiA+IHdyb3RlKSwgc2ltaWxhcmx5IGxpa2UgZm9yIGFlcy4K
Pgo+IFllYWggSSdsbCBwb3N0IGEgcHJvcGVyIHBhdGNoIGFmdGVyIC1yYzEuCgpUb255LAoKSSBh
bSBqdXN0IGZvbGxvd2luZyB1cCBvbiB0aGlzLiAgV2l0aG91dCB0aGUgSFdSTkcgdGhlcmUgYXJl
IHNvbWUKdG9vbHMgYW5kIGRhZW1vbnMgbGlrZSBzc2hkIHdoaWNoIHdhaXQgYSBsb25nIHRpbWUg
YXQgc3RhcnR1cC4gIFRoZQpwYXRjaCB5b3Ugc2VudCByZWFsbHkgaGVscHMgc3BlZWQgdXAgdGhl
IHN0YXJ0dXAgdGltZSBpbiB0aGVzZSBjYXNlcy4KQXQgbGVhc3QgaW4gbXkgY2FzZSwgaXQgc2hh
dmVzIDgwIHNlY29uZHMgb2ZmIGJ5IGVsaW1pbmF0aW5nIHRoZQpkZWxheXMuCgpEbyB5b3UgdGhp
bmsgeW91J2xsIGhhdmUgdGltZSB0byBwb3N0IGEgbW9yZSBmb3JtYWwgcGF0Y2g/ICBJZiBub3Qs
IEkKY2FuIGRvIGl0LiAgSSBqdXN0IGRvbid0IGtub3cgd2hpY2ggbWFpbGluZyBsaXN0IGlzIHRo
ZSBtb3JlCmFwcHJvcHJpYXRlLiAgSSB3YXMgYWJsZSB0byB2ZXJpdHkgeW91ciBwYXRjaCBvbiBh
IERNMzczMCBhbmQgT01BUDM1MzAKClRoYW5rcywKCmFkYW0KCgo+Cj4gUmVnYXJkcywKPgo+IFRv
bnkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
