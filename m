Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D35EE1C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 15:00:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rcRHDDjkfvVtyFNyXy2vDCvCEMqv62y72rHl8baO6KI=; b=o5Tio+ofZj7CH1
	aBjTra8XeAF2yBmwOWwM+dlQjvdXMN86F6ZwMOcP1kVpotnMG6qKvEj8lFhBWUYRTpDPZi0eVU9Lj
	rvrm5KqokhqPe8GMtCre1z6UPRSOvae6Yc+8HW5kn6OiAa5CEENFszkqz+RZINSNUZHNBmmfUnZGV
	m2T/2qGpwwtnMmBa6j6zxpDkevJNOgp1L/FEjwTG/M6fuUyrCoiKLCO98jVY6NZ0hHIWgKOSvaQOa
	kStvnvM7sZJ0i/kEGie2WS0f46HA+RcHNXpmU252TjGorLGUgBs5vGwN4MBhMAzbGgEaqb94GdODE
	2rZEb+soZm76MqeTbbDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRcuI-0005zs-LI; Mon, 04 Nov 2019 14:00:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRcuB-0005yz-I9
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 14:00:28 +0000
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
 [209.85.160.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 68CA9222C9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  4 Nov 2019 14:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572876026;
 bh=OWbKtK0i0fpZ7HMq4IWDZ/zHR1wQIHsCjhclNVqI7cs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=L3F9qVpuKwq2k4DJhdeBUeaZDrY5/2BO9ZEILgx1UqbvBX47zpfteH8Riw33D90lY
 FK87rhNlLQL0Nv0Ze8GAJR2IUvzOLk8xM1+a22zySFweu+8rNFlQSXWknbwA5WDoLd
 N8cMt0+CaX99DaLgV9Pq4rTimFFfmAXLCuvpqk+U=
Received: by mail-qt1-f174.google.com with SMTP id p20so5739133qtq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 06:00:26 -0800 (PST)
X-Gm-Message-State: APjAAAUXjOtG6egkuTME6+l/zd54qbQc/ykoj/1mJMJE4uj4YN7VpCpo
 Fl0EX09Sp0pa2nNmX2vojUopLDWk7aemp/OzJA==
X-Google-Smtp-Source: APXvYqwC/UsXG1zJ1xc8CR86GG8c20fgOKNAVt0QWyGvdkTztw6vTdeoGSWn0GfCtBbRQCyxI47fJxmWk+2G9rlJau8=
X-Received: by 2002:a0c:d2b4:: with SMTP id q49mr21523114qvh.135.1572876025475; 
 Mon, 04 Nov 2019 06:00:25 -0800 (PST)
MIME-Version: 1.0
References: <20191101061411.16988-1-yamada.masahiro@socionext.com>
 <20191101061411.16988-2-yamada.masahiro@socionext.com>
In-Reply-To: <20191101061411.16988-2-yamada.masahiro@socionext.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 4 Nov 2019 08:00:14 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJbmFd5wZ0RCP2baqv-bjWwzaJ+hLqtGeYjK5LPJ54dXA@mail.gmail.com>
Message-ID: <CAL_JsqJbmFd5wZ0RCP2baqv-bjWwzaJ+hLqtGeYjK5LPJ54dXA@mail.gmail.com>
Subject: Re: [PATCH 1/3] libfdt: add SPDX-License-Identifier to libfdt wrappers
To: Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_060027_620152_9A738B5C 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 David Gibson <david@gibson.dropbear.id.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 1, 2019 at 1:19 AM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> These are kernel source code even though they are just two-line wrappers.
>
> Files without explicit license information fall back to GPL-2.0-only,
> which is the project default.

That is true and these are kernel only files, but given they are just
a wrapper around the .c files, maybe they should have the same
license?

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
