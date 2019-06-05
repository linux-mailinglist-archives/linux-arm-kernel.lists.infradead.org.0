Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A887836033
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 17:19:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qVvOyIdCfGI7yyUQ0aHTU+kWz+XAREiqPnPY6Yhtvu0=; b=cLeFMOdhf07YkG
	EAr5KmlV8WxaJCb2b0BeG2fkochTQqoEv53NTXqGXPA2uWaWxfpROUm6/MerW6LtGKZOWVJGdiXXN
	JAw+6XxT7POvIrLhebR/wYLNHjr+tdWJkz+z5YCfdyyi/InhgvXRXRHcLZ3DaHf4/PH2Vl+AGFC4S
	tlULVzLMwjVt44uckCxPQj1nRWnjJVT/od3qftghKQvzu2PTfxjBh4m6BeKjBD5jy1RZ5zFRR309z
	brML5OFE2NPk7sHb/lK2OOsMAlgktAiItUoxr5SEubP11ZfLrAlnfwGBB+4DIuXx+tfF04/PIuBHu
	OATjemN1Aj4jZ9pvkYGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYXhT-0007Uf-7v; Wed, 05 Jun 2019 15:19:39 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYXhK-0007Tw-Ef
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 15:19:31 +0000
Received: by mail-lj1-x241.google.com with SMTP id v29so12229101ljv.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 08:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oh8iBnN6xnapbhKDR5hgUz4ocKAFRKRkmc7+6AZZ2vU=;
 b=lcnDMa2z0CdrTuK4532rXgGmd3U0if2QJoKC6eImks/AHjcY0rjbO91/CUATfj9W6Y
 hKo9lMwu7znUEU1XH2AoMoYzcikUhLZ8GhtjcskSacOrcUnYsr00dIZYfAPJAri4Hofb
 iR0Xej38Qv5A8AVGTx+T8QVa4aJaeTVrmqRftzv5hGmVXdLGyHKT36rHqpRot9S0WW4j
 9QW0zCOhqxEkST1KeEz6PxBNLGoiCvlhEyIc3Gc4glIQUXjhy57KVxy1XANRnIJcrEYK
 a5CSDDSkcOjB0Yc1nASZUL7Ov9LSSKD/5ii+PEi19WqfEiOhj5sYcFvaVciOy9pbTzEW
 xe6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oh8iBnN6xnapbhKDR5hgUz4ocKAFRKRkmc7+6AZZ2vU=;
 b=jhEsns72IFi5VJqCp/0lz2GzrOMtoImpz1uFhds23PSDVa+1D6+QJxXOxEyiBCDbcf
 fLKFIy1v5VmBqf2VQtYyRZPkf/kq5oS7OEGiz4SOxmfw9miC3CX6YSz59Gmh8dFuyE5l
 cO3qVl0WZRZEEPz1CUIylPjVmM+nKX/U8rmUN1y0wLcIieV9Z+nvkbZ2J60MWCV055tR
 tozB3sh6LN0/WAb9AKJsxYDYFO/2f5nEP2/xSWVl4E8pWBcKWQ9st3+uOBwkfRr50g0d
 tB6ReBhAadKuk4UwydNKu2lSKQHKZxMuuyzw+ZUzun7Lm8efJqanNMj5MLCnIGTQ4C8F
 29RA==
X-Gm-Message-State: APjAAAXA1wj/Ln1iTeEfHzBM94YfgZ8pcn1GntTSydbvfzLw8in7Hbzv
 TSBdpOGPxVxisb2Bj0FzFmlb2i/K6fqLMng3AHo=
X-Google-Smtp-Source: APXvYqyRiWBeQUwiPzQbeh0SlUIO04VG/hGpexFsfnKbqe0w8nSYP6KXLcZDZmhtzLOB48bmMihMnrOH956aZ5ANr5I=
X-Received: by 2002:a2e:3e14:: with SMTP id l20mr21804708lja.40.1559747966917; 
 Wed, 05 Jun 2019 08:19:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190601070718.26971-1-pbrobinson@gmail.com>
 <20190601070718.26971-2-pbrobinson@gmail.com>
In-Reply-To: <20190601070718.26971-2-pbrobinson@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 5 Jun 2019 12:19:18 -0300
Message-ID: <CAOMZO5B3dedXPyGgwWpdDL5ccC0TQuN=+UKBOW4Emv1_xwbZJw@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm: imx6sx: udoo: Use the correct style for SPDX
 License Identifier
To: Peter Robinson <pbrobinson@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_081930_519599_679D3F45 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 1, 2019 at 4:07 AM Peter Robinson <pbrobinson@gmail.com> wrote:
>
> Use the SPDX License Identifier for GPL-2.0+ OR X11
>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

Nit: the Subject could be consistent with the other patches in the series:

ARM: dts: imx6sx-udoo: Use the correct...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
