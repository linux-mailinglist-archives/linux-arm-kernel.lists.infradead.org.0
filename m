Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5508D12779E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 09:55:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BXddWPrSCQ7270BLzfuSGX09zTY7fKo9WZVZPYxfnKY=; b=dlx+DrJSjsyVHM
	DfkLpImyj+GHoseumfqVpMYQezkyiqVy0it7mXDmEpWIHB4UMWRivMx3XanIvzqZtyl0qAm5H3V7+
	xpPkOM76CWGZisZ8R6ok+AM2f4MO+rJp2xq8dkn80jh0szmtFnDvAxgZkgzRfYSdb83xjaJ32Iybr
	LHCc0xS3XTX+Bu+uzqzVNrDyOU68bnrEO9vVUVo/mA4ZXK5fns69hzS767j/uGH7Esmhcf3JBBSK/
	EBPpnHvOp78x6lDIL/dds6ZUzYhHBxMpyZZHMg1LPNehGchTcYSeSohsFc32UXtpLNwtzqbrw9JHF
	/RmuZRBmrUpXbBZPf+yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiE4b-0001U2-7O; Fri, 20 Dec 2019 08:55:49 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiE4R-0001Sx-VV
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 08:55:41 +0000
Received: by mail-io1-xd43.google.com with SMTP id x1so8617189iop.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 00:55:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hFyk6wfDM3uJNZM3XmVJRb6zXEf3/dZ+tc8Bv4YB2yY=;
 b=W0dWNacy+Z08VU2VNyW6cLKarj2vQSvC7GwIrBrk5kAeHpY8LUCugVbH17i6+PQmyA
 lzshmpaK75tqkDiY8MXYJFy40HtHbIraPO0UNF/SdTr1T0MrZjg9bMNdnlBgv7STNqf6
 AcP0G+MibU3+k6+ra+ZS/fYB+z7mO6Z7OA5uI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hFyk6wfDM3uJNZM3XmVJRb6zXEf3/dZ+tc8Bv4YB2yY=;
 b=AHn7MMer02D8i9UXcMK4axbyAe5cBHLcmGkZZdeWGtZFjhESZ8GzbchYJPBFjJEJlV
 hMeUVBfUgOLmjyTf/uBNsHgMa5SiKnGS8sAPVoDfWFnos35EUQFFTgGmuDLjoIb6q0Do
 hrL/nMlHF7peotxN5FS60GuLCbF659tU8JU13aQDrxz/wHn+1GWSv9RcjJyop6SXztxG
 6Jo99B1rFVVzfpCJF9nP1nGozsJ95bW2Mpmm3I4G7I/lNH7m2uaobS8zd0KtEv/p4dHd
 OXQFAxY+0JOpuEIdSlfKCEgRzowVUjxXoF5ncmBCFCHueJQTLTRAxkNmEkFqQN/Vql+6
 ojBA==
X-Gm-Message-State: APjAAAUBnELlZes8ZL+gn6FfHbJyJZLzLcUKGShDWU2e85iR1Uu2ZT37
 g/csdihdNMHlp3MywrNTWYZRXKvneWkVcdrXFnKoIg==
X-Google-Smtp-Source: APXvYqx6jNS3ruJSqRukqpBfv5nCziRlHY3HFBeibFf5MWoadOk37sDVbGh863vc8QU+b1jTv0rGaDTo6tv6CoaEyJc=
X-Received: by 2002:a6b:3845:: with SMTP id f66mr9807832ioa.102.1576832138346; 
 Fri, 20 Dec 2019 00:55:38 -0800 (PST)
MIME-Version: 1.0
References: <20191220081738.1895-1-enric.balletbo@collabora.com>
 <20191220081738.1895-3-enric.balletbo@collabora.com>
In-Reply-To: <20191220081738.1895-3-enric.balletbo@collabora.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Fri, 20 Dec 2019 16:55:12 +0800
Message-ID: <CAJMQK-h9w5a1CKyTqdBsmz6TYbcGMzhPLNwU7kYBYp56EV0PZA@mail.gmail.com>
Subject: Re: [PATCH v22 2/2] drm/bridge: Add I2C based driver for ps8640 bridge
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_005540_040048_3F4B628D 
X-CRM114-Status: UNSURE (   7.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ulrich Hecht <uli@fpond.eu>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Nicolas Boichat <drinkcat@chromium.org>, Jitao Shi <jitao.shi@mediatek.com>,
 Jonas Karlman <jonas@kwiboo.se>, David Airlie <airlied@linux.ie>,
 Neil Armstrong <narmstrong@baylibre.com>, lkml <linux-kernel@vger.kernel.org>,
 Daniel Kurtz <djkurtz@chromium.org>, Andrzej Hajda <a.hajda@samsung.com>,
 linux-mediatek@lists.infradead.org,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 20, 2019 at 4:17 PM Enric Balletbo i Serra
<enric.balletbo@collabora.com> wrote:
>
> From: Jitao Shi <jitao.shi@mediatek.com>
>
> This patch adds drm_bridge driver for parade DSI to eDP bridge chip.
>
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> Reviewed-by: Daniel Kurtz <djkurtz@chromium.org>
> Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> [uli: followed API changes, removed FW update feature]
> Signed-off-by: Ulrich Hecht <uli@fpond.eu>
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Tested-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
tested on mt8173 chromebook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
