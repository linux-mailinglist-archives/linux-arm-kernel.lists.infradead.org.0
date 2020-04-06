Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F40F119F1EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 10:59:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xONkJlubRXtqJ8F0eZCy2NKh/APrjiBfWKGWD6fscvw=; b=KvY4qw33Kh551Z
	V+MrpZwBZpGWIg9WLC6EUObeHA+4DLFlYurNuavZzgw5fycP8iYHQ6e3p848cLDCr1NdqC8UT1c7Q
	xn7QJtO3UBXvC46sPu9uZGXkMpD30ATowlcHNQeHPoVGhogEeobbj9yW8leGtByRCrEr81XgNcrkd
	4x09P0XZU/LFFacuavsCc7fkfDYC9fKJfGZa5Gg6j/fSizRs/FImVOjK8pcZclIKanJDPvnBEkvVW
	7wsZfTkoMxrJsZkSLQcy5x2LFhAn/K6+a0XS/f9nZD2EJzEcV9PqUChmAKp8rOC1Rd2NHPP7so1fv
	aEJTceGxx+4U7vwBGqOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLNay-0005Jo-Cp; Mon, 06 Apr 2020 08:59:04 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLNar-0005Ix-6H
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 08:58:58 +0000
Received: by mail-io1-xd42.google.com with SMTP id s15so14927187ioj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 01:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=UPqDv8CeYx1N0Rja5HT63eK8rvmvj33Sn4Tfxap3WTc=;
 b=Bn+gVHDErL8xA6WvQFL200iyfcEdk15R4pwg/hQTYqbdp4UqOFrBDKJ5VSmq9u6+Rb
 /DeDXlLbydHymHVCAbiurUQlc/aa5I1KkdZN8F1w/r27hlxr8Y+XXn8YY1WNgUt6aKKH
 3TI0b2RGGTqLFpZcVy1vBm006yak8uN/7KFeq1Qx6OMqw5h13Y7pNa1lrTPq1YvGMCCJ
 mqlycyqCwA1qrYb6bqKQeD7+4BE1bpPfWGBOKFb5QI1zlOxGGOxxkm1jc26mL2QWWFDU
 92ng5DI/gdutvOEEHZdUwjA3nBbiLRPEUZYO2k7spgJmJOr8alCTYOeGY0aVi3EdYyXP
 pIDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UPqDv8CeYx1N0Rja5HT63eK8rvmvj33Sn4Tfxap3WTc=;
 b=Yt4+DKmOjWYPPA2T+bjUo/0B8/4q7rbVejwMaGr3SBdwkO0KkLsd3URzBFFOONsUVY
 yDtMgiiyl7onAR/MKbO9M9Vhr6e6wcmODPJwSjiNHkpG/sk0V4o6AHISt9wKKu1MFUNL
 W3kesxyK6K9ZvfqbtsWKP65pIeaC3fFVfKA81DgHZt2Kue12KwIMsnfY6ZYSBFz06jjE
 XLN3tQwQ4dIQotk/B6HBj1BBeWKcXtQFLD5oRFDsoJI42SgR0wcMpVrFu2ABzKTnab5G
 G9zNu6d1tQdduU4l90hoyK/yuiReRZB5epSzw+y0EJkPg6F2UdKlKX2rBAeEzQlZJ45A
 OWaA==
X-Gm-Message-State: AGi0PubEzojlMdRRCuQWnDHtNB4krnTF1fm0lGsMZtJSPn6UoytX92Oh
 sCiRTW6dXEmn+WtIQBKrM3BZIYUdmPpsyemYh70=
X-Google-Smtp-Source: APiQypKzF6+d+kvaHfqUmiZUENYlrMoUP8gCIkosLWjyIQWyWGDfhXe0uF0V+iawQs6++52+4Lv1JVXLmh6NX2xx8IY=
X-Received: by 2002:a05:6638:53:: with SMTP id
 a19mr19157348jap.144.1586163535745; 
 Mon, 06 Apr 2020 01:58:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200405173601.24331-1-peron.clem@gmail.com>
 <20200405173601.24331-5-peron.clem@gmail.com>
 <20200406081601.3y6fwb7czr2xdkep@gilmour.lan>
