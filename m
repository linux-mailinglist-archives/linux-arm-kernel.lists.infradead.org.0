Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43096DD71D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 09:28:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sgQ5i0iufmCRxqrPssUZriD2Tw+RJqgLsF3ZV2RtGrU=; b=N9cc+kLhlVdyPh
	0XPLbCJBCbtKtB8Mvcj0sMgH/yezmvTIG5j+DDHdMIE3AMhDnEKdq1Jfz+4DhAekPfxWhYK35BpXQ
	Tq87mTcW1/s8cISiVgvKYdRVzj3+tMFkz5H7nz9AaldsMNybt8HnwvLORdBFydlVB7Ahz36qzPXTl
	VM5QhSfxOhNRQWRtKtiwRFfEyT2GhEoIue59aA5Tmzhuhr6ghqsTYXikKJQ2OSkt2SYSUWPP0v4No
	2hvU/xj+++rViN776m95vKqhe5Q+Yukvgb9YmXLXNFzfzn45vCdkTT71//bH9Wpde9F1ytgd07vfG
	bmhw29IMYfSXsukeiKEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLj9x-0002qK-MD; Sat, 19 Oct 2019 07:28:21 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLj9r-0002pk-1f
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 07:28:16 +0000
Received: by mail-wm1-x342.google.com with SMTP id m18so8087704wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 19 Oct 2019 00:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=Fr2NikG6Tj2uHhMBe2Mkt6L0jUcAk7enEP452906uXE=;
 b=BLw4kgK+cmpzbOJU9K0NFE4vLuzs47u37DDF+nCJnAntl0/SDWwHatDa9JwpA77tJb
 F5HnbBVeTH0jlGnVZsfOHWY95iQe6GhDf8wjbiTaVhxLPdUqxyktcVh1lkzlOgUU2ko6
 PTq7AO9uMz0AA1PVwUTYpTl8rvkXnEqb/UtqxDkwP7QIiN2TvwFBncP6lIvP1jtXiK65
 K1QY7IJmUGLB5S3O3ZsO+3GA9VdS1Oswrr9FI2ipL9aB5xiqzWXMKBqcKSYxC9YRFFpU
 5ckwoIiS3Znrg3tycBhGvjM/L0PBeOvWH9f9F5Ox+ZQIJZiuHQrQ+sJU5wtbi0vMq1h6
 FHOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=Fr2NikG6Tj2uHhMBe2Mkt6L0jUcAk7enEP452906uXE=;
 b=e5lewygFqKYx8t1nf/DPCjxvZ1MkIDXi5d2ByFH5eiie5G2jypzIgCM2M5CPmJMP1F
 Xg8HTwbuCTJ/9gE1ZKBOwn4nyEVFpCUCuFqevTHXNnEIFRoYGLlfycw51eWpCuhQFpbr
 G1mCWyEpNgIKKWi7f7ilLLuCsyhxAIDSKg+m5XBOoa1Qs8Mx3xC54Jx4NAllWYdk9kr5
 QDwUoHlS5rRYp3+xMS9s09mP9Zj2DBkczJSu2G0uTHb3hVY+2JhGzCUKtOF/KU6VnE3A
 rSkkwaALQnZ5KXXkrPdgBPVqueOHagHX9qBhex7hDa3M5WRkJfx8q6eKDIlypvXRFMQu
 Aedw==
X-Gm-Message-State: APjAAAW5zX+IbggJE9hIc5WHBA3ZCgLYcEnpYxhaZ5svZugWgJwrMie+
 Zqw6TIhUlQ74UAhv25TIViznnA==
X-Google-Smtp-Source: APXvYqwBhR7P6UqTDRz+njy9FXXBvhp+4umjAhhV9A+lzUkV+U7s7V+AWjdrnegkIkSF2YsxNA77IQ==
X-Received: by 2002:a1c:a556:: with SMTP id o83mr11454552wme.0.1571470093037; 
 Sat, 19 Oct 2019 00:28:13 -0700 (PDT)
Received: from dell ([95.149.164.96])
 by smtp.gmail.com with ESMTPSA id g5sm3353151wmg.12.2019.10.19.00.28.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 19 Oct 2019 00:28:12 -0700 (PDT)
Date: Sat, 19 Oct 2019 08:28:09 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 2/2] mfd: mfd-core: Honour Device Tree's request to
 disable a child-device
Message-ID: <20191019072809.GX4365@dell>
References: <20191018122647.3849-1-lee.jones@linaro.org>
 <20191018122647.3849-3-lee.jones@linaro.org>
 <b7c59d6e-2ad8-30a1-013a-53c116f7b6ba@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b7c59d6e-2ad8-30a1-013a-53c116f7b6ba@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_002815_154881_4675E742 
