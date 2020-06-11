Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1201F6CB6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 19:22:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=veL26qXwaTGh8eZw84OcDSzFGC0WuIEWMCgtmYpwhTA=; b=c+JFi6g0cl77is
	0c2RjcDHUfWHmPG+KVRSDkTh76Es+lbcyT3yCokfwW3fdmoANt2A/tbBxTZZxKr6WlSS73bUuqfL6
	d82dvqLPLGJFFmBDvtJ7+rNWGYvgdLKygFHd3gSAxt8dn29m+b1aVR/iStulwakMEEz50QjIyLzHT
	FRritERxey4nb2Q3OSrnlAxtc5pDhx0gSsr3CnLuVbZG32JZDWDe7VqmmYFGyyvLErDg0uj/WqMGv
	MxQC/Qv3BxgYfarSznzfF2YWtlCLSyBlZqDpmWL+Fe1Q/xajm/JHJp6NRIDywZW2qe9uMQVodQ7n6
	KSGYOyItD8ANvU86fIow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjQtz-0007Qk-Bq; Thu, 11 Jun 2020 17:22:07 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjQtq-0007Pa-QA
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 17:22:00 +0000
Received: by mail-il1-x141.google.com with SMTP id z2so6196252ilq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 10:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QVX9ekaPnYdKFQialmA9pWxtm/sfM+PeP6v8bCSO494=;
 b=gidkRD7SppUfSRmxawkbWK+atX4gklk6gNZn1cuQDWtfeHQZQKD4tNdZxUPmT0Vvcc
 bHX+nkBEw3pyV4jsZ1tTKKTSkQqpkVLbXnXhQbqBR9TWACUPuoWYKlhaAaJJd71W103p
 F13NHG1IOn99hBN5/iVfSPvoMRHW8DmtPtQTwUEvriTtOMxNxyvTZja0FLezXXP8Gfhm
 2npeJE+YpCmWgBR/cibv55+vBJHwvQNbLohd2V/103ncFjmibpTA1FQch4TyrpKN7R9Z
 CjnnYXFZvV+H6wdL8YRtfAfsnTDMfMWu5bg9qNoH2N3ZZYJ25UiwegK/Pnd+NWidA495
 EZHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QVX9ekaPnYdKFQialmA9pWxtm/sfM+PeP6v8bCSO494=;
 b=dwu/LDVKIXYOMMTpp/8bRHAc7XIuOwr9YSHWAbYrp8LGrXNbY0gjTstJ1Ffmqk4eQe
 +CtZJBKhbrCHVTulO59+ZSZLnv9twhuYUbFVsI5d/znINNS2U+mGc+H0Gs9dZHoGEopO
 1VGfApnzfLW0Vvm1b3/eJmanYhP9Gu29EB+P5JvzataHtq4SwLuswnL6sLPTbcYh0pp+
 ZTh5zdugPt7S5/luxoEj42SZZ7FMMe3an7NnYwKt0bD7Awl46BxQFXGHZOSwlSsaSL9t
 ikgTb1i1AZMWejmoqg9o5pN15OpfH5+ywmc25KeElmkZq6DO9NdEWHg3BVWlN0FfjHEb
 vpAg==
X-Gm-Message-State: AOAM5307Dyv2rnGW2hKNk9caUznD1FyyRciYtM8WaIMmwx0cIt8rFAN8
 jQCRxoLzBzhu56gbk1VE+t7iAtScIx2jIN/beTpYUA==
X-Google-Smtp-Source: ABdhPJwMwiPz2AvbaN0QcSizQNaTy9hvAaHkh2ILfrU+TA1r5OXgR+xwRubIIsb1R9nYHi8emoS+8EIYAGrwvMNtAHw=
X-Received: by 2002:a92:5ed3:: with SMTP id f80mr2410327ilg.33.1591896115642; 
 Thu, 11 Jun 2020 10:21:55 -0700 (PDT)
MIME-Version: 1.0
References: <CABb+yY1q3fTJkF0zOBJ6y8u-707-tVax9Vn_TR=vgq35=7j83Q@mail.gmail.com>
 <20200611165612.GA1225679@bogus>
In-Reply-To: <20200611165612.GA1225679@bogus>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Thu, 11 Jun 2020 12:21:44 -0500
Message-ID: <CABb+yY1B0X-V90oJR_H2_VwbV9T=kLJpF+qnjbmLCwUtteswOw@mail.gmail.com>
Subject: Re: [GIT PULL] Mailbox changes for v5.8
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_102158_865110_5F3F9152 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jassisinghbrar[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 11, 2020 at 11:56 AM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Jun 10, 2020 at 11:10:56PM -0500, Jassi Brar wrote:
....
> >
> > Sivaprakash Murugesan (3):
> >       dt-bindings: mailbox: Add YAML schemas for QCOM APCS global block
> >       mailbox: qcom: Add clock driver name in apcs mailbox driver data
> >       mailbox: qcom: Add ipq6018 apcs compatible
>
> You've dropped the binding change that breaks 'make dt_binding_check'
> from this PR, but do you intend to drop it from linux-next because it's
> still in today's next?
>
Yes. I had dropped the offending commit at the last moment.

> And really the above commit should not be applied until the binding
> change is, but fine.
>
I made an exception here because I wanted to make as little change to
my PR as necessary. And it wouldn't cause any regression - the new
compat string has already been acked by you.

thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
