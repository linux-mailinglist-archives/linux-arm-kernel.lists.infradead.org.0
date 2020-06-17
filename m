Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D71C11FCC08
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 13:16:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/RqcEbawUOT6IkGdDHsrwQQbhlmYTo4z+TSbWPUDHj0=; b=ssU8LSMB4jaryr
	Q7ERzGX9b2lccK1c+6bVapKNlP0Xp9ySItf6iAvqALOj1iLwKNOS/g8ZUA1jyklr6MFRLJ1F3MwB0
	qp08Uv56D5Fjg/RQKoo46qWCU1QslL2vBXp9uFTi4BUFcoiI+JMxQLGo2pylWRsMH1VmidxRJrtv3
	tPKUNEDzoQOEkyjYxO5cC7M1h3qZmLnzQ1bDnKnU31FlehH8DwsnLCTpOP9+FWeVjt3LWIGu2kXJT
	k39w8FIgxNufRLsPt/VZDGLlZudF0Vu7kXPfU2RyYOMtYBvRWVtUkXuh/4LSL0Asu1kocr9j0oyPe
	vxzL8fiWO8Lwf/rUirWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlW3i-0004o7-Lp; Wed, 17 Jun 2020 11:16:46 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlW3a-0004no-0F
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 11:16:39 +0000
Received: by mail-wr1-x444.google.com with SMTP id p5so1884845wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 04:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=NwwANDgxX4dH8O6rPRqOhoTERCt3DfmFlNR5UMYf758=;
 b=BL1hO3Op+QBp8lH71zepc4iX03Z4R7n2mMn8zb5G7QIhV26mJblM+IUm67N01CqEmP
 CvejAxdKOh3qk6kWgZERySMMqPk0njDkzwa1RRW8ReS39a6tFlYUAfcebKjGBvMkxkWF
 5GyqEAKxV0UAahM8Fnfpu6mg8hn5yseiH0i1+v1+A1ca7R1UcbWlsqF59bnqnCl49PmV
 fTr/WPn7Dbf/od2RgCEjFcYQpqLHq1YXKR6IhcSJ+A7PFvR/tDUyt2r69AlqVb19hIfl
 bOqsrAAJ2FRKeorjbqy5nYsxHC4meOj1/9b5TPL6YJBRi9pYM1tOAqfAWgcTaWeiL/dA
 VaIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=NwwANDgxX4dH8O6rPRqOhoTERCt3DfmFlNR5UMYf758=;
 b=cWz2tGrAHRe2X9NjON6gNESQH8pqmvi8GAaXvv/OGKfjT7PzluiDh/uELG/E1do0vr
 nxyJgvkMSda32KBFF1oXsgfBU6o7DC+RWpWTnmWj49XIrhI/o4daHaZIpnsCtnPxOz31
 HoYADBx8UZFShLCOqc44F+zkq/YwOIYKIuLT+WmtdIATiLORoZ+w8BkMMpwI2v7n2P5e
 RBAT7v+oyv6VVOMzcCsGmxQwA/9mFOOcqb3SAp5ESkhN+L8eWOx9F4aYAoO1//kSp5TK
 dqd5zg8a5zTXwLrUnZhdYHnszOSugjb21QkUrksJbzAO5ak2LoiGu0k7olAq/omiZ67b
 csRQ==
X-Gm-Message-State: AOAM532WHlgvNcQCPxaM0IM2i6vvna86f0qSas+mXRowFnQd16nQOhX0
 /URG+pYKaCPw8V8OSHMUJNw=
X-Google-Smtp-Source: ABdhPJwqUA3U4GFIJDkU3eE+1XiMKRoFQ26XkN59MR/FARFOznjy9KoXpCB75Rh2GfTcaObpKKD39Q==
X-Received: by 2002:adf:aa94:: with SMTP id h20mr7462127wrc.327.1592392596473; 
 Wed, 17 Jun 2020 04:16:36 -0700 (PDT)