X-CRM114-Status: GOOD (  20.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: baohua@kernel.org, arnd@arndb.de, stephan@gerhold.net,
 linus.walleij@linaro.org, daniel.thompson@linaro.org,
 linux-kernel@vger.kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

R29vZCBtb3JuaW5nIFJvYmluLAoKSXQncyBiZWVuIGEgd2hpbGUuICBJIGhvcGUgdGhhdCB5b3Ug
YXJlIHdlbGwuCgpUaGFua3MgZm9yIHRha2luZyBhbiBpbnRlcmVzdC4KCk9uIEZyaSwgMTggT2N0
IDIwMTksIFJvYmluIE11cnBoeSB3cm90ZToKPiBPbiAxOC8xMC8yMDE5IDEzOjI2LCBMZWUgSm9u
ZXMgd3JvdGU6Cj4gPiBVbnRpbCBub3csIE1GRCBoYXMgYXNzdW1lZCBhbGwgY2hpbGQgZGV2aWNl
cyBwYXNzZWQgdG8gaXQgKHZpYQo+ID4gbWZkX2NlbGxzKSBhcmUgdG8gYmUgcmVnaXN0ZXJlZC4g
IEl0IGRvZXMgbm90IHRha2UgaW50byBhY2NvdW50Cj4gPiByZXF1ZXN0cyBmcm9tIERldmljZSBU
cmVlIGFuZCB0aGUgbGlrZSB0byBkaXNhYmxlIGNoaWxkIGRldmljZXMKPiA+IG9uIGEgcGVyLXBs
YXRmb3JtIGJhc2lzLgo+ID4gCj4gPiBXZWxsIG5vdyBpdCBkb2VzLgo+ID4gCj4gPiBSZXBvcnRl
ZC1ieTogQmFycnkgU29uZyA8QmFvaHVhLlNvbmdAY3NyLmNvbT4KPiA+IFJlcG9ydGVkLWJ5OiBT
dGVwaGFuIEdlcmhvbGQgPHN0ZXBoYW5AZ2VyaG9sZC5uZXQ+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBM
ZWUgSm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvbWZk
L21mZC1jb3JlLmMgfCA1ICsrKysrCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMo
KykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWZkL21mZC1jb3JlLmMgYi9kcml2ZXJz
L21mZC9tZmQtY29yZS5jCj4gPiBpbmRleCBlYWZkYWRkNThlOGIuLjI0YzEzOTYzMzUyNCAxMDA2
NDQKPiA+IC0tLSBhL2RyaXZlcnMvbWZkL21mZC1jb3JlLmMKPiA+ICsrKyBiL2RyaXZlcnMvbWZk
L21mZC1jb3JlLmMKPiA+IEBAIC0xODIsNiArMTgyLDExIEBAIHN0YXRpYyBpbnQgbWZkX2FkZF9k
ZXZpY2Uoc3RydWN0IGRldmljZSAqcGFyZW50LCBpbnQgaWQsCj4gPiAgIAlpZiAocGFyZW50LT5v
Zl9ub2RlICYmIGNlbGwtPm9mX2NvbXBhdGlibGUpIHsKPiA+ICAgCQlmb3JfZWFjaF9jaGlsZF9v
Zl9ub2RlKHBhcmVudC0+b2Zfbm9kZSwgbnApIHsKPiA+ICAgCQkJaWYgKG9mX2RldmljZV9pc19j
b21wYXRpYmxlKG5wLCBjZWxsLT5vZl9jb21wYXRpYmxlKSkgewo+ID4gKwkJCQlpZiAoIW9mX2Rl
dmljZV9pc19hdmFpbGFibGUobnApKSB7Cj4gPiArCQkJCQkvKiBJZ25vcmUgZGlzYWJsZWQgZGV2
aWNlcyBlcnJvciBmcmVlICovCj4gPiArCQkJCQlyZXQgPSAwOwo+ID4gKwkJCQkJZ290byBmYWls
X2FsaWFzOwo+ID4gKwkJCQl9Cj4gCj4gSXMgaXQgcG9zc2libGUgZm9yIGEgZGV2aWNlIHRvIGhh
dmUgbXVsdGlwbGUgY2hpbGRyZW4gb2YgdGhlIHNhbWUgdHlwZT8gSWYKPiBzbywgaXQgc2VlbXMg
bGlrZSB0aGlzIG1pZ2h0IG5vdCB3b3JrIGFzIGRlc2lyZWQgaWYsIHNheSwgdGhlIGZpcnN0IGNo
aWxkCj4gd2FzIGRpc2FibGVkIGJ1dCBzdWJzZXF1ZW50IG9uZXMgd2VyZW4ndC4KPiAKPiBJdCBt
aWdodCBtYWtlIHNlbnNlIHRvIHVzZSBmb3JfZWFjaF9hdmFpbGFibGVfY2hpbGRfb2Zfbm9kZSgp
IGZvciB0aGUgb3V0ZXIKPiBsb29wLCB0aGVuIGNoZWNrIGFmdGVyd2FyZHMgaWYgYW55dGhpbmcg
d2FzIGZvdW5kLgoKVGhlIHN1YnN5c3RlbSBpbiBpdHMgY3VycmVudCBndWlzZSBkb2Vzbid0IHJl
bGlhYmx5IHN1cHBvcnQgdGhlCnNpdHVhdGlvbiB5b3UgZGVzY3JpYmUuIFdlIGhhdmUgbm8gd2F5
IHRvIHRyYWNrIHdoaWNoIGNoaWxkIG5vZGVzIGhhdmUKYmVlbiB0aHJvdWdoIHRoaXMgcHJvY2Vz
cyBwcmV2aW91c2x5LCB0aHVzIG1mZC1jb3JlIHdpbGwgYWx3YXlzIGNob29zZQp0aGUgZmlyc3Qg
Y2hpbGQgbm9kZSB3aXRoIGEgbWF0Y2hpbmcgY29tcGF0aWJsZSBzdHJpbmcuCgpJZiB5b3UgaGF2
ZSBhbnkgc3VnZ2VzdHMgaW4gdGVybXMgb2YgYWRkaW5nIHN1cHBvcnQgZm9yIG11bHRpcGxlCmNo
aWxkcmVuIHdpdGggbWF0Y2hpbmcgY29tcGF0aWJsZSBzdHJpbmdzLCBJJ2QgYmUgdmVyeSByZWNl
cHRpdmUuCgo+ID4gICAJCQkJcGRldi0+ZGV2Lm9mX25vZGUgPSBucDsKPiA+ICAgCQkJCXBkZXYt
PmRldi5md25vZGUgPSAmbnAtPmZ3bm9kZTsKPiA+ICAgCQkJCWJyZWFrOwo+ID4gCgotLSAKTGVl
IEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8u
b3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzog
RmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
