Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DDDAF8B7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 11:18:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6xSpzvKgz+OCqK8fCDvRaRBuZD6PfzmiIBnxHtNm7c=; b=H9KbUGONmk8OwP
	PKM0aRbh7SP8L4OkFQ0sFyXzWIhRtUx/AtmIJqNhamCWh+Fzj+cyc3Dz2Ll23+M28wq8yEAWMMqVU
	44W1l1oGHp3jvXhaYKNmrXBYYj3xbVnrdoP5Z9vSITI9Kjc3UzthXcP4u67mzFP3q3R/BYoupGpX4
	ul7d61yy2o7Iue5djZPmuh+qXDoKpsu4Opjv/miU8Qn16DJknYEbeVOO0uJYmNSQl/eJNlUNqP43U
	159lt0M5gBVke9N1wDB57mPf8PhYOQkIyaB3zmI+MhzO82ivlSBnQmPXPLzfjHJmoOuH/3r4mBVuy
	RjT3n2ZgFVq1mAAhOzaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7ylZ-0000AW-7l; Wed, 11 Sep 2019 09:18:21 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7yko-00009s-04
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 09:17:35 +0000
Received: by mail-wr1-x442.google.com with SMTP id l16so23554600wrv.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 02:17:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=CvSWNGsfSG1sshb9s1EDdJReSoxTISoAGD+1pfVDxyc=;
 b=F7q/rlCVfShEWRlTFaXZoWsn7ac1oQJJyQuElIuIsdCUY73256m3uxItJ4dxeLme/e
 btftQ3Yxe1a2Z8qIWTg50DgpkXymF/RAKCfeQrPFunaUhp6aOzxr8GIPSMCeguLIv5Yy
 QT8K1ALdIXrZyAyYM3dX55uiMzgNVBSUQ1shR4mFLfYqMZAPbSlIoKAj3IrYhtpinEvx
 MHzGfx5nf/mmLUYWEkXAmd3hHcFD5mO6TVantjHMklWNizc8xI12U3bZpkMyWNgu2hbm
 k9DqNqVfJutzS8OG2XbE4aRAGB7IR7eKLql3rojiURJHcXngyvzrs8qN0OWpboBS6vcd
 9g5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=CvSWNGsfSG1sshb9s1EDdJReSoxTISoAGD+1pfVDxyc=;
 b=XdFyMpB55+F8f1AXwxeOSTxTnLDsHrDjtDMF6TOD8qCvstX+UEpgMBnOtWROs5fnXT
 huloZlqarbnaOFcTA11jGgp6ncNzfbI+AyINiDWf21kzen9ULiw++U7Azdz2bBUeKsJO
 dyrBXsQJKBqA2stjYjSuPt1l7/B7wNA6R0m1PykIROl3Zlgqwf2vZ1KVtumaDEbNjxmP
 2JJ1KERIg084Kj4Zn4VvbXjAUK+YbhqiiT4u6PEZIjcjhBWnWblqWUNyZVO5UZ1sDaQU
 CiAlwEDJBlXnHgHPvRBnPXpEZWWqqOkSrJ3xQuPX358miCEZFbmKT8tGq3Yu5g+lOqjH
 pm+w==
X-Gm-Message-State: APjAAAVBF4V3YyYztO2+DOI6znfYK3kVUhmAjhTwaF1DGvd+NM0dB2Bz
 HhWBrWQMFtNo11BWCzPXrEFM/w==
X-Google-Smtp-Source: APXvYqxRMwsayDYeAxgwWdYFhf0lJ7v5s5sqVxMyGnluLJElV52fQ9ESHXB/Xyu87A+TkMV/wNA4KQ==
X-Received: by 2002:adf:e388:: with SMTP id e8mr1342609wrm.306.1568193451950; 
 Wed, 11 Sep 2019 02:17:31 -0700 (PDT)
Received: from linaro.org ([148.69.85.38])
 by smtp.gmail.com with ESMTPSA id v7sm17985808wru.87.2019.09.11.02.17.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 11 Sep 2019 02:17:31 -0700 (PDT)
Date: Wed, 11 Sep 2019 11:17:28 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH 1/2] arm64: dts: imx8mm: Remove incorrect fallback
 compatible for ocotp
