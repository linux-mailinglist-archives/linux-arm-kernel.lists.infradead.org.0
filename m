Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9641573AD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 12:48:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t6ZSjuTxZd51vbp2WFQWmZyqqs5cUe8+ru5LZg5i9r4=; b=OKv3khuapW0OB0
	bvVGE5VyHjF6+HPh/wYzpJzElZJulNu3SnaAm7HOyvPbpRVJmwqKzeqbyxR6Tm4TQzyTSnLJz6SHv
	Qid38I/VzaYS5PiCmV6DIldT21DydmY3osU5vB01nzdKQeXxXf3vsDx3SUkcgZwHG/EzS8q/2yoFT
	jlnwmbhb5ymFyvJMTJBxsnhdVD6d3oMaYJ+GeKQzgkbbm2kvmMmwbWOEmdiw2T6v8HkA6Qx8oH5uY
	2T6hxcwv8rQIocmguEsUgiZHCK6BMmLKscpIPju85NrjUUlAppfD7D5uY/Bo68Jwz9YAWtjLqyijb
	fmR7O+XpNXw3HDEQzX9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j17YM-0007sM-5y; Mon, 10 Feb 2020 11:48:38 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j17YB-0007r0-5q
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 11:48:28 +0000
Received: by mail-wm1-x343.google.com with SMTP id t14so10203685wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 03:48:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=1aQqSSjewIOk+NSQDYZdBuMf/MgfILJe523/C8XJcy8=;
 b=FaZcVpT5JDHcbUCWe+ralMxFLwrZvkzrej68mEa1ypXrQBM08yXsExEj1fzIr+Ddq0
 /mCpv9nLEwmfxxtAPis0PuMAJAsun0WHWQ/UjZvJukQmj4idIQ5QrGpC2m/oCnp5ekRt
 RMSIdIofZYVa7bnSKRFMuGsiLFDWSxcekBzTUbXJQF8c4cZIlXF6DGqHRyAbZRZ4k6ps
 R0zCvMErCqMI9GPaQ0dCKcg/KA5LCCN27O/pVE7am24L0i8KjWByplOrt5w4H/mL+/3f
 1b80zYLcG1FaS3R8hD30XXkeo0KEtQwLErR26kO9xMP38IEV/BK0kvAPRNf//7GK6kkj
 G/eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=1aQqSSjewIOk+NSQDYZdBuMf/MgfILJe523/C8XJcy8=;
 b=BoLx22Ma2Jc1DrHL60CtItQeedxq9AQaJrfNO2e1+r9GVfzpPfzPyMGBTioLkD6tnw
 YGt6qXHaCzlAeIQRQ+11zs58Zhye3uTnZCLDsXVT6fBpoaV880a4c/evKexIOgNLCDG1
 J8w+/Asim7DMropRkOonvJt0wUr73TQ46cu/j89TdoNoaduKQPKFhSd5eiI72fXjVXTS
 /jR6UvkQHmNOJV2Y19d0modWFYOVbIC9PfUtufGkOrYugNqHUnZkTsVxdj44H/IWgjMv
 t2hzoxNDdqSOl6m07cmJD8xhUchqw0Y0gHEW43PpfeDTtXD7MzVuuZO2+odOjRmEf0S4
 oJfw==
X-Gm-Message-State: APjAAAUo00nK+SSyiEdxV0Ti2nlxoT5D4f9gG45FJAnBqK4N6NY0a2SS
 3/9ixISjqz41n4qI07LrMNZbKZ2trPrM2CqYftGDoA==
X-Google-Smtp-Source: APXvYqyi6XtrJMXk9ZlugaSIfF0G093AdaIblomhIXPduCLz03AchNEqASxw/DZcOJfykRMfgdT69usn7374kSRrGGk=
X-Received: by 2002:a7b:ce98:: with SMTP id q24mr14757971wmj.41.1581335305184; 
 Mon, 10 Feb 2020 03:48:25 -0800 (PST)
MIME-Version: 1.0
References: <1576155618-7933-1-git-send-email-srinivas.neeli@xilinx.com>
In-Reply-To: <1576155618-7933-1-git-send-email-srinivas.neeli@xilinx.com>
From: Michal Simek <monstr@monstr.eu>
Date: Mon, 10 Feb 2020 12:48:14 +0100
Message-ID: <CAHTX3dKSq1oTzkoRv3wK3rhkc1r0rOiQhFKmgsYbtG_uvOfAJg@mail.gmail.com>
Subject: Re: [PATCH] rtc: zynqmp: Clear alarm interrupt status before
 interrupt enable
