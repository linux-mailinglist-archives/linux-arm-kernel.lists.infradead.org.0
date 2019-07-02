Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A39265D804
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 00:15:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e4BspngN0+NeXCP3x0ZoPoPJ4RJipuyIthe0ykpolh4=; b=lFLAT2HowHFZ4x
	oK7eB6vJrSbr65h9tzjMNT1lEr4gbWZbCwg12m8a/xW7Jf0eQshUUwNUjOPSEzzHFbi23NEiKUw4f
	Zeg+CPnl4Sg6vwzj/Yq70vngsuuMXcyK0l/BV0U3XquRnVGRsFJOOy5gaTBlGpxOdPDQRQXjO2z6L
	51ScU3jFYaVMFCacG3OgB2Y6t6lNMhSsSmLO1PayJs598wlA7RqeyzrbUv2xLoFteEf4YzOt8K+ck
	t7KvUD2G1KGSMTBA5wmDmG2NNDfssedwODR+Ree9tlYrvfZP+JmIC4nqiowksclDjsfkIYzqPNNQ1
	EeRJqkIrVFsVgXZpghnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiR3C-0004xR-8K; Tue, 02 Jul 2019 22:14:58 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiR2z-0004x3-1D
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 22:14:46 +0000
Received: by mail-io1-xd42.google.com with SMTP id u13so123852iop.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jul 2019 15:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kaOqawCU+E1iKXJhPN1v9HRbJmtosG5PCoQkfpr3h98=;
 b=sDAYtQ8f8dyy37SVzqjjj8ART4KpfaWA56QsZcQyiS+ZPb3yHa3B94uFjQpwqEswRj
 0H3XwiWZjpvtEHV7hiBQh2pCqiiNjbGFiflZqtjFNE8Hjjm4Xba/pwoEGz2SJAPlrlPb
 E2otPIMxj1ZB2Qp6O93iJ9iukJWCbdnWzhM8uLmW4kkr3LRRkHU40SNZAbOmQenlLK8H
 NwxihHVMWpaGFHc53sBT9yt7FqLymGqYy8jbZo+vy/wIYPkTPVer5UpSEfEEC8UK9rzB
 JvOpAb5kcRn5UDFe1LyOwh/Jq762Ndmmdpxl14vRZuU8MYCCWPBe5+WA3ZmZa2mQsNwX
 S4Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kaOqawCU+E1iKXJhPN1v9HRbJmtosG5PCoQkfpr3h98=;
 b=Y5If60UX5d1VzeqRuKdioQQBWjOI1KFHIAfEHn2gjspe6ViZ4dDeWvFe3Y6H6/33/6
 DdR12nXZRlStGgcTGixoTcVSE6Qb8upGh+2og90b5X7wfJsrSQSiE95MVFJrot1XIiNP
 wcjP5iHNtAyaH1lc/IrXiUJvUjfpvX83mjunOUtxOjg5IPmJOEMfrdqw/yoALpC4ln1g
 lwW+ZtI/1XnmARiqbLb4fI6szwEheyfOIY7SWSgCB2hpDh+9RNfmrKD0C5FXEEo1zbb3
 JZVIzVPnBljZYKAfdDRWip9XM6Ss9HQ1MoW+rzxLTjwQsW8+H+5Tzo8YMdfF1X/IoTJy
 ykuQ==
X-Gm-Message-State: APjAAAWKqfVz27Hg8N6g7yjfN5KXMzrALu4Xsm9NTSShjCwji3ely2Ed
 +Gemy8wBldS2RfC/oIqMUFGG2/ch50J2br4WW8vPHw==
X-Google-Smtp-Source: APXvYqzY+JN1tg5fDwccR/3BVXH7asfQdWL2hPSXSjpucvh0iiPvcvmK/zMMAJrPm3CwoBYNI/jbmEv7Bz95fRz6X8A=
X-Received: by 2002:a6b:ee15:: with SMTP id i21mr32642712ioh.281.1562105683554; 
 Tue, 02 Jul 2019 15:14:43 -0700 (PDT)
MIME-Version: 1.0
References: <3c31314e-1ac1-324d-5dfa-80b0c5074919@ti.com>
In-Reply-To: <3c31314e-1ac1-324d-5dfa-80b0c5074919@ti.com>
From: Olof Johansson <olof@lixom.net>
Date: Tue, 2 Jul 2019 15:14:32 -0700
Message-ID: <CAOesGMgh_6Ymxpsm3xG27+jgdSZLkL7PB7r38xh60sV6NiDs2Q@mail.gmail.com>
Subject: Re: [GIT PULL] DaVinci fixes for v5.2
To: Sekhar Nori <nsekhar@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_151445_102720_39D8ABD4 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 2, 2019 at 8:27 AM Sekhar Nori <nsekhar@ti.com> wrote:
>
> The following changes since commit 6fbc7275c7a9ba97877050335f290341a1fd8dbf:
>
>   Linux 5.2-rc7 (2019-06-30 11:25:36 +0800)

It would have been nice to base it on an older -rc, generally go as
old as possible. :)

>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/nsekhar/linux-davinci.git tags/davinci-fixes-for-v5.2-part2
>
> for you to fetch changes up to 4f2fe646770774d02d52a514849c181c9e0970f6:
>
>   ARM: davinci: da830-evm: fix GPIO lookup for OHCI (2019-07-02 20:18:33 +0530)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
