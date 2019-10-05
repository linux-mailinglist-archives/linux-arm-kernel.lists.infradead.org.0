Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E00CC96D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 12:46:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dfstmWxfAS0On3ZeYapJIzFbCKUvfNHXS0G8k1+K6aM=; b=FmsVYsHJYt6rCH
	nGtHkVDSdb3zkBJs+Ms9C+Sl3e8r8K8A343sLvdyCuELbEqL7OLP2hY3UUFfAUnYouceBDKkJwAXF
	RKw6ny79yt6uZ/etCsB2mekFGLsUfJjf/deNOHIx0xJ5SA7fkT23CxXn51RFKpexNmWbIn1z1JQp7
	/3svUuHR2JnpchP65c8/BzC68NS0a0dm1L7C8xS2wyQ2v+UHTIwkE1cnLHRY6tk1uEHJ/OEQmPuxf
	AfEeO/KQ1HSSfaqzr9AiI2mOjqrMmvFFWyKLhUSVwP+gAN3OpH9jW57Jvjz5TYzAlSsBYD0BqiPE3
	lPJcu98jfXaPh9x40gWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGhZr-0007gF-Oq; Sat, 05 Oct 2019 10:46:19 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGhZj-0007fb-Sa
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 10:46:13 +0000
Received: by mail-ua1-x942.google.com with SMTP id n63so2796194uan.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 03:46:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8NBau6UJ6WL2ddYtAYMdA80zmZN/G42WesJCt0Zydss=;
 b=rgjWKlxW9tafdD4yyJKlyJ3fDSeUYo3JZw3SUJ0LHcNajjFT4Wa47p58hsp3+NL64T
 6KBk/fGyySiX5MNzTu6tWQSHsKgdN5WgcaRrbJYdrv24bE1eWk2I8xdAXDbk96a4tosK
 RmtzUENrWXv/rqlDhVEwKMJeogEs5cW+gyDBGsJs35G+95cS4+7qYrqCMpjL0Xjz5xOz
 bME61cVek/zFyDevyHVLeXU6RbY5hjFdbbqKNuRWFzsFcD8TA3iCmkr3nGAYlVns2D7l
 Dyet9QXEy/VF+wDG6WVXCsZYucQag63sGLRjhnkK3PHtGWeca/je8frl4HErW1Z+8dty
 zWlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8NBau6UJ6WL2ddYtAYMdA80zmZN/G42WesJCt0Zydss=;
 b=XgjYWTA/WMZJY9AIdGYk07G00+fbOvjZzTpxdCkk0Vi4fUVkldIwh2JJlNgcBnX1ny
 ZAqqwVxbIom4P1M48bZQG+SRcciOCDx8smSIaktpQOjGP3nP0tjKHqNp2IaQGi3MUAit
 yW+G0EZySQFqEhUGyNRHonxoB4ea4bKZiar1Wa9jbSDDLM7CbRtriDt3R2Cts0DZaNQt
 DrQSfMHu2pJz+aXjFgMvL/y04tPADk/0dWdwdfAu8WB5bplbNR3JxpBDXoWBScN+gb6D
 a9ApZ8IdvSnWynK4xxBr/+R7dXyFpS//59ufn4d65dgAdu6ol9RFqnqn5eOW/GVYswtc
 1fAw==
X-Gm-Message-State: APjAAAUEqiaYtLkp3tB8xdKY8oyCADxfFbTMWfthiyFl12D3/7mQm3Lc
 rAIdp95XwnEEKWxCcu/MnvBb+yUCdKQuV1xpqf4Z5A==
X-Google-Smtp-Source: APXvYqxEOr3RSt51beUrP7OY3vmj41VQD6z59rmXEAfyCOygVKLMa/biB9kSbotTKpovb5quSuYbWvEfv8AdENWlImg=
X-Received: by 2002:ab0:7415:: with SMTP id r21mr1893206uap.77.1570272368324; 
 Sat, 05 Oct 2019 03:46:08 -0700 (PDT)
MIME-Version: 1.0
References: <b47ec7088aa4b07458519ab151de92df552a9302.1570101510.git.amit.kucheria@linaro.org>
 <20191003115154.6f2jgj3dnqsved2y@gilmour>
In-Reply-To: <20191003115154.6f2jgj3dnqsved2y@gilmour>
From: Amit Kucheria <amit.kucheria@linaro.org>
Date: Sat, 5 Oct 2019 16:15:57 +0530
Message-ID: <CAHLCerNoLyQ-e70=1VMPO_J_amA+-2vtHwfoUabo4dhUWj-H0A@mail.gmail.com>
Subject: Re: [PATCH] media: dt-bindings: media: Fixup Allwinner A10 CSI binding
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_034611_934233_A20034A9 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 lakml <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 3, 2019 at 5:22 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> Hi,
>
> On Thu, Oct 03, 2019 at 04:52:24PM +0530, Amit Kucheria wrote:
> > This new binding fails dt_binding_check due to a typo. Fix it up.
> >
> > linux.git/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml: $id: path/filename 'arm/allwinner,sun4i-a10-csi.yaml' doesn't match actual filename
> > linux.git/Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.example.dts' failed
> > make[2]: *** [Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.example.dts] Error 1
> > make[2]: *** Waiting for unfinished jobs....
> > linux.git/Makefile:1284: recipe for target 'dt_binding_check' failed
> > make[1]: *** [dt_binding_check] Error 2
> >
> > Fixes: c5e8f4ccd7750 ("media: dt-bindings: media: Add Allwinner A10 CSI binding")
> > Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
>
> Thanks for your patch.
>
> It has already been submitted though:
> https://lore.kernel.org/linux-arm-kernel/1568808060-17516-1-git-send-email-pragnesh.patel@sifive.com/
>
> I'm not sure why it hasn't been applied yet though :/

Perhaps a Fixes tag will allow more attention to it?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
