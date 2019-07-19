Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FCB6E7D4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 17:14:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ah+rgb60NOzbcpdCjb3zoz59S7Q/6+3kmQ+M/kizOZA=; b=Zdwh5RzYdr3yw9
	pMRE7N9ZJVU4ZAaEfpae7GH5dS210UO1ngk2ESBc4yUbgaAXPvhsjMPotk7sL+gg0rOxunhMCdJY/
	VVzobu+GWtRXE0TePJEIT6h1AEcoUmFMRpCfvzJ48qMuD6VDOoWRbtIJqWW0vjtbu8RBA138v8IY0
	4+qnLTXykR6pdmBvHNI+3dMOuzLds7RxqZk/vYHtzBwgaVZ+QzsT+AeKW+2/d4HcpP+/YNGEWi8Ss
	zpmdAIU/72J2l+96/BjbkWikKuzwDF6BdEmeXLXG4rZGmC7D4vIAN0hSxZ/jPnMLbk18NTbhd98jt
	v60q1IP6hFMYatnTvRJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoUaJ-0006Zf-43; Fri, 19 Jul 2019 15:14:11 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoUa5-0006Yo-2B
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 15:13:58 +0000
Received: by mail-lj1-x242.google.com with SMTP id v24so31175020ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 08:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version:content-transfer-encoding;
 bh=kBSZftkmiJeVqwh2q+rU9tm8xADeFXVDTNxvaxitKn0=;
 b=IVtapoFamwSes/PlaroJZmI6o/IwTaQHuue2MeChN0yUiRuteDuKJh/x/xNIdKsvp4
 2ikKFssjz9Aamw1GACQfEvjNThtrepRm9H0HgjeyKKr8DWUBS8THothqW6rHDvvtJAul
 vwDV4Sh/4ngosmCfyre68U+5VcL2derx4+vQfLhMkXmks5jrn28QvgpVU1ovfJ/uDw2S
 KZHPHF8vN0qRajE/MQnxwOhrOr0wgvOQG7M9YxvImH6X/B4eCYWuo+n5MDUwsMKvUteH
 mUlbYP7xTd6/flVGAHNbJUz4tSsTNDTFlVgE3VK1+5aAc7i+uz5sfDdNGVUJsTc25FM/
 uomQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version:content-transfer-encoding;
 bh=kBSZftkmiJeVqwh2q+rU9tm8xADeFXVDTNxvaxitKn0=;
 b=FQmn/8fOEy4SYtuxj+Sz8a8R1F2PZseRHgRUOzUhF9EVgcjV/i1HECf5/Ari33/vD6
 r5F0C198134JqU2EA/TvmBxrAdHDSRQ7MuOg+MsbxU2GBdfC+tZuENsm4ZdqLOlKxbAa
 4YoMqniEQRUa360FLpxYFEt2KRRk71TVIsOjbgnKxOBdJwHWAjJ3WlRCkgFxBVQpm8Ix
 xJO8G/gCarBPJvnUIiU2IXCa0WXMHs6WB0i4ROej7AiGOIVALirKvtvSQ6MX6CvQMJfe
 5mS49Rwn0KEMXpfmy/4cSH6P6PnyYM+vyI2MJDJI6b/vtYnC3A6c1JpyOtRgAmiLocBq
 h4gw==
X-Gm-Message-State: APjAAAUc8yARdBE0Dr597rS8C0xfRxD4wHuXjzy0kqlZfRzdJTgsWMtC
 bJx0XNP96EEF3ueFGNIuKR6UjdG5
