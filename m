Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 311761327F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 14:41:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QOGw+cW6dnpsFQ/zsMVGOu8JKmuPi5as7vWVtJ2Svy4=; b=kD5+xJVPIQu9ly
	iEivDeetVrCkRAg8lgrIDy0aZKp5Zq0fkIz6i64ah+dHbNQjIOrboQvyhdkcTWsnVo4jmDoQf+r20
	1TkkO9Yf8vTuw+FoWSlJ5TwGMQa/1IXe0C9d7YzQoxw5kYPhOq+jUSYhPxCOzP1yearWV9OWKyKXy
	vX+TBNvYig42S1vk6SDE1lgSqMboM+GvUUpfBSPbcxo3u8/QS6dY6M/HkEASVnF1ii096OgCEXqbo
	hSZuawXx0pMHR0BbOJJxT4JBLauJ9H5uK+oaKV7HK19/9cG6aNcjyiD7CFSofQvtMiq4fvOS32fBm
	0iqKiV+aItVUoE/ANVfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iop6P-0007VS-4e; Tue, 07 Jan 2020 13:40:57 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iop69-0007V7-S0
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 13:40:43 +0000
Received: by mail-ed1-f65.google.com with SMTP id i16so50366286edr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 05:40:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=thsd3sinDDhuM6E2t49+n1Gx03E9tay/7z6/ctLyCAs=;
 b=efzoOrgfpGvtAkHBWqS1LlJkMbK9irkB5UMrkyWQdateuPSkxoLOLaPxrBKEszzVsO
 WgJfWx3uh0cdRS2kSD8pyToPc8tqk/0LK3x6vEtslMOGrum9zqSSbUF2/Gd2bOtby0yg
 fxRVyLeB8QRNrjasF3Vz7BPditsEqozSR4uFvBMZfQKX0xSKIs1aL710yHxLY/ECOcT/
 znRddAxoEBBcnTaOy5mLgIilJRpAaA5dWMeDOXuNbphQpFL3j2ubk90Pp3yIcfOJAusK
 mjGpb5f9yChMbOSM5/G720yZ+cEQAIT96qwdImuNcfuhTEJuQbbOJwr1wOU1jPct6npQ
 g4kw==
X-Gm-Message-State: APjAAAWrCcm9P2bavzww2XXudmBtctxcA0fw8jIxv4cPbqhYHodXSy8m
 /f5pCSk/k4r3o0CyLU292DvDTY8j840=
X-Google-Smtp-Source: APXvYqxezYTuc5OvFdSJO+7UJxkHb65Wqm5swNz7CIOf5a+tv1ANdfwOealfeE7rbR8/JCn2un/bJw==
X-Received: by 2002:a17:906:4d09:: with SMTP id
 r9mr112152439eju.175.1578404440047; 
 Tue, 07 Jan 2020 05:40:40 -0800 (PST)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com.
 [209.85.128.46])
 by smtp.gmail.com with ESMTPSA id z25sm7341136edr.25.2020.01.07.05.40.39
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Jan 2020 05:40:39 -0800 (PST)
Received: by mail-wm1-f46.google.com with SMTP id m24so18987750wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 05:40:39 -0800 (PST)
X-Received: by 2002:a05:600c:2409:: with SMTP id
 9mr37808693wmp.109.1578404439743; 
 Tue, 07 Jan 2020 05:40:39 -0800 (PST)
MIME-Version: 1.0
References: <20191219092000.949052-1-maxime@cerno.tech>
 <20191219092000.949052-2-maxime@cerno.tech>
In-Reply-To: <20191219092000.949052-2-maxime@cerno.tech>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 7 Jan 2020 21:40:29 +0800
X-Gmail-Original-Message-ID: <CAGb2v67K7wGEZugdXk3E0naA3Mk-bzkJh_aZT-_FaeQgz4-5eA@mail.gmail.com>
Message-ID: <CAGb2v67K7wGEZugdXk3E0naA3Mk-bzkJh_aZT-_FaeQgz4-5eA@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/sun4i: drc: Make sure we enforce the clock rate
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_054042_479370_BF7E1752 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 5:20 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The DRC needs to run at 300MHz to be functional. This was done so far
> using assigned-clocks in the device tree, but that is easy to forget, and
> dosen't provide any other guarantee than the rate is going to be roughly
> the one requested at probe time.
>
> Therefore it's pretty fragile, so let's just use the exclusive clock API to
> enforce it.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
