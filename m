Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE3128F1C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 04:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/D+JGxhJqkubxW9KV2zTaYknpyhg+jzj4nTowgoqSM=; b=ppFwlhDf1ggPoY
	5OqTBpGeDZhkMBbCs0UqtTC9WlQMGaJWEIr/Alm3+FR6i5Q23hizRJdvDPkrPP2IiUymg1QGSE0Kz
	rd0SI9Wiercgz5zgVPnmECX3JyZxeuaAnOj0G95LCPpQxKt5Sf9Sb9/GWXoZM4W+3M/GFNWOiislv
	67IAtXzRfnv/kY7n75gOUPg+zUtwQ4ZPvKD5wKQSenT0ppDqNMIPtkBaTZKd3isvyZXy3HKCC5Z1M
	A50iimWmOixK6I1V7r9qYkQ3ljl1cesN83we94kSjuL5qDU1Kq8n+HoeMWbbC+1wGJGHQbpEH8/Pf
	7yR4LQ5wCcE8IsWjFbUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTzs3-0001zq-SL; Fri, 24 May 2019 02:23:47 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTzrt-0001yA-1k; Fri, 24 May 2019 02:23:40 +0000
Received: by mail-pl1-x644.google.com with SMTP id f12so3498177plt.8;
 Thu, 23 May 2019 19:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=e1DbnTPIJ1iejRn7jLSDK3DKtKxc2O4mzdLRsl8BYBo=;
 b=Gk7n6wp3Y4UsB9vY3npw4yhb+kfnlc75G4i1dcH9U4uIvu4ZLHyPXmLaSUfMNBk3QH
 y5GL8if6wC5qAkh3cupGFrjaK2uSWXSmWLp6YkvRXInTH4BkCUEK66bouJ7RAkecmsh8
 A3tJUCrGjUbSMOvtJ3TO7WeT2KyZxxoeuE/9kK9qDaJk4ccZnhqapQG6NFodrQNlFyYD
 AFj+q5wZbe3Xc8OLeOn2KYi6H8JnBESMEKQEodzXC1MLRb+xttucfUvZf+rEpFwssdNu
 jsBB7/xyzQHOT2i5+UbC6k6+KbPEcvC1SseoxCExrjtFS4UM9uuN+yMCyEOog52Cf8gh
 gDsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=e1DbnTPIJ1iejRn7jLSDK3DKtKxc2O4mzdLRsl8BYBo=;
 b=G0nqeL7SllbYgPM1ieKj0l29/EmzAolAus5J9QSxhtjpTbm9K6Uk4e7oQQATQ1Z6Fy
 3eq8p3mxpq9zxQeeHSYwgBgWw+MFtE7eEga1SfzJzBeVnLrK6aAUqmiTMvxY+63AF9Im
 7hzmp6NmgC0ofz/XvX+YF4DsWD+oEkYyiDBOhBiqa8epTMvDZpJCWVL7+iSj7GD1JRws
 uJ0kRhegPpmgVw/LgzBRQAwbXUGCEV2aS/hRjz79W1PpisYtPGolM7qUduna8r5J+9DF
 qN3IcTh+DBwZsrYC4P+V0FNQkhOU4b1oz7uoA3zP0TlLn60F28Gm4ftxcuxYs4D64kOy
 XY7w==
X-Gm-Message-State: APjAAAUxn5OSd0dKFi0oiYTemQSbtel2HdtTPe1aHctbZ+R1u1rI/Cvm
 ffG1bHnCqjGL1sx5k3Ffqwm4YdMW
X-Google-Smtp-Source: APXvYqzFOHPG8VXCtgNKg6xY9VwfLQ02d2QBKiL28RccT9f8vHkEsAGNSfDCyuD7aKNbidRRdkiPnA==
X-Received: by 2002:a17:902:4383:: with SMTP id
 j3mr103569105pld.320.1558664615922; 
 Thu, 23 May 2019 19:23:35 -0700 (PDT)
Received: from localhost.localdomain ([2601:644:8201:32e0:7256:81ff:febd:926d])
 by smtp.gmail.com with ESMTPSA id a8sm818118pfk.14.2019.05.23.19.23.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 19:23:35 -0700 (PDT)
Date: Thu, 23 May 2019 19:23:33 -0700
From: Eduardo Valentin <edubezval@gmail.com>
To: "elaine.zhang" <zhangqing@rock-chips.com>
Subject: Re: [PATCH v3 1/3] thermal: rockchip: fix up the tsadc pinctrl
 setting error