Message-ID: <20190911091728.GA10331@linaro.org>
References: <1568211887-19318-1-git-send-email-Anson.Huang@nxp.com>
 <749f8dc6-dbf9-127c-9924-33432b8af00a@linaro.org>
 <DB3PR0402MB3916E0F566E35DD30275A8E9F5B10@DB3PR0402MB3916.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB3PR0402MB3916E0F566E35DD30275A8E9F5B10@DB3PR0402MB3916.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_021734_046318_389080D1 
X-CRM114-Status: GOOD (  18.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jacky Bai <ping.bai@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jun Li <jun.li@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBTZXAgMTEsIDIwMTkgYXQgMDk6MDU6NDlBTSArMDAwMCwgQW5zb24gSHVhbmcgd3Jv
dGU6Cj4gSGksIERhbmllbAo+IAo+ID4gT24gMTEvMDkvMjAxOSAxNjoyNCwgQW5zb24gSHVhbmcg
d3JvdGU6Cj4gPiA+IENvbXBhcmVkIHRvIGkuTVg3RCwgaS5NWDhNTSBoYXMgZGlmZmVyZW50IG9j
b3RwIGxheW91dCwgc28gaXQgc2hvdWxkCj4gPiA+IE5PVCB1c2UgImZzbCxpbXg3ZC1vY290cCIg
YXMgb2NvdHAncyBmYWxsYmFjayBjb21wYXRpYmxlLCByZW1vdmUgaXQuCj4gPiA+Cj4gPiA+IFNp
Z25lZC1vZmYtYnk6IEFuc29uIEh1YW5nIDxBbnNvbi5IdWFuZ0BueHAuY29tPgo+ID4gPiAtLS0K
PiA+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtbS5kdHNpIHwgMiArLQo+
ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+
Cj4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bW0u
ZHRzaQo+ID4gPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtbS5kdHNpCj4g
PiA+IGluZGV4IDVmOWQwZGEuLjdjNGRjY2UgMTAwNjQ0Cj4gPiA+IC0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvZnJlZXNjYWxlL2lteDhtbS5kdHNpCj4gPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvZnJlZXNjYWxlL2lteDhtbS5kdHNpCj4gPiA+IEBAIC00MjYsNyArNDI2LDcgQEAKPiA+
ID4gIAkJCX07Cj4gPiA+Cj4gPiA+ICAJCQlvY290cDogb2NvdHAtY3RybEAzMDM1MDAwMCB7Cj4g
PiA+IC0JCQkJY29tcGF0aWJsZSA9ICJmc2wsaW14OG1tLW9jb3RwIiwgImZzbCxpbXg3ZC0KPiA+
IG9jb3RwIiwgInN5c2NvbiI7Cj4gPiA+ICsJCQkJY29tcGF0aWJsZSA9ICJmc2wsaW14OG1tLW9j
b3RwIiwgInN5c2NvbiI7Cj4gPiA+ICAJCQkJcmVnID0gPDB4MzAzNTAwMDAgMHgxMDAwMD47Cj4g
PiA+ICAJCQkJY2xvY2tzID0gPCZjbGsgSU1YOE1NX0NMS19PQ09UUF9ST09UPjsKPiA+ID4gIAkJ
CQkvKiBGb3IgbnZtZW0gc3Vibm9kZXMgKi8KPiA+IAo+ID4gV2h5IG5vdCBmb2xkIHRoZSB0d28g
cGF0Y2hlcz8KPiAKPiBGb3IgaS5NWDhNTSwgaXQganVzdCByZW1vdmVzIHRoZSBpbmNvcnJlY3Qg
ZmFsbGJhY2sgY29tcGF0aWJsZSwgZm9yIGkuTVg4TU4sIGl0IG5lZWRzCj4gdG8gcmVwbGFjZSB0
aGUgaW5jb3JyZWN0IGZhbGxiYWNrIGNvbXBhdGlibGUgaW4gb3JkZXIgdG8gc3VwcG9ydCBTb0Mg
VUlEIHJlYWQsIHNvIEkgdGhpbmsKPiB0aGlzIHNob3VsZCBiZSAyIHNlcGFyYXRlIHBhdGNoPwoK
T2gsIHllcywgdGhlcmUgaXMgYSBzdWJ0bGUgZGlmZmVyZW5jZSBpbiB0aGUgZmlsZSBuYW1lIDop
IG18bi4gSSB1bmRlcnN0YW5kCm5vdyB3aHkgeW91IHNwbGl0dGVkIGl0LgoKCi0tIAoKIDxodHRw
Oi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBm
b3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFn
ZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBU
d2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
