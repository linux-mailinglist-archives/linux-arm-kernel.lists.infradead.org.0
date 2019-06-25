Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 872F955BD6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 01:01:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G9XFUCOybWW3AJke9X8fxcz1NikIHNmVvWzmMqvHq9g=; b=sNULz6LmYtuqi7
	kSKrnJxlVjV9zUiddB/IQnTNbu2yFo2pDoB9tHk0DtLicKqMd5HouBA+uLHTKsKJSrGzFCaxYeDbZ
	dGNgTnjMP+N7ZPKYvovpEThXhGa555SqDPbu3FcxgepthzmU6bXGQDJZYscA1TBjfzDUceCBFrGsg
	cctWm+ZonAv+8hDNRvOpaOlWpB5j5N5RCGpveX2A+G2beV3gEcI41/WOY6d4HZcP7oHsiQacSE2ct
	jfH70GTgmwzLi9blvo5EkZDzGLQDiWBbQr5WjlAOwWkvgk2ne3eDV0ZDRpOk/yzI2+vXzSaiU53qw
	0uWE/kdVxTvi3IKlR3jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfuRo-00044W-75; Tue, 25 Jun 2019 23:01:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfuQi-0003d4-RJ; Tue, 25 Jun 2019 23:00:50 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6A9512086D;
 Tue, 25 Jun 2019 23:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561503648;
 bh=XZFb1bPM2OTbilPsddH9Pql5EwgGw3s5eRnhL/AV5B0=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=YJooSIj28SxbPEkKyN2o5czbIwdY9TBypYR8CqhVO1KvbNY74WYo0kNy/F285NqIC
 OQVkiGFpuGCqaB7oGfRMcSC7efVBS8TG+xTKC7Qvl3PzpuDCG/S53UiMFvyZydKZGD
 C1A8ucallZI5P3yFYQGq3aLApzU3B8lLJR5Yilu0=
MIME-Version: 1.0
In-Reply-To: <20190611175839.28351-4-nsaenzjulienne@suse.de>
References: <20190611175839.28351-1-nsaenzjulienne@suse.de>
 <20190611175839.28351-4-nsaenzjulienne@suse.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org, stefan.wahren@i2se.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 3/7] firmware: raspberrypi: register clk device
User-Agent: alot/0.8.1
Date: Tue, 25 Jun 2019 16:00:47 -0700
Message-Id: <20190625230048.6A9512086D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_160049_101523_C96D1E02 
X-CRM114-Status: UNSURE (   5.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, f.fainelli@gmail.com,
 ptesarik@suse.com, viresh.kumar@linaro.org, mturquette@baylibre.com,
 linux-pm@vger.kernel.org, rjw@rjwysocki.net, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Nicolas Saenz Julienne (2019-06-11 10:58:38)
> Since clk-raspberrypi is tied to the VC4 firmware instead of particular
> hardware it's registration should be performed by the firmware driver.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Acked-by: Eric Anholt <eric@anholt.net>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
