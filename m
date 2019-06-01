Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4CB32032
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 19:41:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mN1rTdBnIffVYcvqm9av0ZJtDbleB2btQx5j3ExR38g=; b=TDRA8TBJH1QvXO
	xNJzxfQHIUCf48B24ZUCUBDX/NKJ/owOPZFi3ix4TRDN3+/3ZE3J2tbZdtT7gUslCDxeAo6Yk7Ypw
	nafiSrV3ERR5BcRXMN5+hcmnIWI0UOjbxow2AhTU81QNLhQb4IcgbhITDHMXhsQqRUMk/L+1WjlZ6
	GGcPAh2vEDIu6nLG6Mb4QN0/CfIf7ZqWQak986bTEV9vGQfiGY48bBTeuGB75yTVAGjvrZz57vLi1
	/rWqJK4b6KP7NZh1c1641Hh5q38/mVTbrqCJ9UnrZkVTWQq2JaIPTimrTHimK/mM4g54cDuu04L6M
	pTnoCrL6KhMnH44pcOOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX80i-0005Cm-0C; Sat, 01 Jun 2019 17:41:40 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX80a-0005Ba-J8
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 17:41:33 +0000
Received: by mail-lj1-x244.google.com with SMTP id o13so12543810lji.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 01 Jun 2019 10:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rHjJzagrI2w6CxzEMyI3YS1Fy3fUOHjBVJQpvV06gF4=;
 b=kNKo1PJp5JY8FyKD7JkhadL2uuwGlRwXyBzur6y5fdsxiydbyEgL0yjSnj/Ex6vBKV
 m91afAFfI15VdDMK9Zfn7vRNKG2F0OlQhgZcdfwH1WdJS/+fB//hckYTGPJAbO1ERb4K
 HyAxPI2RKz2bVOmVcIHmnjJRBJ7zha/dHpZkNggiMM6m0cGW79yQVu5hgFKOmcog6a/X
 hQs3OUaUJOD+266aTLeyUt6aplfIXQOZtfyQz94Xlt0MZhseWtud2aHTOzF2cCpB5s4s
 80eAyy08uKq1gEL3GyhM5xQ4EG9xJyOOnryKvPiD/uGps9VmxiPapZa7RSqZOrdEj4sK
 Y6aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rHjJzagrI2w6CxzEMyI3YS1Fy3fUOHjBVJQpvV06gF4=;
 b=SYhThbqyMDZN7ZVYE/iJYJR+UwG9o4gzYJTtpuqe3X+AM9tWXoFteN7lOZHAQkQEbt
 oaqu675fevspB99egoexhoTZ+OL7kUnq+WmFbTBfppIYY2xTkEp5o9FdPQA0Li3fhjZr
 +HPiuyQ4QAJ7M+YDeOw/nzZfPmTL3m3a9zZUK3cXIvYnlJfCuahTHg2pxdepnlDL3dYW
 7sIbU8GUx0jNWAO1d+cKvoq7wBTbSCFcTnOp5vBWMvF3DuDRNJyIPDPW5zEZvtizmHCN
 XZNsLRqefyG7W7TC9s/aFh/7pL9//BRy6+xFByB9zAE1a8Ve9fP1Itr+xtjzwhCHdqNu
 +LXw==
X-Gm-Message-State: APjAAAXdbu17rG/B0SPwbMuHxr7s0+6SyKKEIAhDrTOKmGhNMV5+qu2Y
 wPvsslTh46bFWZPfsfcW5pvo5sY4Te15mXJC0lEDmA==
X-Google-Smtp-Source: APXvYqyMs3a2CNuuQZwXewGMpnWnrvA5Em5qjXrSELyADIL3SbiyiL6hwwGk0M0RbgN9+6Gp3Y2EroKx7Y7np874/U4=
X-Received: by 2002:a2e:9018:: with SMTP id h24mr2448110ljg.165.1559410889721; 
 Sat, 01 Jun 2019 10:41:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190508073331.27475-1-drinkcat@chromium.org>
In-Reply-To: <20190508073331.27475-1-drinkcat@chromium.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 1 Jun 2019 19:41:18 +0200
Message-ID: <CACRpkdb1cfQts-CshwgoSXDv5JM8=miy4=2FhKpOi-jZL6OTxw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] pinctrl: mediatek: mt8183: Add support for wake
 sources
To: Nicolas Boichat <drinkcat@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_104132_626387_C48B8715 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Chuanjia Liu <Chuanjia.Liu@mediatek.com>, Sean Wang <sean.wang@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Evan Green <evgreen@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 8, 2019 at 9:33 AM Nicolas Boichat <drinkcat@chromium.org> wrote:

> This adds support for wake sources in pinctrl-mtk-common-v2, and
> pinctrl-mt8183. Without this patch, all interrupts that are left
> enabled on suspend act as wake sources (and wake sources without
> interrupt enabled do not).
>
> Changes since v1:
>  - Move changes from mtk-common-v2 to mtk-pinctrl-paris, as
>    recommended by Sean, to keep better separation between eint
>    and pinctrl-common features.

Both patches applied with Sean's ACK!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
