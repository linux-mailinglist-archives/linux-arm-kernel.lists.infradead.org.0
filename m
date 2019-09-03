Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB13A6990
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 15:18:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XDVYdQkv/X0vq04ZwDLNcFGAH+5PqF7w8XQJObwDb7E=; b=IS635fMqPpa1ye
	TSg6c5G3N7Y9TEpmrfIQ5UUSWxBh34ulzDc+jgzXEk1aEQjBLW3QonuynhS8Dbjq5zUC2Xoi6wIaM
	8KgyXFMcYESJT5CeyRKoW/sh4V+3gKze1nZhznEg5nO6J70qtiONp7mnV+8wi0b5pdg7bheKYs0nJ
	y079mbPQ+CqFtakIAgmSnpnBTtwCPjfFnnqRZYsFx7PKPjpb6DrzzDPagJ/G3ssPdEur0FuCyojYc
	KP7DrjlZKnI9l208gp/qFeaDUx3fsZpvg4f7E/GAQryX/cptQTyNPQ4skibx4nRz959oOGBO996cn
	MTYFyK9FaHzX1m2l0O7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i58i0-0000nw-8O; Tue, 03 Sep 2019 13:18:56 +0000
Received: from mail-qt1-f172.google.com ([209.85.160.172])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i58hl-0000mR-NJ; Tue, 03 Sep 2019 13:18:42 +0000
Received: by mail-qt1-f172.google.com with SMTP id k10so9588543qth.2;
 Tue, 03 Sep 2019 06:18:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q7XhjTZ4U0XBtJrqkQT+4ZLcImKzdeX0KOpyla2R6KQ=;
 b=dTA9nZ7fRULzA6Y3YpWj6qpre3MIhERgYDBFjXz2WYEIBd7MiiY4BY3vrH8q3zite9
 OqJkdxNkCyJsxZ+CjLW1kteFjMR9rgKSa4w65GOLP5kJQz/tuUiOZuMMD3ofe7V4wyks
 33ZjD9Tt+JoVtCsR5ovogntzIBPC5bTZ0cBOfwCG6vh+8yGxzs1x+kK+H/g+NQgNwn1E
 W2Ebe3dOc1sHLEYGxZQ6G/2yujJLTxAr8P0/xcOp7MdCbBjSk2Ymmtf+NMicGSZEiG3U
 CrHoYz0hnHln6HoKTjBJ+6bG4pU5dq/rMuRSDRERLE1JrF/Bb/knxkWhOTZ6HiO0vPrj
 aZcQ==
X-Gm-Message-State: APjAAAXjVAn11NK/aXfq0s9kcebtfz8C0dqwCiaYL7kxbcPbhtktc3mC
 PQc9B25X6A6DGFrpY5XQsB7m6tfDQoFUlpxsgec=
X-Google-Smtp-Source: APXvYqyuI1oJ3O8gqJRhCXF6QwGzOLi0zmr7KqS8uEM1YSyR5vBgxlPkU2BMzbYpcKSdIg5Id6wMyw53RsJZERF3Wv4=
X-Received: by 2002:a0c:e74b:: with SMTP id g11mr21496469qvn.62.1567516719320; 
 Tue, 03 Sep 2019 06:18:39 -0700 (PDT)
MIME-Version: 1.0
References: <7hr25fbi4v.fsf@baylibre.com>
In-Reply-To: <7hr25fbi4v.fsf@baylibre.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 15:18:22 +0200
Message-ID: <CAK8P3a2yWX=PiwdOKqTB5A8KiAwzj5mqaGe0J=VFbjb+1a9+XA@mail.gmail.com>
Subject: Re: [GIT PULL] arm64: dts: Amlogic updates for v5.4
To: Kevin Hilman <khilman@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_061841_762693_7ABBF42F 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: "open list:ARM/Amlogic Meson SoC support"
 <linux-amlogic@lists.infradead.org>, SoC Team <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 12:13 AM Kevin Hilman <khilman@baylibre.com> wrote:
>
> Arnd, Olof,
>
> Below is a regular round of DT updates for the 64-bit Amlogic SoCs.
>
> Of note is a set of clock patches I've merged in from a stable tag
> (already merged into clk-next.)  This was needed for some new IDs added
> for the handful of new SoCs we've added this cycle.

Ok, pulled into arm/dt, thanks!

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
