Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 404EF30004
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 18:14:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VgmZAzUyyeDkJfeggplbXGnqxFksSsQchhIW5M7DJ3c=; b=WEWKNhs0AdRst0
	/nP+z4M1n8uXSRtsti31Wvr9YiHAXuXA7I3LoVXgrwj9JHMV4FYtlzT1bzLFBM9BXqlXHLRYl9HmD
	pcSz8L+Wrff6eBM/nLmFL+/VNCizujVoElYsTqjLqRcug/vg/zDnY3W+OIyL5k2S7DvUL6tqGv7l7
	e6UKbQ4/2NP6/4LQXk3LDhnxMXPkhjKQUCBJ7Iu2bke74hr+O4WwAyUFwudlZA11OmdcY5BDTGA6s
	GoiqfpAESaOyfWXbgtDWjP5tMbiVBJCEQbua7sCQBuaG471QR8Cn517Cxzj9hl5wnq7v7EujwftRd
	3xMpA/IplDLaCXlY9pRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWNhC-0000EG-Ct; Thu, 30 May 2019 16:14:26 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWNh4-0000Da-Rj
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 16:14:20 +0000
Received: by mail-lj1-x242.google.com with SMTP id h11so6654579ljb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 09:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=XmK9q1mGN7b6J4ODdEo3M1qArYHGWBwKVshxM4f06qI=;
 b=NC+9gVMIPhE4UEq4DmEQVSxKVVvwWVxObVXuy3Dy5tCThFcZXko5nmhViQRnze2i/I
 fSwXUz+NaxDnIHe0IC480esVOWswPMZeWILlHqW74AfwllaX2QGptx7cKGx3qLTtS8j6
 NzEcEdw+QKfjvFBS0VtMyk1XfKXDuxdwvR9xdd681UFY+nT6KHPleB0RyM+ZDi7xKLOz
 /fHNz2v5OVDrGszE4fUAUl2dUU/+7pXCVebD+bHigJ2t7xUJ9S2ZoTX9Sj+0Jo06ctuC
 Mad5J+HrWL+0HoBvSW2iQKBWGlZMshQ8rU6aZjdEBMPedGBkXxcpZkeNF7Bw1hcwFUrQ
 NS1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XmK9q1mGN7b6J4ODdEo3M1qArYHGWBwKVshxM4f06qI=;
 b=rR0sd9ZEeiOwMgqchBjEC7tdA1Z5YjwV0+Mh4tGaOW8VRc68Hrl/FdHHjZiCrIJmoi
 o8QlyF0KenWGJ7WThwKdTXLu3HMT0bCQJ8awgmhjCgjVTY1eMENQ7VEsqjvyJUYy1jHo
 OPFBstbqSL6ISkJUl86rXqAa50vC2BCwV+Qo9VtGLZLGFmtymrLTfa70sH3XUysoDaAd
 fGs28E2AgP7Q42EhVujTHMF2wxYlJ5gA2W4ES5p6zHdFidPiwuC3DtpeVJU9497wSI7c
 85BRzAgxVMDQL79iZyVLKRm5HiZHZvjlIHS0qD+aAC5kTZSjJAOe1HDF9boTFaDZ0/0P
 YrCg==
X-Gm-Message-State: APjAAAWlvfy5PPetBvwb9ig9QPr8vaLIv2niIAB2ux5nlVQZOp01ZCFS
 lcYJK8rlviQi9kDACsEeyfCnSzJM
X-Google-Smtp-Source: APXvYqzmFSkb0VYg/nw/YZHYkemnGBzkLyFKJzkID+tESoZ47z/BnAUSJVfRTTWIL2jjvt0h3pYjCw==
X-Received: by 2002:a2e:8741:: with SMTP id q1mr2523378ljj.97.1559232856343;
 Thu, 30 May 2019 09:14:16 -0700 (PDT)
Received: from [192.168.2.145] ([94.29.35.141])
 by smtp.googlemail.com with ESMTPSA id r14sm570580lff.44.2019.05.30.09.14.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 09:14:14 -0700 (PDT)
Subject: Re: [PATCH V4 5/8] memory: tegra: Add EMC scaling support code for
 Tegra210
