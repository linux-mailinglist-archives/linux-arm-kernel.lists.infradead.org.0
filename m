Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FDE2532A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 16:59:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i4NTVY6hGyAOL+7O3aH5mpis12MM7FNX5mv82kREsEQ=; b=otNUNoZhF75nEc
	6m8nBw1aipB0P2l1+0u1hZaU0z8otF4yL7HHEJXGcnNvO/dM16Bl9flLb6//VnUiwhEF8rdMxwY2a
	0cyizobVG5S0nizQNrNlFSStt5H9NCsr/N8T9j7JoIRUhtYEnqOu4uY/n0J8tj8JD+yYerirLgBP8
	EBqZ3BVjNcYPwuEBvSXy0F2MWrqpBHKb559L/LyzQCV/bjbDvKsJcwYAZgXELlTjic+oT2CAdPPzz
	WLjzTyIcREo1n/OLOCwq9CDRa22Sw98IJUika2Rhu9TqHAIB53DD/7mI1P2cpOXiroxTZnzTVAS17
	fbWQzBEn9ieUHZHJmF4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT6Es-00058L-Ik; Tue, 21 May 2019 14:59:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT6El-00057V-8X
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 14:59:32 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C1EAE2173E;
 Tue, 21 May 2019 14:59:27 +0000 (UTC)
Date: Tue, 21 May 2019 10:59:26 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: houweitao <houweitaoo@gmail.com>
Subject: Re: [PATCH] tracing: fix typos in code and comments
Message-ID: <20190521105926.5fa601da@gandalf.local.home>
In-Reply-To: <20190521144740.22490-1-houweitao@xiaomi.com>
References: <20190521144740.22490-1-houweitao@xiaomi.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_075931_319380_F3FBE748 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-rtc@vger.kernel.org, a.zummo@towertech.it,
 alexandre.belloni@bootlin.com, festevam@gmail.com,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-gpio@vger.kernel.org, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, baohua@kernel.org, davem@davemloft.net,
 yamada.masahiro@socionext.com, mingo@redhat.com, linux-imx@nxp.com,
 kernel@pengutronix.de, jslaby@suse.com, sparclinux@vger.kernel.org,
 houweitao <houweitao@xiaomi.com>, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 21 May 2019 22:47:40 +0800
houweitao <houweitaoo@gmail.com> wrote:

> diff --git a/kernel/trace/trace.c b/kernel/trace/trace.c
> index 2c92b3d9ea30..bfa5ab0663e7 100644
> --- a/kernel/trace/trace.c
> +++ b/kernel/trace/trace.c
> @@ -8554,7 +8554,7 @@ init_tracer_tracefs(struct trace_array *tr, struct dentry *d_tracer)
>  	ftrace_init_tracefs(tr, d_tracer);
>  }
>  
> -static struct vfsmount *trace_automount(struct dentry *mntpt, void *ingore)
> +static struct vfsmount *trace_automount(struct dentry *mntpt, void *ignore)

"ingore we trust"

Acked-by: Steven Rostedt (VMware) <rostedt@goodmis.org>

-- Steve

>  {
>  	struct vfsmount *mnt;
>  	struct file_system_type *type;
> -- 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
