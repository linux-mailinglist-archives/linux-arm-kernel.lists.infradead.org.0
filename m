Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B76E51B8FC7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 14:18:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2tniIno1KKk5M3ZHLvMujpeA11oHoov64VkPZtcc6V4=; b=Vmz1CWYTGQPrF2
	We0dW1IVVrUvZzTEbL0Vu/nG7OmLysLg5P62aWwU1Uve0WtUW/hHFZ1IGiDavf+BSWj5b3Ef6p26U
	OTn8O9ZUrH3HsHndJzXE6pj35z6n+1kLSAFcC1isIg3ICynNaxB+JmJJLW4mHm5ss1UuVfwESxXwD
	pZARCSMBSHQx47lfp60PXxFZtKvQb1MYKI9mSyIeF8HUAKwwFEctgfP6ccDCAGXjmWPO4S0Ndbmx5
	vgi/Xui1mmGrQVaFUh4Bd6tvu1OoYAmmT2WbssQn3+wL1bnSRnDr53zzIVjcnceolGh3JKmsEEDsw
	tCDcE6jFMEgoOes8n8KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSgEv-0004xN-Cn; Sun, 26 Apr 2020 12:18:29 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSgEj-0004w2-Oe
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 12:18:19 +0000
Received: by mail-il1-x142.google.com with SMTP id q10so14070544ile.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 05:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pnYdgmQFzwhGmDvDPiH/jDwjweMNfoD46y/Y/YmZg10=;
 b=pAi9kUhoZ/Qjs8l84NpVVssFY8uSsu6LKAwtrc3pq83VPsGi48uUd/NV12A9px1xae
 g4LubnCzeRTAW3FSOwhW1SgNb98QvW1B0qi1cVcQsvc5DUpGwlMmcq+QgRQU2NBGg0F5
 lS/lTGusPWyVcGrfbryvjemU/W2dQVX1C/X2u3hcZ3X4aJkhN024LnrhuKj3ZDcNfXpN
 VGdtN2YZ44gfUGTf9rQE+Ec37V5rAoBNI6EHVSQo0qP6ZlZd79KhUr9ZA61vfXA7SEqe
 ihsNWxVNf00/cVSS1U8WLDnvpbhxKUE1sVTTRfyxYCRcGVLW75Qh8IcNfjtkLipXtFQF
 vR0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pnYdgmQFzwhGmDvDPiH/jDwjweMNfoD46y/Y/YmZg10=;
 b=hPpW7ozMD69LEzm4/FHKwpmnPoEJWuauND96MuWJsTp2U3dtLctj5YkNtFiT3LqG0+
 c2uenMOL3evvxxsfWAyl/HYr/TZCHyS1CDCG7heaO6rzv7ZIeixWcs+gNE0tjQ4gkiMz
 TX33D93ACUc9yeE1OxteFgHlHLWVdWMmhBNcdvnL3C/l1IlUZHl4xdezKGjyz3JZzKGz
 Gl4NgmBSYF44Xaj0UYEjjcGCUyjnt0GzmJi4DbMqyxu8Jyq/JC5vloD3+7cmc7xOKVOc
 dRxu/iAbBy0eJdgtUvlgwse8nRQaIUSXlfNOafxwlEvmwyIp5R1T6nzBR7Mh5M2PufCP
 jLqQ==
X-Gm-Message-State: AGi0PuavS6jd2qHSeaI/pLiB3we58fUNJ+Smyz+S7wpvVG3Uy3ZvhOZm
 Gv3AWoQQ+Ux6Yg66ddyQ10NlaIJDP3NwsyilAWQ=
X-Google-Smtp-Source: APiQypKrdPuEZGu5BM7WAtgp8dotSKhkd5VuYDkUEwAH98HM5hfJjwS7qSjm3rozkhfzgkjuuzZn6yfB/RvFoZbagQw=
X-Received: by 2002:a92:3a48:: with SMTP id h69mr16189042ila.150.1587903496623; 
 Sun, 26 Apr 2020 05:18:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200426121709.1216-1-peron.clem@gmail.com>
