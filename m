Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AECB33B329
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 12:28:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H+8+qhO3LrRvbI3zxSsf+mQpsW7M2QXK3fIAMcMkIF8=; b=bo5o2He09TCfRqWefrr0GN7Fh8
	otfFxezklOUQmgsHiCiyHXU2mhKfyYdkH9zwb9oUZUTsiOdZuURAtTwm6lChJeDFmZvhss3cUnsvA
	3EXctk+D3mKlD6JqLLhqsCUwzC4d1oGI7USLfHOzg3VsOhVXzXKi+JV6Uy6jWRvTwvShFxdPq9gEm
	lc0gdjIrVbhQZphtD1Jd21WlsMNwj79LQIrWcnorBYBB6HAPLWVYornG24UkEtQkSRKEbCDKINFqt
	XgWUz2pjLmYYs7y9so6la7ovPZISTDadRkKx6/cjI2Oel5z1malA/emqsXZbt1k1SxPiUOL2/K3l1
	RETc6Npg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haHXN-0006Pv-TE; Mon, 10 Jun 2019 10:28:25 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haHXE-0006PA-NB
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 10:28:18 +0000
Received: by mail-wm1-x344.google.com with SMTP id 22so7620445wmg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 03:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version:content-transfer-encoding;
 bh=7m8Bu7lB4ksYeqfRRC/lPM6W8s5DmEJuKn8IqoNFhQw=;
 b=tBDV51glZGanQgxTrzVO0gB6qKNLNtHFVJzlIdOXKGFCpw7T2XTusKAcqq5pAPTZAV
 T6CwrZ2oBTDEfeBXhPbGHmcpWOZs6QTbrqEv638tstP43CPTIdgyI41jQmDrxkqKexUU
 PB+xRjdPYhQmXn4iaBf36w0LvmNDU8/8osT9T5NNys5zD+/3v+tag4dVgO8yKRUr59K4
 Yo93vCwOp0HnDL7ooheDNURFFjUecG1drH7yqU4z8fUD6JLePi+D8Ucl1MqXjiyvR8bN
 e7HApf+oVcNBzoZYrjDHSi8Kxy4eKs9VeP/L1UuHL+l0m9zwz0btnfIUxobuQx6kNaO8
 Bb5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version:content-transfer-encoding;
 bh=7m8Bu7lB4ksYeqfRRC/lPM6W8s5DmEJuKn8IqoNFhQw=;
 b=OgVi6iWasv3WKMro1lqTod9iO9NjGZmCNlNTYbV9E4+sF1l1V53XHG13Cf70pRleWe
 BGt55YEta57bkUJQ03NinRhVPSIaXuUvHE6psDuRIhjqlB43r/iLSuv1yAc3gTuA7b7V
 iSNHxkAYZog6CffBtNxWdXMP6gWXLusofsNj0wloMilCIagQDtH8dgb1IavjtypAyyTT
 ditBjUn+e4sDL2nl3GKLoyA/n3x8fTksnfSkA9baAFkX8qilhx2f+0BPqIMPbYjG9nCN
 sLqv+KxXcjc5BKCc04EC7R60LARA8IQZDK8G/VIo86Ht76/7iW+Xo9OY41xxmhuguLXR
 +ClQ==
X-Gm-Message-State: APjAAAVSb+M/wQxztF47Hb/LKDPi6gswG4Ekc0f58CSaJzgY4MMerqgn
 VVVNL4LQK9WKrUoRo2ltqxM=
X-Google-Smtp-Source: APXvYqz1+ua/jKrobyjGWLS/odDhaaFrpS9jOQgWwoi1byT+KHk9e6DZ6ewbswDaW86v2EWAQi4f6g==
X-Received: by 2002:a7b:cc93:: with SMTP id p19mr8190437wma.12.1560162494535; 
 Mon, 10 Jun 2019 03:28:14 -0700 (PDT)
Received: from arch-late ([87.196.73.9])
 by smtp.gmail.com with ESMTPSA id z5sm8466932wma.36.2019.06.10.03.28.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 03:28:13 -0700 (PDT)
References: <20190606153825.8183-1-sebastien.szymanski@armadeus.com>
 <20190606153825.8183-2-sebastien.szymanski@armadeus.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: =?utf-8?Q?S=C3=A9bastien?= Szymanski <sebastien.szymanski@armadeus.com>
