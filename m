Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F48AF907
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 11:35:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tzUoo7JcxoL4LbfsRXPdI7RbeZt+GpmWtVPhSBWP494=; b=SVF4Vwl74VVRo9
	iBcxpW6A8cwFoD/B1dIen9+8obwLPohMJhVgG3BV78keJEUqPonKG+L4bb0r0XhZYWTvAOZH/5GuH
	igfvwC1Q123DPkMKwbvYaFZEe96NoW3p/onJne2K2wgsGVPALpBGPoiAMLAs69bw5GLqXe/7K9pHE
	XljUoj1qX6e/kGT/YSSimIM3WRO/ROCg8nqzo5iglwTFUYzNPnh7E9dw/JVkTHuOzHmhdff1j3F0d
	RnaBhj87B/4yYemt/hIag8mN92LIyxcTCi3BEilWjpeFuGEfkSv7LqTe0aiXtHRX8cAAF/2Y+54i5
	2oDHGeGGkpoxk5czZ0cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7z20-0006df-9o; Wed, 11 Sep 2019 09:35:20 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7z1R-0006RW-I8
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 09:34:47 +0000
Received: by mail-lj1-x244.google.com with SMTP id l20so19334031ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 02:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LFTqrDSGPqM5Rbf4MHh4Cpzi8wVBsnY38oD1BczrIT4=;
 b=osjI2/rUKypUftfsqOHyrN59YoxOwshy1+/i/o5n1NWMpuQPUpCQUKOHKTvA0LzR0l
 DJ3dM+/OF+TmuYuxQgZ4Wt5LuWd9fB5REMpxJdptzIuzXmoZwebXEvZ+Bhe6dyKv0dL1
 3b/CWDNSltOrJMoPdbhe9qpcDlEekT0D7rSSMMRoOm4QqeBVDEcQr9NvyM3utFUv+4f/
 O9Q3xd1AbUmF0lBlAANYfPYJFZav4dWuqd8lUZFEik5khcr9FIJ00+Nhm0srdVQA3juO
 TWQXAPjOuYUm9Jr3z4XMNiatqem/btCwFCF+pjGY28M4VTSZqCemgW5lwm+Vt5pCrXBq
 IpMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LFTqrDSGPqM5Rbf4MHh4Cpzi8wVBsnY38oD1BczrIT4=;
 b=tBl26xaCJZLj3dGJGG6ptaGDjw+vRXhYdRUjEYOhBxQ8tBULwVYE6/SnhGeLPZQsQd
 76kYSlpidjtETcOSnPL3JvxE3hEoPwD5DO+0IxDLZrMofaE5HehKq3pn9Xa1f9QX0sLy
 ctOPgC1DNY8l/CyhM7FLQN4oLy09ehy8jTSqku2ie4s9yo6HCCWq2bqO6Teay7Fmlwp6
 egfWntG7BE8cPJiQHwOCx0SZQ2ls032q7kXqEW0c6SpQg96UN5T/Vgo/JBgFCrDDvZV5
 EjsBaF5BSHIWXtaLJP/rBqT6IHNBHesh1L9vnpIPfLQ+mP0Hu9Tl0SbtNKQDghGjxXZ5
 mYtQ==
X-Gm-Message-State: APjAAAUARPPSuSrmbu4kVkcr3lD1Af3MmWe3eb0BuU6ZoUU4i748LdNY
 +OHeza/5N29PMaRYTFGUgwU7MLaxFLNPhFDbJDrbpQ==
X-Google-Smtp-Source: APXvYqzo6t7hRvy0qG83lG9IT1ljukS0U1MgOkKKQb3y96ro+RFSmsfHLUjuc7xmYEc36vZpOaTczbQjCjOq9/rUa/8=
X-Received: by 2002:a2e:9dc3:: with SMTP id x3mr18956643ljj.108.1568194483710; 
 Wed, 11 Sep 2019 02:34:43 -0700 (PDT)
MIME-Version: 1.0
References: <1567054348-19685-1-git-send-email-srinath.mannam@broadcom.com>
 <1567054348-19685-2-git-send-email-srinath.mannam@broadcom.com>
In-Reply-To: <1567054348-19685-2-git-send-email-srinath.mannam@broadcom.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 11 Sep 2019 10:34:32 +0100
Message-ID: <CACRpkdZe2btC-vjRq1rPaHA9pXUi8N_cZT-RQ5m=PxjmkASieA@mail.gmail.com>
Subject: Re: [PATCH 1/2] gpio: iproc-gpio: Fix incorrect pinconf configurations
To: Srinath Mannam <srinath.mannam@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_023445_719291_C7AA3144 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Li Jin <li.jin@broadcom.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 5:52 AM Srinath Mannam
<srinath.mannam@broadcom.com> wrote:

> From: Li Jin <li.jin@broadcom.com>
>
> Fix drive strength for AON/CRMU controller; fix pull-up/down setting
> for CCM/CDRU controller.
>
> Fixes: 616043d58a89 ("pinctrl: Rename gpio driver from cygnus to iproc")
> Signed-off-by: Li Jin <li.jin@broadcom.com>

No response from maintainers for two weeks, so patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
