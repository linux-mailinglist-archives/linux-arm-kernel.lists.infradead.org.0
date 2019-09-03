Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5374BA713F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 19:00:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TfpNdZVGh7/aK0j62ELxWbvlC30/pNDklV9Z3cj9luc=; b=m2M63hv+vyTR8C
	i9xh4JZlZaBZHS4cp0DcO/FOkO2rC5HyWl5LwNfEP9ZnlXmPBJyhyCX0HGSlcyIF+nxi44i61clAW
	cLdNROAcokTy1BA1cwh79URZFZ8XF7+Ma/CfdU0wKKKzW9ge/WjHgM/dosamaRNNRC2YxCjdey26L
	vQA2X1eXMKnsBkDyWUpgKoJ++Mj9TE/U3OO4Ofd6Nqno+I/KeZKDa01wDYJfW60IB4jSEWgCnXqOv
	9czNWBcCDO2BMFSx7/jgTo1hwhGRl5O4d5sn8KrMSZ464YtV9WyTzAB/g8g3hph8BhB9Ai1eITaTl
	aKH+XzFHGfKWuKcL9D+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5CAX-0007EU-Io; Tue, 03 Sep 2019 17:00:37 +0000
Received: from mail-qk1-f181.google.com ([209.85.222.181])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5C9z-000630-Nb
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 17:00:10 +0000
Received: by mail-qk1-f181.google.com with SMTP id i78so15188377qke.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 10:00:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/EIw5WazqKui2YXvUOfv2iXk4WiZVo1bTFmwWu2jynQ=;
 b=EqhhAItbLJuogTjeU8BRU2YePIfNLwNstgn/+3KiBZNalGHapw+SOWpvuXBsku5rp5
 Lkf2dwsAwKrvq2usOy+/w5grJlQN7DuXkaYYUZbj8Xipq75EMApxh6dG+o87MOYBSFdp
 S7QLRnlIlzR4h7zOMW2NqaKqeLEDagVT+gohZWGBlQsf4gULuFfW6jozyrtd20vkktsL
 lCashg1AtncV7jlqoEXuNI0v0Bs5chpCTlKjxd3ctsoBiw3NpNr7OofEMEZ5kdzIDalc
 bf3lSlCc0O57LwMvW6Snall9tDG8LGTm+vTSZ9ae0UnWqhBqZAUKN4oigPDVx6i9dYYP
 HTvA==
X-Gm-Message-State: APjAAAXdCJgt72UcnWVohAp0nKYR9Ip4agnkmkV8+cSUgIHaBUJMVfjh
 FKITJeUdxUdQFNRCw/3obJTjBPUhwXKL+PQjw4JaKQ==
X-Google-Smtp-Source: APXvYqziGEPSJ8G/14gxBqljp3tsVXAARn0AGCViZc2v8JUqVDPhRDcs5SfzGsSpJsF7N3YmJnvGV4hZs9+BeKaMCes=
X-Received: by 2002:a37:4b0d:: with SMTP id y13mr34369601qka.3.1567530002245; 
 Tue, 03 Sep 2019 10:00:02 -0700 (PDT)
MIME-Version: 1.0
References: <CACPK8XdyWzghA0QPDzA_MK5FYwhT5afqDJHNdhc8mfD2uk8MfQ@mail.gmail.com>
In-Reply-To: <CACPK8XdyWzghA0QPDzA_MK5FYwhT5afqDJHNdhc8mfD2uk8MfQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 18:59:46 +0200
Message-ID: <CAK8P3a3zL1oi3dSy4w8DB1v=O_42mEE243y_-0ScV=v=LOmaGA@mail.gmail.com>
Subject: Re: [GIT PULL] ARM: aspeed: defconfig changes for 5.4
To: Joel Stanley <joel@jms.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_100004_931066_10A2365A 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.181 listed in list.dnswl.org]
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
Cc: Andrew Jeffery <andrew@aj.id.au>, SoC Team <soc@kernel.org>,
 arm <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 25, 2019 at 4:10 PM Joel Stanley <joel@jms.id.au> wrote:
> ----------------------------------------------------------------
> ASPEED defconfig updates for 5.4
>
>  - Enable the new AST2600 in multi_v7 and the aspeed_g5 configs.
>
>  - Regenerate defconfigs to drop old options
>
>  - Clean up network options

Pulled into arm/defconfig, thanks!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
