Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 792A31976A5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 10:39:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HWULsiRLgtNQMA7XOHrX/2S3OtGiaobPVJo4uT2YMHU=; b=p0ZS4qmSxu605q
	E/OUNnyHu2zbccksGAEkfMRggrFiL1IBtvcsOWfFkTGN3mGU9xkCH00RLarH6ZNfBVBe4ZDwtLrQ+
	TmU1/wDHtiKyzeFD6pmNkKt41CB3OfFJltGFWxP7pXA749hOdDmCa+XASoAFm1kDkWQ23fin5168x
	qc/cZHhUgYwzh6Hwtbl1ayAuTgM6ZUqs5xwOesWhZ6dQNd8qCi4ZISg24pkrWc8EKdUoo+sjVzLoY
	GcJQiH34voslZMzeb0KKYZAICztW7c10N2SEriFOaFuqt0gY6ulE+BNPXosP84kk3mB3QwMSvs8JC
	Oao3GEXOPKmDLhhjQ5xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIpwb-0003s4-9V; Mon, 30 Mar 2020 08:38:53 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIpwB-0003i3-7p
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 08:38:28 +0000
Received: by mail-wm1-x341.google.com with SMTP id z18so19025245wmk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 01:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d7dT77Mj8SFfgoSadzsoTpTpaeQ7c6h2QTZMTMg5w18=;
 b=QwBMkhl+nqKTSY1XSOzTHAjPupV6mq5wO4yaX4cblyxkTiak2UrTY+Z7Su93Z7aQf0
 x3Vs6FIhR4Y2a6mR0PQUel5wUIrNAGOGHMPBVvpIft7fn61c+cGNrebVDjZdsHrc1wgx
 GDZ3lbzKaGaLqxwbdefO2ZN3TxgY8ZGDyDJn5sC+XWMBiHTIKlHN8SBdK9m23wo8v3rQ
 CiN81B4HqXHILMC0uUOw1z53jHcIiiB8FvxTpkrgl+yBBBcQk7FB2WIhGLZxfpZfHi2q
 qgYgAuRENu31KypW6q27ab/jZzv/JCNRnvHX6jfi4kYHHI4cRQC86qI/jifE3Ia2YEl0
 c7Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d7dT77Mj8SFfgoSadzsoTpTpaeQ7c6h2QTZMTMg5w18=;
 b=Gg60g15xHC0Eym8RWsPHlmJBOs5cpaBrRXEzM5LSnuZCPvwSUNQvzaabEyms6I9o0t
 ORC1Uejc6x57eYkinhd19xoYMwgtbdR6FPBS2mMTevCExmy6omKXazjnpSPHc2Vxqoh+
 +tew8SIEj+YVKFrh5sMJUuSPG1qwS5ht7pgnnUWBboaMtgThdJ0JMsbrK4EoASB745jg
 khndg6sNYBkU7yDYt36hVH3YwkZ35VA179bq3UHH1pMqAxmwcbfXogdSd+33crrKdas6
 qmgzWlHAybfofcg/Ru54CTu36zd3zfE19AR6RdYjkLnS0RxjdDpGbJ3cBY7VrgG6TB8/
 CMZQ==
X-Gm-Message-State: ANhLgQ0ObQ4J7g1XCzhZ4py3aoID4VqT2V2EQOzu5y/oujzF6wH41Gdb
 aDY9tGqzZsaE/vSoqhTH/zM6wc2pGIZZkERBwqQ=
X-Google-Smtp-Source: ADFU+vuF1lMbuqMXNh6El+A/BD+TdA9UFO6/f3q1PrZ1gEs2kWmu/sTZ17ZP9QJo3REUe7XlcvpwTMeY7D1ca8YEN7A=
X-Received: by 2002:a1c:c3c3:: with SMTP id
 t186mr12576715wmf.118.1585557505217; 
 Mon, 30 Mar 2020 01:38:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200304121943.28989-1-daniel.baluta@oss.nxp.com>
In-Reply-To: <20200304121943.28989-1-daniel.baluta@oss.nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 30 Mar 2020 11:38:13 +0300
Message-ID: <CAEnQRZDsfSohbkbLd73AjN=2C3C6MTBdKqt84DHXkscjpq9rKQ@mail.gmail.com>
Subject: Re: [RFC PATCH v2 0/2] Introduce multi PM domains helpers
To: Daniel Baluta <daniel.baluta@oss.nxp.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, 
 Ulf Hansson <ulf.hansson@linaro.org>, rafael.j.wysocki@intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_013827_322909_2C08C932 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [daniel.baluta[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>, "Brown, Len" <len.brown@intel.com>,
 Linux-ALSA <alsa-devel@alsa-project.org>, linux-pm@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, khilman@kernel.org, rjw@rjwysocki.net,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Olaru <paul.olaru@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rafael / Ulf / Aisheng,

Any comments?

On Wed, Mar 4, 2020 at 2:20 PM Daniel Baluta <daniel.baluta@oss.nxp.com> wrote:
>
> From: Daniel Baluta <daniel.baluta@nxp.com>
>
> i.MX8QXP/i.MX8QM has IPs that need multiple power domains to be up
> in order to work. In order to help drivers, we introduce multi PM
> domains helpers that are able to activate/deactivate multi PM domains.
>
> First patch introduces the helpers and second patch demonstrates how
> a driver can use them instead of hardcoding the PM domains handling.
>
> Changes since v1: (addressed Ranjani's comments)
>         - enhanced description for dev_multi_pm_attach return value
>         - renamed exit_unroll_pm label to exit_detach_pm
>
> Daniel Baluta (2):
>   PM / domains: Introduce multi PM domains helpers
>   ASoC: SOF: Use multi PM domains helpers
>
>  drivers/base/power/common.c | 93 +++++++++++++++++++++++++++++++++++++
>  include/linux/pm_domain.h   | 19 ++++++++
>  sound/soc/sof/imx/imx8.c    | 60 ++++--------------------
>  3 files changed, 121 insertions(+), 51 deletions(-)
>
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
