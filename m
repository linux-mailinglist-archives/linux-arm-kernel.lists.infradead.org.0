Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73827839CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 21:46:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GYC999/tIz6ABqEHldDHPHJIT3VTPyMMTaIzYK1iT48=; b=WWDbZ4ylS613+B
	IKToAKltLFWJ1JOBjok94R7qCBFxBgn19TMGSwgRiuenXOQyqyu2o9lOjOOwHqWGUJ0dv+w2PH3FV
	UpWok03hop9j7npgTDCEXlNGm7W+QtGHHSUBqE+D0IS6QGGiQ3tjObbtARUOUUg6nM4GlznyLnV9S
	mAwc5DvU7qMv9nUxP0FkFbdekfEV+T98QdqsB2Iyzk7oOdUXbL7qQ89Hgqx/4PCoqtH669k+R6iH4
	LHgZZl/oo1aLIdmilmQa8uv7RQ9jNmv6BuyTNL8C36pe5SNKEwIoTje6QTPkgOS0LEU/i68+zdC7M
	YpbR0zdK8rfe6i3NQkSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv5PJ-0007o0-D5; Tue, 06 Aug 2019 19:46:05 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv5PB-0007nW-ND
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 19:45:59 +0000
Received: by mail-wm1-x342.google.com with SMTP id p74so79354125wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 12:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zqnY4zoExYirv5j275kkSZM5xl5DmrdpmTxFwF+lOzc=;
 b=EwYoxePl/KS6w7E7Ft/Exsa8u38hJ3WVuPExyN5cC/FDcWzSAHXyg/Q/451kVCnuSc
 r2yVnbykRxLXcYvajEd0Ihn60FHLEFnK2GktLeQocU1RHcL/AaLTGK8cSKUlNXhAtpkY
 HNmclOmV7P78RMyreNQoaVPEC5L0i1g/dQ24Brdmuj1/bHMIbh6pYN7SNKhT4aq0IXjl
 zsGaQPTnJBbfqQGKY8qsHepf6Z4rvtViRbKhHjCUHqIGET23NOPzwD+hEd/JuWRKOh3a
 gbmJERJJr4ETZorgu9ExtCQabyJvPLwNnbER5ydIXqEMbyw65lkJKfnmJWvfwXErCwQC
 WUkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zqnY4zoExYirv5j275kkSZM5xl5DmrdpmTxFwF+lOzc=;
 b=fiwzeuPGrwI8JLDCFJxqupiu/vu2NyDP5pVVE4BOIfltQ2rzSTymEebvcU0Aoqa+9s
 87YsR26PU5lNh9cAPwbyYQhiNOVMHKvyDqbvgTtR5iJTedKjpMdQOeq//eC7Q45ME5UU
 ajp4LecsSj92F8OFJfEy8pAgZoGFsPt9UTvLgcjEtohSBWOOWkeo2/U+5QScXEJi2IJx
 1+QnlVyaOo5RVlTYUl5ogv4Vdo4sOwMb9Tb/Q0pztBZDaG/zwqJNOLtfyR2ZomAnp7AA
 mfoCx/DRXxlGn+WSy8D7IqT8nhpzV57u8RhKw+OhZVqeuLdg+iBVtkzN9nubQQjwvcXh
 eDBQ==
X-Gm-Message-State: APjAAAWmyDEG/3L9hTbVb6A8kifUV6+tZwHQEPBvNUPlKxIs/p5Pfx23
 AcpWE8MO18wYdook70Xa5ygxBzb74srQwSnYQVM=
X-Google-Smtp-Source: APXvYqzXwbQhPH1/MtKwj6ayoXZ0LVip26qAJLlPdhq0Iu78rygKXhUnocsYSmd520AxEmlG08hdIWBRfBfsMkHCL3g=
X-Received: by 2002:a1c:9e90:: with SMTP id h138mr6386822wme.67.1565120755598; 
 Tue, 06 Aug 2019 12:45:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190806103156.3778-1-tao.zhou1@amd.com>
 <a19ac490-a803-84c0-5598-e78edbb3447b@gmail.com>
