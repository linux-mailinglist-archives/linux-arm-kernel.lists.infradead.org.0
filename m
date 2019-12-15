Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB2C11F87B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 16:31:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k0yxwoPl8jWCLLTYprzR24MqXa2ZyuC9CIX2VuOLJkQ=; b=k8r6ky4jWHUbME
	CcBbCSsLM/bkvUFguVlKjMQQOpQAcB4fTxqDI+Bi5VV1bKeNK9YYd6nviielJ2HXQAHoeJA23qHzm
	zrB58I2U8EMYYSGGPnAacYwjOpZwmVq4mvRVAnUImw0fOUAsDIvgnq54FSYJ4ygrahZg+SyFsDI/9
	BfOJ8e/zEFdFgteeYblyA8mqT+sTlwEr+xpiAJiZC0POLKRIHvUGrv3qujUZlqv224VunKww6HD2E
	XumyyQfCQGUD//6hCCx9eLHTEq9J8zgekXPPFQdb5mlo23Ye4TJ77YRWy2hO4UzFgg03QVrbF2JXQ
	V57QovcJ8dQ21ApcDA9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igVs2-0003BI-UH; Sun, 15 Dec 2019 15:31:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igVrt-0003AM-1F; Sun, 15 Dec 2019 15:31:38 +0000
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
 [209.85.208.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 793A520866;
 Sun, 15 Dec 2019 15:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576423895;
 bh=LgHeGbyJrYWU3ryipXZAEWbKr4XnV0pc7CZo8nwe71o=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=i5Cutc5J5C/5aYfb3pnqldlule1dkMTiFtdLJQQf0csa7oyzCh7cQOCYG07GcSVZ9
 IqhCNmw8CkN/a/xa4PpC8UyV1eVrvlsHUwUDR3+xpHamO7llyTLZV0IjgaarW3NFPu
 smNpvbffdnRweEOQ/u/ZeoB1inTYavFVuPAUA4iU=
Received: by mail-lj1-f180.google.com with SMTP id r19so3998018ljg.3;
 Sun, 15 Dec 2019 07:31:35 -0800 (PST)
X-Gm-Message-State: APjAAAWwu+HasMUhkttBJEHSCTvlYzHmI6OMFhxq3Xmf8A7UPtfea2MM
 cENJjYpCxrhU0l7OfFU0QbuKInS+HewvLqM7T8A=
X-Google-Smtp-Source: APXvYqw2DbqZ9mPFhwyFC3xGwQKN0FgHbG3yv4TEKTv/RS3DYTfQCkrygxKAvb9/4K7Pve0MBgrcu0ELakg7Nt6nOu8=
X-Received: by 2002:a05:651c:208:: with SMTP id
 y8mr16919184ljn.36.1576423893690; 
 Sun, 15 Dec 2019 07:31:33 -0800 (PST)
MIME-Version: 1.0
References: <20191214181130.25808-1-tiny.windzz@gmail.com>
In-Reply-To: <20191214181130.25808-1-tiny.windzz@gmail.com>
From: Chanwoo Choi <chanwoo@kernel.org>
Date: Mon, 16 Dec 2019 00:30:57 +0900
X-Gmail-Original-Message-ID: <CAGTfZH2CS6o-zaHXReKJXzxsU_jfYKg2WL7uGpzyaFNhgTSVbg@mail.gmail.com>
Message-ID: <CAGTfZH2CS6o-zaHXReKJXzxsU_jfYKg2WL7uGpzyaFNhgTSVbg@mail.gmail.com>
Subject: Re: [PATCH 1/2] PM / devfreq: rockchip-dfi: add missing of_node_put()
To: Yangtao Li <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_073137_100079_CD57294E 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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

MjAxOeuFhCAxMuyblCAxNeydvCAo7J28KSDsmKTsoIQgMzoxMiwgWWFuZ3RhbyBMaSA8dGlueS53
aW5kenpAZ21haWwuY29tPuuLmOydtCDsnpHshLE6Cj4KPiBvZl9ub2RlX3B1dCBuZWVkcyB0byBi
ZSBjYWxsZWQgd2hlbiB0aGUgZGV2aWNlIG5vZGUgd2hpY2ggaXMgZ290Cj4gZnJvbSBvZl9wYXJz
ZV9waGFuZGxlIGhhcyBmaW5pc2hlZCB1c2luZy4KPgo+IFNpZ25lZC1vZmYtYnk6IFlhbmd0YW8g
TGkgPHRpbnkud2luZHp6QGdtYWlsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9kZXZmcmVxL2V2ZW50
L3JvY2tjaGlwLWRmaS5jIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9ldmVudC9yb2NrY2hpcC1kZmkuYyBiL2Ry
aXZlcnMvZGV2ZnJlcS9ldmVudC9yb2NrY2hpcC1kZmkuYwo+IGluZGV4IDVkMTA0MjE4ODcyNy4u
NDViMTkwZTQ0M2Q4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9ldmVudC9yb2NrY2hp
cC1kZmkuYwo+ICsrKyBiL2RyaXZlcnMvZGV2ZnJlcS9ldmVudC9yb2NrY2hpcC1kZmkuYwo+IEBA
IC0yMDAsNiArMjAwLDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9kZmlfcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKPiAgICAgICAgIG5vZGUgPSBvZl9wYXJzZV9waGFuZGxlKG5w
LCAicm9ja2NoaXAscG11IiwgMCk7Cj4gICAgICAgICBpZiAobm9kZSkgewo+ICAgICAgICAgICAg
ICAgICBkYXRhLT5yZWdtYXBfcG11ID0gc3lzY29uX25vZGVfdG9fcmVnbWFwKG5vZGUpOwo+ICsg
ICAgICAgICAgICAgICBvZl9ub2RlX3B1dChub2RlKTsKPiAgICAgICAgICAgICAgICAgaWYgKElT
X0VSUihkYXRhLT5yZWdtYXBfcG11KSkKPiAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4g
UFRSX0VSUihkYXRhLT5yZWdtYXBfcG11KTsKPiAgICAgICAgIH0KPiAtLQo+IDIuMTcuMQo+CgpB
cHBsaWVkIGl0LiBCZXR0ZXIgdG8gdXNlIHRoZSBjYXBpdGFsIGxldHRlciBmb3IgZmlyc3QgY2hh
ciBvZiBzZW50ZW5jZS4KCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
