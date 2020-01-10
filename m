Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A57013746A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 18:07:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mXOQUvOwRIiinMFtrw3WuxwgZTkr7Wi+NcUQlCErHtw=; b=Imm2cfRYFBLPe5
	hX9IiXt1azLJRRvt031IDZg+9ssHjvdTEyZS/uBlrFwpzbFv2MZ3bFQ6p6ath1toiyF4gtnf3OVkP
	l/w/Mp6xMQwxKl5NLqZN+q2eEga0BC6+1TwSs0Xva2w57lDGkGXxa1asBA7OX+dR2w5JXrRCilAqX
	paVnlxxxuYrsM+062YaprHo01//NXqRHnqGrEeQmDYHHSSoTlc+rSlG8LPcxjr45Mw7jluNMpiBV9
	G1GXVAptXq58iHfZsXUvz1EKp53kzVc53I7MWWOfyzG4Gr+qGIFWBAmF3ulGhDCb5yz088M64KKld
	c7YS9br4YC7j+tDe8Ycg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipxkP-0001Gi-BO; Fri, 10 Jan 2020 17:06:57 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipxkD-0001CE-E1
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 17:06:49 +0000
Received: by mail-oi1-x242.google.com with SMTP id d62so2423037oia.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 09:06:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NvMAZULjd+t6Z1IO7z3EeS0cYq8ZxzqfzhGty4Nz4qY=;
 b=FLgSitm39FYTcLuYRbsNts/aWHg4GhaKLHHRjdAR3hIJ0fpmEXM0Fi4fexFJOoxA2J
 q2WQ4hWQF6dKtx3BO8Y7AI+Jtfq7MrcV/yPV85pBLruRheP4hQjKvEOaoN1GdK1WmfKq
 BEZOjFehnKvUcDmI0W3Q/mIM132ofPkXXU7ZSj3eQbQwHJuDvwEfa9WTsn0ViS+AcuYf
 ZUFLD/xe63G7PvgoJwkNgzjuv9E20OGDGHHXpLe320K8yA371dMrbt8nNX41a+4DrdX6
 D2vD3NiCfmZrOHScFrHjpR9twekkziWZlmLFMLyZehlmk1hk7MX5q3+c8oI8zCw0vfS2
 fz5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NvMAZULjd+t6Z1IO7z3EeS0cYq8ZxzqfzhGty4Nz4qY=;
 b=EiriK7ZZbUQRGbwLX1NqEB4DrTON+5DlBb8oFwrKhAUuxP9f9rrhbTAa06Hl2A+qRt
 q9fRLguR6kMcBtDOQ0xwPKboL05CW9sbPcxb1/rCUX88aAV9Q4gtMSF2hILCU2nGI7Uj
 jxSexLybYMoBEr/j94ysO/ynkgxbrFb2o3tHcWSSKFlkyB+txTbOweAyl1C0jfwsMusb
 uZGPtReUg5rb9JIf5sz9AbbhE5T29+6tZo1tqa/YvrkE1sm4qSErl7RBWWQ1iw/FQo8i
 8au6tR66j+wEvbVUkE7sWR7VO1ThlJJslMUj9bDFEm+Rda6ejKqEt0M87v5U0//zgvqT
 0fnQ==
X-Gm-Message-State: APjAAAWSWkPfJaGjyndhWocE/XOrlMy7G+aQvIWum8EKriJJGX/phwk+
 9cMvs2rGrUCBzUUHu1JN4EJSAzExT3g/+rXkLA4xKcqh
X-Google-Smtp-Source: APXvYqyg7WZSXB3wuilNJnIu0C1IW78TPsLDLu18fcxaEb8Xn+gwyErSQsJTAKiUpgwEXjnUDONAJqMuf2ylZ6GlMDE=
X-Received: by 2002:aca:ea43:: with SMTP id i64mr3103294oih.30.1578676001225; 
 Fri, 10 Jan 2020 09:06:41 -0800 (PST)
MIME-Version: 1.0
References: <20200110030112.188845-1-saravanak@google.com>
 <CAKv+Gu-4jvME3cuPBDtTVFn+-ZzttneFuBkor+N3G0JpeO4BzA@mail.gmail.com>
In-Reply-To: <CAKv+Gu-4jvME3cuPBDtTVFn+-ZzttneFuBkor+N3G0JpeO4BzA@mail.gmail.com>
From: Saravana Kannan <saravanak@google.com>
Date: Fri, 10 Jan 2020 09:06:05 -0800
Message-ID: <CAGETcx9b03SBKMcN7AokSOFRfVnr9G=vzSA4p5BXnmGPQ8JjHw@mail.gmail.com>
Subject: Re: [PATCH v3] efi: arm: defer probe of PCIe backed efifb on DT
 systems
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_090645_541436_72462FDA 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Will Deacon <will@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Android Kernel Team <kernel-team@android.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 9, 2020 at 10:41 PM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
>
> On Fri, 10 Jan 2020 at 04:01, Saravana Kannan <saravanak@google.com> wrote:
> >
> > From: Ard Biesheuvel <ardb@kernel.org>
> >
> > The new of_devlink support breaks PCIe probing on ARM platforms booting
> > via UEFI if the firmware exposes a EFI framebuffer that is backed by a
> > PCI device. The reason is that the probing order gets reversed,
> > resulting in a resource conflict on the framebuffer memory window when
> > the PCIe probes last, causing it to give up entirely.
> >
> > Given that we rely on PCI quirks to deal with EFI framebuffers that get
> > moved around in memory, we cannot simply drop the memory reservation, so
> > instead, let's use the device link infrastructure to register this
> > dependency, and force the probing to occur in the expected order.
> >
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > Co-developed-by: Saravana Kannan <saravanak@google.com>
> > Signed-off-by: Saravana Kannan <saravanak@google.com>
> > Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
> > ---
> >
> > v1 -> v2:
> > - Rewrote the device linking part to not depend on initcall ordering
> > v2 -> v3:
> > - Added const and check for CONFIG_PCI
> >
>
> Thanks. I've queued this version in efi/next for v5.6

Awesome, thanks!

-Saravana

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
