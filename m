Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFE21F9FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 20:30:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DdbfNtMKWswzG4iFuSoTo07nWHn/dacAGjnCYChiZlw=; b=uzDo3K4gvqf/XE
	pLapNCnkVW+PB0/zBlNlgOLQNVj0drPGsOdpfaUSNL3dn8O4BoVxikvxMLT1VCwyd84kRsMH8Kddf
	RZ3Pq+Y0XapCxKQ3l1VPxedb9OXxFieTWP3ewgRC2bdgHaX+SnCM0ibf2W0T00en+7KbqFiDztM1O
	Yjw8V/GcXpehUkxk2NxrvsV0Ekri7pQ0K6qb9gfrOuoAgVyBIVQoevyu1G7Azwobflj6IWUQsYUEl
	yK88eYpPNjOYKZP/OKpE8I5K6RW/7rRG0Nf3kHvADWZ8FSSUX6QPRUsGsucKDs6ehm1ApnSgFEvKD
	eAgmoWLiA+vWZJpwQHfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQyfk-0003gh-Ru; Wed, 15 May 2019 18:30:36 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQyfb-0003ev-Ny
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 18:30:28 +0000
Received: by mail-ua1-x944.google.com with SMTP id 94so247419uam.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 11:30:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=x1GsAM8bhdilQ74FwqzJHpjAIW1mRUZnatlHpEToBDY=;
 b=QxhYWoPZ+1PlCeInJqiH5EdtHpzqJylxhCJeEIF6Jo3c2n26Xg9zJvIAjyi21FRb1E
 shfVV0sjHTkIk+XT0LuVrMEHJjAIGk1WL7tVbohxb8T16rinc4xS01nUc4/e6KTE5MTA
 PeT9fUG9BtVkJC9XKXysA0q0GuB+i28ib1IbA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=x1GsAM8bhdilQ74FwqzJHpjAIW1mRUZnatlHpEToBDY=;
 b=IFbFK1yimkUASL+BCXRBQzU6271luwf6DI2Jt2/J+9UG38g+GGGWxgR34iYLjg82Se
 6hVeiuAaluodUSMdxvT6OdcVT0pCPrFIEfEJeukDkgjEtV0d0iBKxoaZgyyGZ61ie059
 rWpin48sCgCyovKsNuLKVlQK19e48T1WKrEMYfEnHwJwvFpNZbG/gLM+qjWago85BsXU
 y5UzVlKxjWeZDrqMYQYrahzyZEz9Qh+IJf5JxEjSvuyJ8kpnKywOOtn0cxMPjg+sPS8x
 ohL7IlCcjgx63FZh5aPDSOQhZHgOAWW5t+ipG+k5U/YNBbeses2M/Y+Mmr71YKwUx70m
 LwYA==
X-Gm-Message-State: APjAAAVOsI8i6HcW+aYpyRV5GVeamPt9OdDJbo4TQaSvXZVQSYbbhtoZ
 evPVRqzPqcHaZmqPhS0N4PsCGBE+jNI=
X-Google-Smtp-Source: APXvYqx42Or8HfAqo3IGQJN7qVHRaqHT47F9LjXfrfRTaoD3QficohCNt16xV1nt+IbAE73qdIKTVQ==
X-Received: by 2002:ab0:4893:: with SMTP id x19mr21369926uac.5.1557945026473; 
 Wed, 15 May 2019 11:30:26 -0700 (PDT)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com.
 [209.85.217.48])
 by smtp.gmail.com with ESMTPSA id v141sm3036794vsc.8.2019.05.15.11.30.24
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 11:30:24 -0700 (PDT)
Received: by mail-vs1-f48.google.com with SMTP id j184so555400vsd.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 11:30:24 -0700 (PDT)
X-Received: by 2002:a67:79ca:: with SMTP id u193mr20058967vsc.20.1557945024176; 
 Wed, 15 May 2019 11:30:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190515153127.24626-1-mka@chromium.org>
 <20190515153127.24626-2-mka@chromium.org>
