Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBA032B1C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 10:49:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HxhRCr1VljEu1DPFGY7ri5VZ7lXTs0mozrCjimEAcxQ=; b=QgCsF1NGnfiZjf
	2i2WuT5xHOdnjGu7YrWx15g14HAa1Iq60PheCX99FdTt3NDSuWSUWysZ243zEi/bBsbxS4yEmkBYW
	1L/JcY0lT0aKNxyZJI3J2RJHH7gTN7IzROCH6W20a18pvV7veK0PVt/kTgfjpXnuvTE70i6gHV2/S
	2h7ljMGycRoJ+nvqGYgtl44YxKAdWcmtPEsrTQMBWdq3L2U7B8sbJHaZD7vPkZcz6lX+xb5Qmxf/l
	e1fbgJdSJZyO3kj6IShKV6SKJZ7h9P3WugzgOSXEdQ8LFwvM9qE76S5M5wstcDOwg/05+3YyTAQdb
	HKLFE+TwVsZ4LjiZuPgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXiew-0004hf-Q0; Mon, 03 Jun 2019 08:49:38 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXieY-0004Iy-SH
 for linux-arm-kernel@bombadil.infradead.org; Mon, 03 Jun 2019 08:49:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RfaSV+pbk7w6/znlXv1qGSq++xp8hdtnx0rwYlptGts=; b=fHv6gaGxDfBl/N5iWsjaMsyXS
 R9F498QzNmx8Yi2+JoiDbaJD9ngO++7NWazXaYzCCapwYNRjWx/LYQsnhgzJBB+YWJ/qimo7f9ByP
 OBcv6gcVDV+sOjSCZ/tvW1PyRS1dH9DRmdbVNCTCHvF9ObjiN5yHl3FulJP0kMDTB78xQOEk95ged
 ugWYcANY3c/rcYi4fnNbf3rK+bDyo0l1VShbPzfJDr5UtVH5sLYlzWFKpGlkx0GIt5jAOOI/nLgoc
 P1vic12jNS3XaPPvFe5U3+NmXwXsHSXHl1sRHqADEWH6EzticEdOxC1sPwHwFitmBNAy57yNCqo4m
 9Uo4PIcwQ==;
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXhxm-0001OO-TF
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 08:05:04 +0000
Received: by mail-qt1-x844.google.com with SMTP id u12so8339627qth.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 01:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RfaSV+pbk7w6/znlXv1qGSq++xp8hdtnx0rwYlptGts=;
 b=ga6bafZCmHxDV+BcmEwAaQsBBlEZkPFYGOsxhVLqSVdLrMiD8VQTGepUAJnHL2G3wY
 Aji+SLUEIuw0MSIMC3cBG6nJMELOFarVv7dHMqaO1WN8vDLzJlhClRQjA9PX9dYnQY77
 ZTEMJ4wNAzhm4f9EYkjt8OoYi9gVeLbnydEao=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RfaSV+pbk7w6/znlXv1qGSq++xp8hdtnx0rwYlptGts=;
 b=CXMuWQQfM9u9CfrEBE4ZCpHg795ZAmFle0QnitTVt3Xz65JuG+zvhLK5VG5BIHt7fX
 qpaq+0FExAF/1JjP1AyuxjZ9/JA2dWWUX3SzaRK+dnXyzFgwojmQDtHMhKuCNKXDYoBX
 CJtcYepiq1P1Sxak8xPPvWr5jUts7EzQEQaqkdMEWVjfBFEcbtjVQpDjTHxcZwdhbjGy
 0vkT8tXq6PivAqUTBFf5k2clotuE1uaDFD4zx2Iv15dooFmj0RerHXM13DxrJmSB3HzL
 1h+AugenPfsdt68+OBoN0WWHIX7S7SUNC1LmzRV3+x0/vkozPwH+Cf0gjNhxu/aKB1OU
 Fdaw==
X-Gm-Message-State: APjAAAWqPJrgr8bSHrYmo7EVf4lPJ9M+2idkXSlyBuZFMryrtqYOKHtb
 skNeaV6VP/qYjslJx2TmSrf3Zqhp0PhSgWsWJR+dHA==
X-Google-Smtp-Source: APXvYqzsF073EvPFX4Takz8KWZ3H1JBY7zZTMY9VElYM72O2DrEKUU55vAn2In2dlmNN7QDVZrx88Z1tiSxYiMYUjoU=
X-Received: by 2002:ac8:2493:: with SMTP id s19mr1721030qts.220.1559549097905; 
 Mon, 03 Jun 2019 01:04:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190531090950.13466-1-a.filippov@yadro.com>
 <246c9b25-1c05-4c2f-9185-c438c97ebdec@www.fastmail.com>
In-Reply-To: <246c9b25-1c05-4c2f-9185-c438c97ebdec@www.fastmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Mon, 3 Jun 2019 08:04:46 +0000
Message-ID: <CACPK8Xf9emq+rYjT=O8kQfc-oMcKZwAwXwZ1bciDr+R3CyWz+g@mail.gmail.com>
Subject: Re: [PATCH v4] ARM: dts: aspeed: Add YADRO VESNIN BMC
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_040503_256370_C7F769CC 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, linux-aspeed@lists.ozlabs.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "Alexander A. Filippov" <a.filippov@yadro.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 3 Jun 2019 at 01:28, Andrew Jeffery <andrew@aj.id.au> wrote:
> On Fri, 31 May 2019, at 18:40, Alexander Filippov wrote:
> > VESNIN is an OpenPower machine with an Aspeed 2400 BMC SoC manufactured
> > by YADRO.
> >
> > Signed-off-by: Alexander Filippov <a.filippov@yadro.com>
>
> Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

Thanks. Applied to the aspeed dt-for-5.3 branch.

Cheers,

Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