Subject: Re: [PATCH v2 2/3] media: imx7-media-csi: add i.MX6UL support
In-reply-to: <20190606153825.8183-2-sebastien.szymanski@armadeus.com>
Date: Mon, 10 Jun 2019 11:28:06 +0100
Message-ID: <m34l4xpweh.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_032816_761753_04986940 
X-CRM114-Status: GOOD (  25.81  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rmfrfs[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU2ViYXN0aWVuLApUaGFua3MgZm9yIHRoZSBwYXRjaC4KCk9uIFRodSAwNiBKdW4gMjAxOSBh
dCAxNjozOCwgU8OpYmFzdGllbiBTenltYW5za2kgd3JvdGU6Cj4gaS5NWDcgYW5kIGkuTVg2VUwv
TCBoYXZlIHRoZSBzYW1lIENTSSBjb250cm9sbGVyLiBTbyBhZGQgaS5NWDZVTC9MIHN1cHBvcnQK
PiB0byBpbXg3LW1lZGlhLWNzaSBkcml2ZXIuCj4KPiBTaWduZWQtb2ZmLWJ5OiBTw6liYXN0aWVu
IFN6eW1hbnNraSA8c2ViYXN0aWVuLnN6eW1hbnNraUBhcm1hZGV1cy5jb20+Cj4gLS0tCj4KPiBD
aGFuZ2VzIGZvciB2MjoKPiAgLSByZWJhc2Ugb24gdG9wIG9mIGxpbnV4dHYvbWFzdGVyCj4gIC0g
bWVudGlvbiBpLk1YNlVML0wgaW4gaGVhZGVyIGFuZCBLY29uZmlnIGhlbHAgdGV4dAo+ICAtIHJl
bmFtZSBjc2lfdHlwZSB0byBjc2lfc29jX2lkCj4KPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2lt
eC9LY29uZmlnICAgICAgICAgIHwgIDQgKy0KPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2lteC9p
bXg3LW1lZGlhLWNzaS5jIHwgNjIgKysrKysrKysrKysrKysrKy0tLS0tLQo+ICAyIGZpbGVzIGNo
YW5nZWQsIDQ5IGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pbXgvS2NvbmZpZyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRp
YS9pbXgvS2NvbmZpZwo+IGluZGV4IGFkM2Q3ZGY2YmIzYy4uOGI2ZGM0MmMzOWUwIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pbXgvS2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMv
c3RhZ2luZy9tZWRpYS9pbXgvS2NvbmZpZwo+IEBAIC0yMiwxMSArMjIsMTEgQEAgY29uZmlnIFZJ
REVPX0lNWF9DU0kKPiAgCSAgQSB2aWRlbzRsaW51eCBjYW1lcmEgc2Vuc29yIGludGVyZmFjZSBk
cml2ZXIgZm9yIGkuTVg1LzYuCj4KPiAgY29uZmlnIFZJREVPX0lNWDdfQ1NJCj4gLQl0cmlzdGF0
ZSAiaS5NWDcgQ2FtZXJhIFNlbnNvciBJbnRlcmZhY2UgZHJpdmVyIgo+ICsJdHJpc3RhdGUgImku
TVg2VUwvTCAvIGkuTVg3IENhbWVyYSBTZW5zb3IgSW50ZXJmYWNlIGRyaXZlciIKPiAgCWRlcGVu
ZHMgb24gVklERU9fSU1YX01FRElBICYmIFZJREVPX0RFViAmJiBJMkMKPiAgCWRlZmF1bHQgeQo+
ICAJaGVscAo+ICAJICBFbmFibGUgc3VwcG9ydCBmb3IgdmlkZW80bGludXggY2FtZXJhIHNlbnNv
ciBpbnRlcmZhY2UgZHJpdmVyIGZvcgo+IC0JICBpLk1YNy4KPiArCSAgaS5NWDZVTC9MIG9yIGku
TVg3Lgo+ICBlbmRtZW51Cj4gIGVuZGlmCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9pbXgvaW14Ny1tZWRpYS1jc2kuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pbXgvaW14
Ny1tZWRpYS1jc2kuYwo+IGluZGV4IDkxMDE1NjZmM2Y2Ny4uOTAyYmRjZTU5NGNmIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pbXgvaW14Ny1tZWRpYS1jc2kuYwo+ICsrKyBi
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pbXgvaW14Ny1tZWRpYS1jc2kuYwo+IEBAIC0xLDYgKzEs
NiBAQAo+ICAvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+ICAvKgo+IC0gKiBW
NEwyIENhcHR1cmUgQ1NJIFN1YmRldiBmb3IgRnJlZXNjYWxlIGkuTVg3IFNPQwo+ICsgKiBWNEwy
IENhcHR1cmUgQ1NJIFN1YmRldiBmb3IgRnJlZXNjYWxlIGkuTVg2VUwvTCAvIGkuTVg3IFNPQwo+
ICAgKgo+ICAgKiBDb3B5cmlnaHQgKGMpIDIwMTkgTGluYXJvIEx0ZAo+ICAgKgo+IEBAIC0xNTIs
NiArMTUyLDExIEBACj4gICNkZWZpbmUgQ1NJX0NTSUNSMTgJCTB4NDgKPiAgI2RlZmluZSBDU0lf
Q1NJQ1IxOQkJMHg0Ywo+Cj4gK2VudW0gY3NpX3NvY19pZCB7Cj4gKwlJTVg3LAo+ICsJSU1YNlVM
Cj4gK307Cj4gKwo+ICBzdHJ1Y3QgaW14N19jc2kgewo+ICAJc3RydWN0IGRldmljZSAqZGV2Owo+
ICAJc3RydWN0IHY0bDJfc3ViZGV2IHNkOwo+IEBAIC0xOTEsNiArMTk2LDcgQEAgc3RydWN0IGlt
eDdfY3NpIHsKPiAgCWJvb2wgaXNfaW5pdDsKPiAgCWJvb2wgaXNfc3RyZWFtaW5nOwo+ICAJYm9v
bCBpc19jc2kyOwo+ICsJZW51bSBjc2lfc29jX2lkIHNvY19pZDsKPgo+ICAJc3RydWN0IGNvbXBs
ZXRpb24gbGFzdF9lb2ZfY29tcGxldGlvbjsKPiAgfTsKPiBAQCAtNTQ4LDYgKzU1NCwxNCBAQCBz
dGF0aWMgaW50IGlteDdfY3NpX3BhZF9saW5rX3ZhbGlkYXRlKHN0cnVjdCB2NGwyX3N1YmRldiAq
c2QsCj4gIAlpZiAocmV0KQo+ICAJCXJldHVybiByZXQ7Cj4KPiArCWlmIChjc2ktPnNvY19pZCA9
PSBJTVg2VUwpIHsKPiArCQltdXRleF9sb2NrKCZjc2ktPmxvY2spOwo+ICsJCWNzaS0+aXNfY3Np
MiA9IGZhbHNlOwo+ICsJCW11dGV4X3VubG9jaygmY3NpLT5sb2NrKTsKPiArCj4gKwkJcmV0dXJu
IDA7Cj4gKwl9Cj4gKwo+ICAJcmV0ID0gaW14N19jc2lfZ2V0X3Vwc3RyZWFtX2VuZHBvaW50KGNz
aSwgJnVwc3RyZWFtX2VwLCB0cnVlKTsKPiAgCWlmIChyZXQpIHsKPiAgCQl2NGwyX2VycigmY3Np
LT5zZCwgImZhaWxlZCB0byBmaW5kIHVwc3RyZWFtIGVuZHBvaW50XG4iKTsKPiBAQCAtNzU3LDYg
Kzc3MSw3IEBAIHN0YXRpYyBpbnQgaW14N19jc2lfY29uZmlndXJlKHN0cnVjdCBpbXg3X2NzaSAq
Y3NpKQo+ICAJc3RydWN0IHY0bDJfcGl4X2Zvcm1hdCAqb3V0X3BpeCA9ICZ2ZGV2LT5mbXQuZm10
LnBpeDsKPiAgCV9fdTMyIGluX2NvZGUgPSBjc2ktPmZvcm1hdF9tYnVzW0lNWDdfQ1NJX1BBRF9T
SU5LXS5jb2RlOwo+ICAJdTMyIGNyMSwgY3IxODsKPiArCWludCB3aWR0aCA9IG91dF9waXgtPndp
ZHRoOwo+Cj4gIAlpZiAob3V0X3BpeC0+ZmllbGQgPT0gVjRMMl9GSUVMRF9JTlRFUkxBQ0VEKSB7
Cj4gIAkJaW14N19jc2lfZGVpbnRlcmxhY2VfZW5hYmxlKGNzaSwgdHJ1ZSk7Cj4gQEAgLTc2Niwx
NSArNzgxLDI3IEBAIHN0YXRpYyBpbnQgaW14N19jc2lfY29uZmlndXJlKHN0cnVjdCBpbXg3X2Nz
aSAqY3NpKQo+ICAJCWlteDdfY3NpX2J1Zl9zdHJpZGVfc2V0KGNzaSwgMCk7Cj4gIAl9Cj4KPiAt
CWlteDdfY3NpX3NldF9pbWFncGFyYShjc2ksIG91dF9waXgtPndpZHRoLCBvdXRfcGl4LT5oZWln
aHQpOwo+ICsJY3IxOCA9IGlteDdfY3NpX3JlZ19yZWFkKGNzaSwgQ1NJX0NTSUNSMTgpOwo+ICsK
PiArCWlmICghY3NpLT5pc19jc2kyKSB7Cj4gKwkJaWYgKG91dF9waXgtPnBpeGVsZm9ybWF0ID09
IFY0TDJfUElYX0ZNVF9VWVZZIHx8Cj4gKwkJICAgIG91dF9waXgtPnBpeGVsZm9ybWF0ID09IFY0
TDJfUElYX0ZNVF9ZVVlWKQo+ICsJCQl3aWR0aCAqPSAyOwo+ICsKPiArCQlpbXg3X2NzaV9zZXRf
aW1hZ3BhcmEoY3NpLCB3aWR0aCwgb3V0X3BpeC0+aGVpZ2h0KTsKPiArCj4gKwkJY3IxOCB8PSAo
QklUX0JBU0VBRERSX1NXSVRDSF9FTiB8IEJJVF9CQVNFQUREUl9TV0lUQ0hfU0VMIHwKPiArCQkJ
QklUX0JBU0VBRERSX0NIR19FUlJfRU4pOwo+ICsJCWlteDdfY3NpX3JlZ193cml0ZShjc2ksIGNy
MTgsIENTSV9DU0lDUjE4KTsKPgo+IC0JaWYgKCFjc2ktPmlzX2NzaTIpCj4gIAkJcmV0dXJuIDA7
Cj4gKwl9Cj4gKwo+ICsJaW14N19jc2lfc2V0X2ltYWdwYXJhKGNzaSwgd2lkdGgsIG91dF9waXgt
PmhlaWdodCk7Cj4KPiAgCWNyMSA9IGlteDdfY3NpX3JlZ19yZWFkKGNzaSwgQ1NJX0NTSUNSMSk7
Cj4gIAljcjEgJj0gfkJJVF9HQ0xLX01PREU7Cj4KPiAtCWNyMTggPSBpbXg3X2NzaV9yZWdfcmVh
ZChjc2ksIENTSV9DU0lDUjE4KTsKPiAgCWNyMTggJj0gQklUX01JUElfREFUQV9GT1JNQVRfTUFT
SzsKPiAgCWNyMTggfD0gQklUX0RBVEFfRlJPTV9NSVBJOwo+Cj4gQEAgLTgwOSwxMSArODM2LDkg
QEAgc3RhdGljIHZvaWQgaW14N19jc2lfZW5hYmxlKHN0cnVjdCBpbXg3X2NzaSAqY3NpKQo+ICB7
Cj4gIAlpbXg3X2NzaV9zd19yZXNldChjc2kpOwo+Cj4gLQlpZiAoY3NpLT5pc19jc2kyKSB7Cj4g
LQkJaW14N19jc2lfZG1hcmVxX3JmZl9lbmFibGUoY3NpKTsKPiAtCQlpbXg3X2NzaV9od19lbmFi
bGVfaXJxKGNzaSk7Cj4gLQkJaW14N19jc2lfaHdfZW5hYmxlKGNzaSk7Cj4gLQl9Cj4gKwlpbXg3
X2NzaV9kbWFyZXFfcmZmX2VuYWJsZShjc2kpOwo+ICsJaW14N19jc2lfaHdfZW5hYmxlX2lycShj
c2kpOwo+ICsJaW14N19jc2lfaHdfZW5hYmxlKGNzaSk7Cj4gIH0KPgo+ICBzdGF0aWMgdm9pZCBp
bXg3X2NzaV9kaXNhYmxlKHN0cnVjdCBpbXg3X2NzaSAqY3NpKQo+IEBAIC0xMTY2LDE5ICsxMTkx
LDMyIEBAIHN0YXRpYyBpbnQgaW14N19jc2lfcGFyc2VfZW5kcG9pbnQoc3RydWN0IGRldmljZSAq
ZGV2LAo+ICAJcmV0dXJuIGZ3bm9kZV9kZXZpY2VfaXNfYXZhaWxhYmxlKGFzZC0+bWF0Y2guZndu
b2RlKSA/IDAgOiAtRUlOVkFMOwo+ICB9Cj4KPiArc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZp
Y2VfaWQgaW14N19jc2lfb2ZfbWF0Y2hbXSA9IHsKPiArCXsgLmNvbXBhdGlibGUgPSAiZnNsLGlt
eDctY3NpIiwgLmRhdGEgPSAodm9pZCAqKUlNWDcgfSwKPiArCXsgLmNvbXBhdGlibGUgPSAiZnNs
LGlteDZ1bC1jc2kiLCAuZGF0YSA9ICh2b2lkICopSU1YNlVMIH0sCgpsb29raW5nIGF0IHRoaXMg
YWdhaW4gSSB0aGluayB3ZSBjYW4gZG8gdGhpcyBpcyBhIGRpZmZlcmVudCB3YXkuCkluc3RlYWQg
ZGF0YSBiZWluZyB0aGUgc29jX2lkLCBqdXN0IHNldCBoZXJlIGlmIGl0IGlzX2NzaTIgb3Igbm90
LgoKVGhpcyB3b3VsZCBhdm9pZCB0byBhZGQgYSBzb2NfaWQgIHRvIHRoZSBzdHJ1Y3QgdGhhdCBp
dCByZWFsbHkgaXQKaXMgdXNlZCBvbmx5IHRvIHNldHVwIHRoZSBpc19jc2kyIHZhci4gSSB0aGlu
ayB0aGlzIHdpbGwgbWFrZSB0aGlzCnBhdGNoIGEgbG90IHNpbXBsZXIuCgo+ICsJeyB9LAo+ICt9
Owo+ICtNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBpbXg3X2NzaV9vZl9tYXRjaCk7Cj4gKwo+ICBz
dGF0aWMgaW50IGlteDdfY3NpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4g
IHsKPiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gIAlzdHJ1Y3QgZGV2aWNl
X25vZGUgKm5vZGUgPSBkZXYtPm9mX25vZGU7Cj4gIAlzdHJ1Y3QgaW14X21lZGlhX2RldiAqaW14
bWQ7Cj4gIAlzdHJ1Y3QgaW14N19jc2kgKmNzaTsKPiArCWNvbnN0IHN0cnVjdCBvZl9kZXZpY2Vf
aWQgKm9mX2lkOwo+ICAJaW50IHJldDsKPgo+ICsJb2ZfaWQgPSBvZl9tYXRjaF9ub2RlKGlteDdf
Y3NpX29mX21hdGNoLCBub2RlKTsKCldpdGggdGhlIGFib3ZlIHNhaWQsIGhlcmUgSSB0aGluayB3
ZSBjYW4gdXNlIHRoZSBvZl9tYXRjaF9kZXZpY2U/Cgpob3BlIHRoaXMgbWFrZXMgc2Vuc2UgYWxz
byB0byB5b3UuCgpPbmNlIGFnYWluIHRoYW5rcyBmb3IgdGhlIHBhdGNoZXMuCgotLS0KQ2hlZXJz
LAogICAgICAgIFJ1aQoKPiArCWlmICghb2ZfaWQpCj4gKwkJcmV0dXJuIC1FTk9ERVY7Cj4gKwo+
ICAJY3NpID0gZGV2bV9remFsbG9jKCZwZGV2LT5kZXYsIHNpemVvZigqY3NpKSwgR0ZQX0tFUk5F
TCk7Cj4gIAlpZiAoIWNzaSkKPiAgCQlyZXR1cm4gLUVOT01FTTsKPgo+ICAJY3NpLT5kZXYgPSBk
ZXY7Cj4gKwljc2ktPnNvY19pZCA9IChlbnVtIGNzaV9zb2NfaWQpb2ZfaWQtPmRhdGE7Cj4KPiAg
CWNzaS0+bWNsayA9IGRldm1fY2xrX2dldCgmcGRldi0+ZGV2LCAibWNsayIpOwo+ICAJaWYgKElT
X0VSUihjc2ktPm1jbGspKSB7Cj4gQEAgLTEyOTQsMTIgKzEzMzIsNiBAQCBzdGF0aWMgaW50IGlt
eDdfY3NpX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJcmV0dXJuIDA7
Cj4gIH0KPgo+IC1zdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBpbXg3X2NzaV9vZl9t
YXRjaFtdID0gewo+IC0JeyAuY29tcGF0aWJsZSA9ICJmc2wsaW14Ny1jc2kiIH0sCj4gLQl7IH0s
Cj4gLX07Cj4gLU1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIGlteDdfY3NpX29mX21hdGNoKTsKPiAt
Cj4gIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIGlteDdfY3NpX2RyaXZlciA9IHsKPiAg
CS5wcm9iZSA9IGlteDdfY3NpX3Byb2JlLAo+ICAJLnJlbW92ZSA9IGlteDdfY3NpX3JlbW92ZSwK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
