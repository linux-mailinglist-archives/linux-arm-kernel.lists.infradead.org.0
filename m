Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8386FD22
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 11:54:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kB2j2wJT9defU/yL6aoB8BYadwyM8V5eae/Ts+Gr374=; b=d2hJdmRrCnrtme
	N73CbAl9IDqRJhkyQp41aceg15o0G0poPe4H60n9zHVUv83Q7uO4xUwXJE8Z478yn4dPmsxHcccbs
	5OR0+PP0miSxXFQX6f4QMbigVwfen1hxBILJMuynW2DyBUfSZnDVtH53MMR+o2avEYOnXq+W1w+Ll
	QoL2YeWQMGN+n5fYJEzGtlMIjMVLsuJLqVWkcqcJftxZr6TUupuFIarLh5hHknUjsliYuw9QLxIvO
	xMZm57gTyWvh9AKhgTnj8XpGGoz3PnJ4NLU9EC/QU+PJuiwptMVxsDBFqkTdNTDzCqMkLAKZhxcXy
	DCI3dHwLkunQNe/zy21w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpV1x-0007zX-KL; Mon, 22 Jul 2019 09:54:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpV1D-0007vF-R0
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 09:54:10 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hpV1B-0002ns-MN; Mon, 22 Jul 2019 11:54:05 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hpV1B-0002VR-49; Mon, 22 Jul 2019 11:54:05 +0200
Date: Mon, 22 Jul 2019 11:54:05 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Sergey Organov <sorganov@gmail.com>
Subject: Re: [PATCH v5 1/3] serial: imx: set_termios(): do not enable autoRTS
 if RTS is unset
Message-ID: <20190722095405.qdc77cb2qrgltzrx@pengutronix.de>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1563787330-1394-1-git-send-email-sorganov@gmail.com>
 <1563787330-1394-2-git-send-email-sorganov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563787330-1394-2-git-send-email-sorganov@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_025408_009369_1C0B9E75 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 12:22:08PM +0300, Sergey Organov wrote:
> Don't let receiver hardware automatically control RTS output if it
> was requested to be inactive.
> =

> To ensure this, set_termios() shouldn't set UCR2_CTSC bit if UCR2_CTS
> (=3DTIOCM_RTS) is cleared. Added corresponding check in imx_uart_rts_auto=
()
> to fix this.
> =

> Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

I think it's a bit bold to add a review-tag for me here. The best reason
for that that I'm aware of is that I wrote for v4: "[I]f you update the
commit log as agreed already before and even add a comment in
imx_uart_rts_auto along the lines of ... you can have my Ack." which IMO
isn't good enough to justify a "Reviewed-by". I wouldn't even add an
Acked-by: without the other person being able to actually see the
changed patch (but this might be arguable).

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
