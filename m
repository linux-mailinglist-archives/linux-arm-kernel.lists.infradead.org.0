Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C47C283AB0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 22:52:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2fUaE6DRmv6jYrUM7XsyhKVRtLeGyrfQmlel1ITOIc=; b=tPKN9A1kVo1K8F
	J03cXuAm99Wj0D4nVnvNtLI/3oZqTvETrMfvD5OGgRjWXFfA+/adqI8KPF2AeW9/N+BaJykh0Wg8W
	m47JSNIAACgc99N+waJbNTn6WWe4Akhd/fHL+Gk0wPc0DFJgN0bT5257r5cj00nMulEOeY9xssibg
	AnUtMO/bccjumZ+UipEB3mJZ5CdbH9zDJLWW55tyfbi2i4rYpyIHZaQZmX7waoZSEuTPuBN91Yxkl
	sg8XeJIVm7ai6lc90dDuyRjRz1n66msQP0b0Lxn1TUmw/mq9Qw5VZdbSyX7nl5b+9pbeg7p/t5V0U
	695jqLN6GP1O+khcEc+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv6Rt-0006eJ-AM; Tue, 06 Aug 2019 20:52:49 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv6Rh-0006dT-Ox
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 20:52:39 +0000
Received: by mail-oi1-x244.google.com with SMTP id l12so8024375oil.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 13:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QRKrUd2KqJ4du5nxvXAvlQop3jv0tqBm3byLIAgQWLI=;
 b=SwzrPuuN8fT5umgmdq4EeMXO/yADFmCQB6/jExxNdnyKY/iWPQWRalFZMNkV6hQdmy
 t5hH1tpD3rpgEFV6fivjOr5P6MhN7zWTzaWV3NaaCEjG0QnJtYCDM3+JFuRmPP/15ffG
 +1jOwWQzk50jlHWlFkbI1KQOQcSlZcLScwEeV8Vtl0TegPreJlqMnl3HSSwOuiSgNa97
 BAzDVXy/8QVb7gVj9GZs2MzaoGS82sRqprCGC7gGq9A4ZxRcSB43PjRi6kwtfZQdpCzl
 fqKpudWMGGCWfO/QVTVIibekm2fYDhVuldqTYl1HLTOsCXGTVTMiqtaiGqsll96S4qHc
 96dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QRKrUd2KqJ4du5nxvXAvlQop3jv0tqBm3byLIAgQWLI=;
 b=hgL8+/FWIgdNkSA6kqUOZhSUP2niGZtBTGZ3XNG22YhrNvlonhthdqREm9u4ku3hN0
 4mybWs/xCFmqsUqfQ9KziUJm23LmGjGRAATnPDGK6V3c9lnu0kLvg7JchZBd2DfwKvgj
 xz0qoTu3ZBtdMjdmP60oNBwJz3gwPOKC0sHtQ9LOcFw7J9/jkCVnt19roxnzC6eMD8km
 SSLsaK+sYwCk5xJGtsk+7i35SBRa5YpTPPMrHTm1hfly2nhxHVWFYf2WsSSS5YWd8/IR
 kmC3Gbb+i0gCI+0FbrlTK5MjFnwD99fqhCmwTEPczw/Mwz5qIBFf19OVWtzuQP6beIJ/
 IyQg==
X-Gm-Message-State: APjAAAXi3yq/dAw/OFMPvLBqJtaZxfK9ciZ1BSAq0HG54UDaOoOz17VJ
 BrYpeLnN5IVUTTS0YVedGJ6oRN0pWPT8jinRMEg=
X-Google-Smtp-Source: APXvYqyVBdLYY9rOvuzFO8SIGfweIFZgDDb91dINNZAADiab7F/YI/FhK8JD/DNqW0aHTRw85VDAH223PiIJmbLw2pw=
X-Received: by 2002:a05:6808:87:: with SMTP id s7mr3925894oic.88.1565124756844; 
 Tue, 06 Aug 2019 13:52:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190806140135.4739-1-anarsoul@gmail.com>
 <89402d22-d432-9551-e787-c8ede16dbe5f@arm.com>
 <CA+E=qVfh7mirJhRsDTeuAVgG55ia936uFSFVKR0N5Pn4GCF1UA@mail.gmail.com>
 <E1hv5vZ-0000jN-M8@stardust.g4.wien.funkfeuer.at>
In-Reply-To: <E1hv5vZ-0000jN-M8@stardust.g4.wien.funkfeuer.at>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Tue, 6 Aug 2019 13:52:47 -0700
Message-ID: <CA+E=qVdHOtebR6xjpwTY_Whp0cHLtv82YULmxLPSEzdLN9TnVg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
To: Harald Geyer <harald@ccbib.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_135237_840849_D6623126 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
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
 devicetree <devicetree@vger.kernel.org>,
 "Jared D . McNeill" <jmcneill@netbsd.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 6, 2019 at 1:19 PM Harald Geyer <harald@ccbib.org> wrote:
>
> Vasily Khoruzhick writes:
> > On Tue, Aug 6, 2019 at 7:35 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > >
> > > On 06/08/2019 15:01, Vasily Khoruzhick wrote:
> > > > Looks like PMU in A64 is broken, it generates no interrupts at all and
> > > > as result 'perf top' shows no events.
> > >
> > > Does something like 'perf stat sleep 1' at least count cycles correctly?
> > > It could well just be that the interrupt numbers are wrong...
> >
> > Looks like it does, at least result looks plausible:
>
> I'm using perf stat regularly (cache benchmarks) and it works fine.
>
> Unfortunately I wasn't aware that perf stat is a poor test for
> the interrupts part of the node, when I added it. So I'm not too
> surprised I got it wrong.
>
> However, it would be unfortunate if the node got removed completely,
> because perf stat would not work anymore. Maybe we can only remove
> the interrupts or just fix them even if the HW doesn't work?

I'm not familiar with PMU driver. Is it possible to get it working
without interrupts?

>
> Harald

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
