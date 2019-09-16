Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A44EB4441
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 00:51:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/nZNk3Exos/Nq0GQGSSlGux4VxxjHbCSzDLoM478Byk=; b=sYnaCNqZvbY7rN
	ntCYJHtcnWVWG7MyzC9Bby4rrdQhmNi7+tGteE7x1TP4wCFnYHh/raVS+uYlzcss/f7qUpSUUxCD4
	BzOWN0gTT0SbhnShLQgqLCz0tFHX2UP1Ipha22Y3kjPlx53iAFK3CIF7nDiRKZNnbrIUA+5fuuBjJ
	x6mFoBBbvonlV8CPbOJsJkn9UtWUEOq0qnG5mZiYJlKB5DuULMPGRh/Xd+VLEjw2Y7PpD76x9iO9a
	ls4l+Sd/bKAwaWCzrpN20XYVbOGYBtyTee/lvWEAi6tJKiWNQeP6tfduX/m6KAXFpKYtCxFGUQ6Nd
	MRAViF7DLsAf+RcMjB3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9zqb-0003tS-MJ; Mon, 16 Sep 2019 22:51:53 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9zqR-0003t9-3P
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 22:51:44 +0000
Received: by mail-lj1-x243.google.com with SMTP id 7so1494058ljw.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 15:51:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=w6UERZ6agTZSLo4S0EzgWC1NwVYOsIu1AUoHO8zokY0=;
 b=AxeMARerRIMvN9Ju3eOyPIqToyUR3JhJmDCmvJS0jbcLiqZj8/ry+hS91kHNBsg9oY
 46jrBIhpfL5YclEXNDAPCjJiBjuABgLB/yVjjMZYlfMkPH4WZ6C7aZW/WEJPXnlbvSnV
 VGglwwwegRdOyw8u+IvIkQoGZze5D3v2kMgUg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=w6UERZ6agTZSLo4S0EzgWC1NwVYOsIu1AUoHO8zokY0=;
 b=JFljyk303RPkMz0imXRz9vM4ScH9HZs8Sju1Xo0Y925DIPXo1GhLDxP1caE1uuoZ8B
 67ijMhZrKwqteJ+P8ZQZeMSAViLanU80WlSKhna8I72j9vjM5Wz6pco8JbolORHBVEiQ
 FzWVbdM8F/A4fEeLmz7hJmMwXJ34XKQQNS+T/DT1pQzbNzQ+rbdXHRKGu4fyq624MsGI
 edXDm6nANfQ+0tmGGHy0vt3ogPlz0xHMWcGge1XZ99qjW22/PdKA3NR0xRalu44TK+X3
 uW7VVWYPItW2TJrPu7YB1JkN2SE3Ihxhvx1N1LFOMl1iJxUDRj6BGrMcuCroHElt0ZZ/
 qxvQ==
X-Gm-Message-State: APjAAAXb6D8PTn3O2R3U0UjAWa8riNM5El0UsrjAvv0YIwh5S0m+hP+w
 FiTnbp4xPqzilVN08fXzDfCCWm+4uFk=
X-Google-Smtp-Source: APXvYqzdOdAmxLmszuQAZwtib4T6qdWGmE/BfJi7Hd4TbmnpTapaOPgVkS/29p7xM+kh4R9BtsOKIQ==
X-Received: by 2002:a2e:81d7:: with SMTP id s23mr126757ljg.175.1568674298913; 
 Mon, 16 Sep 2019 15:51:38 -0700 (PDT)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com.
 [209.85.208.180])
 by smtp.gmail.com with ESMTPSA id n3sm32411lfl.62.2019.09.16.15.51.37
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Sep 2019 15:51:38 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id c22so1521796ljj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 15:51:37 -0700 (PDT)
X-Received: by 2002:a2e:5b9a:: with SMTP id m26mr143828lje.90.1568674297567;
 Mon, 16 Sep 2019 15:51:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a3ArYx8LUbYhjTw2wOEZgK9mJOE_PaLzuZTfn29Z5+K3Q@mail.gmail.com>
 <CAK8P3a1twq1+RxS9uE7LQWAbg4tf72R2df4Q20fXUR_4+7B26A@mail.gmail.com>
