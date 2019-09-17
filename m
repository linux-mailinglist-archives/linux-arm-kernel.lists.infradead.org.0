Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C44B5B4B7B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 12:04:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zsJHsovurCPu9n5NoOCCPifR2aApXRbHcJyYINT6y9Q=; b=ORkTErzmKYQa+4
	3dvwBmOmw5KHWELYqOZGzPuoxJO5MkHcXJKqQZ0h2e7fq4kxLSZoqeFLuP9NI5E5At2PNartkp1Vk
	KNmnVin6GWB8gCIk5qpdTCiNKzKszaFwyEv5aJ11CRg6yH6P98+Gg6bn2Z5tNoVgv2b3FL5Opjsn0
	e8nJJ3u1Wtgu6XWZinBcUyleAUgyHScdYpvg5NOeIAu5JZV5VUSO2PmJJLC8GnAtCzm2DPwW0ymxZ
	jdZMws4JRdmOvlC7NQU8Y83oCFBAY/aWJNuyMuuh3MAPOc1zxdwyC07mw4JK0cTCxeCmhw0fSqZ8o
	h85pv7/IZzEHSGVTc8NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAALV-0008MY-VE; Tue, 17 Sep 2019 10:04:30 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAAKl-0008HX-W0
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 10:03:46 +0000
Received: by mail-qt1-f196.google.com with SMTP id u40so3589344qth.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 03:03:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=uA0hukyCMIX9mtnyiNOuXYiSUFOiUVlp/wOCnRFOV7Y=;
 b=qITV/VCuJqfqGxWuKduyYPveAjyOlXNOwpbS9WdQLiAXUkG8zU5TG6/3qoKyU9zw10
 5lSYG3zO2Fu6zjlE6jy2u/z6NPCA9zshNROvk4hwjAGtUkZSYVbvDS54WchQofbxerLY
 5Wyoot979G9NgWwTwCubH758caYT3WEAZeRgSFOE7HVg3WjceDWt5Th02i/LwF0wjjcc
 iuxREvaZBo0rc+gmT6WipsFD3LbTh7eX5L0kFuHHHVvhYiC+2A413alQK+6Tc/ISbajK
 DmYXZ0QtJc0DmD9sXlo2oYTeVQCbCoDktkyRGuq5blKSbSqJTrgKZYEWFXsdXWNpRnXq
 SwxQ==
X-Gm-Message-State: APjAAAXYS2JM8rhceijL8ujuZN2wMcfIbyljRNq3Ez5+/YiyJOePg/gK
 aFTsvuBdQtAmjmtJZyjlge+A+lmKNcYbGkU2798LhOWjC6Y=
X-Google-Smtp-Source: APXvYqy6kAbFwzhNox+U2ZZ0Vqh01utvAPUp++nzgAhRLb7lmFrhvdQDs/CeqljAqDBA9o7I0ZQMzfta6A9I/X4qnIw=
X-Received: by 2002:a05:6214:2b0:: with SMTP id
 m16mr2323035qvv.45.1568714619606; 
 Tue, 17 Sep 2019 03:03:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a3ArYx8LUbYhjTw2wOEZgK9mJOE_PaLzuZTfn29Z5+K3Q@mail.gmail.com>
 <CAK8P3a1twq1+RxS9uE7LQWAbg4tf72R2df4Q20fXUR_4+7B26A@mail.gmail.com>
 <CAHk-=wjeGTRhpczCRRwHv=M+LCudK-x5jmu7-HP+1UHbCf=3_Q@mail.gmail.com>
In-Reply-To: <CAHk-=wjeGTRhpczCRRwHv=M+LCudK-x5jmu7-HP+1UHbCf=3_Q@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 17 Sep 2019 12:03:23 +0200
Message-ID: <CAK8P3a1Xy7=o7KSawy6d7JkEm9VqT57vZ-zc45S85SXB7=pc+w@mail.gmail.com>
Subject: Re: [GIT PULL 1/5] ARM: SoC platform updates for v5.4
To: Linus Torvalds <torvalds@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_030344_301016_C0AF604B 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

