Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D20189F8F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 16:24:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jirpfypyQxGINMoiwKqSjujZWhLMtTulkHvTzFHXtwA=; b=MH/IkxZOujBlEZ
	RX76vZDta53EB8zspOxN6WtukB1lph+KZlrWpBziBJ4JqT9dh312GlVd0aUYQFdkPn8+yHy/AXz1G
	/IG92VCGoNn/uxZJhoHJdQfVWnqt6fJiCykKpJArxtjcg461WeP54jBqRQPhd7Bjd7SKvoCz50vMJ
	lnFYC52nWvoaStewYgY5h7Hx3OvYxtaTsj0tqb6BGVOg5Q82EEb6pK1JOy8qJvydtHAn0YwaQDwNh
	WVMZaeaZFelpUbMYF7Pk6sd+4lbQHLp4Ldpq3DKec9kv3Pi0rxVwCYiVeNS+3g23hDtJjSTSOmDY1
	dDtNlw8ceLr06EZD07Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEaXz-0002XD-Kc; Wed, 18 Mar 2020 15:23:55 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEaXl-0002WG-HP
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 15:23:44 +0000
Received: by mail-ed1-f65.google.com with SMTP id u59so3027650edc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 08:23:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=o/P0A6ezH4SEJwDeuvTx7Zm75dRTOfNAGjM7Gto+Be4=;
 b=bvRJRKsRC4MStIE8V7F2lw2itHgrbJI//u4+R14XInNJaRWsa+UT762B3KhraCmanh
 mbj3xELkvfs84H5w5b+xqVY8OrGeHsChGCz3BfwGjk5D3z6fJjp/4x0ZuAN02cEacaBi
 zxN/OxdOqCcWHKOsGZR1aJj2S4Sp/MAZqqe5royCB0UX98Z2b1KUyY4/7wmzi/VEj/K5
 f6cRQBvLwm4RqNLn6gt6SQZCfHh9LQLm9X+EOk5lIPU+Z3FWbYIrb3RWdkGqVjfLWaq4
 A8fdEUNmvHnEQgP5m3bSS2WBG4/VNaFryRSCNcVXjO0GZoVAwtd9SN4ATlaX/KJdBFWN
 nwFw==
X-Gm-Message-State: ANhLgQ23Lop9WY0PntHNvGfuX3K4HsIZ6NZ1LaDXK2vO3gRriNZcY1hl
 bKyTKvdaH7fto2/5qValK0Q=
X-Google-Smtp-Source: ADFU+vvlLB74JgRlXg+xDPlq4YvNZSuookChWiizS7jCejQkfzsJGQqnWGmzWtT6WtrTpus21OVJ/w==
X-Received: by 2002:a50:950b:: with SMTP id u11mr4435941eda.233.1584545016013; 
 Wed, 18 Mar 2020 08:23:36 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id lc15sm363298ejb.58.2020.03.18.08.23.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 18 Mar 2020 08:23:35 -0700 (PDT)
Date: Wed, 18 Mar 2020 16:23:22 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH 2/2] ARM: DTS: Add devicetree file for the Galaxy S2
Message-ID: <20200318152322.GA4112@kozik-lap>
References: <20200312153411.13535-1-paul@crapouillou.net>
 <20200312153411.13535-2-paul@crapouillou.net>
 <20200313090011.GB7416@pi3>
 <20200318142543.C167520772@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318142543.C167520772@mail.kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_082341_577597_BACF2EC7 
