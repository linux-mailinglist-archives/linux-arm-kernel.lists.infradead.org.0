Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F45EDED68
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 15:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5XmXKhf6WR1BzWPLVBW/sKqGj92iw1IJ2/3nZ/Plt4g=; b=HyKlchGwHJaWcF
	37wPBNv218hH916XJY4zozIsH6wvjR76zwmOpU+Pjnxz+Doi14uG5krx35Ixvj4Ub1QWZDMRhlNJP
	tK2Kbv00F+z5W28bEFuF0jtC+4DFFEG0uI7qmGYeWaavYeAq9XlreFGvdn/eGDMCfgWa++6N3D1mW
	Y9XrHpxAkJuWUnx5CnMavyuEPWotGEsMGk2QVMR/an8ZPgXbvfb3um/ENPwg2RgeBwA/BKSs7sUg+
	vbnkxKC8JuriRc6BMedcmpQqN4oZ7iBdgFI/Iz8s3rMngKISmU3W9y6eWkZe1LHmG5nwkenjTLB0y
	udiY4hcNkXZCnEet7yWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMXcn-0006RJ-V5; Mon, 21 Oct 2019 13:21:29 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMXcW-0006N5-2C
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 13:21:13 +0000
Received: by mail-wr1-x443.google.com with SMTP id q13so8996270wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 06:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=GWUlVpoqUQXWKWTK3K8LLo2ls8MnItL75dW5lr6yLXg=;
 b=vL0xgiFa4qmexqBA8NPWnkoSkwm7i3GEjYXLhFkLT1gANwzLZsO3RLW8C3VKYsYPKa
 cloQVpoz8FMnhTpHgu7IPmmcfApJYcI+Z3NojtberRYgYg/Ck9OBB6lx2OxEWARU/iVC
 yTBgVe/ONo50K6kDSROkcKN6fERS1DRT4o6D+UpSOKb5tnJEebMpqbuvQtLmPN8jsz7r
 JuA5lZzi+3rt19mA/4/5fxfpDiG49My6QC05M9ZbdT7dOYy74l/dzUTkaIT7dF0/duy2
 iAWN+XBKyNmLzBWvSgwd23RfbVJPGqEx9Ruk76LGVbaucXlsKPgq5fOEPQL9bHIoPHxQ
 Ks/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=GWUlVpoqUQXWKWTK3K8LLo2ls8MnItL75dW5lr6yLXg=;
 b=Xo6zMdHkMjv01CQ33ZqvrdpM5J41rL3mHXnoYy5SwEcAaw7b6bVg/taemgQ9mqVtr2
 bJ30uBU3CDhgOSpg9NVElbIJwQedOEWOB53cz3Aa3JHeh2U4Fj1L7d4TkZML5phKBbmk
 59gl1AabEXyzfMWMCIlHeDwq8TUpxj2r2wQ97j/1eO97UYnnEaaByQHIRTxbw5fgYPSI
 Tcb2EaJLfGPmhk2el5+7qdU5509NWOW9yjPft72jGR9DNdVd3p/VtDtbqUflwlNmFais
 29oXn2cAxJsQot6jEKCf0B5UdWcuM2dxfYpppYZI2gF73r6U52fivSTnF/173Ero2fTh
 Cmmw==
X-Gm-Message-State: APjAAAVtqWTq8PnSgR1JniOfSOzzHZSLyrYflfcMF6qCn5tfhtg9deaM
 BmiSCWSexeOcwxCX0Hz5eo6caw==
X-Google-Smtp-Source: APXvYqxIB3aCYpteCi+A2z2E9wvQWBs9QBIZ5UFKQ7LCbAwjoKC+qyJmubZvaKbuFSsyml1GaGJqsg==
X-Received: by 2002:a5d:6a52:: with SMTP id t18mr20819925wrw.318.1571664070419; 
 Mon, 21 Oct 2019 06:21:10 -0700 (PDT)
