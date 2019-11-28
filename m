Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C5710CB8B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 16:16:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UjCdvLvPMcYeA+2POscxpPj2meEfIpH5C+g358XWSlA=; b=jjUK54N6my6YbUrvK/51LnFlcU
	JqJ0nIGX0hPyEBRwTI/+fGps/h1GcGpqQW2F5IxiOCss/A0PHs88C+XQr8UoCth+C7TmOMBZLalY4
	hwlY8eDM8Jg4mW+6bSs+kFh/zGPYX+cgxzIpZsvPW3gEG+sqFL1YkJyPRRhC13zPHShsns8f3/urg
	rDvby11tZbWONDvMAIJCyayz5Z3AZdl5VP8GSBE2ELNgnyhPl4Szi/Heszrb4WiR7UsVTfQyt3RAZ
	h6d+L5oOnBI3hEnGanWnN7iwZwLvykvkwhNMfmLlaCdnQSazOM4LvkD3+oSCfcIsuZeMkDGf2Sabl
	wFjhLZGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLX6-0000yb-R8; Thu, 28 Nov 2019 15:16:40 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLWr-0000xp-8N
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 15:16:26 +0000
Received: by mail-io1-xd43.google.com with SMTP id i11so18406894ioi.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 07:16:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=H82IbOS8sPZjWpvcnPcR/AqjGK/fOT5IpCUad40HLpM=;
 b=jFkLPx4spUlCQAlkElZdAN/usQOw62IzHHY17uPCjEjiRvR3Ew45iJgdOCGgFJuwmy
 tc12rUtvLAumuNtQfgak+gNrU305RyPV5nNUoT7QrbOIGfyQxxTAzCOygwOCq+tAh+ut
 gDYAhBoodWSub2YT9kgAcE2MXrqf3mafeVeP7law170kSB+R2bPCvMPy/KdmD7H4py9Y
 58eIDioECiAEQhzC6sz6ulocyOC0AemYsJeEW2gHOb1tyJeW8BEgoats+Zow/OmWwL3Y
 nmjee7/mEWcF4WVsGKv5WhR3/6hhUMbmwgH9E4SxczUzaZ2T77SCid6X3ymEkwvqzy9M
 elhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=H82IbOS8sPZjWpvcnPcR/AqjGK/fOT5IpCUad40HLpM=;
 b=l0pBCF3256CiXaNpXDXHrnR000DkWRErhcohc9T69yb+6ZOZ+xQzFDzs9vlL9IlJrm
 mJZAxjO5rVEP1qpvI0rmANW33TkxenPIYBEnwmKAFAvHxM/rw8gXkc3A1d6t4wsXwpTg
 rOSyk1iCCYovJ03AwtBCft7AqdTAEM9L+XZ/bU13KZc/F2cTclPYttizDURad0E+0Yu1
 3R0bP/YD89E0XsEK4uFn27GOPLuSpmDzMbSHNxdp6LP6zkhGGA0LalVSVEB/Yt6eQ55q
 u2AxV7sG5ae38no7vKWhklQXmNNhS4uvSbAQAgf7ltf9fsRdwSahKVIf1w2l7tSWTrt2
 UKQw==
X-Gm-Message-State: APjAAAXeyuGQ77NsL7sKWUW51JBmywA+x/bZfcU4lrWDzExo0v0/Lxmi
 krQqnUdSy7fEKiGC3WSk1+n1J61a8/zisx/mMo4=
X-Google-Smtp-Source: APXvYqz8GjuY8urNYBmxma4DGx0mSieCqXdt1pzHdh1zCUnKUm27LXPBe0Rh4lFT2Z8hUrQH687ozEQJIC7EOhS+L8c=
X-Received: by 2002:a5d:9f05:: with SMTP id q5mr40915527iot.295.1574954183712; 
 Thu, 28 Nov 2019 07:16:23 -0800 (PST)
MIME-Version: 1.0
References: <20191127052935.1719897-1-anarsoul@gmail.com>
 <20191127052935.1719897-2-anarsoul@gmail.com>
 <20191127111419.z5hfu5soxceiivg6@core.my.home>
 <20191127173547.ch3pcv3lxgdcrfnu@gilmour.lan>
 <CAEExFWvG-Af4qtUrxQV4ssNQCVQAmpXfxB+92wX+6ZxUNfX-Jw@mail.gmail.com>
 <CA+E=qVcdwQO3Y8ismmBN-gRVNMs1Thx+TPLqstKM9fYf2_0qFQ@mail.gmail.com>
 <20191127222427.coyeggbxs5miioxn@core.my.home>
In-Reply-To: <20191127222427.coyeggbxs5miioxn@core.my.home>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Thu, 28 Nov 2019 23:16:05 +0800
Message-ID: <CAEExFWtBifY-1O0wBzk7ft8C9fxSUUx_cCJAribdP8dE9cteUg@mail.gmail.com>
Subject: Re: [PATCH v6 1/7] thermal: sun8i: add thermal driver for
 H6/H5/H3/A64/A83T/R40
