Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B26213B02D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 10:03:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ktHQSMJeTp4o1tnv7Zl4HRsFU+h2JL0O6k5pvwBre3I=; b=IbQGoG1uUfnkue
	HugGdlph/eciJfU8b83c9J8Pw713xaoH62DsFYD8dO9Jwj0nwn34gdbuyB2Px6kNItCP4Bkv/28Zr
	7W7DzjTu5mkxCQtSyo9987ugt+LwkxFVPEiq8zAN7zenTt9gn27oufRUw7nYAPvyDFF4Mq3CvYZ0o
	JTdsOxAHUBiWIJ9XbTGR/qt/U+3mHoB0o0dEh0FN/v2MP71pLZSzuSc5UE23ImnFH19FZHoUIvajR
	4Wd7VmSt2jqsxuJ4M/+yHTNm5+TW+1v6QeRexvPJeqPIZFOSwPTw0zX+l9M+FAiIHTgLTDr7fzKAS
	6KQljxLYf2yFTr7yPfqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haFGw-00087y-SU; Mon, 10 Jun 2019 08:03:19 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haFGi-00087H-P1
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 08:03:06 +0000
Received: by mail-wm1-x344.google.com with SMTP id z23so7160331wma.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 01:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=u82TTwb8ixlFfrNUJnFoGiqW7vUPbpvM9WdQFkW0Sgo=;
 b=ILTcYwTEN0sqsAHKFcmwrFWMuSfyNM1NchlalYVj8bFmYmVu6fm/AHxWHvy+r5vmfm
 0D/FGWCMsEkO/oOofk0C0YtrlvwLhDhYC6an9C7JRnbAARt2r2tBQZXsQqDKGziDxVjc
 Z/aZhho0FcHYIrxyszQIHhvUw5nWnk2+Epw+hO8WzVSlHagZmy+fE4XxMeN0HLfY1fQa
 YcPAqgiPJxAsz78MsL6jn7fb3aAuGThiJ1jBNR2QdIz2RihvMb2NwDFsB9DqgMnDwIB3
 ZzJ3nTCgumg+ALD2kzR59+lC7LqoxXgFTJvASWAsgttbe5X+Qgz1Nff8floBpqRHbNKG
 jVQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=u82TTwb8ixlFfrNUJnFoGiqW7vUPbpvM9WdQFkW0Sgo=;
 b=UjxvxMA4qjv1xYiJ9zDioQZfAncxk9Nv/ieY6SD8T6fFT1pWZaoa5r0PlEIxOBrwMN
 BJS2iXakWvbkY0QlEh3j4yoCS3j5rAFV1UYJxF9V46PXOID2Z6P9e4G4qL07yOtg62Nb
 GHuC5rbWZOjqLuxFkwH/9wLAccLoCNb2Hqf1LFy5xKyyKCtCEvx1qlGhcoe377ryFMsF
 k5kxsS2pat7LTCurDyovB3ZZBTeXLVAqpV8MUEpH+cchLgrZlkxlNmkh8iagu2s+OC7f
 sA8J8VckPAuBcCrsnxH0TCstTs5U3OzuOJAaVsWQoMfmzjMWwY1EUVeABVhfv3YcVy+b
 MD7Q==
X-Gm-Message-State: APjAAAXN8b+n4KFWSf+54BFcjA5yN9EZDjwH8tswVF9dJD5LggPKjyjS
 tGS8wIDw4b3xCOsyu0EIikT94g==
X-Google-Smtp-Source: APXvYqz65id5SFfU8rn9yGZIaRt4Ct2BsHn+rIV/wkq2ik8juXBU/IcNLZAF70j8d/PFOU51TXB9nQ==
X-Received: by 2002:a1c:8a:: with SMTP id 132mr9007662wma.44.1560153780728;
 Mon, 10 Jun 2019 01:03:00 -0700 (PDT)
Received: from dell ([2.31.167.229])
 by smtp.gmail.com with ESMTPSA id s8sm16879674wra.55.2019.06.10.01.02.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 10 Jun 2019 01:03:00 -0700 (PDT)
Date: Mon, 10 Jun 2019 09:02:58 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 3/8] pinctrl: msm: Add ability for drivers to supply a
 reserved GPIO list
Message-ID: <20190610080258.GI4797@dell>
References: <20190605114302.22509-1-lee.jones@linaro.org>
 <20190605114302.22509-3-lee.jones@linaro.org>
 <20190608040610.GJ24059@builder>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190608040610.GJ24059@builder>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_010304_825183_772307C2 
