Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DBBAD868
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 14:01:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G36SZ1s4KRmHAhDcIhT/tLit3pzrLgWqYaqv7tbdWjc=; b=IWbIvvgv14vu02
	HcHddxzW3T1is6yyf3fSEajlPdOjzWsK2t/d9n27mSueW53NYwXyttKW4rAN72yJweiH4hb5ml/pb
	7qKm/6ttS4VAtPO11T6nCmAsymGAC6RZtzQuuUcwgIxEOJo8x6gYOBveMPU6A0rEzejjjzfARjrJ1
	A42d1sLkb5zxhRnkDd0DKQYKSrw10ALWiGnm5PT2IPbxoV7N8qD7Pl6xsE/vXPAnZC06RM5lHuddA
	sA/ma3Gz9iTwMAUP9Hc+R0GQCJwET4noXbwNtxAvvrFQ+l/rUsCVG8+O2ZRFHeTYwiP2OUkX/7SF/
	255STGSiK1zuWsKvJQUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7IMG-0001mn-0F; Mon, 09 Sep 2019 12:01:24 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7IM9-0001lT-0o
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 12:01:18 +0000
Received: by mail-io1-xd44.google.com with SMTP id k5so2659507iol.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 05:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gjzSJy3NDD7sYggLday3lhixH+9SUC/EVeZUWoe2eU4=;
 b=sBnSROaYcwf48BNTZC63gADs6dyXJsKsfnm5pvlYuv5jzlMTu/aPSFTGhshJ5Ll2Ik
 vp3iKTlPbMgxE6XkoPHIJ/qTcKQQEIG5TxF+1nU1OVHAw1XATgur1o4zXdsj6Tl06D07
 IVt098D2fTUdr0zDTvJJNG6PS5KsBOW0c2GESGvGta4qvr3/oOGCkc7ZXFfuiHRI2eP+
 jNx5OyS14T4hjexE+g4JM9Ovu0yh/3y36DnCXdIPNEMImJM4bhEXEWUpxJnIOw2j0N8p
 VKfPXMRpbA4pqQXRi8/WFkUfYT9a3yEaV7KGTZAW27gtUxRfz210Ov9jSc972wldEYOe
 B8BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gjzSJy3NDD7sYggLday3lhixH+9SUC/EVeZUWoe2eU4=;
 b=ky1XZ0il66Sm6FUDY2DxHjdW5Y5hr+lRKXSdVTB6Aal+l/Vyoo64gkBscOM3leXgAr
 +cD8EMCmTWFVyUpBZD0/9II6+VpsNELDbaArFuR25NKLhAdNckuAcpK1a/Xc3jIa3TAh
 3BrcJwlDKcb/oIfD1bLxoE3Wkcqh3NWEQGHGdhWd4Gz4qbZzzCqB7XEiu1MOVm1sxQCa
 Tg+L6mHGxDRYOGCxTF2W4p5I5akBpdK639uIopwkjxQSDTMmpj3GjFz3vHUOARjoTA2i
 9fEbPA7bAsAgdRvAEdejho7QOrJrP3V1G6Nbwv8Rv96LHrWhN66qJCCZbNHIlOXTdMQW
 u9bQ==
X-Gm-Message-State: APjAAAX+fWowjoOBtWoxpgOYLJcHlpLyRExVypodXGkNCySa1EplWdRW
 av6WeG6dPnsEGPoD/79v8fpNJVDbJrjykCiBU2M=
X-Google-Smtp-Source: APXvYqyKrMcPIeFry4pmSxcirJ0sZlzv9BWvR/f7rXRlNraERjFdqJdXoc1ys7lbOzrlKqXMAIHEzvwlSjm0lpNwlDo=
X-Received: by 2002:a6b:e514:: with SMTP id y20mr18930982ioc.197.1568030472875; 
 Mon, 09 Sep 2019 05:01:12 -0700 (PDT)
MIME-Version: 1.0
References: <1566936978-28519-1-git-send-email-peng.fan@nxp.com>
 <20190906172044.B99FB20838@mail.kernel.org>
In-Reply-To: <20190906172044.B99FB20838@mail.kernel.org>
From: Dong Aisheng <dongas86@gmail.com>
Date: Mon, 9 Sep 2019 19:51:12 +0800
Message-ID: <CAA+hA=To9B0H1z6Hh1eSZN9_rcextT_Oe-CTMmz9fC9CDNUBTQ@mail.gmail.com>
Subject: Re: [PATCH] clk: imx: lpcg: write twice when writing lpcg regs
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_050117_090380_F23BC292 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (dongas86[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dongas86[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 7, 2019 at 9:47 PM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Peng Fan (2019-08-27 01:17:50)
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > There is hardware issue that:
> > The output clock the LPCG cell will not turn back on as expected,
> > even though a read of the IPG registers in the LPCG indicates that
> > the clock should be enabled.
> >
> > The software workaround is to write twice to enable the LPCG clock
> > output.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
>
> Does this need a Fixes tag?

Not sure as it's not code logic issue but a hardware bug.
And 4.19 LTS still have not this driver support.

Regards
Aisheng

>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
