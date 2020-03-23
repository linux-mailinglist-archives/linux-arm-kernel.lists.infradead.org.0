Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E3918F167
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 10:05:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FAjPkZgmkBP+EJ8PW3B4rObTmkjKNPuqVQ+S4BzKWco=; b=OU6qmJmB4ZOwkQ
	+hwdZ1NgWHFCjJPw0LmvKJJPOin8teUr+bjYcoeNI02F5FUBXEc7fNzgTRU3e91cYy/GfFsthwPKG
	qfJMiNlLLz6LuES8VaoYnYTUAAUOPw4HiiYd+jTh2UBZwWFV8Xoh2yMan1xAQL0y4sf00h57NQ+R6
	2f6a36vxcts7GO5lpmabnahXkN1RDBPs7ZlTiVSvtuaQmI4b8kUuJO5enyLg75scsiQ8hvZI6CAzl
	FJLbVhY4Y6k4GGrP8rzEIWpQoLaOpwyrWFJC2Eh/kZ4tizZMA78p0+LY2ypNqGCuniSY6hT8YwXkf
	4RRF964b6apcSwm5G++Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGJ1p-0006CR-W9; Mon, 23 Mar 2020 09:05:50 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGJ1h-0006BX-NP
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 09:05:43 +0000
Received: by mail-lj1-x243.google.com with SMTP id i20so1561000ljn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 02:05:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=UeQUAcdMZxn26RtbUmldtq49KvGfHbMzwTxg6ahzu8Q=;
 b=gj67rIhc9xmtkaXHqF2aKuKpPzYsq6nRprfC6gX/IIfe2bFxncqRx4LENZfh1WRp3Q
 OD6IItiqpkArFZmgK3PCQKt0vuhkduXH9aRT1J30TeWACtsHmjVjB+jefTtkmyXe/svS
 IUOwswoEXf+4gP8/NR1KJqeG6PZs1vnX1Q6KI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UeQUAcdMZxn26RtbUmldtq49KvGfHbMzwTxg6ahzu8Q=;
 b=Ej8fmLgBgZIPx+dv2UxGzNnhYkMOV+AoZqlZlw7fu0uXgG5A72zvVAalYpzSeC0hcP
 QSjJ8yLNLC2Tk9d0+l69kLjgoUlAaAAfNepjam6Gr0egvM9HYtU2N1c4ZLycFS4p6a8d
 a2fm8j9JLPQapLfIY8xFUZpVMwmi0GWuoyH7i1FVWcTf8c0T2jEUMPSz+nLQyOnfP0ga
 dpuaTZP2uAW79VLzgeJERftfa3Zu2cNSy1ih5Mnxg1cAG/4a1pOvlM7lwk1mAmrYCXgy
 y+s5riJwstQBdgCZGEfCkF2RTxedlW3he+noyLsBAhTUtHoGbSegjZQiVCd2xZ6WcWH7
 e2Iw==
X-Gm-Message-State: ANhLgQ0KPA1DW15ynjWyLgCEp5/CfEWARXPjjO7N2GBcqYfuJ5CSsLoJ
 tz0C8w/jbyIYy8VLHXdB+O/0H11R3GUQ3IZHvC/vYQ==
X-Google-Smtp-Source: ADFU+vsThDf7qqsHDVU9kt7C92bwqzK+m2HTPz3VsgWRN3a2xVl/c7U7hQNsOxfPHdo8nHSIOPur05m8x4B3/bbbdgs=
X-Received: by 2002:a2e:a483:: with SMTP id h3mr8739201lji.264.1584954338871; 
 Mon, 23 Mar 2020 02:05:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200323065318.16533-1-rayagonda.kokatanur@broadcom.com>
 <20200323065318.16533-2-rayagonda.kokatanur@broadcom.com>
 <20200323082540.2gvbbxtwadvzeeos@pengutronix.de>
