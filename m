Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89215919E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 00:19:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SobJ3o9ybu5K3ZVVCKCvkUxxQS5BvZPavYFGQP4W2zA=; b=LzI5H3JtnGFK68
	kDMQuv2qLqtIPOEfci8Fe8sxf0mMkLl8ipFF8ExLgR+EQ0JzVpkHPiC9GYJ+vh/8I5E1IXvtXbqBk
	P4TEqDGVDVYSHTxlAOuRgAxd3gwMc+AN7h0y7sHN29xEftr7UipZNNXs08vXjxrQ5ABM/tlFD2OtL
	aAkdQrxYNz/0fcVNMWmDGpAWGyWMLeJw1adWK8c5JPdJDqnVSz0Yvbw5vWa1J4cSMXx556hCK55Rj
	+yIW38zvt1SWvdr1LgDmXDam0uf+ai6I/0dXJ2yPOR8LnFlaQJHzZmYUZtitaawlYuZr11Z9b6EPg
	6ve8EIj9J91PH+YBfMYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzTVx-0000Hx-Di; Sun, 18 Aug 2019 22:19:06 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzTVZ-0000H5-PL
 for linux-arm-kernel@lists.infradead.org; Sun, 18 Aug 2019 22:18:43 +0000
Received: by mail-yb1-xb43.google.com with SMTP id y21so3708883ybi.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 18 Aug 2019 15:18:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=OlWByN81JtOACLvajVFVonUlAoh5I9eX8MqOIhcnojM=;
 b=ssRhixgisigous6bB0ttqC7AFxjP/4IPqpEa0R02pRHF7gUhkDvspWlQajqCuTtsjj
 KcdorVPgxNg01pAbAkd0MHnvPArh0r14pWXJ9ewiFJzzVwuJu9tzD5yJP01bvTPt6ypI
 3uu+N/mKS9USlbCUE9l1/AZcszyb/RYWc9vZvEw/xi1/NcsRZM40+aj0Q5M3tGxWqO5j
 DHGXe8XxcNJqCFGtC71ewB6yMdtuLD4VNl7THAYBO+1Te8FygjmfVTUYVuvA43q8yEdx
 KNaa3hM71ZgBiWiK8oh9IDkP+6kmDg9cSwgEtY+4hiA43LaK0IpTKkJ3NcvKOCKzcXbf
 DkYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=OlWByN81JtOACLvajVFVonUlAoh5I9eX8MqOIhcnojM=;
 b=cw6qvuz/wzgTbn9GbPb/FARr2COM3ira4UEZ+CVzgsrq+j2z9/1X+jLVvVzVxPbLJ4
 VzD8Jnb39t1T0ARvMXd/DEWxI73lEap2DF7U1RUOK89l0MbH1R1GUtI2t4LKG2btc30x
 t0ZKURY/tqufSmbUQpsQvFuM22zdEkpQAOY+vlVJGgfclBVpHyPvnnl5elj9cjB/6LsQ
 ddjVD+b7MhDJ3zhKQdmZ7s+PYOqubhkG0YKXDZ4Hm9od3a8xwfb1xIWUcmYFaMokDL/h
 yxCI/W80mBgw59k1cZH11Qq4quk8+S4w1DB2Rym9hzJxxxbgRWjAz/lKBUYpSy5mvIwG
 b0Pg==
X-Gm-Message-State: APjAAAUHjbFvldwSz4fcOIXFz4v0NJaeOzsifAdo7aFjYktGWgmmdRFs
 /a6FYhs8GniEMMtlaEeTb7MN49vxoDq6+5xzzus=
X-Google-Smtp-Source: APXvYqwWTQ7mnDNbxBqiOGDZCHWdkh+f8A9ATA4uuVAXv7BKebR5KiyZIN/8M8wMuFEnuIMDiY+MOLGO/yiKaEp3+74=
X-Received: by 2002:a25:6b48:: with SMTP id o8mr15040871ybm.203.1566166719081; 
 Sun, 18 Aug 2019 15:18:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190816205342.29552-3-jernej.skrabec@siol.net>
 <201908190222.ZdIp2gT1%lkp@intel.com> <7640522.c0V0aH5rf2@jernej-laptop>
In-Reply-To: <7640522.c0V0aH5rf2@jernej-laptop>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Mon, 19 Aug 2019 00:18:27 +0200
Message-ID: <CAJiuCcfSejK-fkk1TQW7e-WpjNCqR4h12xTUMYgnCApofL+X6Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: allwinner: h6: Introduce Tanix TX6 board
To: =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_151842_117497_1115B995 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
 devicetree <devicetree@vger.kernel.org>, kbuild test robot <lkp@intel.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, kbuild-all@01.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBTdW4sIDE4IEF1ZyAyMDE5IGF0IDIxOjAwLCBKZXJuZWogxaBrcmFiZWMgPGplcm5l
