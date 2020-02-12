Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 382A215A438
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 10:06:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xcV8KKdapz+KA4FwV3LejMjljWESe2gYRDsIYr+eiQ0=; b=MC5ePmsHulBekd
	MBnx3+2uCc18MPrgunvvNhbf6q8hK6q9TMwODZk3vnoYCpi8tkn4eCmiPlAQMBZ5jKGdIDOg2C3ht
	w4ikoapbGEQeO7xaFno2BiesezHry9WhYvDL3iKP//9u2LEYFXXr9+pDsu31NV/D0hQVM0lfkt1sg
	fLX7Rkx2PgzW5rNLVy8PkZoP2rKJcnrvUlZy1w/uGk/6iJCqqQp93+xFbGnQKDovmCzZoyQstMMdK
	da887YNmADryeawSnUjLXbSy8wgClPX7FvNTk/6KNRzjDdslqJ1T33iXFVSu6Nd3N64g+aXSNi1Nl
	Vds8nLwAPzDUoyQMzECw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1nyv-0000k1-3X; Wed, 12 Feb 2020 09:06:53 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1nyn-0000jE-GW; Wed, 12 Feb 2020 09:06:46 +0000
Received: by mail-oi1-x244.google.com with SMTP id c16so1352069oic.3;
 Wed, 12 Feb 2020 01:06:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KdiHyv1C8Z3O51Il2rRtKfTPYZzHq2aAiI21t6YVfMs=;
 b=cte8xNkI44GgsFD77ysg/J0+ROdUNaqr+8/qMeiMSvUTstItSyKa+1zbC936kxrWBR
 cv0glfQP1KHjjzFbxYSTJao3VNZztB19IYH2m+ItrGt5d0F6SOq5qdEuZx+drk27kCpQ
 pGKZokcJiORu3/nxErNnRCWc+jHy2i0FoqBD0TpcDWp5R1nSQkYEKW1obTRdpv3yIaqX
 g60WNW95r77sjFcgekae14GjYakaPLg0/z8gOgdEpXQvSsttsRAlnOLg3/ke3ZtUw0Bg
 VsFxYg0aJZifwjQBgCa0LFsXmndcr6s4ag/0rW6/l/G1dQ1/RmSEQj672xfEbY+TveLV
 SC2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KdiHyv1C8Z3O51Il2rRtKfTPYZzHq2aAiI21t6YVfMs=;
 b=mqbupdovui9UcbMx7Er2BSKjzmAmFqhuGdIsk14E2fXhdg64rpW2a7zf+XGhoVKBf9
 zCo2CSLFNLBGEOCQjmjs6xt4BHTBPF+fizHs6qzMm4hkHzC1WRiqo2hQ3eA8dfwRb+R9
 e8AYjdpqoeHss7MQPrG5UTC8RX5pMfiwbAMdxJPkHa8HqSZfa9n5HnGCJJW+SThFFXv0
 JWkcoA2v3hDwJ52ZjMqLCW0bVe0SJ2UqHgYRC2x+n/EmVob1vsh0cqYBz8PbSkh4BojY
 IvF0MqptrVjZdS8hIPG9HZNpOYBpP0087mJZlQRDxYmjQeUDebGnK6a7MMlbTsc5YExA
 33sg==
X-Gm-Message-State: APjAAAVPBkVmtDy5uesSkQ1qF7AINGu/HMM9j88oDxaSf70mHeMrewL0
 FejvN60F2vjjIbZ3xj34GhHf0yO4vqHT1Ayhb9I=
X-Google-Smtp-Source: APXvYqz8LnWunxxKZNW1cjt4ireZgvOfph0KWPT5e7ByuK9ekEqH5ZKVzzbSPgDtk7Xf0cv7GXM0tk/J2jgQ4cISQQk=
X-Received: by 2002:aca:3114:: with SMTP id x20mr5662123oix.121.1581498402770; 
 Wed, 12 Feb 2020 01:06:42 -0800 (PST)
MIME-Version: 1.0
References: <20200207052627.130118-1-drinkcat@chromium.org>
 <20200207052627.130118-8-drinkcat@chromium.org>
 <CANMq1KBL-S2DVKbCB2h_XNpfUro+pZ96-C5ft0p-8GX_tbXELQ@mail.gmail.com>
In-Reply-To: <CANMq1KBL-S2DVKbCB2h_XNpfUro+pZ96-C5ft0p-8GX_tbXELQ@mail.gmail.com>
From: Viresh Kumar <viresh.kumar@linaro.org>
Date: Wed, 12 Feb 2020 14:36:31 +0530
Message-ID: <CAOh2x=kS_X-zmwWKfm2CAHAjuLqEcOZ61gkCLKKi8webmpLTOw@mail.gmail.com>
Subject: Re: [PATCH v4 7/7] RFC: drm/panfrost: devfreq: Add support for 2
 regulators
To: Nicolas Boichat <drinkcat@chromium.org>, sboyd@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_010645_584559_B06A5D38 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [viresh.linux[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Devicetree List <devicetree@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 vireshk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 2:19 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> +Viresh Kumar +Stephen Boyd for clock advice.

You missed adding us in the cc list of the email, fixed that now :)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
