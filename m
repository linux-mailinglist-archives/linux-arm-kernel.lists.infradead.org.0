Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD1D271E6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 23:49:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OkCVIX2e/qITtMO1dmDGwSOrjIbAKERqktwUMpOrDs0=; b=i/rREiB99MThSt
	379+2qw22Xgr4p7+M4HOiTgxrTcc3V9pi9vNEfSuZCRN8Ds+YHg0Jx50UrxQdwJpppU39NT9oX2z9
	p4GyXY9c+rZOj80KmNnV8epXNL0Yfz6VSO+8dG7FFV7aVHQ/OJKYXOr7FaR2ppAE3tKPkApQeB1ss
	0urS5tP2JvgLSHP8S+T5UrZJrAc2FE6iA74SLGu74xmzCphC5Kg1m3Huw8aCSY3GkOVcfEoUQK/ES
	bemlgI/8dSknZ8i99fD7C7D5OecW6ddtOgoeYYSufrias2xqSxDiXk6dTcampMYYlOaU+3Mj8KwEz
	N008E+MUKdcJ94GXzrqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTZ6l-0006X4-RC; Wed, 22 May 2019 21:49:11 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTZ6e-0006Vz-P7
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 21:49:06 +0000
Received: by mail-lj1-x244.google.com with SMTP id 14so3511437ljj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 14:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=iOQBrNwTYw1SJ63/WnHNyssBXV9YJJ2k4UCp73ToEmY=;
 b=qp7ksrqLx5ft/ImrAs4PupVHbiOySR7j6SkKW6uxuR8rBj9z12Uj+F7+UyVWnv3ZHz
 W/Ns+ZonjORK43hZe/WgphVUkLMjHRH7+C2CNrYMyTxOBeGlmhgZvFCL3PHMXZmIupnV
 Y2hwr1kXNAqp9r+XIOwauIZzoI8Lf/63GwjL23s1Vuiuc+XwA+i9mAAypjha7jlDGIAc
 X1S4iBB9s9w2hOve0jwvAT44+DQbAXUFZIBTrQLJLV064mcfUB8fUhoDVxPJogbRtnJH
 JgXNXOCEvNqmZWHkGd1aN6+yQ+zGUCJ4ndPiPzuSsnpNVvkz4tIcl79YBJdEbf44d11d
 JSWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=iOQBrNwTYw1SJ63/WnHNyssBXV9YJJ2k4UCp73ToEmY=;
 b=oB0hd+FI6GiY6W+j9a8m/GjMdIWhmiZbuCLoWquTYJKfXdZhPC2tbeU8secwiqqBSu
 uD7cpZV90bTyFPnpA7rPWhthpJcGoQ9huCFTDrSSseKLqDXylLKUtuc00V8i0eg0K3en
 TZBVn4okwR2gxZqMEceHUq6zPjCz1Ewc3TTVVMQ5hH70M2nnCTwTGQd8gKm7VO4b1dWA
 tuW+B5UXU/2hyijHj0/FFB1VLut3/eFJ4YTnV2u8MxicmuzLLO9npZSnCRSiHTarYLXY
 RiLIStKlhUI10XmIouDedKS0Kvz/PHxGxBvLxHXKDsy7/ktOM/BMLmdsSHaVfhyQ6RTR
 L1bw==
X-Gm-Message-State: APjAAAVJ5wqC2WsXmM+5KngRIOANMxAUx2wOZbZSPdfi9qLmh8uS3Nle
 Crt8emN9Hv6qgzrYCsKMevpkadM2rosk39JCVJ5dvA==
X-Google-Smtp-Source: APXvYqwn7Y1cj8wPhej94OTp0JB16CcRc/bDKnwG8PWg9M3eToMM02XbJOSHxYn9oeKK6KCeZ6o6KloIF4NRh2kbJzU=
X-Received: by 2002:a2e:95d2:: with SMTP id y18mr24141079ljh.167.1558561737233; 
 Wed, 22 May 2019 14:48:57 -0700 (PDT)
MIME-Version: 1.0
References: <1558338735-8444-1-git-send-email-amelie.delaunay@st.com>
 <20190522054833.GB4574@dell> <eb8425ec-989a-9701-7fee-61bd1d2b93c1@st.com>
 <20190522084133.GF4574@dell> <bc1b5f1d-23b0-141d-f58f-b54ac303fe20@st.com>
In-Reply-To: <bc1b5f1d-23b0-141d-f58f-b54ac303fe20@st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 22 May 2019 23:48:45 +0200
Message-ID: <CACRpkdYmdpwEvCBrL6i1V+Zxd0OSpZmD8BJPSZu9jYNeJkoimQ@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: stmfx: Fix compile issue when CONFIG_OF_GPIO is
 not defined
To: Amelie DELAUNAY <amelie.delaunay@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_144904_818891_7DB43508 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 Randy Dunlap <rdunlap@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "kbuild-all@01.org" <kbuild-all@01.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMjIsIDIwMTkgYXQgMTE6MjEgQU0gQW1lbGllIERFTEFVTkFZIDxhbWVsaWUu
ZGVsYXVuYXlAc3QuY29tPiB3cm90ZToKCj4gLi4vZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtc3Rt
ZnguYzo0MDk6MjA6IGVycm9yOgo+IOKAmHBpbmNvbmZfZ2VuZXJpY19kdF9ub2RlX3RvX21hcF9w
aW7igJkgdW5kZWNsYXJlZCBoZXJlIChub3QgaW4gYSBmdW5jdGlvbikKPiAgICAuZHRfbm9kZV90
b19tYXAgPSBwaW5jb25mX2dlbmVyaWNfZHRfbm9kZV90b19tYXBfcGluLAo+Cj4gT0ZfR1BJTyBk
ZXBlbmRzIG9uIE9GLgo+Cj4gU28gZWl0aGVyCj4gICAgICBkZXBlbmRzIG9uIE9GIHx8IChPRiAm
JiBDT01QSUxFX1RFU1QpCj4gb3IKPiAgICAgIGRlcGVuZHMgb24gT0YgfHwgKE9GX0dQSU8gJiYg
Q09NUElMRV9URVNUKQo+Cj4gYW5kCj4KPiAgICAgIHNlbGVjdCBPRl9HUElPCgpJIHdvdWxkIHVz
ZSBqdXN0OgoKZGVwZW5kcyBvbiBPRl9HUElPCgpCZWNhdXNlIE9GX0dQSU8gYWxyZWFkeSBkZXBl
bmRzIG9uIE9GLCBhbmQKY29tcGlsZSB0ZXN0cyB3aWxsIG5vdCB3b3JrIHdpdGhvdXQgT0ZfR1BJ
TyB3aGljaApyZXF1aXJlIE9GIHNvLi4uCgpCZXNpZGVzIGl0IGlzIHdoYXQgbW9zdCBvdGhlciBH
UElPIGRyaXZlcnMgZG8uCgpTbyBqdXN0IGtlZXAgdGhhdCBvbmUgbGluZSBhbmQgZHJvcCB0aGUg
cmVzdC4KCllvdXJzLApMaW51cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
