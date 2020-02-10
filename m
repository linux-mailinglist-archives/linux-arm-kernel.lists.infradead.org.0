Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DBA1572AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 11:16:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hUt5S9J3SnkvFh7Gd1AkcMmO1EvdUJMKAajnHOAcCNw=; b=rXRovzeglPvuY8
	IO5jugJzTeg2LLVaYDZSvlgtSbPF7TDSKAWJW8NIpL/Ff0dLaZiKg5s4zK5p/UovwObUEbLDWBeYK
	JO3r6hwfA5pJcZ9icyt4StEqIq0T7Cptu5uF7mQ2dpfA1+iaUDjAdsRvMF0ZoOw3BpkK27zY2VPxC
	KXWwa5GhmkrnuLuBX5zrAmezcSOgDdITGnhO2EU9RFy6yIyc+2j3A03rK9OdMn4V4FlMtASxbHfkJ
	B7BrUSPwdoLqBFgq800Fd5TJqGQhZqV10bkqpTGYLWDHqtO4MEvhRYTgSF8t4UpAmsFO4JoiqFToB
	Hs951YVCYWMcyDwKmccw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j167C-00037Z-Po; Mon, 10 Feb 2020 10:16:30 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1673-00035j-T1; Mon, 10 Feb 2020 10:16:23 +0000
Received: by mail-lj1-x244.google.com with SMTP id o15so6454148ljg.6;
 Mon, 10 Feb 2020 02:16:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=lpoquTHHmtHSGcwS1XpaRBb7o3Yp7v/ANk3Nz1XtzWU=;
 b=uSmCZRmxFB0OUKvRi4fURYrJuafIVFAwEcpke4E2T4MoPc78+le8tVZ2My1Ru2f/wz
 99oO9LGpFPI+KPpO1vg9TDfXqW5iH4wT+IyN1in3ETBX+/uoTES/i8fFam38J6PVs+mx
 wCuxXZUjDp8hRiVV8plt5q1u8BhK1SSqtWZF3xP6w6VzO0cDqDJh6ak+iA+rBxHF/lgM
 gaLLugeJr06xbt7GiDCZIIM97Habs+NUkZd4Lg/d2v9JdVE3alZAEZ60fggp61kXlr+b
 ZQojbmRtdqLGJ27Z2enCmU2aW2BLbov5e/uerR+OT4aCLc6vtSOeD8Y63XqZ5DCHLT0L
 zLKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=lpoquTHHmtHSGcwS1XpaRBb7o3Yp7v/ANk3Nz1XtzWU=;
 b=sy6UMTlMapf/EDTVY6Qxymt2UD4EL1BSeqeDuLmmsZqnAK1ANS2v4NYyLtFVucGpAs
 0HgEgI9q8XeP/QnkvIjLbGq7/CmuWLvqZzVsAHRJYXHySwh7aeZ7YHKTFi7ky9re5nks
 sSM/ggyn7AidINNRkDoRW1zS43W7vVtR6GzoKuIJW2c8uA6bXQc71h6Mc+hVt38XOOfz
 feNk0+uL2x1L4JnT1mE1F8LMaS0fk+6V8gmfQjQKChAbn4MixKhOkl/5VhrHAqUx35bm
 IsRSugwcy8V6csWnF/AyuK4V94utHBtrJM0gcfTZCLPRTa57Igk5P9uW7Dh3NVqBpseT
 Z9mA==
X-Gm-Message-State: APjAAAUEcScm+CVD9L2uzzOoDsGk950FRL9JBGvDbEQxzGRVfuxTG+jp
 dkU27VLTLdLTaDdOLVlfXdVKSM2F
X-Google-Smtp-Source: APXvYqymMWYVuwGul+z7dz2+xQgtFCIGwgXxAoBye6KIElypYeMRrGEjwzF8zbwM/JwMqpVbTcoutw==
X-Received: by 2002:a2e:86c4:: with SMTP id n4mr434588ljj.97.1581329778685;
 Mon, 10 Feb 2020 02:16:18 -0800 (PST)
Received: from [127.0.0.1] (84-10-202-70.dynamic.chello.pl. [84.10.202.70])
 by smtp.gmail.com with ESMTPSA id y14sm6135601ljk.46.2020.02.10.02.16.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Feb 2020 02:16:17 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v4 0/4] media: meson: vdec: Add compliant H264 support
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <cc8defafcf4849f48786c41d94c4e44414903fac.camel@ndufresne.ca>
Date: Mon, 10 Feb 2020 11:16:16 +0100
Message-Id: <8BAAA12D-B4D6-4F42-B763-B634C47539FD@gmail.com>
References: <20200116133025.1903-1-narmstrong@baylibre.com>
 <371bccfa68c4a9924137f087ef45c732e64bf808.camel@ndufresne.ca>
 <970b4e5b89db7f055217676a07281e37f6dcd35a.camel@ndufresne.ca>
 <f3d8eac3-73cb-75ad-3412-212b229f1654@baylibre.com>
 <cc8defafcf4849f48786c41d94c4e44414903fac.camel@ndufresne.ca>
