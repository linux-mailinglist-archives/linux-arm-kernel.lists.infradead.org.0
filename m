Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41036E7DC9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 02:10:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K4nfdfWHxB+96PzIEb8gfXMbcD9ufldyajH5tZxx9bE=; b=AXGkjA2URMn3Ud
	cO04LsJU2AMrNIiHMBpEV+J1l4WcvZymRjiOPG51/XGSBj9kHlfNsGeQjjk4ZgsAERUMseUTVXKpP
	N4aOIvWDzPyvSW07ALac+9j69USCH0QHMW66uqEYSmFAC84iSR3DncmfsMi+e3SJF44A3zU6ozS/o
	3GctBG/l7wBrfForDl74D6c2lUQfvn/kH0A/mBimTUM8QWQMmzWbdWtE9qgyCSTuOaWbQGOrRbdro
	L2wrHrhdhvECK5qN098YTrFO/ppVHXdtHOGh+NSlSI9NHq5pi+FqVQmQym/2tCftzOjLKk2pE8uLp
	XEF5736InkQhqDN39thA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPG1U-0004je-E3; Tue, 29 Oct 2019 01:10:12 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPG1C-0004j3-4p
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 01:09:55 +0000
Received: by mail-ed1-f68.google.com with SMTP id b18so2903724edr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 18:09:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0lphBL/5v2KmmoeRZ37w1s/D6Nv6IFE2uro0ev3xsvE=;
 b=IVE4oWYRfVNIenLgbN9sNslERKa1qZQD2SWI+kkQWwNL47Vie35zNGoYQeTdLQC1a+
 PZY0ZsnGXLquadQ4sqXQbByEeLvqD2WCpDIHAMu9s4WOWAzaX1Quo8LJgsdilggymIlZ
 4KqDgOay4fwkQoms5RFx3S8H1Z9U4OwdyEAQwKFu6c0MyXJvT06jvxl5e49OTe/owQBT
 ttv1Fn7OuxbZaCkmV6PsiHxJL+8XyjcWUvjWmSJX2ji9FLrXivt4KJMN1ZzrORCcJDIX
 A+HmsZcID/yRNP4RMtCMCkmJp5BrSSzw8nwgFI6vlaZQ1Syzi5yguGUMyouuxTltTGUd
 g+Tg==
X-Gm-Message-State: APjAAAV7Z0rmBQjChDzIIroULgiMIa30o5W+GvryQVVu6+Pto0wAA6oV
 nPW8YZZPLq8JiWLa6z3Do2DhzbPYskg=
X-Google-Smtp-Source: APXvYqxfb61scUzPfIHAaFOcxnSAMDlZb8Y6pNch3qf65+heIrzv74AyLenCKqjQEyXX3M2XR1DB/A==
X-Received: by 2002:a17:907:1189:: with SMTP id
 uz9mr729805ejb.201.1572311390069; 
 Mon, 28 Oct 2019 18:09:50 -0700 (PDT)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com.
 [209.85.221.45])
 by smtp.gmail.com with ESMTPSA id n11sm636466eds.89.2019.10.28.18.09.49
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Oct 2019 18:09:49 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id s1so11831788wro.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 18:09:49 -0700 (PDT)
X-Received: by 2002:a05:6000:1252:: with SMTP id
 j18mr16938815wrx.23.1572311389338; 
 Mon, 28 Oct 2019 18:09:49 -0700 (PDT)
MIME-Version: 1.0
References: <20191028214914.3465156-1-megous@megous.com>
In-Reply-To: <20191028214914.3465156-1-megous@megous.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 29 Oct 2019 09:09:40 +0800
X-Gmail-Original-Message-ID: <CAGb2v67Vy=tD4dfSXD+=HS3B2tEE-bH2D++gx9Oa=P8n-012ew@mail.gmail.com>
Message-ID: <CAGb2v67Vy=tD4dfSXD+=HS3B2tEE-bH2D++gx9Oa=P8n-012ew@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH] ARM: sunxi: Fix CPU powerdown on A83T
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_180954_186086_D9EBFE30 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Russell King <linux@armlinux.org.uk>,
 linux-sunxi <linux-sunxi@googlegroups.com>, stable <stable@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 5:49 AM Ondrej Jirman <megous@megous.com> wrote:
>
> PRCM_PWROFF_GATING_REG has CPU0 at bit 4 on A83T. So without this
> patch, instead of gating the CPU0, the whole cluster was power gated,
> when shutting down first CPU in the cluster.
>
> Fixes: 6961275e72a8c1 ("ARM: sun8i: smp: Add support for A83T")
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> Cc: stable@vger.kernel.org

Acked-by: Chen-Yu Tsai <wens@csie.org>

Though I distinctly remember the BSP had some code dealing with chip
revisions in which the two bits were reversed. :(

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
