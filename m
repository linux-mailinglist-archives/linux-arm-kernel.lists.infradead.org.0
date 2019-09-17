Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FDC5B4FC0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 15:57:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+cPnauM4ZELEiPPM/5/bNpky0bmB91RJkNjZd9XmH+s=; b=sruMmQaTDBA0yj
	NtK6NcNtVyU0mMdwX9hLmi+SQeAyaAU8q+9/MTyvC4A2zUs8hxPHm79/1u+riqXnv5GRuYZIe5wwj
	/0bM8z+zhgYwGheoLxMXcNZG5Sow9wYUM+ryQsnmhLxn6iKX4gote1xkm1iiiGW5frh2XwC9txpWT
	f7Z4lEqb16OYg77Qafnnrk3IHFaY1ENNbUyXXn9C9QyC7f60diXt+oRGo4f4EDi+DOEPyT/k1GkvB
	R66kpB/etORhOZCGiVaMk9FlqQZuAP1TLyree2nyDLv/PAVwzrQ8rpGf5n+w+NrqBy0d7K6BKD7Lr
	e4rxHxNthC8PGtlz8Pxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iADys-0006fE-58; Tue, 17 Sep 2019 13:57:22 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iADyc-0006eo-47
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 13:57:07 +0000
Received: by mail-lj1-x243.google.com with SMTP id s19so3619749lji.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 06:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gue+6p3sEZoY9T4790P0La+6r3js3LuUa0GxehQHvN8=;
 b=K4oBcW3XJ8eh2hWnZqM01fgXhtYw5HB7srZSFPYaAt81xOhZyB5M8M6KULfP7grhAz
 0x0Cv1elFSEHw9rurUfXrDr172hNCTKjXzD2Q/F9/vbHibpbzz34+dZlLeVXH0l8o1Db
 lLX0c+t+jiMcpc7ocEs6F29KpvaSQo+L2BzrdTyKy4zGFeUSaryOR9miccVvBhBrevrt
 lnrUL/nAOWrzHnH+J/U59vRQQiG29WAvlF5iaCmHLSwe/ViY59aFG1hx704MXpOlHOAh
 mK9QKMM49yeaMQZ6gmjCzDZcG+Xn/f/8/QCPliSjmCoPiO3s7PXofyGhsUWFcMHMo/WG
 KG4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gue+6p3sEZoY9T4790P0La+6r3js3LuUa0GxehQHvN8=;
 b=Qx4q285S7r+gxRhhagSJrXchZ5PA8XyqBVLZoCKTDIALk9KgLXT33lMKT824bvRqyD
 Q6FLUUg7w+r1T6gjSAXJKPFw4Lx9gF5Q9y5vR3fV5xORaogXinyH4Zoz2wAJJSlivCQ4
 aqmIOO8Qb5ui2TgV5QxCEBE5TkaCCeW4gtksaVRJvrcDjP4Gpnj6hBGx05+S88u9jz50
 tMtEqVUgjGc5f8UIw1vjycACLx7ltecNkqgCDy6I2pE6J4tFk6ZZ2xlHrIrJeP0/ToXI
 kELhZbGY77IVvwY0+/Z9jTITvu3KUZYGfX5LGcwQWRPbrxSPOK/Vc98CNYAGEyeFhWpf
 c0+g==
X-Gm-Message-State: APjAAAVsdomAM/HMr0jgZ7kcS4wwcjr2rwB0DjG1YRsbafNRoxvBwRSy
 s7/p6067F/5k4+QmoJObOpZSuHlK2Dd8fpkz8t0=
X-Google-Smtp-Source: APXvYqx7ImWwKBizDyTe6Jw6lirQfItvDYF043T0LZLuwqHMm/kGWc/Gij6ABlPRAtmX5sxrO2Zc9jfvVIBHxXDSDr8=
X-Received: by 2002:a2e:141c:: with SMTP id u28mr2055407ljd.44.1568728624136; 
 Tue, 17 Sep 2019 06:57:04 -0700 (PDT)
MIME-Version: 1.0
References: <b19a0640-5d71-a005-eb0f-c6840f181e5d@free.fr>
 <20190917081931.GI25745@shell.armlinux.org.uk>
 <20190917104200.GJ25745@shell.armlinux.org.uk>
 <20190917111631.GL25745@shell.armlinux.org.uk>
 <20190917114210.GM25745@shell.armlinux.org.uk>
 <20190917123326.GN25745@shell.armlinux.org.uk>
 <20190917130759.GO25745@shell.armlinux.org.uk>
 <CAOMZO5DXv8g5qTGdvobDdLWim+tW=vK4+K=P-VqJK23KERMhJw@mail.gmail.com>
 <20190917133317.GQ25745@shell.armlinux.org.uk>
 <CAOMZO5DS_1Uc9TMc29e+8tCg-srvMjf3uth_9P3cnro6det+7A@mail.gmail.com>
 <20190917135157.GT25745@shell.armlinux.org.uk>
In-Reply-To: <20190917135157.GT25745@shell.armlinux.org.uk>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 17 Sep 2019 10:56:59 -0300
Message-ID: <CAOMZO5BDirX0Fwo716v1ddYaaO+OL8Woht63mw8OEhDuMBTb8Q@mail.gmail.com>
Subject: Re: [REGRESSION] sdhci no longer detects SD cards on LX2160A
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Li Yang <leoyang.li@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_065706_168727_EC788ABC 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dann frazier <dann.frazier@canonical.com>,
 linux-mmc <linux-mmc@vger.kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Will Deacon <will.deacon@arm.com>, Nicolin Chen <nicoleotsuka@gmail.com>,
 Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[Adding Li Yang]

On Tue, Sep 17, 2019 at 10:52 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:

> The pressing question seems to be this:
>
> Are the eSDHC on the LX2160A DMA coherent or are they not?
>
> Any chances of finding out internally what the true answer to that,
> rather than me poking about trying stuff experimentally?  Having a
> definitive answer for a potentially data-corrupting change would
> be really good...

Li Yang,

Could you please help to confirm Russell's question?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
