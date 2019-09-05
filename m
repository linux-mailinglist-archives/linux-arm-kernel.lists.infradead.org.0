Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E9DAA7F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 18:05:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bxKE54D92rDfpzrBtYyTxb5j2/I0O/7XoAH3uLQ9M+w=; b=GMboJHS5qU/HWC
	asLORhu4cRf3lqwynSf5VSDGUb8QmZD92zE1aJarji4TuHFtOdnl234XGGGLDEs4gS7KhhfvBKCOt
	Zr01RZAN4sxpSgkZ0G0yRJ4nbuWKwngqDX+Ic53A5XZTAJKG5/fDgyDt7CLRxhf+3XWe4XAwB0clp
	KBPwklsGrYZqq6cjuPa0oChaFYGh5dqsFjqJZELK6qvOZWlJuMlQcURlS2S+BnshJL5GiVNgVRpag
	prpiYnKTT74gmMdzuuFjnLpQAB+q69vunO9LjihOidyLWOXlWwTp91RcuOqQ8EuyHZpxXdZnrQwdu
	JOS/caWKPmtPCUiy39/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5uGY-0005fh-0f; Thu, 05 Sep 2019 16:05:46 +0000
Received: from mail-qt1-f178.google.com ([209.85.160.178])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5uGN-0005dj-Cr
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 16:05:36 +0000
Received: by mail-qt1-f178.google.com with SMTP id a13so3472520qtj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 09:05:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lg109LqwUiLzbnsvZnIE5S3uLfUGJu5WFRGWlk8oQEY=;
 b=gt2QeMYoMZKyLx4+uj1oamucsm6TgbF20GxposivXlS3KvAt6ZCtxinsG/awKT6q6Y
 jr3qb+ag9nOdLAUVhjCnznOCsMnltO3+CcGRliDiZdHRkNH5/bjW1SubRmQEXsF7q/2M
 SZM41dFXAPT2clT9o4nzTGeqfxay9kJs47GoejMF67f36L53+dLbylZ4s92W5OLLEOS6
 BCAaGqaOf7Xx1vywbGMwk7Xzk5x7dc/BaDxX7GPhb1j7296XcSFLseLo6IYpL5rGZ7EA
 kkccFSewzKMVG0o340aSCpQZxA3NKOUxfHqm8/KxlhQyLPjvGcm4kInMCZGDcpXMF3xm
 fyrw==
X-Gm-Message-State: APjAAAUj4SDCSRGywoZbP4OIxu+6+M4HhXGHLWXVtdjbnGB6UrZh5AHz
 UDOjAZKv/u06Z5Lnp0XVbfBGekuIYa4JFPISu4icz1z/
X-Google-Smtp-Source: APXvYqxDvgZ2yRXFWjbdos3lkIkaNj98UJxtxl6G+LczKFRjB8TICktafKdfNZOWMMw2yyu0ehS1eQf9S8oeI6mdnJs=
X-Received: by 2002:ac8:342a:: with SMTP id u39mr4393833qtb.7.1567699534284;
 Thu, 05 Sep 2019 09:05:34 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1567675986.git.horms+renesas@verge.net.au>
In-Reply-To: <cover.1567675986.git.horms+renesas@verge.net.au>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 5 Sep 2019 18:05:17 +0200
Message-ID: <CAK8P3a1tNCqrEi6DkRs3G6x11bx17u9vTCD8AG0GyV08ieFM3w@mail.gmail.com>
Subject: Re: [GIT PULL] Second Round of Renesas ARM Based SoC Fixes for v5.3
To: Simon Horman <horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_090535_440159_BEA92782 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.178 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kevin Hilman <khilman@kernel.org>, Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, SoC Team <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 5, 2019 at 11:35 AM Simon Horman <horms+renesas@verge.net.au> wrote:
>
> Hi Olof, Hi Kevin, Hi Arnd,
>
> Please consider these second round of Renesas ARM based SoC fixes for v5.3.
>
> This pull request is based on the previous round of
> such requests, tagged as renesas-next-20190813-v5.3-rc1,
> which you have already pulled.

Pulled into fixes, thanks!


      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