In-Reply-To: <a19ac490-a803-84c0-5598-e78edbb3447b@gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 6 Aug 2019 15:45:44 -0400
Message-ID: <CADnq5_Pv8xqexv_gv4F1jBis2RPuTgHfr4wb39OpFR6kJF9KcQ@mail.gmail.com>
Subject: Re: [PATCH] drm/amdgpu: fix compile error about readq/writeq on arm
 ARCH
To: Christian Koenig <christian.koenig@amd.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_124557_782302_3CF6EFB5 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexdeucher[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 kernel-build-reports@lists.linaro.org, Tao Zhou <tao.zhou1@amd.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>, Mark Brown <broonie@kernel.org>,
 Linux-Next Mailing List <linux-next@vger.kernel.org>, "Deucher,
 Alexander" <alexander.deucher@amd.com>, Dennis Li <dennis.li@amd.com>,
 Hawking Zhang <hawking.zhang@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBBdWcgNiwgMjAxOSBhdCA3OjI2IEFNIENocmlzdGlhbiBLw7ZuaWcKPGNrb2VuaWcu
bGVpY2h0enVtZXJrZW5AZ21haWwuY29tPiB3cm90ZToKPgo+IEFtIDA2LjA4LjE5IHVtIDEyOjMx
IHNjaHJpZWIgVGFvIFpob3U6Cj4gPiByZWFkcS93cml0ZXEgY2FuJ3QgYmUgZm91bmQgb24gYXJt
IGFyY2hpdGVjdHVyZSwgaW1wbGVtZW50IHRoZW0KPiA+IHdpdGggMzIgYml0cyBvcGVyYXRpb25z
Cj4KPiBNaG0sIHdhc24ndCB0aGUgd2hvbGUgcG9pbnQgYWJvdXQgdXNpbmcgcmVhZHEvd3JpdGVx
IHRoYXQgd2UgbmVlZGVkCj4gNjRiaXQgYXRvbWljIG9wZXJhdGlvbnM/CgpJdCBtaWdodCBiZSBi
ZXR0ZXIgdG8gdXNlIGF0b21pYzY0X3JlYWQvYXRvbWljNjRfc2V0IGxpa2Ugd2UgZG8gZm9yIGRv
b3JiZWxscy4KCkFsZXgKCj4KPiBDaHJpc3RpYW4uCj4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBU
YW8gWmhvdSA8dGFvLnpob3UxQGFtZC5jb20+Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9ncHUvZHJt
L2FtZC9hbWRncHUvYW1kZ3B1X2RldmljZS5jIHwgMSArCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Ft
ZGdwdS9hbWRncHVfZGV2aWNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
ZGV2aWNlLmMKPiA+IGluZGV4IGY2MmQ0ZjMwZTgxMC4uYWFmN2YzMWNmOGRmIDEwMDY0NAo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RldmljZS5jCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmMKPiA+IEBAIC0yOSw2
ICsyOSw3IEBACj4gPiAgICNpbmNsdWRlIDxsaW51eC9rdGhyZWFkLmg+Cj4gPiAgICNpbmNsdWRl
IDxsaW51eC9jb25zb2xlLmg+Cj4gPiAgICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+Cj4gPiArI2lu
Y2x1ZGUgPGxpbnV4L2lvLTY0LW5vbmF0b21pYy1sby1oaS5oPgo+ID4gICAjaW5jbHVkZSA8ZHJt
L2RybVAuaD4KPiA+ICAgI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljX2hlbHBlci5oPgo+ID4gICAj
aW5jbHVkZSA8ZHJtL2RybV9wcm9iZV9oZWxwZXIuaD4KPgo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gYW1kLWdmeCBtYWlsaW5nIGxpc3QKPiBhbWQt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vYW1kLWdmeAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
