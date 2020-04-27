Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7961BA1DE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 13:03:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aCyVDyx8FWUo2ILsS0gq9bEKb+hPAbLlGuOMkenSeMU=; b=VL+NgvjZRDNDKo
	kr6MlQavl+A8ai0qBdL2YgzMzYKqfs22fYHLBqI1QABUcU1QvWNsZI2UvAjMZIzZ+PawAc7Owf0mp
	bcrTvgbRKGI+Bvd3uf3FfCYoSyDBg/156zKurRMkraqNyo+66ZAEKTaRk9/6qYEBL1JHzZhxJ+Dqv
	cUD58ycQRfkW6IRUCzmwCfA9TABt/R/hHDGjUzqSibrBvaI8H0KMwwswn0istA03ej5K7dafoMyII
	DaS3vOKAZruvkqIAO4b2DqDVM5JFqigOdruizE2qBoY4OW7SaLhkSpXrbdT8e1U7V7EAg1u7+gsQ7
	6m8I0SM4TctGneTZhO1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT1Xx-0000jB-Er; Mon, 27 Apr 2020 11:03:33 +0000
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT1Xo-0000ho-2g
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 11:03:25 +0000
Received: by mail-lj1-f196.google.com with SMTP id f11so12491300ljp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 04:03:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=YGgK5CRFIPvp5oQwSbTJDNV152r7++oABkTa9vPmsQs=;
 b=AZaCUvLVWGs/SbxHCAYOBCqhuux7YeJDhwJd3nzb2w5YdZrNsLtl/o1gUSRc4DDNS3
 CNm7lRTuG7XPov43XIlC9C6B9YAr5Jk6xeyFgJN2FF0O5Z1hgOp7bXzVdyvDtVLoSW+0
 btRspQbpIGItOe/1IovN3dpBJwAd8Ol4Sf/1h3ZeGxkkfum7YJofSrXYTnLAcTGY5BSD
 J2ROaAxUR3ncEVJI7VLT+uq2aGElLX79OUaWwLhDvyu1n0nU1Qa5ywo2UEtWNolkGO3g
 Limf+rxKZtzgaczf7/r1gstzJ4KkQvCmEcxtznzi9RIAbvedN/dY7Qo38tezZ0mondQg
 g9Pw==
X-Gm-Message-State: AGi0PuZkJWaQmakH1FmzlpMCj5E7LzSm7b176SMu9VFBg3Z5GLfrEvOH
 IGf58H+yosY39Ngf/rCTl0x7ldzgLLA=
X-Google-Smtp-Source: APiQypLqj/CRIWqVLaEGreakYRTSkRDgIYKpf/xlgDsxp3qEzmA2irNi5O4usd6VoW1bWHQ/WSPH0g==
X-Received: by 2002:a2e:2403:: with SMTP id k3mr9068027ljk.237.1587985397391; 
 Mon, 27 Apr 2020 04:03:17 -0700 (PDT)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com.
 [209.85.208.173])
 by smtp.gmail.com with ESMTPSA id f4sm10990603lfa.24.2020.04.27.04.03.16
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Apr 2020 04:03:16 -0700 (PDT)
Received: by mail-lj1-f173.google.com with SMTP id f18so17076742lja.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 04:03:16 -0700 (PDT)
X-Received: by 2002:a2e:910e:: with SMTP id m14mr12649569ljg.141.1587985396375; 
 Mon, 27 Apr 2020 04:03:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200426104115.22630-1-peron.clem@gmail.com>
 <20200426104115.22630-7-peron.clem@gmail.com>
In-Reply-To: <20200426104115.22630-7-peron.clem@gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 27 Apr 2020 19:03:04 +0800
X-Gmail-Original-Message-ID: <CAGb2v66TFzpEmzdqxmjqGvVONkPEhaDMHNA4tRUvrX_Mg8w=tA@mail.gmail.com>
Message-ID: <CAGb2v66TFzpEmzdqxmjqGvVONkPEhaDMHNA4tRUvrX_Mg8w=tA@mail.gmail.com>
Subject: Re: [PATCH v3 6/7] ASoC: sun4i-i2s: Adjust regmap settings
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_040324_117671_6480641A 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Marcus Cooper <codekipper@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Maxime Ripard <mripard@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBBcHIgMjYsIDIwMjAgYXQgNjo0MSBQTSBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNs
ZW1AZ21haWwuY29tPiB3cm90ZToKPgo+IEZyb206IE1hcmN1cyBDb29wZXIgPGNvZGVraXBwZXJA
Z21haWwuY29tPgo+Cj4gQnlwYXNzIHRoZSByZWdtYXAgY2FjaGUgd2hlbiBmbHVzaGluZyBvciBy
ZWFkaW5nIHRoZSBpMnMgRklGT3MuCj4KPiBTaWduZWQtb2ZmLWJ5OiBNYXJjdXMgQ29vcGVyIDxj
b2Rla2lwcGVyQGdtYWlsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBl
cm9uLmNsZW1AZ21haWwuY29tPgoKQWNrZWQtYnk6IENoZW4tWXUgVHNhaSA8d2Vuc0Bjc2llLm9y
Zz4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
