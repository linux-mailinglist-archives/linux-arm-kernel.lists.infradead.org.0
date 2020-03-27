Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E03195CA0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 18:25:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ODsI44fh4bctjoSOX5ji8Qo0GGL+j645fHNoY8hQyfg=; b=L12J7+NPLW8XuP
	WpcCGR4aQOHt8aBZhVtIgGYcNlN08yPrlHaLuLNI7CGHyB9P/MCoPLFXl/YKzJro3EO7WT9zwMw70
	xbI/2H9938xEnZA7bYocXivb/kO5IH2oIWNprtsg+DKvOEU6yrbAD/caKnWpjNnju8wphbiZHnEqo
	BGA6B/PirKoasQGFqnSwYhmy+Nsn0SdN42XJZrbtdqgyxiBPJKiMqW+dFDThyCVW29VPXdSobhJDp
	u2bAE+/kGFJuECg0N0EeVHWqc4tqqT08dAa1TfbuUuXvoKVwyn8zRI3fVBsf3rMRy1NDPwXKcE7LB
	EZTvRw+6Vib2gerZVtFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHsjL-0005lN-Pw; Fri, 27 Mar 2020 17:25:15 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHsj6-0005jj-M5
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 17:25:01 +0000
Received: by mail-lj1-x241.google.com with SMTP id g12so11071713ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 10:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BsrK46vQ35+v3vstANJDsKCt2RLh4j5JJHq78hw90Cg=;
 b=LyhqEyhFVhLvPgLfeQiZBbkqBhqcUmwfWUwFmqQgcqDHGkAjBjy69gsvWPnLyCLr9l
 ub4d8ljKaebWH1VCAQG9mlHReY258tSYmQga+itSeD5mXRcniQ338POLmK0YISYnSuVp
 6A6TdO7x5UmCDkQyHDrMuK3XxRNmY6CKiCSIeIpkbheqMMjeFHswA9zGplgIJzsoFEl3
 nptJn/Xp3Gk0nuh6rx/TQkkXmi8hJKKF/c6+hsJl1pHY3+H/uBn5PxuS6pm5DUozCr8y
 uPxJiyP8fMWzLjD9MTdQqnJtjTXXmAvivCDrMvUG8FaZ1C+dZkEBztWbqZXEc0NovQmD
 0tbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BsrK46vQ35+v3vstANJDsKCt2RLh4j5JJHq78hw90Cg=;
 b=iRn+nNjEV1bn8tC2ESGkorVCAG9zo3fGNTUaq18MNhpaK/yS5J3bPPZw3RtAD8VIK2
 Npd5d7S5Sk4RnwiOrkUHvC6yu80Hi1TSAcNROHQrvHMVRbu1gRq1FCG51hAjwIzxq3Hr
 VQ6zNa+RNkLNmESYYdzD6RQu3ZjMCuyjeCRQichRs9EREVqJL+Mw8gRMnjDt3GKelykl
 wP+4HDrDotq2qeQzy/BiLfaODMkQYjWSj5Gj66Vu1mP6Jx7+IJQepzniKi2Mir89Ba0H
 rosYnk0vjp2qrjWkJr2MMtZb+j9TJbC0iZprliBw9tNyGvi5uaVs0XhjJXfQExVyx0Tp
 fTHg==
X-Gm-Message-State: AGi0PubyTUFkDhfnONP/EaUoFD/5AzwIFYGFNMrQwh2CoJI61ilHRmBN
 NWTeclUmdmqwA3R4i9/nppFbvkiEfasnX8EmHpc=
X-Google-Smtp-Source: APiQypIEaUrI2pBQKvvCxQSERCnysMEM8pkuoEB4sHJBVv54D/4RtLBF7AaYjn+CmEGlJvJE2jYmJvml3Gzr2pI8nQQ=
X-Received: by 2002:a2e:a0d3:: with SMTP id f19mr5866ljm.117.1585329898944;
 Fri, 27 Mar 2020 10:24:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200326174232.23365-1-andrew.smirnov@gmail.com>
In-Reply-To: <20200326174232.23365-1-andrew.smirnov@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 27 Mar 2020 14:24:49 -0300
Message-ID: <CAOMZO5Bd1yhT95Tc3Y_sF2XpuDz4vjtxu3jw3U_KTjp5C9+XaA@mail.gmail.com>
Subject: Re: [PATCH] ARM: vf610: report soc info via soc device
To: Andrey Smirnov <andrew.smirnov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_102500_740314_8A5BD0EF 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
 Chris Healy <cphealy@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrey,

On Thu, Mar 26, 2020 at 2:42 PM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
>
> The patch adds plumbing to soc device info code necessary to support
> Vybrid devices. Use case in mind for this is CAAM driver, which
> utilizes said API.
>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
