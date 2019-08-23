Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FACC9A9E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 10:14:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qiENzFhUgaHvIM9gI8AsN+xekPw8lJxR+FwRGQPpG0Y=; b=hBw4gMjEiJk77N
	UAL7ziDxDbUgu2bytGYL/zfWjP67UIIQj1qWQzGv6UTMpB+oJZt3OZ9wos8Q7McJven47PnOTdNEi
	iNuiixWbbl2mdCOuaWtwxtzd0FaQlBEAr7GBz8Z/Cvb1/4hmBVKGrVhQZ0FsqU8wHwSPxl0tm0ium
	UDWvg7ic6bxe1oKIpncbeKuw4owSo9X+D1xKtnQS5F05Aqvkmf9kPfiWnRbdvpJL5F6SYE4YkBFWh
	+pIGD9VI5LjE5TiaFjcwewB01p4H3zhXv0FE0jp68uBPt4eSK4ME557cteTwj4IEoLE9iGI2fh/E6
	nwdYCJOYSHmTjf6wlebg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14i5-00088j-8T; Fri, 23 Aug 2019 08:14:13 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14hs-00087W-6W
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 08:14:01 +0000
Received: by mail-qt1-x843.google.com with SMTP id k13so10379430qtm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 01:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+iEZzmAuZ9VlWo1rY1HoUVRqOc3pQbx/jL7+3U6XUrE=;
 b=KQoYmM1kiPcUeWePSRh/MATRSKtGHbDYwmscEnDEJex+ScfK8GC0Pn565Cm8BTQ7fS
 TN0P76B44uAatP3B3BZ61Hp3/1ZaAhV2sP1r/Qzr+VQI42UarAvsX6fIFMwnvDohlRBM
 i/SnM/kjB9KyiVRKnmaBnb4WhhIpto3GuckqI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+iEZzmAuZ9VlWo1rY1HoUVRqOc3pQbx/jL7+3U6XUrE=;
 b=trzj63jORbA3gG+Sk2LNN/uHKpCDhCfs3GPfS/BYYB2/QUyV1Kqsl2px+spHjeQGOm
 dcLIsvBmq5ObYasoPY8M1MxkC7HQq9TUai8e0NR1Kufs9jkj8bveDikU/IxF5KHR6Dgy
 CuUK8AKLwEEeeh84iOE+rifEq0CXtHeoswFItgWtd8WLPTCelhYC1vI031pW8OdBkBxK
 DmGV04FyAxvaX/uzTSQvKc1e0u5ZqsyTH6BK4k3QzYXt8p7WVuyGkOe8URy5k+tqplo2
 12UPqOKtJqCeNtDG5wBd7znL88HfCroZmFKHqB2rP+PBXaWIFfmUfqsVo+4f+CLvoHlf
 mAzA==
X-Gm-Message-State: APjAAAXwVZ3a9Y1jBnkw9ug/JDtjAQhky30ux/0lphD/9LnHJrg46gb+
 ako6CveG0yWMQc0se+DiaJSX469NhwA7exefnWyffQ==
X-Google-Smtp-Source: APXvYqxNnLStOk4ZXp11RN7jSj7XJVMznct6ojLcGz5Yls6xfN9NE4mhgE85LSRowXYs50aMoWOgyWYV7b4IKr4cJAE=
X-Received: by 2002:ac8:1e1c:: with SMTP id n28mr3591243qtl.78.1566548035657; 
 Fri, 23 Aug 2019 01:13:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190822094516.55130-1-hsinyi@chromium.org>
 <1566547772.19935.2.camel@mhfsdcap03>
In-Reply-To: <1566547772.19935.2.camel@mhfsdcap03>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Fri, 23 Aug 2019 16:13:29 +0800
Message-ID: <CAJMQK-gb+A9dwyMqMcA5yaaXak9no8_=urwK0XbLnNAEGyZ_hg@mail.gmail.com>
Subject: Re: [PATCH v2] i2c: mediatek: disable zero-length transfers for mt8183
To: Qii Wang <qii.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_011400_268526_CA04E0C1 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Alexandru M Stan <amstan@chromium.org>, Wolfram Sang <wsa@the-dreams.de>,
 Jun Gao <jun.gao@mediatek.com>, lkml <linux-kernel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, linux-i2c@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>, Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 4:09 PM Qii Wang <qii.wang@mediatek.com> wrote:

> >
> >  static u32 mtk_i2c_functionality(struct i2c_adapter *adap)
> >  {
> > -     return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL;
> > +     if (adap->quirks->flags & I2C_AQ_NO_ZERO_LEN)
> > +             return I2C_FUNC_I2C |
> > +                     (I2C_FUNC_SMBUS_EMUL & ~I2C_FUNC_SMBUS_QUICK);
> > +     else
> > +             return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL;
>
> It can be removed?
See previous discussion: https://patchwork.kernel.org/patch/10814391/#22484435
but not all SoC's quirks has I2C_AQ_NO_ZERO_LEN.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