T24gVHVlLCBTZXAgMTcsIDIwMTkgYXQgMTI6NTEgQU0gTGludXMgVG9ydmFsZHMKPHRvcnZhbGRz
QGxpbnV4LWZvdW5kYXRpb24ub3JnPiB3cm90ZToKPgo+IE9uIE1vbiwgU2VwIDE2LCAyMDE5IGF0
IDk6MzIgQU0gQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4gd3JvdGU6Cj4gPgo+ID4gQVJN
OiBTb0MgcGxhdGZvcm0gdXBkYXRlcyBmb3IgdjUuNAo+Cj4gSG1tLgo+Cj4gWW91IG5vdyBidWls
ZCBpb3AtYWRtYS5jIG9uIG90aGVyIHBsYXRmb3JtcywgYnV0IHRoYXQgdGhlbiBjYXVzZXMgdGhp
czoKPgo+IGRyaXZlcnMvZG1hL2lvcC1hZG1hLmM6IEluIGZ1bmN0aW9uIOKAmF9faW9wX2FkbWFf
c2xvdF9jbGVhbnVw4oCZOgo+IGRyaXZlcnMvZG1hL2lvcC1hZG1hLmM6MTE4OjEyOiB3YXJuaW5n
OiBmb3JtYXQg4oCYJXjigJkgZXhwZWN0cyBhcmd1bWVudAo+IG9mIHR5cGUg4oCYdW5zaWduZWQg
aW504oCZLCBidXQgYXJndW1lbnQgNiBoYXMgdHlwZSDigJhkbWFfYWRkcl904oCZIHtha2EKPiDi
gJhsb25nIGxvbmcgdW5zaWduZWQgaW504oCZfSBbLVdmb3JtYXQ9XQo+ICAgMTE4IHwgICBwcl9k
ZWJ1ZygiXHRjb29raWU6ICVkIHNsb3Q6ICVkIGJ1c3k6ICVkICIKPiAgICAgICB8ICAgICAgICAg
ICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gZHJpdmVycy9kbWEvaW9wLWFk
bWEuYzoxMTk6MTg6IG5vdGU6IGZvcm1hdCBzdHJpbmcgaXMgZGVmaW5lZCBoZXJlCj4gICAxMTkg
fCAgICAidGhpc19kZXNjOiAlI3ggbmV4dF9kZXNjOiAlI2xseCBhY2s6ICVkXG4iLAo+ICAgICAg
IHwgICAgICAgICAgICAgICAgfn5eCj4gICAgICAgfCAgICAgICAgICAgICAgICAgIHwKPiAgICAg
ICB8ICAgICAgICAgICAgICAgICAgdW5zaWduZWQgaW50Cj4gICAgICAgfCAgICAgICAgICAgICAg
ICAlI2xseAoKVGhlcmUgaXMgYSBmaXggaW4gdGhlIGRtYWVuZ2luZSB0cmVlLCBjb21taXQgZDE3
ZDllYTk1NzI3ICgiZG1hZW5naW5lOgppb3AtYWRtYS5jOiBmaXggcHJpbnRrIGZvcm1hdCB3YXJu
aW5nIikgZnJvbSBSYW5keSBEdW5sYXAuIEkgZml4ZWQKc29tZSByZWxhdGVkIGlzc3VlcyBpbiB0
aGUgc2FtZSBkcml2ZXIgYnV0IG1pc3NlZCB0aGlzIG9uZSBiZWNhdXNlIG9mCmEgY2xhbmcgYnVn
IHRoYXQgaXMgbm93IGZpeGVkLgoKPiBhbmQgdGhlIGxwYzMyeHhfdWRjIGRyaXZlciBoYXMgdGhp
czoKPgo+IGRyaXZlcnMvdXNiL2dhZGdldC91ZGMvbHBjMzJ4eF91ZGMuYzogSW4gZnVuY3Rpb24g
4oCYdWRjX3BvcF9maWZv4oCZOgo+IGRyaXZlcnMvdXNiL2dhZGdldC91ZGMvbHBjMzJ4eF91ZGMu
YzoxMTU2OjExOiB3YXJuaW5nOiBjYXN0IGZyb20KPiBwb2ludGVyIHRvIGludGVnZXIgb2YgZGlm
ZmVyZW50IHNpemUgWy1XcG9pbnRlci10by1pbnQtY2FzdF0KPiAgMTE1NiB8ICBzd2l0Y2ggKCgo
dTMyKSBkYXRhKSAmIDB4Mykgewo+ICAgICAgIHwgICAgICAgICAgIF4KPiBkcml2ZXJzL3VzYi9n
YWRnZXQvdWRjL2xwYzMyeHhfdWRjLmM6IEluIGZ1bmN0aW9uIOKAmHVkY19zdHVmZl9maWZv4oCZ
Ogo+IGRyaXZlcnMvdXNiL2dhZGdldC91ZGMvbHBjMzJ4eF91ZGMuYzoxMjU3OjExOiB3YXJuaW5n
OiBjYXN0IGZyb20KPiBwb2ludGVyIHRvIGludGVnZXIgb2YgZGlmZmVyZW50IHNpemUgWy1XcG9p
bnRlci10by1pbnQtY2FzdF0KPiAgMTI1NyB8ICBzd2l0Y2ggKCgodTMyKSBkYXRhKSAmIDB4Mykg
ewo+ICAgICAgIHwgICAgICAgICAgIF4KPgo+IHNvIEkgd2lsbCBiZSBtYXJraW5nIHRoZW0gYm90
aCBhcm0tc3BlY2lmaWMgYWdhaW4gYmVjYXVzZSBJIGRvbid0IHdhbnQKPiB0byBzZWUgdGhlIGJ1
aWxkIHdhcm5pbmdzLgoKSSBndWVzcyBJIG1heSBoYXZlIHRvIHRlc3Qgd2l0aCBib3RoIGNsYW5n
IGFuZCBnY2MgaW4gdGhlIGZ1dHVyZS4KSSBkaWQgbG90cyBvZiBidWlsZCB0ZXN0aW5nIG9mIG15
IGJyYW5jaGVzLCBidXQgb25seSB3aXRoIGNsYW5nLCB3aGljaAphcHBhcmVudGx5IG5ldmVyIHdh
cm5lZCBhYm91dCB0aGF0LiBJIGZvdW5kIGEgYnVnIHJlcG9ydCBmcm9tCjIwMTAgYW5kIGNvbW1l
bnRlZCBvbiB0aGF0LgpodHRwczovL2J1Z3MubGx2bS5vcmcvc2hvd19idWcuY2dpP2lkPTg3MTgK
CkknbGwgc2VuZCBhIGZpeCBmb3IgdGhlIHdhcm5pbmcgYWZ0ZXIgc29tZSBtb3JlIGJ1aWxkIHRl
c3RpbmcuCgogICAgICBBcm5kCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
