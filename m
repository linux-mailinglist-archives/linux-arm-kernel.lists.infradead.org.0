Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CAE6D3552
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 02:11:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pnWxT+3uCYFukkQyfVK8sMljWpN2hkjvkI3wTKEnifQ=; b=bwVPOXstlrnDy/
	9s4dqf+ISdQ2Z+zX0Rk9a1RgzylOLlXCu85CSoTof8F9YufB2N4B9SgzaDQFwV+o55O1mTPcIB6l/
	hbxHaY/yDcVIoq/wcGElzTJavHsMEyzua89NPLNs+82KxSMm6xkRM6LQUaf46wVHzLsb5K51uAbyv
	wiYk4DngUVd/j76+8SiOS1SDuI6r6JE2uCY9Qt5jeYKRsKMmMQ4lkhJL3QTzHMERj05J0oj+Vpl2+
	oiRBvq4u/AEtIyP9n2Hl/Q3dZopTNHdTN+zLKFr0tomjKNHd6yPrPEP9sXoeTzJsgdaOv0S4gPHcs
	9vRHugr7CnmV5NkVn2wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIiX6-00016n-KQ; Fri, 11 Oct 2019 00:11:48 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIiWD-0000LO-Rk
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 00:10:57 +0000
Received: by mail-ot1-x343.google.com with SMTP id e11so6487017otl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 17:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=CuWkKPMdB1z+o+XfUfQqodALV/gMtOa1+iT3xGY2djM=;
 b=V+/1YHgBwaJ9G2xcvRbf0wcjQADYe+tc7H7ZIRB7G1sOOk836UV02AeFA/O5/6uGBT
 9nDajgKdzPf7ZRtDvF31VQ/FHVVJPLSPoOv22VRoezeLKolwFKGjdfKlG+IlwzA2e8n2
 0BW9sJtbOq5sGr4eL8Jh8x9OwG5s2bJ0qO7A9RjB3P3Lz0K+nT2EsqZ2QL3ADcDUbv2P
 sdm0g5BsD4mHrgJT8Br7uZ9O2tAWROQhhddwUZnJlGb/AC0vtckBaGv9BJqIJXfa4Huc
 SJNgdhq8vYH/xOX+be8gAGhR7ND7CBqEAEVlFn72LIH0B3Hv8u1e94R8e+YZnU3QUU3d
 TWCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CuWkKPMdB1z+o+XfUfQqodALV/gMtOa1+iT3xGY2djM=;
 b=CyR9J9spjMm17J0MxjU7cJ3LLPT+Pd5qr96+YwUJyDir1u950b5kSLmEiDqJU1HtKr
 34sSB/1+PokjfZ3Ro46amNgNhv4xX3nOyGiAsCZsSV7psuBUJaNbbNILQ7LV8VXil0eH
 uhDN4fWgIMoExhVpq/uCLCDFjAK1IT74hMd17M0Fdkmy3xKdzuC+16s6rrFE2CS3ohDS
 NjY5a8rx7iA6hN/JqpPknsYWXGAV8VYgnxkddiuYstH3WRvEJkh6GIjrQudA9mV7HsIl
 JoNKx0vQX4bqw/zb7AF/2fuHYoWVet18KtSh2NNzY1ineBj8J1EFMy3edTfFFdFITkOR
 GwBA==
X-Gm-Message-State: APjAAAXtEVaaZctk8Kl/hIP+cknbhWH4hdnt8DStWqIsSvaU86Xx7KJA
 SwtSFjuIDNYF4tr3/CbhKL6E2T8Kxcoho3HDqgvvnw==
X-Google-Smtp-Source: APXvYqxZtpd1aw+WFgfMgVMfM/xQ2kYk0LHsr36Je/tEarbEcU93KFwlv3DkanirryaTd1tkYOZSPT3ZJwWCtI5udb4=
X-Received: by 2002:a05:6830:1685:: with SMTP id
 k5mr10285631otr.250.1570752651991; 
 Thu, 10 Oct 2019 17:10:51 -0700 (PDT)
