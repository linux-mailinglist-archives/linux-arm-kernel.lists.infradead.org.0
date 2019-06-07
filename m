Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5991538913
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 13:31:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c8DpGSStB/ASFU6ZyYBpePq/lTSg+mD87Z0nEBRGJnA=; b=C//x3PseXecfY+
	QHUHlvA4rEKEuz3771t5zjiftYg9AtYJx/Hu8G9EnnHCeFjZlM+CY0wJwlkXV0Q7z1o5nsl7uOPfb
	WHVOy7wD2syQfhAfFSJT8AJal7RMBYPfv0UAfWYSHl6DD9dTiHdorb88bQDGdDmZOn6umvS3IpvJi
	IfjGSfQMvWT0tNQm/DG9vV36mg95GGtm99U8Bhsgo+s7rXrKqULDp6MKiNSWlmwWmaW/zjU8vQkNg
	YOYvZ8TGTs1RiUJJ/R2E0YFS9SjlHEVPd9YFgNY9x9iuGDhn+CeScNwIRXlRO2KcNjfG6aojoVGro
	Fll8pJRH9aYpXU+FtbDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZD5I-0003HZ-Em; Fri, 07 Jun 2019 11:31:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZD57-0003Gn-J2
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 11:30:50 +0000
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 922F02146E
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  7 Jun 2019 11:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559907048;
 bh=1EiynZXBJ09Xyex7yNGzf9MajsV9BXqCLt+Ll+3jzl4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=FeOFbO6pw9QtkEA9BI2kcb+wWF+z1gyMDt9p3DQyfGrkhky44KslqbdRwipAlk+q9
 s1GXAX4HTgmtshZkAsk10lRU4oO/yfp4QCsW2jSqROpCaYFvW6RM1ib6kJsio1PRZK
 IUw6tCdqWQNvid4fJ6JTTQVQt1TesqUOh/GqH0a8=
Received: by mail-qt1-f179.google.com with SMTP id d23so1791881qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 04:30:48 -0700 (PDT)
X-Gm-Message-State: APjAAAWqE9oGlA7mO8qEhJtZtcegvlfPyHooSNErbl9a0hjKYOjxsYxt
 kw+HsQzvqHmu9scnJHPhSlECdt9kXC7Edl0J1F8=
X-Google-Smtp-Source: APXvYqzq6hz47wuENBc7CYbuaprvc4LJh0Gx/+zUD5d9MN03IKHMQGe0Ih70VSfZZKmRdgdCOEqn/qj0SkFoGRE9ejY=
X-Received: by 2002:ac8:45c1:: with SMTP id e1mr43529158qto.335.1559907047847; 
 Fri, 07 Jun 2019 04:30:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190530010230.4691-1-yibin.gong@nxp.com>
In-Reply-To: <20190530010230.4691-1-yibin.gong@nxp.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Fri, 7 Jun 2019 07:30:36 -0400
X-Gmail-Original-Message-ID: <CA+5PVA58ynuJJ=7792gK4kAa10NDmjVkOgYKrWuBQdWV1YfK_Q@mail.gmail.com>
Message-ID: <CA+5PVA58ynuJJ=7792gK4kAa10NDmjVkOgYKrWuBQdWV1YfK_Q@mail.gmail.com>
Subject: Re: [RESEND] imx: sdma: update firmware to v3.5/v4.5
To: yibin.gong@nxp.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_043049_639457_65B90D6A 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Fabio Estevam <festevam@gmail.com>,
 Linux Firmware <linux-firmware@kernel.org>, linux-imx@nxp.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 9:01 PM <yibin.gong@nxp.com> wrote:
>
> From: Robin Gong <yibin.gong@nxp.com>
>
> Update sdma firmware to v3.5/v4.5:
>   -- add uart rom script address in header of sdma firmware to support
>      the uart driver of latest kernel working well while old firmware
>      assume ram script used for uart driver as NXP internal legacy
>      kernel.
>   -- add multi-fifo SAI/PDM scripts.
>
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> ---
>  imx/sdma/sdma-imx6q.bin | Bin 2196 -> 2746 bytes
>  imx/sdma/sdma-imx7d.bin | Bin 2302 -> 2862 bytes
>  2 files changed, 0 insertions(+), 0 deletions(-)

Applied and pushed out.

josh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