To: Vasily Khoruzhick <anarsoul@gmail.com>, Frank Lee <tiny.windzz@gmail.com>, 
 Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, 
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Linux PM <linux-pm@vger.kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, 
 Eduardo Valentin <edubezval@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, 
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_071625_297958_EDBFD2DC 
X-CRM114-Status: GOOD (  23.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBOb3YgMjgsIDIwMTkgYXQgNjoyNCBBTSBPbmTFmWVqIEppcm1hbiA8bWVnb3VzQG1l
Z291cy5jb20+IHdyb3RlOgo+Cj4gT24gV2VkLCBOb3YgMjcsIDIwMTkgYXQgMTE6NDg6MzJBTSAt
MDgwMCwgVmFzaWx5IEtob3J1emhpY2sgd3JvdGU6Cj4gPiBPbiBXZWQsIE5vdiAyNywgMjAxOSBh
dCAxMTo0NCBBTSBGcmFuayBMZWUgPHRpbnkud2luZHp6QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+
Cj4gPiA+IEhlbGxvIFZhc2lseSwKPiA+ID4KPiA+ID4gVGhhbmsgeW91IHZlcnkgbXVjaCBmb3Ig
eW91ciB3b3JrIG9uIHRoaXMuCj4gPiA+IFRoaXMgbG9va3MgZ29vZCB0byBtZS4KPiA+Cj4gPiBU
aGFua3MhCj4gPgo+ID4gPiBCeSB0aGUgd2F5LCBJIHdvdWxkIGxpa2UgdG8gYXNrIGNvbW1lbnRz
IGFib3V0IGFkZGluZyB0aGUgZm9sbG93aW5nIGNvZGUuCj4gPgo+ID4gQ2FuIHdlIGFkZCBpdCBh
cyBmb2xsb3cgdXAgcGF0Y2g/IEkgZG9uJ3QgdGhpbmsgdGhhdCBJIGhhdmUgYSBkZXZpY2UKPiA+
IHdpdGggd29ya2luZyBzdXNwZW5kIHRvIHRlc3QgaXQgYW5kIEknbSBoZXNpdGFudCB0byBhZGQg
YW55IGNvZGUgdGhhdAo+ID4gSSBjYW4ndCB0ZXN0Lgo+Cj4gSSBoYXZlLCBidXQgaXQgZG9lc24n
dCB1c2UgYW55IG9mIHRoZSBjbG9ja3MgYW5kIHJlc2V0cywgc28gaXQgd291bGRuJ3QKPiB0ZXN0
IHRoaXMgZnVsbHksIGFuZCBiYXNpY2FseSBkb2Vzbid0IG5lZWQgcmUtY2FsaWJyYXRpb24gYXQg
YWxsLCBwcm9iYWJseS4KPgo+IFNvIHRoYXQgbWF5IGJlIG9uZSBmZWVkYmFjay4gT24gYTgzdCwg
SSdkIG1hZGUgdGhlc2UgY2FsbGJhY2tzIGEgbm8tb3AuCgpUaGlzIGlzIGp1c3QgdGhhdCB0aGUg
bWFpbmxpbmUgY29kZSBkb2VzIG5vdCB5ZXQgaGF2ZSB0aGUgUzJSQU0gY29kZQppbXBsZW1lbnRh
dGlvbiBvZiB0aGVzZSBTT0NzLgpFYWNoIG1vZHVsZSBoYXMgaXRzIG93biBzdXNwZW5kIGZ1bmN0
aW9uIGFuZCByZXN1bWUgZnVuY3Rpb24gYXMgcGFydApvZiB0aGUgc3lzdGVtIHN1c3BlbmQgZnVu
Y3Rpb24uCldoZW4gdGhlIHN5c3RlbSBpcyBpbiBTMlJBTSwgdGhlIGVudGlyZSBTT0Mgd2lsbCBi
ZSBjb21wbGV0ZWx5IHBvd2VyZWQKb2ZmLCBhbmQgZWFjaCBtb2R1bGUKbmVlZHMgdG8gc2F2ZSBh
bmQgcmVzdG9yZSBpdHMgb3duIHN0YXRlLgoKWWFuZ3RhbwoKPgo+IHJlZ2FyZHMsCj4gICAgICAg
ICBvLgo+Cj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3RoZXJtYWwvc3VuOGlfdGhl
cm1hbC5jIGIvZHJpdmVycy90aGVybWFsL3N1bjhpX3RoZXJtYWwuYwo+ID4gPiBpbmRleCBjMGVk
NjA3ODJiMTEuLjU3OWRkZTVlMDcwMSAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy90aGVybWFs
L3N1bjhpX3RoZXJtYWwuYwo+ID4gPiArKysgYi9kcml2ZXJzL3RoZXJtYWwvc3VuOGlfdGhlcm1h
bC5jCj4gPiA+IEBAIC02MjksMTEgKzYyOSw2MyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2Rl
dmljZV9pZCBvZl90aHNfbWF0Y2hbXSA9IHsKPiA+ID4gIH07Cj4gPiA+ICBNT0RVTEVfREVWSUNF
X1RBQkxFKG9mLCBvZl90aHNfbWF0Y2gpOwo+ID4gPgo+ID4gPiArc3RhdGljIGludCBfX21heWJl
X3VudXNlZCBzdW44aV90aGVybWFsX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQo+ID4gPiAr
ewo+ID4gPiArIHN0cnVjdCB0aHNfZGV2aWNlICp0bWRldjsgPSBkZXZfZ2V0X2RydmRhdGEoZGV2
KTsKPiA+ID4gKwo+ID4gPiArIGNsa19kaXNhYmxlKHRtZGV2LT5tb2RfY2xrKTsKPiA+ID4gKyBj
bGtfZGlzYWJsZSh0bWRldi0+YnVzX2Nsayk7Cj4gPiA+ICsKPiA+ID4gKyByZXNldF9jb250cm9s
X2Fzc2VydCh0bWRldi0+cmVzZXQpOwo+ID4gPiArCj4gPiA+ICsgcmV0dXJuIDA7Cj4gPiA+ICt9
Cj4gPiA+ICsKPiA+ID4gK3N0YXRpYyBpbnQgX19tYXliZV91bnVzZWQgc3VuOGlfdGhlcm1hbF9y
ZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+ID4gPiArewo+ID4gPiArIHN0cnVjdCB0aHNfZGV2
aWNlICp0bWRldjsgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPiA+ID4gKyBpbnQgZXJyb3I7Cj4g
PiA+ICsKPiA+ID4gKyBlcnJvciA9IHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQodG1kZXYtPnJlc2V0
KTsKPiA+ID4gKyBpZiAoZXJyb3IpCj4gPiA+ICsgcmV0dXJuIGVycm9yOwo+ID4gPiArCj4gPiA+
ICsgZXJyb3IgPSBjbGtfZW5hYmxlKHRtZGV2LT5idXNfY2xrKTsKPiA+ID4gKyBpZiAoZXJyb3Ip
Cj4gPiA+ICsgZ290byBhc3NlcnRfcmVzZXQ7Cj4gPiA+ICsKPiA+ID4gKyBjbGtfc2V0X3JhdGUo
dG1kZXYtPm1vZF9jbGssIDI0MDAwMDAwKTsKPiA+ID4gKyBlcnJvciA9IGNsa19lbmFibGUodG1k
ZXYtPm1vZF9jbGspOwo+ID4gPiArIGlmIChlcnJvcikKPiA+ID4gKyBnb3RvIGJ1c19kaXNhYmxl
Owo+ID4gPiArCj4gPiA+ICsgc3VuOGlfdGhzX2NhbGlicmF0ZSh0bWRldik7Cj4gPiA+ICsKPiA+
ID4gKyByZXQgPSB0bWRldi0+Y2hpcC0+aW5pdCh0bWRldik7Cj4gPiA+ICsgaWYgKHJldCkKPiA+
ID4gKyBnb3RvIG1vZF9kaXNhYmxlOwo+ID4gPiArCj4gPiA+ICsgcmV0dXJuIDA7Cj4gPiA+ICsK
PiA+ID4gK21vZF9kaXNhYmxlOgo+ID4gPiArIGNsa19kaXNhYmxlKHRtZGV2LT5tb2RfY2xrKTsK
PiA+ID4gK2J1c19kaXNhYmxlOgo+ID4gPiArIGNsa19kaXNhYmxlKHRtZGV2LT5idXNfY2xrKTsK
PiA+ID4gK2Fzc2VydF9yZXNldDoKPiA+ID4gKyByZXNldF9jb250cm9sX2Fzc2VydCh0bWRldi0+
cmVzZXQpOwo+ID4gPiArCj4gPiA+ICsgcmV0dXJuIDA7Cj4gPiA+ICt9Cj4gPiA+ICsKPiA+ID4g
K3N0YXRpYyBTSU1QTEVfREVWX1BNX09QUyhzdW44aV90aGVybWFsX3BtX29wcywKPiA+ID4gKyBz
dW44aV90aGVybWFsX3N1c3BlbmQsIHN1bjhpX3RoZXJtYWxfcmVzdW1lKTsKPiA+ID4gKwo+ID4g
PiAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgdGhzX2RyaXZlciA9IHsKPiA+ID4gICAu
cHJvYmUgPSBzdW44aV90aHNfcHJvYmUsCj4gPiA+ICAgLnJlbW92ZSA9IHN1bjhpX3Roc19yZW1v
dmUsCj4gPiA+ICAgLmRyaXZlciA9IHsKPiA+ID4gICAubmFtZSA9ICJzdW44aS10aGVybWFsIiwK
PiA+ID4gKyAucG0gPSAmc3VuOGlfdGhlcm1hbF9wbV9vcHMsCj4gPiA+ICAgLm9mX21hdGNoX3Rh
YmxlID0gb2ZfdGhzX21hdGNoLAo+ID4gPiAgIH0sCj4gPiA+ICB9Owo+ID4gPgo+ID4gPiBZYW5n
dGFvCj4gPgo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiA+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gPiBsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
