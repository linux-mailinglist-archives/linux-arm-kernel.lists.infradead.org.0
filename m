Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F9DF4D20
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 14:26:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QaNQ5Xig5TtSLYRvtL6G95j45zZ99kydj45oV+5ebn8=; b=Z9Dp2M4FjTWiXF
	QXbvGFlB3OxI4RJeMTDNJOOTprP15PjluTljlJWR6L5VzwKsRmpSzv0gO0N6wBtlugREjHiYhtgsv
	SdQ8rKwxh/yYhD1f0AAtC0YMsEGA2xTHQJ6bE2bzx2PiP8f0krRtqH5IstD86FAQGxNaV32hpFk9f
	b4XFENk+tE+veqnuXXMfGFn9pDQWBHHhGsiSGQbvEVQpkoVjI7n0lqEOnilhbA7NM/m3SvvsW4sy0
	3S583zZWmNRPi7eOB3zsersN3257bJFQl4g1xITy8c4J44//g3hHZh5fkPg/j7494s7p7r+xEgSJj
	Xn0goXQtg0Kyh9XQQYeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT4Gw-0008Kf-MT; Fri, 08 Nov 2019 13:25:54 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT4Gp-0008Jp-ND
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 13:25:49 +0000
Received: by mail-lf1-x129.google.com with SMTP id d6so4073493lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 05:25:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EoxLq8xAiahmtAG02Jh5To+ku+zEc7SRqeg+jbZoqaM=;
 b=uwpTC9QTf7HPtj4ETXyWQnDnTlxrbasCpJck+g4wX7pU0OLcCSelaDoSd7xTTeYNVS
 2Fg4dD5JVrZaqu+2rOGHQbsm3qv7jMTemR+jrqjMvixu/YeC+7w0+ssERZYGfwqTq/5O
 j7AXvjVZ5jSGn3zLN68EKksBJXA2iSZkFqVCBu5UCLA2mHb4onL5stJRqmf5Kg9XeLQF
 Ql++ch3NXH7z8aAhFHXfORXMMt2GOZNT8lnt8nfxPkh/AQPiSWoAmuD5jzV+C0Z56nZE
 QcqkEFIs6Q02Nh2KJyqu5AegYolftHvD0nUzAoY7JMiev+6imhgfc7piTk1Z9e44UBUz
 wqug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EoxLq8xAiahmtAG02Jh5To+ku+zEc7SRqeg+jbZoqaM=;
 b=rphXS93Fp+piRHqP6MW/8NtllmMl7xKX69WyQsix2lXX+4Nw5rpUWOF2kG6LIosz2a
 x/Oi6wFD3tAK3iwNH8XU0TQZ8i21xODVDOIEzINLSTxKZsI3hFw+DzN5IlpE0NRFvWJE
 kVNu8K4UHwzoqInUkmarZrjwuTJnQ1VChLxyvjbj9Ui2/9VHwZMqSy+96GOW6FtJqLt+
 q6wep4IothbbzOC6sPEJEmFsiv5JtK+A6pOWaBqBzgfrnkunuSggyPpUzwew+3GffoNO
 ktZRVA6RmCeBHakri13ftcyKSNeILnT5oAbBeOqOL7zHU354kixVYSV2tyIus78xO8sn
 rJiQ==
X-Gm-Message-State: APjAAAWC5Ec0bYEor7NIZ0QSrwt3ucgeY/Pv8FoNC1U0vgJyAQXYaSIr
 QHQnmrs9tJGJqNXiP4u6bOXXwXG7s85YqqMBpfJ89w==
X-Google-Smtp-Source: APXvYqwb/LRpvMMAZIgxfWG70/wUGzF+Iv52O6bA5Mu7o8I4M2h1xs4Mo6+ju8QtVBufTmiqNKv/sdxwN/xRBIU0CPk=
X-Received: by 2002:ac2:533a:: with SMTP id f26mr5736269lfh.86.1573219545608; 
 Fri, 08 Nov 2019 05:25:45 -0800 (PST)
MIME-Version: 1.0
References: <20191108013543.183804-1-yuehaibing@huawei.com>
In-Reply-To: <20191108013543.183804-1-yuehaibing@huawei.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 8 Nov 2019 14:25:33 +0100
Message-ID: <CACRpkdbb05CMkwA9Um+xgAOif76GEaA4WYuZGQS1Lq8UbUpS+A@mail.gmail.com>
Subject: Re: [PATCH -next] gpio: xgs-iproc: Fix platform_no_drv_owner.cocci
 warnings
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_052547_764633_A8A015CB 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:129 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Branden <sbranden@broadcom.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Ray Jui <rjui@broadcom.com>, kernel-janitors@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 8, 2019 at 2:36 AM YueHaibing <yuehaibing@huawei.com> wrote:

> Remove .owner field if calls are used which set it automatically
> Generated by: scripts/coccinelle/api/platform_no_drv_owner.cocci
>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
