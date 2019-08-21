Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C2896F4D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 04:16:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1qSwkG0mCL7c6dE8cff1okmxChCDn/v1NtmIIuwkbpQ=; b=AuJV53QgrjglDc
	Vka321zBJeQ71oGumVObLYOuSrR6aI9O2x3mwstsUBV8Eoga4d0YJ9EMlhj1Of+DZnL/mRn1mTm6i
	yS7t1cnOjFqBIrEuCVBibK+yfhkEHs1D1+FavtL84WfNiUjWlsq2LK8LHQso4zmuBBF+23y8kN171
	SOJ2l6Y66taYi00N12b4vWc0N1QngHW9bVXsZGl/zaOxZu6gXPSdTBW3CW71IlMnNBFahrQ7r7fni
	PBzKF7Ygv3ucQnX/suvEmnO3o7MfmW4EZ8PosaA+6GXdrnKPxwUfCRRbC3sgVFEW9R3E9kWd7V/v/
	/Fos/7I/DV3ZRYDm2p7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0GAz-0003C1-Fm; Wed, 21 Aug 2019 02:16:41 +0000
Received: from gateway24.websitewelcome.com ([192.185.50.73])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0GAq-00031B-Cj
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 02:16:33 +0000
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
 by gateway24.websitewelcome.com (Postfix) with ESMTP id 11612C6F4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 21:16:31 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id 0GAoiwDFB2qH70GAoiuO0k; Tue, 20 Aug 2019 21:16:31 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0+iQb8olkCCmveYCwGlywQYawyBRRIxSwndogIaqQ6w=; b=bolcoLQXm633fxCXN8Eio23eEC
 vMRn+bUr57rvQjBO+vW+4MDADvf6Vtbs0oJsayU6/GKalI+UthEDpUA6+3YDs2//IOIJqFXtP0Nex
 MzWHCtKAzAv6vypR8dw1ivprC3VY3MsTARtSBeLCPJPYjQwgUSXISEGXmhzZpulvDBVGrKKXGC/aH
 S/qcBA7iWs1hsDssQN7QwXHedaFlIGAJ0muKOv59tE3yucp06E5bKmwnu9YPluMpNAGexzuHvTCGW
 3y4WTwrk8gTmXLloBIZrJ3RdVg+Kd0dOLZX1vVByjCDUt/VMejgKcqoE5WLQaRd52HzzXYg5XGVaf
 3Tmgr3/A==;
Received: from [187.192.11.120] (port=52370 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1i0GAn-001KA5-4q; Tue, 20 Aug 2019 21:16:29 -0500
Date: Tue, 20 Aug 2019 21:16:27 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>
Subject: [PATCH] usb: udc: lpc32xx: silence fall-through warning
Message-ID: <20190821021627.GA2679@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.192.11.120
X-Source-L: No
X-Exim-ID: 1i0GAn-001KA5-4q
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [187.192.11.120]:52370
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 6
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_191632_482304_C34022F0 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.50.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Silence the following fall-through warning by adding a break statement:

drivers/usb/gadget/udc/lpc32xx_udc.c:2230:3: warning: this statement may
fall through [-Wimplicit-fallthrough=]

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 drivers/usb/gadget/udc/lpc32xx_udc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/udc/lpc32xx_udc.c b/drivers/usb/gadget/udc/lpc32xx_udc.c
index e3f67023d935..606c8bc52db5 100644
--- a/drivers/usb/gadget/udc/lpc32xx_udc.c
+++ b/drivers/usb/gadget/udc/lpc32xx_udc.c
@@ -2264,7 +2264,7 @@ static void udc_handle_ep0_setup(struct lpc32xx_udc *udc)
 		default:
 			break;
 		}
-
+		break;
 
 	case USB_REQ_SET_ADDRESS:
 		if (reqtype == (USB_TYPE_STANDARD | USB_RECIP_DEVICE)) {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
