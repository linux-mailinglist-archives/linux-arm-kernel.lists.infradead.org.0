Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7DC12B274
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 08:27:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aj/+H6UI5/iGQ1RyQRUGQxcEfa26pPQJ/feyoE/xuLk=; b=Bg3RkbtzKoh0we
	yi7Ht9Z8//Efkqa1f9aPTndNPXV/TZ2KD6kgjSERFgGQHyKlF4P19VX/NdybNYhzJ0SGEbPBntCqQ
	OoUbPZsOCJLa5jJuPLBbWg8UZBZMGQQEm9fucX85uTnBE3gCLY94ZG/Dc7PTfvruFaHF1rBtLGO3A
	lnZ/d17mYquQyKQLYqzeCa/OXMS5ZaZTtVwEEcR/fb6NjV9cnvGfDU6j08TOhHIsJZmTQ6gKh/XKn
	wDbLDHb5QB7038t1mFbnCk+d94pqnq82ETmmYG/veA/TY8d3MGSccf+EsOcdlHWvIk5mj6IfcDN3C
	+3EyZCuUKs1SyX2Dh95w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikk1w-0000sD-6q; Fri, 27 Dec 2019 07:27:28 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikk1j-0000rd-S6; Fri, 27 Dec 2019 07:27:17 +0000
X-UUID: 75178afecb2b442680752a07264fc2b3-20191226
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Cf2QhICm8jgqgV69uk2tL7NwWEZjvfxdhHJdjjhmiyA=; 
 b=VaAGN2wH6YUGOQ604wyTPzkd0RXIkA5ZHShCGWuj1KhlMdOhaYWkYSRK7HdUI00qxycFDtd7m4ugqOOLy7wTIYC/jm0oiZJQqFhHQWs2uuOjF+sR6XJ+t5i4f3rW1bWEiYJMLVxWvQVIj6c0cr2QSiuH8flNMIUodoeQGRzicIg=;
X-UUID: 75178afecb2b442680752a07264fc2b3-20191226
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 980930001; Thu, 26 Dec 2019 23:27:13 -0800
Received: from MTKMBS32DR.mediatek.inc (172.27.6.104) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Dec 2019 23:25:37 -0800
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS32DR.mediatek.inc
 (172.27.6.104) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 27 Dec 2019 15:25:14 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 27 Dec 2019 15:25:58 +0800
Message-ID: <1577431473.32039.14.camel@mhfsdcap03>
Subject: Re: [PATCH 8/9] memory: mtk-smi: convert to
 devm_platform_ioremap_resource
From: Yong Wu <yong.wu@mediatek.com>
To: Yangtao Li <tiny.windzz@gmail.com>
Date: Fri, 27 Dec 2019 15:24:33 +0800
In-Reply-To: <20191222185034.4665-8-tiny.windzz@gmail.com>
References: <20191222185034.4665-1-tiny.windzz@gmail.com>
 <20191222185034.4665-8-tiny.windzz@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: CEF061E20910937DED535D5F798BA0EED8E7FC212D9D8E7E72D4D38ACE506EC52000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_232715_916074_269224AC 
X-CRM114-Status: UNSURE (   6.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kstewart@linuxfoundation.org, tony@atomide.com, ssantosh@kernel.org,
 paul@crapouillou.net, rfontana@redhat.com, thierry.reding@gmail.com,
 krzk@kernel.org, digetx@gmail.com, linux-samsung-soc@vger.kernel.org,
 evgreen@chromium.org, jonathanh@nvidia.com, kgene@kernel.org,
 linux-arm-kernel@lists.infradead.org, jroedel@suse.de,
 linux-tegra@vger.kernel.org, linux-pm@vger.kernel.org,
 alexios.zavras@intel.com, linux-mediatek@lists.infradead.org, john@phrozen.org,
 matthias.bgg@gmail.com, tglx@linutronix.de, linux-omap@vger.kernel.org,
 allison@lohutok.net, rogerq@ti.com, sboyd@kernel.org, pdeschrijver@nvidia.com,
 linux-kernel@vger.kernel.org, info@metux.net, lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 2019-12-22 at 18:50 +0000, Yangtao Li wrote:
> Use devm_platform_ioremap_resource() to simplify code.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  drivers/memory/mtk-smi.c | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)

Reviewed-by: Yong Wu <yong.wu@mediatek.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
