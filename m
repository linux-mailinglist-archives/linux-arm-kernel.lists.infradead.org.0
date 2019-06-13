Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE7F43468
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 10:52:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J31qWHv/tmgF4TqqGnsmDqNJrMHqzHCvzlEa8l3RvbM=; b=eAD8RFEBck6s1u
	S1j18Hf4tfC+Zbe2/3dK8a7gVbnlcmk5eOlb3HJQS1Ip7NtP91uf05/6qQTYbO0MNiZs/2xJlDEX7
	52xiB4Pc/pN7TyBATD+/qB32AefE/rhNO8zIThjxaOWQHsR1ISr1O5SGWMRhhWiELtmxd8CUqKZFp
	+PBMizDR8CgwaWrY0o7RZ0AfYu6fiSCNFhxKNLkpHWV7agJBHB+4qSMgVu/h56+zXIL4OhIJ9aTuf
	nzJzPVgpJZDrWudwoQzcfKdcNsue3RmTwXf2Wvga8yk0SO7+6RMVJeElqRV7Zvgs8Ar2BPhNQMRlk
	JT60dNRjq5x8OUdyKYhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbLTI-0003U5-BD; Thu, 13 Jun 2019 08:52:36 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbLSr-0003QW-PM
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 08:52:11 +0000
Received: by mail-wm1-x341.google.com with SMTP id g135so9269081wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 01:52:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=WVZ+rcl5b/TJbfPdwJog0AuENCxf5fDzdWtd1QjNORs=;
 b=KhRHPOT+eeCOo3Rd17kUr4gESsUUD6oB/H9FuZEkVh5X07Q3459tvOQUJY/t2LgvNt
 Y6UyMSWniCeuvWdTLwzXcrwj8Ag2k85/UAKnJIhY5spD8wVOGOY6Y8zvi4mW2VfDWbXe
 vd8pGQ9f8dOsk6c2/n+PJ2/q8VFeGZ26/hoUpLv4E1XmnO0ExHLiiDk+i00pEEkL7uic
 pxH9oKrv2e5eXF7YXI8BST1o0KYCgCjFx7reqdsSEcPxLCBbJ8GkRCoqCc4CNS9k83Gf
 TBo2kDnqQIhU+z+sB42tEAztWO1cS9IGrfz6leTNKEN3uIj4+cngS7qju+ylhNPkEs5g
 md5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=WVZ+rcl5b/TJbfPdwJog0AuENCxf5fDzdWtd1QjNORs=;
 b=n/IKjWaqKnETaYsuwdN8gZ4XLMo9xBIY+fHCHEpsf6gg6/R+gLdRC4N3Cga26fwp6a
 zrbSwCgXhZXyYbQFWX/GlZVp7RChUL0N+guy+020PPRlUGjQRxFMPydyPAjdbNz3IhyF
 Wb7NX4vfHecs2l7L4TJtBX7QkWoKBlE9L3+nZl6iHQ+AxSBfsVJ2nExQr6zUSUIriIby
 Co4CLhstddTInC9uuoMt/ZNbzrlSPG+DYz+ajdkz0x6aNuHxZjyp1n+WGlXmlPbfFOYU
 v5uS2XWb9mNd9WzajI2s9GgPI1AeFFkzEhX8kSE/kn5VfRzRyXSdEb2mEY6MLiPXQz6x
 SvZQ==
X-Gm-Message-State: APjAAAU2fjZJKe5Y7qiDNbACmoLh3MZ62Pma39aVROFU1TWmcEva+RjQ
 6oSnrQLnOj5CU63EZGVU9D1Gp/qzwr8=
X-Google-Smtp-Source: APXvYqwMM9q5lwGeSSVSnEBxvQ/pJDmMKfQGsGMfurbu78aCJ/K2e5YVPjas2AvJJWv2rHYYLvuXTw==
X-Received: by 2002:a1c:9d86:: with SMTP id g128mr2931036wme.51.1560415927490; 
 Thu, 13 Jun 2019 01:52:07 -0700 (PDT)
Received: from dell ([2.27.35.243])
 by smtp.gmail.com with ESMTPSA id s7sm4929762wmc.2.2019.06.13.01.52.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 13 Jun 2019 01:52:06 -0700 (PDT)
