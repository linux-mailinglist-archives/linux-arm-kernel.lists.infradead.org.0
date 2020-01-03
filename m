Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EAE12FBAF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 18:42:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GHr9hiqC39Uwwh7pB6NCA2B6F9fheXbm4gCofL4DKQM=; b=FB0w02PcnOlrfJ
	DS7+OfCI7XppiBr8XxJbWFbGalMsxGgKbD35EqM7Y+Wjt8Y66r4itb7edew4sGqF1legLeh1FxqOS
	ndT6S7UvsX2GYw4L4+caMP0PX6GdlteXLRCyZrMWDHzHDBVbQsLdskzAq+a7VFusH9f68tnXKVEFm
	qBjJbYi5+Dg8F32T5qvfcr3BSfsNXiC6SayyoKnOEwBL8yJ38wmFH6OrY/Y9ATJuYDXnRy3P9w/Wv
	PEzmi6a8WV3IBaTjpkziCDiSDAphf+06u8hZf/FUW5uZgD5dEERJZlhZcfkPw/tyUDmrk0GjjaarL
	jJZyLuP/h7L26OP8boaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inQxc-0007f1-Uv; Fri, 03 Jan 2020 17:42:08 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inQxW-0007eE-LA
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 17:42:04 +0000
Received: by mail-oi1-x241.google.com with SMTP id l136so14713815oig.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 09:42:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VfjAOQzeMuPlGZxrv4+1+aWL8FZDYuyye/Bey06XXYk=;
 b=gx7n5m1ki+v7fZAU0zvyz+HOCxkoqOxIs6SpKaUEZmmhuUladlppLexUVdTWc+DW0V
 KLWsE6XobHjAAACjShsLnE4RE3+IwD2XhcDmPi5AxVIB90Y2ve6JsCBGN8LhScRVG+1d
 rvAVDz6ytuFhiOWTzZbkcHi5apwDtYgr7AxYS1Ho4uPwJcO1XMyQQkwjFmxz6wemUqKj
 oMOCgbb9oaFTeD6xX+b07+HbXCgD0PKK7tml4+mZ1au2ToEpUhM9Q05BlQX0QZ9fh4mr
 iQAlPZk2CillV3QKuutazpDWXu60XzJfYZ9lyMllOyhoXertllfHccvuewbuHz4XML7b
 DrFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VfjAOQzeMuPlGZxrv4+1+aWL8FZDYuyye/Bey06XXYk=;
 b=AD+j5QhEEDp0TKAQNGL28X3B68lpG0qF31LVLfAotqNfR6V7sTOF4sjKlSBlQ1ZCJj
 UccEOtWxhCTDXOuwpRmWE0XATagu8ViBUcMQi9rKEFTBWxfnZ1xC76yqWDImZJdhJPBO
 ojp63BEwtS58J1yyuq+OT8qB+k8CIK4VdUffBT6MLVjQeFqZ3pEO0YqplzzKOAgbDcPi
 HKM4ifvzmh/trFuI2THmjZbg2ZWEJ3Z1++JHxD7Xtfg+JrlGD0mhHU6wS21MDx11W5iz
 FCWj+JLB8sAaX9ZWc+we5Siy8g9olO2/hlN0rms0i1KVCNRF9T0Pj0Zu0Z/pkp6i5zBI
 6/4A==
X-Gm-Message-State: APjAAAVCbdz/ZJojf4tdcdSjHmqbUqQ1ze4XotYfrZ00T/7QLZao6TIR
 Y+aQCmqY5hp6Got4SLjuRtcHhzs1ASDU7MgaEzvgBg==
X-Google-Smtp-Source: APXvYqxgrFQmYmirDgGMiXQ0d6YoWI55AN6nNClFv614teHGpkSHVBcHgacvOVl+y/rKjZ4iAwDm5eCU8qkbj/HiReo=
X-Received: by 2002:aca:43c1:: with SMTP id q184mr4120038oia.116.1578073321216; 
 Fri, 03 Jan 2020 09:42:01 -0800 (PST)
MIME-Version: 1.0
References: <CANXhq0ok2Qo1zzyX2J4TFGbst_Zn0d6tLBqt30yMEq5JOLxFeA@mail.gmail.com>
 <CAKv+Gu8dNReF-rrXnQgq6XJDfpCJ+g=A1fXzbtPpZP=b5GM1GQ@mail.gmail.com>
In-Reply-To: <CAKv+Gu8dNReF-rrXnQgq6XJDfpCJ+g=A1fXzbtPpZP=b5GM1GQ@mail.gmail.com>
From: Zong Li <zong.li@sifive.com>
Date: Sat, 4 Jan 2020 01:41:51 +0800
Message-ID: <CANXhq0oQyQ67ZJbgsss5PxvUqQxk9xHxsoNwZY_DQ_08Q7wbuA@mail.gmail.com>
Subject: Re: KASLR: about the vmalloc area for randomization kernel image
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_094202_824235_051BE4F3 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 3, 2020 at 10:47 PM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
>
> On Fri, 3 Jan 2020 at 07:52, Zong Li <zong.li@sifive.com> wrote:
> >
> > Hi Ard,
> >
> > I'm working on KASLR for RISC-V, and I'm interested in what is the
> > consideration of choosing the vmalloc area on arm64. I was wondering
> > if you could give me some advice.
> >
> > There are other architectures had implemented KASLR, such as x86,
> > mips, s390 and ppc, they use the lowmem to randomize the address of
> > kernel image, it seems that only arm64 move the kernel image to
> > vmalloc area.
> >
> > I tried to understand the history and reason for using vmalloc area
> > through some discussions at the end of mail, but I still couldn't know
> > what is the reason for using vmalloc area in the beginning.
> >
> > For the randomization purpose, it seems to me that there is no
> > significant difference between using lowmem and vmalloc area. Would
> > you be willing to help to give some ideas about that? :)
> >
> > Sorry if I missed anything. Thank you very much.
> >
>
> Are we talking about 32-bit here? If not, what do you mean by lowmem?

Oops, sorry about that, I consider 32-bit and 64-bit for KASLR at the
same time, it should be linear mapping area here, not lowmem.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
