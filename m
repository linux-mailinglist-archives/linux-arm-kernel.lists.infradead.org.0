Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D12FE5B3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 20:34:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=byEOEj1Xcug4uy1UFEe+rCRhyTDCa74U0TJ0re+/i08=; b=EKXXfN3CTkHDob
	uGq+Zkbu/t8uADk7oUfpETlC6QqUMar/tlye7YsKtB6VVKOzgYmJmfVsL1DPsWw6EcdR7Q9wlHmQb
	T4SXAjvtq760WTDhUvV436rSoI9u3j0RysuNP0JmP+dSPJL+TwYotOqTe0oWzhC1yAt2kM/LC76fJ
	1LLO6EzLBUiitvpVthDJn0R3iHFDJvVqDCP5sNbkslfh39vzbNzpYsN/qGu/8r2rCa8aHaHfVQiCz
	adk1+odBhfTFHKHEJeZ1PYSSokoNP/19j7T3bljm4URmAqleeg9svrk0+gMiusgcrs6nQuaGhEV5a
	bkghbKh8PCRzxepOgXoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVhMq-0006bP-Pg; Fri, 15 Nov 2019 19:34:52 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVhMh-0006a3-Vk
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 19:34:46 +0000
Received: by mail-pf1-x443.google.com with SMTP id 3so7142347pfb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 11:34:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KxszWDeOWGIWijBL9B0pmi+TzXGhcCKiCV88GoXmYts=;
 b=ix9xhWelBDVLrmeaMb833ads5aVSS8YENH9KOhh4LTYGmwVVhT3RyGN0CXYfbMgFib
 FNru40g4F2quB7EAzfQoMZqboPGsJXOQiTeg3IUR9MvC1OPcIE55VwvU3TKyx35ZJY4H
 xAAh6H1XqCZ+b/aJiP8MAtJCe/Zk4+jNu2xoqmGxoxsJVaWYjVrwb4ALKToqxKcVx+6u
 D0RbPtxcufW8zyAjbHQhcf1zu7Mv4o37Y1u55m1mdTrNdGo3cFK2yMjKd9VjQxKTLNde
 euS1YxNbjiP6M4QxNEcrRaEH2aq8OEOt0oVno5MXuzwHkH8Yv81bh91k4L+0C1Dz6pJj
 e+Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KxszWDeOWGIWijBL9B0pmi+TzXGhcCKiCV88GoXmYts=;
 b=LZe9xvmQQc+qKun9D+lCTa7lBebDLoY1H1RIhfNWRMcWVKbM9/Fado7Jm4QQ9Zg/8L
 9l0qEROKaKZ9twC553pkxUDN7qFIuWjc05DW8Fiw/jWWO490uyh4sK3wgfAVoSWKqyjc
 w+kb1nIW5D7aCvKZdU/Ja3b5ja2jDEMWLfx4O4kl0p8sKMJMc/tR6DPGY201PFGtfbPz
 anSJjjjjIkFR6XQ3y8L8qANZOKNgAnn+I4xnsTOZcai5zQ5p27kHXDd/g05AnOHV1H4G
 iO/iao1zptnUO3CUyJgyHuldThv7uxeMr8GteM0f8eeDMmPn7v7SwB/V7gMiBIxCusWv
 Si4g==
X-Gm-Message-State: APjAAAUanoEVIhnsJQ6Vg/yV/xVa90bXNeP2bViAl0DqpplSmTRV8Ou4
 amYGIcHjQ3WU0Z1OmkBQndM=
X-Google-Smtp-Source: APXvYqwRG6vw52uUe5HQdn6dIY5Z9EccMoKVImiOfsEmWVxZNIwL/19Lgb1GiwMkKmO/xOPS3BRpXw==
X-Received: by 2002:a63:e407:: with SMTP id a7mr17566589pgi.92.1573846478340; 
 Fri, 15 Nov 2019 11:34:38 -0800 (PST)
Received: from dtor-ws ([2620:15c:202:201:3adc:b08c:7acc:b325])
 by smtp.gmail.com with ESMTPSA id 12sm11435882pjm.11.2019.11.15.11.34.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 11:34:37 -0800 (PST)
Date: Fri, 15 Nov 2019 11:34:35 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] Input: keyboard - imx_sc: Correct SCU message structure
 to avoid stack corruption
Message-ID: <20191115193435.GV13374@dtor-ws>
References: <1573730499-2224-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573730499-2224-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_113444_021121_CD0B9F29 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dmitry.torokhov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: robh@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 linux-input@vger.kernel.org, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 07:21:39PM +0800, Anson Huang wrote:
> The SCU message's data field used for receiving response data
> from SCU should be 32-bit width, as SCU will send back 32-bit
> width data, correct it to avoid kernel panic of stack protection
> when CONFIG_CC_HAVE_STACKPROTECTOR_SYSREG is enabled.
> 
> [    1.950768] Kernel panic - not syncing: stack-protector: Kernel stack is corrupted
> [    1.980607] Workqueue: events imx_sc_check_for_events
> [    1.985657] Call trace:
> [    1.988104]  dump_backtrace+0x0/0x140
> [    1.991768]  show_stack+0x14/0x20
> [    1.995090]  dump_stack+0xb4/0xf8
> [    1.998407]  panic+0x158/0x324
> [    2.001463]  print_tainted+0x0/0xa8
> [    2.004950]  imx_sc_check_for_events+0x18c/0x190
> [    2.009569]  process_one_work+0x198/0x320
> [    2.013579]  worker_thread+0x48/0x420
> [    2.017252]  kthread+0xf0/0x120
> [    2.020394]  ret_from_fork+0x10/0x18
> [    2.023977] SMP: stopping secondary CPUs
> [    2.027901] Kernel Offset: disabled
> [    2.031391] CPU features: 0x0002,2100600c
> [    2.035401] Memory Limit: none
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thank you.

> ---
>  drivers/input/keyboard/imx_sc_key.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/input/keyboard/imx_sc_key.c b/drivers/input/keyboard/imx_sc_key.c
> index dd57daa..5379952 100644
> --- a/drivers/input/keyboard/imx_sc_key.c
> +++ b/drivers/input/keyboard/imx_sc_key.c
> @@ -35,7 +35,7 @@ struct imx_key_drv_data {
>  
>  struct imx_sc_msg_key {
>  	struct imx_sc_rpc_msg hdr;
> -	u8 state;
> +	u32 state;
>  };
>  
>  static int imx_sc_key_notify(struct notifier_block *nb,
> -- 
> 2.7.4
> 

-- 
Dmitry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
