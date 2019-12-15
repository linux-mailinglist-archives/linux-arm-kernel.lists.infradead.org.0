Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABDE11F883
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 16:32:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vfkzpDz/2Y3uqm63Y3SbRKRQO5j/BMhwLi7sVH/giCc=; b=AHHst+OjI+XW7X
	NFQIVT8NjwLabvZRcQ425qhd4nDqL47xI1lFwP7h6JQ/2pYGbqSFw3St94WfFeqcA3FBqu+y73mYU
	fHef22pjsXJIcNB27rR+u0PcT/P0kTIPDzC8uyz3yEgj+aOBWWoKVCh7lxBi4CzY6x8C9gGHkVjuj
	fIpPgoUqDwTMhcJmnY4RWq492oQ8g1sSBhXWx7qL2tf/WAVvD72oEw/SY9SN9+hRptPz1KwTFaIMa
	DTgxLxoKejPBXNvjk/YGQK2m9S2rFiDmotFm9SmCUdddf2C8WOVYgYe0DwHMeeUH+O5npu0I0pVU3
	jujbFStuBVbVkDuiiuTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igVsr-0003it-W3; Sun, 15 Dec 2019 15:32:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igVsd-0003ec-Hn; Sun, 15 Dec 2019 15:32:24 +0000
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
 [209.85.167.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C89F820866;
 Sun, 15 Dec 2019 15:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576423943;
 bh=cBaLB/vop1iNW5EhmBkuBZLdeEQ64p17vwMy2jCwDGo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=XA8CAtgrWX4w9Beb1YGF1wTUZcDXjZ1RjuIwfwqVeruPPYzo1qLQX9qOVjZ8JwUyz
 56Xm98KclPXV2PrUbpJdbQyHqFqWXTFm2aPiLLkhN8tPUFTQeRc5hDTtQh8dRSgn2V
 x+n8M1c9ScFSp5c+xJv3QcJxMLc1N66X2KnumnPA=
Received: by mail-lf1-f46.google.com with SMTP id n25so2499161lfl.0;
 Sun, 15 Dec 2019 07:32:22 -0800 (PST)
X-Gm-Message-State: APjAAAU5v6jKdnzF6c6nyuVWxgN7Ie9+kgRfBinw34eCExmizQEIuUxS
 7i0cX29PhrZEAm9zps+hwKKD0VazOzKJquxY6YI=
X-Google-Smtp-Source: APXvYqwtZTuPvb0XLqwarOMLvnGJwFkyoyUE7GOqxC5WmEgFBzD3rfzhdfcEmZj679sERXVXciR3s09yLubr+ptFvNg=
X-Received: by 2002:ac2:531b:: with SMTP id c27mr13906871lfh.91.1576423941027; 
 Sun, 15 Dec 2019 07:32:21 -0800 (PST)
MIME-Version: 1.0
References: <20191215135315.30656-1-tiny.windzz@gmail.com>
In-Reply-To: <20191215135315.30656-1-tiny.windzz@gmail.com>
From: Chanwoo Choi <chanwoo@kernel.org>
Date: Mon, 16 Dec 2019 00:31:44 +0900
X-Gmail-Original-Message-ID: <CAGTfZH0AEQT-GZX9EOPDcrxRVEdd0JC3iwwWmmn0CGuKDXHohw@mail.gmail.com>
Message-ID: <CAGTfZH0AEQT-GZX9EOPDcrxRVEdd0JC3iwwWmmn0CGuKDXHohw@mail.gmail.com>
Subject: Re: [PATCH] PM / devfreq: rockchip-dfi: convert to
 devm_platform_ioremap_resource
To: Yangtao Li <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_073223_626793_39F77DC0 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Linux PM list <linux-pm@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjAxOeuFhCAxMuyblCAxNeydvCAo7J28KSDsmKTtm4QgMTA6NTMsIFlhbmd0YW8gTGkgPHRpbnku
d2luZHp6QGdtYWlsLmNvbT7ri5jsnbQg7J6R7ISxOgo+Cj4gVXNlIGRldm1fcGxhdGZvcm1faW9y
ZW1hcF9yZXNvdXJjZSgpIHRvIHNpbXBsaWZ5IGNvZGUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBZYW5n
dGFvIExpIDx0aW55LndpbmR6ekBnbWFpbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZGV2ZnJlcS9l
dmVudC9yb2NrY2hpcC1kZmkuYyB8IDQgKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDMgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL2V2
ZW50L3JvY2tjaGlwLWRmaS5jIGIvZHJpdmVycy9kZXZmcmVxL2V2ZW50L3JvY2tjaGlwLWRmaS5j
Cj4gaW5kZXggNWQxMDQyMTg4NzI3Li5jYzVkNGMwMWFmMGIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9kZXZmcmVxL2V2ZW50L3JvY2tjaGlwLWRmaS5jCj4gKysrIGIvZHJpdmVycy9kZXZmcmVxL2V2
ZW50L3JvY2tjaGlwLWRmaS5jCj4gQEAgLTE3Nyw3ICsxNzcsNiBAQCBzdGF0aWMgaW50IHJvY2tj
aGlwX2RmaV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICB7Cj4gICAgICAg
ICBzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+ICAgICAgICAgc3RydWN0IHJvY2tj
aGlwX2RmaSAqZGF0YTsKPiAtICAgICAgIHN0cnVjdCByZXNvdXJjZSAqcmVzOwo+ICAgICAgICAg
c3RydWN0IGRldmZyZXFfZXZlbnRfZGVzYyAqZGVzYzsKPiAgICAgICAgIHN0cnVjdCBkZXZpY2Vf
bm9kZSAqbnAgPSBwZGV2LT5kZXYub2Zfbm9kZSwgKm5vZGU7Cj4KPiBAQCAtMTg1LDggKzE4NCw3
IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZGZpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCj4gICAgICAgICBpZiAoIWRhdGEpCj4gICAgICAgICAgICAgICAgIHJldHVybiAtRU5P
TUVNOwo+Cj4gLSAgICAgICByZXMgPSBwbGF0Zm9ybV9nZXRfcmVzb3VyY2UocGRldiwgSU9SRVNP
VVJDRV9NRU0sIDApOwo+IC0gICAgICAgZGF0YS0+cmVncyA9IGRldm1faW9yZW1hcF9yZXNvdXJj
ZSgmcGRldi0+ZGV2LCByZXMpOwo+ICsgICAgICAgZGF0YS0+cmVncyA9IGRldm1fcGxhdGZvcm1f
aW9yZW1hcF9yZXNvdXJjZShwZGV2LCAwKTsKPiAgICAgICAgIGlmIChJU19FUlIoZGF0YS0+cmVn
cykpCj4gICAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJSKGRhdGEtPnJlZ3MpOwo+Cj4gLS0K
PiAyLjE3LjEKPgoKQXBwbGllZCBpdC4KCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
