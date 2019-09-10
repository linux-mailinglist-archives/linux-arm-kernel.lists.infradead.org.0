Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8E2AEEE3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 17:49:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I/Dv8exKpK1+2sQuFzTrX+S0Kvu4Xwl47TEG8kkihXY=; b=Q6mQTr3HVLIWGR
	fJqMVAVjLfEOmu/bfmAxArtNQCrruTpqoA6Rc5coCPA13vltWZdRKtwyRe0X5JdEVJs9UlVFH0Geq
	5i9uVVgezACkHu+lOn24I5+Otx1+5aRAcnbiR8Zs2HTVu5gY5VsH8d0UE+8pAE5+EwiGXg5wky2PC
	OHnrdjV6BJ7p9+B6b8JU3c8m4KKVewT4iZu+xpKRnZqUqaTodGYG7pH02ellgdnLbnYj/HzGK/3HM
	ZQfai0g3JKySS344xN1u0QlMQdpVNRoo7QcCtvDXzgkVLBbW0+U5q8GidPOCTCA8X+Wdg2T/YU1tc
	Ifb0yo3qhojUVqaWqEOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7iNv-00062Y-CI; Tue, 10 Sep 2019 15:48:51 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7iNm-00061r-62
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 15:48:43 +0000
Received: by mail-io1-xd42.google.com with SMTP id b136so38652720iof.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 08:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=coLUn/mFfKhtEGTZkfKU7iKSONi2SChdAx43tZsS4uk=;
 b=okO7qHCmIYGdIBDffowQ8Wck3DnmwENwiHbs8BFei3qdB7cleA0izNjAMyKE2F7+ef
 wtmYj5wqOoXNY0lHRjg92QCpCFjXB2/0JUrhu6PR8cBkoiE51XWVpfLfqECQ90lNNcO1
 Q/WD65oXGV9FQBMNEOOEgnk+vaPsuJ7oq95iEELrpo3/BtsaKCYITkhhqxUVRCLvxCtg
 UxwoBknPo+HoYtYnbnyJfa5cbrMp+vNdrdjtZ/W6g2bBYgWxdtskZeJyZylvf0Rp+QvX
 x3b1Yuaow7UlwiWtHw5E7iczZuMN0tTZAxA+3+iR3M+lHhxQH5p08KYR9wqt3wDoyqn5
 +t8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=coLUn/mFfKhtEGTZkfKU7iKSONi2SChdAx43tZsS4uk=;
 b=RbHnzfp49yTfwUphLzABusgBhAYHFP7gcH6mcYhaVy5qopbHqQpMi2rFxPIPeNN8o8
 hCAwRKeBfiXrdPkNgSgJnaHGAqi7HqnojqyteZGbMw6Z+rO6pgIZmmNL0L99iZs+cfWY
 JxhhMXmJ6thKh65JRXWM+7gotrYcQtUvhOkqZCr1FyrqmemCMLQNUMNvgVKiSKZr5GPb
 +ntJ4OC3vNk4qgxVsypChB+FRg/dyiSn1ip5yDhxqFFfGvtOmiQ5BNZzvgYAKZ4KaV+O
 W84sgDCzemOJ7baZrhrSOC10sT0cc+G467zR7m7p8ygwmPgsoCj19ZeuzyYGH11U74tz
 GQag==
X-Gm-Message-State: APjAAAXeKqqs81uku16LqHGhNUBUTMj/h/m047LRqzy2XaMgpLYybBX+
 0us7tvnt3mTSw//qcd8NppStA1E6kRKHrFTJOGA=
X-Google-Smtp-Source: APXvYqyNK2KpMgOp5yFAwKzmIl05wi6Oom/MmgyrjpQIHsqWHE02/1onqF5gDO4XoszLJOEPF4gT+Ma3ZxxXzdKWHOo=
X-Received: by 2002:a5e:de47:: with SMTP id e7mr899998ioq.127.1568130520830;
 Tue, 10 Sep 2019 08:48:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190828150037.2640-1-aford173@gmail.com>
 <20190905230443.GA52127@atomide.com>
 <CAHCN7xL0fbr=Sv+b=0AuGB1PPhAAFdAFLEd_iBM+ZMTkUw5sHQ@mail.gmail.com>
 <CAHCN7xL-Gfxe0qF5w7BUsHnyhcNNpmCnchdKErnmiqggXfsLWw@mail.gmail.com>
 <20190909134033.s26eiurpat3iekse@pali> <20190909163543.GQ52127@atomide.com>
