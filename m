Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF6559348
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 07:14:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zxqevw6HqEKa7WiIVC/rWDB5A/5ZNL/Cj4F8GbPlM0Q=; b=aJRgT7PgUnLBjn
	iZRevLAKiEwqwyAJFLOW/Al2WZeDE3GufHimj01mHRNZlZDZcZUnXwm0w1+6WFbbHEBM3BApexqcj
	uAGf1LTt+4EeRAfno/EwTZnHF8LNXSkHVcuZ3nYKTqm2eRFFZjppWUCu2y+wUZXf3x6I7rqeIa8S6
	YK6hdZkIq45H0FRq71iRNjmVXuUQOz7durM1CThOvO6G1jDkCjBulYV7uFRPYs2QxOqrdyUsDLAYN
	+AI99nGggXsaA4+z+6Mq0H6tupo9/E56MlKDHnje4VDQDtld6fggKXDcrKKFZP8i8WpRgeH+1Hp0I
	OT4M5z7xBjZX+MDpNwwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgjDR-0006RY-7m; Fri, 28 Jun 2019 05:14:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgjDE-0006RD-Ej
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 05:14:17 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C988C206E0;
 Fri, 28 Jun 2019 05:14:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561698856;
 bh=DhELx/49gV/5AuHJO3qXMkk+Qyz7QJ3lUm8zTqvLcYQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=quxPhB6DFbqKCfyAC8+TBO1u90nmYR+3Pv+Kq2NZ+nT5ZtaFJQiQzhymfHzYN7Fcr
 +08B/y4VUwyws6NcZO/49T2i1tQ3Y9EyyrnvwPyNROL1SUVcHL6QKu5LrBNyNEsXqj
 rHKtZAZVllT4ZxBR7WA/Ud88xpfD79ZMDu6qwjEg=
Date: Thu, 27 Jun 2019 22:14:12 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Keerthy <j-keerthy@ti.com>
Subject: Re: [RESEND PATCH 07/10] crypto: sa2ul: Add hmac(sha1) HMAC
 algorithm support
Message-ID: <20190628051412.GG673@sol.localdomain>
References: <20190628042745.28455-1-j-keerthy@ti.com>
 <20190628042745.28455-8-j-keerthy@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628042745.28455-8-j-keerthy@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_221416_513792_2978814F 
X-CRM114-Status: UNSURE (   7.29  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: nm@ti.com, devicetree@vger.kernel.org, herbert@gondor.apana.org.au,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 09:57:42AM +0530, Keerthy wrote:
> +static int sa_sham_update(struct ahash_request *req)
> +{
> +	return -ENOTSUPP;
> +}
> +
> +static int sa_sham_final(struct ahash_request *req)
> +{
> +	return sa_sham_digest(req);
> +}
> +
> +static int sa_sham_finup(struct ahash_request *req)
> +{
> +	return sa_sham_digest(req);
> +}

You can't just not support update().  You need to support update().

- Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
