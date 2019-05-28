Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D472BDC9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 05:35:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vy3oqCI/DAt8e8KxYaJ7powSrTJ/2YsBySoGQFIvOnA=; b=Obl+6zhhrL56X8
	fgiiyozfYIa6/qA86ah6kQzc8o9hqhuvI2UyogonOO4jANzBRDUd5oAb4aV0pbEqlyN4qYSnBhNip
	CjqySjGHoiptTotqFYMhud5wiBF0w1zezisnZg5oaC9e3crq07oCYXIm+V/6wJap37GibhrAm5Gdc
	r8Afte9XzbcNIHivdKEWEHIk0Xtq2X2iG0fmdtA2Zy//gtOyvmp6IYFqlgdH3c3dDX9JZPjg6510x
	0a5nV0AzCINVaE6OJ5MERzGeEdhEPAMeYI2SwtF7CVVss/YDjUiMxQuUcryeAY5rjsXgdk5TuQmq/
	Q301TC5jeFvsxmMxInzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVStS-0003Gb-LM; Tue, 28 May 2019 03:35:18 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVStM-0003GC-8Z
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 03:35:13 +0000
Received: by mail-ed1-f65.google.com with SMTP id g57so14648905edc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 20:35:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A9CIrpgRhuz18hiUy1qjEgrlpmt04SJ5EW+pY8QJCHk=;
 b=r3VVTbXr7XUH09xcS48BLLJXokV70CeByiyKdGk+ulY8S5p2+WLuSYd0pi+oF/3lae
 AKNShHQHbc9qA1gdO1crjni3q9lRHIeoB1rzIl9PEr2nBMXiZxEaCYaGeUv28pULSaTo
 e15qq7FyAy27oaeVIE7E/ExSh9nWqiqJ0pyz8Z5Kn8v/3dU1MUZLBICZSF/rnvjzb7+D
 XVViqorNeun82gW9y6laH6p8iCoJ7bdjl85eGKP9S+++VKJM+eOlUevQSD4CxgLwHFI0
 0WUkFlG6dJejp063gU/sGE79ygMy8GCrcXly7DY8ojUMIMSXSgbNbbESDbOWtpJxDr7P
 D44w==
X-Gm-Message-State: APjAAAWtj8mfay3UBah3NeElrDex/ymv7324ZkGwVSuNmvcZluC2f/Nk
 ROPGS68K4lT6oWJxR7EzHXZXTqBd++A=
X-Google-Smtp-Source: APXvYqzMwmfezbjw3f6jt9lDVDFEqcXD3gf7xRm2IMB7mwsBDg1I3EvO3/Ghd1eMhL8BRYZuQDrviQ==
X-Received: by 2002:a17:906:260b:: with SMTP id
 h11mr94360450ejc.293.1559014510415; 
 Mon, 27 May 2019 20:35:10 -0700 (PDT)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com.
 [209.85.128.42])
 by smtp.gmail.com with ESMTPSA id s18sm2017957ejz.72.2019.05.27.20.35.10
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 20:35:10 -0700 (PDT)
Received: by mail-wm1-f42.google.com with SMTP id t5so1132652wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 20:35:10 -0700 (PDT)
X-Received: by 2002:a05:600c:3d0:: with SMTP id
 z16mr1392683wmd.125.1559014509915; 
 Mon, 27 May 2019 20:35:09 -0700 (PDT)
MIME-Version: 1.0
References: <290402405a34506997fd2fab2c4c1486dbe6b7e5.1558958381.git-series.maxime.ripard@bootlin.com>
 <0b46e2c493cdab00ceef6e35dfef0cc869f14fa3.1558958381.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <0b46e2c493cdab00ceef6e35dfef0cc869f14fa3.1558958381.git-series.maxime.ripard@bootlin.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 28 May 2019 11:35:00 +0800
X-Gmail-Original-Message-ID: <CAGb2v64GQsq43kd+fJ+ynFXwD+VjCKOQTY8Xz6wEaZxd0rR0bw@mail.gmail.com>
Message-ID: <CAGb2v64GQsq43kd+fJ+ynFXwD+VjCKOQTY8Xz6wEaZxd0rR0bw@mail.gmail.com>
Subject: Re: [PATCH 08/10] ARM: dts: sun6i: Add external crystals accuracy
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_203512_306344_DF6F99F8 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 8:01 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The A31 datasheet mandates oscillators accuracy to be within 50ppm. Let's
> add that accuracy to their device tree nodes.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
