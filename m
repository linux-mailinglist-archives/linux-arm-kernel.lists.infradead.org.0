Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B38F4884E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 18:05:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhe862EjtlhJJ6vjq+C1xEKo3TmE64ohsClmPkpW6Dg=; b=XA3i/J8TE5CfFh
	Vl89iMHuqyCT3Q15mO0xKkqD3uCQmy4HbD/Z20AEgC9/PXPAXv7LuOwxm6FiaEahve7OR/Bug0/jo
	14vjyhuXGBDaYJwLcsnmvhHFC1l7u60zAiD95ixskLvjAT3kEkBdrZoPC489gm6p9SN9w4V3SOLL7
	eFGQxjmv11bx72chdhbP8Nsmlo77HD/egrQRGsgleNvlytlvFdSBC2KwvlPKyaNg0MlPthMhpUT2v
	/nFN/DYZGMlT9Z1UDS84y5QknhkOlAaopziUSKjDFRtJE5IFyE68NTlc6vNKljOqEgHX7WNlrf9hl
	qgWjfN+AF5fWGalni0Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcu8l-0007HS-1U; Mon, 17 Jun 2019 16:05:51 +0000
Received: from mail-vs1-xe2b.google.com ([2607:f8b0:4864:20::e2b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcu7r-0005Uy-Bb
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 16:04:56 +0000
Received: by mail-vs1-xe2b.google.com with SMTP id l20so6470845vsp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 09:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pnnc1YqqDFPd8WzGDfGgqKol4mW6SfIm1hkAQXkloAQ=;
 b=FcuH+7EurKK2QioEYceTZLdpXz6DMaf+I3nLQhr1rnEhvteqQRCEdYh9VookY4398q
 Q5V4dmEg2BL6OgSV1CbZqhFz5NoPB0YmWjp015Yy4iDWwOrZjJ7UFXqHkK4h7XKAOaHv
 TwGSuEruYPrkT6i4edpcLtmPbgFzxPXSo/OsV5olbaxn6TFZOgMsKA0axRi3ip0pNJsW
 iJmRApuDDjW2Uuo73o9qc6Fg3OQ4qbIsYz92XcxxJ2PheSoKi8/t4kJ6g0ukJPhRz85s
 5M7sKwU2IjER2XwDCQF2X4nFFGx916qmgqqAwVnLIMwAm7Zk+WYB//sshYpWNY5duKyn
 iD6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pnnc1YqqDFPd8WzGDfGgqKol4mW6SfIm1hkAQXkloAQ=;
 b=NIQczrZ+lXfikPnCdyD37OOQ4Axf2+cJoPhM3OyOoYVpuJjr1NcYK5R0aXjgV60vZ+
 xkx2/ZiGz4WUqaqrGdUOUd9lNqwJ5Z2tIlw+kr84+u2ryHpTxS+E4A/OuLPJjrJFBNw8
 ec5rCHulf2XXT/QhGTgQXFvX4ODD/M9fJmkyIQzwEzE+p6smHx6eYFWEUGxbbrHkAQtY
 O45KbGgP5jWqW/FmbkiDnp1A8b4PzDYZ7GEfQAgJouhON2by7kv3B5QyGDkEqX27NUgk
 rDPHLqwL6/G9tB4qjCIDg+5wHyo727wjCFNYSer3W6xa2OuWYzovNgWPwZOqZXYYhDsE
 1XXg==
X-Gm-Message-State: APjAAAXUoFX0dlBSEt0acbOncC5UD/1OnKblupt48/Lt4KUCH1R2FsEX
 8uuXSCskjgneguQfsc3GXMh2Ax/hFmhDiusz7pQ=
X-Google-Smtp-Source: APXvYqxauZ6Wqdr1a6x/fpJLFsVERHU34VPVNMXn1iKL+e4p9OfXuz7VWrsJtK4Kn2WxOdyeEuBc+E97plQbyrlmZx0=
X-Received: by 2002:a67:e3da:: with SMTP id k26mr20351031vsm.131.1560787493667; 
 Mon, 17 Jun 2019 09:04:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190617153025.12120-1-andrew.smirnov@gmail.com>
In-Reply-To: <20190617153025.12120-1-andrew.smirnov@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 17 Jun 2019 13:05:03 -0300
Message-ID: <CAOMZO5CALFFcUQ7mY6L7DqB+iuJHzk_WKhZ1=BePjHqpT6pOYA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] ARM: dts: Add ZII support for ZII i.MX7 RMU2 board
To: Andrey Smirnov <andrew.smirnov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_090455_449016_D6674F3E 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e2b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
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
Cc: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Rob Herring <robh@kernel.org>,
 Liang Pan <Liang.Pan@zii.aero>, linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chris Healy <cphealy@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, Bob Langer <Bob.Langer@zii.aero>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 12:30 PM Andrey Smirnov
<andrew.smirnov@gmail.com> wrote:
>
> Add support for ZII's i.MX7 based Remote Modem Unit 2 (RMU2) board.
>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
