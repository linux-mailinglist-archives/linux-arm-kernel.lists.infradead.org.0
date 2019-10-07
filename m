Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9791FCEA43
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 19:11:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6qeQ3swoClbEarAv0DV9iPDYZMm4DhVA65MwcpA+/FM=; b=MxVx3T8yPTs0cZpV+OXy1zlcF
	qdXqn+4UCY2keaHgjjkdh8iIU/hOJIlq9JF517555gGrNUxlb3r58Vdb2QAF823Mvsy33uPrUnBdi
	EEZY5sQUtcZPprZV7mraXqVgQ0EiqH+49CodzcWQ2njq0NIkYKmgXu3eRT+LOjwaYUKykbxGf9zt9
	Trs5b87w8N9QRytE4KugSkHmV3cSeigq2hp5wo/4kT5ebM7gZhin7KOVfRnjlzYunxeIl6vCAvUoh
	oNFltulDSMPCoHh6i8LsaKt6pEH9U0hg3pyXUPhiAApP1iJ8DnVCUEIB4tE5jxHsQgniBRDmvck90
	UpUkoC9xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHWXO-0006tA-61; Mon, 07 Oct 2019 17:11:10 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHWXC-0006sK-5I
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 17:11:00 +0000
Received: by mail-pf1-x444.google.com with SMTP id y22so9075380pfr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 10:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=nIO6O9ahSz9V8fOp+W/95V7uzxghRqzih625nuEdwR0=;
 b=hZW2x0sX8IHEsBdGXbQ7dhAyaFiXvbS0sfin1r0QdfUN0ohP/3mUrNCKIFJgBPRG48
 ezy9APJy0R1jKr69irFMCUBON0svtdadAaeXk0fE48899dvlcrRE4mnke7FpcnZlAVW+
 gKD78Sdfwo3tX/dmlwT8JVIOas4+wU9P/Ys80=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=nIO6O9ahSz9V8fOp+W/95V7uzxghRqzih625nuEdwR0=;
 b=cc1jc+tK2U68U5+hXTXSwbF9qRaX6AyUjVMkaLKKCueQJfcSki+gSbqPjU/ZknDogI
 b+Rr2VTnvb03A4CHu4/ZgwMMxLElb57ph5RZUMDUToy0XKR+BZrVL7LOuOQ2AOujsMrI
 NaRZxkvIxOlPaxUUKe89ScfrpCOdZbl8dj8k7M+UYFBcZ48dTbQ/YcBoBfDm2rwBjPDH
 ao91jaQSBHUsnS++MV653soenEGLdUsQplUFLf0pEJkGz9IqJBr/GRRH2Xuxkb3YMOD9
 RqPkmQ9RGB/Ouoj9t/F2SDoe/vpYmj9ql+YthWgvJV3RwzdzAS/0jYNB3OY4VA/fl/YR
 nhjA==
X-Gm-Message-State: APjAAAV3qtFU3CDCZ+t3JO4AZ4EOa/aZVia+1AVjwLmTSbumKpAWW3CA
 DqE/BI67W4fMKTjl5SFfDpxBINxDD1vlVJLy2aniN+Q2HTBpvh/13mHwREs63J88P2KWnVyvnXH
 QYTE9DYmV/Wcp+LzSiquXrYTrjFrgv9qMYEXAoVg8xjrOOMX2wDkU6z9WOHIT2l7uTbh8FsqgSg
 x58zv9qVUINWrMoyF53Sw=
X-Google-Smtp-Source: APXvYqyHrGt6RhHocknkFK2phK2rTRMyH7SfeP1YDq+8SfupmWTWQyHmhMhYdbC1a+Oq5/qjUN4W9Q==
X-Received: by 2002:a63:68e:: with SMTP id 136mr11613874pgg.18.1570468256741; 
 Mon, 07 Oct 2019 10:10:56 -0700 (PDT)
Received: from [10.136.13.65] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id e6sm16243153pfl.146.2019.10.07.10.10.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 07 Oct 2019 10:10:55 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] pinctrl: iproc: use unique name for irq chip
To: Marc Zyngier <maz@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>
References: <20191003000310.17099-1-chris.packham@alliedtelesis.co.nz>
 <20191003000310.17099-3-chris.packham@alliedtelesis.co.nz>
 <CAMuHMdV7syxxtnHEcgFBrf5DLo-M_71tZFWHHQ6kTO=2A1eVhg@mail.gmail.com>
 <86blutdlap.wl-maz@kernel.org>
