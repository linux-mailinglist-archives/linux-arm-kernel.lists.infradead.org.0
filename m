Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCE812A257
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 15:34:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ACBczuQP1Y/LOJFiqq+LBBUG9Qzc4zIDvcMQm8aMwhE=; b=MfOWYbExpyOnwO
	eVhdgOnw9DAbtufpYAhfLX4vJDYdcF5XWSiRwmvomsayadvsN2mNZ2UFi6z/Fv1rm/z69+oixzhbh
	RDknbbrHDD6PFWDfkkdAd2graz3eXQwLcIAok03wlpFVC+qLu/CCHgHqxZMfhIZ/Iy0YJsxI1xZks
	pCJmCuVZMymPCuTjepGhaFXwwn4WKBIQVgTGvwNOfmuN2tFdEHUZHoMhJ5e3HFkCOikVpwldzyvzo
	EUQOqCC/oXUkMksKc/z2tej4cdrnNkCeMPLxVfR8b2WnRN7U6FP7Ts7o1rBKsHZaoIbZ3sFR3ODKa
	uTSGJyJdpc4OZYOn1/sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijlFs-0007yJ-2v; Tue, 24 Dec 2019 14:33:48 +0000
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijlFi-0007xt-IV
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 14:33:40 +0000
Received: by mail-lj1-f195.google.com with SMTP id u1so20959111ljk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Dec 2019 06:33:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KPGZel5egxUTitPyz8859YreY0rqMEYVN3LEfGWGArY=;
 b=l4EqAJ4SMM/TTjqnAD+RZSeXqzbEJpb4XS4bpg3nPbZblaUhcepVg6e/Sjb+rba0F6
 yfNEr08RBK4tbg26y80OZJaB9l21Z8YTYLgsypNiLPWxkvoOAGDstN2GkOLL/Oh17pQK
 m9MxlgUlh2U52Z/b3YWtcYV4enq5rZv2mM0p6z0oCfER1F9pbL3pXmaXaMk13rbo9w8O
 SwrnEQk3N2HYb5U8g+etIZw4CS+Ol8QXSz8tbw55rxEXkOwFSa1DyMEBybNRm38W5gwx
 xEpeREdldS1Lq22uyaBW4GB2ubBaBtMao2IGzb3dqIIL2ZNJAO3feYNYwyxqgDrC2zMB
 oO9A==
X-Gm-Message-State: APjAAAWCcgbY2304VoQwZCu3LaVy5fxzrGRr1oL0gFkh6Ztj3VRhk9fQ
 i6ZcLd3nBPxRvPJAnNqrdJ9GDXwOsPLGAZRh/9q/yStI
X-Google-Smtp-Source: APXvYqzuaeGreMrWFNK73+Z5aaV0f3ay2vDj1XIs3xBZ2cNLsfs6UqLARsLT4D52vYwkhpz8PpPL+lsfmHCsUFe53No=
X-Received: by 2002:a05:651c:204f:: with SMTP id
 t15mr21645904ljo.240.1577198015769; 
 Tue, 24 Dec 2019 06:33:35 -0800 (PST)
MIME-Version: 1.0
References: <20191218111742.29731-1-sudeep.holla@arm.com>
 <20191218111742.29731-8-sudeep.holla@arm.com>
In-Reply-To: <20191218111742.29731-8-sudeep.holla@arm.com>
From: Sudeep Holla <sudeep.holla@arm.com>
Date: Tue, 24 Dec 2019 14:33:24 +0000
Message-ID: <CAPKp9uZznwOgpm=CEMMUDFvHVa=jsmG0-fd4q-_=c_d3HqbKTA@mail.gmail.com>
Subject: Re: [PATCH v2 07/11] firmware: arm_scmi: Skip protocol initialisation
 for additional devices
To: linux-arm <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_063338_611160_E73BC3F8 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sudeepholla.maillist[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Cristian Marussi <cristian.marussi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 11:19 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> The scmi bus now supports adding multiple devices per protocol,
> and since scmi_protocol_init is called for each scmi device created,
> we must avoid allocating protocol private data and initialising the
> protocol itself if it is already initialised.
>
> In order to achieve the same, we can simple replace the idr pointer
> from protocol initialisation function to a dummy function.
>
> Suggested-by: Cristian Marussi <cristian.marussi@arm.com>


Hi Cristian,

Are you fine with this approach ? If yes, I plan to apply this series.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