In-Reply-To: <CAK8P3a1twq1+RxS9uE7LQWAbg4tf72R2df4Q20fXUR_4+7B26A@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 16 Sep 2019 15:51:21 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjeGTRhpczCRRwHv=M+LCudK-x5jmu7-HP+1UHbCf=3_Q@mail.gmail.com>
Message-ID: <CAHk-=wjeGTRhpczCRRwHv=M+LCudK-x5jmu7-HP+1UHbCf=3_Q@mail.gmail.com>
Subject: Re: [GIT PULL 1/5] ARM: SoC platform updates for v5.4
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_155143_168492_29A77BEB 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: SoC Team <soc@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBTZXAgMTYsIDIwMTkgYXQgOTozMiBBTSBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRi
LmRlPiB3cm90ZToKPgo+IEFSTTogU29DIHBsYXRmb3JtIHVwZGF0ZXMgZm9yIHY1LjQKCkhtbS4K
CllvdSBub3cgYnVpbGQgaW9wLWFkbWEuYyBvbiBvdGhlciBwbGF0Zm9ybXMsIGJ1dCB0aGF0IHRo
ZW4gY2F1c2VzIHRoaXM6Cgpkcml2ZXJzL2RtYS9pb3AtYWRtYS5jOiBJbiBmdW5jdGlvbiDigJhf
X2lvcF9hZG1hX3Nsb3RfY2xlYW51cOKAmToKZHJpdmVycy9kbWEvaW9wLWFkbWEuYzoxMTg6MTI6
IHdhcm5pbmc6IGZvcm1hdCDigJgleOKAmSBleHBlY3RzIGFyZ3VtZW50Cm9mIHR5cGUg4oCYdW5z
aWduZWQgaW504oCZLCBidXQgYXJndW1lbnQgNiBoYXMgdHlwZSDigJhkbWFfYWRkcl904oCZIHth
a2EK4oCYbG9uZyBsb25nIHVuc2lnbmVkIGludOKAmX0gWy1XZm9ybWF0PV0KICAxMTggfCAgIHBy
X2RlYnVnKCJcdGNvb2tpZTogJWQgc2xvdDogJWQgYnVzeTogJWQgIgogICAgICB8ICAgICAgICAg
ICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CmRyaXZlcnMvZG1hL2lvcC1hZG1h
LmM6MTE5OjE4OiBub3RlOiBmb3JtYXQgc3RyaW5nIGlzIGRlZmluZWQgaGVyZQogIDExOSB8ICAg
ICJ0aGlzX2Rlc2M6ICUjeCBuZXh0X2Rlc2M6ICUjbGx4IGFjazogJWRcbiIsCiAgICAgIHwgICAg
ICAgICAgICAgICAgfn5eCiAgICAgIHwgICAgICAgICAgICAgICAgICB8CiAgICAgIHwgICAgICAg
ICAgICAgICAgICB1bnNpZ25lZCBpbnQKICAgICAgfCAgICAgICAgICAgICAgICAlI2xseAoKYW5k
IHRoZSBscGMzMnh4X3VkYyBkcml2ZXIgaGFzIHRoaXM6Cgpkcml2ZXJzL3VzYi9nYWRnZXQvdWRj
L2xwYzMyeHhfdWRjLmM6IEluIGZ1bmN0aW9uIOKAmHVkY19wb3BfZmlmb+KAmToKZHJpdmVycy91
c2IvZ2FkZ2V0L3VkYy9scGMzMnh4X3VkYy5jOjExNTY6MTE6IHdhcm5pbmc6IGNhc3QgZnJvbQpw
b2ludGVyIHRvIGludGVnZXIgb2YgZGlmZmVyZW50IHNpemUgWy1XcG9pbnRlci10by1pbnQtY2Fz
dF0KIDExNTYgfCAgc3dpdGNoICgoKHUzMikgZGF0YSkgJiAweDMpIHsKICAgICAgfCAgICAgICAg
ICAgXgpkcml2ZXJzL3VzYi9nYWRnZXQvdWRjL2xwYzMyeHhfdWRjLmM6IEluIGZ1bmN0aW9uIOKA
mHVkY19zdHVmZl9maWZv4oCZOgpkcml2ZXJzL3VzYi9nYWRnZXQvdWRjL2xwYzMyeHhfdWRjLmM6
MTI1NzoxMTogd2FybmluZzogY2FzdCBmcm9tCnBvaW50ZXIgdG8gaW50ZWdlciBvZiBkaWZmZXJl
bnQgc2l6ZSBbLVdwb2ludGVyLXRvLWludC1jYXN0XQogMTI1NyB8ICBzd2l0Y2ggKCgodTMyKSBk
YXRhKSAmIDB4MykgewogICAgICB8ICAgICAgICAgICBeCgpzbyBJIHdpbGwgYmUgbWFya2luZyB0
aGVtIGJvdGggYXJtLXNwZWNpZmljIGFnYWluIGJlY2F1c2UgSSBkb24ndCB3YW50CnRvIHNlZSB0
aGUgYnVpbGQgd2FybmluZ3MuCgogICAgICAgICAgICAgICAgTGludXMKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
