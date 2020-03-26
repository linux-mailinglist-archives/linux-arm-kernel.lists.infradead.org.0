Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B411D193C8A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 11:08:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bnauBKp9p+zZhySNabJXAIBqE0lTGwV4kwnb9JNkh/o=; b=eXi32j2HIaNPcr
	70Oy+bS5F2uz6d2NUzEQtMbHvM0u6DMaG5uiYoWx72ysEf9XC1J6PcUoA44sF5wO9odd91q8RKXQ2
	sX1japGUyV5IJk+WT1MO+XXddu0X9FhJzF+XSUhweGrFBL1GLZzMAncwgwDooPp5T0/GHYMgy3v1W
	GiSzTaQLJY6y5Io7qc1ySDmvMGQgPjM/UR6bszvWoi1MwCTNmpCzA2U/hUJhLv4NKHnAeQz/LbX78
	oUe5qd8Md2ZoiYGcrSh7X/UPW8qddqJpzbAWW4SDrNUnjAtgJJCMR3MGRheys1HaEo0waZeH0lozc
	CrUmZOhqiVMt1EFtnIXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHPQb-0000Ug-L2; Thu, 26 Mar 2020 10:07:57 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHPQS-0000UC-P2
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 10:07:50 +0000
Received: from mail-qt1-f179.google.com ([209.85.160.179]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N2Ujn-1jNklB0JqB-013wFg for <linux-arm-kernel@lists.infradead.org>; Thu,
 26 Mar 2020 11:07:46 +0100
Received: by mail-qt1-f179.google.com with SMTP id e14so4741831qts.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 03:07:45 -0700 (PDT)
X-Gm-Message-State: ANhLgQ1M+1rmAgiQAcVagf1l6fcEZegpcnV0UAoU7DCUemZd6S2qS5Bx
 FtpK1R0kMQZbH5YuoU3OrO1yNwYOUeYi68PEGsY=
X-Google-Smtp-Source: ADFU+vtn4zzbgXz0JiR+4r/VnSMlC2pOUeyfguA66WQGjarHPZXvLUyw5ij+hMENKb2uojnLZ7CO+lHSprkkhHJr/VE=
X-Received: by 2002:aed:20e3:: with SMTP id 90mr7165503qtb.142.1585217264913; 
 Thu, 26 Mar 2020 03:07:44 -0700 (PDT)
MIME-Version: 1.0
References: <1576170032-3124-1-git-send-email-youri.querry_1@nxp.com>
 <1576170032-3124-3-git-send-email-youri.querry_1@nxp.com>
In-Reply-To: <1576170032-3124-3-git-send-email-youri.querry_1@nxp.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 26 Mar 2020 11:07:28 +0100
X-Gmail-Original-Message-ID: <CAK8P3a11TJvNZ=uibXe8v6aHc3E8YTPeReN43=OW=3V7Rd7MNw@mail.gmail.com>
Message-ID: <CAK8P3a11TJvNZ=uibXe8v6aHc3E8YTPeReN43=OW=3V7Rd7MNw@mail.gmail.com>
Subject: Re: [PATCH 2/3] soc: fsl: dpio: QMAN performance improvement.
 Function pointer indirection.
To: Youri Querry <youri.querry_1@nxp.com>
X-Provags-ID: V03:K1:qEbz+AP7bmq2fFGv5NYcsuSyBbQoWgB+VzsUr5cFzS5HyGhHQ4s
 K+XEAVJ5l+MFl4UnIi1sKDjeqgmcoFkjRkGJhY/yF4hSfrNP+hzQ3/qUc1szFgIyfBX0kGH
 Gs8IX0QKa1ADLZxWJBb3WdYw6nfxrCFot8BPjVydY+xfMD3gynpb5GZpZtg6TdhCGo1nV0P
 f+Lp41+s2R4dafQUBom+Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Lm6YkAyfyKk=:XFDxCvkWfE9MN2ooa040yr
 L/D/v/yQZRH7QTrT7nwheTWiqeu11sFUlWwC2HyK09IzxzDY1ku9HupXiqgKJHg3C9dPk/SmL
 zMs+Lc1uMKR8SSSEQI4b1gX/bMeIxDlA5bFfl9nxMh4Ko6Lg0CefPHL81gRBhV4gGm2uGeTER
 7g9FGvScK4WqUzJWDM1k1SVY/tojgu+ImHGeAHB6HIvJv3EbCHIbBotVvQRiZ8VoBluoIrKGw
 KyxFq/SwtnzJRaiEitIKb5ZeielvBD4JdJFRC+S0ZaZZEHJmftEP2JZga5j9+0oOhvpI8EbeZ
 7EvFtdDLKx7lvi7R5ZKQaiDTDZ80XD+ca4smPqvufC8FL+Jvnp3at0npWUwAszoEJ0I5xCHax
 JnwguOPIdCk9XsOFMUYPwKuVTNu6jdI92Kz9snpGGZkPbaHeG1WLNjjkiBIDDm87iETbV5XRP
 yyXAc2mQpEeskWHYQeM4t0LriOWSMWNFduVmQl8cuPiVu5iXmRO3OFWNdbDF6Ws8oJjPWiVre
 NApZcSnaIU/ZaVAWIT5S+XVHeJ0e9PIlLHz1hJaT85EuvoHfi3clLyvbQIAwSfFKbpm5iqEA3
 jZlfLFbjjdjs9N493F1NTg3ijTPjnq4oJQ4+TcN9lgK00htExfHQWelCAUsIjAo9kpwguYW8f
 J03Ygvj4Hlq5im3KJhPFoFoBYS+hz/du1LJy6fHz3lqISp33yI5H2HO1giO73BpDo2ncBOphR
 1HbqgcGgCPOduWRyLo0So/zsALFD0r0soOI1mH8w8xwdERHdtHJ9ABrQ4X5VUXT4fV8P0sDr5
 9pYLYZyA0ILGEW7CpHO/P5Hgl/sGpqmq5hTDU/72MrXGBHuMMY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_030749_106154_ADCA4890 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Roy Pledge <roy.pledge@nxp.com>,
 Alexandru Marginean <alexandru.marginean@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 6:02 PM Youri Querry <youri.querry_1@nxp.com> wrote:
>
> We are making the access decision in the initialization and
> setting the function pointers accordingly.
>
> Signed-off-by: Youri Querry <youri.querry_1@nxp.com>
> ---
>  drivers/soc/fsl/dpio/qbman-portal.c | 451 +++++++++++++++++++++++++++++++-----
>  drivers/soc/fsl/dpio/qbman-portal.h | 129 ++++++++++-
>  2 files changed, 507 insertions(+), 73 deletions(-)

While merging pull requests, I came across some style issues with this driver.
I'm pulling it anyway, but please have another look and fix these for the next
release, or send a follow-up patch for the coming merge window.

>
> diff --git a/drivers/soc/fsl/dpio/qbman-portal.c b/drivers/soc/fsl/dpio/qbman-portal.c
> index 5a37ac8..0ffe018 100644
> --- a/drivers/soc/fsl/dpio/qbman-portal.c
> +++ b/drivers/soc/fsl/dpio/qbman-portal.c
> @@ -83,6 +83,82 @@ enum qbman_sdqcr_fc {
>         qbman_sdqcr_fc_up_to_3 = 1
>  };
>
> +/* Internal Function declaration */
> +static int qbman_swp_enqueue_direct(struct qbman_swp *s,
> +                                   const struct qbman_eq_desc *d,
> +                                   const struct dpaa2_fd *fd);
> +static int qbman_swp_enqueue_mem_back(struct qbman_swp *s,
> +                                     const struct qbman_eq_desc *d,
> +                                     const struct dpaa2_fd *fd);
> +static int qbman_swp_enqueue_multiple_direct(struct qbman_swp *s,
> +                                            const struct qbman_eq_desc *d,
> +                                            const struct dpaa2_fd *fd,
> +                                            uint32_t *flags,
> +                                            int num_frames);
> +static int qbman_swp_enqueue_multiple_mem_back(struct qbman_swp *s,
> +                                              const struct qbman_eq_desc *d,
> +                                              const struct dpaa2_fd *fd,
> +                                              uint32_t *flags,
> +                                              int num_frames);

Please try to avoid all static forward declarations. The coding style for the
kernel generally mandates that you define the functions in the order they
are used in, and have no such declarations, unless there is a recursion
that requires it. If you do have recursion, then please add a comment that
explains how you limit it to avoid overrunning the kernel stack.

> +const struct dpaa2_dq *qbman_swp_dqrr_next_direct(struct qbman_swp *s);
> +const struct dpaa2_dq *qbman_swp_dqrr_next_mem_back(struct qbman_swp *s);

Forward declarations for non-static functions in C code are much
worse, you should
never need these. If a function is shared between files, then put the
declaration
into a header file that is included by both, to ensure the prototypes match, and
if it's only used here, then make it 'static'.

> +/* Function pointers */
> +int (*qbman_swp_enqueue_ptr)(struct qbman_swp *s,
> +                            const struct qbman_eq_desc *d,
> +                            const struct dpaa2_fd *fd)
> +       = qbman_swp_enqueue_direct;
> +
> +int (*qbman_swp_enqueue_multiple_ptr)(struct qbman_swp *s,
> +                                     const struct qbman_eq_desc *d,
> +                                     const struct dpaa2_fd *fd,
> +                                     uint32_t *flags,
> +                                            int num_frames)
> +       = qbman_swp_enqueue_multiple_direct;

This looks like you just have an indirect function pointer with a
single possible
implementation. This is less of a problem, but until you have a way to safely
override these at runtime, it may be better to simplify this by using direct
function calls.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
