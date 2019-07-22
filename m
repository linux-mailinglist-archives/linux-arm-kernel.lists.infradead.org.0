Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB52670640
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 18:57:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gGtEsj+AQkDRTw+UiSd99tM+UKmYwU1ui6MOC05L4ic=; b=PkLUx9G+jZe3ZM9AyC+Tkdr4H
	7+h1RyS2PoUjEEKvVZOSn4YhJ+IPsSA2eDlCXYzSipn2odryXolQvLAJTbYepxtCDmuQg/+wGFJkm
	3FnPEBjfQqqMxxuhdOHevObli2gUOqFady5EFWW10ficICmdJG9NXijkV+3BZ1b/y2BeYZy4Bxg4Q
	YRrcF13JqW4qcQglPqhRC3OLCIyT8Adp0wd43U+FnpVxOAKJc+pRQp6blCRYjaROfsGbDS0/cAzFB
	LdsDNy+YhiERKcULU1AxghD7nhdDWb9+gt40cK/LR/GHyaZeo6MzjsbHbvHTaLReRsW7wsxFBbrI9
	5HJjVNy0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpbce-0006zC-C8; Mon, 22 Jul 2019 16:57:15 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpbc3-0006xm-8g; Mon, 22 Jul 2019 16:56:38 +0000
Received: by mail-wm1-x341.google.com with SMTP id w9so29202116wmd.1;
 Mon, 22 Jul 2019 09:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:in-reply-to
 :references:user-agent:content-transfer-encoding;
 bh=2dLfv8X8g/SVPornMHpcHgF++AsFgfA4FAPIFkoPYuY=;
 b=jxkSqrob0Xz7vrFNQti9JfB3avyNZuMTo3t3Z1bJLx1HKiuJOml8rE1PewLsNl9iIx
 qG0gVQq1rbAfjyzvY11A3lX4F9zPzvgjxYHM6c9gne1u2eKDujVchwbuPNBF5fSZubJ5
 BVllnsZHbL6ckwskEleVuIDsCh4C/Ttoid9yQ5Z+jExC6Y8IeE29hipHjHt/tRKiwFGU
 0sQCkgOLeDsV7vh9/DfAX9ljIRSMbWhZOUM62h+D22zhelj52BJBSpAkvPQHdg2F0Es4
 2H0dH8lxNZsGg0zo2QDh344dcaaeSTnmkxZqkLZDR4Kr0TH5eEmmlukPHSuZavPiGfKf
 Lolg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :in-reply-to:references:user-agent:content-transfer-encoding;
 bh=2dLfv8X8g/SVPornMHpcHgF++AsFgfA4FAPIFkoPYuY=;
 b=SWMV2v9Lcqsqgb1zzomNXDyd2/D0yj7hU28GUR3oABjx7tpjj0P8XoQlabLfS4JGqJ
 ey679FoWAt7kI6kVNVbhj1BFUsF7epOeKnSc7KB28Q+edYQVF4RftP08vbyU6Yj62jAG
 uWoatu8AFD3PGo68CARXZOO6o8l7KnXxdlA4P/ucniKLRV2lx9wXuszrJ2LVcJ/r1ilR
 jDG9ktCZFLcdU3OIYcxyVN4L37wCYbpCOFiz8ilCS6ymLhFbAEAldO4kWgkT1H8N6erP
 f1vIUZ02gfuWHpbrmnxLozaEL+OofySh0dvUYENAV/xZFgBlSPcmmk+gBXbK2ND+6IIJ
 uQ5A==
X-Gm-Message-State: APjAAAU8Uq54L4uh3xZEKhwKHIyYScMb+/JapjGZbbgg9ZR/O+MpmdzF
 u3QFD9kPVxe5Hj+ihkgPTGdP8F8yTowXiQ==
X-Google-Smtp-Source: APXvYqz39iwbDMOOUl/I1Zpk9gEiCIg6ZhbSRzjuNWu3ZnYJCa7jgio7nvpVqtAcS2MQB/8NYYSaQA==
X-Received: by 2002:a7b:cc09:: with SMTP id f9mr66671550wmh.68.1563814593375; 
 Mon, 22 Jul 2019 09:56:33 -0700 (PDT)
Received: from localhost ([92.59.185.54])
 by smtp.gmail.com with ESMTPSA id z1sm41765464wrp.51.2019.07.22.09.56.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 09:56:32 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Matthias Brugger <mbrugger@suse.com>
Subject: Re: kexec on rk3399
Date: Mon, 22 Jul 2019 18:56:31 +0200
MIME-Version: 1.0
Message-ID: <b3685937-c9fa-400f-9a37-92942964bf2e@gmail.com>
In-Reply-To: <5167bdd7-6cdd-9214-582b-9c01342f2cb3@suse.com>
References: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
 <5167bdd7-6cdd-9214-582b-9c01342f2cb3@suse.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_095635_710811_82C6497C 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Heiko Stuebner <heiko@sntech.de>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uZGF5LCBKdWx5IDIyLCAyMDE5IDQ6NDc6NTEgUE0gQ0VTVCwgTWF0dGhpYXMgQnJ1Z2dl