X-CRM114-Status: GOOD (  30.36  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stenkin Evgeniy <stenkinevgeniy@gmail.com>, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXIgMTgsIDIwMjAgYXQgMDM6MjU6MjJQTSArMDEwMCwgUGF1bCBDZXJjdWVpbCB3
cm90ZToKPiBIaSBLcnp5c3p0b2YsCj4gCj4gCj4gTGUgdmVuLiAxMyBtYXJzIDIwMjAgw6AgMTA6
MDAsIEtyenlzenRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4gYSDDqWNyaXQKPiA6Cj4g
PiBPbiBUaHUsIE1hciAxMiwgMjAyMCBhdCAwNDozNDoxMVBNICswMTAwLCBQYXVsIENlcmN1ZWls
IHdyb3RlOgo+ID4gPiAgRnJvbTogU3RlbmtpbiBFdmdlbml5IDxzdGVua2luZXZnZW5peUBnbWFp
bC5jb20+Cj4gPiA+IAo+ID4gPiAgQWRkIGRldmljZXRyZWUgZmlsZSBmb3IgdGhlIEV4eW5vcyA0
MjEwIGJhc2VkIEdhbGF4eSBTMiAoaTkxMDAKPiA+ID4gdmVyc2lvbikuCj4gPiAKPiA+IFRoYW5r
cyBmb3IgdGhlIHBhdGNoIQo+ID4gCj4gPiBJdCBpcyBhbiBHVC1JOTEwMC4KPiA+IAo+ID4gK0Nj
IE1hcmVrIChJIGhhdmUgZmV3IHF1ZXN0aW9ucyBmdXJ0aGVyKQo+ID4gCj4gPiAKPiA+ID4gCj4g
PiA+ICBTaWduZWQtb2ZmLWJ5OiBTdGVua2luIEV2Z2VuaXkgPHN0ZW5raW5ldmdlbml5QGdtYWls
LmNvbT4KPiA+ID4gIFNpZ25lZC1vZmYtYnk6IFBhdWwgQ2VyY3VlaWwgPHBhdWxAY3JhcG91aWxs
b3UubmV0Pgo+ID4gPiAgLS0tCj4gPiA+ICAgYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZpbGUgICAg
ICAgICAgICAgfCAgIDEgKwo+ID4gPiAgIGFyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQyMTAtaTkx
MDAuZHRzIHwgODE2Cj4gPiA+ICsrKysrKysrKysrKysrKysrKysrKysrKysKPiA+ID4gICAyIGZp
bGVzIGNoYW5nZWQsIDgxNyBpbnNlcnRpb25zKCspCj4gPiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0
IGFyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQyMTAtaTkxMDAuZHRzCj4gPiA+IAo+ID4gPiAgZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxlIGIvYXJjaC9hcm0vYm9vdC9kdHMv
TWFrZWZpbGUKPiA+ID4gIGluZGV4IGQ2NTQ2ZDI2NzZiOS4uNTIyNDM2ZDMwNjkwIDEwMDY0NAo+
ID4gPiAgLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZpbGUKPiA+ID4gICsrKyBiL2FyY2gv
YXJtL2Jvb3QvZHRzL01ha2VmaWxlCj4gPiA+ICBAQCAtMTgxLDYgKzE4MSw3IEBAIGR0Yi0kKENP
TkZJR19BUkNIX0VYWU5PUzMpICs9IFwKPiA+ID4gICAJZXh5bm9zMzI1MC1tb25rLmR0YiBcCj4g
PiA+ICAgCWV4eW5vczMyNTAtcmluYXRvLmR0Ygo+ID4gPiAgIGR0Yi0kKENPTkZJR19BUkNIX0VY
WU5PUzQpICs9IFwKPiA+ID4gICsJZXh5bm9zNDIxMC1pOTEwMC5kdGIgXAo+ID4gPiAgIAlleHlu
b3M0MjEwLW9yaWdlbi5kdGIgXAo+ID4gPiAgIAlleHlub3M0MjEwLXNtZGt2MzEwLmR0YiBcCj4g
PiA+ICAgCWV4eW5vczQyMTAtdHJhdHMuZHRiIFwKPiA+ID4gIGRpZmYgLS1naXQgYS9hcmNoL2Fy
bS9ib290L2R0cy9leHlub3M0MjEwLWk5MTAwLmR0cwo+ID4gPiBiL2FyY2gvYXJtL2Jvb3QvZHRz
L2V4eW5vczQyMTAtaTkxMDAuZHRzCj4gPiA+ICBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gPiAg
aW5kZXggMDAwMDAwMDAwMDAwLi5jMjE4ZTM0OTU5YmUKPiA+ID4gIC0tLSAvZGV2L251bGwKPiA+
ID4gICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczQyMTAtaTkxMDAuZHRzCj4gPiA+ICBA
QCAtMCwwICsxLDgxNiBAQAo+ID4gPiAgKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwt
Mi4wCj4gPiA+ICArLyoKPiA+ID4gICsgKiBTYW1zdW5nJ3MgRXh5bm9zNDIxMCBiYXNlZCBHYWxh
eHkgUzIgKGk5MTAwIHZlcnNpb24pIGRldmljZSB0cmVlCj4gPiAKPiA+IERpdHRvCj4gPiAKPiA+
ID4gICsgKgo+ID4gPiAgKyAqIENvcHlyaWdodCAoYykgMjAxMiBTYW1zdW5nIEVsZWN0cm9uaWNz
IENvLiwgTHRkLgo+ID4gPiAgKyAqCQlodHRwOi8vd3d3LnNhbXN1bmcuY29tCj4gPiA+ICArICog
Q29weXJpZ2h0IChjKSAyMDIwIFN0ZW5raW4gRXZnZW5peSA8c3RlbmtpbmV2Z2VuaXlAZ21haWwu
Y29tPgo+ID4gPiAgKyAqIENvcHlyaWdodCAoYykgMjAyMCBQYXVsIENlcmN1ZWlsIDxwYXVsQGNy
YXBvdWlsbG91Lm5ldD4KPiA+ID4gICsgKgo+ID4gPiAgKyAqIERldmljZSB0cmVlIHNvdXJjZSBm
aWxlIGZvciBTYW1zdW5nJ3MgR2FsYXh5IFMyIHNtYXJ0cGhvbmUKPiA+ID4gKGk5MTAwIHZlcnNp
b24pLAo+ID4gPiAgKyAqIHdoaWNoIGlzIGJhc2VkIG9uIFNhbXN1bmcncyBFeHlub3M0MjEwIFNv
Qy4KPiA+IAo+ID4gRHVwbGljYXRlZCBkZXNjcmlwdGlvbiwgeW91IG1lbnRpb25lZCBpdCBiZWZv
cmUuCj4gPiAKPiA+ID4gICsgKi8KPiA+ID4gICsKPiA+ID4gICsvZHRzLXYxLzsKPiA+ID4gICsj
aW5jbHVkZSAiZXh5bm9zNDIxMC5kdHNpIgo+ID4gPiAgKyNpbmNsdWRlICJleHlub3M0NDEyLXBw
bXUtY29tbW9uLmR0c2kiCj4gPiA+ICArCj4gPiA+ICArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2dw
aW8vZ3Bpby5oPgo+ID4gPiAgKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnB1dC9saW51eC1ldmVu
dC1jb2Rlcy5oPgo+ID4gPiAgKwo+ID4gPiAgKy8gewo+ID4gPiAgKwltb2RlbCA9ICJTYW1zdW5n
IEdhbGF4eSBTMiAoaTkxMDApIjsKPiA+IAo+ID4gR1QtSTkxMDAKPiA+IAo+ID4gPiAgKwljb21w
YXRpYmxlID0gInNhbXN1bmcsaTkxMDAiLCAic2Ftc3VuZyxleHlub3M0MjEwIiwKPiA+ID4gInNh
bXN1bmcsZXh5bm9zNCI7Cj4gPiAKPiA+IEkgdGhpbmsgaXQgc2hhcmVzIGEgbG90IHdpdGggVHJh
dHMgYm9hcmQuLi4KPiA+IAo+ID4gTWFyZWssIGhvdyBzaW1pbGFyIHRoZXNlCj4gPiBkZXNpZ25z
IGFyZT8gTWF5YmUgaXQgaXMgd29ydGggdG8gc3BsaXQgc29tZSBwYXJ0cyBhbmQgbWFrZSBjb21t
b24gcGFydD8KPiA+IAo+ID4gPiAgKwo+ID4gPiAgKwo+ID4gPiAgKwltZW1vcnlANDAwMDAwMDAg
ewo+ID4gPiAgKwkJZGV2aWNlX3R5cGUgPSAibWVtb3J5IjsKPiA+ID4gICsJCXJlZyA9IDwweDQw
MDAwMDAwIDB4NDAwMDAwMDA+Owo+ID4gPiAgKwl9Owo+ID4gPiAgKwo+ID4gCj4gPiBZb3UgZG8g
bm90IGhhdmUgYSBjaG9zZW4gbm9kZSwgYXQgbGVhc3QgZm9yIHN0ZG91dCBzZXJpYWwgc2VsZWN0
aW9uLgo+ID4gUHJvYmFibHkgeW91IHNob3VsZCBoYXZlIG9uZS4uLiBib290YXJncyBJIGd1ZXNz
IGNvdWxkIGNvbWUgZnJvbQo+ID4gYm9vdGxvYWRlci4KPiA+IAo+ID4gCj4gPiA+ICArCXZlbW1j
X3JlZzogcmVndWxhdG9yLTAgewo+ID4gPiAgKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4
ZWQiOwo+ID4gPiAgKwkJcmVndWxhdG9yLW5hbWUgPSAiVk1FTV9WRERfMi44ViI7Cj4gPiA+ICAr
CQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwyODAwMDAwPjsKPiA+ID4gICsJCXJlZ3VsYXRv
ci1tYXgtbWljcm92b2x0ID0gPDI4MDAwMDA+Owo+ID4gPiAgKwkJZ3BpbyA9IDwmZ3BrMCAyIEdQ
SU9fQUNUSVZFX0hJR0g+Owo+ID4gPiAgKwkJZW5hYmxlLWFjdGl2ZS1oaWdoOwo+ID4gCj4gPiBU
aGlzIGxvb2tzIGxpa2UgYSBzdHViL2Zha2UgcmVndWxhdG9yLiBQcm9iYWJseSBpdCBzaG9vdWxk
IGJlIHJlcGxhY2VkCj4gPiB3aXRoIHByb3BlciByZWd1bGF0b3IgY29taW5nIGZyb20gUE1JQyAo
ZmV3IHNlZW1zIHRvIGJlIG1pc3NpbmcgdGhlcmUpLgo+ID4gCj4gPiBJIGRvbid0IGhhdmUgdGhl
IHNjaGVtYXRpY3Mgc28gSSBjYW5ub3QganVkZ2UuLi4gSSBzZWUgVHJhdHMgaGFzIHRoZQo+ID4g
c2FtZS4KPiA+IAo+ID4gTWFyZWssIG1heXliZSB5b3Uga25vdywgaXMgaXQgcmVhbGx5IGEgc2Vw
YXJhdGUgcmVndWxhdG9yPwo+ID4gCj4gPiA+ICArCX07Cj4gPiA+ICArCj4gPiA+ICArCXRzcF9y
ZWc6IHJlZ3VsYXRvci0xIHsKPiA+ID4gICsJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVk
IjsKPiA+ID4gICsJCXJlZ3VsYXRvci1uYW1lID0gIlRTUF9GSVhFRF9WT0xUQUdFUyI7Cj4gPiA+
ICArCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPiA+ID4gICsJCXJlZ3Vs
YXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+ID4gPiAgKwkJZ3BpbyA9IDwmZ3BsMCAz
IEdQSU9fQUNUSVZFX0hJR0g+Owo+ID4gPiAgKwkJc3RhcnR1cC1kZWxheS11cyA9IDw3MDAwMD47
Cj4gPiA+ICArCQllbmFibGUtYWN0aXZlLWhpZ2g7Cj4gPiA+ICArCQlyZWd1bGF0b3ItYm9vdC1v
bjsKPiA+ID4gICsJCXJlZ3VsYXRvci1hbHdheXMtb247Cj4gPiAKPiA+IGFsd2F5cy1vbiBhbmQg
Ym9vdC1vbiBzaG91bGQgbm90IGJlIG5lZWRlZC4gWW91IGhhdmUgYSBjb25zdW1lciBmb3IgdGhp
cwo+ID4gcmVndWxhdG9yLgo+IAo+IEFib3V0IHRoaXM6IHRoZSB0b3VjaHNjcmVlbiBkcml2ZXIg
ZG9lcyBub3QgdXNlIGEgcmVndWxhdG9yLCBzbyBJIGJlbGlldmUKPiB0aGF0J3Mgd2h5IHRoZXNl
IHByb3BlcnRpZXMgd2VyZSBoZXJlLgo+IAo+IEkgc2VudCBwYXRjaGVzIHVwc3RyZWFtIHRvIGFk
ZHJlc3MgdGhlIGlzc3VlOgo+IGh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDIwLzMvMTUvOTQKPiAK
PiBJIGJlbGlldmUgdGhpcyBtZWFucyBJIGNhbm5vdCBtZXJnZSB0aGUgaTkxMDAgZGV2aWNldHJl
ZSB1bnRpbCBpdCBpcyBhY2tlZC4KClRoaXMgY2FuIHN0YXkgYmVjYXVzZSBpdCBpcyBjb3JyZWN0
IHdpdGggY3VycmVudCBiaW5kaW5ncyBhbmQgZHJpdmVyLgpIb3dldmVyIHlvdSBzaG91bGQgcmVt
b3ZlIGF2ZGQtc3VwcGx5L3ZkZC1zdXBwbHkgZnJvbSB0b3VjaHNjcmVlbiBub2RlCmJlY2F1c2Ug
dGhleSBhcmUgbm90IHVzZWQvc3VwcG9ydGVkLgoKWW91IGNhbiByZS1hZGQgdGhlbSBvbmNlIGJp
bmRpbmdzIGdldCBhY2NlcHRlZC4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
