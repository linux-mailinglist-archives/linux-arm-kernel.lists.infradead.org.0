Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 121941BBA18
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 11:42:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mzYfTMqtNTGMD8i7x5BTaTvBsgGATCH6AZgQgHKKtgU=; b=SJm4eKoJ5iA7ck
	v96CoT+/19uXv556gVcjUfIg9bNnCCxSPxLTDrso0ddG99C7zQnUFc6CtXaTHSEXHEZUvTSac9T/a
	wjsB5g7Zm0Wy+MdiK5isqyGEsYk01nOheAaCT+HJNTh/4Ab5k6nbM7nB0g7kVVle8DykjCvxWHVsp
	ulaXhsWA3+W5Sbhnm4ytygkhWD85oiJimLf3s9xlXQ0kYwGZQryWEVCCaE10kJ40+3gR1SfOMxh4V
	RiiJrQEAILpf1gPADREGPRMGCpptND0ru60S1vyNCQrJ03wSHk/MYH0mQikoBoUxgc2fxh2KuWVq6
	/zfuSsk+USFPwrIfw55w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTMl6-0007fP-43; Tue, 28 Apr 2020 09:42:32 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTMkh-0007ba-EB
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 09:42:09 +0000
Received: by mail-lj1-x241.google.com with SMTP id f18so20740582lja.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 02:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=WT6mF0IwJRAWJibfVj6jkV3JG6t831H/TM7wsxX5kmk=;
 b=Oc8uD1mS503FcEMlkUqEA6u5te4rKpMM/UsnhiU+pzKrxq6vCg8ReWomPx9ySZjDJr
 +Upu1NQfJO+9N/qO+diiboHKlAuEJqt9aZ34HX/ZsPFxm7O5vOSC3B8Rwi2sfl2TcR45
 oq9TMx8Y30Anq/gkwzDocYWGUdVgj9/lmWha+za55Aoq9wVaZP22v4DdjzkOAP0plN1V
 KumbSL9f451cSixc4MIxZOBdo+1+k+YAMuF1d2Svjh8djlHUICTmr/SGlky8XOl49+Cb
 Pf1WGvOF+fGJjYSzYy2u403Vg+4dsi6C5uSxe2QqlhAJlD48Vqs+BiUvJuRW0EFZ7g3H
 VMlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WT6mF0IwJRAWJibfVj6jkV3JG6t831H/TM7wsxX5kmk=;
 b=c9Rccb07oEkpJSp7HnaWNUSsriMs4/5Q4a93aX7dbN7jidfWrauHL9J8G03b1sWgWL
 rlT1gABYD8EHGBCKVWX7PvhLvRI64tk/B4ESS8Y9o7oVtGae9GR8aYCDWfVBlZs4qI9M
 ///aOJRHAnrKEIu7aHM9cTo+YlMmvbD9fIid766+aoBPdsOsdM6h4e6PuNNrs+KamZHZ
 RV1kKEJJb7p991vfBtpfPVl1XUrEehA6HswNffx+y+FvmhVsqUa6vU1wPuDWE+CwnaZ3
 a9pgZJl28UwMOkaaoRPUmOo7UwNATP1g8FZ/9+m1FIGjyF0jEJgqOU7lF8ZU/2/6GjNk
 3mhQ==
X-Gm-Message-State: AGi0PuaB2OHQrybn3MN0HXl0Y1vEtGPb6oorrmPtBEwbysfpFWF9W3gX
 HYfvf3v/BtCHC7bn4pS5ihDFBcDWqOy4ZwJyhvaqNg==
X-Google-Smtp-Source: APiQypJWdiCBwLqc2g8Irmc7/w41rf19eHaus5+KTPDZiZJ8NEqF3rSuv3WOFk23DG+Abnjohh4H216Y6yGgj84RaY4=
X-Received: by 2002:a2e:2ac2:: with SMTP id q185mr8261669ljq.125.1588066924774; 
 Tue, 28 Apr 2020 02:42:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200417073455.42146-1-yanaijie@huawei.com>
In-Reply-To: <20200417073455.42146-1-yanaijie@huawei.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 Apr 2020 11:41:53 +0200
Message-ID: <CACRpkdZv4W3LVxRqDx2EaqATW7a-dhZeDjzoa2iQu+dDtpkfww@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: nomadik: ab8505: remove unused 'gpio50_a_1_pins'
To: Jason Yan <yanaijie@huawei.com>, Patrice CHOTARD <patrice.chotard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_024207_510623_88769C25 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Hulk Robot <hulkci@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBBcHIgMTcsIDIwMjAgYXQgOTowOCBBTSBKYXNvbiBZYW4gPHlhbmFpamllQGh1YXdl
aS5jb20+IHdyb3RlOgoKPiBGaXggdGhlIGZvbGxvd2luZyBnY2Mgd2FybmluZzoKPgo+IGRyaXZl
cnMvcGluY3RybC9ub21hZGlrL3BpbmN0cmwtYWI4NTA1LmM6MTM3OjIzOiB3YXJuaW5nOgo+IOKA
mGdwaW81MF9hXzFfcGluc+KAmSBkZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtY29uc3Qt
dmFyaWFibGU9XQo+ICBzdGF0aWMgY29uc3QgdW5zaWduZWQgZ3BpbzUwX2FfMV9waW5zW10gPSB7
IEFCODUwNV9QSU5fTDQgfTsKPiAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+
fgo+Cj4gUmVwb3J0ZWQtYnk6IEh1bGsgUm9ib3QgPGh1bGtjaUBodWF3ZWkuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IEphc29uIFlhbiA8eWFuYWlqaWVAaHVhd2VpLmNvbT4KClRoaXMgc2hvdWxkIG5v
dCBiZSBkZWxldGVkLCBpdCBzaG91bGQgYmUgdXNlZC4gSSB3aWxsIHNlbmQgYW4gYWx0ZXJuYXRp
dmUKcGF0Y2ggd2l0aCB5b3UgYXMgUmVwb3J0ZWQtYnkuCgpZb3VycywKTGludXMgV2FsbGVpagoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
