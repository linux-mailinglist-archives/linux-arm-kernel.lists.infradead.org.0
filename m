Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6987DE48
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 16:54:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sxsXkNEgSqI7+YOWGkQo+I0ss0MWVCfhLk4iZ2tfu3k=; b=kj7xXyaKeYlMuB
	tUQY3jtIu8+pzlMGiA/IjfPZOSPbDix8DETjlDFdALMlXX1H2pLWCdOtOkz4EZQwakPItTn2aOyCK
	SHy+k/Wcuvj84NjEYlmUCPdbZHYcKvnt5D7YXBXwfJzSOFCNLI/ny8HpT/xjyQ4S+qwqQV3xglY2S
	VZp1qb6LZlezTgjFDC5pp4M8LA5XEzX+UtwXVFedvYFikJNje79qVEk2ho9/PjfqeNwL5qtW47X7Z
	w18XtOCWmeeky+KKpxo7NmIiVVYvpdD2idT1MCBVLiSWERMkx8nLldJWLRFbV4lFdpgi/d5ZtpOCX
	X1U8a/TUoXCqlWLZfsdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htCSz-0005gA-RH; Thu, 01 Aug 2019 14:54:05 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htCSq-0005fr-FZ
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 14:53:57 +0000
Received: by mail-wr1-x443.google.com with SMTP id 31so73961026wrm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 07:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fQwjCZHn0hCfiGPjPuKEwhUSkgHi6FqRy5NYtVOPZRM=;
 b=pqSYmUoWn7Y9stRF6ZpR06REAdu4QQiiYgSVTaYT96C/7YWj+FlPvttmcGZbl8QL3L
 DjwL87YY/0mvbttZweuZQQdd6vZqjun4lfuJvQy566ZthS79p+QgVdx6GJLGaT8WfhSJ
 z/D80HhzN0TTEtZiAXEhDP/Jciq52ZsUX8HJS5scxJ4PiNKnY+bHDh2SFwdp3rUV/9Yp
 DfDaxuNpKXuDh2/3o36oJPEdVtyrwAXNmuh9kEw7KusrIWugmk/cBaHfwaKl5/Ai3pnt
 r6b2fDN/D9K7gxk2tYh0b0lUkiKKuCSjNniTYJytMTa6OrkmIdAjk8MnCSgvyV5VwHON
 7gkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fQwjCZHn0hCfiGPjPuKEwhUSkgHi6FqRy5NYtVOPZRM=;
 b=S0daVjCYhpd0lQOp8UsAJuDtbdHL0vuwil8//asobkSCUuYwsBXwaaT9+CXRCa+x/T
 gHuPJATUkbIB0djG0eGXH+zP3IDFb1SKD07+hw78nQTqbZWf6cJGKW4PS+dNhRZg9rlB
 ZMyxEvvgjuramvXOrzsQ6WcPkyyPM65BtlK/kDXeOnwEs066naZIuwDbWb/ol73K2tij
 60vvODjRYN412WsFMGSKbDAGFTt6KJM+Vi8LZu2Pfq3b3LwVlkkp2Lx//8D1zEL0yF5S
 jssx9Vv3HMT+sClKg2hBZQVlja0e6IMrWKaqWdEqVSp833kJy0/HxHJdtXKNGXP0FzZ5
 MmEg==
X-Gm-Message-State: APjAAAV8iRQUlUwq9wyoFJWs1nG1wGhV4zZewsIsZFqA7MDRpiVL2Ldf
 kBS4BrrHJNpYf8OO11GwgDjOS/32d72uqPW9lw0=
X-Google-Smtp-Source: APXvYqzpaG1YbScy9oUumOFNtfVu0QAC2W3EyQb8DVsoVEborz1WwCAMqWFBurRipPcj7KfZXMJ8FuA/5zGH6L5tlBA=
X-Received: by 2002:adf:f450:: with SMTP id
 f16mr108790740wrp.335.1564671234760; 
 Thu, 01 Aug 2019 07:53:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190731205539.13997-1-daniel.baluta@nxp.com>
 <20190801061033.4diqrc4x4mighyju@pengutronix.de>
In-Reply-To: <20190801061033.4diqrc4x4mighyju@pengutronix.de>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Thu, 1 Aug 2019 17:53:43 +0300
Message-ID: <CAEnQRZCG4J-e_sx29qaPXUiBHcYirEZV=99dijctg9hr5pPH0w@mail.gmail.com>
Subject: Re: [PATCH] mailbox: imx: Fix Tx doorbell shutdown path
To: Oleksij Rempel <o.rempel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_075356_546568_9C8616A7 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Richard Zhu <hongxing.zhu@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, jassisinghbrar@gmail.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Oleksij,

Thanks for review

<snip>

>
> your patch is in conflicht with Richard's Zhu <hongxing.zhu@nxp.com>
> patch "[PATCH v3] mailbox: imx: add support for imx v1 mu".
> Please sync your works.

Sent an email to Richard. Hopefully he can rebase his change on my patches.

<snip>

>
> Looks like here is one more bug "from the beginning of times" :)
> The imx_mu_xcr_rmw() should disable only one channel depending on the
> type of channel.
>
> It should be:
>         switch (cp->type) {
>         case IMX_MU_TYPE_TX:
>                 imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_TIEn(cp->idx));
>                 break;
>         case IMX_MU_TYPE_RX:
>                 imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_RIEn(cp->idx));
>                 break;
>         case IMX_MU_TYPE_RXDB:
>                 imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_GIEn(cp->idx));
>                 break;
>         default:
>                 break;

Honestly, this is not really a bug. The registers are expected to
already be cleared.
Also, please mind that we shouldn't clear TIE here because it should be cleared
in the mu_isr.

Anyhow, I have sent the patches with your exact suggestion to Richard.

>         }
>
> Right now I'm on vocation and have nothing against, if you'll provide
> this fix.

Have a nice vacation and thanks for the review.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
