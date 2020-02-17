Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B226160BB3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 08:37:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RtwcNvfLE0guUpvdBRBFFDCipEKVwYp9IDowgrAGuhM=; b=EB1U9oiLfdA8wu
	eP0KuyOPQn/VgQQaHbpypM3lhND/gQOiEPKAwIaK/cQqOWpYF5GYLcIZIouBXvO1UDvhZvQdebIif
	GZzYxY/OD41S9j3Zv1G6Aj//IH55P5lS41JwD0I5zMXBAacfDOIg1/exwQzS5r//IyeFRe4b4HSjv
	2AWHIOGe+3XC1qdIiVWmoG6x7OXcmMGSDIIjw5f99o692yy5bLMxjuFG9q+98pUHcJRbqK370xplw
	a3fgrzKjeE4Eumw8xnErJ8nfMN7J5dIFO11z+bJtDsuyUF6zWLxMyOuC7s0g7clO6CsvOl1UswtBk
	2wDYoyChaeStvJEJRm3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3ayS-0001H1-Up; Mon, 17 Feb 2020 07:37:48 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ay9-0001B5-IE
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 07:37:30 +0000
Received: by mail-ed1-f65.google.com with SMTP id v28so19501080edw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 23:37:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IFs/wu3fMgnSIGPEioJWp31NAFCMyffCU1mWgEeziQM=;
 b=CsXj3RZX2pbcazy1DRHaZaQyHXhS4l8Deejs7epo5eLYbLR48pcoqMCYapijOWg5L7
 97d25Ituzry16po0nB/eXQ/RTwnhpczaQTy9SfKjFsvO4Wf/0p+DkMtuM6QSG25PgME5
 sFOO65HeYBaVdb1blqx1jUtvpg7DGUkWEn00JQImmxVcKnmDj+bUAV/AzdxHumBpZ6lk
 9WKn52H1kwZEr7htig6702uELSprxeNlC+gsXLAyR+e52swBhHMbZLrdkGB94CrxiyiQ
 jKZ3kUk6zOdEWmEFyp1u0b0QwidCGYOWf06rNm0zykqFAWtds89fPOzpmgzPDMnwQTc5
 Cumg==
X-Gm-Message-State: APjAAAVH10PA6KD2Q177fURV7Tb2nB1tjUqZQRa6okQY6OENc03L+r8M
 oA5ZG711n9eySp2YtOswo5IwVxCHc3A=
X-Google-Smtp-Source: APXvYqwdwiO5HhEh1ZKyhocPJ3eNG6CNri/nlgHeZmJ9BiHA2NhbTu4BV/FG7K4+cE6G4/j2KPOJJw==
X-Received: by 2002:a05:6402:c08:: with SMTP id
 co8mr13542385edb.197.1581925048070; 
 Sun, 16 Feb 2020 23:37:28 -0800 (PST)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com.
 [209.85.128.50])
 by smtp.gmail.com with ESMTPSA id mh16sm825951ejb.46.2020.02.16.23.37.27
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 16 Feb 2020 23:37:27 -0800 (PST)
Received: by mail-wm1-f50.google.com with SMTP id a9so17215063wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 23:37:27 -0800 (PST)
X-Received: by 2002:a05:600c:34d:: with SMTP id
 u13mr21218005wmd.77.1581925047487; 
 Sun, 16 Feb 2020 23:37:27 -0800 (PST)
MIME-Version: 1.0
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-8-samuel@sholland.org>
In-Reply-To: <20200217064250.15516-8-samuel@sholland.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 17 Feb 2020 15:37:16 +0800
X-Gmail-Original-Message-ID: <CAGb2v66gif5urvyRy=Tt-bNvpzL5Te8wne6tEA+KSPH-J7BWrA@mail.gmail.com>
Message-ID: <CAGb2v66gif5urvyRy=Tt-bNvpzL5Te8wne6tEA+KSPH-J7BWrA@mail.gmail.com>
Subject: Re: [RFC PATCH 07/34] ASoC: sun8i-codec: Remove extraneous widgets
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_233729_719426_ECCD946C 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Mark Brown <broonie@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 =?UTF-8?Q?Myl=C3=A8ne_Josserand?= <mylene.josserand@free-electrons.com>,
 stable@kernel.org, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 2:43 PM Samuel Holland <samuel@sholland.org> wrote:
>
> This driver is for the digital part of the codec, which has no
> microphone input. These widgets look like they were copied from
> sun4i-codec. Since they do not belong here, remove them.
>
> Cc: stable@kernel.org
> Fixes: eda85d1fee05 ("ASoC: sun8i-codec: Add ADC support for a33")
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