Received: from macbook-pro-alvaro-eth.lan
 (90.red-88-20-62.staticip.rima-tde.net. [88.20.62.90])
 by smtp.gmail.com with ESMTPSA id d28sm4242126wrc.50.2020.06.17.04.16.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Jun 2020 04:16:35 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [PATCH 1/2] dt-bindings: phy: add bcm63xx-usbh bindings
From: =?utf-8?Q?=C3=81lvaro_Fern=C3=A1ndez_Rojas?= <noltari@gmail.com>
In-Reply-To: <2cc00ff1-f411-1c2d-d2ce-4cc0bfc2ccb5@gmail.com>
Date: Wed, 17 Jun 2020 13:16:34 +0200
Message-Id: <F5FC8442-319A-48A7-BEEA-92C0EADE6BDA@gmail.com>
References: <20200616083408.3426435-1-noltari@gmail.com>
 <20200616083408.3426435-2-noltari@gmail.com>
 <2cc00ff1-f411-1c2d-d2ce-4cc0bfc2ccb5@gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_041638_058403_E5434394 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, gregkh@linuxfoundation.org, simon@fire.lp0.eu,
 alcooperx@gmail.com, linux-kernel@vger.kernel.org, krzk@kernel.org,
 kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 Jonas Gorski <jonas.gorski@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRmxvcmlhbiwKCj4gRWwgMTYganVuIDIwMjAsIGEgbGFzIDE5OjE3LCBGbG9yaWFuIEZhaW5l
bGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4gZXNjcmliacOzOgo+IAo+IAo+IAo+IE9uIDYvMTYv
MjAyMCAxOjM0IEFNLCDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgd3JvdGU6Cj4+IERvY3VtZW50
IEJDTTYzeHggVVNCSCBQSFkgYmluZGluZ3MuCj4+IAo+PiBTaWduZWQtb2ZmLWJ5OiDDgWx2YXJv
IEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgo+PiAtLS0KPj4gLi4uL2JpbmRp
bmdzL3BoeS9icmNtLGJjbTYzeHgtdXNiaC1waHkueWFtbCAgIHwgNzIgKysrKysrKysrKysrKysr
KysrKwo+PiAxIGZpbGUgY2hhbmdlZCwgNzIgaW5zZXJ0aW9ucygrKQo+PiBjcmVhdGUgbW9kZSAx
MDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9icmNtLGJjbTYzeHgt
dXNiaC1waHkueWFtbAo+PiAKPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9waHkvYnJjbSxiY202M3h4LXVzYmgtcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvcGh5L2JyY20sYmNtNjN4eC11c2JoLXBoeS55YW1sCj4+IG5l
dyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uM2U3Yzk3Nzk5YjkxCj4+
IC0tLSAvZGV2L251bGwKPj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3BoeS9icmNtLGJjbTYzeHgtdXNiaC1waHkueWFtbAo+PiBAQCAtMCwwICsxLDcyIEBACj4+ICsj
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCBPUiBCU0QtMi1DbGF1c2UpCj4+ICsl
WUFNTCAxLjIKPj4gKy0tLQo+PiArJGlkOiAiaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMv
cGh5L2JyY20sYmNtNjN4eC11c2JoLXBoeS55YW1sIyIKPj4gKyRzY2hlbWE6ICJodHRwOi8vZGV2
aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMiCj4+ICsKPj4gK3RpdGxlOiBCQ002
M3h4IFVTQkggUEhZCj4+ICsKPj4gK21haW50YWluZXJzOgo+PiArICAtIMOBbHZhcm8gRmVybsOh
bmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Cj4+ICsKPj4gK3Byb3BlcnRpZXM6Cj4+ICsg
IGNvbXBhdGlibGU6Cj4+ICsgICAgZW51bToKPj4gKyAgICAgIC0gYnJjbSxiY202MzE4LXVzYmgt
cGh5Cj4+ICsgICAgICAtIGJyY20sYmNtNjMyOC11c2JoLXBoeQo+PiArICAgICAgLSBicmNtLGJj
bTYzNTgtdXNiaC1waHkKPj4gKyAgICAgIC0gYnJjbSxiY202MzYyLXVzYmgtcGh5Cj4+ICsgICAg
ICAtIGJyY20sYmNtNjM2OC11c2JoLXBoeQo+PiArICAgICAgLSBicmNtLGJjbTYzMjY4LXVzYmgt
cGh5Cj4+ICsKPj4gKyAgcmVnOgo+PiArICAgIG1heEl0ZW1zOiAxCj4+ICsKPj4gKyAgY2xvY2tz
Ogo+PiArICAgIG1heEl0ZW1zOiAyCj4+ICsKPj4gKyAgY2xvY2stbmFtZXM6Cj4+ICsgICAgaXRl
bXM6Cj4+ICsgICAgICAtIGNvbnN0OiB1c2JoCj4+ICsgICAgICAtIGNvbnN0OiB1c2JfcmVmCj4+
ICsKPj4gKyAgcmVzZXRzOgo+PiArICAgIG1heEl0ZW1zOiAxCj4+ICsKPj4gKyAgIiNwaHktY2Vs
bHMiOgo+PiArICAgIGNvbnN0OiAwCj4gCj4gT24gNjMyOCwgdGhlIHNhbWUgcmVnaXN0ZXIgc3Bh
Y2UgYWxsb3dzIHRoZSBjb250cm9sbGluZyBvZiB0aGUgVVNCIFBIWQo+IGluIGVpdGhlciBob3N0
IG9yIGRldmljZSBtb2RlLCBzbyBJIGJlbGlldmUgeW91IHdvdWxkIG5lZWQgdG8gYWRkIGEKPiAj
cGh5LWNlbGxzID0gMSBpbiBvcmRlciB0byBkaXN0aW5ndWlzaCB0aGUgY29uc3VtZXIgKGhvc3Qg
dmVyc3VzIGRldmljZSkKPiBpZiB3ZSBnZXQgdG8gdGhlIHBvaW50IHdoZXJlIGRyaXZlcnMvdXNi
L2dhZGdldC91ZGMvYmNtNjN4eF91ZGMuYwo+IGJlY29tZXMgRFQgYXdhcmUuCgpJ4oCZdmUganVz
dCByZWFsaXplZCB0aGF0IEkgaGF2ZSBpbXBsZW1lbnRlZCB0aGlzIHdyb25nIGluIHYzLCBiZWNh
dXNlIEkgaW1wbGVtZW50ZWQgdGhlIFN3YXBDb250cm9sIFVTQl9ERVZJQ0VfU0VMIHZhbHVlLCBh
bmQgeW91IG1lYW50IHRoZSBVVE1JQ29udHJvbDEgVVNCX0RFVklDRV9NT0RFX1NFTCB2YWx1ZS4K
U28gSSBoYXZlIGEgY291cGxlIG9mIHF1ZXN0aW9ucyBhYm91dCB0aGlzLCBiZWNhdXNlIEkgaGF2
ZW7igJl0IGdvdCBhbnkgYmNtNjN4eCB3aXRoIHVzYiBkZXZpY2UgY29uZmlndXJhdGlvbiB0byB0
ZXN0OgotIElzIFVTQl9ERVZJQ0VfU0VMIGFsc28gbmVlZGVkIGluIFN3YXBDb250cm9sIG9yIGRv
IHdlIG9ubHkgbmVlZCBVU0JfREVWSUNFX01PREVfU0VMIGluIFVUTUlDb250cm9sMT8KLSBBcmUg
dGhlIHJlc3Qgb2YgdGhlIGhvc3QgdmFsdWVzIG5lZWRlZCB3aGVuIGNvbmZpZ3VyZWQgaW4gZGV2
aWNlIG1vZGU/IFNob3VsZCBJIG9ubHkgc2V0IHRoZSBkZXZpY2UgdmFsdWVzIHdoZW4gaW4gZGV2
aWNlIG1vZGU/Cgo+IAo+IE90aGVyIHRoYW4gdGhhdCwgdGhpcyBsb29rcyBnb29kIHRvIG1lIQo+
IC0tIAo+IEZsb3JpYW4KCkJlc3QgcmVnYXJkcywKw4FsdmFyby4KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
