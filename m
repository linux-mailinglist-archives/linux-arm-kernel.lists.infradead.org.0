Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 053B61353BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 08:33:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l9SIZjpj4EKxotdXbWjNL2R+MsxnrisqXlrYMyP8c4o=; b=kWRroVzfv7iQ6M
	PWWYBpj3WrY0ANRd22MuefOXbG5/qPTwTnhXc0zbrjAPU5HPqIEwAOzZrNNR85lIqJ8+ntqucSaiR
	x8sD0N6HLbjfEhynZltMw7B9NaLLd9X1ZEwt/Tdy89MiKnD6DlXvMYHQCDVH5S6VyJlH+PPO7Dop2
	DDHemU0hYfUmimxf6t/j7WUwCdVLh8SBIa8XZICSX/Nnku92NQDsbF6Il6I7nhP6JSyWpzlE4NJV1
	X7aY/fbMC+xxphjTuEMGYQYI3T9/UOJsql0QnkQ5iRuNVEC+gcVHYSaopp+gBLwXg5YzgDjFdiS5+
	CM8mvBlA3KS6dsu3/UjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipSJm-0008C7-4Y; Thu, 09 Jan 2020 07:33:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipSJZ-00088t-6g
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 07:33:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1ipSJX-0001FH-C0; Thu, 09 Jan 2020 08:33:07 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1ipSJV-00065H-KM; Thu, 09 Jan 2020 08:33:05 +0100
Date: Thu, 9 Jan 2020 08:33:05 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Richard Genoud <richard.genoud@gmail.com>
Subject: Re: [PATCH] tty/serial: atmel: RS485 & ISO7816: wait for TXRDY
 before sending data
Message-ID: <20200109073305.yn5y6sgomjniwwj6@pengutronix.de>
References: <20200107111656.26308-1-codrin.ciubotariu@microchip.com>
 <b11e47c3-8b94-7915-ae5a-d9e8f5b02047@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b11e47c3-8b94-7915-ae5a-d9e8f5b02047@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_233309_248609_757FAB6A 
X-CRM114-Status: UNSURE (   7.12  )
X-CRM114-Notice: Please train this message.
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
Cc: alexandre.belloni@bootlin.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-serial@vger.kernel.org, jslaby@suse.com, Codrin.Ciubotariu@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Wed, Jan 08, 2020 at 02:45:05PM +0100, Richard Genoud wrote:
> NB: MS exchange has added some =3D3D and =3D20 here and there, but git am
> doesn't seems to be bothered by them.

Unless I missed something I cannot confirm. In mutt I don't see any =3D3D
or =3D20.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
