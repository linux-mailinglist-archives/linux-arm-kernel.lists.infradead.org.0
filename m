Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 425A2973DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 09:51:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tOwyrixoKJPG6xcyMano0WFm6uYw9OHS+rtBHPepljs=; b=R2CQdgdjog2NFb
	TyzcDgqhESUFTY7CeKi8ajd+K4iUmap+wyuAIUheXdMI3HPR64UWgzH0fRWlwYpM7HhpKB3Sf+O3p
	GDD5P5mAvI+dZxt6tW+/H3NtK2MrTafaQgRSRnYtLgyN03ycLxfx3Pb4exU2ndQm91o6oneGOcwGe
	aDMy/+5xUduCb98beQdhzgjNAfSFjJx1VeNbcHJ9idsWlxyU/gZvag8erW750y+4QgEY/5VWtEEEt
	V6YmnomzN51KvS8YtOdVlApts+oE1lkIVQ2ayKFlXpL7PD8aK++FExwtfK/Cot0icoZXlzhcb/o1E
	Ci099V6bfDgu4HKPxztA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0LP6-0002Fv-Rg; Wed, 21 Aug 2019 07:51:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0LOt-0002By-1J
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 07:51:24 +0000
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com
 [209.85.208.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4505923400
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 07:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566373882;
 bh=UwB5meX7vznGepPgdAytPL5pzFFhozjObnM5Emeu3Rc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZcC2iBocY8Bq2caYhsOh9nB+bjqi61sGfQLMGW90vuMUZdyPCDLoDooBI7QohuyoX
 zhcIqqbJqgYjjVH+1appGwsH73Hco46tlKuvhKJoAvC0Mv0EPNjrKurs5HMygnKLd2
 MmaG/Rz8PqJ9tj8Thc8GQGUyR4sfJNiQ4qQH9mq4=
Received: by mail-lj1-f171.google.com with SMTP id e27so1223076ljb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 00:51:22 -0700 (PDT)
X-Gm-Message-State: APjAAAU70U6stpCqrdgwMZ6JS5VWP4/+t1zeqCmQ5x3TsYTMoIoGddoT
 URUWE6sPSrX9dOuaqabPxIYb+BZUAxalRmqLTvA=
X-Google-Smtp-Source: APXvYqyr3SjkA9GUYgeOfJkgxOJK4q881xniyq1fC4O0Cj/XRVNHydTVuF3his48XC6s8Vs0/qhvB6HW5gQzVguV0e4=
X-Received: by 2002:a2e:b4d4:: with SMTP id r20mr18143652ljm.5.1566373880466; 
 Wed, 21 Aug 2019 00:51:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190816163042.6604-1-krzk@kernel.org>
In-Reply-To: <20190816163042.6604-1-krzk@kernel.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 21 Aug 2019 09:51:09 +0200
X-Gmail-Original-Message-ID: <CAJKOXPcgZ2_ofZyAeTSxALkALaP-SFNfvNmNPYSPyLzuhpGZ0w@mail.gmail.com>
Message-ID: <CAJKOXPcgZ2_ofZyAeTSxALkALaP-SFNfvNmNPYSPyLzuhpGZ0w@mail.gmail.com>
Subject: Re: [GIT PULL 1/3] soc: samsung: Exynos for v5.4
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org, soc@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_005123_102669_9CCE29E4 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 16 Aug 2019 at 18:30, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
>
>   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
>
> are available in the Git repository at:
>
>   https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-drivers-5.4
>
> for you to fetch changes up to 40d8aff614f71ab3cab20785b4f213e3802d4e87:
>
>   soc: samsung: chipid: Convert exynos-chipid driver to use the regmap API (2019-08-15 20:25:25 +0200)
>
> ----------------------------------------------------------------
> Samsung soc drivers changes for v5.4
>
> Add Exynos Chipid driver for identification of product IDs and SoC
> revisions.  The driver also exposes chipid regmap, later to be used by
> Exynos Adaptive Supply Voltage driver (adjusting voltages to different
> revisions of same SoC).

It turns out that it brings troubles (code is executed on every
platform polluting logs because it is an initcall, not a driver) so
Sylwester (submitter) asked to skip the submission.

Please ignore the pull request.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
