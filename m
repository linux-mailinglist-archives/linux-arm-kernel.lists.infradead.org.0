Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C08CC38F51
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 17:40:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JFsXTMmXKxfsa0iMmXkBcMwOc//YLxhFaX/lHrYJCxE=; b=FfvG+cPd0iBKrY
	8RmxPLOAepuuISdHmhqJmyD1fP4QFrYwFRjrDHoTV7goMXCKJQcePr7zPXV0iyZe2LTQhddWI8W+L
	QyQeMDNjvrccCXKYTw7ANb66fyQXW8XQW6c2i9K/x/BW+ETfQ8ezeCILwsmsxUUddrLcJByxAHXe6
	A9fAljMr3WxSi7qAf2NAMSbPcCrfgp+915Q8OBIyUOS0oKeOH7wQ8OGNRkhUS5L+buXljfeeNRykh
	PC8RBKjO30pQFR5KKaPesXz3es6OpHYrEcNah6g6ksrJV/B50KtVpA9hry18qadfh883q+f+BqoY3
	uy0/XNGpcn8/y1FZ7pRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZGyi-0004no-E0; Fri, 07 Jun 2019 15:40:28 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZGyY-0004mO-Jy
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 15:40:20 +0000
Received: by mail-ed1-x542.google.com with SMTP id a14so1743888edv.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 08:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2Y4RUf49nvZm45YHDjjNhw1tLCuIx8QoAvl1tOKskzE=;
 b=kbDte6CGOb2ST61SG9x9hqY0lRB8nn8zgCOYrJc652rqCclLy6YA5nRlsb8wEfAtb5
 MZGgKGuCY+mog724nQP9sYYlXSDYzslktLsoDGTgQCqdERQNwPiuOSjeM4gwpFXA3Fqi
 ConOcmfy5Ckw/wDCdpLlc1ea1V7nymtFr5VOpx7s7AguIip7Nh6nQnsptAKFJCI+iTcK
 2bpU4R+NZn6A0FCK6hSYcVNpjtaBSqc9a/0JFI5nzR53Ua5zG6xAb3FKONGbK+/b42NR
 vFyOA5xjUiljikRB9JGednCrGYC6bswdPdh4qn+nunROutn1Hdd9aT0kEafSIUzWr53i
 e3rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2Y4RUf49nvZm45YHDjjNhw1tLCuIx8QoAvl1tOKskzE=;
 b=oBZk9kcy2+y5HmrcHCLbbse6zQtwo7Y0qz6MBIjLCjCpNUV46qgAmKG/lLEm7JsUy+
 WXRNfD3cyJlhVaXE1VLzqEHw1AcF7wVgyOa4lpdXvLem1UBJHta/Li1UadPPXh9fV56w
 vTJvLgL8yPbtn34XUTcoEv+Uhb2zHqYd+otxR16NnvFdQd9F3/7EyEmpR/woob+UcoPv
 14YWq/mG8rSsC14d10M88fTnX2/YMzo94VL2CeJcqBXnYzJzvfbIkA/7Lr7Dee7sdA3l
 aNc+EJl95GPDX74ysbAZttve7k6Xs2h04VrgnHH60tXvscTBtWNZCZUibhyP9na5DO8j
 pb9g==
X-Gm-Message-State: APjAAAWsW3bo6Kr6a30kC/OFFFQwAvzdgw9LLdLlh3k2N9hter4i26QC
 uOn1QoH357/tl60WnjBMvwPg1GrPmesU2g==
X-Google-Smtp-Source: APXvYqyMpGRltJQMC8voSnI0XNseSfgwO+9HFUckN7SrunfF41iexjVLl4do8OglGFQAQcY7g2J2jw==
X-Received: by 2002:a50:ba1b:: with SMTP id g27mr37488311edc.18.1559922013018; 
 Fri, 07 Jun 2019 08:40:13 -0700 (PDT)
Received: from archlinux-epyc ([2a01:4f9:2b:2b15::2])
 by smtp.gmail.com with ESMTPSA id y3sm427843ejp.41.2019.06.07.08.40.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 08:40:12 -0700 (PDT)
Date: Fri, 7 Jun 2019 08:40:10 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Qian Cai <cai@lca.pw>
Subject: Re: "arm64: Silence gcc warnings about arch ABI drift" breaks clang
Message-ID: <20190607154010.GA41392@archlinux-epyc>
References: <1559920965.6132.56.camel@lca.pw>
 <20190607152517.GC19862@fuggles.cambridge.arm.com>
 <1559921171.6132.57.camel@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559921171.6132.57.camel@lca.pw>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_084018_660110_CD705ECD 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-efi@vger.kernel.org, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 clang-built-linux@googlegroups.com, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 07, 2019 at 11:26:11AM -0400, Qian Cai wrote:
> On Fri, 2019-06-07 at 16:25 +0100, Will Deacon wrote:
> > On Fri, Jun 07, 2019 at 11:22:45AM -0400, Qian Cai wrote:
> > > The linux-next commit "arm64: Silence gcc warnings about arch ABI drift" [1]
> > > breaks clang build where it screams that unknown option "-Wno-psabi" and
> > > generates errors below,
> > 
> > So that can be easily fixed with cc-option...
> > 
> > > [1] https://lore.kernel.org/linux-arm-kernel/1559817223-32585-1-git-send-ema
> > > il-D
> > > ave.Martin@arm.com/
> > > 
> > > ./drivers/firmware/efi/libstub/arm-stub.stub.o: In function
> > > `install_memreserve_table':
> > > ./linux/drivers/firmware/efi/libstub/arm-stub.c:73: undefined reference to
> > > `__efistub___stack_chk_guard'
> > > ./linux/drivers/firmware/efi/libstub/arm-stub.c:73: undefined reference to
> > > `__efistub___stack_chk_guard'
> > > ./linux/drivers/firmware/efi/libstub/arm-stub.c:93: undefined reference to
> > > `__efistub___stack_chk_guard'
> > > ./linux/drivers/firmware/efi/libstub/arm-stub.c:93: undefined reference to
> > > `__efistub___stack_chk_guard'
> > > ./linux/drivers/firmware/efi/libstub/arm-stub.c:94: undefined reference to
> > > `__efistub___stack_chk_fail
> > 
> > ... but this looks unrelated. Are you saying you don't see these errors if
> > you revert Dave's patch?
> 
> Yes.

I suspect the reason for this is -Wunknown-warning-option causes
cc-option to fail. I see some disabled warnings like
-Waddress-of-packed-member and -Wunused-const-variable when -Wno-psabi
is unconditionally added.

I'll do some further triage but I think the obvious fix as Will
suggested is to use cc-disable-warning. I'll send a patch.

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
