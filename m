Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE136B821E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 22:04:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=69Yxku+4JjUr3IJxKd/bEXgHogWd1+ArvCLm+mr1a4g=; b=bv2FKqoZE0cbPw
	h0ISPxjtqu4ospwfcFf68fyzrz6oCIb9Z1ENGUDHVRk8QNw5xT1bYGb8DskAqaai39cR4XXmalMHz
	Fgy5ayexRh4NWmk3y3zgCf5SMB39DbQ2J6gXAAtVNU5Oevr+MmpXeGdQNrVfzQiyUeCRFXMFgcnvj
	vBz6lzJ+/dgBTzKUrnZsA0xbQieXe+sIi8g5wawfOSFFqcucNgXWx9KksfK+w3y5KOakNwlXNwHmb
	HwfINBsLbLbuaPM2OVo7lHDIXN1MSFHnZx/a869u3I5/eFIiVLDzc/hNT3r558L+D4ezfoohcFApZ
	fxWHb+o9xdUNo52TRKNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2et-00071Y-69; Thu, 19 Sep 2019 20:04:07 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2ed-0006zv-AC; Thu, 19 Sep 2019 20:03:52 +0000
Received: by mail-ot1-x342.google.com with SMTP id g25so4254571otl.0;
 Thu, 19 Sep 2019 13:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6fHpBKw6eUOwimptL+ITvgs75Vin3Zdq3uabBD6+JFk=;
 b=u6+ZcWhSl1aG3A35Qb0Fd19psh9JCrKFkP3pP+Kb5YWJrplnAx6n1LDAaQqhi5ZqeG
 jyg37wc0W5HHbAEgGWnj+/U231oZzC19ON9Rfo91cqTK1YiBcxFzRvsCGEFZVajL39BU
 IxICNwcDbn7lpr+dCbIjgaoc2l/rrdjuqH/1PUK9/IOAvehhnEUgJr2gT7AKWGJy3dA5
 reAGIbafrW81R9KGq+LLSQSM1d1f/MB5gldml/A6+cQDuet+ACqBeBdW1Y/SvRHoYzjg
 597/gCDnetAWPqfKHAI31kFYvBIe7V6Ypq6IqICtfmdAhkPA70pyiiGAGdCgFb7F4kwQ
 29kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6fHpBKw6eUOwimptL+ITvgs75Vin3Zdq3uabBD6+JFk=;
 b=OBkoBayqSknMD47BO3NakaCSfROc8RAsE59Ci4YVqWAU8cF7Zg3eMaGUo0r8ICYfj0
 mWPG/ghyHM0/wzjT6HHrTD2ZTBSu1uS8d8rU378WlKRknCfboQxqI3MvIRIg832z3DM3
 dCyi4240Wbqh5zflpx0S8WdV+3cTLT2ndNJLspJ4yp1rBLz2nrdhrjibRslEhEun3mBw
 N/paqUIZ8Cqf0bgcPj+G/T+FP5QPmmpmNmZDd5RrXs7Uz+37X/6aKtE6oL9RomRNANxA
 fJSxegKM6LjI5z0WyoGNHmb3r9G4QyocCy5RTggKBEmhegMicS/gz2+aoY4ESsFsJrPv
 lXnA==
X-Gm-Message-State: APjAAAUhPUAxFySVc3avMHcGp1Cahvc+ubeMQ07OH7V9N0KvLhZrmebz
 5b6iYZXT71O9AuUcTOSLcANByMYrZdWfOFx1z74=
X-Google-Smtp-Source: APXvYqzbB6OA805TN6az8052Brpw/uRvuz3y/MdV7wEM646Gr4PT2OrZKwoWHj/BiQcf4dPqGRq77DOrFesFh5Oj13c=
X-Received: by 2002:a9d:6084:: with SMTP id m4mr7893739otj.6.1568923429439;
 Thu, 19 Sep 2019 13:03:49 -0700 (PDT)
MIME-Version: 1.0
References: <1568895064-4116-1-git-send-email-jianxin.pan@amlogic.com>
 <1568895064-4116-3-git-send-email-jianxin.pan@amlogic.com>
In-Reply-To: <1568895064-4116-3-git-send-email-jianxin.pan@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 19 Sep 2019 22:03:38 +0200
Message-ID: <CAFBinCDv2m_0tP+rdT1tgXhMs-hPE_cJ9TmO8h9ftDvJXvby+g@mail.gmail.com>
Subject: Re: [PATCH 2/3] soc: amlogic: Add support for Secure power domains
 controller
To: Jianxin Pan <jianxin.pan@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_130351_380576_CE2E85E2 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Zhiqiang Liang <zhiqiang.liang@amlogic.com>,
 Rob Herring <robh+dt@kernel.org>, Jian Hu <jian.hu@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jianxin,

I added three comments below from a quick glance at this driver (I
didn't have time for a complete review)

On Thu, Sep 19, 2019 at 2:11 PM Jianxin Pan <jianxin.pan@amlogic.com> wrote:
[...]
> +               pm_genpd_init(&dom->base, NULL,
> +                             (match->domains[i].get_power ?
> +                             match->domains[i].get_power(dom) : true));
.get_power is never NULL in this driver so the ": true" part is
effectively a no-op

[...]
> +static const struct of_device_id meson_secure_pwrc_match_table[] = {
> +       {
> +               .compatible = "amlogic,meson-a1-pwrc",
> +               .data = &meson_secure_a1_pwrc_data,
> +       },
> +       { }
many drivers use a /* sentinel */ comment inside { }

[...]
> +arch_initcall_sync(meson_secure_pwrc_init);
why arch_initcall_sync instead of builtin_platform_driver?
$ grep -R arch_initcall_sync drivers/soc/
$


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