X-CRM114-Status: GOOD (  22.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 david.brown@linaro.org, alokc@codeaurora.org, linux-i2c@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 andy.gross@linaro.org, jlhugo@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAwNyBKdW4gMjAxOSwgQmpvcm4gQW5kZXJzc29uIHdyb3RlOgoKPiBPbiBXZWQgMDUg
SnVuIDA0OjQyIFBEVCAyMDE5LCBMZWUgSm9uZXMgd3JvdGU6Cj4gCj4gPiBXaGVuIGJvb3Rpbmcg
TVNNIGJhc2VkIHBsYXRmb3JtcyB3aXRoIERldmljZSBUcmVlIG9yIHNvbWUgQUNQSQo+ID4gaW1w
bGVtZW50YXRpb25zLCBpdCBpcyBwb3NzaWJsZSB0byBwcm92aWRlIGEgbGlzdCBvZiByZXNlcnZl
ZCBwaW5zCj4gPiB2aWEgdGhlICdncGlvLXJlc2VydmVkLXJhbmdlcycgYW5kICdncGlvcycgcHJv
cGVydGllcyByZXNwZWN0aXZlbHkuCj4gPiBIb3dldmVyIHNvbWUgQUNQSSB0YWJsZXMgYXJlIG5v
dCBwb3B1bGF0ZWQgd2l0aCB0aGlzIGluZm9ybWF0aW9uLAo+ID4gdGh1cyBpdCBoYXMgdG8gY29t
ZSBmcm9tIGEga25vd2xlZGdhYmxlIGRldmljZSBkcml2ZXIgaW5zdGVhZC4KPiA+IAo+ID4gSGVy
ZSB3ZSBwcm92aWRlIHRoZSBNU00gY29tbW9uIGRyaXZlciB3aXRoIGFkZGl0aW9uYWwgc3VwcG9y
dCB0bwo+ID4gcGFyc2UgdGhpcyBpbmZvcm10aW9uIGFuZCBjb3JyZWN0bHkgcG9wdWxhdGUgdGhl
IHdpZGVseSB1c2VkCj4gPiAndmFsaWRfbWFzaycuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IExl
ZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3BpbmN0
cmwvcWNvbS9waW5jdHJsLW1zbS5jIHwgMTggKysrKysrKysrKysrKysrKysrCj4gPiAgZHJpdmVy
cy9waW5jdHJsL3Fjb20vcGluY3RybC1tc20uaCB8ICAxICsKPiA+ICAyIGZpbGVzIGNoYW5nZWQs
IDE5IGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGluY3RybC9x
Y29tL3BpbmN0cmwtbXNtLmMgYi9kcml2ZXJzL3BpbmN0cmwvcWNvbS9waW5jdHJsLW1zbS5jCj4g
PiBpbmRleCBlZTgxMTk4NzljNGMuLjNhYzc0MGIzNjUwOCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZl
cnMvcGluY3RybC9xY29tL3BpbmN0cmwtbXNtLmMKPiA+ICsrKyBiL2RyaXZlcnMvcGluY3RybC9x
Y29tL3BpbmN0cmwtbXNtLmMKPiA+IEBAIC02MDcsOCArNjA3LDIzIEBAIHN0YXRpYyBpbnQgbXNt
X2dwaW9faW5pdF92YWxpZF9tYXNrKHN0cnVjdCBncGlvX2NoaXAgKmNoaXApCj4gPiAgCWludCBy
ZXQ7Cj4gPiAgCXVuc2lnbmVkIGludCBsZW4sIGk7Cj4gPiAgCXVuc2lnbmVkIGludCBtYXhfZ3Bp
b3MgPSBwY3RybC0+c29jLT5uZ3Bpb3M7Cj4gPiArCWNvbnN0IGludCAqcmVzZXJ2ZWQgPSBwY3Ry
bC0+c29jLT5yZXNlcnZlZF9ncGlvczsKPiA+ICAJdTE2ICp0bXA7Cj4gPiAgCj4gPiArCS8qIERy
aXZlciBwcm92aWRlZCByZXNlcnZlZCBsaXN0IG92ZXJyaWRlcyBEVCBhbmQgQUNQSSAqLwo+ID4g
KwlpZiAocmVzZXJ2ZWQpIHsKPiA+ICsJCWJpdG1hcF9maWxsKGNoaXAtPnZhbGlkX21hc2ssIG1h
eF9ncGlvcyk7Cj4gPiArCQlmb3IgKGkgPSAwOyByZXNlcnZlZFtpXSA+PSAwOyBpKyspIHsKPiA+
ICsJCQlpZiAoaSA+PSBtYXhfZ3Bpb3MgfHwgcmVzZXJ2ZWRbaV0gPj0gbWF4X2dwaW9zKSB7Cj4g
Cj4gcmVzZXJ2ZWQgaXMgYSBsaXN0IG9mIEdQSU9zIHRvIHJlc2VydmUsIEkgZG9uJ3Qgc2VlIGEg
cmVhc29uIHRvIGNoZWNrCj4gaWYgdGhhdCBsaXN0IGlzIGxvbmdlciB0aGFuIHRoZSBudW1iZXIg
b2YgR1BJT3MgKGkuZS4gdGhlIGZpcnN0IGhhbGYgb2YKPiB0aGUgY29uZGl0aW9uKS4KPiAKPiBJ
dCB3b3VsZG4ndCBtYWtlIHNlbnNlIHRvIGJlLCBidXQgdGhlcmUncyBubyBsb2dpY2FsIGlzc3Vl
IHdpdGggaXQgYW5kIEkKPiBoYWQgdG8gcmVhZCB0aGUgY29uZGl0aW9uYWwgYSBmZXcgZXh0cmEg
dGltZXMgdG8gYmUgc3VyZSB3aGF0IHdhcyBnb2luZwo+IG9uLgoKSWYgbm90aGluZyBlbHNlLCBp
dCdzIGFuIGVhcmx5IGhhcmQgc3RvcCBpbiBjYXNlIHNvbWVvbmUgZm9yZ290IHRvCnRlcm1pbmF0
ZSB0aGUgcmVzZXJ2ZWQgYXJyYXkuCgo+IEFwYXJ0IGZyb20gdGhhdCB5b3UgaGF2ZSBteQo+IAo+
IFJldmlld2VkLWJ5OiBCam9ybiBBbmRlcnNzb24gPGJqb3JuLmFuZGVyc3NvbkBsaW5hcm8ub3Jn
PgoKVGhhbmtzIEJqb3JuLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2Vydmlj
ZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9y
IEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
