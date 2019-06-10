Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3CE3AF1B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 08:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vU3J6HIEWd2IYdEvkJehsy2lufg+BD2JlFC+80GHCy8=; b=NM6IU9LjdSB0cu
	PhxvDiWCzIR1QgGE/TZYXG0v1q1L/rGo1bSHRFIBuoS01Yw7Rhx2AU/cukZCwmhhiTkKMBjgyfv0n
	02djl1ZPg4wgczxWjBqdka/eMre7QMyOW5SABHMoClSOVINekm62+mz0vQLq88ws2z4uOWI1cLzH6
	MMH8vuF7STzpLDU6do3yQCjYZzS7BZNAgg173ca7FkVMrzGI5nSQwZ9So9K+8wpgs0Zs4vpVykB25
	13cw8Wd2vobTBMd84fxV2NepDOKq+zVemcIbMH4h8uVRppp5hfeZfFmQ9Z3N2QKgyZVzqDQ/vXgpE
	MwxPMnru8rarAJ5IkIKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haE2w-000329-Qr; Mon, 10 Jun 2019 06:44:47 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haE2j-00030a-JT
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 06:44:35 +0000
Received: by mail-wr1-x444.google.com with SMTP id p11so7907066wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Jun 2019 23:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=6v285XyrONVGX85JZPN2vEBoOamuC/TCwUgIuT1MYVI=;
 b=JUO0jDnbhpEfAJfOIn/mmbA+BYvZwYR3dpEtmWpv9PZIPu+703QoKa9lYvNN7XE01N
 AVuskQ8lgqYi+ReRHmxOrXd+3ZIitSv/af+yb//VqjPkALpRfqUZdL/uGfKplsJoFcGw
 dz7tWj7T0RpYSYQNTTZ1dnCBTeRYE4/Ss6EQ2RS+ITbVhrViYs2H0KPJims9t1QepBn6
 fae6961ZZ0d1mcM/cSiHvZVl4tLZgujzYzWG9ouCPAuwDM1CzhtchbqGQkSuZ7/q8F20
 tbp9aLC0U4YJItjQdYRh9Y8lOaSRcOuO4hKmsKR1J6jdVcvCG0XFPTTX4C383DwnePsf
 sP/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=6v285XyrONVGX85JZPN2vEBoOamuC/TCwUgIuT1MYVI=;
 b=AvJoFWqUr7geUuL0krVgB6RMJSMjlnrK4HPYO9jHc3qowI2g+ORkfBgqUC0u9/xnDR
 LZ/0CzEa+6agwkQsdL05+MI+YymG+2SQLKN34jPf2l28KBWOgw4G3sP+5+z7YEPfQu3Z
 4CRZI8X2g6xeIr/jCrqAOqW1lsjsHb7BWyNeTmBu6i+TqzjoOjfBXxznaLvWoPgCbM6V
 RVIULKP3IlNWqxMIlNLT1pCHpXyPPdsbK4ekQj3bSUaRwaBgstXu+xetqvXRVKyfI06t
 haY0hy4Jk9zjlONAGCeHUiN/KWAz+np3rdqES3QTRRLDWvmTwTQASY9HJLK/KCHUbJHs
 CTFA==
X-Gm-Message-State: APjAAAX342a6x3ouGUWMaz9NxurPiVmW9Selbb23kzcukTgOyrR1LHpi
 uqhqEPR7cl6OFv9ytj0a7u6fIQ==
X-Google-Smtp-Source: APXvYqy45tNcTtpg/c94lrABKtUPI2IloeMt1vo9EvaBBcW/D4raRflIRHWeOa3AYFf8Fefw5c/jrg==
X-Received: by 2002:adf:a11d:: with SMTP id o29mr14522807wro.262.1560149071686; 
 Sun, 09 Jun 2019 23:44:31 -0700 (PDT)
Received: from dell ([2.31.167.229])
 by smtp.gmail.com with ESMTPSA id a2sm5038333wmj.9.2019.06.09.23.44.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 09 Jun 2019 23:44:30 -0700 (PDT)
Date: Mon, 10 Jun 2019 07:44:28 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v2 1/8] i2c: i2c-qcom-geni: Provide support for ACPI
Message-ID: <20190610064428.GF4797@dell>
References: <20190607082901.6491-1-lee.jones@linaro.org>
 <CAKv+Gu_SP7qBggCrVkF41BimV3PnCQXb5OUKyCsE0bBxa68RZA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu_SP7qBggCrVkF41BimV3PnCQXb5OUKyCsE0bBxa68RZA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_234433_648116_53315DD8 
