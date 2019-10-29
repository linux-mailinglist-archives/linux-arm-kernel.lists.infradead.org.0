Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17639E7DEA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 02:25:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6zdxi005WdI44u6BsYQQKvNWyT0mKvj0sK2XxR5T9Jk=; b=Tru83le1JtHnzc
	nsNsvq63dY4HoPtU/C0i62gOvgMRVxkZzf8hoKjdVbRZBRF7Dkw5b6Po7k1P7XOvhRMUN3nsPH7ad
	yAPXwQP/egcALINjsf8Vd7uS/9JRoDK6DLB4vqr4DnYcuOGXJ8Vumsq15RFfGjsS5Juv6ZDgaZJBk
	5tqc3FgJ88KLzIByOqGEYgvKkAenP4vzs7XTR1s4e+8G/8A8G/+admecHaBx5SHDciJKlo/X7THE9
	jm1o4wEt1oaZaK1LbBGIPQqwNVE/JpkTjSF5F8l4mjDzKNoEVkNtssF7D6fiCL7U/BPBWECuJLsvp
	aQPCRaLpLoDk6iEuz7Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPGGI-0002EK-4U; Tue, 29 Oct 2019 01:25:30 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPGG8-0002Dh-9q
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 01:25:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1572312318; bh=yZJ2tr1txca9SLDOy4OtsLu+iAa2f0cZDLnWQ7+OML8=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=A9YyLgNhvrxlUztIuCRhuPElEulYpYKTMOb3Hdyf6b5wAYii97AeXsS/rGMCkEskW
 C0mY/yPIhHdiJKF25+6vtI21q6NsMXjfK/3/CxdTMg40ZTSycRT5LkucjHFQUkMiKD
 jKO8p4ACl0Huenevm29Hl1sHst+Z8pOKmICnXozU=
Date: Tue, 29 Oct 2019 02:25:17 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [linux-sunxi] [PATCH] ARM: sunxi: Fix CPU powerdown on A83T
Message-ID: <20191029012517.eddekmphtxyslevx@core.my.home>
Mail-Followup-To: Chen-Yu Tsai <wens@csie.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 stable <stable@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
References: <20191028214914.3465156-1-megous@megous.com>
 <CAGb2v67Vy=tD4dfSXD+=HS3B2tEE-bH2D++gx9Oa=P8n-012ew@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v67Vy=tD4dfSXD+=HS3B2tEE-bH2D++gx9Oa=P8n-012ew@mail.gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_182520_515207_8B991A00 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Russell King <linux@armlinux.org.uk>,
 linux-sunxi <linux-sunxi@googlegroups.com>, stable <stable@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 09:09:40AM +0800, Chen-Yu Tsai wrote:
> On Tue, Oct 29, 2019 at 5:49 AM Ondrej Jirman <megous@megous.com> wrote:
> >
> > PRCM_PWROFF_GATING_REG has CPU0 at bit 4 on A83T. So without this
> > patch, instead of gating the CPU0, the whole cluster was power gated,
> > when shutting down first CPU in the cluster.
> >
> > Fixes: 6961275e72a8c1 ("ARM: sun8i: smp: Add support for A83T")
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > Cc: stable@vger.kernel.org
> 
> Acked-by: Chen-Yu Tsai <wens@csie.org>
> 
> Though I distinctly remember the BSP had some code dealing with chip
> revisions in which the two bits were reversed. :(

Actually, it's a bit more complicated. There's a special check in BSP
code (grep for SUN8IW6P1_REV_A) that instead of power gating, just
holds the core in reset for that revision.

regards,
	o.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