X-Google-Smtp-Source: APXvYqyg+Bn0XD3WxZYgtdZxHkrxRBkFppKGe05Tz3Pwms90vFmp+NNCRfQdFnP6v/soxqqrYVmC7Q==
X-Received: by 2002:a2e:988b:: with SMTP id b11mr27510586ljj.110.1563549234917; 
 Fri, 19 Jul 2019 08:13:54 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id s19sm5638526lji.38.2019.07.19.08.13.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Jul 2019 08:13:54 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v4 1/3] serial: imx: set_termios(): do not enable autoRTS
 if RTS is unset
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1563526074-20399-1-git-send-email-sorganov@gmail.com>
 <1563526074-20399-2-git-send-email-sorganov@gmail.com>
 <20190719091143.uhjxeibtolgswq2l@pengutronix.de>
 <87h87idxq2.fsf@osv.gnss.ru>
 <20190719143151.gx43ndn2oy35h247@pengutronix.de>
Date: Fri, 19 Jul 2019 18:13:52 +0300
In-Reply-To: <20190719143151.gx43ndn2oy35h247@pengutronix.de> ("Uwe
 \=\?utf-8\?Q\?Kleine-K\=C3\=B6nig\=22's\?\= message of "Fri,
 19 Jul 2019 16:31:51 +0200")
Message-ID: <87woge9hvz.fsf@osv.gnss.ru>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_081357_111310_1D27622D 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gVXdlLAoKVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25p
eC5kZT4gd3JpdGVzOgo+IEhlbGxvIFNlcmdleSwKPgo+IE9uIEZyaSwgSnVsIDE5LCAyMDE5IGF0
IDAzOjE4OjEzUE0gKzAzMDAsIFNlcmdleSBPcmdhbm92IHdyb3RlOgo+PiBVd2UgS2xlaW5lLUvD
tm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cml0ZXM6Cj4+ID4gT24gRnJp
LCBKdWwgMTksIDIwMTkgYXQgMTE6NDc6NTJBTSArMDMwMCwgU2VyZ2V5IE9yZ2Fub3Ygd3JvdGU6
Cj4+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3R0eS9zZXJpYWwvaW14LmMgYi9kcml2ZXJzL3R0
eS9zZXJpYWwvaW14LmMKPj4gPj4gaW5kZXggNTdkNmU2Yi4uOTVkNzk4NCAxMDA2NDQKPj4gPj4g
LS0tIGEvZHJpdmVycy90dHkvc2VyaWFsL2lteC5jCj4+ID4+ICsrKyBiL2RyaXZlcnMvdHR5L3Nl
cmlhbC9pbXguYwo+PiA+PiBAQCAtNDA1LDcgKzQwNSw4IEBAIHN0YXRpYyB2b2lkIGlteF91YXJ0
X3J0c19pbmFjdGl2ZShzdHJ1Y3QgaW14X3BvcnQgKnNwb3J0LCB1MzIgKnVjcjIpCj4+ID4+ICAv
KiBjYWxsZWQgd2l0aCBwb3J0LmxvY2sgdGFrZW4gYW5kIGlycXMgY2FsbGVyIGRlcGVuZGVudCAq
Lwo+PiA+PiAgc3RhdGljIHZvaWQgaW14X3VhcnRfcnRzX2F1dG8oc3RydWN0IGlteF9wb3J0ICpz
cG9ydCwgdTMyICp1Y3IyKQo+PiA+PiAgewo+PiA+PiAtCSp1Y3IyIHw9IFVDUjJfQ1RTQzsKPj4g
Pj4gKwlpZiAoKnVjcjIgJiBVQ1IyX0NUUykKPj4gPj4gKwkJKnVjcjIgfD0gVUNSMl9DVFNDOwo+
PiA+Cj4+ID4gSSB0aGluayB0aGlzIHBhdGNoIGlzIHdyb25nIG9yIHRoZSBjb21taXQgbG9nIGlz
IGluc3VmZmljaWVudC4KPj4gPiBpbXhfdWFydF9ydHNfYXV0bygpIGhhcyBvbmx5IGEgc2luZ2xl
IGNhbGxlciBhbmQgdGhlcmUgdWNyMiAmIFVDUjJfQ1RTIGlzCj4+ID4gbmV2ZXIgdHJ1ZS4gQW5k
IENUU0MgaXNuJ3QgcmVzdG9yZWQgYW55d2hlcmUsIGlzIGl0Pwo+PiAKPj4gVGhpcyBpcyByZWJh
c2UgdG8gJ3R0eS1uZXh0JyBicmFuY2gsIGFuZCB5b3UgbmVlZCB0byBsb29rIGF0IGl0IGluIHRo
YXQKPj4gY29udGV4dC4gVGhlcmUsIHVjcjIgJiBVQ1IyX0NUUyBkb2VzIGFscmVhZHkgbWFrZSBz
ZW5zZSwgZHVlIHRvIHByZXZpb3VzCj4+IGZpeCB0aGF0IGlzIGFscmVhZHkgdGhlcmUuCj4KPiBJ
IGxvb2tlZCBhdCA1N2Q2ZTZiIHdoaWNoIGlzIHRoZSBmaWxlIHlvdSBwYXRjaGVkLiBBbmQgdGhl
cmUKPiBpbXhfdWFydF9ydHNfYXV0byBpcyBvbmx5IGV2ZXIgY2FsbGVkIHdpdGggKnVjcjIgbm90
IGhhdmluZyBVQ1IyX0NUUy4KPgo+IElmIHlvdSBzdGlsbCB0aGluayBJJ20gd3JvbmcsIHBsZWFz
ZSBpbXByb3ZlIHRoZSBjb21taXQgbG9nCj4gYWNjb3JkaW5nbHkuCgpJIHN0aWxsIHRoaW5rIHlv
dSBhcmUgd3JvbmcsIGJ1dCBJIGRvbid0IGtub3cgaG93IHRvIGltcHJvdmUgY29tbWl0IGxvZy4K
ClRvIGNoZWNrIGl0IG9uY2UgYWdhaW4sIEkganVzdCBkaWQ6CgokIGdpdCBzaG93IDU3ZDZlNmIg
PiBpbXguYwoKVGhlcmUsIGluIGlteF91YXJ0X3NldF90ZXJtaW9zKCksIEkgc2VlOgoKMTU2OToJ
b2xkX3VjcjIgPSBpbXhfdWFydF9yZWFkbChzcG9ydCwgVUNSMik7CjE1NzA6CXVjcjIgPSBvbGRf
dWNyMiAmIChVQ1IyX1RYRU4gfCBVQ1IyX1JYRU4gfCBVQ1IyX0FURU4gfCBVQ1IyX0NUUyk7CgpI
ZXJlLCBjdXJyZW50IFVDUjIgdmFsdWUgaXMgcmVhZCBpbnRvICdvbGRfdWNyMicgYW5kIHRoZW4g
aXRzIC9jdXJyZW50LwpVQ1IyX0NUUyBiaXQgaXMgY29waWVkIGludG8gJ3VjcjInIChhbG9uZyB3
aXRoIDMgb3RoZXIgYml0cykuCgpUaGVuLCBsYXRlciBpbiB0aGUgc2FtZSBmdW5jdGlvbjoKCjE1
OTE6CQlpbXhfdWFydF9ydHNfYXV0byhzcG9ydCwgJnVjcjIpOwoKaXMgY2FsbGVkIHRoYXQgY2Fu
IGNoZWNrIC9jdXJyZW50LyBzdGF0ZSBvZiBVQ1IyX0NUUyBiaXQgaW4gJyp1Y3IyJy4KClRoYXQn
cyB3aGF0IHRoZSBwYXRjaCBkb2VzLCBjaGVja3MgdGhpcyBiaXQuCgpTb3JyeSwgSSBmYWlsIHRv
IHNlZSBob3cgeW91IGNhbWUgdG8gY29uY2x1c2lvbiB0aGF0ICIqdWNyMiBub3QgaGF2aW5nClVD
UjJfQ1RTIi4gRG8gd2UgbWF5YmUgc3RpbGwgcmVhZCBkaWZmZXJlbnQgdmVyc2lvbnMgb2YgdGhl
IGZpbGU/CgotLSBTZXJnZXkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
