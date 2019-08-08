Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5BD86AA2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 21:33:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WnggQlXOiQM//DlL5XGbNMXWhelUo4MJT3SssTKfQuI=; b=KlzyygpZ87rWX6
	d/S1uWFw/et1lFDO1OFkeqyuiESOZpkoUFetkk9YMggm2eoOGCp3ysx3mfOcffpJTn5nqzjRrLNi6
	KWIhzdslvm82vxQyLuZqu+Z4zEOfZt2mDOzQHlY7s8EsKm1fJIBNSzuhyk6VL2gneTvfAY0m5sUH4
	hh2d8s00iOVi6iroK95G6M7MkO0GC9CrdmVq8ArFcekyo1yBdWW/rcZC8Dh3HEk4D0SVP+oWWhdLB
	3ESW2ciPxG9JM0ntonXE/KO7vg4/egpSCcLOJXL9f464GO/s1Dj7TrU34AKE65l4Qv4ocsKZSyj5h
	dYtHawXaftzBy3dpkokA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvoAQ-0006lG-HF; Thu, 08 Aug 2019 19:33:42 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvoAF-0006kR-D3
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 19:33:32 +0000
Received: by mail-wm1-x344.google.com with SMTP id v15so3476610wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 12:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=FfnRvT8bsCxQfTxapev0xWL1W1r30LXrZim/pxgudsU=;
 b=USK90tVIdJIFVBJZ2H17am399y7k1Utv/BXtZddGo6yJp74+M9f3x25FyBl6tkxpfW
 e+sW8fcQJgN7rhBFguwmJIMhyHfhN1hPlJkPZYC7AcWot2O1OHkTM9iA1E9qD0QilqQ7
 x3PGckwRyI5rLi38dtaInQBPQkjHvF0waQlm3qU4aEteDUtDYTWxa31/sHuT7dHloPkv
 SW5T0EHQxbWDDg+61m+b3qpEE9Y9r8oa4EagA22Z3tC08EKTkRti/nO+UdTtDnEC9Emv
 49SRgpEG23SWIJo+o4oIoqDSOXh4sjt9Izdrt90p4v5CplNKgQQK3CDFIIm1BOVVUYa3
 K+DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=FfnRvT8bsCxQfTxapev0xWL1W1r30LXrZim/pxgudsU=;
 b=pUZGztlZHoyI2zLqAZ83dgH2kBBrlCcE3tEnZN/GLErC72M5YYCCxFPBRJr5VJpMoB
 Dr1gGhx4PCVtLoWBBNfCD7VzKo+8OTazac+06SgTSpfMQ8Ik3DAwxu5yEdl7RKTIm3MJ
 L9ekFjH9ugzgkS/QFGUgTlQCQet9D1cagy/dqR3VaTj0rt5nyFjTyq4TeYN+q3mFulSt
 zQipRLQqyTTv7EyOudUxNSetXcP3cTX7fspp31Y4wLfLdE2IqZ5jETgITzJ8wy+er5aJ
 zdyB0qPXRxCMZF6Lg5kITZJpOFyKyWPlx4PQiNPb9At3qVHlDJU+qx/3SABFS8CvPhWL
 /fRQ==
X-Gm-Message-State: APjAAAUKVYkrltDyr7aVQuTYNyxOrviSPrjSHLkwUjjtqNZxtayf1r0V
 DwV4cZq8Hu0D3fwXP780fDqSd0iFaeaF8OwPs5I=
X-Google-Smtp-Source: APXvYqxYYZWziRgtaG892+kpeNCC9wfJ7Nk7VgPAAR6JgQ9Jg9J6r/T2K7IQ+WDKu0ncIr3q5D9lqT2jiaNIWF2wJGk=
X-Received: by 2002:a7b:c751:: with SMTP id w17mr6501804wmk.127.1565292809753; 
 Thu, 08 Aug 2019 12:33:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190807025640.682-1-tao.zhou1@amd.com>
 <20190808192535.GA18697@roeck-us.net>
In-Reply-To: <20190808192535.GA18697@roeck-us.net>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 8 Aug 2019 15:33:17 -0400
Message-ID: <CADnq5_ONGvL0yMybsXCyYJO6zKRAi4aEPo8LwEwQjSP3aVbdJQ@mail.gmail.com>
Subject: Re: drm/amdgpu: replace readq/writeq with atomic64 operations
To: Guenter Roeck <linux@roeck-us.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_123331_448141_E8E98644 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexdeucher[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kernel-build-reports@lists.linaro.org, Mark Brown <broonie@kernel.org>,
 Tao Zhou <tao.zhou1@amd.com>, amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Linux-Next Mailing List <linux-next@vger.kernel.org>,
 Dennis Li <dennis.li@amd.com>, "Deucher,
 Alexander" <alexander.deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Christian Koenig <christian.koenig@amd.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Hawking Zhang <hawking.zhang@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBBdWcgOCwgMjAxOSBhdCAzOjMxIFBNIEd1ZW50ZXIgUm9lY2sgPGxpbnV4QHJvZWNr
LXVzLm5ldD4gd3JvdGU6Cj4KPiBPbiBXZWQsIEF1ZyAwNywgMjAxOSBhdCAxMDo1Njo0MEFNICsw
ODAwLCBUYW8gWmhvdSB3cm90ZToKPiA+IHJlYWRxL3dyaXRlcSBhcmUgbm90IHN1cHBvcnRlZCBv
biBhbGwgYXJjaGl0ZWN0dXJlcwo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFRhbyBaaG91IDx0YW8u
emhvdTFAYW1kLmNvbT4KPiA+IFJldmlld2VkLWJ5OiBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5k
ZXVjaGVyQGFtZC5jb20+Cj4KPiBSZWdhcmRpbmcgdGhlIGNsYWltIHRoYXQgdGhpcyB3b3VsZCB3
b3JrIGZvciAzMi1iaXQgeDg2IGJ1aWxkczoKCkkgd2Fzbid0IHRhbGtpbmcgYWJvdXQgcmVhZHEv
d3JpdGVxLCBJIHdhcyB0YWxraW5nIGFib3V0IHRoZSBhdG9taWM2NAppbnRlcmZhY2VzLgoKQWxl
eAoKPgo+IG1ha2UgQVJDSD1pMzg2IGFsbG1vZGNvbmZpZwo+IG1ha2UgQVJDSD1pMzg2IGRyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2Uubwo+Cj4gcmVzdWx0cyBpbjoKPgo+
ICAgLi4uCj4gICBDQyBbTV0gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZp
Y2Uubwo+IGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYzogSW4gZnVu
Y3Rpb24g4oCYYW1kZ3B1X21tX3JyZWc2NOKAmToKPiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdw
dS9hbWRncHVfZGV2aWNlLmM6Mjc5Ojk6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBm
dW5jdGlvbiDigJhyZWFkceKAmTsKPgo+IGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9kZXZpY2UuYzogSW4gZnVuY3Rpb24g4oCYYW1kZ3B1X21tX3dyZWc2NOKAmToKPiBkcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGV2aWNlLmM6Mjk4OjM6IGVycm9yOiBpbXBsaWNp
dCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiDigJh3cml0ZXHigJkKPgo+IFRoaXMgaXMgd2l0aCBu
ZXh0LTIwMTkwODA4Lgo+Cj4gR3VlbnRlcgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gYW1kLWdmeCBtYWlsaW5nIGxpc3QKPiBhbWQtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vYW1kLWdmeAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
