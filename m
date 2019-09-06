Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6575FAC007
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 21:00:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qTatuplUfdHwMVE/gp8JwhcrVxCeirrd22WHQtagG/M=; b=FaZmwgVfRMh5nT
	X8j0cQHB5z44QhF8+WZi1VWexazIFclA5zuTIro0osOWIyCzHbG16/BjJgbkCHqph4UL2cEvUreEY
	Twml7unanDchn7DcZxumHaeaIkCEMqJ7a8jfDuXoYNjoELxLCgvttlPQfyTpDOV9v2UnHB2sJ2YdD
	+9f3/kfTySse8ffdEzMtJQCyhS735Iha85u0yDiwSl3IZQlGnWh4+GsUzEVpx4euNGT0fFfn8jfOP
	PNXt0d87hROfNo6MH6PsKDqYUWZZbU8/oJ7qm7cRSUWWbr8QAb2GSrCRhj7X+J9lSq32Dg42AXfRd
	19oT1xwMpX56Z0mvaWLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6JTI-0005Ke-23; Fri, 06 Sep 2019 19:00:36 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6JT0-0005Ea-AM
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 19:00:19 +0000
Received: by mail-ed1-x541.google.com with SMTP id f2so880430edw.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 12:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LrjX9gD4VIauKO9U5B9UI5Q0lIvPgAd5pEYZKOh182w=;
 b=E1edasldtuMUUwkDEeQ56lGV0qKHCc+ezSSI7PED72qKwm8givcI1UCheonDF+81rU
 DZOhA3PS5YT2Z+lRz68MmcNRorzwGoqu0KRyVhZh73RM5K5J8t3dDYLms/P0kTbvPtec
 7X0KIeg9UYHi7xjL3yLM/8gmOM3hLlwYmIHLEfMReHliOIdzcdvn9E3msksKAtQuGev3
 ToWGr15CVcoDF6P+lIE/dr4tO9E1aQqZPQUs26CFG4bEXIw89ZNUvP34ZpJRGdaObYaM
 GKhb6NJJySchkPl9O+1tmmIYBIgS1VoHFBQ5g7ReLTaEQvcU+kkN7J8ip6j/ozSYTNfg
 lfGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LrjX9gD4VIauKO9U5B9UI5Q0lIvPgAd5pEYZKOh182w=;
 b=rmXrPr8643aTdPfa6/+vq2ifKNzWMvb8W+SndpA3N3hBFSUJMfaaWhI0biiaiHa10y
 Duk9y8HgRBqX+oyOr+ZosnNLSUEnAJs83f8OcfcK5SOzsehH6MiNmhUZMOzGWS8nEgAP
 hpNmLE3N5mraD1IRaMvYqf4MMAZx30SvVGwwGcpMirBEQ2TjvD0bfKfXxkJUZwXpcWx+
 1zMuvbMjzdWaqN22DbJYOwUVnGSEvmDZv0NXWfnKrPyLV5belaIVX5pMiFojeS0KRUKL
 zPDrEPjG4ZDP7PwnNwFgEgHNy2fSkYJ6kVX2reU1RS2queVUbJSfFfGysVSp58iwcKtF
 7+xQ==
X-Gm-Message-State: APjAAAUJlUlGDOgok1y71vu4SOyldwz2O2d2H+KjNdJu8Azpm4ZHmtlL
 pYwF7pp3hx3LlwqQv1vSuKlr4ahVRIiYKIiJbzelfw==
X-Google-Smtp-Source: APXvYqySdTqXeFzwKDdERIUW6O7satVNK6R7jE0J4FvXnhmNRURLOur3h+Xuy9x0CmE+4eeQW35qwli0Re25EqwHAFE=
X-Received: by 2002:a17:906:bb0f:: with SMTP id
 jz15mr8571853ejb.264.1567796416697; 
 Fri, 06 Sep 2019 12:00:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-10-pasha.tatashin@soleen.com>
 <2d9f7511-ce65-d5ca-653e-f4d43994a32d@arm.com>
In-Reply-To: <2d9f7511-ce65-d5ca-653e-f4d43994a32d@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 6 Sep 2019 15:00:05 -0400
Message-ID: <CA+CK2bAkimTmsj-iGVq6AkMMNAb7+J5wm-Ra-qovS+3Ou5j33w@mail.gmail.com>
Subject: Re: [PATCH v3 09/17] arm64, trans_pgd: add trans_pgd_create_empty
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_120018_373247_132CB52A 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 linux-mm <linux-mm@kvack.org>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 11:20 AM James Morse <james.morse@arm.com> wrote:
>
> Hi Pavel,
>
> On 21/08/2019 19:31, Pavel Tatashin wrote:
> > This functions returns a zeroed trans_pgd using the allocator that is
> > specified in the info argument.
> >
> > trans_pgds should be created by using this function.
>
> This function takes the allocator you give it, and calls it once.
>
> Given both users need one pgd, and have to provide the allocator, it seems strange that
> they aren't trusted to call it.
>
> I don't think this patch is necessary.
>
> Let the caller pass in the pgd_t to the helpers.

Ok.

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
