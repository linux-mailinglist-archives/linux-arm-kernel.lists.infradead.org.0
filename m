Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5F833473
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 18:02:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pEiMlZTKi46hckIGouWKnbEJQae6ZQ/Wx0sEvmgCQjg=; b=Ta5yay5pLWBO0U
	zvmOocdy0Ila4YHSNibSWhuGx2U56xeZ7QMyDDErTsi1yqS7sKYv6hOJjZjmPDHKVlSTUjXlsyK5P
	YnaCHudJpfqHnZIpyocvjpCKo6S8J8S1++/vGvJqHwlzJ5WK6PszESBe77PnEZZWx4Jbgy87KRa5V
	pNT2cxj0VqO4S/cOspGxFXSdnvhvM0JIW0XlypuFZQy9MZuWDGx92iAuVg9Zk7UqDX7WLsYrizFdL
	/uDmwgair0GZYsLkbRcr34toyNjjUF3D98J4iRBIbhOCbtMoOy9Bo/p7C3/LCA/axY9/XuG+Pxinh
	slf4mxIhR6hBh9etO1ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXpPT-0004dY-94; Mon, 03 Jun 2019 16:02:07 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXpPK-0004dC-1W
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 16:02:00 +0000
Received: by mail-wm1-x342.google.com with SMTP id z23so11663799wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 09:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=E1H5dWTHOBc9Hv2r/GddnTeCsimBZPr2+xbskV/5YEw=;
 b=V65UlX+1cXuzkJNmIDFuhJ1qlhYM8I7NTcrmfsH7sxCmr7DQWnL5TDqfx6zfGF4bp9
 +o49nVeHoyMj84vndBOyIfqjrj874er875e7H6QYWq/ORDeMVip0Q6Vn8KgmyntSk4tz
 beD6CuaCsN43h5qqyVn0n7FQWpsrZ4QBRHdGeHuvx+n9HOgOL3mhNKVa/Tq1vANI8v5t
 EDoeB9klsmOQ322XdmUtk/VTL55CatwSn3rhSj6Qumkq6OyFb7Ug98lMFjKTIS+I6DwG
 NYSBY9lF67d6Ca6MkhfKEemm3ZT3oxizI1eONLAXmXJ/34LDBm/l58ZNGWxQ95ufa4oo
 wgZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=E1H5dWTHOBc9Hv2r/GddnTeCsimBZPr2+xbskV/5YEw=;
 b=UFwoHtHmL4PpdGFY/J0P76msUierJW2JjHY02/KZN/8NfypmXejOnNrd6v3V53aXLa
 GiXBMEQboS2YXh1ypAlWjT893dcEAnIhtiPMj+jk5e55eMVY5APKQVWnQFYU0w2Dl/l9
 d/jhtRakg3nH1dkcPJu5JyCJMK+6Htl4x8uecBLG227qiDl7YWkgTOzZz8KW87eHamTu
 g9RocIPpeWZGO7sa6LdV/P6ahQQ4LDXe+OEyorDpehtQFgZEIsbwQOQt1Nc1dJerIkFv
 rbvATPp5mM5+gjrRD4K/WrfX5/DOfE7TVp1qNhRPgVNY6Mu7M3cnnGU/KYqRySlQg30K
 SnKw==
X-Gm-Message-State: APjAAAVBgz9J7WAzw1E3iaIFRPb1BobyePzrI2fKS7JQXeYLrNyPVROf
 NGopXqzqlzJFbbyoRrwWpf0=
X-Google-Smtp-Source: APXvYqyRI23C7ngCZJ+d6DUZT+a9h8QFtsJqRDorso33ID8TaDOuByOtnXjNQElwWbhZALcGJ17qWQ==
X-Received: by 2002:a1c:2e0a:: with SMTP id u10mr15602817wmu.92.1559577716273; 
 Mon, 03 Jun 2019 09:01:56 -0700 (PDT)
