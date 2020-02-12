Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5553415A9BB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 14:09:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xXYcfR2zRJygmB0Ku5YIyid2wf1ynu7+LAMJKtvpJzo=; b=KwyyyMMDappJmZ
	sB/NeufqTlXersQI0nFag8WvaA+7n/5AqyBGv+bva5m7KKt553bfvoAqr3YskElCzS6uJpMZrZOMT
	X/6+89nf1aXqsAsjQbkYyCNLL6SsDA3oio2aA+tOYKQIp0vFnGhfclK2J9PL+fYpSMKl+DGzGb636
	UrufC8bkroqJY/JfoGf7Ca40VpJDTKvBHovo6iujdwcP94QS6pGn1KbeUnUkciQZAM4mB0bZ+cjNb
	qmRnnuoJTiw205fLIDGIMhf5+qRQt7Kw/O4mKY/1kntsM9Ug7DhXxSVvXuxRoI+3lo0MPoHnaPoGF
	hzupLDijxcMnFnxgTYKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1rlR-0002Kd-Tp; Wed, 12 Feb 2020 13:09:13 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1rlH-0002Js-Qf
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 13:09:05 +0000
Received: by mail-il1-x144.google.com with SMTP id b15so1678119iln.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 05:09:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lwgzXOkICXCQfXrNHWXrCftoLfH9Scd8moCWKuZ8A7c=;
 b=uwP0fhVrX+cKaPrA9gZuzCsKp0yddAX94jEyXD+oxpoLTWMMqVteKVFhQIfbax7itw
 LTgnQhEBPH1h/TZFReuXAGeaSeQs3IeZGCBz9HlL5RRSoErDbx/VHPZz1N9s6W4tavzm
 tRI7PsSWpP61qEZOKSCUIjyPXdiR1pfk5omo4L+DP4BGIMk76I6FO9jnbIsamlo43As1
 vE6g7V0GDiRYWnLArr4NKRwoaRkGq92lsMI7sj8ISNP5sQit0d+XhUhDDSwyBqtr8A82
 nPjSpLQlG48uHNHO8yaTHauwI0bT2iFl7Ih0ObcSXH56oeHLWsj+0PBQvlsD3p8ywO9E
 l4Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lwgzXOkICXCQfXrNHWXrCftoLfH9Scd8moCWKuZ8A7c=;
 b=rBsLU4Wa+hA2oSQxhSNJh7unhL1Um0G3iBrw5Ib0nAXYGoqagZD8ZLjkAD+NJPb7cO
 8+gIQi7tudYG/vC3zytTxzgFG04TtKZtSoGqjIqEvGwgqW0FzNWiA7y/YlqzqMbBi7Rg
 ZFLlZ9kejI2Q9yma/+ARPGkymGb9KBzltRf1Z7KtgPYmUB5jkkSkx8/x4OAFdm7ZSCsm
 uWgaO35yhb6rO/ylzYaT7klFuTuLKD6CUSoqdKcS2xlSeysGWP5TtXgbHCLVmjRykair
 /g6cseZ9PunVuWVWymRrt+At+XinDxktK76RJmkUqvuAjahI6/7spmdpFrviCMtS+ahz
 JzVg==
X-Gm-Message-State: APjAAAXy8ogdS+8KFIdMXh6zy5XLEYUmI5xF5zXclbUHdHxj3nZfmz/i
 dFU4KyF5ql2WLyVyxh+Qlg9smmLorxqJZaR3KAI=
X-Google-Smtp-Source: APXvYqzwGZCfLCucPj5npcA6pFh/Daw5mAO0fUTiKusa4iACLpoLiJs+a3YdEul7VJ0Sa7qkhI7BVMm1OAQ3UfESN3g=
X-Received: by 2002:a92:350d:: with SMTP id c13mr11345711ila.205.1581512940477; 
 Wed, 12 Feb 2020 05:09:00 -0800 (PST)
MIME-Version: 1.0
References: <20200202125950.1825013-1-aford173@gmail.com>
 <20200202125950.1825013-2-aford173@gmail.com>
 <CAOMZO5D3emrAk84wDS04qJC-3AyvFnqodhoMsXO-ukHnYsU+PQ@mail.gmail.com>
 <CAHCN7xJyZRwJhnWW2mAbOeGyrMsB7Au_e6AvwiNmNS8gFUfSyw@mail.gmail.com>
 <20200212120753.GF4028@sirena.org.uk>
In-Reply-To: <20200212120753.GF4028@sirena.org.uk>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 12 Feb 2020 07:08:49 -0600
Message-ID: <CAHCN7x+5bACfYVX49Lib+fmNq-dEOkcyi0gXt7rtYxrGaYbH1Q@mail.gmail.com>
Subject: Re: [PATCH V2 2/5] spi: fspi: dynamically alloc AHB memory
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_050903_869408_9A2D4633 
X-CRM114-Status: GOOD (  18.29  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ashish Kumar <ashish.kumar@nxp.com>,
 linux-spi <linux-spi@vger.kernel.org>, Yogesh Gaur <yogeshgaur.83@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Han Xu <han.xu@nxp.com>,
 Fabio Estevam <festevam@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 6:07 AM Mark Brown <broonie@kernel.org> wrote:
>
> On Mon, Feb 03, 2020 at 04:53:34AM -0600, Adam Ford wrote:
>
> > My motivation is to get the flexspi on the i.MX8MM to work, and I did
> > a list of the patches applied on the NXP branch to see what was
> > applied on top of their 4.19 kernel and this patch series generated
> > from that list.  Most of the NXP commits are one-line commits, and I
> > don't know the motivation for what's happening.  NXP did it, and I
> > know it works on the Flexspi driver.
>
> Adding new compatibles and so on seems fine but the patches making
> random changes without explanation like the one for octal mode I just
> replied to are more worrying, do they work with older versions of the IP
> or in all use cases for example?  I'd suggest cutting the initial patch
> series down to the bare minimum needed to get things working and then
> building on top of that if that's not already been done.

The original author was copied on the initial commit.  I literally
generated the patch from NXP's branch,  added my notes, and pushed
them to the mailing lists after testing them on the  the Linux master
branch.   I am a bit disappointed that NXP's author hasn't responded
to any of the comments or feedback.  NXP knows their hardware and
better understands the details as to what is happening and why.  In
any case,  I'll try to scale the patch series back to just enough to
get it working on the i.MX8M Mini.  I'll expand a bit on the commit
message based on what I've learned about the various in-implemented
quirks and send a V2 series.

adam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
