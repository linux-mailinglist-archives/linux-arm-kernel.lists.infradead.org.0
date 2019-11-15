Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA9AFD3BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 05:42:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4MCVLbM8dGa4sDFAnXJHLa1O7fIVhtLzPAU3z1nbY7M=; b=fiJgS9mVe99FpE
	PgbCidJ9qN2h9AKLZCXUqbHqtByj8RfXrw2DbxRnQoGfb8iiVQSAd47peTjgw/D2AwNSHsgpi5xaG
	2KH7qccaQ77tbqRr3hA3E1au334co7T5LFSl1M/OZLn8R+v2wQsJ6LPzaFpp5zEGJLreUEqtBvJz+
	ziD5D8dvYlvtYTEMDrxhmcjGJKcnbWUMzacxRaUHf6z5sEG7OkURJ1gVVopqWOYMz7JkIwdO7pgRH
	fm48vuU8mMyT5rR0vqQT0u8A9bjKjGvDQi+TtYhL1XKRZyjpQxdFUtbnZK5PkhvWdQaipxXlPVOAd
	SbO+LXP5ewduIdANQbnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVTRV-0003M2-G8; Fri, 15 Nov 2019 04:42:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVTRL-0003Ld-2V
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 04:42:36 +0000
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
 [209.85.219.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8252B2072B
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 04:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573792954;
 bh=g3rlB32/6gd8dD5fY3MmF2bhvO5L4Q8Y+YT4GjFr3wQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=KGrd5zOZNBxWzcSvrPXyvSbFC3vxoGQoxybEK02Kveb4aW4JhvHNhVZ8hWxpFpRsY
 nMc+/3ukHPjrlhfLtZM4uxDLglMA/kI06ihg4EoH25/6ElqmesHF4JwyKppZ1mic7B
 H4tNC+rKqauChwU3xSHJPphJwawp0FskLwe2C62Q=
Received: by mail-qv1-f41.google.com with SMTP id y18so3335799qve.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 20:42:34 -0800 (PST)
X-Gm-Message-State: APjAAAWsBSMBX61ZEJRdkB7Zxfjh8DjTLCOGW2ZmLKsh8JVePY0S5cDz
 0lsXyyLedyZp/Yo3hv3Vgyca/n/oE83voClMzjE=
X-Google-Smtp-Source: APXvYqzhjv5G4OmRuommd+stX/u8tXaIf+kgtocwlFijjGY3iPO27FpXOJ5UgCEDdEl/zBvDultfDqkQncbaw+8Q4dM=
X-Received: by 2002:ad4:462d:: with SMTP id x13mr11789533qvv.105.1573792953648; 
 Thu, 14 Nov 2019 20:42:33 -0800 (PST)
MIME-Version: 1.0
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-46-linux@rasmusvillemoes.dk>
In-Reply-To: <20191108130123.6839-46-linux@rasmusvillemoes.dk>
From: Timur Tabi <timur@kernel.org>
Date: Thu, 14 Nov 2019 22:41:55 -0600
X-Gmail-Original-Message-ID: <CAOZdJXUibQ6RM8O4CfkYBdGsg+LMcE2ZoZEQ4txn2yvquUWwCA@mail.gmail.com>
Message-ID: <CAOZdJXUibQ6RM8O4CfkYBdGsg+LMcE2ZoZEQ4txn2yvquUWwCA@mail.gmail.com>
Subject: Re: [PATCH v4 45/47] net/wan/fsl_ucc_hdlc: reject muram offsets above
 64K
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_204235_134522_A70F40A1 
X-CRM114-Status: GOOD (  10.47  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, netdev <netdev@vger.kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 8, 2019 at 7:04 AM Rasmus Villemoes
<linux@rasmusvillemoes.dk> wrote:

> diff --git a/drivers/net/wan/fsl_ucc_hdlc.c b/drivers/net/wan/fsl_ucc_hdlc.c
> index 8d13586bb774..f029eaa7cfc0 100644
> --- a/drivers/net/wan/fsl_ucc_hdlc.c
> +++ b/drivers/net/wan/fsl_ucc_hdlc.c
> @@ -245,6 +245,11 @@ static int uhdlc_init(struct ucc_hdlc_private *priv)
>                 ret = -ENOMEM;
>                 goto free_riptr;
>         }
> +       if (riptr != (u16)riptr || tiptr != (u16)tiptr) {

"riptr/tiptr > U16_MAX" is clearer.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
