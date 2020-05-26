Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFAB1E1DFF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 11:09:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KBNRjuoR0xD1pOmr1wU5vVbpSoCbmr54BZE5N2kEZx8=; b=GU/igfk7Adki5Y
	pf67dM83DOOMBOzXcZG4SvRF2u/J5ABasH/W9aSfQ1V8C8WEFCQL/leMWUvT7r2gYxVRgdMvUEfEQ
	5FqBYJ2/BtqPPZqpMq190+bOA1LGMgU6HfMLpN+nqMUS6elfK1wk6tG6Yzexrk78ttGLj14nspPmO
	I2+yv32csd/USVr3SKiIu175+gJodsVaRjQV5k7+oJcQleqvNwLqBcxYWXH+mUFESh90ef68q7bpi
	Sp8sUj1sjt+9fli/A4BGBRSHihJKW5dqGs7yeLrLQmJHpVWzVs6F1PVnkboV0ashbXa2kSu1znYuR
	gWH3XKdTRvR28vg9wMyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdVae-0008WC-4q; Tue, 26 May 2020 09:09:40 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdVaU-0008Us-Po
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 09:09:32 +0000
Received: by mail-io1-xd42.google.com with SMTP id j8so21097513iog.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 02:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=65DH7Yx0+fRXnGfTN5n2O+g3E3WvwmCcWicmHyQ3lkw=;
 b=FCv7xAIGa3GDtpOxxLydbMoT+Iw41+0kjN35MW95QkVD8PAPGZ1TxmVabCgrmY78yz
 YECjqBhJyS3zolx/8xJBac4XU6h6cR1XZeg4CU6PHNTd2M9LqK+5kG/wEL7WsNC0nwh2
 gpV6e5BVy/uEF4hB82amE9VWBObm/w9rtxMNYLCy9RJ2jehRXjw+lDnYVC8orvZjHDMT
 rL1IDBgV7Kaq4tgq+ETv5CEvY8otenJzY1txlxblMAVo2Q6SsJnSDaWGL8pbVwNfm6XY
 8lo7KDJvjfz2uLhMVx5UTVNw3KpZA0aLli0XNP1vDH7YD/+aT6hJGg+YsCdtPHB995O1
 j2cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=65DH7Yx0+fRXnGfTN5n2O+g3E3WvwmCcWicmHyQ3lkw=;
 b=aAjqv1J/VfE6yQe8cfBkIopDKu2kf6+A2QszALnIDqVWEsvgQNv9dfw2cT9u9kKkK9
 NzpNjuGf2d/zk5rsbuHl3k4ShF/OGV9gztlZdk60704B8IigJKizHontU9rg8w2OlcOq
 fgyy0mvQaXA1G8PYl8GH8fn4+cqbW+DrzB0kQWYQh7WF88Uk4u8+P4FCXlM+UGrbpFsw
 BsX7MSc9p7dgtlHVQ+iavn+zKsZdeCODE17PgfGqxLxJKuHmgI1Gu0pjm+TZu3SpfED0
 g7s+0l+sSQk8J4FpnojKNhcF7/LLuVYJZN90WQHVuhrnRaAVsudkUt0DRcJSDkgOIYWs
 cGpQ==
X-Gm-Message-State: AOAM530p7Ge7LtKRBQbHPP5Nqa1LzlNMTeblNKEcie+wfvkcZsBmcvrS
 G+FOGZQ5KJY/t5qmPaIAp4lZXHzx2ZB5+99OmuE=
X-Google-Smtp-Source: ABdhPJx+ZPvWfEF3Pa4JXfWwedh02p2n1SzhlABrsxCC4DunBcpjHogzclvpkhogi3xaE3bp5rzPidO7NY54+A2lD6E=
X-Received: by 2002:a5e:a80e:: with SMTP id c14mr16354378ioa.3.1590484169175; 
 Tue, 26 May 2020 02:09:29 -0700 (PDT)
MIME-Version: 1.0
References: <1590378348-8115-1-git-send-email-dillon.minfei@gmail.com>
 <1590378348-8115-7-git-send-email-dillon.minfei@gmail.com>
 <CAHp75VebSZa6mwAETnM0t42RQCp4iM6_SNjmy3TB48ixsGKV8g@mail.gmail.com>
In-Reply-To: <CAHp75VebSZa6mwAETnM0t42RQCp4iM6_SNjmy3TB48ixsGKV8g@mail.gmail.com>
From: dillon min <dillon.minfei@gmail.com>
Date: Tue, 26 May 2020 17:08:53 +0800
Message-ID: <CAL9mu0+jmcivC6zAXxK0-oXy3n44pAU1QGD7BDq=CT2D7twROQ@mail.gmail.com>
Subject: Re: [PATCH v5 6/8] drm/panel: Add ilitek ili9341 panel driver
To: Andy Shevchenko <andy.shevchenko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_020930_838294_28E3FF24 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-spi <linux-spi@vger.kernel.org>,
 =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Mark Brown <broonie@kernel.org>, Sam Ravnborg <sam@ravnborg.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andy,

Thanks for input.

On Tue, May 26, 2020 at 3:46 PM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> On Mon, May 25, 2020 at 6:46 AM <dillon.minfei@gmail.com> wrote:
> >
> > From: dillon min <dillon.minfei@gmail.com>
> >
> >     This driver combine tiny/ili9341.c mipi_dbi_interface driver
> >     with mipi_dpi_interface driver, can support ili9341 with serial
> >     mode or parallel rgb interface mode by register configuration.
>
> Noralf told once that this driver should be unified with mi0283qt.c.
>
> So, what should we do here?
>
> --
> With Best Regards,
> Andy Shevchenko

from sam's suggestion, we can't setup two drivers to support one panel
in the tree. so, i copy the mipi dbi part from tiny/ili9341.c. to this driver
from register settings and dts binding is keep the same to tiny/ili9341.c.

so, in my opinion if tiny/ili9341.c is unified with mi0283qt.c, this
driver should be
too.

thanks.

best regards,

Dillon,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
