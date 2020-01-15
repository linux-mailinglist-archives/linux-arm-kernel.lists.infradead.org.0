Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7BB13C13F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 13:42:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ntiUlhN9Fk/81hCtksJfIqxvPsJ8Gt44DV74nGkVMc=; b=HY+birw/RvTptv
	JXEO1JCzOe+0a0fcEQXlMbMzjCaMmu4dANJOIQjnRUScNjTvr+wzmoz1HlJd6+9bJ96yMYsa2vTpX
	AirzCMI8GsA/g84zJSLoYjup+WT+sO0zrPh/+PGPi8TFVjra3y8LhXTmSkQbmC47cegQkOo1NsAHX
	pIPbEL5eAQjYopbNCLn1vm+vppIMqFfVstw7DU8UJJXvrkjY7tNUbe+VNQDDbFxpAzUhVmqEeGruz
	c5ACin+sGqbhnAATLwmVbE+hP6EOKPeOWffvzqD8TYEaWQsJP80DNMRdETa07eTzDDnR1bZuNL4ti
	YRVL4A5PJ6bmYbohmiog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irhzn-0008HG-I2; Wed, 15 Jan 2020 12:42:03 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irhzY-0008FS-H5; Wed, 15 Jan 2020 12:41:53 +0000
Received: by mail-ed1-x544.google.com with SMTP id cy15so15383149edb.4;
 Wed, 15 Jan 2020 04:41:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VYFrUZfFIn1ih4ZXmSMoxrgE6FJJjwb6w+otiOxvkzc=;
 b=pK2KQsH0vQ8EelC3J81rzuMSl1QXiwz/YzhdEBimsT1vaLFmTbd6rhrzyJF6w7Rwd8
 oj1fc0rcth0QnkpoHlcq73rgVLIAaDyC3llMqh2Iba24SuyhlVK6CIKdF43KCkZ5gm6i
 ic54s1NSI0kqk4Sq2kzGiL8DKzOAqgM0S5fbfcKIiHaERa7k1F+4D7xIZJ66YeQla6cB
 3eDcMrsp1GkUJrQ6yGragpalYQNLJRuU9Czt2a5sErK6XpACiS3LQCDcVyh1Lejk9u3F
 +TTJMyObPAMrx0OTtcZzySwYrJI7wEUxJ0vt5vUkBrsN/KxSnWArQ6ZFTFjLVqM4fZkx
 iplA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VYFrUZfFIn1ih4ZXmSMoxrgE6FJJjwb6w+otiOxvkzc=;
 b=RrEj+LwTrevECjDYGq6zw3JILqS03jsk+UyG2JWIaSv8bWLf77P6qBgoex7EuKE90t
 98+025QfLqAKV5VA9ZnljNfK6AvchlZDQnq4AyZU8j2owNBnUlY51qW8ieOj3DNecc9X
 vV+vrzSqlVex+/aTxT+UkAGeYxH1mj465Mm/qxo/4P0jeFDGs8HEgINus2xPX/ndQCj6
 FHA586xJsM3kLcIWQu9HI1hBN5T8ZrLEhDResydmilLsFDrGythX1c5h0MP/S1yYhYtG
 f+cU6Mvd6voRT9xcSwBz6P4jgmSEefeUK/Gg8S6tF7WraetlQW9ACrn5McwlQUAygBJF
 9Rag==
X-Gm-Message-State: APjAAAUuVpD5B9gb4hknBjiMxovHPzT1zQlWvWnZuJKfo6FrY4FK6DkL
 drhX8r4vjfo/eUFIhEoBXvICd+gdk5pmBO+n2ok=
X-Google-Smtp-Source: APXvYqzJn0AHc4rPAk1+z4TbdT44aLhxu4nuRPnA4DwJwNpOXOAUvpMX9n6siNHGAePH0mzJTVYZg+aJCTMA3i24XeI=
X-Received: by 2002:a50:875c:: with SMTP id 28mr10542048edv.271.1579092106272; 
 Wed, 15 Jan 2020 04:41:46 -0800 (PST)
MIME-Version: 1.0
References: <1578537045-23260-1-git-send-email-hanjie.lin@amlogic.com>
 <1578537045-23260-5-git-send-email-hanjie.lin@amlogic.com>
 <87pnfl6rdk.fsf@kernel.org>
In-Reply-To: <87pnfl6rdk.fsf@kernel.org>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 15 Jan 2020 13:41:35 +0100
Message-ID: <CAFBinCD0DJgYDhPRHqMQuouq+ZyF6Wg_LkuCMpHj2UG6vvvdbA@mail.gmail.com>
Subject: Re: [PATCH v4 4/6] usb: dwc3: Add Amlogic A1 DWC3 glue
To: Felipe Balbi <balbi@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_044148_569363_2540B603 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 devicetree@vger.kernel.org, Liang Yang <liang.yang@amlogic.com>,
 Jian Hu <jian.hu@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Carlo Caione <carlo@caione.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 9:43 AM Felipe Balbi <balbi@kernel.org> wrote:
[...]
> > -     priv->clk = devm_clk_get(dev, NULL);
> > -     if (IS_ERR(priv->clk))
> > -             return PTR_ERR(priv->clk);
> > +     priv->soc_id = (enum meson_soc_id)of_device_get_match_data(&pdev->dev);
> > +
> > +     if (priv->soc_id == MESON_SOC_G12A) {
>
> you can use of_device_is_compatible() and get rid of the enumeration you added.
Hanjie switched to a struct (instead of an enum) that is passed as
"match data" in v5 [0] of this series
personally I prefer what Hanjie has in v5 over
of_device_is_compatible() (because that match data pattern is what we
also use on other Amlogic drivers)


Martin


[0] https://patchwork.kernel.org/patch/11326669/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
