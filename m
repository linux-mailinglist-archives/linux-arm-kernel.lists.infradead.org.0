Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4163E1999F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:39:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jE7MFUU1Gq+1sGCCIRjeND3BmvmAmheuYAzPQB7+qBg=; b=eJPN+32CB1YQHf
	BzYszba98YBbPWUL93hhV1FQ4eYJI0bkxGJ+4a1WoKSsx8qmKpPaYt4gmzjZha5i3bfRAaqWpd57C
	vvJxNHVNN0NPQnOSi6sTi7BXdseaacumlqLJy/xok3YsTdj/8gsm8sLAh/GejfbA+/E+fjhPKw221
	tQ6xG+OcPgeLkFl6puqQdWQYGA9+ksu+m5KRdBsxbHhXC9+NWylkpQtLp06xyofCvPTb4QPPQXCOh
	OH/B8M/mJtm3H7ODxNqG8Z0j5uAwTlMTqdlOokfgUt2SkL78w9Fgj5ZldPqtxGsaTzQOachK0d8M/
	pkKW9oPLMU15os6QURsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJIyr-0004E7-CN; Tue, 31 Mar 2020 15:39:09 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJIyf-0004DQ-Oh
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 15:38:59 +0000
Received: by mail-pl1-x629.google.com with SMTP id g18so8273370plq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 08:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eh6HoD2WSOyoYld2ZBtCaKD/ZdY+NnuzhftXLHQtZcw=;
 b=Dgw72UMDYMek1J2mctOS59XCDcB+nQhKYfiTsgobYLQQ/vLuKHZCFx0RPHCeMNyGbS
 Fi9isGEufr3h4mqnpBvzdn85v8BiVplFmzR5ZZcaj/wCP7Mfz2rzyWM6EF8hRUAii4Up
 y10n0nsI2JxhTh1CHtzZJ1lSTO4m9dX4FmyMqRfcZhqEJ+g2D2ELqMcwuuM+TAkrHO3A
 rwTi8VI6ODuCooHh5/C/tD9lNjEhUi2CaJKckqPOHtppSHh5u0iBrJ95thbEnn752HvZ
 EMq/d95XbBuGOuvENOO8q/iGoAhUQrvVcJaFnWgMqAbJ0lHgjZyYhnMABjdbMhdd/bd6
 /pdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eh6HoD2WSOyoYld2ZBtCaKD/ZdY+NnuzhftXLHQtZcw=;
 b=bkDczCs++X8NXDIx4I+cA+f8A6MtUxfkW0hQmUx8PWDxrZvwznDV89TyPb4Q2r/tvM
 Mvh+/485ROSSteHKP2nTUSdbUHv4eHEirD6tZoxvKWgtAqDVvbcaQ581WjNBwjuDTrOi
 FbJQWp1hIhJgw4axO6TFEhjwYeyh7PsKPQTj0UaEmqVyvIJPjQFLBEhFZBF5X9Ypx3sq
 eZ5zuWeY92eA8nfQtReXpFOj4ecKihsq7J/zJcCyrVefCmQ72vX6hTTkOT8dr7BfEj5l
 hMjc3I1TlHH/IpJ3TNobPpcVCEip1ZG4jizDhdsw5AZDZFhOHaUayhJkH7tAi+jikPK6
 PUaw==
X-Gm-Message-State: ANhLgQ1Zrl60WybKs2cj++ci+Uo2ws8SJDGXz1zwnUBLCBJ7WZINbbGE
 9YaC84diduECarmLhYGeR3yxC7Yo/thIMi2O3jHmb+umpYA=
X-Google-Smtp-Source: APiQypLYRrzWxZrlbpaHLCWWd1ElKKp5WQ8rvraTOsv33YWtdO90qCriipsZO40uAtIGauLg9nTUCvQqCtacCa2Id2s=
X-Received: by 2002:a17:902:5acb:: with SMTP id
 g11mr4436095plm.18.1585662841043; 
 Tue, 31 Mar 2020 06:54:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200313110350.10864-1-robert.foss@linaro.org>
 <20200313110350.10864-3-robert.foss@linaro.org>
 <CAOMZO5D9bmXt9_qGTXw+qUG6JDHfuNtx++fJPJtn+mj1Dzsbag@mail.gmail.com>
 <CAG3jFystdBKnosNQ0LeWQfHEtMgU4iGSr_XuS2XU3-902c31nQ@mail.gmail.com>
 <CAOMZO5DHBCJbfS2Lt7R-3J_TUJi1is2Xn6n5iZkRwvmn5i6Dmg@mail.gmail.com>
In-Reply-To: <CAOMZO5DHBCJbfS2Lt7R-3J_TUJi1is2Xn6n5iZkRwvmn5i6Dmg@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 31 Mar 2020 16:53:53 +0300
Message-ID: <CAHp75VfGx0psWk-4Dc-E=HL9Gz_Cz3T46L_nsqrehVLQgkqViA@mail.gmail.com>
Subject: Re: [v2 2/3] media: ov8856: Add devicetree support
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_083857_802500_2C8F72BC 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:629 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Robert Foss <robert.foss@linaro.org>, Tomasz Figa <tfiga@chromium.org>,
 Sakari Ailus <sakari.ailus@iki.fi>, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 4:43 PM Fabio Estevam <festevam@gmail.com> wrote:
> On Tue, Mar 31, 2020 at 10:37 AM Robert Foss <robert.foss@linaro.org> wrote:
>
> > After testing this change, it breaks the driver during probing.
>
> Why exactly does it break probing? Maybe the GPIO polarity defined in
> the device tree is wrong?
>
> > I had a quick look into GPIOD_OUT_HIGH & LOW definitions, and they
> > seem to never be 0 or 1.
>
> If you do a grep in all gpiod_set_value_cansleep() usages in the
> kernel tree, there is not a single case where  GPIOD_OUT_HIGH or
> GPIOD_OUT_LOW is passed as argument of gpiod_set_value_cansleep().

+1. It simple reveals the problem that is somewhere else.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
