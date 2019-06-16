Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7766A476B7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 22:25:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=61Ruhj7wJMrQBhMHX0BHaSh3j2NmXRJe5LY/e/46snU=; b=BY7eX03msziiTm
	v6IfpynSorPCYWzeAv7736eznc5VotghltkeLWtLjuI4GnI53LsRt0ykENY0rWlltDow2y/91OLEw
	t2jBl3AL/29spU5zBFJrZs3xlM7w41wv6+Rw88tWHdJnmMFagg0NVWndK45i6wmhzozkTAjm2LJbT
	FC2RLi6sWQQA8CuolUCcd8mo7IVrc1dsRExPamXaEgP8gSa+aY+BNDTRSdpk/1b4IIx4gtHbISFsk
	PvabbwxD2iua8ThaaFdv7oit4bi348fU8Fhca+ZdnAqgOtw3VEHcbpLRVsG7z230YJQr3Ay0b7Bqv
	eYtdm+TwyHFZwVd9m9yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcbir-0004vN-EB; Sun, 16 Jun 2019 20:25:53 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcbih-0004v6-7T
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Jun 2019 20:25:44 +0000
Received: by mail-io1-xd41.google.com with SMTP id d12so8882895iod.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Jun 2019 13:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lOChBJPyGUtSgclBkJlr2orBPOCctFqb8VmTPljA+cE=;
 b=OwCSVhtCVp/x1E12da/CnPv3qZdXG7ASD8Mg6VlsY0nsql7duBj4HRiOqajv9AsnDj
 aDWGTkZmBdCunwN2OmjY4kw2Yp+F2WGihazwrXuhku8qDoYBEIYK6Gd2ay/fFL2Nhs52
 cSLkP8jrm62O89T5lquQo2jvyDDjIooBqpgEstkK1La2HVSYPyRxvxLC8B/n5LXeYqxz
 huhJdYKMZ/ZAka7JEqgWPyW+oxCcoAPuPDr+Gqvofn2mlAVRiOj6xfj7/nCytm4AVWak
 Yg0SJRoXYxjsgegDrX9ALZoU/jC+HpVNSc3w4TjY9beTxI5rJj5WRi1YT6yivEyNi5br
 t2sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lOChBJPyGUtSgclBkJlr2orBPOCctFqb8VmTPljA+cE=;
 b=BxoBDxfzmgfwRIggY7pfqVKxgxcS++DaWUyYdsu3Ikkipfm55iDz2GAoOWaAHAlTuM
 3UHULVqg1QP3j4dQzVGQdcZziE4hvlhxH44RwGNfgSCpVBRPs7IQv34Uv/ZE+pAmfinq
 cHda5zqCbwRXguYrtK+xMoI12E/ksexZaTtTAjF1zzLofwz7mPJKNawi9zLqa2fQXQrU
 +4rqbnmJKtEyNizOwFmM5Pr8wXChqNsy0GIv5OynFS/4drJTbrdMzw0dshXhGPu/U8jm
 uQa3OSjgd1EQBLsJLBdieqXnKUUCru9fNLLVyIxccAuztAaL163Ael5uNmgD4eOaxY3m
 fj9Q==
X-Gm-Message-State: APjAAAU7HILxQh8C6KBqQ3N2n1ej8YDUOYhbqSa2fFWRi/mTvJm2B8O8
 mZ+8IOiipiNoK2SlSQlCenmFzjp+o9bHUyVD36jrOA==
X-Google-Smtp-Source: APXvYqx6s9q3UXtRagNMNV5wBgeQO6KEcN7GL8MZAMkrbZN7+tqgB0wCwEccA+CssUXQspccZ418E0ZeBixsXTYALB0=
X-Received: by 2002:a02:69d7:: with SMTP id e206mr83180006jac.21.1560716741636; 
 Sun, 16 Jun 2019 13:25:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190520182648.1063-1-f.fainelli@gmail.com>
 <20190520182648.1063-2-f.fainelli@gmail.com>
In-Reply-To: <20190520182648.1063-2-f.fainelli@gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Sun, 16 Jun 2019 13:25:30 -0700
Message-ID: <CAOesGMjMAZ+zwYwj7PebxrckUO_q3HfhoF2T6M7c6mMQGiKqLQ@mail.gmail.com>
Subject: Re: [GIT PULL 2/3] Broadcom drivers fixes for 5.2
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_132543_335725_180140F2 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: ARM-SoC Maintainers <arm@kernel.org>,
 Broadcom Kernel Feedback List <bcm-kernel-feedback-list@broadcom.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 11:26 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
>
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
>
> are available in the Git repository at:
>
>   https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.2/drivers-fixes
>

Merged, thanks!

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
