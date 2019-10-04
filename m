Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03972CB474
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 08:24:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nMPV76+SE547N8VJaWfK1uIFQ44s/muBnyzkpvAJxfs=; b=j3noHD8tiZasCJ
	vi/VBjEpRoIyyPIpuMPmRdGc4k/rZybmR5rHIZa8C8CYolN4xpjIBykbVsuj/Gvn1Fysy7kVRMhvB
	YET4q3EOCqgaA0kU8x33hp65i5S1WXRraE1cDVi+WTxFkpp3/mR7GXTx++d/ckamJ4k6NxXK2DB46
	1GRDHBKyN7JeOTrDhWo4ZI7QDkZ5zc+8xUsJhcJh/Xx234NJpFIPx0ZRacv7VrU8T/DBqYPnu0Fbn
	hp3TJMK7NRYwNlJRc3B4wfBnM+lS4MDadXsOH9vmg0HUIGBHmH6qPMVGFHuo9KybUIav8M0sxMS/y
	F+Xq036l9sEt31TGqtBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGH0M-0005Zd-G5; Fri, 04 Oct 2019 06:23:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGH0F-0005Yx-MQ
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 06:23:49 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iGH08-0002b5-Iz; Fri, 04 Oct 2019 08:23:40 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iGH04-0005Rk-Dy; Fri, 04 Oct 2019 08:23:36 +0200
Date: Fri, 4 Oct 2019 08:23:36 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Yizhuo <yzhai003@ucr.edu>
Subject: Re: [PATCH] pwm: stm32: Fix the usage of uninitialized variable in
 stm32_pwm_config()
Message-ID: <20191004062336.jidzrytx4z5talro@pengutronix.de>
References: <20191004044649.2405-1-yzhai003@ucr.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004044649.2405-1-yzhai003@ucr.edu>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_232347_733515_CBA441B8 
X-CRM114-Status: GOOD (  12.01  )
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
Cc: linux-pwm@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-kernel@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Thu, Oct 03, 2019 at 09:46:49PM -0700, Yizhuo wrote:
> Inside function stm32_pwm_config(), variable "psc" and " arr"
> could be uninitialized if regmap_read() returns -EINVALs.
> However, they are used later in the if statement to decide
> the return value which is potentially unsafe.
> =

> The same case happens in function stm32_pwm_detect_channels()
> with variable "ccer", but we cannot just return -EINVAL because
> the error code is not acceptable by the caller. Aslo, the variable

s/Aslo/Also/

> "ccer" in functionstm32_pwm_detect_complementary() could also be

s/functionstm32_pwm_detect_/function stm32_pwm_detect_/

> uninitialized, since stm32_pwm_detect_complementary() returns void,
> the patch is not easy.

active_channels() is also affected. Also there are calls to
regmap_update_bits which should have their return values checked.

While a patch to fix these all is not trivial it is certainly possible
and I would prefer to fix the problem completely.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