From: Scott Branden <scott.branden@broadcom.com>
Message-ID: <44510e8c-4e9b-603f-2c26-19db9121d68c@broadcom.com>
Date: Mon, 7 Oct 2019 10:10:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <86blutdlap.wl-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_101058_203208_72D5A6AE 
X-CRM114-Status: GOOD (  22.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Scott Branden <sbranden@broadcom.com>, rayagonda.kokatanur@broadcom.com,
 Ray Jui <rjui@broadcom.com>, Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 bcm-kernel-feedback-list@broadcom.com, li.jin@broadcom.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMDE5LTEwLTA3IDE6MTQgYS5tLiwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IE9uIE1vbiwg
MDcgT2N0IDIwMTkgMDg6MzA6NTAgKzAxMDAsCj4gR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydEBs
aW51eC1tNjhrLm9yZz4gd3JvdGU6Cj4+IEhpIENocmlzLAo+Pgo+PiBDQyBNYXJjWgo+Pgo+PiBP
biBUaHUsIE9jdCAzLCAyMDE5IGF0IDI6MDMgQU0gQ2hyaXMgUGFja2hhbQo+PiA8Y2hyaXMucGFj
a2hhbUBhbGxpZWR0ZWxlc2lzLmNvLm56PiB3cm90ZToKPj4+IFVzZSB0aGUgZGV2X25hbWUoZGV2
KSBmb3IgdGhlIGlycWMtPm5hbWUgc28gdGhhdCB3ZSBnZXQgdW5pcXVlIG5hbWVzCj4+PiB3aGVu
IHdlIGhhdmUgbXVsdGlwbGUgaW5zdGFuY2VzIG9mIHRoaXMgZHJpdmVyLgo+Pj4KPj4+IFNpZ25l
ZC1vZmYtYnk6IENocmlzIFBhY2toYW0gPGNocmlzLnBhY2toYW1AYWxsaWVkdGVsZXNpcy5jby5u
ej4KPj4gQSB3aGlsZSBhZ28sIE1hcmMgWnluZ2llciBwb2ludGVkIG91dCB0aGF0IHRoZSBpcnFf
Y2hpcCAubmFtZSBmaWVsZAo+PiBzaG91bGQgY29udGFpbiB0aGUgZGV2aWNlJ3MgY2xhc3MgbmFt
ZSwgbm90IHRoZSBpbnN0YW5jZSdzIG5hbWUuCj4+IEhlbmNlIHRoZSBjdXJyZW50IGNvZGUgaXMg
Y29ycmVjdD8KPiBUaGFua3MgR2VlcnQgZm9yIGxvb3BpbmcgbWUgaW4uIFRoZSBtYWluIHJlYXNv
bnMgd2h5IEkgb3Bwb3NlIHRoaXMKPiBraW5kIG9mICJsZXQncyBzaG93IGFzIG11Y2ggaW5mb3Jt
YXRpb24gYXMgd2UgY2FuIGluIC9wcm9jL2ludGVycnVwdHMiCj4gYXJlOgo+Cj4gLSBJdCBjbHV0
dGVycyB0aGUgb3V0cHV0IGJhZGx5OiB0aGUgZm9ybWF0dGluZyBvZiB0aGlzIGZpbGUsIHdoaWNo
IGlzCj4gICAgYmFkIGVub3VnaCB3aGVuIHlvdSBoYXZlIGEgc21hbGwgbnVtYmVyIG9mIENQVXMs
IGJlY29tZXMgdW5yZWFkYWJsZQo+ICAgIHdoZW4geW91IGhhdmUgYSBsYXJnZSBudW1iZXIgb2Yg
dGhlbSAqYW5kKiBzdHVwaWRseSBsb25nIHN0cmluZ3MKPiAgICB0aGF0IG9ubHkgbWFrZSBzZW5z
ZSBvbiBhIGdpdmVuIHBsYXRmb3JtLgo+Cj4gLSBMaWtlIGl0IG9yIG5vdCwgL3Byb2MgaXMgQUJJ
LiBXZSBkb24ndCBjaGFuZ2UgdGhpbmdzIHJhbmRvbWx5IHRoZXJlCj4gICAgd2l0aG91dCBhIGdv
b2QgcmVhc29uLCBhbmQgZGVidWdnaW5nIGlzbid0IG9uZSBvZiB0aGVtLgo+Cj4gLSBEZWJ1ZyBp
bmZvcm1hdGlvbiBiZWxvbmdzIHRvIGRlYnVnZnMsIHdoZXJlIHdlIGFscmVhZHkgaGF2ZSBwbGVu
dHkKPiAgICBvZiBzdHVmZiAoc2VlIENPTkZJR19HRU5FUklDX0lSUV9ERUJVR0ZTKS4gSSdkIHJh
dGhlciB3ZSBpbXByb3ZlCj4gICAgdGhpcyBpbmZyYXN0cnVjdHVyZSBpZiBuZWVkZWQsIHJhdGhl
ciB0aGFuIGFkZCBwbGF0Zm9ybSBzcGVjaWZpYwo+ICAgIGhhY2tzLgo+Cj4gPC9yYW50Pgo+Cj4g
VGhhbmtzLAo+Cj4gCU0uClRoYW5rcyBNYXJjL0dlZXJ0LsKgIFNvdW5kcyBsaWtlIHdlIHNob3Vs
ZCBkcm9wIHBhdGNoIDIgZnJvbSBzZXJpZXMuCj4KPj4gU2VlIGFsc28gIltQQVRDSCAwLzRdIGly
cWNoaXA6IHJlbmVzYXM6IFVzZSBwcm9wZXIgaXJxX2NoaXAgbmFtZSBhbmQgcGFyZW50Igo+PiAo
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDE5MDYwNzA5NTg1OC4xMDAyOC0xLWdlZXJ0
K3JlbmVzYXNAZ2xpZGVyLmJlLykKPj4gTm90ZSB0aGF0IHRoZSBpcnFjaGlwIHBhdGNoZXMgaW4g
dGhhdCBzZXJpZXMgaGF2ZSBiZWVuIGFwcGxpZWQ7IHRoZSBncGlvCj4+IHBhdGNoZXMgaGF2ZW4n
dCBiZWVuIGFwcGxpZWQgeWV0Lgo+Pgo+Pj4gLS0tIGEvZHJpdmVycy9waW5jdHJsL2JjbS9waW5j
dHJsLWlwcm9jLWdwaW8uYwo+Pj4gKysrIGIvZHJpdmVycy9waW5jdHJsL2JjbS9waW5jdHJsLWlw
cm9jLWdwaW8uYwo+Pj4gQEAgLTg1OCw3ICs4NTgsNyBAQCBzdGF0aWMgaW50IGlwcm9jX2dwaW9f
cHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4+ICAgICAgICAgICAgICAgICAg
c3RydWN0IGdwaW9faXJxX2NoaXAgKmdpcnE7Cj4+Pgo+Pj4gICAgICAgICAgICAgICAgICBpcnFj
ID0gJmNoaXAtPmlycWNoaXA7Cj4+PiAtICAgICAgICAgICAgICAgaXJxYy0+bmFtZSA9ICJiY20t
aXByb2MtZ3BpbyI7Cj4+PiArICAgICAgICAgICAgICAgaXJxYy0+bmFtZSA9IGRldl9uYW1lKGRl
dik7Cj4+PiAgICAgICAgICAgICAgICAgIGlycWMtPmlycV9hY2sgPSBpcHJvY19ncGlvX2lycV9h
Y2s7Cj4+PiAgICAgICAgICAgICAgICAgIGlycWMtPmlycV9tYXNrID0gaXByb2NfZ3Bpb19pcnFf
bWFzazsKPj4+ICAgICAgICAgICAgICAgICAgaXJxYy0+aXJxX3VubWFzayA9IGlwcm9jX2dwaW9f
aXJxX3VubWFzazsKPj4gR3J7b2V0amUsZWV0aW5nfXMsCj4+Cj4+ICAgICAgICAgICAgICAgICAg
ICAgICAgICBHZWVydAo+Pgo+PiAtLSAKPj4gR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3Mg
bG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwo+Pgo+PiBJ
biBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15
c2VsZiBhIGhhY2tlci4gQnV0Cj4+IHdoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBq
dXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KPj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKPj4KCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
