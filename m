Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E762C194
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 10:45:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C6IcjRNknszz0rGDyPaaS7exjeVMmexwRmTmqk9lkVU=; b=S3Y9LXVPdDZzIA
	Lylf7FjbxeLAMHVvylTH/KZKy3n4ila5ezjOzRAJohbFBqA6mRRUt5CR9vUDebccNKWsN9/acGHvf
	IQWh6pIfa4xLTl3aev73KW46yjn7ffypcoKMbls9AEeQLmDIlPQ4RE7YgwiZbbJ0qNEXDu6OXNgWW
	PjiPfL6cS1kZaNXRyG4A0kk+496QvkGE10f95PbgaDEnk8j+P+n+JB6ZvWcUxEQ5S3HWTcvU/aQCQ
	e/lqVme7SSdicXvMvMrh9rFXQmgcIGymirOpcKyplHQb8gHIK33CoMulLhkJ6k7Hi+09riB8IHHQd
	Oiya2i3TY1JV2+aE7TBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVXjh-0005wU-C6; Tue, 28 May 2019 08:45:33 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVXja-0005vn-RF
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 08:45:28 +0000
Received: by mail-lf1-x141.google.com with SMTP id y13so13883457lfh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 01:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1VOmEm5K04vWbQ2l+72yNvPSeFo3+7LnA906Ryblkpw=;
 b=WXO/EwKP8KEJ++Jhoxlga+tHjsb5QQqMf2XP9NljzGGYqXky3VPzeSCXM1wHpQc4jJ
 +cjmkbygR1VCuemCziTSsOypdaIcgTUPTOmKdK8iApgWH5Pf+p9q8FpM1vaDPg+NbRMg
 rDKSbmrhANR0G0+waRI280Qgz0RMyEJ07u0HRONb7lgseklCe0ZDVV8nqi1zmsQ4ur55
 85CNkY2nl5Y9Gu1q7LtKgYLCK7kO88S7FC0OyrAQGJp9QgUSdsR3bzPLrgdl96CMyQuk
 idbf8wk4O1FA+iaQWUyc5Hpio2p765424/rjgGRpgjZJjogLOfRMa6UCpNPI8xC+1zJy
 q63g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1VOmEm5K04vWbQ2l+72yNvPSeFo3+7LnA906Ryblkpw=;
 b=OJAuVjKgdeX2b/mFz8S3s1ZFBa4xPrqEijsatTgqJPKSxYOdRUziHfECwY++2JP6N6
 rLBzb7SX1eWk7JCchgGjdPh1cA8wKEXXd8eTny28pMV7CGNFZHOeWYJXPt8Cml4Eyqa/
 jqYYPLyyob9Pi0LRzC9aK4J9qO7fqL9OFd4mCRFjum2oRhSYz3OamgxINdZXJvsi+E5K
 0DsrmBSbpW9uimW32ovB/mYA9He9SQvDdK4TGicn/V3jhHhYZkCA51Rq0OkWttQK9FtY
 7s2s3zl5FnPGAwrwQJursm26bVh9If6j94ovO8i2OtgaWyTsrRIp/bUI7X4z7Db9BDso
 yfvg==
X-Gm-Message-State: APjAAAUh3QJjVuyfMAtBcd2TrCubM+Jj5kQ/dAx/2F48mZEtilS3kgZd
 Jz0mC0742N4ztqG84In7VbZ48GZsPb2Bt+UmbogfzQ==
X-Google-Smtp-Source: APXvYqxTvYIP1dmooWeXzZi4SJCWIlRrpTF/nExWAU3fqYB71spv0WzoKeq+wsuMB/CY94xrgHl2E12zlzb5qJiatJk=
X-Received: by 2002:ac2:429a:: with SMTP id m26mr3232015lfh.152.1559033125238; 
 Tue, 28 May 2019 01:45:25 -0700 (PDT)
MIME-Version: 1.0
References: <5cec74e8.1c69fb81.37335.9d7b@mx.google.com>
 <0edab48f-06e5-9ed8-09be-7c9976ae1afb@collabora.com>
 <CAMuHMdUF1Csi1ZMccOj=kurijMLcA6G+TP_spsE+fnMvZR71Vw@mail.gmail.com>
 <de92e3bd-70e8-fcba-3c88-c04170704e7b@collabora.com>
In-Reply-To: <de92e3bd-70e8-fcba-3c88-c04170704e7b@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 May 2019 10:45:13 +0200
Message-ID: <CACRpkdb-Dv614V7STLRMpiLkmb_7NVyKnh2oUi=7Rx366tmZ-A@mail.gmail.com>
Subject: Re: linusw/for-next boot bisection: v5.2-rc1-8-g73a790c68d7e on
 rk3288-veyron-jaq
To: Guillaume Tucker <guillaume.tucker@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_014526_915171_319A9003 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Linux PM list <linux-pm@vger.kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Matt Hart <matthew.hart@linaro.org>, mgalka@collabora.com,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Zhang Rui <rui.zhang@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 10:36 AM Guillaume Tucker
<guillaume.tucker@collabora.com> wrote:

> > Can't you mark this as a known issue, to prevent spending cycles on the
> > same bisection, and sending out more bisection reports for the same
> > issue?
>
> Not really, so I've disabled bisections in the linux-gpio tree
> and a few other maintainers' trees for now.  I'll see if we can
> come up with a more systematic way of suppressing bisections in
> similar cases (i.e. the issue has been fixed in mainline later
> than the base commit for the branch being tested).

I think this is what the zeroday autobuilder does because
they never seem to show this problem. Thanks for looking
into it!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