In-Reply-To: <20190515153127.24626-2-mka@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 15 May 2019 11:30:12 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XgoG5hiT=vAhNtUF4iVj1-Lmj7S5tvk86ehxB1uUZyxw@mail.gmail.com>
Message-ID: <CAD=FV=XgoG5hiT=vAhNtUF4iVj1-Lmj7S5tvk86ehxB1uUZyxw@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: raise GPU trip point temperature for speedy
 to 80 degC
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_113027_775613_5B6C802F 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBXZWQsIE1heSAxNSwgMjAxOSBhdCA4OjMxIEFNIE1hdHRoaWFzIEthZWhsY2tlIDxt
a2FAY2hyb21pdW0ub3JnPiB3cm90ZToKCj4gUmFpc2UgdGhlIHRlbXBlcmF0dXJlIG9mIHRoZSBH
UFUgdGhlcm1hbCB0cmlwIHBvaW50IGZvciBzcGVlZHkKPiB0byA4MMKwQy4gVGhpcyBpcyB0aGUg
dmFsdWUgdXNlZCBieSB0aGUgZG93bnN0cmVhbSBDaHJvbWUgT1MgMy4xNAo+IGtlcm5lbCwgdGhl
ICdvZmZpY2lhbCcga2VybmVsIGZvciBzcGVlZHkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGlh
cyBLYWVobGNrZSA8bWthQGNocm9taXVtLm9yZz4KPiAtLS0KPiAgYXJjaC9hcm0vYm9vdC9kdHMv
cmszMjg4LXZleXJvbi1zcGVlZHkuZHRzIHwgNCArKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9yazMyODgtdmV5
cm9uLXNwZWVkeS5kdHMgYi9hcmNoL2FybS9ib290L2R0cy9yazMyODgtdmV5cm9uLXNwZWVkeS5k
dHMKPiBpbmRleCAyYWM4NzQ4YTNhMGMuLjM5NGE5NjQ4ZmFlZSAxMDA2NDQKPiAtLS0gYS9hcmNo
L2FybS9ib290L2R0cy9yazMyODgtdmV5cm9uLXNwZWVkeS5kdHMKPiArKysgYi9hcmNoL2FybS9i
b290L2R0cy9yazMyODgtdmV5cm9uLXNwZWVkeS5kdHMKPiBAQCAtNjQsNiArNjQsMTAgQEAKPiAg
ICAgICAgIHRlbXBlcmF0dXJlID0gPDcwMDAwPjsKPiAgfTsKPgo+ICsmZ3B1X2FsZXJ0MCB7Cj4g
KyAgICAgICB0ZW1wZXJhdHVyZSA9IDw4MDAwMD47Cj4gK307Cj4gKwo+ICAmZWRwIHsKClNpbWls
YXIgY29tbWVudHMgdG8gcGF0Y2ggc2V0ICMxIGFib3V0IHNvcnQgb3JkZXJpbmcuCgouLi5JJ2xs
IGFsc28gbm90aWNlIHRoYXQgaWYgd2UgZG8gZW5kIHVwIHNldHRpbmcgdGhlICJjcml0aWNhbCIg
dG8gMTAwCkMgZm9yIG1vc3Qgb2YgdmV5cm9uIHRoZW4gSSBndWVzcyB3ZSdsbCBoYXZlIHRvIHN3
aXRjaCBpdCBiYWNrIHRvIDkwIEMKaGVyZSBmb3Igc3BlZWR5IHRvIG1hdGNoIGRvd25zdHJlYW0/
ICBNYXliZSB0aGF0J3MgYW4gYXJndW1lbnQgZm9yCmRvaW5nIGl0IGluIHRoaXMgcGF0Y2hzZXQg
c28gd2UgZG9uJ3QgZm9yZ2V0PyAgSSdtIHNvbWV3aGF0IGFtYXplZAp0aGF0IGRvd25zdHJlYW0g
aGFzIG9ubHkgMTAgQyBiZXR3ZWVuICJhbGVydCIgYW5kICdjcml0aWNhbCIgZm9yIEdQVQpmb3Ig
c3BlZWR5LCBidXQgSSBndWVzcyBpdCdzIE9LPwoKLURvdWcKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