Message-ID: <20190524022331.GB1936@localhost.localdomain>
References: <1556618986-18923-1-git-send-email-zhangqing@rock-chips.com>
 <785392a0-282a-1e51-a4d6-a6d5ca478949@linaro.org>
 <CAFqH_53nbiwzQKctNa7MBzgCcsRFn1p8g31Xgvo3E9k6eA8AKw@mail.gmail.com>
 <2174314.1vfUlvne1O@phil>
 <a6780f8f-4144-f817-b4b8-c40f6aa5e806@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a6780f8f-4144-f817-b4b8-c40f6aa5e806@rock-chips.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_192337_090227_00FEE357 
X-CRM114-Status: GOOD (  31.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (edubezval[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, huangtao@rock-chips.com,
 Doug Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Enric Balletbo Serra <eballetbo@gmail.com>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, vicencb@gmail.com,
 xf@rock-chips.com,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 xxx@rock-chips.com, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgMDk6MzQ6MzdBTSArMDgwMCwgZWxhaW5lLnpoYW5nIHdy
b3RlOgo+IGhpLCBIZWlrbyAmIEVucmljOgo+IAo+IOWcqCAyMDE5LzUvMjIg5LiL5Y2IODoyNywg
SGVpa28gU3R1ZWJuZXIg5YaZ6YGTOgo+ID5IaSBFbnJpYywKPiA+Cj4gPkFtIE1vbnRhZywgMjAu
IE1haSAyMDE5LCAxNTozODozMiBDRVNUIHNjaHJpZWIgRW5yaWMgQmFsbGV0Ym8gU2VycmE6Cj4g
Pj5IaSBhbGwsCj4gPj4KPiA+PkFzIHBvaW50ZWQgYnkgWzFdIGFuZCBbMl0gdGhpcyBjb21taXQs
IHRoYXQgbm93IGlzIHVwc3RyZWFtLCBicmVha3MKPiA+PnZleXJvbiAocmszMjg4KSBhbmQga2V2
aW4gKHJrMzM5OSkgYm9hcmRzLiBUaGUgcHJvYmxlbSBpcyBlc3BlY2lhbGx5Cj4gPj5jcml0aWNh
bCBmb3IgdmV5cm9uIGJvYXJkcyBiZWNhdXNlIHRoZXkgZG9uJ3QgYm9vdCBhbnltb3JlLgo+ID4+
Cj4gPj5JIGRpZG4ndCBsb29rIGRlZXAgYXQgdGhlIHByb2JsZW0gYnV0IEkgaGF2ZSBzb21lIGNv
bmNlcm5zIGFib3V0IHRoaXMKPiA+PnBhdGNoLCBzZWUgYmVsb3cuCj4gPj4KPiA+PlsxXSBodHRw
czovL3d3dy5zcGluaWNzLm5ldC9saXN0cy9saW51eC1yb2NrY2hpcC9tc2cyNDY1Ny5odG1sCj4g
Pj5bMl0gaHR0cHM6Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMvbGludXgtcm9ja2NoaXAvbXNnMjQ3
MzUuaHRtbAo+ID4+Cj4gPj5NaXNzYXRnZSBkZSBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNh
bm9AbGluYXJvLm9yZz4gZGVsIGRpYSBkdC4sIDMwCj4gPj5k4oCZYWJyLiAyMDE5IGEgbGVzIDE1
OjM5Ogo+ID4+Pk9uIDMwLzA0LzIwMTkgMTI6MDksIEVsYWluZSBaaGFuZyB3cm90ZToKPiA+Pj4+
RXhwbGljaXRseSB1c2UgdGhlIHBpbmN0cmwgdG8gc2V0L3Vuc2V0IHRoZSByaWdodCBtb2RlCj4g
Pj4+Pmluc3RlYWQgb2YgcmVseWluZyBvbiB0aGUgcGluY3RybCBpbml0IG1vZGUuCj4gPj4+PkFu
ZCBpdCByZXF1aXJlcyBzZXR0aW5nIHRoZSB0c2h1dCBwb2xhcml0eSBiZWZvcmUgc2VsZWN0IHBp
bmN0cmwuCj4gPj4+Pgo+ID4+Pj5XaGVuIHRoZSB0ZW1wZXJhdHVyZSBzZW5zb3IgbW9kZSBpcyBz
ZXQgdG8gMCwgaXQgd2lsbCBhdXRvbWF0aWNhbGx5Cj4gPj4+PnJlc2V0IHRoZSBib2FyZCB2aWEg
dGhlIENsb2NrLVJlc2V0LVVuaXQgKENSVSkgaWYgdGhlIG92ZXIgdGVtcGVyYXR1cmUKPiA+Pj4+
dGhyZXNob2xkIGlzIHJlYWNoZWQuIEhvd2V2ZXIsIHdoZW4gdGhlIHBpbmN0cmwgaW5pdGlhbGl6
ZXMsIGl0IGRvZXMgYQo+ID4+Pj50cmFuc2l0aW9uIHRvICJvdHBfb3V0IiB3aGljaCBtYXkgbGVh
ZCB0aGUgU29DIHJlc3RhcnQgYWxsIHRoZSB0aW1lLgo+ID4+Pj4KPiA+Pj4+Im90cF9vdXQiIElP
IG1heSBiZSBjb25uZWN0ZWQgdG8gdGhlIFJFU0VUIGNpcmN1aXQgb24gdGhlIGhhcmR3YXJlLgo+
ID4+Pj5JZiB0aGUgSU8gaXMgaW4gdGhlIHdyb25nIHN0YXRlLCBpdCB3aWxsIHRyaWdnZXIgUkVT
RVQuCj4gPj4+PihzaW1pbGFyIHRvIHRoZSBlZmZlY3Qgb2YgcHJlc3NpbmcgdGhlIFJFU0VUIGJ1
dHRvbikKPiA+Pj4+d2hpY2ggd2lsbCBjYXVzZSB0aGUgc29jIHRvIHJlc3RhcnQgYWxsIHRoZSB0
aW1lLgo+ID4+Pj4KPiA+Pj4+U2lnbmVkLW9mZi1ieTogRWxhaW5lIFpoYW5nIDx6aGFuZ3FpbmdA
cm9jay1jaGlwcy5jb20+Cj4gPj4+UmV2aWV3ZWQtYnk6IERhbmllbCBMZXpjYW5vIDxkYW5pZWwu
bGV6Y2Fub0BsaW5hcm8ub3JnPgo+ID4+Pgo+ID4+Pgo+ID4+Pgo+ID4+Pj4tLS0KPiA+Pj4+ICBk
cml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jIHwgMzYgKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrLS0tCj4gPj4+PiAgMSBmaWxlIGNoYW5nZWQsIDMzIGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pCj4gPj4+Pgo+ID4+Pj5kaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVy
bWFsL3JvY2tjaGlwX3RoZXJtYWwuYyBiL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFs
LmMKPiA+Pj4+aW5kZXggOWM3NjQzZDYyZWQ3Li42ZGM3ZmM1MTZhYmYgMTAwNjQ0Cj4gPj4+Pi0t
LSBhL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKPiA+Pj4+KysrIGIvZHJpdmVy
cy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYwo+ID4+Pj5AQCAtMTcyLDYgKzE3Miw5IEBAIHN0
cnVjdCByb2NrY2hpcF90aGVybWFsX2RhdGEgewo+ID4+Pj4gICAgICAgaW50IHRzaHV0X3RlbXA7
Cj4gPj4+PiAgICAgICBlbnVtIHRzaHV0X21vZGUgdHNodXRfbW9kZTsKPiA+Pj4+ICAgICAgIGVu
dW0gdHNodXRfcG9sYXJpdHkgdHNodXRfcG9sYXJpdHk7Cj4gPj4+PisgICAgIHN0cnVjdCBwaW5j
dHJsICpwaW5jdHJsOwo+ID4+Pj4rICAgICBzdHJ1Y3QgcGluY3RybF9zdGF0ZSAqZ3Bpb19zdGF0
ZTsKPiA+Pj4+KyAgICAgc3RydWN0IHBpbmN0cmxfc3RhdGUgKm90cF9zdGF0ZTsKPiA+Pj4+ICB9
Owo+ID4+Pj4KPiA+Pj4+ICAvKioKPiA+Pj4+QEAgLTEyNDIsNiArMTI0NSw4IEBAIHN0YXRpYyBp
bnQgcm9ja2NoaXBfdGhlcm1hbF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
ID4+Pj4gICAgICAgICAgICAgICByZXR1cm4gZXJyb3I7Cj4gPj4+PiAgICAgICB9Cj4gPj4+Pgo+
ID4+Pj4rICAgICB0aGVybWFsLT5jaGlwLT5jb250cm9sKHRoZXJtYWwtPnJlZ3MsIGZhbHNlKTsK
PiA+Pj4+Kwo+ID4+VGhhdCdzIHRoZSBsaW5lIHRoYXQgY2F1c2VzIHRoZSBoYW5nLiBDb21tZW50
aW5nIHRoaXMgbWFrZXMgdGhlIHZleXJvbgo+ID4+Ym9vdCBhZ2Fpbi4gUHJvYmFibHkgdGhpcyBu
ZWVkcyB0byBnbyBhZnRlciBjaGlwLT5pbml0aWFsaXplPwo+ID5JdCBuZWVkcyB0byBnbyBhZnRl
ciB0aGUgY2xrX2VuYWJsZSBjYWxscy4KPiA+QXQgdGhpcyBwb2ludCB0aGUgdHNhZGMgbWF5IHN0
aWxsIGJlIHVuY2xvY2tlZC4KPiAKPiBUaGUgY2xrIGlzIGVuYWJsZSBieSBkZWZhdWx0Lgo+IAo+
IAo+IFRoZSByZWFzb24gZm9yIHRoaXMgbW9kaWZpY2F0aW9uOgo+IAo+IFRoZSBvdHAgUGluIHBv
bGFyaXR5IHNldHRpbmcgZm9yIHRzYWRjIG11c3QgYmUgc2V0IHdoZW4gdHNhZGMgaXMgdHVybmVk
IG9mZi4KPiAKPiBUaGUgb3JkZXI6Cj4gCj4gQ2xvc2UgdGhlIHRzYWRjLT5TZXQgdGhlIG90cCBw
aW4gcG9sYXJpdHkgLT5TZXQgdGhlIHBpbmN0cmwtPmluaXRpYWxpemUgdGhlCj4gdHNhZGMtPk9w
ZW4gdGhlIHRzYWRjCj4gCj4gCj4gQXMgZm9yIHRoZSBwcm9ibGVtIHlvdSBtZW50aW9uZWQsIEkg
Z3Vlc3M6IFRoZSBkZWZhdWx0IHBvbGFyaXR5IG9mIG90cCBkb2VzCj4gbm90IG1hdGNoIHRoZSBk
ZWZhdWx0IHN0YXRlLCB0aGF0IGlzLCB0aGUgb3RwIGlzIHRyaWdnZXJlZCBieSBkZWZhdWx0LCBh
bmQKPiB0aGVuIHRoZSByZXNldCBjaXJjdWl0IG9mIHRoZSBoYXJkd2FyZSB0YWtlcyBlZmZlY3Qg
YW5kIGlzIHJlc3RhcnRlZCBhbGwgdGhlCj4gdGltZS4KPiBNb2RpZmljYXRpb246Cj4gMS4gRm9y
IHRoaXMgaGFyZHdhcmUsIG90cCBwaW4gZGVmYXVsdCBzdGF0ZSBpcyBtb2RpZmllZC4KPiAyLiBU
aGUgbW9kZSBvZiB1c2luZyBDUlUgaXMgcm9ja2NoaXAsaHctdHNodXQtbW9kZSA9IDwwPiBpbiBE
VFM7Cj4gLyogdHNodXQgbW9kZSAwOkNSVSAxOkdQSU8gKi8KPiAKPiBSZWNvbW1lbmRlZCB1c2Ug
bWV0aG9kIDIuIFlvdSBjYW4gdHJ5IGl0Lgo+IAo+ID4KPiA+Pj4+ICAgICAgIGVycm9yID0gY2xr
X3ByZXBhcmVfZW5hYmxlKHRoZXJtYWwtPmNsayk7Cj4gPj4+PiAgICAgICBpZiAoZXJyb3IpIHsK
PiA+Pj4+ICAgICAgICAgICAgICAgZGV2X2VycigmcGRldi0+ZGV2LCAiZmFpbGVkIHRvIGVuYWJs
ZSBjb252ZXJ0ZXIgY2xvY2s6ICVkXG4iLAo+ID4+Pj5AQCAtMTI2Nyw2ICsxMjcyLDMwIEBAIHN0
YXRpYyBpbnQgcm9ja2NoaXBfdGhlcm1hbF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQo+ID4+Pj4gICAgICAgdGhlcm1hbC0+Y2hpcC0+aW5pdGlhbGl6ZSh0aGVybWFsLT5ncmYs
IHRoZXJtYWwtPnJlZ3MsCj4gPj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRo
ZXJtYWwtPnRzaHV0X3BvbGFyaXR5KTsKPiA+Pj4+Cj4gPj4+PisgICAgIGlmICh0aGVybWFsLT50
c2h1dF9tb2RlID09IFRTSFVUX01PREVfR1BJTykgewo+ID4+Pj4rICAgICAgICAgICAgIHRoZXJt
YWwtPnBpbmN0cmwgPSBkZXZtX3BpbmN0cmxfZ2V0KCZwZGV2LT5kZXYpOwo+ID4+Pj4rICAgICAg
ICAgICAgIGlmIChJU19FUlIodGhlcm1hbC0+cGluY3RybCkpIHsKPiA+Pj4+KyAgICAgICAgICAg
ICAgICAgICAgIGRldl9lcnIoJnBkZXYtPmRldiwgImZhaWxlZCB0byBmaW5kIHRoZXJtYWwgcGlu
Y3RybFxuIik7Cj4gPj4+PisgICAgICAgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUih0aGVy
bWFsLT5waW5jdHJsKTsKPiA+Pj4+KyAgICAgICAgICAgICB9Cj4gPj4+PisKPiA+Pj4+KyAgICAg
ICAgICAgICB0aGVybWFsLT5ncGlvX3N0YXRlID0gcGluY3RybF9sb29rdXBfc3RhdGUodGhlcm1h
bC0+cGluY3RybCwKPiA+Pj4+KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgImdwaW8iKTsKPiA+PlNob3VsZG4ndCB0aGlzIG1vZGUgYmUgZG9j
dW1lbnRlZCBwcm9wZXJseSBpbiB0aGUgYmluZGluZyBmaXJzdD8KPiA+TW9yZSBpbXBvcnRhbnRs
eSwgaXQgc2hvdWxkIGJlIF9iYWNrd2FyZHMtY29tcGF0aWJsZV8sIGFrYSB3b3JrIHdpdGgKPiA+
b2xkIGRldmljZXRyZWVzIHdpdGhvdXQgdGhhdCBwcm9wZXJ0eSBhbmQgbm90IGJyZWFrIHRoZXJt
YWwgaGFuZGxpbmcgZm9yCj4gPnRoZW0gZW50aXJlbHkuCj4gSWYgbmVlZMKgIF9iYWNrd2FyZHMt
Y29tcGF0aWJsZV8swqAgSXQncyBjYW4ndCByZXR1cm4KPiBQVFJfRVJSKHRoZXJtYWwtPnBpbmN0
cmwpIHdoZW4gZ2V0Cj4gCj4gZGV2bV9waW5jdHJsX2dldCBmYWlsZWQuCj4gCj4gPgo+ID4+VGhl
IGJpbmRpbmcgWzNdIHRhbGtzIGFib3V0IGluaXQsIGRlZmF1bHQgYW5kIHNsZWVwIHN0YXRlcyBi
dXQgKm5vdCoKPiA+PmdwaW8gYW5kIG90cG91dC4gVGhlIHBhdGNoIHNlcmllcyBsb29rcyBpbmNv
bXBsZXRlIHRvIG1lIG9yIG5vdCB1c2luZwo+ID4+dGhlIHByb3BlciBuYW1lcy4KPiA+Pgo+ID4+
WzNdIGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjItcmMxL3NvdXJjZS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGhlcm1hbC9yb2NrY2hpcC10aGVybWFsLnR4
dAo+ID4+Cj4gPj4+PisgICAgICAgICAgICAgaWYgKElTX0VSUl9PUl9OVUxMKHRoZXJtYWwtPmdw
aW9fc3RhdGUpKSB7Cj4gPj4+PisgICAgICAgICAgICAgICAgICAgICBkZXZfZXJyKCZwZGV2LT5k
ZXYsICJmYWlsZWQgdG8gZmluZCB0aGVybWFsIGdwaW8gc3RhdGVcbiIpOwo+ID4+Pj4rICAgICAg
ICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gPj4+PisgICAgICAgICAgICAgfQo+ID4+
Pj4rCj4gPj4+PisgICAgICAgICAgICAgdGhlcm1hbC0+b3RwX3N0YXRlID0gcGluY3RybF9sb29r
dXBfc3RhdGUodGhlcm1hbC0+cGluY3RybCwKPiA+Pj4+KyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAib3Rwb3V0Iik7Cj4gPj4+PisgICAgICAg
ICAgICAgaWYgKElTX0VSUl9PUl9OVUxMKHRoZXJtYWwtPm90cF9zdGF0ZSkpIHsKPiA+Pj4+KyAg
ICAgICAgICAgICAgICAgICAgIGRldl9lcnIoJnBkZXYtPmRldiwgImZhaWxlZCB0byBmaW5kIHRo
ZXJtYWwgb3Rwb3V0IHN0YXRlXG4iKTsKPiA+Pj4+KyAgICAgICAgICAgICAgICAgICAgIHJldHVy
biAtRUlOVkFMOwo+ID4+Pj4rICAgICAgICAgICAgIH0KPiA+Pj4+Kwo+ID4+U2FtZSBoZXJlIG90
cG91dCBpcyBub3QgYSBkb2N1bWVudGVkLgo+ID4+Cj4gPj5BcyB0aGlzIGNoYW5nZSBpcyBub3cg
aW4gbWFpbmxpbmUgYW5kIGlzIGNhdXNpbmcgdmV5cm9uIHRvIGhhbmcgSSdkCj4gPj5zdWdnZXN0
IHJldmVydGluZyB0aGlzIGNoYW5nZSBmb3Igbm93LiBFdmVuIGZpeGluZyB0aGUgcm9vdCBjYXVz
ZQo+ID4+KG1heWJlIHRoZSBvbmUgSSBwb2ludGVkIGFib3ZlKSBhZnRlciB0aGlzIHBhdGNoIHdl
IHdpbGwgaGF2ZSB0aGUKPiA+PnRoZXJtYWwgZHJpdmVyIHRvIGZhaWwgYmVjYXVzZSAiZ3BpbyIg
YW5kICJvdHBvdXQiIHN0YXRlcyBhcmUgbm90Cj4gPj5kZWZpbmVkIG5vciBkb2N1bWVudGVkIChh
IGNoYW5nZSBvbiB0aGlzIHdpbGwgbmVlZCBzb21lIHJldmlld3MgYW5kCj4gPj5hY2tzIGFuZCB0
aW1lIEkgZ3Vlc3MpLgo+ID5JIGRlZmluaXRseSBhZ3JlZSBoZXJlLiBIYW5kbGluZyArIGNoZWNr
aW5nIHRoZSBiaW5kaW5nIGNoYW5nZQo+ID5hcyB3ZWxsIGFzIG5lZWRlZCBmYWxsYmFjayBjb2Rl
IGlzIGRlZmluaXRseSBub3QgbWF0ZXJpYWwgZm9yIC1yYy1rZXJuZWxzCj4gPnNvIHdlIHNob3Vs
ZCBqdXN0IHJldmVydCBmb3Igbm93IGFuZCBsZXQgRWxhaW5lIGZpeCB0aGUgaXNzdWVzIGZvciA1
LjMuCj4gPgo+ID5BbnlvbmUgdm9sdW50ZWVyaW5nIGZvciBzZW5kaW5nIGEgcmV2ZXJ0LXBhdGNo
IHRvIEVkdWFyZG8/IDotKQo+IAo+IEkgYWdyZWUgdG8gcmV2ZXJ0IHRoZSBwYXRjaCxhbmQgSSB3
aWxsIGNvcnJlY3QgaXQgYW5kIHB1c2ggaXQgbGF0ZXIuCgoKR3JlYXQhIENvbGxlY3RpbmcgdGhl
IHJldmVydCB0aGF0IHdhcyBhbHJlYWR5IHNlbnQgSSB3aWxsIHNlbmQgb3V0IHRvCmNvbWluZyBy
YyBzbyB3ZSBjbGVhciB0aGUgYnJlYWthZ2UuCgo+IAo+IERvIEkgbmVlZCB0byBjb21taXQgdGhl
IHJldmVydCB0aGUgcGF0Y2ggbm93P0BIZWlrbwo+IAoKClllYWgsIHlvdSBzaG91bGQgc2VlIGl0
IGluIHRoZSBuZXh0IHJjIGFmdGVyIEkgc2VuZCB0aGlzIHRvIExpbnVzLgoKTWVhbndoaWxlLCBp
dCB3b3VsZCBiZSBnb29kIGlmIHlvdSBnb29kIHNlbmQgYW5vdGhlciB2ZXJzaW9uIG9mIHlvdXIK
cGF0Y2ggdGhhdCBkb2VzIG5vdCBicmVhayB0aGUgb3RoZXIgYm9hcmRzLgoKPiA+Cj4gPkhlaWtv
Cj4gPgo+ID4KPiA+Cj4gPgo+ID4KPiA+Cj4gPgo+IAo+IAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