In-Reply-To: <20200323082540.2gvbbxtwadvzeeos@pengutronix.de>
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Date: Mon, 23 Mar 2020 14:35:27 +0530
Message-ID: <CAHO=5PFBcgmnpA8D6prEo4WCu235Mr9jh8=_Y6pdM8R9=ShfXw@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] pwm: bcm-iproc: handle clk_get_rate() return
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_020541_772572_DD44867D 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-pwm@vger.kernel.org, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXIgMjMsIDIwMjAgYXQgMTo1NSBQTSBVd2UgS2xlaW5lLUvDtm5pZwo8dS5rbGVp
bmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPgo+IE9uIE1vbiwgTWFyIDIzLCAyMDIw
IGF0IDEyOjIzOjE3UE0gKzA1MzAsIFJheWFnb25kYSBLb2thdGFudXIgd3JvdGU6Cj4gPiBIYW5k
bGUgY2xrX2dldF9yYXRlKCkgcmV0dXJuaW5nIDw9IDAgY29uZGl0aW9uIHRvIGF2b2lkCj4gPiBw
b3NzaWJsZSBkaXZpc2lvbiBieSB6ZXJvLgo+Cj4gV2FzIHRoaXMgbm90aWNlZCBkdXJpbmcgYSBy
ZXZpZXcgYW5kIGlzIG1vcmUgdGhlb3JldGljLiBPciBkb2VzIHRoaXMKPiAoZGVwZW5kaW5nIG9u
IHByZS1ib290IHN0YXRlKSByZXN1bHQgaW4gYSBrZXJuZWwgY3Jhc2g/CgpUaGlzIGlzIHJlcG9y
dGVkIGJ5IGludGVybmFsIGNvdmVyaXR5IHRvb2wuCj4KPiA+IEZpeGVzOiBkYWE1YWJjNDFjODAg
KCJwd206IEFkZCBzdXBwb3J0IGZvciBCcm9hZGNvbSBpUHJvYyBQV00gY29udHJvbGxlciIpCj4g
PiBTaWduZWQtb2ZmLWJ5OiBSYXlhZ29uZGEgS29rYXRhbnVyIDxyYXlhZ29uZGEua29rYXRhbnVy
QGJyb2FkY29tLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvcHdtL3B3bS1iY20taXByb2MuYyB8
IDMyICsrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDE5IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3B3bS9wd20tYmNtLWlwcm9jLmMgYi9kcml2ZXJzL3B3bS9wd20tYmNtLWlwcm9jLmMK
PiA+IGluZGV4IDFmODI5ZWRkOGVlNy4uOGJiZDJhMDRmZWFkIDEwMDY0NAo+ID4gLS0tIGEvZHJp
dmVycy9wd20vcHdtLWJjbS1pcHJvYy5jCj4gPiArKysgYi9kcml2ZXJzL3B3bS9wd20tYmNtLWlw
cm9jLmMKPiA+IEBAIC05OSwxOSArOTksMjUgQEAgc3RhdGljIHZvaWQgaXByb2NfcHdtY19nZXRf
c3RhdGUoc3RydWN0IHB3bV9jaGlwICpjaGlwLCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtLAo+ID4g
ICAgICAgZWxzZQo+ID4gICAgICAgICAgICAgICBzdGF0ZS0+cG9sYXJpdHkgPSBQV01fUE9MQVJJ
VFlfSU5WRVJTRUQ7Cj4gPgo+ID4gLSAgICAgdmFsdWUgPSByZWFkbChpcC0+YmFzZSArIElQUk9D
X1BXTV9QUkVTQ0FMRV9PRkZTRVQpOwo+ID4gLSAgICAgcHJlc2NhbGUgPSB2YWx1ZSA+PiBJUFJP
Q19QV01fUFJFU0NBTEVfU0hJRlQocHdtLT5od3B3bSk7Cj4gPiAtICAgICBwcmVzY2FsZSAmPSBJ
UFJPQ19QV01fUFJFU0NBTEVfTUFYOwo+ID4gLQo+ID4gLSAgICAgbXVsdGkgPSBOU0VDX1BFUl9T
RUMgKiAocHJlc2NhbGUgKyAxKTsKPiA+IC0KPiA+IC0gICAgIHZhbHVlID0gcmVhZGwoaXAtPmJh
c2UgKyBJUFJPQ19QV01fUEVSSU9EX09GRlNFVChwd20tPmh3cHdtKSk7Cj4gPiAtICAgICB0bXAg
PSAodmFsdWUgJiBJUFJPQ19QV01fUEVSSU9EX01BWCkgKiBtdWx0aTsKPiA+IC0gICAgIHN0YXRl
LT5wZXJpb2QgPSBkaXY2NF91NjQodG1wLCByYXRlKTsKPiA+IC0KPiA+IC0gICAgIHZhbHVlID0g
cmVhZGwoaXAtPmJhc2UgKyBJUFJPQ19QV01fRFVUWV9DWUNMRV9PRkZTRVQocHdtLT5od3B3bSkp
Owo+ID4gLSAgICAgdG1wID0gKHZhbHVlICYgSVBST0NfUFdNX1BFUklPRF9NQVgpICogbXVsdGk7
Cj4gPiAtICAgICBzdGF0ZS0+ZHV0eV9jeWNsZSA9IGRpdjY0X3U2NCh0bXAsIHJhdGUpOwo+ID4g
KyAgICAgaWYgKHJhdGUgPT0gMCkgewo+ID4gKyAgICAgICAgICAgICBzdGF0ZS0+cGVyaW9kID0g
MDsKPiA+ICsgICAgICAgICAgICAgc3RhdGUtPmR1dHlfY3ljbGUgPSAwOwo+ID4gKyAgICAgfSBl
bHNlIHsKPiA+ICsgICAgICAgICAgICAgdmFsdWUgPSByZWFkbChpcC0+YmFzZSArIElQUk9DX1BX
TV9QUkVTQ0FMRV9PRkZTRVQpOwo+ID4gKyAgICAgICAgICAgICBwcmVzY2FsZSA9IHZhbHVlID4+
IElQUk9DX1BXTV9QUkVTQ0FMRV9TSElGVChwd20tPmh3cHdtKTsKPiA+ICsgICAgICAgICAgICAg
cHJlc2NhbGUgJj0gSVBST0NfUFdNX1BSRVNDQUxFX01BWDsKPiA+ICsKPiA+ICsgICAgICAgICAg
ICAgbXVsdGkgPSBOU0VDX1BFUl9TRUMgKiAocHJlc2NhbGUgKyAxKTsKPiA+ICsKPiA+ICsgICAg
ICAgICAgICAgdmFsdWUgPSByZWFkbChpcC0+YmFzZSArIElQUk9DX1BXTV9QRVJJT0RfT0ZGU0VU
KHB3bS0+aHdwd20pKTsKPiA+ICsgICAgICAgICAgICAgdG1wID0gKHZhbHVlICYgSVBST0NfUFdN
X1BFUklPRF9NQVgpICogbXVsdGk7Cj4gPiArICAgICAgICAgICAgIHN0YXRlLT5wZXJpb2QgPSBk
aXY2NF91NjQodG1wLCByYXRlKTsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgdmFsdWUgPSByZWFk
bChpcC0+YmFzZSArCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgSVBST0NfUFdNX0RV
VFlfQ1lDTEVfT0ZGU0VUKHB3bS0+aHdwd20pKTsKPiA+ICsgICAgICAgICAgICAgdG1wID0gKHZh
bHVlICYgSVBST0NfUFdNX1BFUklPRF9NQVgpICogbXVsdGk7Cj4gPiArICAgICAgICAgICAgIHN0
YXRlLT5kdXR5X2N5Y2xlID0gZGl2NjRfdTY0KHRtcCwgcmF0ZSk7Cj4gPiArICAgICB9Cj4KPiBU
aGUgY2hhbmdlIGxvb2tzIGZpbmUuCj4KPiBCZXN0IHJlZ2FyZHMKPiBVd2UKPgo+IC0tCj4gUGVu
Z3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgVXdlIEtsZWluZS1Lw7Zu
aWcgICAgICAgICAgICB8Cj4gSW5kdXN0cmlhbCBMaW51eCBTb2x1dGlvbnMgICAgICAgICAgICAg
ICAgIHwgaHR0cHM6Ly93d3cucGVuZ3V0cm9uaXguZGUvIHwKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
