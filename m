Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C521F9C49
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 17:52:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E02znMMKWKQyfdvxNzOvygoaJN7BLuLkYbpqO8zxS1k=; b=AE2TZp0DbAAAOz
	WboZgXOfQy1euw72rJpfn8S9catp+t05oA4c89N+FxXe59ZS/PJKVzm6m5speMAHFdbZ6hdvWKDlH
	UKN+7tvSCj3CHKVkxj3wF0VoFUJN0VmxsvSdGBywffOfj4zF/cjZ7BBFxs9cdSTePw1S8p9PbTy4z
	+geWQRFM/mwlciILPDRo4WnXJhMruFNLjtOQFV2l41B8UIfHO59fSswwUlSrXWrF8YiJ2y2c670PS
	vEviTb++xWcgj44pBISO7pX1RcJkYFljbzcoV7YGzZpbF5kRbdtYkwRwK42e7VkePxn5k8clowJ+B
	kFsE3DHWkr+UxNyvmgkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkrOq-00089S-8x; Mon, 15 Jun 2020 15:51:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkrOg-000890-9A; Mon, 15 Jun 2020 15:51:43 +0000
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
 [209.85.208.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8AC65207D4;
 Mon, 15 Jun 2020 15:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592236301;
 bh=7cnR4E7asa1RK9PUH2DYXnuXh4kNAztWrAPs91Uf2zg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=M9tWDPSyXmVBU/0iTVK5zFYtBmlBVxp0aGi8g0WFUhD9YirPgML5vwZXl6OQaS80E
 eF7Uq4k0+l8G48PHr5XAoMrFjy5j2L7apmEF11W6NhNI4qyblACSDoON/nO/NO9AAA
 cPGTpm28Y0KGeRgTT2fhjsaxOzN1dF3FB+5682XQ=
Received: by mail-ed1-f42.google.com with SMTP id g1so11891785edv.6;
 Mon, 15 Jun 2020 08:51:41 -0700 (PDT)
X-Gm-Message-State: AOAM533K7FUTcCQSMjg4z16zLrIBJOrj8MWjGmf/hJ7r5Qq2eWousfXp
 5DA6MnFWXTERyZHc3fjb6rXRO3MdwXmNFsnYYA==
X-Google-Smtp-Source: ABdhPJwjNOgOXm2x6DCEIqtw7qCfmjT2LCj7Obv/jiia9ojrOBQU0H3QCrBYoCfJym7Fuo1N/UkczRt+4FIEiGtpnHg=
X-Received: by 2002:a05:6402:22e4:: with SMTP id
 dn4mr24670457edb.288.1592236300114; 
 Mon, 15 Jun 2020 08:51:40 -0700 (PDT)
MIME-Version: 1.0
References: <1591698261-22639-1-git-send-email-neal.liu@mediatek.com>
 <1591698261-22639-3-git-send-email-neal.liu@mediatek.com>
In-Reply-To: <1591698261-22639-3-git-send-email-neal.liu@mediatek.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Mon, 15 Jun 2020 23:51:28 +0800
X-Gmail-Original-Message-ID: <CAAOTY_-T7L5Cj3UOXDgwTo7jGw+PbcM9Fyy9StX35PwU533zLQ@mail.gmail.com>
Message-ID: <CAAOTY_-T7L5Cj3UOXDgwTo7jGw+PbcM9Fyy9StX35PwU533zLQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] soc: mediatek: devapc: add devapc-mt6873 driver
To: Neal Liu <neal.liu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_085142_363037_2C3B3351 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, wsd_upstream <wsd_upstream@mediatek.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIE5lYWw6CgpOZWFsIExpdSA8bmVhbC5saXVAbWVkaWF0ZWsuY29tPiDmlrwgMjAyMOW5tDbm
nIg55pelIOmAseS6jCDkuIvljYg2OjI15a+r6YGT77yaCj4KPiBNVDY4NzMgYnVzIGZyYWJyaWMg
cHJvdmlkZXMgVHJ1c3Rab25lIHNlY3VyaXR5IHN1cHBvcnQgYW5kIGRhdGEKPiBwcm90ZWN0aW9u
IHRvIHByZXZlbnQgc2xhdmVzIGZyb20gYmVpbmcgYWNjZXNzZWQgYnkgdW5leHBlY3RlZAo+IG1h
c3RlcnMuCj4gVGhlIHNlY3VyaXR5IHZpb2xhdGlvbnMgYXJlIGxvZ2dlZCBhbmQgc2VudCB0byB0
aGUgcHJvY2Vzc29yIGZvcgo+IGZ1cnRoZXIgYW5hbHlzaXMgb3IgY291bnRlcm1lYXN1cmVzLgo+
Cj4gQW55IG9jY3VycmVuY2Ugb2Ygc2VjdXJpdHkgdmlvbGF0aW9uIHdvdWxkIHJhaXNlIGFuIGlu
dGVycnVwdCwgYW5kCj4gaXQgd2lsbCBiZSBoYW5kbGVkIGJ5IGRldmFwYy1tdDY4NzMgZHJpdmVy
LiBUaGUgdmlvbGF0aW9uCj4gaW5mb3JtYXRpb24gaXMgcHJpbnRlZCBpbiBvcmRlciB0byBmaW5k
IHRoZSBtdXJkZXJlci4KPgo+IFNpZ25lZC1vZmYtYnk6IE5lYWwgTGl1IDxuZWFsLmxpdUBtZWRp
YXRlay5jb20+Cj4gLS0tCgpbc25pcF0KCj4gKyAgICAgICB7MSwgMCwgMjIsICJNTVNZUyIsIHRy
dWV9LAo+ICsgICAgICAgezEsIDEsIDIzLCAiTU1TWVNfRElTUCIsIHRydWV9LAo+ICsgICAgICAg
ezEsIDIsIDI0LCAiU01JIiwgdHJ1ZX0sCj4gKyAgICAgICB7MSwgMywgMjUsICJTTUkiLCB0cnVl
fSwKPiArICAgICAgIHsxLCA0LCAyNiwgIlNNSSIsIHRydWV9LAo+ICsgICAgICAgezEsIDUsIDI3
LCAiTU1TWVNfRElTUCIsIHRydWV9LAo+ICsgICAgICAgezEsIDYsIDI4LCAiTU1TWVNfRElTUCIs
IHRydWV9LAo+ICsKPiArICAgICAgIC8qIDMwICovCj4gKyAgICAgICB7MSwgNywgMjksICJNTVNZ
U19ESVNQIiwgdHJ1ZX0sCj4gKyAgICAgICB7MSwgOCwgMzAsICJNTVNZU19ESVNQIiwgdHJ1ZX0s
Cj4gKyAgICAgICB7MSwgOSwgMzEsICJNTVNZU19ESVNQIiwgdHJ1ZX0sCj4gKyAgICAgICB7MSwg
MTAsIDMyLCAiTU1TWVNfRElTUCIsIHRydWV9LAo+ICsgICAgICAgezEsIDExLCAzMywgIk1NU1lT
X0RJU1AiLCB0cnVlfSwKPiArICAgICAgIHsxLCAxMiwgMzQsICJNTVNZU19ESVNQIiwgdHJ1ZX0s
Cj4gKyAgICAgICB7MSwgMTMsIDM1LCAiTU1TWVNfRElTUCIsIHRydWV9LAo+ICsgICAgICAgezEs
IDE0LCAzNiwgIk1NU1lTX0RJU1AiLCB0cnVlfSwKPiArICAgICAgIHsxLCAxNSwgMzcsICJNTVNZ
U19ESVNQIiwgdHJ1ZX0sCj4gKyAgICAgICB7MSwgMTYsIDM4LCAiTU1TWVNfRElTUCIsIHRydWV9
LAo+ICsKPiArICAgICAgIC8qIDQwICovCj4gKyAgICAgICB7MSwgMTcsIDM5LCAiTU1TWVNfRElT
UCIsIHRydWV9LAo+ICsgICAgICAgezEsIDE4LCA0MCwgIk1NU1lTX0RJU1AiLCB0cnVlfSwKPiAr
ICAgICAgIHsxLCAxOSwgNDEsICJNTVNZU19ESVNQIiwgdHJ1ZX0sCj4gKyAgICAgICB7MSwgMjAs
IDQyLCAiTU1TWVNfRElTUCIsIHRydWV9LAo+ICsgICAgICAgezEsIDIxLCA0MywgIk1NU1lTX0RJ
U1AiLCB0cnVlfSwKPiArICAgICAgIHsxLCAyMiwgNDQsICJNTVNZU19ESVNQIiwgdHJ1ZX0sCgpJ
IHRoaW5rIHRoZSBkZXZpY2UgbmFtZSwgc3VjaCBhcyAiTU1TWVNfRElTUCIgZG9lcyBub3QgaGVs
cCBmb3IgZGVidWcuCldoZW4gRGV2QVBDIHByaW50ICJNTVNZU19ESVNQIiBoYXMgZXJyb3IsIGhv
dyBkb2VzIHVzIGtub3cgdGhhdCB0byBkbwpuZXh0PyBXSEVSRSBpcyB0aGUgY29kZSBtYXkgcmVs
YXRlZCB0byB0aGlzIGVycm9yLCBhbmQgV0hPIHNob3VsZCB1cwp0byBmaW5kIGhlbHA/IEkgdGhp
bmsgd2UganVzdCBuZWVkIHZpbyBhZGRyZXNzLiBVc2luZyBtdDgxNzMgZm9yCmV4YW1wbGUsIGlm
IHRoZSB2aW8gYWRkcmVzcyBpcyAweDE0MDBkMDNjLCB3ZSBjb3VsZCBmaW5kIHRoZSBkZXZpY2Ug
aW4KbXQ4MTczLmR0c2kgWzFdLAoKb3ZsMTogb3ZsQDE0MDBkMDAwIHsKICAgICAgICBjb21wYXRp
YmxlID0gIm1lZGlhdGVrLG10ODE3My1kaXNwLW92bCI7CiAgICAgICAgcmVnID0gPDAgMHgxNDAw
ZDAwMCAwIDB4MTAwMD47Cn07Cgp3ZSBjb3VsZCBrbm93IGVycm9yIG9jY3VyIGluIG92bDEsIGFu
ZCB3ZSBjb3VsZCBmaW5kIHRoZSBjb21wYXRpYmxlCnN0cmluZyAibWVkaWF0ZWssbXQ4MTczLWRp
c3Atb3ZsIiBpbgpkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9kcnYuYywgc28gd2Ug
a25vdyBXSEVSRSBpcyB0aGUgY29kZQptYXkgcmVsYXRlZCB0byB0aGlzIGVycm9yLiBBbmQgd2Ug
Y291bGQgZmluZCBtYWludGFpbmVyIGxpc3QgWzJdIHRvCmZpbmQgb3V0IHRoZSBtYWludGFpbmVy
IG9mIHRoaXMgY29kZToKCkRSTSBEUklWRVJTIEZPUiBNRURJQVRFSwpNOiBDaHVuLUt1YW5nIEh1
IDxjaHVua3VhbmcuaHVAa2VybmVsLm9yZz4KTTogUGhpbGlwcCBaYWJlbCA8cC56YWJlbEBwZW5n
dXRyb25peC5kZT4KTDogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpTOiBTdXBwb3J0
ZWQKRjogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbWVkaWF0ZWsv
CkY6IGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay8KCmFuZCB3ZSBrbm93IGZpbmQgV0hPIGZvciBo
ZWxwLgpTbyBJIHRoaW5rIHdlIHNob3VsZCBkcm9wIGRldmljZSBuYW1lIGFuZCBqdXN0IHByaW50
IHZpbyBhZGRyZXNzIGlzCmVub3VnaCBmb3IgZGVidWcuCgpbMV0gaHR0cHM6Ly9naXQua2VybmVs
Lm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvYXJj
aC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDgxNzMuZHRzaT9oPXY1LjgtcmMxClsyXSBodHRw
czovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51
eC5naXQvdHJlZS9NQUlOVEFJTkVSUz9oPXY1LjgtcmMxCgo+ICsgICAgICAgezEsIDIzLCA0NSwg
Ik1NU1lTX01EUCIsIHRydWV9LAo+ICsgICAgICAgezEsIDI0LCA0NiwgIk1NU1lTX01EUCIsIHRy
dWV9LAo+ICsgICAgICAgezEsIDI1LCA0NywgIk1NU1lTX01EUCIsIHRydWV9LAo+ICsgICAgICAg
ezEsIDI2LCA0OCwgIk1NU1lTX01EUCIsIHRydWV9LAo+ICsKCltzbmlwXQoKPiArCj4gK2ludCBt
dGtfZGV2YXBjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsIHN0cnVjdCBtdGtf
ZGV2YXBjX3NvYyAqc29jKQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUg
PSBwZGV2LT5kZXYub2Zfbm9kZTsKPiArICAgICAgIHUzMiBzbGF2ZV90eXBlX251bTsKPiArICAg
ICAgIGludCBzbGF2ZV90eXBlOwo+ICsgICAgICAgaW50IHJldDsKPiArCj4gKyAgICAgICBpZiAo
SVNfRVJSKG5vZGUpKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKPiArCj4gKyAg
ICAgICBtdGtfZGV2YXBjX2N0eC0+c29jID0gc29jOwo+ICsgICAgICAgc2xhdmVfdHlwZV9udW0g
PSBtdGtfZGV2YXBjX2N0eC0+c29jLT5zbGF2ZV90eXBlX251bTsKPiArCj4gKyAgICAgICBmb3Ig
KHNsYXZlX3R5cGUgPSAwOyBzbGF2ZV90eXBlIDwgc2xhdmVfdHlwZV9udW07IHNsYXZlX3R5cGUr
Kykgewo+ICsgICAgICAgICAgICAgICBtdGtfZGV2YXBjX2N0eC0+ZGV2YXBjX3BkX2Jhc2Vbc2xh
dmVfdHlwZV0gPQo+ICsgICAgICAgICAgICAgICAgICAgICAgIG9mX2lvbWFwKG5vZGUsIHNsYXZl
X3R5cGUpOwo+ICsgICAgICAgICAgICAgICBpZiAoIW10a19kZXZhcGNfY3R4LT5kZXZhcGNfcGRf
YmFzZVtzbGF2ZV90eXBlXSkKPiArICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZB
TDsKPiArICAgICAgIH0KPiArCj4gKyAgICAgICBtdGtfZGV2YXBjX2N0eC0+aW5mcmFjZmdfYmFz
ZSA9IG9mX2lvbWFwKG5vZGUsIHNsYXZlX3R5cGVfbnVtICsgMSk7Cj4gKyAgICAgICBpZiAoIW10
a19kZXZhcGNfY3R4LT5pbmZyYWNmZ19iYXNlKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVJ
TlZBTDsKPiArCj4gKyAgICAgICBtdGtfZGV2YXBjX2N0eC0+ZGV2YXBjX2lycSA9IGlycV9vZl9w
YXJzZV9hbmRfbWFwKG5vZGUsIDApOwo+ICsgICAgICAgaWYgKCFtdGtfZGV2YXBjX2N0eC0+ZGV2
YXBjX2lycSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gKwo+ICsgICAgICAg
LyogQ0NGIChDb21tb24gQ2xvY2sgRnJhbWV3b3JrKSAqLwo+ICsgICAgICAgbXRrX2RldmFwY19j
dHgtPmRldmFwY19pbmZyYV9jbGsgPSBkZXZtX2Nsa19nZXQoJnBkZXYtPmRldiwKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJkZXZhcGMt
aW5mcmEtY2xvY2siKTsKPiArCj4gKyAgICAgICBpZiAoSVNfRVJSKG10a19kZXZhcGNfY3R4LT5k
ZXZhcGNfaW5mcmFfY2xrKSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gKwo+
ICsgICAgICAgcHJvY19jcmVhdGUoImRldmFwY19kYmciLCAwNjY0LCBOVUxMLCAmZGV2YXBjX2Ri
Z19mb3BzKTsKCkkgdGhpbmsgZGVidWdmcyBpcyBub3QgYSBiYXNpYyBmdW5jdGlvbiwgc28gbW92
ZSBkZWJ1Z2ZzIGZ1bmN0aW9uIHRvCmFub3RoZXIgcGF0Y2guCgpSZWdhcmRzLApDaHVuLUt1YW5n
LgoKPiArCj4gKyAgICAgICBpZiAoY2xrX3ByZXBhcmVfZW5hYmxlKG10a19kZXZhcGNfY3R4LT5k
ZXZhcGNfaW5mcmFfY2xrKSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gKwo+
ICsgICAgICAgc3RhcnRfZGV2YXBjKCk7Cj4gKwo+ICsgICAgICAgcmV0ID0gZGV2bV9yZXF1ZXN0
X2lycSgmcGRldi0+ZGV2LCBtdGtfZGV2YXBjX2N0eC0+ZGV2YXBjX2lycSwKPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgKGlycV9oYW5kbGVyX3QpZGV2YXBjX3Zpb2xhdGlvbl9pcnEs
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIElSUUZfVFJJR0dFUl9OT05FLCAiZGV2
YXBjIiwgTlVMTCk7Cj4gKyAgICAgICBpZiAocmV0KSB7Cj4gKyAgICAgICAgICAgICAgIHByX2Vy
cihQRlggInJlcXVlc3QgZGV2YXBjIGlycSBmYWlsZWQsIHJldDolZFxuIiwgcmV0KTsKPiArICAg
ICAgICAgICAgICAgcmV0dXJuIHJldDsKPiArICAgICAgIH0KPiArCj4gKyAgICAgICByZXR1cm4g
MDsKPiArfQo+ICtFWFBPUlRfU1lNQk9MX0dQTChtdGtfZGV2YXBjX3Byb2JlKTsKPiArCj4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
