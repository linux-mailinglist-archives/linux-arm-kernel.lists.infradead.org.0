Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33665110476
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 19:47:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6gUWuD2Wm245ivIDJuVMXipBDX8YdOmbjO9FS+vchok=; b=PWTsbpr4m81PlY
	ZpW/CDgcO0PO5lmpQJ0Ay3IzxBmFTkDrxa6WOQ8H69EO9+SoXH5OQWz8dL0z4Fzq3xenR+GluMe/V
	NKUsFBY+HkelJojv0gy+GskBdlNXiiFaxnHOC4YyX1Af5X3hm+W/1rU9iEm+xF3wN5t7D6KiuRxLi
	KlwCGPxlTyC/f4H0LB1qG+VqvQMTvfS4GFo0ZXkCS4PU8LphXXfFwTUxjHC10AEG3npz/HezzUDD7
	KR9o+D862GOK/eWuYL3ET2n4aXal+K3dnxvVLuI8LMg+Kg19TnH2Q/61Pc/nyRMlXkIYPXCfG2ht0
	PjWo4qjpBb82gfMsNakw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icDDE-00022X-0L; Tue, 03 Dec 2019 18:47:52 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icDD6-000224-KO
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 18:47:45 +0000
Received: by mail-ot1-x343.google.com with SMTP id 77so3876300oty.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 10:47:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pfO60WpFdVXD9ykCy83yYLYqu37ZRkpOI6iazA+g73k=;
 b=jrBUX3W/cj7i2lJk0w7h8DromxINw5Nmmr4l6t63OkmNeRwhn/r4qAb45sdstr2z26
 22Xt9iOLQcEzh0BzacyYi/P/Wps71zJ04bWGjsx6zNcvIBDhZ/fdnaZgDVSeH1oJkCyR
 ad2vhAUE/sJZYQjynBObtGlsFBmX2GAUgjKgixSfKWlJB6/3obaG9loYEGkHYl34c7RO
 UELCZelTjZVnA4oGPvddVTJAYrovnfb6R16Y4SnZzYhsHNM2Gp7iXz/k72ElCNPeRzrb
 tuWukCYh8Tgjv1jZpYFq6WxVg/TTZ2Ov34yIlI/rgl3hdD4xXJPUTJF4U8gdFeLJqF/K
 Tkxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pfO60WpFdVXD9ykCy83yYLYqu37ZRkpOI6iazA+g73k=;
 b=ow1ZzIVDKHADwbyvUFN4bb9P2gEbtesVi8GZL4azCGf/VccdmTHkJm0Hm5c0XFEMWM
 QdMEIiz2+n6186aQjHnzb8mDm7LwJF+HZa2uS4d7dq0wvHTIHV4fdOgH9wZYhq0WvrKZ
 6kB2I993U+BzNPWubi89ViKDJNY+1HqswpeNroOgreOjtxNXbr6M9ZHkVbLbSwRAIGKt
 T1a4c82mfiTM4FA27pQLhn+nokVzWciGOKF722rfQg7RskmKjMZsWzmtu6N6deFhnqG0
 o4SjI1qWM/I0LGXPej6QyMj2qWXU49C+Sw3zf/whFPN7/hUoZko/9706txLq9yX3Nhrb
 qNFg==
X-Gm-Message-State: APjAAAXskXEzbqSyMNxWQOemNLbIi4LxTaNWx8FD4cVc4y87V6JjlLxU
 gP+Zlg5/YkkYWJVqqy66AZ9fl94zNZUp9kUjzN1mLA==
X-Google-Smtp-Source: APXvYqwmBgkNOXdWKfFhoRJ5fYuF8t0A71o7eGmZ1W9UCAO3LKG+omVrqIoWLKPd/hqTtznUqwTF6fmD/YdQIIy+Hhg=
X-Received: by 2002:a9d:3af:: with SMTP id f44mr4143411otf.332.1575398863576; 
 Tue, 03 Dec 2019 10:47:43 -0800 (PST)
MIME-Version: 1.0
References: <20191203121013.9280-1-will@kernel.org>
In-Reply-To: <20191203121013.9280-1-will@kernel.org>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 3 Dec 2019 10:47:32 -0800
Message-ID: <CALAqxLWbswQmLYJa_ODUDC0XJ5u=y_Nn074qcVAh1HZiTLNy1Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: mm: Fix initialisation of DMA zones on non-NUMA
 systems
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_104744_676694_683E791F 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 lkml <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 3, 2019 at 4:10 AM Will Deacon <will@kernel.org> wrote:
>
> John reports that the recently merged commit 1a8e1cef7603 ("arm64: use
> both ZONE_DMA and ZONE_DMA32") breaks the boot on his DB845C board:

I've also tripped on the same issue with the original HiKey board, and
can validate that this patch resolves the issue there.

Tested-by: John Stultz <john.stultz@linaro.org>

thanks
-john

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
