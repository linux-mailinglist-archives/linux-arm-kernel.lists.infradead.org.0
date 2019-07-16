Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E34F16AFE2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 21:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4AIZvXFwYc5SlBDe4u1oEtFfR35lnhbOc4e466kxr7k=; b=Z+3k4tvvA7fHkB
	wYMJ8rpg2Dm5w1vZ47NAJzp9z+T4WbYCZ0hCU0I56yakJHuqxTcGWIyphK5/og4REGy6GN+RfKVfn
	fWzElkscAbB7RNjavdgKoIjBJGuq4jD6weayHUkKlUzIk7da2SYn+4em2rRQAkZWrGcepAFr+l1iR
	g9xvC1jk130evcQEok35nJ8mAyMowQfdBNODnT+DJCT0opbuN3C5C1AEbHcocAzNSw5v71tyvGpK2
	Lrbe2gOhUN7X+cyxizaU9OmW7oB/JVvJCJRCQFUZqBnRSWGCpsZ/Uwz+Sc3MKUZSHPPzVTBQnRiKB
	fO9hh8Zz9aWCmrQsRTRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnT9j-0002In-Si; Tue, 16 Jul 2019 19:30:31 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnT9Y-0002H4-3B
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 19:30:21 +0000
Received: by mail-lf1-x143.google.com with SMTP id b29so7337675lfq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 12:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kDDS/NZ3tftrsc7x7TuuarTznLU6INkXaKPe9Z8pruM=;
 b=OKUd7TLvnaUOIwktmFIrGYxVN9bxDOD8onsA5ggkYjd8IjyA7IGJ9lQCTRqqUbQ04E
 5eMkCuKYwk+P9NFEB+sufQMzu72nH6i5iOfX/nR3u9YIuUNxOGWfWYqFecFgdmfap+hl
 hubQJgU7hsI9waxrChEqZCAogEHIGb+PW+pfdVNybOAkNEIVa9bZNkJ990kyzC1S2JK+
 BS3miZ//GWrnswjarlD3RMPMB+qOHXD5CUNBFj0VkxKSDy7AFGRMOuSXbqvecZAX8HpO
 EFGRBTkObqo3sbxrr0kdBugGhsVPNIrY9uv5Nm7HPGxMvncaKDaaizjk5Y2iiypicpIF
 65gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kDDS/NZ3tftrsc7x7TuuarTznLU6INkXaKPe9Z8pruM=;
 b=N1b93rENPS6pm1+sJl6qJ49qZHLB7brgGi+9hwjL7J2GmrVwn5sqnlOwWewXAGYlMg
 TxMX0JMZ5F2LvrrWjvqGjObJ5gxUFUY45oT9gOYjU9W1EH2xGmkB+XOCOUWWA4wILm0n
 E86y6N1WaxeLUYVjEy8BMlUZymqBYgnOcMoLbm+B0WORSRjYJ8W/XQx6eCORjE+uZAm0
 I3oVfUdz4RP2gPycxBADi3bHSEIXi7TPGv0XwsjluzczQa4MdkaGDZ5EbUye8UuO8GdM
 nwVy6tN5pJHl6lZmk9uIPsv+BVKdPG+WwlF61GQsaMM+NtIQYVeZCVyHtpsDzfM7j5AV
 Xblw==
X-Gm-Message-State: APjAAAWV7IbAcu8U0CFOOmnBqQGQJ9yYJ0Sygfx6RU0nZVY+80D9HEeK
 diGW1xM6rlx5EQWrsbct18pGOB8gH8f87DbtBoI=
X-Google-Smtp-Source: APXvYqxiiiDc4R5SiibMSHjNWPfmERNkDjEKhohWfQ/MsrFxj/zM2ebY2Dhvd8g5uq06pLce7xb9DORjRELNOQa0HRQ=
X-Received: by 2002:a19:6557:: with SMTP id c23mr2043914lfj.12.1563305417485; 
 Tue, 16 Jul 2019 12:30:17 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-10-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1563290089-11085-10-git-send-email-aisheng.dong@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 16 Jul 2019 16:30:14 -0300
Message-ID: <CAOMZO5DZDX4hGmLLT0+5e0VDhws-DknhAwyKyAxva8x5F2BYjw@mail.gmail.com>
Subject: Re: [PATCH v2 09/15] arm64: dts: imx8qm: add lsio ss support
To: Dong Aisheng <aisheng.dong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_123020_168039_2C3517C7 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Dong Aisheng <dongas86@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 12:37 PM Dong Aisheng <aisheng.dong@nxp.com> wrote:

> +&lsio_gpio0 {
> +       compatible = "fsl,imx8qm-gpio", "fsl,imx35-gpio";

fsl,imx8qm-gpio needs to be documented.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
