Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDFB4ED64C
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 23:41:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WK9qnY6cEH0DFMig9Sgz1sKyYH4pACxqHf5QpQRBTYA=; b=Q53Es59veny99M
	yJQxsGeahGaG0NScIL/35ds+a1+ldXkaKmtMtq7wsM76eVZRDSzkCUTQy4KAMaVknH7RQLCBCBkHp
	+bLp70Dgayw7Rzb7+iAu4e3lwPVc/3sHneGpIuFIWYiwRoZaq1xB2/qhMv05W8Zq4q+dXeaIkpNdN
	kTWh/c1Gl0hsLpLpRQdVKOqNJi6dsOvWK0ZLLzWEB8I4bGrE51IkmFNNSKMKAFL9bh91+5Nmo43w1
	+byvbNbID92D6JxbWw8+8l2E+in8dGLGLAGuKyGRVe52akmLdfa38gspIB5rNgUJsyjv4aTG0xGxy
	kYejLobkpalRRjKRMzPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iROZB-0001dB-SH; Sun, 03 Nov 2019 22:41:49 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iROZ4-0001cZ-Le
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 22:41:44 +0000
Received: by mail-wm1-x343.google.com with SMTP id q130so14144822wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 Nov 2019 14:41:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=HucD2g+iFY7eRxKaYG+od4LZ3/It4oehK1OgkAW2Ebg=;
 b=otjkL/ALDBy2mJUdrrWFPnq2yf3HqrRGFDZE80/A8COATIC9Hc6JNFMRGgABBxOVAY
 P7RPsU30qmVptlpHZ+zLTWSe/vjyrTqJpw+tMt8LcWdzHz4qBAPwkWcePBzVCzTjzsEF
 OVIib/9Y5u7HBVgU1bZHNu52yPzhxSb+lDEMeHssv36yl/KJGMoxC57LQCrpM8q43qv6
 AeyTGh92EvqjtIi4Y2uNN2RJVIJjRvkbFWgK9e1mBbg4pkjmLXEs31mHXrAUztA1SJwE
 3oQ/KVwrOegtFu6EHPvLRNma05r0u8ht/ICBPzE7RawXhLC0M1rp8payzY6fzvv5v8Y5
 6nYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HucD2g+iFY7eRxKaYG+od4LZ3/It4oehK1OgkAW2Ebg=;
 b=Tz+Z68sYRhePBdpY/S5uw3cDGA3vGz2nc9JkIMm5Dp8wyrPEBvpv/v9h3xFQJo+KUI
 co+4YvRQ1CO/ZoM4hmz/HGumM0uFs+5W+d9cH+rwn1ihoaSVxbSYnMEIG/JfQzEuJA9b
 Gs0PsxV2tFbYsXv6olE4cSrclsZhku32kavCpu9MynVRMlFZRASuaeH2jzL+1GBID6rh
 3qpm0lo1oAM1pXvIQpAeQp3fOpcXSs8vMs/KFfAmRwHLFM1+5Ikd3NeDCSYFC1FtEE0x
 in3heCHa6i0bBfQ/ji2YmZmDeXHognGbOtpOaqMOaY0IB5V7pu/vkE8mf6QiTaCHt+Hy
 0eJw==
X-Gm-Message-State: APjAAAV8xJOsojgrBd9Jlqm/LkmITRsN3laDxdof3lxHBF+PZSLCTnPM
 Qo1F74NN7Mvc2WP0I5yET+hExgxl9SQp9kM2myg=
X-Google-Smtp-Source: APXvYqyPEG01MLTsUGrMY+CVoElO++aDFQdqiZWzgRrFyzj2FCjI2etJek/jIGaF5IazlkvECznyA2C6wFfHjsHLshs=
X-Received: by 2002:a1c:a512:: with SMTP id o18mr19098688wme.4.1572820900868; 
 Sun, 03 Nov 2019 14:41:40 -0800 (PST)
MIME-Version: 1.0
References: <20191103203334.10539-5-peron.clem@gmail.com>
 <201911040602.AEBKHjBk%lkp@intel.com>
In-Reply-To: <201911040602.AEBKHjBk%lkp@intel.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Sun, 3 Nov 2019 23:41:29 +0100
Message-ID: <CAJiuCcd-uBAuCNk36iRKNP9F7162tZScWX2aPDVxyYiHMuo1Fw@mail.gmail.com>
Subject: Re: [PATCH v2 4/7] pwm: sun4i: Add support to output source clock
 directly
