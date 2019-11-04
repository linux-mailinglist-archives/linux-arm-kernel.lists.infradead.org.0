Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EE3ED9E8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 08:29:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ngbPm7OC2ZO6GJTBx4qtsgzoiFDxjH8g2ICJ5rGfgzg=; b=h/r6IFiFEyhptI
	uKktaO+KmrdS0XBinGv3rM8NPyxUVexSVVU0VZ6LQ4w5Ik02NniASGgZc3zJeF97x/IKIAhxcqT/Q
	20XW1QXtaQj2yIstzQ+2Cq4oYgGVMxV8zM07VEX5NytFRFWtiMZrNDT/V29w5IRXVTraCpCq1K9z6
	OjnLqpR/++GGB/IHnlxUHWH/BSE7TM3cAX+ai9wDafGxwIT/mnisRGIUUmMfH4Aw7oT4wtbUzK3Me
	KLBL9rL1bGtLrEYIuJs9dljU+P2sOBBTO4OoFscPtOnSQp+GIld8DTMnejbm1xO9S+h1o+Fz3Ctwg
	4D5jqEs3xnJG5zD7FDcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRWnk-0008Tf-RK; Mon, 04 Nov 2019 07:29:24 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRWne-0008T7-77
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 07:29:19 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.2) (envelope-from <johannes@sipsolutions.net>)
 id 1iRWnL-0004Dn-BL; Mon, 04 Nov 2019 08:28:59 +0100
Message-ID: <69baa44c928ae7f6ca1f4631b7beb6b2c2b1c033.camel@sipsolutions.net>
Subject: Re: [PATCH v2 2/7] mac80211: Use debugfs_create_xul() helper
From: Johannes Berg <johannes@sipsolutions.net>
To: Geert Uytterhoeven <geert+renesas@glider.be>, Jonathan Corbet
 <corbet@lwn.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Ludovic
 Desroches <ludovic.desroches@microchip.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,  Jaehoon Chung
 <jh80.chung@samsung.com>, "David S . Miller" <davem@davemloft.net>, "Rafael
 J . Wysocki" <rafael@kernel.org>
Date: Mon, 04 Nov 2019 08:28:57 +0100
In-Reply-To: <20191025094130.26033-3-geert+renesas@glider.be>
References: <20191025094130.26033-1-geert+renesas@glider.be>
 <20191025094130.26033-3-geert+renesas@glider.be>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_232918_257152_7BA8CEEC 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: linux-doc@vger.kernel.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-10-25 at 11:41 +0200, Geert Uytterhoeven wrote:
> Use the new debugfs_create_xul() helper instead of open-coding the same
> operation.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Sorry Greg, this slipped through on my side.

Acked-by: Johannes Berg <johannes@sipsolutions.net>

Do you prefer to take this to your tree still, or should I pick it up
later once debugfs_create_xul() is available (to me)?

johannes



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