ai5za3JhYmVjQHNpb2wubmV0PiB3cm90ZToKPgo+IERuZSBuZWRlbGphLCAxOC4gYXZndXN0IDIw
MTkgb2IgMjA6NDI6NDkgQ0VTVCBqZSBrYnVpbGQgdGVzdCByb2JvdCBuYXBpc2FsKGEpOgo+ID4g
SGkgSmVybmVqLAo+ID4KPiA+IFRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoISBZZXQgc29tZXRoaW5n
IHRvIGltcHJvdmU6Cj4gPgo+ID4gW2F1dG8gYnVpbGQgdGVzdCBFUlJPUiBvbiBsaW51cy9tYXN0
ZXJdCj4gPiBbY2Fubm90IGFwcGx5IHRvIHY1LjMtcmM0IG5leHQtMjAxOTA4MTZdCj4gPiBbaWYg
eW91ciBwYXRjaCBpcyBhcHBsaWVkIHRvIHRoZSB3cm9uZyBnaXQgdHJlZSwgcGxlYXNlIGRyb3Ag
dXMgYSBub3RlIHRvCj4gPiBoZWxwIGltcHJvdmUgdGhlIHN5c3RlbV0KPiA+Cj4gPiB1cmw6Cj4g
PiBodHRwczovL2dpdGh1Yi5jb20vMGRheS1jaS9saW51eC9jb21taXRzL0plcm5lai1Ta3JhYmVj
L2R0LWJpbmRpbmdzLWFybS1zdW4KPiA+IHhpLUFkZC1jb21wYXRpYmxlLWZvci1UYW5peC1UWDYt
Ym9hcmQvMjAxOTA4MTktMDAyMDM0IGNvbmZpZzoKPiA+IGFybTY0LWRlZmNvbmZpZyAoYXR0YWNo
ZWQgYXMgLmNvbmZpZykKPiA+IGNvbXBpbGVyOiBhYXJjaDY0LWxpbnV4LWdjYyAoR0NDKSA3LjQu
MAo+ID4gcmVwcm9kdWNlOgo+ID4gICAgICAgICB3Z2V0Cj4gPiBodHRwczovL3Jhdy5naXRodWJ1
c2VyY29udGVudC5jb20vaW50ZWwvbGtwLXRlc3RzL21hc3Rlci9zYmluL21ha2UuY3Jvc3MgLU8K
PiA+IH4vYmluL21ha2UuY3Jvc3MgY2htb2QgK3ggfi9iaW4vbWFrZS5jcm9zcwo+ID4gICAgICAg
ICAjIHNhdmUgdGhlIGF0dGFjaGVkIC5jb25maWcgdG8gbGludXggYnVpbGQgdHJlZQo+ID4gICAg
ICAgICBHQ0NfVkVSU0lPTj03LjQuMCBtYWtlLmNyb3NzIEFSQ0g9YXJtNjQKPiA+Cj4gPiBJZiB5
b3UgZml4IHRoZSBpc3N1ZSwga2luZGx5IGFkZCBmb2xsb3dpbmcgdGFnCj4gPiBSZXBvcnRlZC1i
eToga2J1aWxkIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4gPgo+ID4gQWxsIGVycm9ycyAo
bmV3IG9uZXMgcHJlZml4ZWQgYnkgPj4pOgo+ID4gPj4gRXJyb3I6IGFyY2gvYXJtNjQvYm9vdC9k
dHMvYWxsd2lubmVyL3N1bjUwaS1oNi10YW5peC10eDYuZHRzOjgzLjEtNiBMYWJlbAo+ID4gPj4g
b3IgcGF0aCByX2lyIG5vdCBmb3VuZCBGQVRBTCBFUlJPUjogU3ludGF4IGVycm9yIHBhcnNpbmcg
aW5wdXQgdHJlZQo+Cj4gU3RyYW5nZSwgQWxsd2lubmVyIHRyZWUgaGFzIGNvbW1pdCwgd2hpY2gg
aW50cm9kdWNlcyByX2lyIG5vZGU6Cj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xp
bnV4L2tlcm5lbC9naXQvc3VueGkvbGludXguZ2l0L2NvbW1pdC8/Cj4gaD1zdW54aS9kdC1mb3It
NS40JmlkPTkyNjc4MTFhYWQzNTI0Yzg1N2NmMmUxNmJiYWRkOGM1NjllMTVhYjkKPgo+IE1heWJl
IGtidWlsZCB0ZXN0IHJvYm90IHRyZWUgZG9lc24ndCBoYXZlIGl0PwpZZXMgS2J1aWxkIGlzIG9u
IHY1LjMtcmM0IHZzIHRoZSBJUiBwYXRjaCBpcyBwbGFubmVkIGZvciA1LjQuCgpSZWdhcmRzLApD
bMOpbWVudAoKPgo+IEJlc3QgcmVnYXJkcywKPiBKZXJuZWoKPgo+ID4KPiA+IC0tLQo+ID4gMC1E
QVkga2VybmVsIHRlc3QgaW5mcmFzdHJ1Y3R1cmUgICAgICAgICAgICAgICAgT3BlbiBTb3VyY2Ug
VGVjaG5vbG9neQo+ID4gQ2VudGVyIGh0dHBzOi8vbGlzdHMuMDEub3JnL3BpcGVybWFpbC9rYnVp
bGQtYWxsICAgICAgICAgICAgICAgICAgIEludGVsCj4gPiBDb3Jwb3JhdGlvbgo+Cj4KPgo+Cj4K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