ciB3cm90ZToKPgo+IE9uIDIyLzA3LzIwMTkgMTY6MzEsIFZpY2VudGUgQmVyZ2FzIHdyb3RlOgo+
PiBIaSwgaSBoYXZlIGJlZW4gcnVubmluZyBsaW51eCBvbiByazMzOTkgYm9vdGVkIHdpdGgga2V4
ZWMgZmluZSB1bnRpbCA1LjIKPj4gRnJvbSA1LjIgb253YXJkcywgdGhlcmUgYXJlIG1lbW9yeSBj
b3JydXB0aW9uIGlzc3VlcyBhcyByZXBvcnRlZCBoZXJlOgo+PiBodHRwOi8vbGttbC5pdS5lZHUv
aHlwZXJtYWlsL2xpbnV4L2tlcm5lbC8xOTA2LjIvMDcyMTEuaHRtbAo+PiBrZXhlYyBoYXMgYmVl
biBpZGVudGlmaWVkIGFzIHRoZSBwcmluY2lwYWwgcmVhc29uIGZvciB0aGUgaXNzdWVzLgo+PiAK
Pj4gSXQgdHVybnMgb3V0IHRoYXQga2V4ZWMgaGFzIG5ldmVyIHdvcmtlZCByZWxpYWJseSBvbiB0
aGlzIHBsYXRmb3JtLCAuLi4KPgo+IElzIHRoZXJlIGEga25vd24ga2VybmVsIHdoZXJlIGtleGVj
IHdhcyB3b3JraW5nICh2NS4yIGUuZy4pPwo+IElmIHlvdSBjYW4gZmluZCBvbmUsIHlvdSBjYW4g
cnVuIGdpdCBiaXNlY3QgdG8gZmluZCB0aGUgY29tbWl0IAo+IHRoYXQgYnJlYWtzIHRoaW5ncy4K
ClllcywgbW9zdCBrZXJuZWxzIGkgaGF2ZSB0cmllZCBiZWZvcmUgNS4yIHdvcmtlZCwgbW9yZSBv
ciBsZXNzLgpGcm9tIHRpbWUgdG8gdGltZSB0aGVyZSB3ZXJlIHJhbmRvbSBmcmVlemVzIGF0IGJv
b3QgdGltZS4KUmUtYm9vdGluZyAyIG9yIDMgdGltZXMgZml4ZWQgaXQuIFRoaXMgd2FzIGhhcHBl
bm5pbmcgYWJvdXQgMSBvdXQgb2YgMTAgCnRpbWVzLgpJJ3ZlIHJhcmVseSBzZWVuIGtlcm5lbCB0
cmFjZXMgb24gZG1lc2csIGJ1dCB0aGVzZSB3ZXJlIG5vdCBhZmZlY3RpbmcgdGhlIApzdGFiaWxp
dHkgb2YgdGhlIHN5c3RlbS4KSSd2ZSBhbHNvIHVzZWQgNS4yIChhIGtub3duIGFmZmVjdGVkIHZl
cnNpb24pIGR1cmluZyBkYXlzIHdpdGggbm8gaXNzdWVzLgpTbywgdGhlIHJhbmRvbW5lc3Mgb2Yg
dGhlIGlzc3VlIHJlcHJvZHVjaWJpbGl0eSBtYWtlcyBiaXNlY3RpbmcgdG9vIApkaWZpY3VsdC4K
Cj4gQXBhcnQgZnJvbSB0aGF0IHlvdSBzaG91bGQgdHJ5IHRvIGVuYWJsZSBlYXJseWNvbiBvbiB5
b3VyIGtlcm5lbCB5b3Ugd2FudCB0bwo+IGtleGVjIGludG8sIHNvIGF0IGxlYXN0IHlvdSBjYW4g
c2VlIGlmIGl0IGNyYXNoZXMgaW4gdGhlIG5ldyBrZXJuZWwuCgpBZGRlZCBlYXJseWNvbiB0byB0
aGUgY21kbGluZS4gTm93IGl0IGJvb3RzIGZpbmUsIGFsdGhvdWdoIGl0IGlzIG5vdAp3b3JraW5n
LCB0aGUgZF9sb29rdXAgaXNzdWVzIGFyZSBzdGlsbCB0aGVyZS4KQmFzaWNhbGx5LCBpdCBsb29r
cyBsaWtlIGFueXRoaW5nIHRoYXQgY2hhbmdlcyB0aGUga2VybmVsIG1lbW9yeSBsYXlvdXQKKGxp
a2UgYSBzaW5nbGUgZXh0cmEgYWxsb2MpIGFmZmVjdHMgdGhlIGlzc3VlLCBtYWtpbmcgaXQgY29t
cGxldGVseSByYW5kb20uCgo+IElmIHlvdQo+IHN0aWxsIGRvbid0IHNlZSBhbnl0aGluZyB5b3Ug
Y2FuIHRyeSB0byB1c2UgcHJ1Z2F0b3J5IHByaW50aW5nIChpZiB5b3UgdXNlCj4ga2V4ZWNfbG9h
ZCBhbmQgbm90IGtleGVjX2ZpbGVfbG9hZCkuIEkgaGF2ZSBhIHdvcmstaW4tcHJvZ3Jlc3MgCj4g
cGF0Y2hlcyB0aGF0IEkKPiBjYW4gc2hhcmUgd2l0aCB5b3UgaWYgbmVlZGVkLiBKdXN0IGxldCBt
ZSBrbm93LgoKV2hhdCBpcyAncHJ1Z2F0b3J5IHByaW50aW5nJyA/IEkgYW0gdXNpbmcga2V4ZWNf
bG9hZCBmcm9tIGtleGVjLXRvb2xzLiBUaGUKb3B0aW9uIHRvIHVzZSBrZXhlY19maWxlX2xvYWQg
aXMgbm90IHVzZWQuCgo+IFJlZ2FyZHMsCj4gTWF0dGhpYXMKPgo+Cj4+IFJlZ2FyZHMsCj4+ICBW
aWNlbsOnLgo+PiAKPj4gCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4+IGxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZyAuLi4KCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