To: Nicolas Dufresne <nicolas@ndufresne.ca>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_021621_939501_4B395C96 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [piotr.oniszczuk[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNA
bmR1ZnJlc25lLmNhPiB3IGRuaXUgMDguMDIuMjAyMCwgbyBnb2R6LiAyMjowODoKPiAKPiBJJ20g
Y3VycmVudGx5IHJ1bm5pbmcgRmVkb3JhIDMxIChEZWJpYW4gdW5zdGFibGUgc2hvdWxkIHByb3Zp
ZGUgdGhlCj4gc2FtZSksIHdpdGggdGhlIHN0b2NrIEdTdHJlYW1lciAxLjE2LjEuIEFuZCBkb2lu
ZyBwbGF5YmFjayB3aXRoOgo+IAo+IGdzdC1wbGF5LTEuMCBWaWRlb3MvYmJiX3N1bmZsb3dlcl8x
MDgwcF8zMGZwc19ub3JtYWwubXA0IC0tdmlkZW9zaW5rPSJrbXNzaW5rIiAtLWZsYWdzPXZpZGVv
Cj4gCj4gV2l0aCB0aGlzIHBsYXllciwgeW91IGNhbiBzZWVrIHdpdGggdGhlIGFycm93cyAobGVm
dC9yaWdodCksIG9yIGdvIGJhY2sKPiB0byB0aGUgc3RhcnQgdXNpbmcgMCBrZXkuIFdoZW4geW91
IHNlZWssIHRoZSBzdHJlYW1pbmcgc3RhbGxzLiBJZiB5b3UKPiBzd2l0Y2ggdGhlIC0tdmlkZW9z
aW5rIHRvIGZha2V2aWRlb3NpbmsgYXMgYW4gZXhhbXBsZSwgc2Vla2luZyB3b3Jrcwo+IHBlcmZl
Y3RseSwgYW5kIGtlcm5lbCBkb2VzIG5vdCBjb21wbGFpbiBhbnltb3JlLiBTYW1lIGlmIHlvdSBk
b24ndCB1c2UKPiBhIHplcm8tY29weSBwYXRoLCBsaWtlIGZiZGV2c2luay4KPiAKCk5pY29sYXMs
CgpBcmUgWW91IHVzaW5nIHN0cmVhbWVyIGNvbXBpbGVkIHdpdGggaW50ZXJuYWwgZ3N0IEZGbXBl
Zz8KSWYgc28gLSB0aGVuIElJUkMgMS4xNiBnc3QgYnVpbGQtaW4gZmZtcGVnIGlzIGF0IDQuMi4x
IGxldmVsIGFuZCBpdCBoYXMgbWlzc2luZyBzb21lIGZmbXBlZyBtYXN0ZXIgdjRsMiBjb21taXRz
IHdoaWNoIGFyZSBpbXByb3ZpbmcgYW1sb2dpYyB2ZGVjPC0+ZmZtcGVnIGNvb3BlcmF0aW9uLgoK
QWxzbyBJIHBlcnNvbmFsbHkgZm91bmQgYWRkaW5nIGh0dHBzOi8vZ2l0aHViLmNvbS90bW0xL0ZG
bXBlZy9jb21taXQvMTk2YmFiOTBhMjkzMjM3MjIwNTAxMTFlOTM2NTMyYWM5YWM5YmZkYSBtYWtl
cyBteXRodHYgb24gczkxMi9wYW5mcm9zdCB3aXRoIERSTV9QUklNRSBFR0xfTElOVVhfRE1BX0JV
Rl9FWFBPUlQgd29ya2luZyB3ZWxsIC0gYXQgbGVhc3Qgd2l0aCBIMjY0IGJsdXJheSBjb250ZW50
IChwcm9ncmVzc2l2ZTsgcHJvYmFiaWxpdHkgb2Ygc3RyZWFtIGVycm9ycz1sb3cpLgogClBsYXli
YWNrIG9mIFRWIGludGVybGFjZWQgY29udGVudCBob3dldmVyIHN0aWxsIGhhcyBpc3N1ZXMgb24g
Y3VycmVudCB2ZGVjICg1LjUuMitOZWlsJ3MgdjUgTUwgcGF0Y2ggc2VyaWVzKTogdmlkZW8gcGxh
eWJhY2sgc29tZXRpbWVzIGJlY29tZXMganVtcHkuIApBdCB0aGlzIG1vbWVudCBJIHN1c3BlY3Qg
aXQgaXMgYmVjYXVzZSBiaXRzdHJlYW0gZXJyb3JzIChUViByZWNvcmRpbmdzIHJlY29yZGVkIGZy
b20gU0FUIHNvIHN0cmVhbSBlcnJvcnMgYXJlIGhpZ2hseSBwcm9iYWJsZSkgYXJlIGNvbmZ1c2lu
ZyB2ZGVjIGFuZCB2ZGVjIGh3ICsgZmZtcGVnIHY0bDIgYXJlIG5vdCBhYmxlIHRvIGRlYWwvcmVj
b3ZlciB3aXRoIHRoaXPigKYuCih0aGlzIG1vcmUgZGVtYW5kaW5nIGVycm9yIGhhbmRsaW5nIGlz
IElNSE8gZ2VuZXJhbCBhdHRyaWJ1dGUgb2Ygc3RhdGVmdWwgZGVjb2RlcnMgd2hlbiBjb21wYXJl
ZCB0byBzdGF0ZS1sZXNzKQoKR2VuZXJhbGx5IEkgdGhpbmsgdmRlYyBlcnJvciByZWNvdmVyeSBp
biB2ZGVjPC0+ZmZtcGVnIG5lZWRzIGJlIGluc3BlY3RlZCBhbmQgbWF5YmUgdGhlcmUgaXMgcGxh
Y2UgdG8gaW1wcm92ZW1lbnTigKYuLgogICAgCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