In-Reply-To: <20200406081601.3y6fwb7czr2xdkep@gilmour.lan>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 6 Apr 2020 10:58:44 +0200
Message-ID: <CAJiuCceK40JVf7SDm5s-JAL1g_bMPuuhF7cc-yCSN7epUV7V=w@mail.gmail.com>
Subject: Re: [PATCH v2 4/7] arm64: dts: allwinner: h6: Add GPU Operating
 Performance Points table
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_015857_258390_8280F705 
X-CRM114-Status: GOOD (  19.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gTW9uLCA2IEFwciAyMDIwIGF0IDEwOjE2LCBNYXhpbWUgUmlwYXJkIDxt
YXhpbWVAY2Vybm8udGVjaD4gd3JvdGU6Cj4KPiBPbiBTdW4sIEFwciAwNSwgMjAyMCBhdCAwNzoz
NTo1OFBNICswMjAwLCBDbMOpbWVudCBQw6lyb24gd3JvdGU6Cj4gPiBBZGQgYW4gT3BlcmF0aW5n
IFBlcmZvcm1hbmNlIFBvaW50cyB0YWJsZSBmb3IgdGhlIEdQVSB0bwo+ID4gZW5hYmxlIER5bmFt
aWMgVm9sdGFnZSAmIEZyZXF1ZW5jeSBTY2FsaW5nIG9uIHRoZSBINi4KPiA+Cj4gPiBTaWduZWQt
b2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgo+ID4gLS0tCj4g
PiAgLi4uL2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtZ3B1LW9wcC5kdHNpIHwgNzQgKysr
KysrKysrKysrKysrKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA3NCBpbnNlcnRpb25zKCspCj4g
PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUw
aS1oNi1ncHUtb3BwLmR0c2kKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWdwdS1vcHAuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1oNi1ncHUtb3BwLmR0c2kKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0
Cj4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLjRhMTgxNDg0NGZlMAo+ID4gLS0tIC9kZXYvbnVsbAo+
ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWdwdS1vcHAu
ZHRzaQo+ID4gQEAgLTAsMCArMSw3NCBAQAo+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiAoR1BMLTIuMCsgT1IgTUlUKQo+ID4gKy8vIENvcHlyaWdodCAoQykgMjAyMCBDbMOpbWVudCBQ
w6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgo+ID4gKwo+ID4gKy8gewo+ID4gKyAgICAgZ3B1
X29wcF90YWJsZTogb3BwX3RhYmxlMSB7Cj4KPiBBIG5vZGUgbmFtZSBpcyBzdXBwb3NlZCB0byBi
ZSBhIGdlbmVyaWMgZGVzY3JpcHRpb24sIHNvIHdoYXQgYWJvdXQKPiB1c2luZyBncHUtb3BwLXRh
YmxlIChhbmQgY3B1LW9wcC10YWJsZSkgaW5zdGVhZD8KPgo+ID4gKyAgICAgICAgICAgICBjb21w
YXRpYmxlID0gIm9wZXJhdGluZy1wb2ludHMtdjIiOwo+ID4gKwo+ID4gKyAgICAgICAgICAgICBv
cHBANzU2MDAwMDAwIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBvcHAtaHogPSAvYml0cy8g
NjQgPDc1NjAwMDAwMD47Cj4gPiArICAgICAgICAgICAgICAgICAgICAgb3BwLW1pY3Jvdm9sdCA9
IDwxMDQwMDAwPjsKPiA+ICsgICAgICAgICAgICAgfTsKPiA+ICsgICAgICAgICAgICAgb3BwQDYy
NDAwMDAwMCB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgb3BwLWh6ID0gL2JpdHMvIDY0IDw2
MjQwMDAwMDA+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgIG9wcC1taWNyb3ZvbHQgPSA8OTUw
MDAwPjsKPiA+ICsgICAgICAgICAgICAgfTsKPgo+IE9yZGVyaW5nIGJ5IGFzY2VuZGluZyBmcmVx
dWVuY3kgd291bGQgYmUgZ3JlYXQgaGVyZS4KSW5kZWVkIHdpbGwgZml4IGl0LgoKPgo+IEFsc28s
IHdoeSBkaWQgeW91IG5lZWQgdG8gY3JlYXRlIGEgbmV3IERUU0kgZm9yIGl0PyBJcyB0aGVyZSBz
b21lCj4gZG93bnNpZGUgdG8gZW5hYmxpbmcgaXQgZm9yIGFsbCB0aGUgdXNlcnM/CgpJIGRpZG4n
dCB3YW50IHRvIGVuYWJsZSBpdCBmb3IgYWxsIGJvYXJkcyBhcyBJIGNhbid0IHRlc3QgdGhlbSBh
bmQgbm90IGFsbCBib2FyZApoYXZlIGEgZGVkaWNhdGVkIHJlZ3VsYXRvciBmb3IgVkRELUdQVS4K
SGVuY2UgbXkgcXVlc3Rpb24gaW4gdGhlIGNvdmVyLApCdXQgd2l0aCBKZXJuZWogxaBrcmFiZWMg
dGVzdCBvbiBUYW5peCBUWDYgSSB0aGluayBpdCBjYW4gYmUgc2FmZWx5CmVuYWJsZSBvbiBhbGwg
Ym9hcmRzLgoKUmVnYXJkcywKQ2xlbWVudAoKPgo+IE1heGltZQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
