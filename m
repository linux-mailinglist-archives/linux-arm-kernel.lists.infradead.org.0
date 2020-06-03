Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0271ECFD6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 14:33:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rsz6S64wJkYsFOFZ7VTnGUehadbZknZEhHTDvz4tgGE=; b=M54vEezOa1mOI2
	xYwfyx9yV6myx7lQWcYqdShQ+qiwRELCsqTzda0PAs27KwlGmOxDJKwUKQwZrL7yU04iqZfA3MmwN
	CJWr9JD74BUsej9ZECLHeb92prli52eUea2exshb4QuIdDmgNkmKXVcruROcw/GLLEJT+Lh21465o
	13z0V4uZNXtsA6EEgWLDIrxFW/hzSJA/DQeJiI2iF23uowE91kLp5adlKb/69jim8G5bnQ6pYKmzw
	Vh0X4aTeRKagPEEMSqroqqhWYy8IbfVJW5DqOrS70z2wvyRZQCcVAKAeZdaq2oMXXSpN+1pMgVHYd
	QQSLWRcGJygIOG/gsLIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgSa0-0005zV-7m; Wed, 03 Jun 2020 12:33:12 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgSZu-0005z3-4x
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 12:33:07 +0000
Received: by mail-lj1-x244.google.com with SMTP id n24so2452490lji.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 05:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ABlOAalG07S3zJOvUC745+rY/SSKj3sE9WPw30YFDjU=;
 b=j5pGS0saNqzjuUTDnzk4gxvht5sf4S+tv6vSaLTyjDBARzg9FteZcdfRr8S1n9Haet
 qlFQ2ouaCalHfwiwuUpttmmqx1lTJngtw0F9PY46fo4d1TWbBYkBBagsnh9h6EQ9MVOc
 6JyNNo3yHbaM81jiBNY2+r2j80yqy65HFeq5pkgjQzdX7SsIMAiAirPsJcSXZwWxfEm0
 YPDGQJivsMU5zvIDpGScT/yfJu4/a6opRYcIDW6d0yGPuub/53PJ75c1pXgwScnhgJ4c
 5XrQls/Q8rpqTV/GfeOdwaeFV1TiWN0KM+DqF6XIcKXI0szKCRijrky9/bgKeGp4OX8E
 Aqfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ABlOAalG07S3zJOvUC745+rY/SSKj3sE9WPw30YFDjU=;
 b=gdgal4y7wcDo5aJE9W4AbuRrTe9eS19lVvjEK+sEXHrMi3/KQNAs1HPozd1X+BmD7p
 rLshLir1NNPCzQ3I2z6N8btAi74mBqGgdBt4eKMdVr2OQM+oqgwSKAB0ER5U+FoKRpDB
 R/TM7QWP0no63pBOyq74RE7a/840/Jzxd1wdLuxaeppkeY2SdAO1dKAhZbXHszBGrA5p
 PSsHyGtlc2JwUzFYonQc3oODIncwDPxYb2rK1tKloAOHBFlUMWuNhQhU5ePiXpPLnXTL
 GbuNm1L/4U5iGp8/onR8d10xocqw8qRMSz0IhAxDqKV7xysMHA6j8lKRzU5Rwi7ZsJoH
 jSUA==
X-Gm-Message-State: AOAM530AtRYycgfgPsWPsmdJBja1VdL1pix885VABBXBCZulyujsrd/k
 KN4aBpgDRNbxf6g2Altnd8hPGL1zK2gYNIpGHRbVuA==
X-Google-Smtp-Source: ABdhPJzG/VMlm4Q8bDM7mFUXZQxGPr6AbvJ8r2atD4zrWYykPr7kfUi4nWG5C+/LBdHXHq5+wgxQQwSQFcYGnOURAd4=
X-Received: by 2002:a2e:350a:: with SMTP id z10mr1923491ljz.104.1591187584647; 
 Wed, 03 Jun 2020 05:33:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200603013532.755220-1-yukuai3@huawei.com>
In-Reply-To: <20200603013532.755220-1-yukuai3@huawei.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 3 Jun 2020 14:32:53 +0200
Message-ID: <CACRpkdYgUCek0WGzqKqH7XzvDaKGK2po7cJse5LG9ahfBQCYZQ@mail.gmail.com>
Subject: Re: [PATCH V2] pinctrl: sirf: add missing put_device() call in
 sirfsoc_gpio_probe()
To: yu kuai <yukuai3@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_053306_199213_F69AB7C8 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Barry Song <baohua@kernel.org>, yi.zhang@huawei.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Yuping Luo <yuping.luo@csr.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Markus Elfring <Markus.Elfring@web.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 3, 2020 at 3:36 AM yu kuai <yukuai3@huawei.com> wrote:

> A coccicheck run provided information like the following:
>
> drivers/pinctrl/sirf/pinctrl-sirf.c:798:2-8: ERROR: missing put_device;
> call of_find_device_by_node on line 792, but without a corresponding
> object release within this function.
>
> Generated by: scripts/coccinelle/free/put_device.cocci
>
> Thus add a jump target to fix the exception handling for this
> function implementation.
>
> Fixes: 5130216265f6 ("PINCTRL: SiRF: add GPIO and GPIO irq support in CSR SiRFprimaII")
> Signed-off-by: yu kuai <yukuai3@huawei.com>

Patch applied, thanks!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