In-Reply-To: <20200426121709.1216-1-peron.clem@gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Sun, 26 Apr 2020 14:18:05 +0200
Message-ID: <CAJiuCcfA1f6Q8QN-Y0X5WDKciczLAJ7TWNGr5x3N7X0VGtL2NQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: h6: Use dedicated CPU OPP table
 for Tanix TX6
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_051817_809125_B7E59C56 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Piotr Oniszczuk <warpme@o2.pl>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgV2FycG1lLAoKT24gU3VuLCAyNiBBcHIgMjAyMCBhdCAxNDoxNywgQ2zDqW1lbnQgUMOpcm9u
IDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBUYW5peCBUWDYgaGFzIGEgZml4ZWQg
cmVndWxhdG9yLiBBcyBEVkZTIGlzIGluc3RydWN0ZWQgdG8gY2hhbmdlCj4gdm9sdGFnZSB0byBt
ZWV0IE9QUCB0YWJsZS4gVGhlIERWRlMgaXMgbm90IHdvcmtpbmcgYXMgZXhwZWN0ZWQuCj4KPiBJ
bnRyb2R1Y2UgYSBkZWRpY2F0ZWQgT1BQIFRhYmxlIHdoZXJlIHZvbHRhZ2UgYXJlIGVxdWFscyB0
bwo+IHRoZSBmaXhlZCByZWd1bGF0b3IuCj4KPiBSZXBvcnRlZC1ieTogUGlvdHIgT25pc3pjenVr
IDx3YXJwbWVAbzIucGw+Cj4gRml4ZXM6IGFkZDFlMjdmYjcwMyAoImFybTY0OiBkdHM6IGFsbHdp
bm5lcjogaDY6IEVuYWJsZSBDUFUgb3BwIHRhYmxlcyBmb3IgVGFuaXggVFg2IikKPiBTaWduZWQt
b2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgoKQ291bGQgeW91
IGNvbmZpcm0gdGhpcyBwYXRjaCBmaXhlZCB5b3VyIGlzc3VlPwoKSWYgeWVzIGNvdWxkIHlvdSBh
ZGQgeW91ciB0ZXN0ZWQtYnkgdGFnID8KClRoYW5rcywKQ2xlbWVudAoKPiAtLS0KPiAgLi4uL3N1
bjUwaS1oNi10YW5peC10eDYtY3B1LW9wcC5kdHNpICAgICAgICAgIHwgMTE2ICsrKysrKysrKysr
KysrKysrKwo+ICAuLi4vZHRzL2FsbHdpbm5lci9zdW41MGktaDYtdGFuaXgtdHg2LmR0cyAgICAg
fCAgIDIgKy0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMTcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIv
c3VuNTBpLWg2LXRhbml4LXR4Ni1jcHUtb3BwLmR0c2kKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtdGFuaXgtdHg2LWNwdS1vcHAuZHRzaSBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi10YW5peC10eDYtY3B1LW9w
cC5kdHNpCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLjA2Mjk0
MDExNTU2Mwo+IC0tLSAvZGV2L251bGwKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdp
bm5lci9zdW41MGktaDYtdGFuaXgtdHg2LWNwdS1vcHAuZHRzaQo+IEBAIC0wLDAgKzEsMTE2IEBA
Cj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQo+ICsvLyBD
b3B5cmlnaHQgKEMpIDIwMjAgQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4K
PiArCj4gKy8gewo+ICsgICAgICAgY3B1X29wcF90YWJsZTogY3B1LW9wcC10YWJsZSB7Cj4gKyAg
ICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1oNi1vcGVyYXRpbmct
cG9pbnRzIjsKPiArICAgICAgICAgICAgICAgbnZtZW0tY2VsbHMgPSA8JmNwdV9zcGVlZF9ncmFk
ZT47Cj4gKyAgICAgICAgICAgICAgIG9wcC1zaGFyZWQ7Cj4gKwo+ICsgICAgICAgICAgICAgICBv
cHBANDgwMDAwMDAwIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBjbG9jay1sYXRlbmN5LW5z
ID0gPDI0NDE0ND47IC8qIDggMzJrIHBlcmlvZHMgKi8KPiArICAgICAgICAgICAgICAgICAgICAg
ICBvcHAtaHogPSAvYml0cy8gNjQgPDQ4MDAwMDAwMD47Cj4gKwo+ICsgICAgICAgICAgICAgICAg
ICAgICAgIG9wcC1taWNyb3ZvbHQtc3BlZWQwID0gPDExMzUwMDA+Owo+ICsgICAgICAgICAgICAg
ICAgICAgICAgIG9wcC1taWNyb3ZvbHQtc3BlZWQxID0gPDExMzUwMDA+Owo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIG9wcC1taWNyb3ZvbHQtc3BlZWQyID0gPDExMzUwMDA+Owo+ICsgICAgICAg
ICAgICAgICB9Owo+ICsKPiArICAgICAgICAgICAgICAgb3BwQDcyMDAwMDAwMCB7Cj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgY2xvY2stbGF0ZW5jeS1ucyA9IDwyNDQxNDQ+OyAvKiA4IDMyayBw
ZXJpb2RzICovCj4gKyAgICAgICAgICAgICAgICAgICAgICAgb3BwLWh6ID0gL2JpdHMvIDY0IDw3
MjAwMDAwMDA+Owo+ICsKPiArICAgICAgICAgICAgICAgICAgICAgICBvcHAtbWljcm92b2x0LXNw
ZWVkMCA9IDwxMTM1MDAwPjsKPiArICAgICAgICAgICAgICAgICAgICAgICBvcHAtbWljcm92b2x0
LXNwZWVkMSA9IDwxMTM1MDAwPjsKPiArICAgICAgICAgICAgICAgICAgICAgICBvcHAtbWljcm92
b2x0LXNwZWVkMiA9IDwxMTM1MDAwPjsKPiArICAgICAgICAgICAgICAgfTsKPiArCj4gKyAgICAg
ICAgICAgICAgIG9wcEA4MTYwMDAwMDAgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIGNsb2Nr
LWxhdGVuY3ktbnMgPSA8MjQ0MTQ0PjsgLyogOCAzMmsgcGVyaW9kcyAqLwo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIG9wcC1oeiA9IC9iaXRzLyA2NCA8ODE2MDAwMDAwPjsKPiArCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgb3BwLW1pY3Jvdm9sdC1zcGVlZDAgPSA8MTEzNTAwMD47Cj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgb3BwLW1pY3Jvdm9sdC1zcGVlZDEgPSA8MTEzNTAwMD47Cj4g
KyAgICAgICAgICAgICAgICAgICAgICAgb3BwLW1pY3Jvdm9sdC1zcGVlZDIgPSA8MTEzNTAwMD47
Cj4gKyAgICAgICAgICAgICAgIH07Cj4gKwo+ICsgICAgICAgICAgICAgICBvcHBAODg4MDAwMDAw
IHsKPiArICAgICAgICAgICAgICAgICAgICAgICBjbG9jay1sYXRlbmN5LW5zID0gPDI0NDE0ND47
IC8qIDggMzJrIHBlcmlvZHMgKi8KPiArICAgICAgICAgICAgICAgICAgICAgICBvcHAtaHogPSAv
Yml0cy8gNjQgPDg4ODAwMDAwMD47Cj4gKwo+ICsgICAgICAgICAgICAgICAgICAgICAgIG9wcC1t
aWNyb3ZvbHQtc3BlZWQwID0gPDExMzUwMDA+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIG9w
cC1taWNyb3ZvbHQtc3BlZWQxID0gPDExMzUwMDA+Owo+ICsgICAgICAgICAgICAgICAgICAgICAg
IG9wcC1taWNyb3ZvbHQtc3BlZWQyID0gPDExMzUwMDA+Owo+ICsgICAgICAgICAgICAgICB9Owo+
ICsKPiArICAgICAgICAgICAgICAgb3BwQDEwODAwMDAwMDAgewo+ICsgICAgICAgICAgICAgICAg
ICAgICAgIGNsb2NrLWxhdGVuY3ktbnMgPSA8MjQ0MTQ0PjsgLyogOCAzMmsgcGVyaW9kcyAqLwo+
ICsgICAgICAgICAgICAgICAgICAgICAgIG9wcC1oeiA9IC9iaXRzLyA2NCA8MTA4MDAwMDAwMD47
Cj4gKwo+ICsgICAgICAgICAgICAgICAgICAgICAgIG9wcC1taWNyb3ZvbHQtc3BlZWQwID0gPDEx
MzUwMDA+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIG9wcC1taWNyb3ZvbHQtc3BlZWQxID0g
PDExMzUwMDA+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIG9wcC1taWNyb3ZvbHQtc3BlZWQy
ID0gPDExMzUwMDA+Owo+ICsgICAgICAgICAgICAgICB9Owo+ICsKPiArICAgICAgICAgICAgICAg
b3BwQDEzMjAwMDAwMDAgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrLWxhdGVuY3kt
bnMgPSA8MjQ0MTQ0PjsgLyogOCAzMmsgcGVyaW9kcyAqLwo+ICsgICAgICAgICAgICAgICAgICAg
ICAgIG9wcC1oeiA9IC9iaXRzLyA2NCA8MTMyMDAwMDAwMD47Cj4gKwo+ICsgICAgICAgICAgICAg
ICAgICAgICAgIG9wcC1taWNyb3ZvbHQtc3BlZWQwID0gPDExMzUwMDA+Owo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIG9wcC1taWNyb3ZvbHQtc3BlZWQxID0gPDExMzUwMDA+Owo+ICsgICAgICAg
ICAgICAgICAgICAgICAgIG9wcC1taWNyb3ZvbHQtc3BlZWQyID0gPDExMzUwMDA+Owo+ICsgICAg
ICAgICAgICAgICB9Owo+ICsKPiArICAgICAgICAgICAgICAgb3BwQDE0ODgwMDAwMDAgewo+ICsg
ICAgICAgICAgICAgICAgICAgICAgIGNsb2NrLWxhdGVuY3ktbnMgPSA8MjQ0MTQ0PjsgLyogOCAz
MmsgcGVyaW9kcyAqLwo+ICsgICAgICAgICAgICAgICAgICAgICAgIG9wcC1oeiA9IC9iaXRzLyA2
NCA8MTQ4ODAwMDAwMD47Cj4gKwo+ICsgICAgICAgICAgICAgICAgICAgICAgIG9wcC1taWNyb3Zv
bHQtc3BlZWQwID0gPDExMzUwMDA+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIG9wcC1taWNy
b3ZvbHQtc3BlZWQxID0gPDExMzUwMDA+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIG9wcC1t
aWNyb3ZvbHQtc3BlZWQyID0gPDExMzUwMDA+Owo+ICsgICAgICAgICAgICAgICB9Owo+ICsKPiAr
ICAgICAgICAgICAgICAgb3BwQDE2MDgwMDAwMDAgewo+ICsgICAgICAgICAgICAgICAgICAgICAg
IGNsb2NrLWxhdGVuY3ktbnMgPSA8MjQ0MTQ0PjsgLyogOCAzMmsgcGVyaW9kcyAqLwo+ICsgICAg
ICAgICAgICAgICAgICAgICAgIG9wcC1oeiA9IC9iaXRzLyA2NCA8MTYwODAwMDAwMD47Cj4gKwo+
ICsgICAgICAgICAgICAgICAgICAgICAgIG9wcC1taWNyb3ZvbHQtc3BlZWQwID0gPDExMzUwMDA+
Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIG9wcC1taWNyb3ZvbHQtc3BlZWQxID0gPDExMzUw
MDA+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIG9wcC1taWNyb3ZvbHQtc3BlZWQyID0gPDEx
MzUwMDA+Owo+ICsgICAgICAgICAgICAgICB9Owo+ICsKPiArICAgICAgICAgICAgICAgb3BwQDE3
MDQwMDAwMDAgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIGNsb2NrLWxhdGVuY3ktbnMgPSA8
MjQ0MTQ0PjsgLyogOCAzMmsgcGVyaW9kcyAqLwo+ICsgICAgICAgICAgICAgICAgICAgICAgIG9w
cC1oeiA9IC9iaXRzLyA2NCA8MTcwNDAwMDAwMD47Cj4gKwo+ICsgICAgICAgICAgICAgICAgICAg
ICAgIG9wcC1taWNyb3ZvbHQtc3BlZWQwID0gPDExMzUwMDA+Owo+ICsgICAgICAgICAgICAgICAg
ICAgICAgIG9wcC1taWNyb3ZvbHQtc3BlZWQxID0gPDExMzUwMDA+Owo+ICsgICAgICAgICAgICAg
ICAgICAgICAgIG9wcC1taWNyb3ZvbHQtc3BlZWQyID0gPDExMzUwMDA+Owo+ICsgICAgICAgICAg
ICAgICB9Owo+ICsKPiArICAgICAgICAgICAgICAgb3BwQDE4MDAwMDAwMDAgewo+ICsgICAgICAg
ICAgICAgICAgICAgICAgIGNsb2NrLWxhdGVuY3ktbnMgPSA8MjQ0MTQ0PjsgLyogOCAzMmsgcGVy
aW9kcyAqLwo+ICsgICAgICAgICAgICAgICAgICAgICAgIG9wcC1oeiA9IC9iaXRzLyA2NCA8MTgw
MDAwMDAwMD47Cj4gKwo+ICsgICAgICAgICAgICAgICAgICAgICAgIG9wcC1taWNyb3ZvbHQtc3Bl
ZWQwID0gPDExMzUwMDA+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIG9wcC1taWNyb3ZvbHQt
c3BlZWQxID0gPDExMzUwMDA+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIG9wcC1taWNyb3Zv
bHQtc3BlZWQyID0gPDExMzUwMDA+Owo+ICsgICAgICAgICAgICAgICB9Owo+ICsgICAgICAgfTsK
PiArfTsKPiArCj4gKyZjcHUwIHsKPiArICAgICAgIG9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmNw
dV9vcHBfdGFibGU+Owo+ICt9Owo+ICsKPiArJmNwdTEgewo+ICsgICAgICAgb3BlcmF0aW5nLXBv
aW50cy12MiA9IDwmY3B1X29wcF90YWJsZT47Cj4gK307Cj4gKwo+ICsmY3B1MiB7Cj4gKyAgICAg
ICBvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZjcHVfb3BwX3RhYmxlPjsKPiArfTsKPiArCj4gKyZj
cHUzIHsKPiArICAgICAgIG9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmNwdV9vcHBfdGFibGU+Owo+
ICt9Owo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGkt
aDYtdGFuaXgtdHg2LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1o
Ni10YW5peC10eDYuZHRzCj4gaW5kZXggYmU4MTMzMGRiMTRmLi4zZWFhNGY0OWUzZDMgMTAwNjQ0
Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXRhbml4LXR4
Ni5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtdGFu
aXgtdHg2LmR0cwo+IEBAIC00LDcgKzQsNyBAQAo+ICAvZHRzLXYxLzsKPgo+ICAjaW5jbHVkZSAi
c3VuNTBpLWg2LmR0c2kiCj4gLSNpbmNsdWRlICJzdW41MGktaDYtY3B1LW9wcC5kdHNpIgo+ICsj
aW5sY3VkZSAic3VuNTBpLWg2LXRhbml4LXR4Ni1jcHUtb3BwLmR0c2kiCj4KPiAgI2luY2x1ZGUg
PGR0LWJpbmRpbmdzL2dwaW8vZ3Bpby5oPgo+Cj4gLS0KPiAyLjIwLjEKPgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
