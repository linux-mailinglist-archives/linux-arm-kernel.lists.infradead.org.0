Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7307A81FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 14:18:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bay5ACzPHXgTrQRe6AfwIdEKbI++zgMm52gN5DhaVb8=; b=WQEdLnHYZaK32W
	WPLxaX/cWyKMotM9+fhqjIS2AStitxLmvpfo7VdBQwlZH8i1rR6ls5vMU0b8I3bkFdv4aF6l7mTNc
	hZmQp2hRdaAjTnZgRh96hdwtBwV0sSmYn4zyJ3ICI8aDJ8O6l69vSwtnWE9zR9U4XKTL15H3X2JGN
	zn7aXHd4lksOaaL7Cjmd9SEZL1raRgNTAZ5K9fd86mV//SasURR6nmsHd/gRxx5XSfSXp1bMTY3n0
	HT3KDtt9dVurEljs4a+ZT9Czbg3P7yNoeBIrNKxX7hifozfEIH/wqeh07ibY+VJdqae2ajHNetcby
	3nip0epFAn3MDG0P13iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5UF1-0004Q1-A2; Wed, 04 Sep 2019 12:18:27 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5UEl-0004PY-Gp
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 12:18:12 +0000
Received: by mail-wm1-x343.google.com with SMTP id t9so3444159wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 05:18:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=ZUNvCNl71LL7bsOV2q3vh455zcpyuXw4iwVhdFBYbko=;
 b=qWT8T8t8cXk3gJqp5zZ0LNwl++o68vkXUweIMe4C+BVD3OYH5teo1CMvNy5D2/RyyY
 1fek0ayL+6+lhLrZh5sPHjSmhWZRGC8xrEgsyrz3zMX/Jwmrf+nM01GoUmZiKg1wih+x
 1RLARPW/5pG83iO/faxDUIegwvDNqu+nhMjJlH2XdnKoOjWJH8hd5WiPX7SacnpYZjbG
 lYMwjf/o9sXMgGDqoYGqvOkzMqVQJQz9eEe3CLsaeYPHol3m+ZlGCF14PG1MsYs6GyP2
 qxMkDEB+evV/eJquxuYh8kjTXd+OcpKBmB9/LOlrNG9hXTtYUH8NGu9q5kW8B3Lki7sQ
 OL6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=ZUNvCNl71LL7bsOV2q3vh455zcpyuXw4iwVhdFBYbko=;
 b=sW6YcxNBZQ26KlTcI4KjcGYiOZTUB4tC9pb8jCif+xW0lmKoARXokRmEngcRUu0Irw
 Ou1ptsDvz3zMZbkxl2r1nwEN8/gLDG04HDguJYQDa5GzHQwfQTpzPk9BuwzJwQRhbOla
 FH0FCvnLJxHfaurRZXqh3NWGzPJ+ReGNlI4NIcIS7vvdtFQ1I0U+YEk3kyEzWY2dOq9q
 BxvQGD2kYNtqzbm2JxKn1SNtf/AvrVDCJ1Quur1pfWzQRbxVhlydP1WWFpV5XrT2W8Wl
 F4B38VZgJMWfWlhwtc4uqRILFcYZsQ5+LXBLbcdshAW7LBwS6ZXxJZzIvP7pqlUhSZbW
 wLSw==
X-Gm-Message-State: APjAAAUqkv1gfjh4aLN2SfxzMvpXWt8bRqj+8vtN9mU5dcU5eeU2Z60n
 EEwA3HYqEi5gelDVqt26gX/fLw==
X-Google-Smtp-Source: APXvYqy5ydGI/DCwg82bhVMUvfPqZPtc/DZDbnOwai2+G18YLAiMRjy7v6kAEkXBPu3TkQ152a/7sg==
X-Received: by 2002:a1c:f910:: with SMTP id x16mr3869419wmh.173.1567599489980; 
 Wed, 04 Sep 2019 05:18:09 -0700 (PDT)
