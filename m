Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B79F811F881
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 16:32:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i75j66AAF7alvgT44cJ/9YqCKyfKbsx/C0Hz0LvUXRo=; b=OGpR5o7PEJ7vPb
	tWMlDS4Pd6CMnDvbyAeg31hScuRdtNkNwVT3GG+cdPhoHgqdCg75w3DmWj/tmshWSbsI+JgGYaGBW
	h+QvMcZw8dzOZQ1OfNf/LIVRVIMVEpqvcBm82UF5SHtMqdIMV/gookyP3BEyJWESWCl0YWXqdHL+F
	AAueoc7U85dDQF/hKQZnY4GjlhysPqxUVI21J5s8++PRXQQEsHwFPZshrdkZq/aCOPCkgJFXkvKEa
	h0Ya4kWZMxeAXseNZtzYGiJuvYeQJecoVMXuw/ccM2Y/NivChFaoMxmrr6oC/uzW6hIJqrPCANiep
	cP0qToceD9MEYAwzplAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igVsZ-0003SI-Q9; Sun, 15 Dec 2019 15:32:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igVsP-0003Rs-IU; Sun, 15 Dec 2019 15:32:10 +0000
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
 [209.85.208.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6BD720866;
 Sun, 15 Dec 2019 15:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576423929;
 bh=LsdE1olfUWAg8NbQgwIIgsdHBueTtS886MJUXIF7248=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=1JbZ8zWQwRQdlNDMhXLyawJKgoPkUq82atf12KDHnNl4Ez+XlVN9k5/BersF7i2xF
 doZmwRzrKjAQ2ft+LIC+WmQZmTy/ptRyJm6TL6/K3u4BKX9xyo4vfHzi6NYKe40szC
 eA1aZs7ybyYhmC+WBYJjDX7IklYj62Rd6EirCuII=
Received: by mail-lj1-f174.google.com with SMTP id r19so3998874ljg.3;
 Sun, 15 Dec 2019 07:32:08 -0800 (PST)
X-Gm-Message-State: APjAAAUoOkCObt3E1GDvasaT+O+NkzPSqJgfe7s7YXpYeS+nH1oFyef4
 oecTdJBqdpCTx8pUPJeL4/33PuNUfPSGJfqoqZw=
X-Google-Smtp-Source: APXvYqyWeNlmS1ZKv6+Ukw2JuBgBJGRUtDQIF2wJpsNpVrW3pbEJ53qh+dW02vND3+h1b34iKThbbVA7gJWofj5IECg=
X-Received: by 2002:a2e:91cb:: with SMTP id u11mr16917581ljg.82.1576423927151; 
 Sun, 15 Dec 2019 07:32:07 -0800 (PST)
MIME-Version: 1.0
References: <20191214181130.25808-1-tiny.windzz@gmail.com>
 <20191214181130.25808-2-tiny.windzz@gmail.com>
In-Reply-To: <20191214181130.25808-2-tiny.windzz@gmail.com>
From: Chanwoo Choi <chanwoo@kernel.org>
Date: Mon, 16 Dec 2019 00:31:30 +0900
X-Gmail-Original-Message-ID: <CAGTfZH0XQ_V6i3+=nksK5E38XX+Qk5nvZfeb0ec4kVb6-Jn5ZQ@mail.gmail.com>
Message-ID: <CAGTfZH0XQ_V6i3+=nksK5E38XX+Qk5nvZfeb0ec4kVb6-Jn5ZQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] PM / devfreq: rk3399_dmc: add missing of_node_put()
To: Yangtao Li <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_073209_627967_E18D0444 
X-CRM114-Status: GOOD (  14.93  )
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

MjAxOeuFhCAxMuyblCAxNeydvCAo7J28KSDsmKTsoIQgMzoxMiwgWWFuZ3RhbyBMaSA8dGlueS53
aW5kenpAZ21haWwuY29tPuuLmOydtCDsnpHshLE6Cj4KPiBvZl9ub2RlX3B1dCgpIG5lZWRzIHRv
IGJlIGNhbGxlZCB3aGVuIHRoZSBkZXZpY2Ugbm9kZSB3aGljaCBpcyBnb3QKPiBmcm9tIG9mX3Bh
cnNlX3BoYW5kbGUgaGFzIGZpbmlzaGVkIHVzaW5nLgo+Cj4gU2lnbmVkLW9mZi1ieTogWWFuZ3Rh
byBMaSA8dGlueS53aW5kenpAZ21haWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2RldmZyZXEvcmsz
Mzk5X2RtYy5jIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZGV2ZnJlcS9yazMzOTlfZG1jLmMgYi9kcml2ZXJzL2RldmZyZXEv
cmszMzk5X2RtYy5jCj4gaW5kZXggMmU2NWQ3Mjc5ZDc5Li4yZjEwMjdjNWI2NDcgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9kZXZmcmVxL3JrMzM5OV9kbWMuYwo+ICsrKyBiL2RyaXZlcnMvZGV2ZnJl
cS9yazMzOTlfZG1jLmMKPiBAQCAtMzcyLDYgKzM3Miw3IEBAIHN0YXRpYyBpbnQgcmszMzk5X2Rt
Y2ZyZXFfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgICAgICAgIG5vZGUg
PSBvZl9wYXJzZV9waGFuZGxlKG5wLCAicm9ja2NoaXAscG11IiwgMCk7Cj4gICAgICAgICBpZiAo
bm9kZSkgewo+ICAgICAgICAgICAgICAgICBkYXRhLT5yZWdtYXBfcG11ID0gc3lzY29uX25vZGVf
dG9fcmVnbWFwKG5vZGUpOwo+ICsgICAgICAgICAgICAgICBvZl9ub2RlX3B1dChub2RlKTsKPiAg
ICAgICAgICAgICAgICAgaWYgKElTX0VSUihkYXRhLT5yZWdtYXBfcG11KSkKPiAgICAgICAgICAg
ICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihkYXRhLT5yZWdtYXBfcG11KTsKPiAgICAgICAg
IH0KPiAtLQo+IDIuMTcuMQo+CgpBcHBsaWVkIGl0LgoKLS0gCkJlc3QgUmVnYXJkcywKQ2hhbndv
byBDaG9pCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