Received: from dell ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id c16sm1263643wrw.32.2019.10.21.06.21.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 21 Oct 2019 06:21:09 -0700 (PDT)
Date: Mon, 21 Oct 2019 14:21:08 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Daniel Thompson <daniel.thompson@linaro.org>
Subject: Re: [PATCH v2 4/9] mfd: cs5535-mfd: Register clients using their own
 dedicated MFD cell entries
Message-ID: <20191021132108.GK4365@dell>
References: <20191021105822.20271-1-lee.jones@linaro.org>
 <20191021105822.20271-5-lee.jones@linaro.org>
 <20191021122924.qmaio5oe5j66tfdj@holly.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021122924.qmaio5oe5j66tfdj@holly.lan>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_062112_196487_A6E0C13E 
X-CRM114-Status: GOOD (  21.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyMSBPY3QgMjAxOSwgRGFuaWVsIFRob21wc29uIHdyb3RlOgoKPiBPbiBNb24sIE9j
dCAyMSwgMjAxOSBhdCAxMTo1ODoxN0FNICswMTAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiBDUzU1
MzUgaXMgdGhlIG9ubHkgdXNlciBvZiBtZmRfY2xvbmVfY2VsbCgpLiAgSXQgbWFrZXMgbW9yZSBz
ZW5zZSB0bwo+ID4gcmVnaXN0ZXIgY2hpbGQgZGV2aWNlcyBpbiB0aGUgdHJhZGl0aW9uYWwgd2F5
IGFuZCByZW1vdmUgdGhlIHF1aXRlCj4gPiBiZXNwb2tlIG1mZF9jbG9uZV9jZWxsKCkgY2FsbCBm
cm9tIHRoZSBNRkQgQVBJLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5q
b25lc0BsaW5hcm8ub3JnPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9tZmQvY3M1NTM1LW1mZC5jIHwg
MjQgKysrKysrKysrKysrKysrKysrLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDE4IGluc2Vy
dGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21m
ZC9jczU1MzUtbWZkLmMgYi9kcml2ZXJzL21mZC9jczU1MzUtbWZkLmMKPiA+IGluZGV4IDA1M2Uz
MzQ0NzgwOC4uOTZhOTlhYzEzMzg0IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9tZmQvY3M1NTM1
LW1mZC5jCj4gPiArKysgYi9kcml2ZXJzL21mZC9jczU1MzUtbWZkLmMKPiA+IEBAIC01Nyw5ICs1
NywxNyBAQCBzdGF0aWMgc3RydWN0IG1mZF9jZWxsIGNzNTUzNV9tZmRfY2VsbHNbXSA9IHsKPiA+
ICAJfSwKPiA+ICB9Owo+ID4gIAo+ID4gLXN0YXRpYyBjb25zdCBjaGFyICpvbHBjX2FjcGlfY2xv
bmVzW10gPSB7Cj4gPiAtCSJvbHBjLXhvMS1wbS1hY3BpIiwKPiA+IC0JIm9scGMteG8xLXNjaS1h
Y3BpIgo+ID4gK3N0YXRpYyBzdHJ1Y3QgbWZkX2NlbGwgY3M1NTM1X29scGNfbWZkX2NlbGxzW10g
PSB7Cj4gPiArCXsKPiA+ICsJCS5uYW1lID0gIm9scGMteG8xLXBtLWFjcGkiLAo+ID4gKwkJLm51
bV9yZXNvdXJjZXMgPSAxLAo+ID4gKwkJLnJlc291cmNlcyA9ICZjczU1MzVfbWZkX3Jlc291cmNl
c1tBQ1BJX0JBUl0sCj4gPiArCX0sCj4gPiArCXsKPiA+ICsJCS5uYW1lID0gIm9scGMteG8xLXNj
aS1hY3BpIiwKPiA+ICsJCS5udW1fcmVzb3VyY2VzID0gMSwKPiA+ICsJCS5yZXNvdXJjZXMgPSAm
Y3M1NTM1X21mZF9yZXNvdXJjZXNbQUNQSV9CQVJdLAo+ID4gKwl9LAo+IAo+IElzIHRoZSBjczU1
MzUtYWNwaSBjZWxsIGFjdHVhbGx5IHVzZWQgYnkgYW55dGhpbmc/IEkgdGhpbmsgaXQgd2FzIG9u
bHkKPiBldmVyIHVzZWQgYXMgYSB0ZW1wbGF0ZSBhbmQgY2FuIGJlIHJlbW92ZWQ7IEkgZGlkbid0
IHNwb3QgYW55IGRyaXZlciB0aGF0Cj4gdXNlcyBpdC4KCkkgZGlkIHRoaW5rIGFib3V0IHRoaXMs
IGJ1dCBJIGFzc3VtZWQgcmVtb3ZpbmcgaXQgYXQgdGhpcyBzdGFnZSB3b3VsZAptYWtlIHRoZSBy
ZXNvdXJjZSBtYXRjaGluZyBiZWxvdyBtb3JlIGNvbnZvbHV0ZWQuCgpJJ2xsIHRha2UgYW5vdGhl
ciBsb29rIGF0IHNlZSB3aGF0IEkgY2FuIGRvLgoKPiBQUyBJZiB0aGUgY2VsbCB3ZXJlIHJlbW92
ZWQgdGhlbiBteSByZXZpZXcgY29tbWVudCBvbiB0aGUgcHJldmlvdXMgcGF0Y2gKPiAgICBiZWNv
bWVzIG1vb3QgOy0pCj4gCj4gCj4gPiAgfTsKPiA+ICAKPiA+ICBzdGF0aWMgaW50IGNzNTUzNV9t
ZmRfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsCj4gPiBAQCAtMTA1LDEwICsxMTMsMTQgQEAg
c3RhdGljIGludCBjczU1MzVfbWZkX3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LAo+ID4gIAkJ
CWdvdG8gZXJyX3JlbW92ZV9kZXZpY2VzOwo+ID4gIAkJfQo+ID4gIAo+ID4gLQkJZXJyID0gbWZk
X2Nsb25lX2NlbGwoImNzNTUzNS1hY3BpIiwgb2xwY19hY3BpX2Nsb25lcywKPiA+IC0JCQkJICAg
ICBBUlJBWV9TSVpFKG9scGNfYWNwaV9jbG9uZXMpKTsKPiA+ICsJCWVyciA9IG1mZF9hZGRfZGV2
aWNlcygmcGRldi0+ZGV2LCBQTEFURk9STV9ERVZJRF9OT05FLAo+ID4gKwkJCQkgICAgICBjczU1
MzVfb2xwY19tZmRfY2VsbHMsCj4gPiArCQkJCSAgICAgIEFSUkFZX1NJWkUoY3M1NTM1X29scGNf
bWZkX2NlbGxzKSwKPiA+ICsJCQkJICAgICAgTlVMTCwgMCwgTlVMTCk7Cj4gPiAgCQlpZiAoZXJy
KSB7Cj4gPiAtCQkJZGV2X2VycigmcGRldi0+ZGV2LCAiRmFpbGVkIHRvIGNsb25lIE1GRCBjZWxs
XG4iKTsKPiA+ICsJCQlkZXZfZXJyKCZwZGV2LT5kZXYsCj4gPiArCQkJCSJGYWlsZWQgdG8gYWRk
IENTNTUzMiBPTFBDIHN1Yi1kZXZpY2VzOiAlZFxuIiwKPiA+ICsJCQkJZXJyKTsKPiA+ICAJCQln
b3RvIGVycl9yZWxlYXNlX2FjcGk7Cj4gPiAgCQl9Cj4gPiAgCX0KCi0tIApMZWUgSm9uZXMgW+ad
jueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9w
ZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8
IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