In-Reply-To: <20190909163543.GQ52127@atomide.com>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 10 Sep 2019 10:48:29 -0500
Message-ID: <CAHCN7x+t-OVRE7pVM4V87_YMWpgO+_Vashfn1s5msoqC5eiwTg@mail.gmail.com>
Subject: Re: [RFC] ARM: omap3: Enable HWMODS for HW Random Number Generator
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_084842_231177_07CE0B6A 
X-CRM114-Status: GOOD (  19.46  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Pgo+IFllYWggSSdsbCBwb3N0IGEgcHJvcGVyIHBhdGNoIGFmdGVyIC1yYzEuCgpGWUksCgpCeSBw
dXR0aW5nIHlvdXIgbm9kZSBpbnRvIG9tYXAzNHh4LmR0c2kgYW5kIG9tYXAzNnh4LmR0c2kgYWxv
bmcgd2l0aAp0aGUgZm9sbG93aW5nLCBJIGNhbiBnZXQgdGhlIFJORyB0byB3b3JrIG9uIGFuIE9N
QVAzNTMwIGFuZCBhIERNMzczMC4KCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMvb21h
cDM0eHgtb21hcDM2eHgtY2xvY2tzLmR0c2kKYi9hcmNoL2FybS9ib290L2R0cy9vbWFwMzR4eC1v
bWFwMzZ4eC1jbG9ja3MuZHRzaQppbmRleCA1ZTlkMWFmY2Q0MjIuLjczZjM1MWU2ZDEzMiAxMDA2
NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvb21hcDM0eHgtb21hcDM2eHgtY2xvY2tzLmR0c2kK
KysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvb21hcDM0eHgtb21hcDM2eHgtY2xvY2tzLmR0c2kKQEAg
LTI1OSw3ICsyNTksNyBAQAogICAgICAgICAgICAgICAgICAgICAgICAgPCZpMmMxX2ljaz4sIDwm
dWFydDJfaWNrPiwgPCZ1YXJ0MV9pY2s+LCA8JmdwdDExX2ljaz4sCiAgICAgICAgICAgICAgICAg
ICAgICAgICA8JmdwdDEwX2ljaz4sIDwmbWNic3A1X2ljaz4sIDwmbWNic3AxX2ljaz4sCiAgICAg
ICAgICAgICAgICAgICAgICAgICA8Jm9tYXBjdHJsX2ljaz4sIDwmYWVzMl9pY2s+LCA8JnNoYTEy
X2ljaz4sIDwmaWNyX2ljaz4sCi0gICAgICAgICAgICAgICAgICAgICAgICA8JmRlczJfaWNrPiwg
PCZtc3Byb19pY2s+LCA8Jm1haWxib3hlc19pY2s+LAorICAgICAgICAgICAgICAgICAgICAgICAg
PCZkZXMyX2ljaz4sIDwmbXNwcm9faWNrPiwgPCZtYWlsYm94ZXNfaWNrPiwKPCZybmdfaWNrPiwK
ICAgICAgICAgICAgICAgICAgICAgICAgIDwmbXNwcm9fZmNrPjsKICAgICAgICB9OwogfTsKCkkg
dHJpZWQgZG9pbmcgdGhlIHNhbWUgZm9yIGFtMzUxNywgYnV0IGl0IGRvZXNuJ3QgYXBwZWFyIHRv
IHdvcmsuICBJbgpmYWN0LCB0aGUgYm9hcmQgaGFuZ3MgYXQgYm9vdCB3aXRoIG5vIHNwbGF0LCBz
byBJIGFzc3VtZSB0aGF0IHNvbWUKY2xvY2sgaXNuJ3QgcnVubmluZyBhbmQgY2F1c2luZyBhIGhh
bmcuICBGaWd1cmUgNC01MCBpbiB0aGUgQU0zNTE3IFRSTQpzaG93cyB0aGUgc2VjdXJpdHlfbDRf
aWNsazIsIHNvIEkgd29uZGVyIGlmIHRoZSBIVyBtb2RzIGZvciBBRVMsIFNIQSwKZXRjIGFyZSBk
b2luZyBzb21ldGhpbmcgdG8gZW5hYmxlIHRoaXMgY2xvY2suICBUaG9zZSBIV21vZHMgYXJlCmRp
c2FibGVkIG9uIEFNMzUxNy4gIEkgdHJpZWQgdHVybmluZyBvbiB0aGUgaHdtb2RzIGZvciB0aGVt
IGJlZm9yZQp3aXRob3V0IHN1Y2Nlc3MsIGJ1dCBJJ2xsIHRyeSBpdCBhZ2Fpbi4KCmFkYW0KPgo+
IFJlZ2FyZHMsCj4KPiBUb255CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