Received: from [10.8.0.6] (131.ip-164-132-48.eu. [164.132.48.131])
 by smtp.gmail.com with ESMTPSA id o3sm12238237wrv.94.2019.06.03.09.01.54
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 09:01:55 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: marvell: add ESPRESSObin variants
To: Gregory CLEMENT <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
References: <20190527111156.3539-1-tmn505@gmail.com> <87ef4ak8ju.fsf@FE-laptop>
From: Tomasz Maciej Nowak <tmn505@gmail.com>
Message-ID: <2a0ed77a-3370-55ea-fdcc-55b002d8659b@gmail.com>
Date: Mon, 3 Jun 2019 18:01:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <87ef4ak8ju.fsf@FE-laptop>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_090158_113052_0544172A 
X-CRM114-Status: GOOD (  20.37  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tmn505[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (tmn505[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Konstantin Porotchkin <kostap@marvell.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VyBkbml1IDAzLjA2LjIwMTkgb8KgMTc6MTEsIEdyZWdvcnkgQ0xFTUVOVCBwaXN6ZToKPiBIaSBU
b21hc3ogTWFjaWVqIE5vd2FrLAo+IAo+PiBUaGlzIGNvbW1pdCBhZGRzIGR0cyBmb3IgZGlmZmVy
ZW50IHZhcmlhbnRzIG9mIEVTUFJFU1NPYmluIGJvYXJkOgo+Pgo+PiBFU1BSRVNTT2JpbiB3aXRo
IHNvbGRlcmVkIGVNTUMsCj4+Cj4+IEVTUFJFU1NPYmluIFY3LCBjb21wYXJlZCB0byBwcmlvciB2
ZXJzaW9ucyBzb21lIHBhc3NpdmUgZWxlbWVudHMgY2hhbmdlZAo+PiBhbmQgZXRoZXJuZXQgcG9y
dHMgbGFiZWxzIHBvc2l0aW9ucyBoYXZlIGJlZW4gcmV2ZXJzZWQsCj4+Cj4+IEVTUFJFU1NPYmlu
IFY3IHdpdGggc29sZGVyZWQgZU1NQy4KPj4KPj4gU2luY2UgbW9zdCBvZiBlbGVtZW50cyBhcmUg
dGhlIHNhbWUsIG9uZSBjb21tb24gZHRzaSBpcyBjcmVhdGVkIGFuZAo+PiByZWZlcmVuY2VkIGlu
IGVhY2ggZHRzIG9mIHBhcnRpY3VsYXIgdmFyaWFudC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogVG9t
YXN6IE1hY2llaiBOb3dhayA8dG1uNTA1QGdtYWlsLmNvbT4KPiAKPiBXaXRoIHlvdXIgcGF0Y2gg
ImFybTY0OiBkdHM6IGFybWFkYS0zNzIwLWVzcHJlc3NvYmluOiBjb3JyZWN0IHNwaSBub2RlIgo+
IGFwcGxpZWQgdGhpcyBvbmUgZG9uJ3QgYXBwbHkgYW55bW9yZS4KPiAKPiBDb3VsZCB5b3UgcmVi
YXNlIGl0PwoKRG9uZSwgcmViYXNlZCBvbiB0b3Agb2YgbXZlYnUvZHQ2NCArICJhcm02NDogZHRz
OiBhcm1hZGEtMzcyMC1lc3ByZXNzb2JpbjogY29ycmVjdApzcGkgbm9kZSIuCgo+IAo+IFRoYW5r
cywKPiAKPiBHcmVnb3J5Cj4gCgpSZWdhcmRzLCBUb21hc3ouCgoKPj4gLS0tCj4+ICAuLi4vbWFy
dmVsbC9hcm1hZGEtMzcyMC1lc3ByZXNzb2Jpbi1lbW1jLmR0cyAgfCAgNDIgKysrKwo+PiAgLi4u
L2FybWFkYS0zNzIwLWVzcHJlc3NvYmluLXY3LWVtbWMuZHRzICAgICAgIHwgIDU5ICsrKysrKwo+
PiAgLi4uL21hcnZlbGwvYXJtYWRhLTM3MjAtZXNwcmVzc29iaW4tdjcuZHRzICAgIHwgIDM2ICsr
KysKPj4gIC4uLi9kdHMvbWFydmVsbC9hcm1hZGEtMzcyMC1lc3ByZXNzb2Jpbi5kdHMgICB8IDIw
MCArLS0tLS0tLS0tLS0tLS0tLS0KPj4gIC4uLi9kdHMvbWFydmVsbC9hcm1hZGEtMzcyMC1lc3By
ZXNzb2Jpbi5kdHNpICB8IDE5MyArKysrKysrKysrKysrKysrKwo+PiAgNSBmaWxlcyBjaGFuZ2Vk
LCAzMzEgaW5zZXJ0aW9ucygrKSwgMTk5IGRlbGV0aW9ucygtKQo+PiAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzcyMC1lc3ByZXNzb2Jpbi1l
bW1jLmR0cwo+PiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVs
bC9hcm1hZGEtMzcyMC1lc3ByZXNzb2Jpbi12Ny1lbW1jLmR0cwo+PiAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzcyMC1lc3ByZXNzb2Jpbi12
Ny5kdHMKPj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwv
YXJtYWRhLTM3MjAtZXNwcmVzc29iaW4uZHRzaQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLWVzcHJlc3NvYmluLWVtbWMuZHRzIGIvYXJj
aC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLWVzcHJlc3NvYmluLWVtbWMuZHRz
Cj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uYmQ5ZWQ5ZGM5
YzNlCj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxs
L2FybWFkYS0zNzIwLWVzcHJlc3NvYmluLWVtbWMuZHRzCj4+IEBAIC0wLDAgKzEsNDIgQEAKPj4g
Ky8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQo+PiArLyoKPj4g
KyAqIERldmljZSBUcmVlIGZpbGUgZm9yIEdsb2JhbHNjYWxlIE1hcnZlbGwgRVNQUkVTU09CaW4g
Qm9hcmQgd2l0aCBlTU1DCj4+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMTggTWFydmVsbAo+PiArICoK
Pj4gKyAqIFJvbWFpbiBQZXJpZXIgPHJvbWFpbi5wZXJpZXJAZnJlZS1lbGVjdHJvbnMuY29tPgo+
PiArICogS29uc3RhbnRpbiBQb3JvdGNoa2luIDxrb3N0YXBAbWFydmVsbC5jb20+Cj4+ICsgKgo+
PiArICovCj4+ICsvKgo+PiArICogU2NoZW1hdGljIGF2YWlsYWJsZSBhdCBodHRwOi8vZXNwcmVz
c29iaW4ubmV0L3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE3LzA4L0VTUFJFU1NPYmluX1Y1X1NjaGVt
YXRpY3MucGRmCj4+ICsgKi8KPj4gKwo+PiArI2luY2x1ZGUgImFybWFkYS0zNzIwLWVzcHJlc3Nv
YmluLmR0c2kiCj4+ICsKPj4gKy8gewo+PiArCW1vZGVsID0gIkdsb2JhbHNjYWxlIE1hcnZlbGwg
RVNQUkVTU09CaW4gQm9hcmQgKGVNTUMpIjsKPj4gKwljb21wYXRpYmxlID0gImdsb2JhbHNjYWxl
LGVzcHJlc3NvYmluLWVtbWMiLCAiZ2xvYmFsc2NhbGUsZXNwcmVzc29iaW4iLAo+PiArCQkgICAg
ICJtYXJ2ZWxsLGFybWFkYTM3MjAiLCAibWFydmVsbCxhcm1hZGEzNzEwIjsKPj4gK307Cj4+ICsK
Pj4gKy8qIFUxMSAqLwo+PiArJnNkaGNpMCB7Cj4+ICsJbm9uLXJlbW92YWJsZTsKPj4gKwlidXMt
d2lkdGggPSA8OD47Cj4+ICsJbW1jLWRkci0xXzh2Owo+PiArCW1tYy1oczQwMC0xXzh2Owo+PiAr
CW1hcnZlbGwseGVub24tZW1tYzsKPj4gKwltYXJ2ZWxsLHhlbm9uLXR1bi1jb3VudCA9IDw5PjsK
Pj4gKwltYXJ2ZWxsLHBhZC10eXBlID0gImZpeGVkLTEtOHYiOwo+PiArCj4+ICsJcGluY3RybC1u
YW1lcyA9ICJkZWZhdWx0IjsKPj4gKwlwaW5jdHJsLTAgPSA8Jm1tY19waW5zPjsKPj4gKwlzdGF0
dXMgPSAib2theSI7Cj4+ICsKPj4gKwkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPj4gKwkjc2l6ZS1j
ZWxscyA9IDwwPjsKPj4gKwltbWNjYXJkOiBtbWNjYXJkQDAgewo+PiArCQljb21wYXRpYmxlID0g
Im1tYy1jYXJkIjsKPj4gKwkJcmVnID0gPDA+Owo+PiArCX07Cj4+ICt9Owo+PiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLWVzcHJlc3NvYmluLXY3
LWVtbWMuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLWVzcHJl
c3NvYmluLXY3LWVtbWMuZHRzCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAw
MDAwMDAwMC4uNmU4NzZhNmQ5NTMyCj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLWVzcHJlc3NvYmluLXY3LWVtbWMuZHRzCj4+
IEBAIC0wLDAgKzEsNTkgQEAKPj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIu
MCsgT1IgTUlUKQo+PiArLyoKPj4gKyAqIERldmljZSBUcmVlIGZpbGUgZm9yIEdsb2JhbHNjYWxl
IE1hcnZlbGwgRVNQUkVTU09CaW4gQm9hcmQgVjcgd2l0aCBlTU1DCj4+ICsgKiBDb3B5cmlnaHQg
KEMpIDIwMTggTWFydmVsbAo+PiArICoKPj4gKyAqIFJvbWFpbiBQZXJpZXIgPHJvbWFpbi5wZXJp
ZXJAZnJlZS1lbGVjdHJvbnMuY29tPgo+PiArICogS29uc3RhbnRpbiBQb3JvdGNoa2luIDxrb3N0
YXBAbWFydmVsbC5jb20+Cj4+ICsgKgo+PiArICovCj4+ICsvKgo+PiArICogU2NoZW1hdGljIGF2
YWlsYWJsZSBhdCBodHRwOi8vd2lraS5lc3ByZXNzb2Jpbi5uZXQvdGlraS1kb3dubG9hZF9maWxl
LnBocD9maWxlSWQ9MjAwCj4+ICsgKi8KPj4gKwo+PiArI2luY2x1ZGUgImFybWFkYS0zNzIwLWVz
cHJlc3NvYmluLmR0c2kiCj4+ICsKPj4gKy8gewo+PiArCW1vZGVsID0gIkdsb2JhbHNjYWxlIE1h
cnZlbGwgRVNQUkVTU09CaW4gQm9hcmQgVjcgKGVNTUMpIjsKPj4gKwljb21wYXRpYmxlID0gImds
b2JhbHNjYWxlLGVzcHJlc3NvYmluLXY3LWVtbWMiLCAiZ2xvYmFsc2NhbGUsZXNwcmVzc29iaW4t
djciLAo+PiArCQkgICAgICJnbG9iYWxzY2FsZSxlc3ByZXNzb2JpbiIsICJtYXJ2ZWxsLGFybWFk
YTM3MjAiLAo+PiArCQkgICAgICJtYXJ2ZWxsLGFybWFkYTM3MTAiOwo+PiArfTsKPj4gKwo+PiAr
JnN3aXRjaDAgewo+PiArCXBvcnRzIHsKPj4gKwkJcG9ydEAxIHsKPj4gKwkJCXJlZyA9IDwxPjsK
Pj4gKwkJCWxhYmVsID0gImxhbjEiOwo+PiArCQkJcGh5LWhhbmRsZSA9IDwmc3dpdGNoMHBoeTA+
Owo+PiArCQl9Owo+PiArCj4+ICsJCXBvcnRAMyB7Cj4+ICsJCQlyZWcgPSA8Mz47Cj4+ICsJCQls
YWJlbCA9ICJ3YW4iOwo+PiArCQkJcGh5LWhhbmRsZSA9IDwmc3dpdGNoMHBoeTI+Owo+PiArCQl9
Owo+PiArCX07Cj4+ICt9Owo+PiArCj4+ICsvKiBVMTEgKi8KPj4gKyZzZGhjaTAgewo+PiArCW5v
bi1yZW1vdmFibGU7Cj4+ICsJYnVzLXdpZHRoID0gPDg+Owo+PiArCW1tYy1kZHItMV84djsKPj4g
KwltbWMtaHM0MDAtMV84djsKPj4gKwltYXJ2ZWxsLHhlbm9uLWVtbWM7Cj4+ICsJbWFydmVsbCx4
ZW5vbi10dW4tY291bnQgPSA8OT47Cj4+ICsJbWFydmVsbCxwYWQtdHlwZSA9ICJmaXhlZC0xLTh2
IjsKPj4gKwo+PiArCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+ICsJcGluY3RybC0wID0g
PCZtbWNfcGlucz47Cj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+PiArCj4+ICsJI2FkZHJlc3MtY2Vs
bHMgPSA8MT47Cj4+ICsJI3NpemUtY2VsbHMgPSA8MD47Cj4+ICsJbW1jY2FyZDogbW1jY2FyZEAw
IHsKPj4gKwkJY29tcGF0aWJsZSA9ICJtbWMtY2FyZCI7Cj4+ICsJCXJlZyA9IDwwPjsKPj4gKwl9
Owo+PiArfTsKPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1h
ZGEtMzcyMC1lc3ByZXNzb2Jpbi12Ny5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwv
YXJtYWRhLTM3MjAtZXNwcmVzc29iaW4tdjcuZHRzCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+
IGluZGV4IDAwMDAwMDAwMDAwMC4uMGY4NDA1ZDA4NWZkCj4+IC0tLSAvZGV2L251bGwKPj4gKysr
IGIvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLWVzcHJlc3NvYmluLXY3
LmR0cwo+PiBAQCAtMCwwICsxLDM2IEBACj4+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
KEdQTC0yLjArIE9SIE1JVCkKPj4gKy8qCj4+ICsgKiBEZXZpY2UgVHJlZSBmaWxlIGZvciBHbG9i
YWxzY2FsZSBNYXJ2ZWxsIEVTUFJFU1NPQmluIEJvYXJkIFY3Cj4+ICsgKiBDb3B5cmlnaHQgKEMp
IDIwMTggTWFydmVsbAo+PiArICoKPj4gKyAqIFJvbWFpbiBQZXJpZXIgPHJvbWFpbi5wZXJpZXJA
ZnJlZS1lbGVjdHJvbnMuY29tPgo+PiArICogS29uc3RhbnRpbiBQb3JvdGNoa2luIDxrb3N0YXBA
bWFydmVsbC5jb20+Cj4+ICsgKgo+PiArICovCj4+ICsvKgo+PiArICogU2NoZW1hdGljIGF2YWls
YWJsZSBhdCBodHRwOi8vd2lraS5lc3ByZXNzb2Jpbi5uZXQvdGlraS1kb3dubG9hZF9maWxlLnBo
cD9maWxlSWQ9MjAwCj4+ICsgKi8KPj4gKwo+PiArI2luY2x1ZGUgImFybWFkYS0zNzIwLWVzcHJl
c3NvYmluLmR0c2kiCj4+ICsKPj4gKy8gewo+PiArCW1vZGVsID0gIkdsb2JhbHNjYWxlIE1hcnZl
bGwgRVNQUkVTU09CaW4gQm9hcmQgVjciOwo+PiArCWNvbXBhdGlibGUgPSAiZ2xvYmFsc2NhbGUs
ZXNwcmVzc29iaW4tdjciLCAiZ2xvYmFsc2NhbGUsZXNwcmVzc29iaW4iLAo+PiArCQkgICAgICJt
YXJ2ZWxsLGFybWFkYTM3MjAiLCAibWFydmVsbCxhcm1hZGEzNzEwIjsKPj4gK307Cj4+ICsKPj4g
KyZzd2l0Y2gwIHsKPj4gKwlwb3J0cyB7Cj4+ICsJCXBvcnRAMSB7Cj4+ICsJCQlyZWcgPSA8MT47
Cj4+ICsJCQlsYWJlbCA9ICJsYW4xIjsKPj4gKwkJCXBoeS1oYW5kbGUgPSA8JnN3aXRjaDBwaHkw
PjsKPj4gKwkJfTsKPj4gKwo+PiArCQlwb3J0QDMgewo+PiArCQkJcmVnID0gPDM+Owo+PiArCQkJ
bGFiZWwgPSAid2FuIjsKPj4gKwkJCXBoeS1oYW5kbGUgPSA8JnN3aXRjaDBwaHkyPjsKPj4gKwkJ
fTsKPj4gKwl9Owo+PiArfTsKPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWFy
dmVsbC9hcm1hZGEtMzcyMC1lc3ByZXNzb2Jpbi5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21h
cnZlbGwvYXJtYWRhLTM3MjAtZXNwcmVzc29iaW4uZHRzCj4+IGluZGV4IDZiZTAxOWUxODg4ZS4u
MTU0MmQ4MzZjMDkwIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwv
YXJtYWRhLTM3MjAtZXNwcmVzc29iaW4uZHRzCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
bWFydmVsbC9hcm1hZGEtMzcyMC1lc3ByZXNzb2Jpbi5kdHMKPj4gQEAgLTEyLDIwNyArMTIsOSBA
QAo+PiAgCj4+ICAvZHRzLXYxLzsKPj4gIAo+PiAtI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2dwaW8v
Z3Bpby5oPgo+PiAtI2luY2x1ZGUgImFybWFkYS0zNzJ4LmR0c2kiCj4+ICsjaW5jbHVkZSAiYXJt
YWRhLTM3MjAtZXNwcmVzc29iaW4uZHRzaSIKPj4gIAo+PiAgLyB7Cj4+ICAJbW9kZWwgPSAiR2xv
YmFsc2NhbGUgTWFydmVsbCBFU1BSRVNTT0JpbiBCb2FyZCI7Cj4+ICAJY29tcGF0aWJsZSA9ICJn
bG9iYWxzY2FsZSxlc3ByZXNzb2JpbiIsICJtYXJ2ZWxsLGFybWFkYTM3MjAiLCAibWFydmVsbCxh
cm1hZGEzNzEwIjsKPj4gLQo+PiAtCWNob3NlbiB7Cj4+IC0JCXN0ZG91dC1wYXRoID0gInNlcmlh
bDA6MTE1MjAwbjgiOwo+PiAtCX07Cj4+IC0KPj4gLQltZW1vcnlAMCB7Cj4+IC0JCWRldmljZV90
eXBlID0gIm1lbW9yeSI7Cj4+IC0JCXJlZyA9IDwweDAwMDAwMDAwIDB4MDAwMDAwMDAgMHgwMDAw
MDAwMCAweDIwMDAwMDAwPjsKPj4gLQl9Owo+PiAtCj4+IC0JdmNjX3NkX3JlZzE6IHJlZ3VsYXRv
ciB7Cj4+IC0JCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWdwaW8iOwo+PiAtCQlyZWd1bGF0b3It
bmFtZSA9ICJ2Y2Nfc2QxIjsKPj4gLQkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTgwMDAw
MD47Cj4+IC0JCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+PiAtCQlyZWd1
bGF0b3ItYm9vdC1vbjsKPj4gLQo+PiAtCQlncGlvcyA9IDwmZ3Bpb25iIDQgR1BJT19BQ1RJVkVf
SElHSD47Cj4+IC0JCWdwaW9zLXN0YXRlcyA9IDwwPjsKPj4gLQkJc3RhdGVzID0gPDE4MDAwMDAg
MHgxCj4+IC0JCQkgIDMzMDAwMDAgMHgwPjsKPj4gLQkJZW5hYmxlLWFjdGl2ZS1oaWdoOwo+PiAt
CX07Cj4+IC19Owo+PiAtCj4+IC0vKiBKOSAqLwo+PiAtJnBjaWUwIHsKPj4gLQlzdGF0dXMgPSAi
b2theSI7Cj4+IC0JcGh5cyA9IDwmY29tcGh5MSAwPjsKPj4gLQlwaW5jdHJsLW5hbWVzID0gImRl
ZmF1bHQiOwo+PiAtCXBpbmN0cmwtMCA9IDwmcGNpZV9yZXNldF9waW5zICZwY2llX2Nsa3JlcV9w
aW5zPjsKPj4gLX07Cj4+IC0KPj4gLS8qIEo2ICovCj4+IC0mc2F0YSB7Cj4+IC0Jc3RhdHVzID0g
Im9rYXkiOwo+PiAtCXBoeXMgPSA8JmNvbXBoeTIgMD47Cj4+IC0JcGh5LW5hbWVzID0gInNhdGEt
cGh5IjsKPj4gLX07Cj4+IC0KPj4gLS8qIEoxICovCj4+IC0mc2RoY2kxIHsKPj4gLQl3cC1pbnZl
cnRlZDsKPj4gLQlidXMtd2lkdGggPSA8ND47Cj4+IC0JY2QtZ3Bpb3MgPSA8JmdwaW9uYiAzIEdQ
SU9fQUNUSVZFX0xPVz47Cj4+IC0JbWFydmVsbCxwYWQtdHlwZSA9ICJzZCI7Cj4+IC0JdnFtbWMt
c3VwcGx5ID0gPCZ2Y2Nfc2RfcmVnMT47Cj4+IC0KPj4gLQlwaW5jdHJsLW5hbWVzID0gImRlZmF1
bHQiOwo+PiAtCXBpbmN0cmwtMCA9IDwmc2Rpb19waW5zPjsKPj4gLQlzdGF0dXMgPSAib2theSI7
Cj4+IC19Owo+PiAtCj4+IC0vKiBVMTEgKi8KPj4gLSZzZGhjaTAgewo+PiAtCW5vbi1yZW1vdmFi
bGU7Cj4+IC0JYnVzLXdpZHRoID0gPDg+Owo+PiAtCW1tYy1kZHItMV84djsKPj4gLQltbWMtaHM0
MDAtMV84djsKPj4gLQltYXJ2ZWxsLHhlbm9uLWVtbWM7Cj4+IC0JbWFydmVsbCx4ZW5vbi10dW4t
Y291bnQgPSA8OT47Cj4+IC0JbWFydmVsbCxwYWQtdHlwZSA9ICJmaXhlZC0xLTh2IjsKPj4gLQo+
PiAtCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+IC0JcGluY3RybC0wID0gPCZtbWNfcGlu
cz47Cj4+IC0vKgo+PiAtICogVGhpcyBlTU1DIGlzIG5vdCBwb3B1bGF0ZWQgb24gYWxsIGJvYXJk
cywgc28gZGlzYWJsZSBpdCBieQo+PiAtICogZGVmYXVsdCBhbmQgbGV0IHRoZSBib290bG9hZGVy
IGVuYWJsZSBpdCwgaWYgaXQgaXMgcHJlc2VudAo+PiAtICovCj4+IC0Jc3RhdHVzID0gImRpc2Fi
bGVkIjsKPj4gLX07Cj4+IC0KPj4gLSZzcGkwIHsKPj4gLQlzdGF0dXMgPSAib2theSI7Cj4+IC0K
Pj4gLQlmbGFzaEAwIHsKPj4gLQkJcmVnID0gPDA+Owo+PiAtCQljb21wYXRpYmxlID0gIndpbmJv
bmQsdzI1cTMyZHciLCAiamVkZWMsc3BpLWZsYXNoIjsKPj4gLQkJc3BpLW1heC1mcmVxdWVuY3kg
PSA8MTA0MDAwMDAwPjsKPj4gLQkJbTI1cCxmYXN0LXJlYWQ7Cj4+IC0KPj4gLQkJcGFydGl0aW9u
cyB7Cj4+IC0JCQljb21wYXRpYmxlID0gImZpeGVkLXBhcnRpdGlvbnMiOwo+PiAtCQkJI2FkZHJl
c3MtY2VsbHMgPSA8MT47Cj4+IC0JCQkjc2l6ZS1jZWxscyA9IDwxPjsKPj4gLQo+PiAtCQkJcGFy
dGl0aW9uQDAgewo+PiAtCQkJCWxhYmVsID0gInVib290IjsKPj4gLQkJCQlyZWcgPSA8MCAweDE4
MDAwMD47Cj4+IC0JCQl9Owo+PiAtCj4+IC0JCQlwYXJ0aXRpb25AMTgwMDAwIHsKPj4gLQkJCQls
YWJlbCA9ICJ1Ym9vdGVudiI7Cj4+IC0JCQkJcmVnID0gPDB4MTgwMDAwIDB4MTAwMDA+Owo+PiAt
CQkJfTsKPj4gLQkJfTsKPj4gLQl9Owo+PiAtfTsKPj4gLQo+PiAtLyogRXhwb3J0ZWQgb24gdGhl
IG1pY3JvIFVTQiBjb25uZWN0b3IgSjUgdGhyb3VnaCBhbiBGVERJICovCj4+IC0mdWFydDAgewo+
PiAtCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+IC0JcGluY3RybC0wID0gPCZ1YXJ0MV9w
aW5zPjsKPj4gLQlzdGF0dXMgPSAib2theSI7Cj4+IC19Owo+PiAtCj4+IC0vKgo+PiAtICogQ29u
bmVjdG9yIEoxNyBhbmQgSjE4IGV4cG9zZSBhIG51bWJlciBvZiBkaWZmZXJlbnQgZmVhdHVyZXMu
IFNvbWUgcGlucyBhcmUKPj4gLSAqIG11bHRpcGxleGVkLiBUaGlzIGlzIHRoZSBjYXNlIGZvciBp
bnN0YW5jZSBmb3IgdGhlIGZvbGxvd2luZyBmZWF0dXJlczoKPj4gLSAqIC0gVUFSVDEgKHBpbiAy
NCA9IFJYLCBwaW4gMjYgPSBUWCkuIFNlZSBhcm1hZGEtMzcyMC1kYi5kdHMgZm9yIGFuIGV4YW1w
bGUgb2YKPj4gLSAqICAgaG93IHRvIGVuYWJsZSBpdC4gQmV3YXJlIHRoYXQgdGhlIHNpZ25hbHMg
YXJlIDEuOFYgVFRMLgo+PiAtICogLSBJMkMKPj4gLSAqIC0gU1BJCj4+IC0gKiAtIE1NQwo+PiAt
ICovCj4+IC0KPj4gLS8qIEo3ICovCj4+IC0mdXNiMyB7Cj4+IC0Jc3RhdHVzID0gIm9rYXkiOwo+
PiAtfTsKPj4gLQo+PiAtLyogSjggKi8KPj4gLSZ1c2IyIHsKPj4gLQlzdGF0dXMgPSAib2theSI7
Cj4+IC19Owo+PiAtCj4+IC0mbWRpbyB7Cj4+IC0Jc3dpdGNoMDogc3dpdGNoMEAxIHsKPj4gLQkJ
Y29tcGF0aWJsZSA9ICJtYXJ2ZWxsLG12ODhlNjA4NSI7Cj4+IC0JCSNhZGRyZXNzLWNlbGxzID0g
PDE+Owo+PiAtCQkjc2l6ZS1jZWxscyA9IDwwPjsKPj4gLQkJcmVnID0gPDE+Owo+PiAtCj4+IC0J
CWRzYSxtZW1iZXIgPSA8MCAwPjsKPj4gLQo+PiAtCQlwb3J0cyB7Cj4+IC0JCQkjYWRkcmVzcy1j
ZWxscyA9IDwxPjsKPj4gLQkJCSNzaXplLWNlbGxzID0gPDA+Owo+PiAtCj4+IC0JCQlwb3J0QDAg
ewo+PiAtCQkJCXJlZyA9IDwwPjsKPj4gLQkJCQlsYWJlbCA9ICJjcHUiOwo+PiAtCQkJCWV0aGVy
bmV0ID0gPCZldGgwPjsKPj4gLQkJCQlwaHktbW9kZSA9ICJyZ21paS1pZCI7Cj4+IC0JCQkJZml4
ZWQtbGluayB7Cj4+IC0JCQkJCXNwZWVkID0gPDEwMDA+Owo+PiAtCQkJCQlmdWxsLWR1cGxleDsK
Pj4gLQkJCQl9Owo+PiAtCQkJfTsKPj4gLQo+PiAtCQkJcG9ydEAxIHsKPj4gLQkJCQlyZWcgPSA8
MT47Cj4+IC0JCQkJbGFiZWwgPSAid2FuIjsKPj4gLQkJCQlwaHktaGFuZGxlID0gPCZzd2l0Y2gw
cGh5MD47Cj4+IC0JCQl9Owo+PiAtCj4+IC0JCQlwb3J0QDIgewo+PiAtCQkJCXJlZyA9IDwyPjsK
Pj4gLQkJCQlsYWJlbCA9ICJsYW4wIjsKPj4gLQkJCQlwaHktaGFuZGxlID0gPCZzd2l0Y2gwcGh5
MT47Cj4+IC0JCQl9Owo+PiAtCj4+IC0JCQlwb3J0QDMgewo+PiAtCQkJCXJlZyA9IDwzPjsKPj4g
LQkJCQlsYWJlbCA9ICJsYW4xIjsKPj4gLQkJCQlwaHktaGFuZGxlID0gPCZzd2l0Y2gwcGh5Mj47
Cj4+IC0JCQl9Owo+PiAtCj4+IC0JCX07Cj4+IC0KPj4gLQkJbWRpbyB7Cj4+IC0JCQkjYWRkcmVz
cy1jZWxscyA9IDwxPjsKPj4gLQkJCSNzaXplLWNlbGxzID0gPDA+Owo+PiAtCj4+IC0JCQlzd2l0
Y2gwcGh5MDogc3dpdGNoMHBoeTBAMTEgewo+PiAtCQkJCXJlZyA9IDwweDExPjsKPj4gLQkJCX07
Cj4+IC0JCQlzd2l0Y2gwcGh5MTogc3dpdGNoMHBoeTFAMTIgewo+PiAtCQkJCXJlZyA9IDwweDEy
PjsKPj4gLQkJCX07Cj4+IC0JCQlzd2l0Y2gwcGh5Mjogc3dpdGNoMHBoeTJAMTMgewo+PiAtCQkJ
CXJlZyA9IDwweDEzPjsKPj4gLQkJCX07Cj4+IC0JCX07Cj4+IC0JfTsKPj4gLX07Cj4+IC0KPj4g
LSZldGgwIHsKPj4gLQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiAtCXBpbmN0cmwtMCA9
IDwmcmdtaWlfcGlucz4sIDwmc21pX3BpbnM+Owo+PiAtCXBoeS1tb2RlID0gInJnbWlpLWlkIjsK
Pj4gLQlzdGF0dXMgPSAib2theSI7Cj4+IC0KPj4gLQlmaXhlZC1saW5rIHsKPj4gLQkJc3BlZWQg
PSA8MTAwMD47Cj4+IC0JCWZ1bGwtZHVwbGV4Owo+PiAtCX07Cj4+ICB9Owo+PiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLWVzcHJlc3NvYmluLmR0
c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLTM3MjAtZXNwcmVzc29iaW4u
ZHRzaQo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjRhMTE0
ZGI3NmJmOQo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWFy
dmVsbC9hcm1hZGEtMzcyMC1lc3ByZXNzb2Jpbi5kdHNpCj4+IEBAIC0wLDAgKzEsMTkzIEBACj4+
ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjArIE9SIE1JVCkKPj4gKy8qCj4+
ICsgKiBEZXZpY2UgVHJlZSBmaWxlIGZvciBHbG9iYWxzY2FsZSBNYXJ2ZWxsIEVTUFJFU1NPQmlu
IEJvYXJkCj4+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMTYgTWFydmVsbAo+PiArICoKPj4gKyAqIFJv
bWFpbiBQZXJpZXIgPHJvbWFpbi5wZXJpZXJAZnJlZS1lbGVjdHJvbnMuY29tPgo+PiArICoKPj4g
KyAqLwo+PiArCj4+ICsvZHRzLXYxLzsKPj4gKwo+PiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2dw
aW8vZ3Bpby5oPgo+PiArI2luY2x1ZGUgImFybWFkYS0zNzJ4LmR0c2kiCj4+ICsKPj4gKy8gewo+
PiArCWNob3NlbiB7Cj4+ICsJCXN0ZG91dC1wYXRoID0gInNlcmlhbDA6MTE1MjAwbjgiOwo+PiAr
CX07Cj4+ICsKPj4gKwltZW1vcnlAMCB7Cj4+ICsJCWRldmljZV90eXBlID0gIm1lbW9yeSI7Cj4+
ICsJCXJlZyA9IDwweDAwMDAwMDAwIDB4MDAwMDAwMDAgMHgwMDAwMDAwMCAweDIwMDAwMDAwPjsK
Pj4gKwl9Owo+PiArCj4+ICsJdmNjX3NkX3JlZzE6IHJlZ3VsYXRvciB7Cj4+ICsJCWNvbXBhdGli
bGUgPSAicmVndWxhdG9yLWdwaW8iOwo+PiArCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2Nfc2QxIjsK
Pj4gKwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTgwMDAwMD47Cj4+ICsJCXJlZ3VsYXRv
ci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+PiArCQlyZWd1bGF0b3ItYm9vdC1vbjsKPj4g
Kwo+PiArCQlncGlvcyA9IDwmZ3Bpb25iIDQgR1BJT19BQ1RJVkVfSElHSD47Cj4+ICsJCWdwaW9z
LXN0YXRlcyA9IDwwPjsKPj4gKwkJc3RhdGVzID0gPDE4MDAwMDAgMHgxCj4+ICsJCQkgIDMzMDAw
MDAgMHgwPjsKPj4gKwkJZW5hYmxlLWFjdGl2ZS1oaWdoOwo+PiArCX07Cj4+ICt9Owo+PiArCj4+
ICsvKiBKOSAqLwo+PiArJnBjaWUwIHsKPj4gKwlzdGF0dXMgPSAib2theSI7Cj4+ICsJcGh5cyA9
IDwmY29tcGh5MSAwPjsKPj4gKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiArCXBpbmN0
cmwtMCA9IDwmcGNpZV9yZXNldF9waW5zICZwY2llX2Nsa3JlcV9waW5zPjsKPj4gK307Cj4+ICsK
Pj4gKy8qIEo2ICovCj4+ICsmc2F0YSB7Cj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+PiArCXBoeXMg
PSA8JmNvbXBoeTIgMD47Cj4+ICsJcGh5LW5hbWVzID0gInNhdGEtcGh5IjsKPj4gK307Cj4+ICsK
Pj4gKy8qIEoxICovCj4+ICsmc2RoY2kxIHsKPj4gKwl3cC1pbnZlcnRlZDsKPj4gKwlidXMtd2lk
dGggPSA8ND47Cj4+ICsJY2QtZ3Bpb3MgPSA8JmdwaW9uYiAzIEdQSU9fQUNUSVZFX0xPVz47Cj4+
ICsJbWFydmVsbCxwYWQtdHlwZSA9ICJzZCI7Cj4+ICsJdnFtbWMtc3VwcGx5ID0gPCZ2Y2Nfc2Rf
cmVnMT47Cj4+ICsKPj4gKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiArCXBpbmN0cmwt
MCA9IDwmc2Rpb19waW5zPjsKPj4gKwlzdGF0dXMgPSAib2theSI7Cj4+ICt9Owo+PiArCj4+ICsm
c3BpMCB7Cj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+PiArCj4+ICsJZmxhc2hAMCB7Cj4+ICsJCXJl
ZyA9IDwwPjsKPj4gKwkJY29tcGF0aWJsZSA9ICJ3aW5ib25kLHcyNXEzMmR3IiwgImplZGVjLHNw
aS1mbGFzaCI7Cj4+ICsJCXNwaS1tYXgtZnJlcXVlbmN5ID0gPDEwNDAwMDAwMD47Cj4+ICsJCW0y
NXAsZmFzdC1yZWFkOwo+PiArCj4+ICsJCXBhcnRpdGlvbnMgewo+PiArCQkJY29tcGF0aWJsZSA9
ICJmaXhlZC1wYXJ0aXRpb25zIjsKPj4gKwkJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+PiArCQkJ
I3NpemUtY2VsbHMgPSA8MT47Cj4+ICsKPj4gKwkJCXBhcnRpdGlvbkAwIHsKPj4gKwkJCQlsYWJl
bCA9ICJ1Ym9vdCI7Cj4+ICsJCQkJcmVnID0gPDAgMHgxODAwMDA+Owo+PiArCQkJfTsKPj4gKwo+
PiArCQkJcGFydGl0aW9uQDE4MDAwMCB7Cj4+ICsJCQkJbGFiZWwgPSAidWJvb3RlbnYiOwo+PiAr
CQkJCXJlZyA9IDwweDE4MDAwMCAweDEwMDAwPjsKPj4gKwkJCX07Cj4+ICsJCX07Cj4+ICsJfTsK
Pj4gK307Cj4+ICsKPj4gKy8qIEV4cG9ydGVkIG9uIHRoZSBtaWNybyBVU0IgY29ubmVjdG9yIEo1
IHRocm91Z2ggYW4gRlRESSAqLwo+PiArJnVhcnQwIHsKPj4gKwlwaW5jdHJsLW5hbWVzID0gImRl
ZmF1bHQiOwo+PiArCXBpbmN0cmwtMCA9IDwmdWFydDFfcGlucz47Cj4+ICsJc3RhdHVzID0gIm9r
YXkiOwo+PiArfTsKPj4gKwo+PiArLyoKPj4gKyAqIENvbm5lY3RvciBKMTcgYW5kIEoxOCBleHBv
c2UgYSBudW1iZXIgb2YgZGlmZmVyZW50IGZlYXR1cmVzLiBTb21lIHBpbnMgYXJlCj4+ICsgKiBt
dWx0aXBsZXhlZC4gVGhpcyBpcyB0aGUgY2FzZSBmb3IgaW5zdGFuY2UgZm9yIHRoZSBmb2xsb3dp
bmcgZmVhdHVyZXM6Cj4+ICsgKiAtIFVBUlQxIChwaW4gMjQgPSBSWCwgcGluIDI2ID0gVFgpLiBT
ZWUgYXJtYWRhLTM3MjAtZGIuZHRzIGZvciBhbiBleGFtcGxlIG9mCj4+ICsgKiAgIGhvdyB0byBl
bmFibGUgaXQuIEJld2FyZSB0aGF0IHRoZSBzaWduYWxzIGFyZSAxLjhWIFRUTC4KPj4gKyAqIC0g
STJDCj4+ICsgKiAtIFNQSQo+PiArICogLSBNTUMKPj4gKyAqLwo+PiArCj4+ICsvKiBKNyAqLwo+
PiArJnVzYjMgewo+PiArCXN0YXR1cyA9ICJva2F5IjsKPj4gK307Cj4+ICsKPj4gKy8qIEo4ICov
Cj4+ICsmdXNiMiB7Cj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+PiArfTsKPj4gKwo+PiArJm1kaW8g
ewo+PiArCXN3aXRjaDA6IHN3aXRjaDBAMSB7Cj4+ICsJCWNvbXBhdGlibGUgPSAibWFydmVsbCxt
djg4ZTYwODUiOwo+PiArCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPj4gKwkJI3NpemUtY2VsbHMg
PSA8MD47Cj4+ICsJCXJlZyA9IDwxPjsKPj4gKwo+PiArCQlkc2EsbWVtYmVyID0gPDAgMD47Cj4+
ICsKPj4gKwkJcG9ydHMgewo+PiArCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4+ICsJCQkjc2l6
ZS1jZWxscyA9IDwwPjsKPj4gKwo+PiArCQkJcG9ydEAwIHsKPj4gKwkJCQlyZWcgPSA8MD47Cj4+
ICsJCQkJbGFiZWwgPSAiY3B1IjsKPj4gKwkJCQlldGhlcm5ldCA9IDwmZXRoMD47Cj4+ICsJCQkJ
cGh5LW1vZGUgPSAicmdtaWktaWQiOwo+PiArCQkJCWZpeGVkLWxpbmsgewo+PiArCQkJCQlzcGVl
ZCA9IDwxMDAwPjsKPj4gKwkJCQkJZnVsbC1kdXBsZXg7Cj4+ICsJCQkJfTsKPj4gKwkJCX07Cj4+
ICsKPj4gKwkJCXBvcnRAMSB7Cj4+ICsJCQkJcmVnID0gPDE+Owo+PiArCQkJCWxhYmVsID0gIndh
biI7Cj4+ICsJCQkJcGh5LWhhbmRsZSA9IDwmc3dpdGNoMHBoeTA+Owo+PiArCQkJfTsKPj4gKwo+
PiArCQkJcG9ydEAyIHsKPj4gKwkJCQlyZWcgPSA8Mj47Cj4+ICsJCQkJbGFiZWwgPSAibGFuMCI7
Cj4+ICsJCQkJcGh5LWhhbmRsZSA9IDwmc3dpdGNoMHBoeTE+Owo+PiArCQkJfTsKPj4gKwo+PiAr
CQkJcG9ydEAzIHsKPj4gKwkJCQlyZWcgPSA8Mz47Cj4+ICsJCQkJbGFiZWwgPSAibGFuMSI7Cj4+
ICsJCQkJcGh5LWhhbmRsZSA9IDwmc3dpdGNoMHBoeTI+Owo+PiArCQkJfTsKPj4gKwo+PiArCQl9
Owo+PiArCj4+ICsJCW1kaW8gewo+PiArCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4+ICsJCQkj
c2l6ZS1jZWxscyA9IDwwPjsKPj4gKwo+PiArCQkJc3dpdGNoMHBoeTA6IHN3aXRjaDBwaHkwQDEx
IHsKPj4gKwkJCQlyZWcgPSA8MHgxMT47Cj4+ICsJCQl9Owo+PiArCQkJc3dpdGNoMHBoeTE6IHN3
aXRjaDBwaHkxQDEyIHsKPj4gKwkJCQlyZWcgPSA8MHgxMj47Cj4+ICsJCQl9Owo+PiArCQkJc3dp
dGNoMHBoeTI6IHN3aXRjaDBwaHkyQDEzIHsKPj4gKwkJCQlyZWcgPSA8MHgxMz47Cj4+ICsJCQl9
Owo+PiArCQl9Owo+PiArCX07Cj4+ICt9Owo+PiArCj4+ICsmZXRoMCB7Cj4+ICsJcGluY3RybC1u
YW1lcyA9ICJkZWZhdWx0IjsKPj4gKwlwaW5jdHJsLTAgPSA8JnJnbWlpX3BpbnM+LCA8JnNtaV9w
aW5zPjsKPj4gKwlwaHktbW9kZSA9ICJyZ21paS1pZCI7Cj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+
PiArCj4+ICsJZml4ZWQtbGluayB7Cj4+ICsJCXNwZWVkID0gPDEwMDA+Owo+PiArCQlmdWxsLWR1
cGxleDsKPj4gKwl9Owo+PiArfTsKPj4gLS0gCj4+IDIuMjEuMAo+Pgo+IAoKLS0gClRNTgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
