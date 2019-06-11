Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F30418FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 01:35:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wEpdJvj2kKwUmGdMRKojIYwoc73kXkN6WAwuqqfQOqU=; b=XjWD52WiuuoK6R
	ittEgGn1UuIoqVzjEaTh2r9KF2IED5HoDAgoi7wxXykCO9SPh4ec/KmMbAzsVoK9Y5+Y/zA6AHCsL
	dE6Nhn0PZHDePu3NuqCoaUHj23Op1rQ+6PVVrRVwm8EhtB5GUtbNwVEyhtl9w0GV4Y9f9fgM70qTA
	TjZ7l4vpLeNlUDgPT0m6Ts0LgVJaYeXcM5IIQal9JlQ+7bEiSCADtKqKQ/IncOkG0LpOrKmYVFDGr
	QkFSXQXA72DKvjyoPnQix2/8fsHidkwQEGGwurimydYW1cPwQUFFXVrPaVUh+ey8UdfbSLQeO+35P
	7QDe6oi5aDUEAH/oioMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haqIL-0003a5-3a; Tue, 11 Jun 2019 23:35:13 +0000
Received: from mail-it1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haqI8-0003Ln-GB
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 23:35:01 +0000
Received: by mail-it1-f196.google.com with SMTP id m138so7868420ita.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 16:35:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=m12BEF6aoD8sKKRDjXmfbkhom6wFfuNMaUfEfaPontI=;
 b=hkbaXOU5gi5MuaUqbdLZakJlMG6t7Rlj68BOQ/WZ8Ewm5ToCzTlRnzAuJKIg6L93JD
 4X1aTf3krMWzdI61rbvaI5l1LkIYkUoYsT6PxlPPJX/jjlLn5qwnn1GS2D/ZYzgLaKsd
 Agr/+RMhkEhSTzrbIczQxSlKIPEXaeK1v44ml3eXqwHHuLnLL6umqkHVnm+Yt62VK6p6
 N1tgFl435yDg8W7NgWg4dQTcCwmlW6wnz0BYi9th9uyebNMOSomXXl8tgKMOjF5VWAAY
 rBnjVDG3p5PlYNOMijCcg1afFUdZsCjx5NNx5QaTkE7nqp+xaVP7ONzZkQxjNzK/OnAi
 CSQA==
X-Gm-Message-State: APjAAAUoqvHoEm3kOdYEpyTRidN2p9beLa1Ux7RGeY1tp/EEpJ23kJTp
 sm1KLVqXMNrJs141Dnb4IiGy4l8=
X-Google-Smtp-Source: APXvYqye7O0X80ue+IvTi1olrle0IaMnhZvFUdN3Pu38l2XXIz46k5UuwXpGJfD3KkSIfO+KTcA/TQ==
X-Received: by 2002:a24:4754:: with SMTP id t81mr21499151itb.106.1560296099482; 
 Tue, 11 Jun 2019 16:34:59 -0700 (PDT)
Received: from localhost (ip-174-149-252-64.englco.spcsdns.net.
 [174.149.252.64])
 by smtp.gmail.com with ESMTPSA id q79sm2082456itb.15.2019.06.11.16.34.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 16:34:58 -0700 (PDT)
Date: Tue, 11 Jun 2019 17:34:53 -0600
From: Rob Herring <robh@kernel.org>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Subject: Re: [PATCH v5 2/3] fdt: add support for rng-seed
Message-ID: <20190611233453.GA14130@bogus>
References: <20190527043336.112854-1-hsinyi@chromium.org>
 <20190527043336.112854-2-hsinyi@chromium.org>
 <5ced598d.1c69fb81.dabd8.339d@mx.google.com>
 <CAJMQK-i0z1EHCMK3eTya+SmK6GD_C4Ljvb7BHvsaMWLDxxmwMg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJMQK-i0z1EHCMK3eTya+SmK6GD_C4Ljvb7BHvsaMWLDxxmwMg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_163500_540005_8A5120FF 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Laura Abbott <labbott@redhat.com>, Yu Zhao <yuzhao@google.com>,
 Kees Cook <keescook@chromium.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 lkml <linux-kernel@vger.kernel.org>, Stephen Boyd <swboyd@chromium.org>,
 Jun Yao <yaojun8558363@gmail.com>, Miles Chen <miles.chen@mediatek.com>,
 Nicolas Boichat <drinkcat@chromium.org>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 06:59:11PM +0800, Hsin-Yi Wang wrote:
> On Tue, May 28, 2019 at 11:53 PM Stephen Boyd <swboyd@chromium.org> wrote:
> >
> > Quoting Hsin-Yi Wang (2019-05-26 21:33:35)
> > > Introducing a chosen node, rng-seed, which is an entropy that can be
> > > passed to kernel called very early to increase initial device
> > > randomness. Bootloader should provide this entropy and the value is
> > > read from /chosen/rng-seed in DT.
> > >
> > > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > > ---
> >
> > Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> >
> 
> Hi Rob,
> 
> Is this series accepted? Or is there any other related concern?
> 
> If it's fine, I also have sent a patch for updating
> schemas/chosen.yaml document.

The kernel change is fine, but please put the documentation change into 
the schema doc (in github.com/devicetree-org/dt-schema) and don't modify 
chosen.txt.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