To: Srinivas Neeli <srinivas.neeli@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_034827_268901_0A9C0EE2 
X-CRM114-Status: GOOD (  20.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Srinivas Goud <sgoud@xilinx.com>, LKML <linux-kernel@vger.kernel.org>,
 git <git@xilinx.com>, Shubhrajyoti Datta <shubhraj@xilinx.com>,
 linux-arm <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgrEjXQgMTIuIDEyLiAyMDE5IHYgMTQ6MDEgb2Rlc8OtbGF0ZWwgU3Jpbml2YXMgTmVlbGkK
PHNyaW5pdmFzLm5lZWxpQHhpbGlueC5jb20+IG5hcHNhbDoKPgo+IEZpeCBtdWx0aXBsZSBvY2N1
cnJpbmcgaW50ZXJydXB0cyBmb3IgYWxhcm0gaW50ZXJydXB0LiBSVEMgbW9kdWxlIGRvZXNuJ3QK
PiBjbGVhciB0aGUgYWxhcm0gaW50ZXJydXB0IHN0YXR1cyBiaXQgaW1tZWRpYXRlbHkgYWZ0ZXIg
dGhlIGludGVycnVwdCBpcwo+IHRyaWdnZXJlZC5UaGlzIGlzIGR1ZSB0byB0aGUgc3RpY2t5IG5h
dHVyZSBvZiB0aGUgYWxhcm0gaW50ZXJydXB0IHN0YXR1cwo+IHJlZ2lzdGVyLiBUaGUgYWxhcm0g
aW50ZXJydXB0IHN0YXR1cyByZWdpc3RlciBjYW4gYmUgY2xlYXJlZCBvbmx5IGFmdGVyCj4gdGhl
IHNlY29uZCBjb3VudGVyIG91dHJ1bnMgdGhlIHNldCBhbGFybSB2YWx1ZS4gVG8gZml4IG11bHRp
cGxlIHNwdXJpb3VzCj4gaW50ZXJydXB0cywgZGlzYWJsZSBhbGFybSBpbnRlcnJ1cHQgaW4gdGhl
IGhhbmRsZXIgYW5kIGNsZWFyIHRoZSBzdGF0dXMKPiBiaXQgYmVmb3JlIGVuYWJsaW5nIHRoZSBh
bGFybSBpbnRlcnJ1cHQuCj4KPiBGaXhlczogMTExNDNjMTllYjU3ICgicnRjOiBhZGQgeGlsaW54
IHp5bnFtcCBydGMgZHJpdmVyIikKPiBTaWduZWQtb2ZmLWJ5OiBTcmluaXZhcyBOZWVsaSA8c3Jp
bml2YXMubmVlbGlAeGlsaW54LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ydGMvcnRjLXp5bnFtcC5j
IHwgMjkgKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDI0
IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9y
dGMvcnRjLXp5bnFtcC5jIGIvZHJpdmVycy9ydGMvcnRjLXp5bnFtcC5jCj4gaW5kZXggNTc4Njg2
NmMwOWU5Li5kMzExZTNlZjFmMjEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ydGMvcnRjLXp5bnFt
cC5jCj4gKysrIGIvZHJpdmVycy9ydGMvcnRjLXp5bnFtcC5jCj4gQEAgLTM4LDYgKzM4LDggQEAK
Pgo+ICAjZGVmaW5lIFJUQ19DQUxJQl9ERUYgICAgICAgICAgMHgxOTgyMzMKPiAgI2RlZmluZSBS
VENfQ0FMSUJfTUFTSyAgICAgICAgIDB4MUZGRkZGCj4gKyNkZWZpbmUgUlRDX0FMUk1fTUFTSyAg
ICAgICAgICBCSVQoMSkKPiArI2RlZmluZSBSVENfTVNFQyAgICAgICAgICAgICAgIDEwMDAKPgo+
ICBzdHJ1Y3QgeGxueF9ydGNfZGV2IHsKPiAgICAgICAgIHN0cnVjdCBydGNfZGV2aWNlICAgICAg
ICpydGM7Cj4gQEAgLTEyNCwxMSArMTI2LDI4IEBAIHN0YXRpYyBpbnQgeGxueF9ydGNfYWxhcm1f
aXJxX2VuYWJsZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHUzMiBlbmFibGVkKQo+ICB7Cj4gICAgICAg
ICBzdHJ1Y3QgeGxueF9ydGNfZGV2ICp4cnRjZGV2ID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4K
CmhlcmUgc2hvdWxkbid0IGJlIGVtcHR5IGxpbmUuCgo+IC0gICAgICAgaWYgKGVuYWJsZWQpCj4g
KyAgICAgICB1bnNpZ25lZCBpbnQgc3RhdHVzOwo+ICsgICAgICAgdWxvbmcgdGltZW91dDsKPiAr
Cj4gKyAgICAgICB0aW1lb3V0ID0gamlmZmllcyArIG1zZWNzX3RvX2ppZmZpZXMoUlRDX01TRUMp
Owo+ICsKPiArICAgICAgIGlmIChlbmFibGVkKSB7Cj4gKyAgICAgICAgICAgICAgIHdoaWxlICgx
KSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgc3RhdHVzID0gcmVhZGwoeHJ0Y2Rldi0+cmVn
X2Jhc2UgKyBSVENfSU5UX1NUUyk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgaWYgKCEoKHN0
YXR1cyAmIFJUQ19BTFJNX01BU0spID09IFJUQ19BTFJNX01BU0spKQo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gKwo+ICsgICAgICAgICAgICAgICAgICAgICAgIGlm
ICh0aW1lX2FmdGVyX2VxKGppZmZpZXMsIHRpbWVvdXQpKSB7Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBkZXZfZXJyKGRldiwgIlRpbWUgb3V0IG9jY3VyLCB3aGlsZSBjbGVhcmlu
ZyBhbGFybSBzdGF0dXMgYml0XG4iKTsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHJldHVybiAtRVRJTUVET1VUOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIH0KPiArICAgICAg
ICAgICAgICAgICAgICAgICB3cml0ZWwoUlRDX0lOVF9BTFJNLCB4cnRjZGV2LT5yZWdfYmFzZSAr
IFJUQ19JTlRfU1RTKTsKPiArICAgICAgICAgICAgICAgfQo+ICsKPiAgICAgICAgICAgICAgICAg
d3JpdGVsKFJUQ19JTlRfQUxSTSwgeHJ0Y2Rldi0+cmVnX2Jhc2UgKyBSVENfSU5UX0VOKTsKPiAt
ICAgICAgIGVsc2UKPiArICAgICAgIH0gZWxzZSB7Cj4gICAgICAgICAgICAgICAgIHdyaXRlbChS
VENfSU5UX0FMUk0sIHhydGNkZXYtPnJlZ19iYXNlICsgUlRDX0lOVF9ESVMpOwo+IC0KPiArICAg
ICAgIH0KCkFuZCBoZXJlIGl0IHdhcyBnb29kIHRvIGhhdmUgZW1wdHkgbGluZS4KCj4gICAgICAg
ICByZXR1cm4gMDsKPiAgfQo+Cj4gQEAgLTE4Myw4ICsyMDIsOCBAQCBzdGF0aWMgaXJxcmV0dXJu
X3QgeGxueF9ydGNfaW50ZXJydXB0KGludCBpcnEsIHZvaWQgKmlkKQo+ICAgICAgICAgaWYgKCEo
c3RhdHVzICYgKFJUQ19JTlRfU0VDIHwgUlRDX0lOVF9BTFJNKSkpCj4gICAgICAgICAgICAgICAg
IHJldHVybiBJUlFfTk9ORTsKPgo+IC0gICAgICAgLyogQ2xlYXIgUlRDX0lOVF9BTFJNIGludGVy
cnVwdCBvbmx5ICovCj4gLSAgICAgICB3cml0ZWwoUlRDX0lOVF9BTFJNLCB4cnRjZGV2LT5yZWdf
YmFzZSArIFJUQ19JTlRfU1RTKTsKPiArICAgICAgIC8qIERpc2FibGUgUlRDX0lOVF9BTFJNIGlu
dGVycnVwdCBvbmx5ICovCj4gKyAgICAgICB3cml0ZWwoUlRDX0lOVF9BTFJNLCB4cnRjZGV2LT5y
ZWdfYmFzZSArIFJUQ19JTlRfRElTKTsKPgo+ICAgICAgICAgaWYgKHN0YXR1cyAmIFJUQ19JTlRf
QUxSTSkKPiAgICAgICAgICAgICAgICAgcnRjX3VwZGF0ZV9pcnEoeHJ0Y2Rldi0+cnRjLCAxLCBS
VENfSVJRRiB8IFJUQ19BRik7Cj4gLS0KPiAyLjcuNAoKT3RoZXIgdGhlbiB0aGVzZSB0d28gYWJv
dmUgdGhpbmdzIGxvb2sgZ29vZC4KCkFsZXhhbmRyZTogQW55IGlzc3VlIHdpdGggdGhpcyBwYXRj
aD8KClRoYW5rcywKTWljaGFsCgotLSAKTWljaGFsIFNpbWVrLCBJbmcuIChNLkVuZyksIE9wZW5Q
R1AgLT4gS2V5SUQ6IEZFM0QxRjkxCnc6IHd3dy5tb25zdHIuZXUgcDogKzQyLTAtNzIxODQyODU0
Ck1haW50YWluZXIgb2YgTGludXgga2VybmVsIC0gWGlsaW54IE1pY3JvYmxhemUKTWFpbnRhaW5l
ciBvZiBMaW51eCBrZXJuZWwgLSBYaWxpbnggWnlucSBBUk0gYW5kIFp5bnFNUCBBUk02NCBTb0Nz
ClUtQm9vdCBjdXN0b2RpYW4gLSBYaWxpbnggTWljcm9ibGF6ZS9aeW5xL1p5bnFNUC9WZXJzYWwg
U29DcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