X-CRM114-Status: GOOD (  22.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: balbi@kernel.org, wsa+renesas@sang-engineering.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, alokc@codeaurora.org,
 linux-i2c <linux-i2c@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Andy Gross <andy.gross@linaro.org>, Jeffrey Hugo <jlhugo@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAwNyBKdW4gMjAxOSwgQXJkIEJpZXNoZXV2ZWwgd3JvdGU6Cgo+IE9uIEZyaSwgNyBK
dW4gMjAxOSBhdCAxMDoyOSwgTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4gd3JvdGU6
Cj4gPgo+ID4gQWRkIGEgbWF0Y2ggdGFibGUgdG8gYWxsb3cgYXV0b21hdGljIHByb2Jpbmcgb2Yg
QUNQSSBkZXZpY2UKPiA+IFFDT00wMjIwLiAgSWdub3JlIGNsb2NrIGF0dGFpbm1lbnQgZXJyb3Jz
LiAgU2V0IGRlZmF1bHQgY2xvY2sKPiA+IGZyZXF1ZW5jeSB2YWx1ZS4KPiA+Cj4gPiBTaWduZWQt
b2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+ID4gLS0tCj4gPiAgZHJp
dmVycy9pMmMvYnVzc2VzL2kyYy1xY29tLWdlbmkuYyB8IDE5ICsrKysrKysrKysrKysrKysrLS0K
PiA+ICAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1xY29tLWdlbmkuYyBiL2Ry
aXZlcnMvaTJjL2J1c3Nlcy9pMmMtcWNvbS1nZW5pLmMKPiA+IGluZGV4IGRiMDc1YmMwZDk1Mi4u
MGZhOTNiNDQ4ZThkIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1xY29t
LWdlbmkuYwo+ID4gKysrIGIvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1xY29tLWdlbmkuYwo+ID4g
QEAgLTEsNiArMSw3IEBACj4gPiAgLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAK
PiA+ICAvLyBDb3B5cmlnaHQgKGMpIDIwMTctMjAxOCwgVGhlIExpbnV4IEZvdW5kYXRpb24uIEFs
bCByaWdodHMgcmVzZXJ2ZWQuCj4gPgo+ID4gKyNpbmNsdWRlIDxsaW51eC9hY3BpLmg+Cj4gPiAg
I2luY2x1ZGUgPGxpbnV4L2Nsay5oPgo+ID4gICNpbmNsdWRlIDxsaW51eC9kbWEtbWFwcGluZy5o
Pgo+ID4gICNpbmNsdWRlIDxsaW51eC9lcnIuaD4KPiA+IEBAIC00ODMsNiArNDg0LDEyIEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgaTJjX2FsZ29yaXRobSBnZW5pX2kyY19hbGdvID0gewo+ID4gICAg
ICAgICAuZnVuY3Rpb25hbGl0eSAgPSBnZW5pX2kyY19mdW5jLAo+ID4gIH07Cj4gPgo+ID4gK3N0
YXRpYyBjb25zdCBzdHJ1Y3QgYWNwaV9kZXZpY2VfaWQgZ2VuaV9pMmNfYWNwaV9tYXRjaFtdID0g
ewo+ID4gKyAgICAgICB7ICJRQ09NMDIyMCJ9LAo+ID4gKyAgICAgICB7IH0sCj4gPiArfTsKPiA+
ICtNT0RVTEVfREVWSUNFX1RBQkxFKGFjcGksIGdlbmlfaTJjX2FjcGlfbWF0Y2gpOwo+ID4gKwo+
IAo+IFdlIHVzdWFsbHkgcHV0ICNpZmRlZiBDT05GSUdfQUNQSS8jZW5kaWYgYXJvdW5kIHRoZXNl
LCBvdGhlcndpc2UgeW91Cj4gZW5kIHVwIHdpdGggYWNwaTpYWFhYIG1vZGFsaWFzZXMgZXZlbiB0
aG91Z2ggQUNQSSBpcyBub3QgY29tcGlsZWQgaW4uCgpObyBwcm9ibGVtLgoKPiA+ICBzdGF0aWMg
aW50IGdlbmlfaTJjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiAgewo+
ID4gICAgICAgICBzdHJ1Y3QgZ2VuaV9pMmNfZGV2ICpnaTJjOwo+ID4gQEAgLTUwMiw3ICs1MDks
NyBAQCBzdGF0aWMgaW50IGdlbmlfaTJjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCj4gPiAgICAgICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIoZ2kyYy0+c2UuYmFzZSk7Cj4g
Pgo+ID4gICAgICAgICBnaTJjLT5zZS5jbGsgPSBkZXZtX2Nsa19nZXQoJnBkZXYtPmRldiwgInNl
Iik7Cj4gCj4gQ2FuIHdlIGF2b2lkIHRoaXMgY2FsbCBhbHRvZ2V0aGVyIGluIEFDUEkgbW9kZT8g
QWxzbywgcGxlYXNlIHVzZQoKSSdtIHRyeWluZyBub3QgdG8gcGxhY2UgYWxsIG5vbi1BQ1BJIHNw
ZWNpZmljIGNhbGxlcnMgaW50byBpZiAoKQpzdGF0ZW1lbnRzLiAgVGhlIHRhYmJpbmcgYmVjb21l
cyByaWRpY3Vsb3VzIGluIHNvbWUgcGxhY2VzLiAgQSBncmVhdApkZWFsIG9mIHRoZXNlIGNhbGxz
IGFyZSByZXF1ZXN0aW5nIG9wdGlvbmFsIHJlc291cmNlcyB0b28sIHNvIGl0J3MKYmV0dGVyIHRv
IHNpbXBseSBpZ25vcmUgdGhlIHJldHVybmluZyBlcnJvciBpbiB0aGUgY2FzZXMgd2hlcmUKbm9u
LW9wdGlvbmFsIHJlc291cmNlcyAoc3VjaCBhcyB0aGlzIG9uZSkgYXJlIHJlcXVlc3RlZCwgc2lu
Y2UgaXQgaGFzCnRoZSBsZWFzdCBpbXBhY3Qgb24gdGhlIGV4aXN0aW5nIGNvZGUuCgo+ICdoYXNf
YWNwaV9jb21wYW5pb24oKScgdG8gdGVzdCB3aGV0aGVyIHdlIGFyZSBwcm9iaW5nIHZpYSBBQ1BJ
LgoKU3VyZS4KCj4gPiAtICAgICAgIGlmIChJU19FUlIoZ2kyYy0+c2UuY2xrKSkgewo+ID4gKyAg
ICAgICBpZiAoSVNfRVJSKGdpMmMtPnNlLmNsaykgJiYgIUFDUElfSEFORExFKCZwZGV2LT5kZXYp
KSB7Cj4gCj4gCj4gPiAgICAgICAgICAgICAgICAgcmV0ID0gUFRSX0VSUihnaTJjLT5zZS5jbGsp
Owo+ID4gICAgICAgICAgICAgICAgIGRldl9lcnIoJnBkZXYtPmRldiwgIkVyciBnZXR0aW5nIFNF
IENvcmUgY2xrICVkXG4iLCByZXQpOwo+ID4gICAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4g
PiBAQCAtNTEwLDEyICs1MTcsMTkgQEAgc3RhdGljIGludCBnZW5pX2kyY19wcm9iZShzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4KPiA+ICAgICAgICAgcmV0ID0gZGV2aWNlX3Byb3Bl
cnR5X3JlYWRfdTMyKCZwZGV2LT5kZXYsICJjbG9jay1mcmVxdWVuY3kiLAo+ID4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmZ2kyYy0+Y2xr
X2ZyZXFfb3V0KTsKPiA+IC0gICAgICAgaWYgKHJldCkgewo+ID4gKyAgICAgICBpZiAocmV0ICYm
ICFBQ1BJX0hBTkRMRSgmcGRldi0+ZGV2KSkgewo+ID4gICAgICAgICAgICAgICAgIGRldl9pbmZv
KCZwZGV2LT5kZXYsCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAiQnVzIGZyZXF1ZW5jeSBu
b3Qgc3BlY2lmaWVkLCBkZWZhdWx0IHRvIDEwMGtIei5cbiIpOwo+ID4gICAgICAgICAgICAgICAg
IGdpMmMtPmNsa19mcmVxX291dCA9IEtIWigxMDApOwo+ID4gICAgICAgICB9Cj4gPgo+ID4gKyAg
ICAgICBpZiAoQUNQSV9IQU5ETEUoJnBkZXYtPmRldikpIHsKPiA+ICsgICAgICAgICAgICAgICBB
Q1BJX0NPTVBBTklPTl9TRVQoJmdpMmMtPmFkYXAuZGV2LCBBQ1BJX0NPTVBBTklPTigmcGRldi0+
ZGV2KSk7Cj4gPiArCj4gPiArICAgICAgICAgICAgICAgLyogVXNpbmcgZGVmYXVsdCwgc2FtZSBh
cyB0aGUgIUFDUEkgY2FzZSBhYm92ZSAqLwo+ID4gKyAgICAgICAgICAgICAgIGdpMmMtPmNsa19m
cmVxX291dCA9IEtIWigxMDApOwo+ID4gKyAgICAgICB9Cj4gPiArCj4gCj4gWW91IGFyZSBvdmVy
cmlkaW5nIHRoZSBzcGVlZCB0byAxMDAga0h6IGV2ZW4gaWYgdGhlIEFDUEkgZGV2aWNlIGhhcyBh
Cj4gImNsb2NrLWZyZXF1ZW5jeSIgcHJvcGVydHkuCgpXaWxsIGxvb2sgYXQgdGhpcy4KClRoYW5r
cyBBcmQuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmlj
YWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MK
Rm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
