Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F83FF966
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 13:25:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2cF3OCBiJoJyFb/s2WHQl8qoo69pXe311RZKpvRR4e0=; b=jMdJj8dH7OoA6H
	ZKkNjaWZtLGEV8f5nJ/vUiN6eiogmXLIzgcQceMWHfGdddQ6N3Ngm2K4tsSg6zRN7Ape1EMl0aaSM
	KJqucbysBdDlSQFKp9H2DEDVWjJRGsWhrcZegfliO29HHH1kbYxFL+qYBr/5H3CvALWfo+BaSZzBa
	AiCKgQr8lofW1CYAU+HBesGgGYURCWV9l0iLev/Q8hxNd0SNLpUbUSP6GRSqUrb8tsRDB4/UgtRTX
	lmWtMZ1pDrClRVntb847XolahrCEp7AO/V3m2AxFZ52HLvVI+KM8Y3smHZV47M4kxznMfR1k0qDEB
	mjrre6joO5TU7QRk25Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWJca-0006od-Rk; Sun, 17 Nov 2019 12:25:40 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWJcS-0006o8-5m
 for linux-arm-kernel@lists.infradead.org; Sun, 17 Nov 2019 12:25:33 +0000
Received: by mail-il1-x144.google.com with SMTP id m5so13434994ilq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 17 Nov 2019 04:25:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=otVcrBVD6kjervULINmD8GBHaxPZhxqsRUnWTrQKkSY=;
 b=pTPNBukBWYo4Q2L4Zp7zlZrqL66vQNhxLavP6cZ5mBxYiJffto17JjlItsSKXd5XeM
 4wyzThgCgdvUCLHxVluqUOM0fWUkjY4BrrpG1xcPo9xJ54KCwZP4PnYHJgjOwgzMSBZc
 BuzUyXtzCfmWvHGFt8tbMxqGs+QSiWgwnPNhy1VO3dWMMYtboz3Uw5x8FTBFhUJnqsKd
 lYND8CXWbooXe48diEjmnStgwvlBN2crwtlc+kJEmzAF4LlLNhG+d+prtRwl4TKmG/sc
 IqucQnG0btgeNo8jePb+/SxGrp1wJL70zfDAyTU2cTLgjSYTTELGeCMPY9n2dRicvCnp
 IcuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=otVcrBVD6kjervULINmD8GBHaxPZhxqsRUnWTrQKkSY=;
 b=cQ9aSVPHYfBDbvM2Ss0hZQX8zLt/2CgE0Mvkr1Flfkk4ZSDc/Cyld/BxgCZ5QoOFxG
 CHX6UeFeNhPyUB87k/YtM0RmlaRqBgkJDtCvrK80Y2ycOYlbhv1NHGY//vwqJ1RBXrjZ
 4rFTlCf4IIKGCtfZJZoWWxvFz9U15Yvq/1aV8JAtEhEliiNAWsPKVRUMCatN2YyX9Y6e
 /QKRxnmDF1IQlSLJR8/EGcIKrMeRJ2gfhd2SGji/1Q+bYU7HT5WDDiOdHJgcKOsBhDzD
 3mpmMSVkre/aqbfnuF34bDhxCJ8RVBF4M7a6ovNEewiuKosSD+X+3Vfh9sFKxXOxn+xF
 ukUQ==
X-Gm-Message-State: APjAAAXu+c3eaqT5EgulocucowtTZUAOvlLZUPKwVFMjvMbIOCv445Fv
 BEkDbQP3Qp8MQkq1p/sSYt2focMeJpyd8q1R5S6CKA==
X-Google-Smtp-Source: APXvYqyM8OwMh+6orHmLf30C/l96ukGK50y0qYYCtd/JnP/de2oemLWGF5bzXkzsmOxp/jVwbDgy0xDzUGeSY3twpkk=
X-Received: by 2002:a92:35dd:: with SMTP id c90mr9988284ilf.191.1573993529990; 
 Sun, 17 Nov 2019 04:25:29 -0800 (PST)
MIME-Version: 1.0
References: <1568081408-26800-1-git-send-email-aisheng.dong@nxp.com>
 <20191114122228.GI4147@optiplex>
In-Reply-To: <20191114122228.GI4147@optiplex>
From: Dong Aisheng <dongas86@gmail.com>
Date: Sun, 17 Nov 2019 20:14:29 +0800
Message-ID: <CAA+hA=R3yhO+oupTfc=cy3oNTcv28VhzTs7fg9kGYuE0j4s1vQ@mail.gmail.com>
Subject: Re: [PATCH V5 00/11] clk: imx8: add new clock binding for better pm
 support
To: Oliver Graute <oliver.graute@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_042532_240827_3DDE053E 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (dongas86[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dongas86[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 8:22 PM Oliver Graute <oliver.graute@gmail.com> wrote:
>
> On 09/09/19, Dong Aisheng wrote:
> > This is a follow up of this patch series.
> > https://patchwork.kernel.org/cover/10924029/
> > [V2,0/2] clk: imx: scu: add parsing clocks from device tree support
> Hello Aisheng,
>
> will there be an updated version of this two patch series for recent
> linux-next? Then I can test it on my two imx8qm boards.
>

Yes, i prepared them already.
Will send you in private email cause i don't have a public git.

Regards
Aisheng

> Best regards,
>
> Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
