Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 044D7476BA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Jun 2019 22:27:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/EsDPfmeWTN29DBnNV3+6Ew87z5RSFPvUMc236ao/s=; b=LvonNtr0mQbKot
	qiIftsWo02IgRugUIaFnGsKmQ6gQ+UfLj2VTWv5YhpRQNT1lb31ByiBYi0fPbWA9h/X0PDlm7ldTd
	7YBxnUWZFcQ1JtAGh8bCe3QFxVa0z6cEKrhFnxzNJBM0qcmubE9bpkUSt8QiliH+l0nQIongdtfl6
	DEa7bz806PuSH603joAVPJAGNBJFbSLWlt54KEOJHO1yfGHv/SMuYg2eIW5Vzyz3CECextn4o31QF
	OUGPu8bQ2LnZHqlweNqecLs/VIPRiUrbS2anVuMP6mS83bKuytSfv/jBup7J3WspNx5V/xo6Q0sWj
	/TWgmufFdbeIf4qi7blw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcbkg-0005T3-L9; Sun, 16 Jun 2019 20:27:46 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcbkS-0005SZ-Ix
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Jun 2019 20:27:33 +0000
Received: by mail-io1-xd43.google.com with SMTP id u19so16797349ior.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Jun 2019 13:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E0Lcqmjnm/lyXSm6qsEhS1zLkvHzjOOD5QvWEo0/NbE=;
 b=z8HyffrGtDuUTDjl1mhfzPjVFReHmOfqkkbSC0TffCfYG/DPZJqk37kKVcSTvViq37
 CPN2KTr1jSfn2PScgzLnVR7w0k6gIuqglvZLdv7R/P4FpGz3IED8QzbzBaFvE93WKK79
 NG0FpXFUs+PpnaUDLwz0tnhc2BiDiV3i6ef2B6E4qy/Qxll2isx8nXmhraEzVMgK5njK
 wgzWKdTl596YKklnNOlI111L74q0GavHQTO/Xa/3o9jCWtnRJ9mo3IJCk7kTV+I9G8/R
 Oq2K8J2vI1LNOkJB0hmSOBzqBYW0RvUSZ3gTlINsi9PMLeYdWld4oGn6/aM8QQRAPr3j
 eEnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E0Lcqmjnm/lyXSm6qsEhS1zLkvHzjOOD5QvWEo0/NbE=;
 b=IOu/iL1Gf7knoXNjnJ53x3TwnFYY01kEC/bigN9X7TihzDoCPSiEK7Vdiq2h00/pgw
 A2N7DVu1BYX9s1tj8howNDv8H89mGNOHwfKVZ9NdGgqIR2e9++5ZqhZovraVWxZpxov+
 BBRzl6wOnhg8vMjhv+b50MmbPKJRJQ2+8MKe7j3pFn2+K48k4GwdNOSoCspVaUC/amYn
 LvXB6YpMspXBGQxLVybS5z5FvMfO0PMtJgjxKPxngJQWcCLZ+Rw9Ou+EqI4Q0MGbwTA7
 H+fbSRtHy+AQzXjCcZAbgFkw8LQYfqJnYmwXSMrc4LwbfHheub0rcpcFXLOOgVUrVPzI
 R8dg==
X-Gm-Message-State: APjAAAUqlMlH8xvvzvinWQlQ111cf5USOyUdoJD0MASb/qCtdtcCZjJN
 Zi5d3zI+f5d2iiiZ5aLaLMjKDP3N6unAtR+PXn8IUJ/v
X-Google-Smtp-Source: APXvYqz9K8CuitGXoPlMMYBivDZsh3jlIOTsoWjdsROa0YAdUPSjNh5p3Wah6NZemeywahTOl+jsdmiXulHkLQ1C03I=
X-Received: by 2002:a6b:ee15:: with SMTP id i21mr2409338ioh.281.1560716851717; 
 Sun, 16 Jun 2019 13:27:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190524013736.GA9261@dragon>
In-Reply-To: <20190524013736.GA9261@dragon>
From: Olof Johansson <olof@lixom.net>
Date: Sun, 16 Jun 2019 13:27:20 -0700
Message-ID: <CAOesGMhUJJB_JqDofL7+37s0xGHVjx6BQup5SL=ms18w6550Vg@mail.gmail.com>
Subject: Re: [GIT PULL] i.MX fixes for 5.2
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_132732_625284_8D320C5A 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 ARM-SoC Maintainers <arm@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 6:38 PM Shawn Guo <shawnguo@kernel.org> wrote:
>
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
>
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-fixes-5.2

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
