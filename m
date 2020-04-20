Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE321B01A1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 08:37:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=osje/XpFIPx3fNb2soDk1tOj4P0HN5XEn1QwJTtg+Hk=; b=nWg2JDBWi6KkmT
	euSZtvZkwxskA/yEnfx2zRmyaHudLIPW17kVXmuAN0Z11nnbGZDba1RxnnecrbHJ+rm2/atQM7S4z
	DSH/w1gHKLsSrKymCafRaUKw4TVXNPDqUCiwQr8ZeEAx2/NlqK8CxW0/xO2O4fWdE4HNXinwLgEWR
	p2yHIaKCdnSJrvuXFcebZXYxSyiuF8+rJ/87+PSaLk6yR4UoyVTUGnStQtcMt3de3RlwhI2yGLLie
	VQ+IeHQexJ04xt7t+XTKvGhSLjMk4cvtTGYHpgzdRHlRHAf5tkzDRCYNKvpbOtcDu2xK26A0i7XH7
	5MtvmLp88SJus/Zh87pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQQ3H-0004RL-GK; Mon, 20 Apr 2020 06:37:07 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQQ39-0004Q1-O3
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 06:37:01 +0000
Received: by mail-lj1-x243.google.com with SMTP id u6so8634862ljl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 23:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wzzonVjiFqiRq0e4HZwoXw5dkwvtdDd69mGiOUp396o=;
 b=EK5Hw0hfRi7o3dbY+m85I9ucv5v66qj7OqXEX+bN5I9Ho7VT/zjTxzC2y5ndZgTLp4
 99OTCzzx86xo+9nnsmaeAPrYxiYN9gta1Bx8e4xL6A+TNCIk0Y1pOfMuVSP7+Ky9MxJk
 icD8NMJ2oyMpTn5IwdwkIHlirSgPG+o7M5F+xzma+LkxlV0FX8FM5Ph7L6kz31bjpW9e
 XS8DclfyqEzVx1oijfQjNr3mHsw12Z1jI94nHwFb3SIF/YqcMwdptQyO1Duhx3E8EA0y
 UiNNQzwCxyxQ6on2JJwBvZKFeFMuOWx+/42PfAS76D7/fUFHE3Kp3Pt464f+GOt6+t9R
 x41w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wzzonVjiFqiRq0e4HZwoXw5dkwvtdDd69mGiOUp396o=;
 b=Zkf6HtJj4R73/rMvSyt3PMZxukM8BCsIFt875KpOnA655jwFs6pHadsCksx4r4J+Ck
 snBciY+pvV6QGA/6StbEdUjsZME2McEqhmxlugJcRwhFzMUBih46hpY4OoTq+d6AGWB0
 9XVcgk3ZfdOd6cfeK954z8qpAwPw6XMcIzyZKo5O8S+N3b8TEh1vzx7n8GTS194JVdQX
 MTdNursDmUnHJkzlRI+qwDC0qsawixSnikUGdoFlUbfOa6jkkx9SZvUnwL3dF7BzpFDm
 sq/LxeuGCpvE4se3rckbkH0LtlyacEACnUMbFvrw+v1df8WZKOp5+WlG/g7SuK6KOemh
 ww6g==
X-Gm-Message-State: AGi0PubZ69o3M8rbiZmq/Qa9KOlYZCb1gDlA0XrNJ0TJz96SOXF1aPSn
 0ZCV2hi3ppAuaM5mgJCZM6oYHB7OtTbuzvjJmrZQaQ==
X-Google-Smtp-Source: APiQypKA679rD7AuS1a3F+mVgpCG1iaYgkNLaDrBfSG+xwFJq90YlS7Ir42YOcTAQVcDdf8Cg1XUizrVtpaTwD7CyVg=
X-Received: by 2002:a05:651c:23b:: with SMTP id
 z27mr8783634ljn.125.1587364618355; 
 Sun, 19 Apr 2020 23:36:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200418100933.8012-1-lukas.bulwahn@gmail.com>
In-Reply-To: <20200418100933.8012-1-lukas.bulwahn@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 20 Apr 2020 08:36:47 +0200
Message-ID: <CACRpkda7DBqJ_3N7eyqBREFk1jQpRQokgOqLq-sGs9UpaaSfXg@mail.gmail.com>
Subject: Re: [PATCH RESEND] MAINTAINERS: adjust to renaming
 physmap_of_versatile.c
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_233659_813901_DD8FC277 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Boris Brezillon <bbrezillon@kernel.org>, kernel-janitors@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Joe Perches <joe@perches.com>,
 Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>,
 Sebastian Duda <sebastian.duda@fau.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 18, 2020 at 12:10 PM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:

> Commit 6ca15cfa0788 ("mtd: maps: Rename physmap_of_{versatile, gemini}
> into physmap-{versatile, gemini}") renamed physmap_of_versatile.c to
> physmap-versatile.c, but did not adjust the MAINTAINERS entry.
>
> Since then, ./scripts/get_maintainer.pl --self-test complains:
>
>   warning: no file matches F: drivers/mtd/maps/physmap_of_versatile.c
>
> Rectify the ARM INTEGRATOR, VERSATILE AND REALVIEW SUPPORT entry and now
> also cover drivers/mtd/maps/physmap-versatile.h while at it.
>
> Co-developed-by: Sebastian Duda <sebastian.duda@fau.de>
> Signed-off-by: Sebastian Duda <sebastian.duda@fau.de>
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
> Boris, please pick or ack this patch.
> applies cleanly on current master and next-20200417

Patch applied to my Versatile tree.

Will send a pull request for this to ARM SoC soon.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
