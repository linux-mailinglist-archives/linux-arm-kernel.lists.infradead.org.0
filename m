Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 862805FF5A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 03:35:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bIYLv6zTEPa7O8mr4Fv7OZuAYYQwz+uvQbkqvzsHDiU=; b=X3EhqbCV7KvDb6
	aXDgxBEVEH0x2x1++jIfpD89EPwQM/PvM+cCbe4q1pKxfE4wjoA2HX6QRYQvJWU6vkB7HeH8hET3M
	r8M/j3g9OJCkwndqKbUOqCczx7K7gIjMtIyZD88yeZFK4+E33JKUaVdUBSO7MMDBR1Nervv3yEMcL
	U1HaO7Y3B7UAQCG56v/pXaIH5vXnb85h0PPailTNCMjWK8PRbEtkFCp5IaPt526hUOL+3zeSEDsHn
	Z2ODG82HJqiTPDISSAJKorkFOtriVN/Pr8bseiMMtZshG5oZ5oe0Ms5TbJ6ldErYJttbwdRk/EJoO
	2oHwAk+BlzhWY4+bQD0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjD8h-0001zK-S0; Fri, 05 Jul 2019 01:35:51 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjD8W-0001yI-GJ; Fri, 05 Jul 2019 01:35:42 +0000
X-UUID: d48bf886351f479887c7a19478118889-20190704
X-UUID: d48bf886351f479887c7a19478118889-20190704
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1893063723; Thu, 04 Jul 2019 17:35:33 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 4 Jul 2019 18:35:32 -0700
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 5 Jul 2019 09:35:30 +0800
Message-ID: <1562290530.10428.6.camel@mtksdaap41>
Subject: Re: [PATCH v5 08/12] dt-bindings: mediatek: Change the binding for
 mmsys clocks
From: CK Hu <ck.hu@mediatek.com>
To: Ulrich Hecht <uli@fpond.eu>
Date: Fri, 5 Jul 2019 09:35:30 +0800
In-Reply-To: <100944512.353257.1562254420397@webmail.strato.com>
References: <20181116125449.23581-1-matthias.bgg@kernel.org>
 <20181116125449.23581-9-matthias.bgg@kernel.org>
 <20181116231522.GA18006@bogus>
 <2a23e407-4cd4-2e2b-97a5-4e2bb96846e0@gmail.com>
 <CAL_JsqKJQwfDJbpmwW+oCxiDkSp5+6mG-uoURmCQVEMP_jFOEg@mail.gmail.com>
 <154281878765.88331.10581984256202566195@swboyd.mtv.corp.google.com>
 <458178ac-c0fc-9671-7fc8-ed2d6f61424c@suse.com>
 <154356023767.88331.18401188808548429052@swboyd.mtv.corp.google.com>
 <a229bfc7-683f-5b0d-7b71-54f934de6214@suse.com>
 <1561953318.25914.9.camel@mtksdaap41>
 <84d1c444-d6cb-9537-1bf5-b4e736443239@gmail.com>
 <100944512.353257.1562254420397@webmail.strato.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_183540_550042_907E00CA 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, Randy Dunlap <rdunlap@infradead.org>,
 David Airlie <airlied@linux.ie>, Michael
 Turquette <mturquette@baylibre.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Ulrich Hecht <ulrich.hecht+renesas@gmail.com>,
 linux-clk <linux-clk@vger.kernel.org>, Rob Herring <robh@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
 Sean Wang <Sean.Wang@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, "moderated list:ARM/FREESCALE IMX /
 MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <mbrugger@suse.com>, Stephen Boyd <sboyd@kernel.org>,
 Sean Wang <sean.wang@kernel.org>, Stephen Boyd <sboyd@codeaurora.org>,
 linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 matthias.bgg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Uli:

On Thu, 2019-07-04 at 17:33 +0200, Ulrich Hecht wrote:
> > On July 4, 2019 at 11:08 AM Matthias Brugger <matthias.bgg@gmail.com> wrote:
> > You are right, it took far too long for me to respond with a new version of the
> > series. The problem I face is, that I use my mt8173 based chromebook for
> > testing. It needs some downstream patches and broke somewhere between my last
> > email and a few month ago.
> 
> If that Chromebook is an Acer R13 and you need a working kernel, you may want to have a look at https://github.com/uli/kernel/tree/elm-working-5.2 .

Thanks for your sample code, and your implementation is different than
Matthias' version. In your version, mmsys is a single device which has
clock function and display function, the clock function is placed in
clock driver folder and display function is placed in drm driver folder.
In Matthias' version, clock function is a sub device of mmsys. I've no
idea of which one is better. I would get more information to make better
decision.

Regards,
CK

> 
> CU
> Uli
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
