Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3021A84A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 18:25:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zTwD41MluOFyj6uZxHvKoJadB8soLpj8YPLBpe/0Wj4=; b=Qs++yuu+DRDbKy
	Nk6fC8YU+b3k5go8SQfjwFdlzWV0XQo4OrxoT1j11RHnkQEIJZwobHUHeXKWb22/Zyi5dWx3Yw6cA
	EEsReoW7GUsploJFKtNal0aIDgUINpcrDJGLg+giLp4QEz18tk9vBmxp6M5GUmka8DW3e1D9WMBWG
	o9kpNXrrwLyqQrJX5y8kT+j/Z8hZoikT3tDQre5EJax+d73nFjddhBVfzsINrim7X+Um92F6Bhmfj
	4BVZNGzPZgG4gyK8DSzsDKHaGCvMkBcJoC2WegCtQnnJhHEtdK0PFFKnIBtXbcHWj5o/d1dYICXZo
	XN0+BhxBjkTlbRW9QMVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOONR-0007yk-IX; Tue, 14 Apr 2020 16:25:33 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOONA-0007pG-EW
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 16:25:22 +0000
Received: by mail-lj1-x244.google.com with SMTP id y4so425338ljn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 09:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=2una7iJWwOFkr0nty9iNTmvafQ/jcphfps7irdBQAAM=;
 b=XczHHsXO2Vc/3ax0jvKyy/m6ldMN//z2v7SfxrOcXa6ULeuaavUZ87yysIAOYUpMyq
 fsJRS0rN4YZ8RokGQGIFrSOOgcsclI55/cXPzvESzZp84oZ8CtHW5bD4JYRBtaW9KNwz
 pO2JejVYOOUh6K+++un76m5w5fj0TQDtkmmCOtML/yGPikdg04JEACVAt5vDKstChur/
 4/O7t+5465fwWGuGiINMW0Smh0fpQ/amnz36ZuyeAbhXfGFYwRgeS+FBOSDzRYyi4QNt
 q4wlyTAhnZd1U2+xWrDH/8r0lsyazH6isPKqq/+/ot6Gdn0LNH0sx9HqLVGDAFfuUegl
 /WhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2una7iJWwOFkr0nty9iNTmvafQ/jcphfps7irdBQAAM=;
 b=p9Nt3KjTtpGnttkYkSTSFDWL/QlTieIMhsDyhd5Owr5Bz2BLMGftV3GXcm9itb6aVb
 DAAPS6w5WEs52JTcZTspc5qXegDpjdKD4FuNSQ89Ozdh8jehK5jQ8SSgFOmS/eAEwGNM
 G1d1dKOcAAlc+nauVz4eQLuyb1SGmq7A0y5PksdqirXVkNxqKK5uTrRnLE4uAE0PWUmO
 IhGl+27ZcvNARmhu1b6x7Szn9Nky7cWdffStkCmBz/k61T8zIo5AkZrSVeKFGXL7Qk5p
 nCGc+punLIsSzWblaa/vqSFUNrNOAlOqK9PHHQFaz3oKyBGL/mNeO7KmitxPEXs/f7iN
 ++9Q==
X-Gm-Message-State: AGi0PubiIQC2zoyBvr3lkdB9a9XABq9xReaHV3Qrpo6tdS8NrvzFKMmO
 Psz+m9vS93j+t1gAaxINV9q0R2ik
X-Google-Smtp-Source: APiQypKoJ4+NDw8ILs0tNz9qCl7/54YNeXwAmegIbaAYbPNzbO3v92qT+kdeK3DDjgSoD6+kuN7Llw==
X-Received: by 2002:a2e:3507:: with SMTP id z7mr604794ljz.111.1586881514575;
 Tue, 14 Apr 2020 09:25:14 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152]) by smtp.googlemail.com with ESMTPSA id
 y199sm10668331lfa.80.2020.04.14.09.25.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Apr 2020 09:25:13 -0700 (PDT)
Subject: Re: [PATCH v6 11/14] memory: tegra: Support derated timings on
 Tegra210
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-12-thierry.reding@gmail.com>
 <7f23f140-4c56-3d9a-946e-f29bc569f40c@gmail.com>
 <20200414154753.GQ3593749@ulmo>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <05b10433-f18f-dc38-bdd5-16c91f222051@gmail.com>
Date: Tue, 14 Apr 2020 19:25:13 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200414154753.GQ3593749@ulmo>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_092516_502007_9F3651C6 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Rob Herring <robh+dt@kernel.org>, Joseph Lo <josephl@nvidia.com>,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTQuMDQuMjAyMCAxODo0NywgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPiBPbiBGcmksIEFw
ciAxMCwgMjAyMCBhdCAwMjo0NDoxNkFNICswMzAwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+
IDA5LjA0LjIwMjAgMjA6NTIsIFRoaWVycnkgUmVkaW5nINC/0LjRiNC10YI6Cj4+IC4uLgo+Pj4g
IAl0ZWdyYTIxMF9lbWNfZGVidWdmc19pbml0KGVtYyk7Cj4+PiAgCj4+PiArCWNkID0gZGV2bV90
aGVybWFsX29mX2Nvb2xpbmdfZGV2aWNlX3JlZ2lzdGVyKGVtYy0+ZGV2LCBucCwgImVtYyIsIGVt
YywKPj4+ICsJCQkJCQkgICAgICZ0ZWdyYTIxMF9lbWNfY2Rfb3BzKTsKPj4+ICsJaWYgKElTX0VS
UihjZCkpIHsKPj4+ICsJCWVyciA9IFBUUl9FUlIoY2QpOwo+Pj4gKwkJZGV2X2VycihlbWMtPmRl
diwgImZhaWxlZCB0byByZWdpc3RlciBjb29saW5nIGRldmljZTogJWRcbiIsCj4+PiArCQkJZXJy
KTsKPj4KPj4+ICsJCWdvdG8gZGV0YWNoOwo+Pgo+PiBJIHRoaW5rIGl0J3Mgbm90IHJlYWxseSB3
b3J0aHdoaWxlIHRvIGZhaWwgd2hvbGUgRU1DIGRyaXZlciBiZWNhdXNlIG9mCj4+IHRoZSBmYWls
ZWQgQ0RFVi4KPiAKPiBXZWxsLCB3ZSBkbyBraW5kIG9mIG5lZWQgdGhpcyBjb29saW5nIGRldmlj
ZSBtZWNoYW5pc20gaW4gb3JkZXIgZm9yIHRoZQo+IG1lbW9yeSB0byBjb250aW51ZSB0byBvcGVy
YXRlIHByb3Blcmx5IGF0IGhpZ2ggdGVtcGVyYXR1cmVzLiBJdCdzIGFsc28KPiB2ZXJ5IHVubGlr
ZWx5IHRoYXQgdGhpcyB3aWxsIGV2ZXIgZmFpbCwgc28gSSBkb24ndCBzZWUgYW55IGhhcm0gaW4K
PiBtYWtpbmcgdGhpcyBtYW5kYXRvcnkuCgpGYWlyIGVub3VnaC4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