To: Joseph Lo <josephl@nvidia.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
References: <20190529082139.5581-1-josephl@nvidia.com>
 <20190529082139.5581-6-josephl@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <1e197124-57f5-285b-1624-bba2f3d31386@gmail.com>
Date: Thu, 30 May 2019 19:14:13 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190529082139.5581-6-josephl@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_091418_898030_03A07B81 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjkuMDUuMjAxOSAxMToyMSwgSm9zZXBoIExvINC/0LjRiNC10YI6Cj4gVGhpcyBwYXRjaCBhZGRz
IHRoZSByZXF1aXJlZCBBUElzIGFuZCB2YXJpYWJsZXMgZm9yIHRoZSBFTUMgc2NhbGluZwo+IHNl
cXVlbmNlIGNvZGUgb24gVGVncmEyMTAuCj4gCj4gQmFzZWQgb24gdGhlIHdvcmsgb2YgUGV0ZXIg
RGUgU2NocmlqdmVyIDxwZGVzY2hyaWp2ZXJAbnZpZGlhLmNvbT4uCj4gCj4gU2lnbmVkLW9mZi1i
eTogSm9zZXBoIExvIDxqb3NlcGhsQG52aWRpYS5jb20+Cj4gLS0tCj4gdjQ6Cj4gLSBmaXggdGhl
IEFQSSB3aXRoIGdlbmVyaWMgbmFtaW5nCj4gLSB1c2UgJ3UxNicgaW4gJ3N0cnVjdCBlbWNfdGFi
bGVfcmVnaXN0ZXJfb2Zmc2V0Jwo+IC0tLQoKPiAgCj4gK2V4dGVybiBjb25zdCBzdHJ1Y3QgZW1j
X3RhYmxlX3JlZ2lzdGVyX29mZnNldCByZWdfb2ZmOwo+ICtleHRlcm4gdW5zaWduZWQgbG9uZyBk
cmFtX292ZXJfdGVtcF9zdGF0ZTsKClBsZWFzZSBhdm9pZCBnbG9iYWwgdmFyaWFibGVzIHdoZXJl
IHRoZXkgYXJlIG5vdCByZWFsbHkgbmVlZGVkLgoKQWRkIHJlZ19vZmYgcG9pbnRlciB0byB0ZWdy
YV9lbWMuCgpSZW1vdmUgZHJhbV9vdmVyX3RlbXBfc3RhdGUgdmFyaWFibGUgZW50aXJlbHkgYW5k
IHJlcGxhY2UgaXQgd2l0aApURUdSQV9EUkFNX09WRVJfVEVNUF9OT05FIGluIHRoZSBjb2RlIHNp
bmNlIG5vdGhpbmcgY2hhbmdlcyB0aGUgdmFyaWFibGUuCgpBZ2FpbiwgcHJlcGVuZCBhbGwgZ2xv
YmFsIHN5bWJvbHMgd2l0aCB0ZWdyYTIxMF8uCgpBbHRlcm5hdGl2ZWx5IHlvdSBjb3VsZCBzaW1w
bHkgaW5jbHVkZSB0ZWdyYTIxMC1lbWMtY2MtcjIxMDIxLmMgaW50bwp0ZWdyYTIxMC1lbWMuYywg
SSBkb24ndCBzZWUgYW55dGhpbmcgd3Jvbmcgd2l0aCB0aGF0IHZhcmlhbnQuCgoJI2luY2x1ZGUg
InRlZ3JhMjEwLWVtYy1jYy1yMjEwMjEuYyIKCk9yIHlvdSBjb3VsZCBzcXVhc2ggaXQgYWxsIGlu
dG8gYSBzaW5nbGUgc291cmNlIGZpbGUgaWYgdmFyaWFudHMgb3RoZXIKdGhhbiAicjIxMDIxIiBh
cmUgbm90IHBsYW5uZWQgdG8gYmUgc3VwcG9ydGVkLiBUaGlzIHdpbGwgaGVscCB0byByZWR1Y2UK
bWVzc2luZXNzIG9mIHRoZSBjb2RlIGFuZCB3aWxsIGFsbG93IGNvbXBpbGVyIHRvIGJldHRlciBv
cHRpbWl6ZSBpdCBhbGwuCgotLSAKRG1pdHJ5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
