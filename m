Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B99FFFF41E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 Nov 2019 17:53:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F/YRgTS+JKUtZnayr4X0Cc/6sTrZJiG+sKO3XVGM5RM=; b=eSQcmly3vT17+G
	zvhewt51bC3xK3OVRupTEk3FzXE1KphnMxw/4GlEklGOX0DZutsmhr3MGfww0Sdls1w5SAXEd9qGL
	9UCi5oWsT277nkeHRM4l6ZErrwYhXqXZa3O9h7ew8y4focAmUz1F4NZW0ZIz91U85dMHImkFruB57
	BkcUObu8qrJhx451KU3HqAmkPK2d+o38ZdTqH5nFMy8c1GRvklxRjfslPDfemdX13ugGfkeLhkuUF
	Ldauiy0wCatlCLTRRNulReUHdzfw9mKCqHSwa71b3QCMU9i7o2U2Xk15n/5Q3S4QUEdXuexecxkOD
	/BqRMSCvcaxvrdw23s8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW1K6-0004V4-Nx; Sat, 16 Nov 2019 16:53:22 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW1Jv-0004UB-Lt; Sat, 16 Nov 2019 16:53:12 +0000
Received: by mail-ot1-x341.google.com with SMTP id f10so10790613oto.3;
 Sat, 16 Nov 2019 08:53:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dXtgv3ZMrjgjBz6CgZ0b7bfGQQBi49c5X2XfW8BjbXo=;
 b=GLn3GsW7yvmiMlfIvPSmzKDcm8Dak0w44KiKMBRGYSGWBtgg5dKTJymRmFkiX8frmA
 3bkBPEJh1gkg7bbnf14KpFLh0xrvmbpXSIo3s1/sEZcJC/N+CbPQQqjTc10PQrcqfDFP
 H+r8b1gOapO/TBc1PyTCCgeBvUqjpucbKhyDAEK6jQtSRu2bq8IagIljzdU9yEURzOsO
 fQJRJN7Hboj7dQlWSyzq7QuhQyfOq3cuYvLubz/npiq0PSMkv9dZWCADeSTZZluvDo1r
 L7I5/pQb1HuaiF0YVWms/u/mpupXtiXDuomxnAKqaQODAGv2q2Hu3w1X4dUJoYGug5eN
 ccgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dXtgv3ZMrjgjBz6CgZ0b7bfGQQBi49c5X2XfW8BjbXo=;
 b=uObW1huIojo/lvukjOECkkCIqsUlNnQJs1RkhFxcLr0tPF1PZnd7yhKfwuN4++sWZ8
 NkQxCHkRwePjwt75Dm/pcVLYd5Q8dSIf7MQ0Lf3VGLSQAwChrsn8aHfd57xdZCxguelG
 8NL8/mIOU8KejJsUCYEsH1EMEV9ICjljmp9oAkGwtcMo3MZNgItS/l6FIiNL7gJnztKo
 MLE1W4Jn8UIpDMkwOYVKgUQhdhOzn4FkdVz80DEGBP7oIdQozwZ5eMTlU+m+fe9K/QqW
 Vp8q8eyRzVWG9fnl4M2GOEl75Es6HTQkb6z2f7UxxJo/b7U56UFp+oBXV0FRNKoRFx9/
 7G+Q==
X-Gm-Message-State: APjAAAXbDxXEetTNrKnR8Swc9PACpt6DX0kkBLrnni0MDtyJgrgQ4KXI
 xwzleZzYr9vd/Z+q0lsfWKXgVxdxc6S8lQ1bXAhRc5lU
X-Google-Smtp-Source: APXvYqyR3PXcNr8vt06aopgYnCoIGBtZvup0dKIFbYvImWezEBBB/Ap2vPG0iVW+wEBCjmsSZPgydmiLNy0Tr2Xh38Y=
X-Received: by 2002:a9d:5e1a:: with SMTP id d26mr14584710oti.96.1573923190609; 
 Sat, 16 Nov 2019 08:53:10 -0800 (PST)
MIME-Version: 1.0
References: <20191027162328.1177402-1-martin.blumenstingl@googlemail.com>
 <20191027162328.1177402-3-martin.blumenstingl@googlemail.com>
 <20191108221652.32FA2206C3@mail.kernel.org>
 <1jd0dxf1uz.fsf@starbuckisacylon.baylibre.com>
 <CAFBinCBnUs0JdHT3TS+1++NMHtgbMvoT7RYRCnB0eNgs4L-2CA@mail.gmail.com>
In-Reply-To: <CAFBinCBnUs0JdHT3TS+1++NMHtgbMvoT7RYRCnB0eNgs4L-2CA@mail.gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 16 Nov 2019 17:52:59 +0100
Message-ID: <CAFBinCCQS_8w0x_dDqwjw2sUv1tHwQYjPBxTbH4f8mOetTCj+g@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] clk: meson: add a driver for the Meson8/8b/8m2 DDR
 clock controller
To: Jerome Brunet <jbrunet@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_085311_738337_6ED7D7B0 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 khilman@baylibre.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jerome,

On Tue, Nov 12, 2019 at 9:52 PM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> Hi Jerome,
>
> On Tue, Nov 12, 2019 at 6:20 PM Jerome Brunet <jbrunet@baylibre.com> wrote:
> >
> >
> > >> +static const struct of_device_id meson8_ddr_clkc_match_table[] = {
> > >> +       { .compatible = "amlogic,meson8-ddr-clkc" },
> > >> +       { .compatible = "amlogic,meson8b-ddr-clkc" },
> > >> +       { /* sentinel */ },
> > >
> > > Super nitpick, drop the comma above so that nothing can follow this.
> >
> > I don't think it is worth reposting the series Martin.
> > If it is ok with you, I'll just apply it with Stephen comments
> I am more than happy with this.
> just to confirm, you would address all three comments from Stephen:
> - including clk-provider.h
> - use devm_platform_ioremap_resource
> - trailing comma after the sentinel
I'll have to re-send this series anyway, so I'll fix these myself.
still thank you for the offer :)

I think it's better to move patch #3 from this series to the "XTAL
from OF" series, which means I have to re-send


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