Received: from dell ([95.147.198.36])
 by smtp.gmail.com with ESMTPSA id d18sm29560180wra.91.2019.09.04.05.18.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 04 Sep 2019 05:18:09 -0700 (PDT)
Date: Wed, 4 Sep 2019 13:18:07 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH 1/2] i2c: qcom-geni: Provide an option to select FIFO
 processing
Message-ID: <20190904121807.GK26880@dell>
References: <20190904113613.14997-1-lee.jones@linaro.org>
 <20190904115609.GW2672@vkoul-mobl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904115609.GW2672@vkoul-mobl>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_051811_565785_E86F290F 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, agross@kernel.org,
 robh+dt@kernel.org, bjorn.andersson@linaro.org, alokc@codeaurora.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwNCBTZXAgMjAxOSwgVmlub2QgS291bCB3cm90ZToKCj4gT24gMDQtMDktMTksIDEy
OjM2LCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5q
b25lc0BsaW5hcm8ub3JnPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1xY29t
LWdlbmkuYyB8IDE0ICsrKysrKysrKystLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2ky
Yy9idXNzZXMvaTJjLXFjb20tZ2VuaS5jIGIvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1xY29tLWdl
bmkuYwo+ID4gaW5kZXggYTg5YmZjZTUzODhlLi5kZmRiY2UwNjc4MjcgMTAwNjQ0Cj4gPiAtLS0g
YS9kcml2ZXJzL2kyYy9idXNzZXMvaTJjLXFjb20tZ2VuaS5jCj4gPiArKysgYi9kcml2ZXJzL2ky
Yy9idXNzZXMvaTJjLXFjb20tZ2VuaS5jCj4gPiBAQCAtMzUzLDEzICszNTMsMTYgQEAgc3RhdGlj
IHZvaWQgZ2VuaV9pMmNfdHhfZnNtX3JzdChzdHJ1Y3QgZ2VuaV9pMmNfZGV2ICpnaTJjKQo+ID4g
IHN0YXRpYyBpbnQgZ2VuaV9pMmNfcnhfb25lX21zZyhzdHJ1Y3QgZ2VuaV9pMmNfZGV2ICpnaTJj
LCBzdHJ1Y3QgaTJjX21zZyAqbXNnLAo+ID4gIAkJCQl1MzIgbV9wYXJhbSkKPiA+ICB7Cj4gPiAr
CXN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAgPSBnaTJjLT5zZS5kZXYtPm9mX25vZGU7Cj4gPiAgCWRt
YV9hZGRyX3QgcnhfZG1hOwo+ID4gIAl1bnNpZ25lZCBsb25nIHRpbWVfbGVmdDsKPiA+IC0Jdm9p
ZCAqZG1hX2J1ZjsKPiA+ICsJdm9pZCAqZG1hX2J1ZiA9IE5VTEw7Cj4gPiAgCXN0cnVjdCBnZW5p
X3NlICpzZSA9ICZnaTJjLT5zZTsKPiA+ICAJc2l6ZV90IGxlbiA9IG1zZy0+bGVuOwo+ID4gIAo+
ID4gLQlkbWFfYnVmID0gaTJjX2dldF9kbWFfc2FmZV9tc2dfYnVmKG1zZywgMzIpOwo+ID4gKwlp
ZiAoIW9mX3Byb3BlcnR5X3JlYWRfYm9vbChucCwgInFjb20sZ2VuaS1zZS1maWZvIikpCj4gCj4g
V2hlcmUgaXMgdGhpcyBwcm9wZXJ0eSBkb2N1bWVudGVkLCBJIGRvbnQgc2VlIGFueXRoaW5nIGlu
IGxpbnV4LW5leHQgZm9yCj4gdG9kYXkKCkluIHRoaXMgc2V0LiA6KQoKLS0gCkxlZSBKb25lcyBb
5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIg
T3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29r
IHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
