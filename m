Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02312160BC8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 08:41:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OJTNLV5lGdPe8IOYm1dz+LT1Y3X8rFoClvpmDlh7cjc=; b=TCccU3Cm5kLC5I
	Dd3fJy9YrKBDlZYTfoPYxvkvj7wtMgmFrE3w+t9A/KxW3UMAn3X9uJkMdbbXoc5fLiL40oAKkVnGU
	AKsfBDOG/f8wI8o151zkVDypoq9gJfVhqEkXlrjdl9fnqACiIYlJxh+heoXH+mfOcmXBfkIpH6kZ8
	0xyRj7Qhs1T9QS6sBdXy4VRL9At6gThBllazREsrALTFpd8OqcpPrtyOabFranqRP6KTkTX/LCBz3
	Byw1cHgtOg6ZyS7o6pHvcxi/yIY+ecgpXQMpEPR+kAya+0F7wDgRCCaV/Cm/nFBQEhxs3yC42GMxQ
	yLOG8duhFhukPr2Jw0xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3b2N-00043b-0v; Mon, 17 Feb 2020 07:41:51 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3b2F-000430-Co
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 07:41:44 +0000
Received: by mail-ed1-f66.google.com with SMTP id g19so19514345eds.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 23:41:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=76WiewyfAQysMsVYcXQkeWLkjiTOOZNh8t0AnmKu14M=;
 b=JR9oNVUHHfHJinVwiAkVAVUwblCESOiPlR6mEery/iIOhS5ucqTtVj/Wa/ORo2QZCE
 9QLdbXEwaSAPShVi13Cv1Kwk6vOIkoNfOpE1NlSfdYfrVlGTYUyiQW32xqQ6Sa0cisOg
 rbmFA1GdiDzoYp+XrSnKC06CTSlDWCSGjz/a2hnrQ/b2mPnfUFJpBk9suw55fDeAGcqp
 BkG1v/gU0LqCxK2saD61NI9z1JAq1uk4jWJXT2WGxSYHeqMMUfuGKlBI4ywJiBjfde26
 ijhbJVAlSxIPDhWsaNJVpNbRW2agRIrM+SAGrQPlZ9aJNlcWxUO3QRVpwuljP7RCcpXb
 DNAg==
X-Gm-Message-State: APjAAAV5WgWmhTeb05OIpKKYhEcFWPoZWLpyuPVZM8hdukX2Ogvx4V+z
 nzyWjzZzTui5fnW2DyUahkmQcFvOrWs=
X-Google-Smtp-Source: APXvYqx/Tvs1WNvy0ZQ5Nynei9dlVcKbHqWQsvWs7AI38mEypB6f7K2aIBQ3K4y9u6vqb35swa/fnQ==
X-Received: by 2002:a05:6402:7da:: with SMTP id
 u26mr13670465edy.227.1581925301310; 
 Sun, 16 Feb 2020 23:41:41 -0800 (PST)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com.
 [209.85.221.51])
 by smtp.gmail.com with ESMTPSA id qw15sm832695ejb.92.2020.02.16.23.41.40
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 16 Feb 2020 23:41:40 -0800 (PST)
Received: by mail-wr1-f51.google.com with SMTP id m16so18314731wrx.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 23:41:40 -0800 (PST)
X-Received: by 2002:a5d:484f:: with SMTP id n15mr20324028wrs.365.1581925300705; 
 Sun, 16 Feb 2020 23:41:40 -0800 (PST)
MIME-Version: 1.0
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-5-samuel@sholland.org>
In-Reply-To: <20200217064250.15516-5-samuel@sholland.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 17 Feb 2020 15:41:29 +0800
X-Gmail-Original-Message-ID: <CAGb2v6543yLuBUi_37DbFdfkOo_OBK8v-rB2hViex_BCzAurPQ@mail.gmail.com>
Message-ID: <CAGb2v6543yLuBUi_37DbFdfkOo_OBK8v-rB2hViex_BCzAurPQ@mail.gmail.com>
Subject: Re: [RFC PATCH 04/34] ASoC: sun8i-codec: Remove unused dev from codec
 struct
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_234143_433731_21FEA85F 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
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
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 2:42 PM Samuel Holland <samuel@sholland.org> wrote:
>
> This field is not used anywhere in the driver, so remove it.
>
> Fixes: 36c684936fae ("ASoC: Add sun8i digital audio codec")
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
