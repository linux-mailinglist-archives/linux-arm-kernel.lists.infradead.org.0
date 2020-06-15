Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02BF71F99EC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 16:18:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8stM1uoB8yu98d3+S/P8xNFwjM9vQUf60AXDSzdIkKY=; b=X7y86zBzbMFc0h
	6KpSjhTzTsobO2ed0YXT7hUFbp+DEM87OQvREjIsllXnxst3itOcFsd/vgSeKqM2oblHXU+JsnOFo
	gX8G48TsrVIzcehEkHNh6AV+Rgn3IZDb5Q2bE+Gt2G5GmRWU45ZvvSNCf+Wb/VM3BqXAQnYQX5ye8
	eIjPYHxLf0/OmYIpPhMCi4L3UfedEnPl/HubZGN2SKm/iz+nryPqYPDMUdn7zHnmWQURSoMkZL5xt
	PRKBDnrQex8b8D5gxuIccDYjWM/wwqOkmADz+ll8x9DPXo0bbzhFW9isfULeIJFjHtHsMw/OVQOZB
	RkKsRr+7FuOOYNViWhRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkpw3-0007VQ-Re; Mon, 15 Jun 2020 14:18:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkpvt-0007V3-Lo; Mon, 15 Jun 2020 14:17:55 +0000
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com
 [209.85.218.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 12D1A206B7;
 Mon, 15 Jun 2020 14:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592230673;
 bh=4TQGXLtys+5X0Ku9Pe7MEGS5M04KpaAdQGgX7vU0o9w=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vs9r/A2PulQeRjfyJ+v8PHSeItHMR8YRrxshLkIP36o9ou+UYPU48A92+IGpC6VZ5
 VZBfWvyz43dQPxf13yNqLQeArDToOGK33IbCXy7XTFQ/Gl+oDh1GJs3sYfy66tz+RA
 t9Wnv+3AVYOZRueuLSX5O1kRYx7kqybHKUmcEBBI=
Received: by mail-ej1-f45.google.com with SMTP id l12so17594345ejn.10;
 Mon, 15 Jun 2020 07:17:52 -0700 (PDT)
X-Gm-Message-State: AOAM532fQoXQ8MuhkDMmmSvuCJwMfCHPZW1lBHUPAZM4jXqTas3b/+Vj
 bSfBooYrOYvggErbjNmamOv7GXkBBGxEWeiWVA==
X-Google-Smtp-Source: ABdhPJxRAfv0OJUQhybnFlT40bnLF1BhCRKzsXp8nGIZGN4IzFwU+PtUVZl/NtqCZVpeCGaY1vI5Vbf8DXpi5JiGDH4=
X-Received: by 2002:a17:906:468e:: with SMTP id
 a14mr25689164ejr.124.1592230671616; 
 Mon, 15 Jun 2020 07:17:51 -0700 (PDT)
MIME-Version: 1.0
References: <1591698261-22639-1-git-send-email-neal.liu@mediatek.com>
 <1591698261-22639-3-git-send-email-neal.liu@mediatek.com>
 <CAAOTY_8W7FLrjKbNt+WHXjsBzgn_E7n5stKjv94RBnF7ktVuiA@mail.gmail.com>
 <1592188994.18525.11.camel@mtkswgap22>
 <CAAOTY_8EFYoAtuAugkYuG=F6kkbu3yeBnyoKBGTnHzPJKHQ5EQ@mail.gmail.com>
In-Reply-To: <CAAOTY_8EFYoAtuAugkYuG=F6kkbu3yeBnyoKBGTnHzPJKHQ5EQ@mail.gmail.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Mon, 15 Jun 2020 22:17:40 +0800
X-Gmail-Original-Message-ID: <CAAOTY_8booP95diFN=C-ybTBciqsw=B7Zq4dCS8=VOjgyUTu1A@mail.gmail.com>
Message-ID: <CAAOTY_8booP95diFN=C-ybTBciqsw=B7Zq4dCS8=VOjgyUTu1A@mail.gmail.com>
Subject: Re: [PATCH 2/2] soc: mediatek: devapc: add devapc-mt6873 driver
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_071753_752910_FF7F286B 
X-CRM114-Status: GOOD (  25.25  )
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
 Neal Liu <neal.liu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q2h1bi1LdWFuZyBIdSA8Y2h1bmt1YW5nLmh1QGtlcm5lbC5vcmc+IOaWvCAyMDIw5bm0NuaciDE1
5pelIOmAseS4gCDkuIvljYgxMDoxNOWvq+mBk++8mgo+Cj4gSGksIE5lYWw6Cj4KPiBOZWFsIExp
dSA8bmVhbC5saXVAbWVkaWF0ZWsuY29tPiDmlrwgMjAyMOW5tDbmnIgxNeaXpSDpgLHkuIAg5LiK
5Y2IMTA6NDPlr6vpgZPvvJoKPiA+Cj4gPiBIaSBDaHVuLUt1YW5nLAo+ID4KPiA+Cj4gPiBPbiBT
dW4sIDIwMjAtMDYtMTQgYXQgMTE6MjYgKzA4MDAsIENodW4tS3VhbmcgSHUgd3JvdGU6Cj4gPiA+
IEhpLCBOZWFsOgo+ID4gPgo+ID4gPiBOZWFsIExpdSA8bmVhbC5saXVAbWVkaWF0ZWsuY29tPiDm
lrwgMjAyMOW5tDbmnIg55pelIOmAseS6jCDkuIvljYg2OjI15a+r6YGT77yaCj4gPiA+ID4KPiA+
ID4gPiBNVDY4NzMgYnVzIGZyYWJyaWMgcHJvdmlkZXMgVHJ1c3Rab25lIHNlY3VyaXR5IHN1cHBv
cnQgYW5kIGRhdGEKPiA+ID4gPiBwcm90ZWN0aW9uIHRvIHByZXZlbnQgc2xhdmVzIGZyb20gYmVp
bmcgYWNjZXNzZWQgYnkgdW5leHBlY3RlZAo+ID4gPiA+IG1hc3RlcnMuCj4gPiA+ID4gVGhlIHNl
Y3VyaXR5IHZpb2xhdGlvbnMgYXJlIGxvZ2dlZCBhbmQgc2VudCB0byB0aGUgcHJvY2Vzc29yIGZv
cgo+ID4gPiA+IGZ1cnRoZXIgYW5hbHlzaXMgb3IgY291bnRlcm1lYXN1cmVzLgo+ID4gPiA+Cj4g
PiA+ID4gQW55IG9jY3VycmVuY2Ugb2Ygc2VjdXJpdHkgdmlvbGF0aW9uIHdvdWxkIHJhaXNlIGFu
IGludGVycnVwdCwgYW5kCj4gPiA+ID4gaXQgd2lsbCBiZSBoYW5kbGVkIGJ5IGRldmFwYy1tdDY4
NzMgZHJpdmVyLiBUaGUgdmlvbGF0aW9uCj4gPiA+ID4gaW5mb3JtYXRpb24gaXMgcHJpbnRlZCBp
biBvcmRlciB0byBmaW5kIHRoZSBtdXJkZXJlci4KPiA+ID4gPgo+ID4gPiA+IFNpZ25lZC1vZmYt
Ynk6IE5lYWwgTGl1IDxuZWFsLmxpdUBtZWRpYXRlay5jb20+Cj4gPiA+ID4gLS0tCj4gPiA+Cj4g
PiA+IFtzbmlwXQo+ID4gPgo+ID4gPiA+ICsKPiA+ID4gPiArICAgICAgIC8qIDUwICovCj4gPiA+
ID4gKyAgICAgICB7LTEsIC0xLCA1MCwgIk9PQl93YXlfZW4iLCB0cnVlfSwKPiA+ID4gPiArICAg
ICAgIHstMSwgLTEsIDUxLCAiT09CX3dheV9lbiIsIHRydWV9LAo+ID4gPiA+ICsgICAgICAgey0x
LCAtMSwgNTIsICJPT0Jfd2F5X2VuIiwgdHJ1ZX0sCj4gPiA+ID4gKyAgICAgICB7LTEsIC0xLCA1
MywgIk9PQl93YXlfZW4iLCB0cnVlfSwKPiA+ID4gPiArICAgICAgIHstMSwgLTEsIDU0LCAiT09C
X3dheV9lbiIsIHRydWV9LAo+ID4gPiA+ICsgICAgICAgey0xLCAtMSwgNTUsICJPT0Jfd2F5X2Vu
IiwgdHJ1ZX0sCj4gPiA+ID4gKyAgICAgICB7LTEsIC0xLCA1NiwgIkRlY29kZV9lcnJvciIsIHRy
dWV9LAo+ID4gPiA+ICsgICAgICAgey0xLCAtMSwgNTcsICJEZWNvZGVfZXJyb3IiLCB0cnVlfSwK
PiA+ID4gPiArICAgICAgIHstMSwgLTEsIDU4LCAiRElTUF9QV00iLCBmYWxzZX0sCj4gPiA+ID4g
KyAgICAgICB7LTEsIC0xLCA1OSwgIklNUF9JSUNfV1JBUCIsIGZhbHNlfSwKPiA+ID4gPiArCj4g
PiA+ID4gKyAgICAgICAvKiA2MCAqLwo+ID4gPiA+ICsgICAgICAgey0xLCAtMSwgNjAsICJERVZJ
Q0VfQVBDX1BFUklfUEFSX19BTyIsIGZhbHNlfSwKPiA+ID4gPiArICAgICAgIHstMSwgLTEsIDYx
LCAiREVWSUNFX0FQQ19QRVJJX1BBUl9QRE4iLCBmYWxzZX0sCj4gPiA+Cj4gPiA+IFlvdSBkb2Vz
IG5vdCBwcm9jZXNzIHRoZSBpdGVtIHdob3NlIGVuYWJsZV92aW9faXJxIGlzIGZhbHNlLCBzbyBJ
Cj4gPiA+IHRoaW5rIHlvdSBzaG91bGQgcmVtb3ZlIHRoZXNlIGl0ZW1zIGFuZCByZW1vdmUgZW5h
YmxlX3Zpb19pcnEgYmVjYXVzZQo+ID4gPiB0aGUgcmVzdCBpdGVtJ3MgZW5hYmxlX3Zpb19pcnEg
d291bGQgYWx3YXlzIGJlIHRydWUuCj4gPgo+ID4gSW4gc29tZSB1c2VycywgdGhleSBjYW4gZGVj
aWRlIHdoaWNoIHNsYXZlcyB0aGV5IHdhbnQgdG8gZW5hYmxlIG9yCj4gPiBkaXNhYmxlIHZpb2xh
dGlvbiBpcnEgaW4gZGlmZmVyZW50IHByb2R1Y3QuIFdlIHJlbWFpbiB0aGlzIHByb3BlcnR5IGZv
cgo+ID4gY29tcGF0aWJpbGl0eS4KPgo+IEkgdGhpbmsgaW4gdXBzdHJlYW0gdmVyc2lvbiwgeW91
IGNvdWxkIHN0aWxsIHJlbW92ZSBlbmFibGVfdmlvX2lycSBhbmQKPiBwcm9jZXNzIGFsbCBpdGVt
cy4gRm9yIGRvd25zdHJlYW0gY2FzZSwgdXNlcnMgY291bGQgcmVtb3ZlIGl0ZW1zIHRoZXkKPiBk
b2VzIG5vdCBpbnRlcmVzdCBpbi4KPgo+ID4KPiA+ID4KPiA+ID4gPiArfTsKPiA+ID4gPiArCj4g
PiA+ID4gK3N0YXRpYyBzdHJ1Y3QgbXRrX2RldmljZV9udW0gbXRrNjg3M19kZXZpY2VzX251bVtd
ID0gewo+ID4gPiA+ICsgICAgICAge1NMQVZFX1RZUEVfSU5GUkEsIFZJT19TTEFWRV9OVU1fSU5G
UkF9LAo+ID4gPiA+ICsgICAgICAge1NMQVZFX1RZUEVfUEVSSSwgVklPX1NMQVZFX05VTV9QRVJJ
fSwKPiA+ID4gPiArICAgICAgIHtTTEFWRV9UWVBFX1BFUkkyLCBWSU9fU0xBVkVfTlVNX1BFUkky
fSwKPiA+ID4gPiArICAgICAgIHtTTEFWRV9UWVBFX1BFUklfUEFSLCBWSU9fU0xBVkVfTlVNX1BF
UklfUEFSfSwKPiA+ID4gPiArfTsKPiA+ID4gPiArCj4gPiA+ID4gK3N0YXRpYyBzdHJ1Y3QgUEVS
SUFYSV9JRF9JTkZPIHBlcmlfbWlfaWRfdG9fbWFzdGVyW10gPSB7Cj4gPiA+ID4gKyAgICAgICB7
IlRIRVJNMiIsICAgICAgIHsgMCwgMCwgMCB9IH0sCj4gPiA+ID4gKyAgICAgICB7IlNQTSIsICAg
ICAgICAgIHsgMCwgMSwgMCB9IH0sCj4gPiA+ID4gKyAgICAgICB7IkNDVSIsICAgICAgICAgIHsg
MCwgMCwgMSB9IH0sCj4gPiA+ID4gKyAgICAgICB7IlRIRVJNIiwgICAgICAgIHsgMCwgMSwgMSB9
IH0sCj4gPiA+ID4gKyAgICAgICB7IlNQTV9EUkFNQyIsICAgIHsgMSwgMSwgMCB9IH0sCj4gPiA+
Cj4gPiA+IFRoZSBiaXRzIHsgMSwgMSwgMCB9IGVxdWFsIHRvIGEgbnVtYmVyIDB4MywgSSB0aGlp
bmsgeW91IHNob3VsZCB1c2UgYQo+ID4gPiBudW1iZXIgaW5zdGVhZCBvZiBiaXRzIGFuZCBldmVy
eXRoaW5nIHdvdWxkIGJlIG1vcmUgZWFzeS4KPiA+Cj4gPiBXZSB3b3VsZCBsaWtlIHRvIGtlZXAg
aXQgYmVjYXVzZSB0aGUgYml0IHZhbHVlIGNvbnRhaW5zIG1vcmUgdGhhbiAwLzEsCj4gPiBpdCBt
aWdodCBiZSAnMicgaW4gc29tZSBjYXNlcy4gJzInIG1lYW5zIGl0IGNhbiBiZSAwIG9yIDEuIFRo
aXMgdG90YWxseQo+ID4gYnkgaGFyZHdhcmUgZGVzaWduICYgaW1wbGVtZW50YXRpb24uCj4KPiBV
cHN0cmVhbSB0aGUgcGF0Y2ggdGhhdCBoYXMgZG9udC1jYXJlLWJpdHMsIG90aGVyd2lzZSwgdXNl
IGEgbnVtYmVyIGZvciB0aGlzLgo+IEV2ZW4gdGhlcmUgaXMgZG9udC1jYXJlLWJpdHMsIEkgaGF2
ZSBhIGJldHRlciB3YXkgdG8gcHJvY2VzcyBpdC4gSGVyZQo+IGlzIGFuIGV4YW1wbGUgdGhhdCBo
YXMgZG9udC1jYXJlLWJpdHM6Cj4KPiArIHsiVGlueXN5cyIsICAgICAgICAgeyAwLCAxLCAwLCAw
LCAyLCAyLCAyLCAyLCAyLCAyLCAwLCAwLCAwLCAwIH0gfSwKPgo+IEkgY291bGQgdXNlIGEgeyB2
YWx1ZSwgbWFzayB9IHBhaXIgZm9yIHRoaXMgY2FzZSwKPgo+IHZhbHVlID0gMHgwMDAyOyAvKiB2
YWx1ZSBmb3IgY2FyZSBiaXRzICovCj4gbWFzayA9IDB4M2MwMjsgLyogbWFzayBmb3IgY2FyZSBi
aXRzICovCgpTb3JyeSwgdGhpcyB3b3VsZCBiZQoKbWFzayA9IDB4M2MwZjsgLyogbWFzayBmb3Ig
Y2FyZSBiaXRzICovCgo+Cj4gU28gdGhlIGNvbXBhcmUgc3RhdGVtZW50IHdvdWxkIGJlCj4KPiBp
ZiAoKGJ1c19pZCAmIG1hc2spID09IHZhbHVlKQo+Cj4gU28geW91IGNvdWxkIGdldCByaWQgb2Yg
dGhlIHNlY29uZCBmb3ItbG9vcCBhbmQgcmVkdWNlIHRoZSBwcm9jZXNzaW5nCj4gdGltZSBpbiBp
cnEgaGFuZGxlci4KPgo+IFJlZ2FyZHMsCj4gQ2h1bi1LdWFuZy4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
