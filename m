Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD3F4B831
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 14:27:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ULrylvmG2FHE8kfLBOg6RNDhlH/KvNvnFLRsyPnQYA8=; b=S3T0d4/7kQPlrX
	w72rMCmKOcLbCsmT/taF1+KeV3gzqCxi6U4helukrAdQ31w9/q0BJjcMWITxtOG51+yzMKnd7Kvrh
	FUClYHANQ/H+sMBwwnIC2LNiKzp8usomoe/SI204CGSOo0K+ir5gRQQeJLLyQPAoMzzfhrKpQt90k
	CeBa459hJ0XLV7F50Q3b73OMDA5BrZV+W8hInBBoUxb8xVFs0Te5BpnbsNMx+/O1up3tIkukM5H/d
	NAZEsaF9Gig0YIxBtotNxn+3Hl1DqAcKBkcigWsjFQ5H2UIiT1ozrcswz+tvL8HWtmX5vhCIlc/nq
	B1meCLDLvbUTyEzUOhXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdZgD-0001iB-IH; Wed, 19 Jun 2019 12:27:09 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdZg2-0001he-Qn
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 12:27:00 +0000
Received: by mail-wr1-x444.google.com with SMTP id k11so3221475wrl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 05:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=QSWfzJ0IRnF5xM0kWm72D/t5avHd1tYQoEhgeDHA46Q=;
 b=iupYsJDTD6mefB1y16YhkAJii90fPfiEiLvnoMCucdnD5ePNHAoEj8hrBUgDVg4xUy
 6I9tJfBHzoQdZwqHERvMsnkhrbcHcI0imlUVuDGVUwkSBGK9TOpl9AWru4wm9toD+sQ5
 IfgrAVdXHByoj7SrIplgc2eIDxBPTW3oYRqJdFylf+oCWELSjKxCc4r8kyjBuqpldzih
 zfHDjcodoaD0le2uylm8RAF0c+mVoWelzaDrA6kecm+iXrrrJIJ6Ua5fmRaq1lBNjJxo
 5IXnOOdbVuUk2zJbgNCg3LVpcs2S/CpKXEd3JOz+wV/vRmC9wRLz8Yfc+z/nHkHq5Q2K
 kjzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=QSWfzJ0IRnF5xM0kWm72D/t5avHd1tYQoEhgeDHA46Q=;
 b=MXJLQy/IPDYEJkTZGOfi6kJ+e8VmUMGe9vQb8gTDPex7JkKBHBwFvRzdKPAHVTb0Jv
 r9aI0GnH77093N7mWONic2o5quHserxchHrruvyBNM7eBq1++JXQgC5DAvbrE1L7CeNH
 zjFB5gCMhjfPRcDivDn8+kn4nl6tXEDsnMy2xDW9Xz6BLRly675WzLzJrPHRvVjOstC2
 qZ1bVIuDPg0MUTCI0qzCcJu2zSMSL8AFZofSiDNFMiDfHsMJS5LsGPbkoZ/aC5kdfIhT
 FB3Aj5sRGI5lzDTeIZkwugd0G49RmnaUSVgkYbc3ofU4Z6lsU4DrvWxjXJInq7sqFMt2
 zLqQ==
X-Gm-Message-State: APjAAAWZvz3rp3DN9Q0FsUPmKgmzYnQXZqa9AJp9TQWDbSZetTsr8fjY
 340hMRB07WKWpGM1VMyGqeGInw==
X-Google-Smtp-Source: APXvYqx8othWu4CA1HkcpGGfLKUMxtT7r5TURqOCCXY26bgsNPt7GqM4/aKfAHqLCmhlMO46iUr5ig==
X-Received: by 2002:adf:f246:: with SMTP id b6mr26825721wrp.92.1560947217213; 
 Wed, 19 Jun 2019 05:26:57 -0700 (PDT)
Received: from dell ([2.27.35.243])
 by smtp.gmail.com with ESMTPSA id j7sm19058928wru.54.2019.06.19.05.26.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 05:26:56 -0700 (PDT)
