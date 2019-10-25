Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C81FEE4C58
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 15:34:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=32Ixo04+um2IJnMJRO5SBfKlp/WNv9n1a6UbxDzcyBg=; b=PSjdeccihde6tW
	DyRKJ9atnso54FfrPWuqkmMoW1mc7LmAyUwANy5FB8hLIUZUcBegR0NylkeD0VhmxFXzu2QYoEXif
	yeYIojYTPdPoSbWn5Bec1w4owFSozn2yebnFEaA497wKacWLYBBncIkHf/muxQYMxKf7oEyG0Jf0Z
	gMbK5SS+65iYWWQTEyy9jAEdEhscZLYSwWwNfPEYLLGsprySjWlHU91b5Ms2O3M1fqaRXR1cIPMMr
	vsbJxi7oiedTp9eZVX2QQfDmqpsQe3cvvoRWi2NH1DnLR3w2hPalW85l6fNvWL1jDmQJ+DJWLICUH
	e+63U4hKix75cX55ZWnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNzjP-0000v3-BJ; Fri, 25 Oct 2019 13:34:19 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNzjD-0000uW-Un
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 13:34:09 +0000
Received: by mail-oi1-f193.google.com with SMTP id x3so1658811oig.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 06:34:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iUx4xBejI/bMHyocAzAYVHDj3igErzHqOpH7ANpRK3s=;
 b=eJ642mtaTi/xLMcyTpXDPmxS/R2/ynawk0oZq1xBWXKmzTMrXHavp3LE1gEgo/vw0g
 pfqpBP337F4Z0bdSvwbNbp1iiqEhfN7RjH/4cQZz7cOij3pig6mB/6/Ue6bfLkAw1xGH
 AuExeuNR/njA+w2ryaOcPp4lcdP77jrlfThL3DybQodnwYmi3MH/6K2j268bHmmg/gpV
 Ev/j7IwyzWPDM5s9yw5MAQYxLW8JjGIDu7pp0O1hPZd3xfvMT3XL4vPLgFnyhd2Pb41m
 euUC0NIrTVnsbOLxe1Fv49wpKGnEpHYTdjqAFqTIY6Pekc1JNSuV9AReNgAWFE5491jM
 0Ikg==
X-Gm-Message-State: APjAAAWrF1OchJ+o/2dfCfhYVtz5Lsu9Huv/jK+doLOsYKaQ4IQJnvMZ
 SXwR0w0D7UW33Blt0pxeek7OLHzJAI0l6mAhn02UNg==
X-Google-Smtp-Source: APXvYqxAOGdO/wj9UkmiDR4PxV5ipsPdG60be1raRikztn0fXd5AqBMfMeUxpsKU+jxgNsGXUXjpeFI0ChQC09meEhM=
X-Received: by 2002:aca:fc92:: with SMTP id a140mr2928341oii.153.1572010446895; 
 Fri, 25 Oct 2019 06:34:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190908120528.9392-1-horms+renesas@verge.net.au>
In-Reply-To: <20190908120528.9392-1-horms+renesas@verge.net.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 25 Oct 2019 15:33:55 +0200
Message-ID: <CAMuHMdWrOn1wmi4YTNB251pLnNO1cXLX-ZszBV-+5cVLDB_QWw@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: arm: renesas: Convert 'renesas,
 prr' to json-schema
To: Simon Horman <horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_063407_994409_82E7B768 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Yoshihiro Kaneko <ykaneko0929@gmail.com>,
 Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 9, 2019 at 12:14 AM Simon Horman <horms+renesas@verge.net.au> wrote:
> Convert Renesas Product Register bindings documentation to json-schema.
>
> Signed-off-by: Simon Horman <horms+renesas@verge.net.au>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v5.5.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
