Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EF41FF69
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 08:13:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a9TSR7h4aH9cHu6xESZADOKk1uYz6Wh6z2LZ1Do00jI=; b=DrVKngACOlosj3
	p400aCqxy8YZbOw9MSXe/dfX4XZV0AzDDHiRuopRHjn4bS2Zs85oIBbhBuX4x0axJ6nC0WuHwwSxX
	rZZHU/irX/Yhajgdc7o2X3rlL4ZJbyy9JwReYMzRcNGM1AEduTS0RUeW0+T6ivZ+F4IDEQE4tqvTh
	NOIm20002zRWIlLUwo8BIeyiGVOmujweJwPE43pVSf3wnLUWxeAS452YiuGKUltdPf5uH4PpCQVId
	VDO49ra2nfm3kJtGK7NbCUODuYvTHe8v5GlWfoGA31nAyabnbasUO5Eiz6SZk8r+rNHovlv9/nqzt
	7ha10s0YqpvLYDejybQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR9dp-0000xz-EA; Thu, 16 May 2019 06:13:21 +0000
Received: from mail-it1-x131.google.com ([2607:f8b0:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR9dW-0000je-Ip
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 06:13:06 +0000
Received: by mail-it1-x131.google.com with SMTP id 9so4288287itf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 23:13:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1GZapmsQsUqNw2Orj4U/fBYVk1qnUj0tKdK3FtgPxl0=;
 b=H8pPNuZhMmPKxCrKkjeIVzglAwWAceASraWEb6gexNStZoNyeYBzXzzwoPIJzgZUP8
 /U1KtL1IUMHTAz8GGBcWRr63SnioV3WjWO7vscALR7hHpUS4Klz/X9TGkqqKzx/xE67B
 oJ7lQaEebv1Cg81nIZgOoJdhBN5rl3/1cKvpq9VpEoVDQ7IT8bmKgdq61f+zkMaLef02
 EgSL6LsV/rBA7WTI35JGOCDuadBckaji8RpQOVtYwmCgUOLAijtFppBqbwDwLQC494hV
 /df8FJAhuVOSWgCTraQR5yTvo1PituC2n9WxVYHai6lLzFwEJvkHTOEV1bfcWpkUJU5H
 13Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1GZapmsQsUqNw2Orj4U/fBYVk1qnUj0tKdK3FtgPxl0=;
 b=teTfBU1ib6GtISJiTfhGmYyiTBdVPOj+3VhFpMNj6YgZuyaBraNhGGbW45JZ3fD32B
 sk9uZGLZ9kjPLorUej/51jC4K7Bgqa2wIYs9BWEsLcBcxE8FQ2gu1euou6CO0PvAKeL8
 aO9Nx8/5eBvilWnCNvuBOskfDvXNHQSMFstGy0d/OP/X1ULzuzaffZS0O22fJR27YkS8
 McZglpEEVeSPBVVtqQlIiDRFBnqGxCSSGsCNSwNX+Tis+0aRpO6yabY/jZ+Ja8YviWZR
 spPxJiBdrypdCrJrCERnucox8sp3qGDvQ8goFvCiSNdY0VVv4cB5YnLlh9szs11MdPnf
 Y5dA==
X-Gm-Message-State: APjAAAXM78wbjp2C6Z+NY3fEIlLXQWCd3Ly0/4CkSJHU462oL2dNn5IF
 FEMVEpKlk1j2IvNeJiBB1qUFyF4qP+76OYMNeCo8Ng==
X-Google-Smtp-Source: APXvYqyMvqo7lRCgFZLEnGgwg4cWvBczyqMhLPqSbImPI1ySok0Ta+9LmdnJgDFsuowYkwjFhEOGb0BgPhGINh4BrRA=
X-Received: by 2002:a24:70ca:: with SMTP id
 f193mr10919465itc.103.1557987180889; 
 Wed, 15 May 2019 23:13:00 -0700 (PDT)
MIME-Version: 1.0
References: <87v9yw5525.fsf@FE-laptop> <87sgti1j1w.fsf@FE-laptop>
In-Reply-To: <87sgti1j1w.fsf@FE-laptop>
From: Olof Johansson <olof@lixom.net>
Date: Wed, 15 May 2019 23:12:49 -0700
Message-ID: <CAOesGMh8EOkSYFQrDh3QsRD79we16dcnbiw3vMRR3KPqFHmEpw@mail.gmail.com>
Subject: Re: [GIT PULL v2] ARM: mvebu: arm for v5.2 (#1)
To: Gregory CLEMENT <gregory.clement@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_231303_224799_03A4E9F4 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:131 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Arnd Bergmann <arnd@arndb.de>, ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 8:16 AM Gregory CLEMENT
<gregory.clement@bootlin.com> wrote:
>
> Arnd, Olof,
>
> > Hi,
> >
> > Here is the second version first pull request for arm for mvebu for
> > v5.2.  I fixed the coding style issue dtecting by checkpatch in the
> > commit "ARM: mvebu: fix a leaked reference by adding missing
> > of_node_put"
>
> Any news about this PR?
>
> I sent it less than 24 hours after being rejected by Olof because of a
> missing space, so I hope this branch will be finally merged.

Hi,

It won't be in the batch I am sending in tonight, but I'll pick it up
in a late branch. The contents are mostly looking like fixes so that
should be fine. Stay tuned.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