MIME-Version: 1.0
References: <20191010023205.8071-1-hui.song_1@nxp.com>
In-Reply-To: <20191010023205.8071-1-hui.song_1@nxp.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Fri, 11 Oct 2019 02:10:41 +0200
Message-ID: <CAMpxmJXyoMu-Z0E0wejLSrgW3aE73fHxHxS3kANBoVY+FhfmGg@mail.gmail.com>
Subject: Re: [PATCH v7] gpio/mpc8xxx: change irq handler from chained to normal
To: Hui Song <hui.song_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_171054_409421_DADBE385 
X-CRM114-Status: GOOD (  20.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, LKML <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, linux-gpio <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Y3p3LiwgMTAgcGHFuiAyMDE5IG8gMDQ6NDIgSHVpIFNvbmcgPGh1aS5zb25nXzFAbnhwLmNvbT4g
bmFwaXNhxYIoYSk6Cj4KPiBGcm9tOiBTb25nIEh1aSA8aHVpLnNvbmdfMUBueHAuY29tPgo+Cj4g
TW9yZSB0aGFuIG9uZSBncGlvIGNvbnRyb2xsZXJzIGNhbiBzaGFyZSBvbmUgaW50ZXJydXB0LCBj
aGFuZ2UgdGhlCj4gZHJpdmVyIHRvIHJlcXVlc3Qgc2hhcmVkIGlycS4KPgo+IFdoaWxlIHRoaXMg
d2lsbCB3b3JrLCBpdCB3aWxsIG1lc3MgdXAgdXNlcnNwYWNlIGFjY291bnRpbmcgb2YgdGhlIG51
bWJlcgo+IG9mIGludGVycnVwdHMgcGVyIHNlY29uZCBpbiB0b29scyBzdWNoIGFzIHZtc3RhdC4g
IFRoZSByZWFzb24gaXMgdGhhdAo+IGZvciBldmVyeSBHUElPIGludGVycnVwdCwgL3Byb2MvaW50
ZXJydXB0cyByZWNvcmRzIHRoZSBjb3VudCBhZ2FpbnN0IEdJQwo+IGludGVycnVwdCA2OCBvciA2
OSwgYXMgd2VsbCBhcyB0aGUgR1BJTyBpdHNlbGYuICBTbywgZm9yIGV2ZXJ5IEdQSU8KPiBpbnRl
cnJ1cHQsIHRoZSB0b3RhbCBudW1iZXIgb2YgaW50ZXJydXB0cyB0aGF0IHRoZSBzeXN0ZW0gaGFz
IHNlZW4KPiBpbmNyZW1lbnRzIGJ5IHR3by4KPgo+IFNpZ25lZC1vZmYtYnk6IExhdXJlbnRpdSBU
dWRvciA8TGF1cmVudGl1LlR1ZG9yQG54cC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQWxleCBNYXJn
aW5lYW4gPGFsZXhhbmRydS5tYXJnaW5lYW5AbnhwLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBTb25n
IEh1aSA8aHVpLnNvbmdfMUBueHAuY29tPgo+IC0tLQo+IENoYW5nZXMgaW4gdjc6Cj4gICAgICAg
ICAtIG1ha2UgdW5zaWduZWQgaW50IGNvbnZlcnQgdG8gdW5zaWduZWQgbG9uZy4KPiBDaGFuZ2Vz
IGluIHY2Ogo+ICAgICAgICAgLSBjaGFuZ2UgcmVxdWVzdF9pcnEgdG8gZGV2bV9yZXF1ZXN0X2ly
cSBhbmQgYWRkIGNvbW1pdCBtZXNzYWdlLgo+IENoYW5nZXMgaW4gdjU6Cj4gICAgICAgICAtIGFk
ZCB0cmF2ZXJzZSBldmVyeSBiaXQgZnVuY3Rpb24uCj4gQ2hhbmdlcyBpbiB2NDoKPiAgICAgICAg
IC0gY29udmVydCAncHJfZXJyJyB0byAnZGV2X2VycicuCj4gQ2hhbmdlcyBpbiB2MzoKPiAgICAg
ICAgIC0gdXBkYXRlIHRoZSBwYXRjaCBkZXNjcmlwdGlvbi4KPiBDaGFuZ2VzIGluIHYyOgo+ICAg
ICAgICAgLSBkZWxldGUgdGhlIGNvbXBhdGlibGUgb2YgbHMxMDg4YS4KPiAgZHJpdmVycy9ncGlv
L2dwaW8tbXBjOHh4eC5jIHwgMjkgKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0KPiAgMSBm
aWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3Bpby9ncGlvLW1wYzh4eHguYyBiL2RyaXZlcnMvZ3Bpby9ncGlvLW1w
Yzh4eHguYwo+IGluZGV4IDE2YTQ3ZGUuLjVhMGYwMzAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cGlvL2dwaW8tbXBjOHh4eC5jCj4gKysrIGIvZHJpdmVycy9ncGlvL2dwaW8tbXBjOHh4eC5jCj4g
QEAgLTIyLDYgKzIyLDcgQEAKPiAgI2luY2x1ZGUgPGxpbnV4L2lycS5oPgo+ICAjaW5jbHVkZSA8
bGludXgvZ3Bpby9kcml2ZXIuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2JpdG9wcy5oPgo+ICsjaW5j
bHVkZSA8bGludXgvaW50ZXJydXB0Lmg+Cj4KPiAgI2RlZmluZSBNUEM4WFhYX0dQSU9fUElOUyAg
ICAgIDMyCj4KPiBAQCAtMTI3LDIwICsxMjgsMjAgQEAgc3RhdGljIGludCBtcGM4eHh4X2dwaW9f
dG9faXJxKHN0cnVjdCBncGlvX2NoaXAgKmdjLCB1bnNpZ25lZCBvZmZzZXQpCj4gICAgICAgICAg
ICAgICAgIHJldHVybiAtRU5YSU87Cj4gIH0KPgo+IC1zdGF0aWMgdm9pZCBtcGM4eHh4X2dwaW9f
aXJxX2Nhc2NhZGUoc3RydWN0IGlycV9kZXNjICpkZXNjKQo+ICtzdGF0aWMgaXJxcmV0dXJuX3Qg
bXBjOHh4eF9ncGlvX2lycV9jYXNjYWRlKGludCBpcnEsIHZvaWQgKmRhdGEpCj4gIHsKPiAtICAg
ICAgIHN0cnVjdCBtcGM4eHh4X2dwaW9fY2hpcCAqbXBjOHh4eF9nYyA9IGlycV9kZXNjX2dldF9o
YW5kbGVyX2RhdGEoZGVzYyk7Cj4gLSAgICAgICBzdHJ1Y3QgaXJxX2NoaXAgKmNoaXAgPSBpcnFf
ZGVzY19nZXRfY2hpcChkZXNjKTsKPiArICAgICAgIHN0cnVjdCBtcGM4eHh4X2dwaW9fY2hpcCAq
bXBjOHh4eF9nYyA9IGRhdGE7Cj4gICAgICAgICBzdHJ1Y3QgZ3Bpb19jaGlwICpnYyA9ICZtcGM4
eHh4X2djLT5nYzsKPiAtICAgICAgIHVuc2lnbmVkIGludCBtYXNrOwo+ICsgICAgICAgdW5zaWdu
ZWQgbG9uZyBtYXNrOwo+ICsgICAgICAgaW50IGk7Cj4KPiAgICAgICAgIG1hc2sgPSBnYy0+cmVh
ZF9yZWcobXBjOHh4eF9nYy0+cmVncyArIEdQSU9fSUVSKQo+ICAgICAgICAgICAgICAgICAmIGdj
LT5yZWFkX3JlZyhtcGM4eHh4X2djLT5yZWdzICsgR1BJT19JTVIpOwo+IC0gICAgICAgaWYgKG1h
c2spCj4gKyAgICAgICBmb3JfZWFjaF9zZXRfYml0KGksICZtYXNrLCAzMikKPiAgICAgICAgICAg
ICAgICAgZ2VuZXJpY19oYW5kbGVfaXJxKGlycV9saW5lYXJfcmV2bWFwKG1wYzh4eHhfZ2MtPmly
cSwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IDMyIC0gZmZzKG1hc2spKSk7Cj4gLSAgICAgICBpZiAoY2hpcC0+aXJxX2VvaSkKPiAtICAgICAg
ICAgICAgICAgY2hpcC0+aXJxX2VvaSgmZGVzYy0+aXJxX2RhdGEpOwo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMzEgLSBpKSk7CgpUaGlzIHdp
bGwgbm93IGZpdCBpbiA4MCBjaGFyYWN0ZXJzLgoKQmFydAoKPiArCj4gKyAgICAgICByZXR1cm4g
SVJRX0hBTkRMRUQ7Cj4gIH0KPgo+ICBzdGF0aWMgdm9pZCBtcGM4eHh4X2lycV91bm1hc2soc3Ry
dWN0IGlycV9kYXRhICpkKQo+IEBAIC00MDksOCArNDEwLDE2IEBAIHN0YXRpYyBpbnQgbXBjOHh4
eF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgICAgICAgaWYgKGRldnR5
cGUtPmdwaW9fZGlyX2luX2luaXQpCj4gICAgICAgICAgICAgICAgIGRldnR5cGUtPmdwaW9fZGly
X2luX2luaXQoZ2MpOwo+Cj4gLSAgICAgICBpcnFfc2V0X2NoYWluZWRfaGFuZGxlcl9hbmRfZGF0
YShtcGM4eHh4X2djLT5pcnFuLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgbXBjOHh4eF9ncGlvX2lycV9jYXNjYWRlLCBtcGM4eHh4X2djKTsKPiArICAgICAgIHJl
dCA9IGRldm1fcmVxdWVzdF9pcnEoJnBkZXYtPmRldiwgbXBjOHh4eF9nYy0+aXJxbiwKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgbXBjOHh4eF9ncGlvX2lycV9jYXNjYWRlLAo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJUlFGX05PX1RIUkVBRCB8IElSUUZfU0hBUkVE
LCAiZ3Bpby1jYXNjYWRlIiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbXBjOHh4
eF9nYyk7Cj4gKyAgICAgICBpZiAocmV0KSB7Cj4gKyAgICAgICAgICAgICAgIGRldl9lcnIoJnBk
ZXYtPmRldiwgIiVzOiBmYWlsZWQgdG8gZGV2bV9yZXF1ZXN0X2lycSglZCksIHJldCA9ICVkXG4i
LAo+ICsgICAgICAgICAgICAgICAgICAgICAgIG5wLT5mdWxsX25hbWUsIG1wYzh4eHhfZ2MtPmly
cW4sIHJldCk7Cj4gKyAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+ICsgICAgICAgfQo+ICsKPiAg
ICAgICAgIHJldHVybiAwOwo+ICBlcnI6Cj4gICAgICAgICBpb3VubWFwKG1wYzh4eHhfZ2MtPnJl
Z3MpOwo+IC0tCj4gMi45LjUKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
