Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C31B318F1EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 10:35:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ij6WDiv7HGBnMRYm83WOiNHmUp4/kgt2yG/OF0H7CRA=; b=KO2TLTIEXZlPxF
	wI95EeMiT2x3+vOZnwHl6KeBAS4MKq0XSZE8v5OlePMyoM5xmJjJRpwELEwh47t0ddhmoP55qoPYc
	enUOad51UFMYVVD3BNBOXz0jokdCJgJvn4Ttq+6FnH8oj7sW8fPkeTTNj45y8AvI6PWokV/VmTl88
	YQxy6rhIsEFJYsmw9E91utWelUc/oeuy/bC4ALiVdFzJ4VfAgR9QKsQ40whY59KykGdhiqpHnEWdM
	LPaVxi3k5Q7cmAtY/LEYHNkHgQF2lQcJ2UqXZt2tLKHFb50mJ9ZohfaPocS1p8YAItAGrVRYlfyw9
	RD+LeQcJRqWUfh69r9yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGJUe-00042x-Fy; Mon, 23 Mar 2020 09:35:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGJUR-0003JU-Cc
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 09:35:24 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jGJUO-0003Th-GA; Mon, 23 Mar 2020 10:35:20 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1jGJUN-0002CU-Fr; Mon, 23 Mar 2020 10:35:19 +0100
Date: Mon, 23 Mar 2020 10:35:19 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Subject: Re: [PATCH v2 1/2] pwm: bcm-iproc: handle clk_get_rate() return
Message-ID: <20200323093519.krno3znzqbptrwxj@pengutronix.de>
References: <20200323092424.22664-1-rayagonda.kokatanur@broadcom.com>
 <20200323092424.22664-2-rayagonda.kokatanur@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323092424.22664-2-rayagonda.kokatanur@broadcom.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_023523_431483_F99BF190 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-pwm@vger.kernel.org, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 Yendapally Reddy Dhananjaya Reddy <yendapally.reddy@broadcom.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 02:54:23PM +0530, Rayagonda Kokatanur wrote:
> Handle clk_get_rate() returning <=3D 0 condition to avoid
> possible division by zero.

The idea I wanted to transport with my question about how this problem
was found is that the commit log is amended with this information. This
is important information as it helps people having to decide if this
change should be backported. Also it would be great to know if this can
really make the kernel crash or if (e.g.) said clock cannot be off in
practise.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