Date: Thu, 13 Jun 2019 09:52:04 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH v3 1/8] i2c: i2c-qcom-geni: Provide support for ACPI
Message-ID: <20190613085204.GF4660@dell>
References: <20190610084213.1052-1-lee.jones@linaro.org>
 <20190612103453.ccet2pneairnlpcc@ninjato>
 <20190612104011.GA4660@dell>
 <20190612104459.gvji3qxym5s4odfq@ninjato>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612104459.gvji3qxym5s4odfq@ninjato>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_015209_918634_B239A1FC 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: balbi@kernel.org, linux-usb@vger.kernel.org,
 wsa+renesas@sang-engineering.com, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, ard.biesheuvel@linaro.org,
 linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
 david.brown@linaro.org, alokc@codeaurora.org, linux-i2c@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 andy.gross@linaro.org, jlhugo@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAxMiBKdW4gMjAxOSwgV29sZnJhbSBTYW5nIHdyb3RlOgoKPiAKPiA+IFRoZXJlIGFy
ZSBubyBjcm9zcy1zdWJzeXN0ZW0gYnVpbGQgZGVwZW5kZW5jaWVzIG9uIGFueSBvZiB0aGVzZQo+
ID4gcGF0Y2hlcy4gIFRoZSBvbmx5IHJlYXNvbiB0aGV5IGFyZSBidW5kbGVkIHRvZ2V0aGVyIGlu
IHRoZSBzYW1lCj4gPiBwYXRjaC1zZXQgaXMgZm9yIGNyb3NzLXN1YnN5c3RlbSB2aXNpYmlsaXR5
IGFuZCB1bmRlcnN0YW5kaW5nLgo+ID4gCj4gPiBUaGVyZSBpcyB3aWRlIGludGVyZXN0IGluIHRo
ZXNlIGRldmljZXMuCj4gCj4gSSBzZWUuIFRoYXQgd291bGQgaGF2ZSBiZWVuIGEgZ3JlYXQgY292
ZXItbGV0dGVyLCBMZWUgOykgVGhhbmtzIGZvciB0aGUKPiBoZWFkcyB1cCEKCjopCgo+ID4gPiBB
bHNvLCB0aGUgY3VycmVudCBtYWludGFpbmVyIGVudHJ5IGZvciB0aGlzIGRyaXZlciBsb29rcyBs
aWtlOgo+ID4gPiAKPiA+ID4gZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1xY29tLWdlbmkuYzoKPiA+
ID4gICAgICAgICBBbmR5IEdyb3NzIDxhZ3Jvc3NAa2VybmVsLm9yZz4gKG1haW50YWluZXI6QVJN
L1FVQUxDT01NIFNVUFBPUlQpCj4gPiA+ICAgICAgICAgRGF2aWQgQnJvd24gPGRhdmlkLmJyb3du
QGxpbmFyby5vcmc+IChtYWludGFpbmVyOkFSTS9RVUFMQ09NTSBTVVBQT1JUKQo+ID4gPiAgICAg
ICAgIEFsb2sgQ2hhdWhhbiA8YWxva2NAY29kZWF1cm9yYS5vcmc+IChzdXBwb3J0ZXI6UVVBTENP
TU0gR0VORVJJQyBJTlRFUkZBQ0UgSTJDIERSSVZFUikKPiA+ID4gCj4gPiA+IEkgZGlkbid0IGhl
YXIgZnJvbSB0aG9zZSBwZW9wbGUgeWV0LCB3b3VsZCBiZSBncmVhdCB0byBoYXZlIHRoZWlyIGFj
a3MuCj4gPiAKPiA+IEkgd2lsbCBzZWUgaWYgSSBjYW4gcm91c2UgdGhlbSBmcm9tIHRoZWlyIHNs
dW1iZXIuCj4gCj4gUGxlYXNlIGRvLiBJZiB0aGV5IGFyZSBub3QgdG8gcmVhY2gsIHdlIHByb2Jh
Ymx5IG5lZWQgdG8gdXBkYXRlIHRoZQo+IGVudHJ5Li4uCgpJIGNvbnRhY3RlZCBib3RoIG9mIHRo
ZW0uCgogQW5keSBkb2Vzbid0IHRvdWNoIGFueXRoaW5nIHRoYXQgaXNuJ3QgUVVQIGJhc2VkICg4
OTk0IGFuZCBvbGRlcikuCgogRGF2aWQgZG9lc24ndCBkZWFsIHdpdGggTVNNIHBsYXRmb3JtcyBp
ZiBBbmR5IGlzIGF2YWlsYWJsZS4gCgpTbyBJIGd1ZXNzIHRoZSBkZWNpc2lvbiBpcyB5b3Vycy4g
IFNlZWluZyBhdCB0aGlzIHBhdGNoIGlzIHByZXR0eQp0cml2aWFsIGFuZCBoYXMgb3VyIEFDUEkg
ZXhwZXJ0J3MgQWNrLCB0aGUgZGVjaXNpb24gc2hvdWxkbid0IGJlIGEKZGlmZmljdWx0IG9uZS4K
Ci0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFk
CkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cg
TGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