To: kbuild test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_144142_734228_3DCA10A4 
X-CRM114-Status: GOOD (  21.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, kbuild-all@lists.01.org,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBTdW4sIDMgTm92IDIwMTkgYXQgMjM6MzAsIGtidWlsZCB0ZXN0IHJvYm90IDxsa3BA
aW50ZWwuY29tPiB3cm90ZToKPgo+IEhpICJDbMOpbWVudCwKPgo+IEkgbG92ZSB5b3VyIHBhdGNo
ISBZZXQgc29tZXRoaW5nIHRvIGltcHJvdmU6Cj4KPiBbYXV0byBidWlsZCB0ZXN0IEVSUk9SIG9u
IHN1bnhpL3N1bnhpL2Zvci1uZXh0XQo+IFthbHNvIGJ1aWxkIHRlc3QgRVJST1Igb24gdjUuNC1y
YzUgbmV4dC0yMDE5MTAzMV0KPiBbaWYgeW91ciBwYXRjaCBpcyBhcHBsaWVkIHRvIHRoZSB3cm9u
ZyBnaXQgdHJlZSwgcGxlYXNlIGRyb3AgdXMgYSBub3RlIHRvIGhlbHAKPiBpbXByb3ZlIHRoZSBz
eXN0ZW0uIEJUVywgd2UgYWxzbyBzdWdnZXN0IHRvIHVzZSAnLS1iYXNlJyBvcHRpb24gdG8gc3Bl
Y2lmeSB0aGUKPiBiYXNlIHRyZWUgaW4gZ2l0IGZvcm1hdC1wYXRjaCwgcGxlYXNlIHNlZSBodHRw
czovL3N0YWNrb3ZlcmZsb3cuY29tL2EvMzc0MDY5ODJdCj4KPiB1cmw6ICAgIGh0dHBzOi8vZ2l0
aHViLmNvbS8wZGF5LWNpL2xpbnV4L2NvbW1pdHMvQ2wtbWVudC1QLXJvbi9BZGQtc3VwcG9ydC1m
b3ItSDYtUFdNLzIwMTkxMTA0LTA0MzYyMQo+IGJhc2U6ICAgaHR0cHM6Ly9naXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvc3VueGkvbGludXguZ2l0IHN1bnhpL2Zvci1uZXh0
Cj4gY29uZmlnOiByaXNjdi1hbGxtb2Rjb25maWcgKGF0dGFjaGVkIGFzIC5jb25maWcpCj4gY29t
cGlsZXI6IHJpc2N2NjQtbGludXgtZ2NjIChHQ0MpIDcuNC4wCj4gcmVwcm9kdWNlOgo+ICAgICAg
ICAgd2dldCBodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vaW50ZWwvbGtwLXRlc3Rz
L21hc3Rlci9zYmluL21ha2UuY3Jvc3MgLU8gfi9iaW4vbWFrZS5jcm9zcwo+ICAgICAgICAgY2ht
b2QgK3ggfi9iaW4vbWFrZS5jcm9zcwo+ICAgICAgICAgIyBzYXZlIHRoZSBhdHRhY2hlZCAuY29u
ZmlnIHRvIGxpbnV4IGJ1aWxkIHRyZWUKPiAgICAgICAgIEdDQ19WRVJTSU9OPTcuNC4wIG1ha2Uu
Y3Jvc3MgQVJDSD1yaXNjdgo+Cj4gSWYgeW91IGZpeCB0aGUgaXNzdWUsIGtpbmRseSBhZGQgZm9s
bG93aW5nIHRhZwo+IFJlcG9ydGVkLWJ5OiBrYnVpbGQgdGVzdCByb2JvdCA8bGtwQGludGVsLmNv
bT4KPgo+IEFsbCBlcnJvcnMgKG5ldyBvbmVzIHByZWZpeGVkIGJ5ID4+KToKPgo+ICAgIGRyaXZl
cnMvL3B3bS9wd20tc3VuNGkuYzogSW4gZnVuY3Rpb24gJ3N1bjRpX3B3bV9nZXRfc3RhdGUnOgo+
ID4+IGRyaXZlcnMvL3B3bS9wd20tc3VuNGkuYzoxMzI6NjogZXJyb3I6ICdkYXRhJyB1bmRlY2xh
cmVkIChmaXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlvbikKPiAgICAgICAgICBkYXRhLT5oYXNfZGly
ZWN0X21vZF9jbGtfb3V0cHV0KSB7Cj4gICAgICAgICAgXn5+fgoKQXJnLCBiYWQgbGFzdCBtaW51
dGUgaW5kZW50IGZpeCA6ClRoaXMgc2hvdWxkIGJlICJzdW40aV9wd20tPmRhdGEtPmhhc19kaXJl
Y3RfbW9kX2Nsa19vdXRwdXQiCgpTb3JyeSBmb3IgdGhhdCwKQ2zDqW1lbnQKCj4gICAgZHJpdmVy
cy8vcHdtL3B3bS1zdW40aS5jOjEzMjo2OiBub3RlOiBlYWNoIHVuZGVjbGFyZWQgaWRlbnRpZmll
ciBpcyByZXBvcnRlZCBvbmx5IG9uY2UgZm9yIGVhY2ggZnVuY3Rpb24gaXQgYXBwZWFycyBpbgo+
Cj4gdmltICsvZGF0YSArMTMyIGRyaXZlcnMvL3B3bS9wd20tc3VuNGkuYwo+Cj4gICAgMTEyCj4g
ICAgMTEzICBzdGF0aWMgdm9pZCBzdW40aV9wd21fZ2V0X3N0YXRlKHN0cnVjdCBwd21fY2hpcCAq
Y2hpcCwKPiAgICAxMTQgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IHB3
bV9kZXZpY2UgKnB3bSwKPiAgICAxMTUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
c3RydWN0IHB3bV9zdGF0ZSAqc3RhdGUpCj4gICAgMTE2ICB7Cj4gICAgMTE3ICAgICAgICAgIHN0
cnVjdCBzdW40aV9wd21fY2hpcCAqc3VuNGlfcHdtID0gdG9fc3VuNGlfcHdtX2NoaXAoY2hpcCk7
Cj4gICAgMTE4ICAgICAgICAgIHU2NCBjbGtfcmF0ZSwgdG1wOwo+ICAgIDExOSAgICAgICAgICB1
MzIgdmFsOwo+ICAgIDEyMCAgICAgICAgICB1bnNpZ25lZCBpbnQgcHJlc2NhbGVyOwo+ICAgIDEy
MQo+ICAgIDEyMiAgICAgICAgICBjbGtfcmF0ZSA9IGNsa19nZXRfcmF0ZShzdW40aV9wd20tPmNs
ayk7Cj4gICAgMTIzCj4gICAgMTI0ICAgICAgICAgIHZhbCA9IHN1bjRpX3B3bV9yZWFkbChzdW40
aV9wd20sIFBXTV9DVFJMX1JFRyk7Cj4gICAgMTI1Cj4gICAgMTI2ICAgICAgICAgIC8qCj4gICAg
MTI3ICAgICAgICAgICAqIFBXTSBjaGFwdGVyIGluIEg2IG1hbnVhbCBoYXMgYSBkaWFncmFtIHdo
aWNoIGV4cGxhaW5zIHRoYXQgaWYgYnlwYXNzCj4gICAgMTI4ICAgICAgICAgICAqIGJpdCBpcyBz
ZXQsIG5vIG90aGVyIHNldHRpbmcgaGFzIGFueSBtZWFuaW5nLiBFdmVuIG1vcmUsIGV4cGVyaW1l
bnQKPiAgICAxMjkgICAgICAgICAgICogcHJvdmVkIHRoYXQgYWxzbyBlbmFibGUgYml0IGlzIGln
bm9yZWQgaW4gdGhpcyBjYXNlLgo+ICAgIDEzMCAgICAgICAgICAgKi8KPiAgICAxMzEgICAgICAg
ICAgaWYgKCh2YWwgJiBCSVRfQ0goUFdNX0JZUEFTUywgcHdtLT5od3B3bSkpICYmCj4gID4gMTMy
ICAgICAgICAgICAgICBkYXRhLT5oYXNfZGlyZWN0X21vZF9jbGtfb3V0cHV0KSB7Cj4gICAgMTMz
ICAgICAgICAgICAgICAgICAgc3RhdGUtPnBlcmlvZCA9IERJVl9ST1VORF9DTE9TRVNUX1VMTChO
U0VDX1BFUl9TRUMsIGNsa19yYXRlKTsKPiAgICAxMzQgICAgICAgICAgICAgICAgICBzdGF0ZS0+
ZHV0eV9jeWNsZSA9IHN0YXRlLT5wZXJpb2QgLyAyOwo+ICAgIDEzNSAgICAgICAgICAgICAgICAg
IHN0YXRlLT5wb2xhcml0eSA9IFBXTV9QT0xBUklUWV9OT1JNQUw7Cj4gICAgMTM2ICAgICAgICAg
ICAgICAgICAgc3RhdGUtPmVuYWJsZWQgPSB0cnVlOwo+ICAgIDEzNyAgICAgICAgICAgICAgICAg
IHJldHVybjsKPiAgICAxMzggICAgICAgICAgfQo+ICAgIDEzOQo+ICAgIDE0MCAgICAgICAgICBp
ZiAoKFBXTV9SRUdfUFJFU0NBTCh2YWwsIHB3bS0+aHdwd20pID09IFBXTV9QUkVTQ0FMX01BU0sp
ICYmCj4gICAgMTQxICAgICAgICAgICAgICBzdW40aV9wd20tPmRhdGEtPmhhc19wcmVzY2FsZXJf
YnlwYXNzKQo+ICAgIDE0MiAgICAgICAgICAgICAgICAgIHByZXNjYWxlciA9IDE7Cj4gICAgMTQz
ICAgICAgICAgIGVsc2UKPiAgICAxNDQgICAgICAgICAgICAgICAgICBwcmVzY2FsZXIgPSBwcmVz
Y2FsZXJfdGFibGVbUFdNX1JFR19QUkVTQ0FMKHZhbCwgcHdtLT5od3B3bSldOwo+ICAgIDE0NQo+
ICAgIDE0NiAgICAgICAgICBpZiAocHJlc2NhbGVyID09IDApCj4gICAgMTQ3ICAgICAgICAgICAg
ICAgICAgcmV0dXJuOwo+ICAgIDE0OAo+ICAgIDE0OSAgICAgICAgICBpZiAodmFsICYgQklUX0NI
KFBXTV9BQ1RfU1RBVEUsIHB3bS0+aHdwd20pKQo+ICAgIDE1MCAgICAgICAgICAgICAgICAgIHN0
YXRlLT5wb2xhcml0eSA9IFBXTV9QT0xBUklUWV9OT1JNQUw7Cj4gICAgMTUxICAgICAgICAgIGVs
c2UKPiAgICAxNTIgICAgICAgICAgICAgICAgICBzdGF0ZS0+cG9sYXJpdHkgPSBQV01fUE9MQVJJ
VFlfSU5WRVJTRUQ7Cj4gICAgMTUzCj4gICAgMTU0ICAgICAgICAgIGlmICgodmFsICYgQklUX0NI
KFBXTV9DTEtfR0FUSU5HIHwgUFdNX0VOLCBwd20tPmh3cHdtKSkgPT0KPiAgICAxNTUgICAgICAg
ICAgICAgIEJJVF9DSChQV01fQ0xLX0dBVElORyB8IFBXTV9FTiwgcHdtLT5od3B3bSkpCj4gICAg
MTU2ICAgICAgICAgICAgICAgICAgc3RhdGUtPmVuYWJsZWQgPSB0cnVlOwo+ICAgIDE1NyAgICAg
ICAgICBlbHNlCj4gICAgMTU4ICAgICAgICAgICAgICAgICAgc3RhdGUtPmVuYWJsZWQgPSBmYWxz
ZTsKPiAgICAxNTkKPiAgICAxNjAgICAgICAgICAgdmFsID0gc3VuNGlfcHdtX3JlYWRsKHN1bjRp
X3B3bSwgUFdNX0NIX1BSRChwd20tPmh3cHdtKSk7Cj4gICAgMTYxCj4gICAgMTYyICAgICAgICAg
IHRtcCA9IHByZXNjYWxlciAqIE5TRUNfUEVSX1NFQyAqIFBXTV9SRUdfRFRZKHZhbCk7Cj4gICAg
MTYzICAgICAgICAgIHN0YXRlLT5kdXR5X2N5Y2xlID0gRElWX1JPVU5EX0NMT1NFU1RfVUxMKHRt
cCwgY2xrX3JhdGUpOwo+ICAgIDE2NAo+ICAgIDE2NSAgICAgICAgICB0bXAgPSBwcmVzY2FsZXIg
KiBOU0VDX1BFUl9TRUMgKiBQV01fUkVHX1BSRCh2YWwpOwo+ICAgIDE2NiAgICAgICAgICBzdGF0
ZS0+cGVyaW9kID0gRElWX1JPVU5EX0NMT1NFU1RfVUxMKHRtcCwgY2xrX3JhdGUpOwo+ICAgIDE2
NyAgfQo+ICAgIDE2OAo+Cj4gLS0tCj4gMC1EQVkga2VybmVsIHRlc3QgaW5mcmFzdHJ1Y3R1cmUg
ICAgICAgICAgICAgICAgT3BlbiBTb3VyY2UgVGVjaG5vbG9neSBDZW50ZXIKPiBodHRwczovL2xp
c3RzLjAxLm9yZy9waXBlcm1haWwva2J1aWxkLWFsbCAgICAgICAgICAgICAgICAgICBJbnRlbCBD
b3Jwb3JhdGlvbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
