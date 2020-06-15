Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 297421F912A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:15:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hvBAt85d77OtvY6MZZ6IkJ70oGUurJFOL72MdphdMyM=; b=FvUkT2EWQKtQju
	VqpBwlaDkt03pNKmcPQRLIaWA5b44mCLi7LVFBJJms38sfHrwBbVvCraIhqDb5+GCP7YdlISTQzdL
	a7o6DibYdBw1DrJbiM9GiUV5I/qhr/CG8M/eL6xuHQC2US0Vv6sRqKCninon22bTFBUknyjuyI1Qy
	gUDS+sgNpaqoSdLR36yPALvsKrj/AMVjko6of8XIXTc2aHH7hI0EvtVjTLPB4bAyCQjyBUL7LNOOY
	OpcuFJM68e9qZUm+ZJEUu7U/PHQ9tMRmtroeGBVmFygnwWlQlJnMoalnvVh21VCxaWCWBCY1SH702
	4tXvaK2EcsOWXb/UerOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkHE-0000xE-7F; Mon, 15 Jun 2020 08:15:32 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkGr-00086H-Oj
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 08:15:12 +0000
Received: by mail-qt1-x842.google.com with SMTP id y1so11882537qtv.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 01:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=PeSKgvXd465F+nZeBzqPtfbPRR02KvmYom1kw5jFHRM=;
 b=gaolLM3SJibkTPiylW9CVkCvCtGtkxucJIQ+CjQLqcZ1i6V69L5CIm3fo4ZfvxBQ18
 QTxmHkyBQ94s6V+QynK5T2wiO0+Tp2UpWly1tWGkZ+W6E1gr6meQBPbsnnkYj6b6QMox
 BhEmWboyPED4vbU5z8o12yd8lkNXdMr6RHHxqIzSr7HZB9HOXndhUw4peAckPJm5a7xC
 YZHiIxNIlnEcMYDf2fMqw7ZQTfT+sUyrlgso/2CAE3eQWlhM5oKZmsOuinqdjk6+TM1E
 GciWb3a65LfFuKSKuNA3ArEUQB0jxZ3MApSu1gQGHHMIrfyQmVV6y7RFFeSXHoQQDGxi
 obxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=PeSKgvXd465F+nZeBzqPtfbPRR02KvmYom1kw5jFHRM=;
 b=j4Y5RCRQaI7BDgDxs7L1x40OmU9loe2GgksVRO4vgjFzoTfFRWjNOjbQyhtFQsU3zM
 PkXLW4xMjdDUiSHqcAuWR0ulaHZSekRb6XOTYBk6TFvxqw73LOvJeU8yCBM3ZGaoIWX/
 uC44NjyZdz4nbsPlCzvE4BPbOhFmdxQFbqHPYo5WCz1yaERkoqZqAH+eCsT+JBr+2Lgl
 j+YKd3/2EDwdUnofwfKxJn2NjI7wnjrfzrQ+m8BlMN7XlMEn+it2S0DC/LzMpDa08nE/
 TrkQl00p4oXR3fZxIsQDpx1scwEIXiX5BjWu9hQlP3YA1T5SNPYKeHDkp8w0ijJqJEoe
 a8rw==
X-Gm-Message-State: AOAM532ldFWqvv1Vnrqzulkacow0bRQ4hiLuePzamMiBELEsGDY6rjgd
 qHkeFKGhy6LszJ54wwB0JbL6xLOoLFm4jU6QJQsLug==
X-Google-Smtp-Source: ABdhPJyzaLHGZRBoz244z1QgtZDLkoNy4Y/LUfzCIH8w/SgjyAXy9AFzI588si91fFcHWalj927TbVmmYo2/kiKLK6Q=
X-Received: by 2002:ac8:1bc1:: with SMTP id m1mr14093638qtk.57.1592208905775; 
 Mon, 15 Jun 2020 01:15:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200611102809.27829-1-hui.song_1@nxp.com>
In-Reply-To: <20200611102809.27829-1-hui.song_1@nxp.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Mon, 15 Jun 2020 10:14:55 +0200
Message-ID: <CAMpxmJUH-3=-r=DRVHP1dccvKQsuKZrng3vp7Ho864CtUMGR1g@mail.gmail.com>
Subject: Re: [PATCH] gpio: mpc8xxx: change the gpio interrupt flags.
To: Hui Song <hui.song_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_011509_870970_BCB249C5 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Y3p3LiwgMTEgY3plIDIwMjAgbyAxMjo0MyBIdWkgU29uZyA8aHVpLnNvbmdfMUBueHAuY29tPiBu
YXBpc2HFgihhKToKPgo+IEZyb206IFNvbmcgSHVpIDxodWkuc29uZ18xQG54cC5jb20+Cj4KPiBE
ZWxldGUgdGhlIGludGVycnVwdCBJUlFGX05PX1RIUkVBRCBmbGFncyBpbiBvcmRlciB0byBncGlv
IGludGVycnVwdHMKPiBjYW4gYmUgdGhyZWFkZWQgdG8gYWxsb3cgaGlnaC1wcmlvcml0eSBwcm9j
ZXNzZXMgdG8gcHJlZW1wdC4KPgo+IFNpZ25lZC1vZmYtYnk6IFNvbmcgSHVpIDxodWkuc29uZ18x
QG54cC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3Bpby9ncGlvLW1wYzh4eHguYyB8IDIgKy0KPiAg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncGlvL2dwaW8tbXBjOHh4eC5jIGIvZHJpdmVycy9ncGlvL2dwaW8tbXBj
OHh4eC5jCj4gaW5kZXggNjA0ZGZlYy4uMWU4NjY1MiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
aW8vZ3Bpby1tcGM4eHh4LmMKPiArKysgYi9kcml2ZXJzL2dwaW8vZ3Bpby1tcGM4eHh4LmMKPiBA
QCAtNDE3LDcgKzQxNyw3IEBAIHN0YXRpYyBpbnQgbXBjOHh4eF9wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQo+Cj4gICAgICAgICByZXQgPSBkZXZtX3JlcXVlc3RfaXJxKCZwZGV2
LT5kZXYsIG1wYzh4eHhfZ2MtPmlycW4sCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IG1wYzh4eHhfZ3Bpb19pcnFfY2FzY2FkZSwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgSVJRRl9OT19USFJFQUQgfCBJUlFGX1NIQVJFRCwgImdwaW8tY2FzY2FkZSIsCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIElSUUZfU0hBUkVELCAiZ3Bpby1jYXNjYWRlIiwKPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbXBjOHh4eF9nYyk7Cj4gICAgICAgICBpZiAo
cmV0KSB7Cj4gICAgICAgICAgICAgICAgIGRldl9lcnIoJnBkZXYtPmRldiwgIiVzOiBmYWlsZWQg
dG8gZGV2bV9yZXF1ZXN0X2lycSglZCksIHJldCA9ICVkXG4iLAo+IC0tCj4gMi45LjUKPgoKUGF0
Y2ggYXBwbGllZCwgdGhhbmtzIQoKQmFydG9zegoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
