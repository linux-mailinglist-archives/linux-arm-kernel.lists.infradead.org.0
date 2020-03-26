Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F984194AF8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 22:54:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z3lJOdnSWTXef83DcWCQjzplZGZCko251VU/3YK7ypI=; b=JB/8EaLi5pJpqL
	eQbWzsjSJScvY3iANkXyqvAVdeeuKHMdak+hFGkl8DX8oytydRhkRCjRf7zu1nM5fZUlUKqtKyXGX
	XZ4Jwd0h816piZEg9D8CdMNkM13cHXXA+1hSnNV7xzW0uVjoxGvCfb7AwIrfOeuMEa0gw3O8aHOPI
	O5ArE8DOK6jEOa+jdVZQT9tjAxDzq6+cTXZV826ASc0Il7hfV+FLgao4jYjJ9nZkTZ+k8MNyYfp2X
	DHKYFCgrFn4ZeG30jyfI0YWGzb/QaBzW83OyckvD2xAcJBTy49bgDEYFd5dCwtsavQOJgYNTXU2aW
	A4cGOoI0z3jirJHTlV3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHaRs-0008Q2-8O; Thu, 26 Mar 2020 21:54:00 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHaRk-0008P0-KM
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 21:53:54 +0000
Received: by mail-lj1-x22f.google.com with SMTP id q19so8072165ljp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 14:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EG9Wjngpq7CvZlPWe2NkT+/s60jK0t/aWNR8xDge2bs=;
 b=lV5mcdDXYJni5n1xuqZi3Xe34+EX2ZcJIS94yv2nBkPFyW5BY1fp+EOyVSNGjwEOth
 TIZXdhBHKrU9GKmvwzDcOVwjdwQMRXdAVvErYJLDQWFj6wkzZhdYL4EfYtYAef9h7lG4
 WhjGiixy47UBZPJB6PEKXtqkWjtABdaMtWcn7OejGDqRq+hgeeagSBuEvldtuCYi+zlu
 WHNc44kJvJMtEEFfxHfSnEq/H75RW4MnZQA8+NvAuYegvNthXzuil4j1B8G7bmTEKr7+
 fSw6WYiwGUiQCXvLm6O6JjHkDHfBpfK2pHgxlNv30RX4o+VQxuq0AbmzUs3i9gVbZz3p
 Nc7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EG9Wjngpq7CvZlPWe2NkT+/s60jK0t/aWNR8xDge2bs=;
 b=cvVuhpza7FelF5/H2lMBUKsqIxPBUjs8rSnJL9+QIoPrMxfCJ6Ss+jsNafIWcFGDB7
 2UWsJzW2WLG0bf32tuhTrqm2t+0Rfmt585GfAeGQ1x2GzN0/gBE6BOUytWgz6TxsEQMh
 dkny9Fz7rhNsOSnT41vqmF/ehTS3IVzSYc25fluSMQKpctwuwcDV2hHM8FcKzlH9QrbF
 OpzNCmYx5N7hpX8OsfGvAaN+2mMT+K//rrj3ZAwxKC9Sf7OHGCJgH0Kj8dq51k5XCcl/
 e2KdBzTH6gWkiyj6jlykRGR4ptk7LatJwX2tBCbM9L53c25ddXaT0NYaYqY7eZ+pQAhX
 SPBA==
X-Gm-Message-State: AGi0PuYdBi1uM9jrDqIQIqWeL2uVFVhxucSVuwU+ehcSlC6A+S6f4r8L
 ylqV21mNNj8kLvZSRevEOq++2JAtbSKiVuh/MxdDkw==
X-Google-Smtp-Source: ADFU+vuVBrNeERCnFZwt1QzLIr98vusmyFNx19r+sP4/gLuusY9SQnQMVC3Ep+NwKiGiDA31SiiQUuimz4UhsWJHS6A=
X-Received: by 2002:a2e:a412:: with SMTP id p18mr6685754ljn.39.1585259630625; 
 Thu, 26 Mar 2020 14:53:50 -0700 (PDT)
MIME-Version: 1.0
References: <5e7cdaf9.1c69fb81.7b511.491d@mx.google.com>
 <CAK8P3a0eRw1rn3QzsO0omJHNJ8ftNFJkixBmdmUTGxenDZbZVw@mail.gmail.com>
In-Reply-To: <CAK8P3a0eRw1rn3QzsO0omJHNJ8ftNFJkixBmdmUTGxenDZbZVw@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 26 Mar 2020 22:53:39 +0100
Message-ID: <CACRpkdajmVJTmkDjxyKzPW1N58CAP5HsDrc_zZozfqi5OaJo7Q@mail.gmail.com>
Subject: Re: ux500 warnings, Re: soc build: 52 warnings 2 failures
 (soc/v5.6-rc6-845-ga9295ff5fc977)
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_145352_672246_9647B22B 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Olof Johansson <olof@lixom.net>,
 Kernel Build Reports Mailman List <kernel-build-reports@lists.linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Olof's autobuilder <build@lixom.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 8:29 PM Arnd Bergmann <arnd@arndb.de> wrote:
> On Thu, Mar 26, 2020 at 5:42 PM Olof's autobuilder <build@lixom.net> wrote:
> >
> > DTS Warnings:
> >
> > /build/arch/arm/boot/dts/ste-href-stuib.dtsi:203.11-208.7: Warning (avoid_default_addr_size): /soc/mcde@a0350000/dsi@a0351000/panel: Relying on default #address-cells value
> > /build/arch/arm/boot/dts/ste-href-stuib.dtsi:203.11-208.7: Warning (avoid_default_addr_size): /soc/mcde@a0350000/dsi@a0351000/panel: Relying on default #size-cells value
> > /build/arch/arm/boot/dts/ste-href-stuib.dtsi:205.6-16: Warning (reg_format): /soc/mcde@a0350000/dsi@a0351000/panel:reg: property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)
>
> These stick out to me (more below). Linus, have you seen them before?
> I just merged your ux500 DT series, which may have introduced the
> warnings (I have not checked older build logs yet).

I think Rob recently turned on W=1 on the DTB builds so this is a bit all over
the place and we need to iron it out step by step.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