Date: Wed, 19 Jun 2019 13:26:55 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [RFC PATCH] acpi/arm64: ignore 5.1 FADTs that are reported as 5.0
Message-ID: <20190619122655.GL18371@dell>
References: <20190619121831.7614-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619121831.7614-1-ard.biesheuvel@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_052658_893431_0318BE99 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 leif.lindholm@linaro.org, linux-acpi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAxOSBKdW4gMjAxOSwgQXJkIEJpZXNoZXV2ZWwgd3JvdGU6Cgo+IFNvbWUgUXVhbGNv
bW0gU25hcGRyYWdvbiBiYXNlZCBsYXB0b3BzIGJ1aWx0IHRvIHJ1biBNaWNyb3NvZnQgV2luZG93
cwo+IGFyZSBjbGVhcmx5IEFDUEkgNS4xIGJhc2VkLCBnaXZlbiB0aGF0IHRoYXQgaXMgdGhlIGZp
cnN0IEFDUEkgcmV2aXNpb24KPiB0aGF0IHN1cHBvcnRzIEFSTSwgYW5kIGludHJvZHVjZWQgdGhl
IEZBRFQgJ2FybV9ib290X2ZsYWdzJyBmaWVsZCwKPiB3aGljaCBoYXMgYSBub24temVybyBmaWVs
ZCBvbiB0aG9zZSBzeXN0ZW1zLgo+IAo+IFNvIGluIHRoZXNlIGNhc2VzLCBpbmZlciBmcm9tIHRo
ZSBBUk0gYm9vdCBmbGFncyB0aGF0IHRoZSBGQURUIG11c3QgYmUKPiA1LjEgb3IgbGF0ZXIsIGFu
ZCB0cmVhdCBpdCBhcyA1LjEuCj4gCj4gU2lnbmVkLW9mZi1ieTogQXJkIEJpZXNoZXV2ZWwgPGFy
ZC5iaWVzaGV1dmVsQGxpbmFyby5vcmc+Cj4gLS0tCj4gIGFyY2gvYXJtNjQva2VybmVsL2FjcGku
YyB8IDEwICsrKysrKystLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJuZWwvYWNwaS5jIGIv
YXJjaC9hcm02NC9rZXJuZWwvYWNwaS5jCj4gaW5kZXggODAzZjA0OTRkZDNlLi43NzIyZTg1ZmI2
OWMgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9rZXJuZWwvYWNwaS5jCj4gKysrIGIvYXJjaC9h
cm02NC9rZXJuZWwvYWNwaS5jCj4gQEAgLTE1NSwxMCArMTU1LDE0IEBAIHN0YXRpYyBpbnQgX19p
bml0IGFjcGlfZmFkdF9zYW5pdHlfY2hlY2sodm9pZCkKPiAgCSAqLwo+ICAJaWYgKHRhYmxlLT5y
ZXZpc2lvbiA8IDUgfHwKPiAgCSAgICh0YWJsZS0+cmV2aXNpb24gPT0gNSAmJiBmYWR0LT5taW5v
cl9yZXZpc2lvbiA8IDEpKSB7Cj4gLQkJcHJfZXJyKCJVbnN1cHBvcnRlZCBGQURUIHJldmlzaW9u
ICVkLiVkLCBzaG91bGQgYmUgNS4xK1xuIiwKPiArCQlwcl9lcnIoRldfQlVHICJVbnN1cHBvcnRl
ZCBGQURUIHJldmlzaW9uICVkLiVkLCBzaG91bGQgYmUgNS4xK1xuIiwKPiAgCQkgICAgICAgdGFi
bGUtPnJldmlzaW9uLCBmYWR0LT5taW5vcl9yZXZpc2lvbik7Cj4gLQkJcmV0ID0gLUVJTlZBTDsK
PiAtCQlnb3RvIG91dDsKPiArCj4gKwkJaWYgKCFmYWR0LT5hcm1fYm9vdF9mbGFncykgewo+ICsJ
CQlyZXQgPSAtRUlOVkFMOwo+ICsJCQlnb3RvIG91dDsKPiArCQl9Cj4gKwkJcHJfZXJyKCJGQURU
IGhhcyBBUk0gYm9vdCBmbGFncyBzZXQsIGFzc3VtaW5nIDUuMVxuIik7CgpUZXN0ZWQtYnk6IExl
ZSBKb25lcyA8bGVlLmpvbmVzQGxpbmFyby5vcmc+CgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9d
CkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJj
ZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVy
IHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
