Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E854BCD5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 17:30:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ktTErP16a6lWH7GSjBPlHiE1nptS7B8zn6PACW4wgus=; b=qdyNoH42NXy7IG
	m5KhWe+jNOj4WS5hCpp6SVoOgIwDz24xQRvmHFcfB9RC+61hKLojN5YrrBBEBWQYIqPtAW17J5H40
	jhp8Wv2OR1wmeO+BXI+ua9pH0dqfD4jH8Egyh1Yau08IKmBI5lUk+x+jz3ewEINgChwYu/hUWjqjR
	MVJ0Csc5Umwy2wGXRW4XFHx95hqbL/Z2ffyMsh0jN/tC1q2MmwXl1aD8iHBByHmOHWSGGy9MdthLX
	eFFQnUJ9IcK7yN4s0aOVHdUNNwui59/tSr30pCn2tZACh1EgWM1WXqDbOPbuj0WCriTkKK/KY+wAX
	7E0jg6JX35oDvQNvTFcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdcXX-0006l0-9o; Wed, 19 Jun 2019 15:30:23 +0000
Received: from mail-ua1-x92a.google.com ([2607:f8b0:4864:20::92a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdcX6-0005TT-N3
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 15:29:58 +0000
Received: by mail-ua1-x92a.google.com with SMTP id o2so10227038uae.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 08:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=p/M/MdVKSBbEyQpOuBlGD0n0hZOgEXMkP9werjym1kU=;
 b=Y7rttnEu4X/xs5P8VoqirKxMc8abp/Ffn2cY4SPGAuTXmywUiodyBNOeT11/Unyb+W
 Nss+BVncGMwlKKiHB+DF5/tepokgRwowzfcj4oYOizwEBahCd/L6WMod8RIDu3vk8IPr
 xBBoYVdNn9wg9Pzh/jw8qdmvZKeTYyI2Q601x56gWhYOiS5GF7eZIj2PpLg13jQsG+iS
 eFOLiEygOCCcTYacS+nukDOXVNntyuKXC16Xt/16YKYSJ5eJio/aDMZNdrMV29ZqJdIy
 viKKAXW7m9MIQu8c0shcS2koFV5+1FOn3RCtImQ9Z3XPpoEYZDzjhJ34D/OLkBaLz4o8
 Qgcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p/M/MdVKSBbEyQpOuBlGD0n0hZOgEXMkP9werjym1kU=;
 b=py8Lzng3jILAU1aJivXon4lA0OST+rvcXt46hfbUBv1uMJkfr3FPiKtz948/f/fgxY
 BpWZY/j79/fZjMRH22RzySoqa4rSk+jdFO131Q6w3+Tly7spFJYmmK7mmDWEZ/jj52aj
 Po3A9L637P1XZnZQpfM6BHdd2lLZhVB2QINZL/PKf+3qzsP8vCfKvJ+kzsxRBvFsiBsZ
 UMPADgye31yLTTgiVAgLZrO5ewx2qqcfXJVr2veCtO6+IFUXyG44Jnbr7Az1Xp+K7Ish
 XiepI+uDsUyapdp7UXOiQFEFKnhPxXYi380h44UxIsuI41TBD2niCW2Y6x6E8AnHutUf
 pEkw==
X-Gm-Message-State: APjAAAWVR1n6ED33UV7LpXhEBG/jeMph9MKYxCI/eE6j4l6p66sLhrr4
 k4hk9+pS5REBwjfzm0LboaBoU564WZa9JmurpZs=
X-Google-Smtp-Source: APXvYqwdunp3E1MkOo+Jv92LDWCZ38UHwuQbzZQi//6yPp05VefWYpDLQVZFpk91w7iw0sBRrf6kaNyb/5fbo3aSgS8=
X-Received: by 2002:a67:320c:: with SMTP id y12mr870390vsy.30.1560958194322;
 Wed, 19 Jun 2019 08:29:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAOuPNLiBA9VjEoG_D2y2O5mKiqsDNW1VZXOk1eWXpGY+h86acg@mail.gmail.com>
 <CAOMZO5BcLaS0gXUPi6oN6vjqagS5yf+rHh+EUjmi-Wi1OX7vqQ@mail.gmail.com>
 <CAOuPNLgEEfDca4aeT1+q8GfUfGzbJ4x6JwGf-ROB1pgpXUBHSw@mail.gmail.com>
 <CAOMZO5BY8JcLNMCRCC_d=emy8HR6kE=dB9f5qfZ=ci_c+Jak0w@mail.gmail.com>
 <CAOuPNLjYhkP_kL+q-ZpiDZMMpOHrU88BFBc2agtnCzXt8dihOg@mail.gmail.com>
 <CAOMZO5ADK1L5UMM9XZetHvmjTvmvUg99G7VPdeXitgpctGLCkw@mail.gmail.com>
 <CAOuPNLhZhgN26rquLQq9zHBct1QxK-7hXAza0xk-0QooPGYLNw@mail.gmail.com>
 <CAOMZO5BsJWTw0nCeUboam4kuKyCO3N_Ch5ZW8k5Y9KFtQBanhQ@mail.gmail.com>
In-Reply-To: <CAOMZO5BsJWTw0nCeUboam4kuKyCO3N_Ch5ZW8k5Y9KFtQBanhQ@mail.gmail.com>
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Wed, 19 Jun 2019 20:59:43 +0530
Message-ID: <CAOuPNLjrAU_C_TUKFMs1d0eGsw=AxuG6d6FhNHtHFwVhfYZGgA@mail.gmail.com>
Subject: Re: [IMX] [DRM]: suspend/resume support
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_082956_828567_2F64B695 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:92a listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pintu.ping[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pm@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Kernelnewbies <kernelnewbies@kernelnewbies.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 8:41 PM Fabio Estevam <festevam@gmail.com> wrote:
>
> > > Then you can test suspend/resume and see if HDMI hangs or not.
> > >
> > By this suspend/resume, you mean "suspend-to-ram" or "suspend-to-disk" ?
>
> I tested with "echo mem > /sys/power/state"
>
hmm. That's what I said. This is runtime suspend, and it works for me also.
I am talking about hibernation:
# echo disk > /sys/power/state  (with some customization)

> > This scenario is not with suspend/resume.
> > This hang is, when we make hdmi as a loadable module (.ko) and trying
> > to install it after resume.
> > In this case, suspend/resume will not come into picture. Not sure why
> > it still hangs.
> > Do you have any clue for this scenario?
>
> I haven't tried this one.
>
> Please test it with 5.1.11 and if it fails, please report.

Okay will check this on latest kernel. Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
