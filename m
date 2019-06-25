Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DA554FDF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:10:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DFLZfnD/1K7zOdhgzAc2n2ysDWYq2frrUMhgk6bjJlM=; b=jrtqIyyGOLMNl2
	I27YOWpadSpbq80zF5Uqx+peICAPNogu7igcY+8e9FigG4RHOySNdtQGXMv8W9RL6vt8U3cMsv72y
	el+usMUwLFjhATbJk0j+7qrYy096RiFECi1LWiqMGD3HazjGJa55aYSNBePTA1z8KFncSHxfJztEA
	Yuburih1W+unaP1Jp7tViDB+Qxfk/aGADzxfS0g80ZgTKd9gyOL9JMkHSfE8kzrRgIFnhvP7fnZvi
	GyLRVgkGsO1r60xe4xlgyZDXxzkvnMMj0dWBU5r3G00UiILTBoa7t6s7Kv57rsWkBgfjSR7aSpge7
	d9AnCSeli2ScdOp5W6Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflDJ-0006qX-Tn; Tue, 25 Jun 2019 13:10:21 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl8A-0001iu-0t
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:05:04 +0000
Received: by mail-lj1-x241.google.com with SMTP id v18so16176444ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:05:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NUYUTZ12AKU4M/m0uB8jeWi4QGQa9jlQ0j9BybtJCUs=;
 b=wiLMSXfpgt7Vx4+DcVXjj0VxiEGjjeyYvkN6D1vldpXlXiqvMZv8THgEyvvNpXxZDO
 HWtvh3OSU1Qw017otVHyvQ9gEcl9FeksBmJowquhnwj5OxaVDgO2p7yQOh28hX58pyP4
 a6/xEPfvGYSvwk4+JGgY76cdD/UIqJUa6ZGgh8SF3EstOuPheuIFp+IHo7Gqe2rhRvCc
 FP1RjYDlkpqy2EIz+yxPaqvqvutJElvJ69FjiEQDDwJsbh+N2x8gCh5mzNeN9252i13P
 QKlPJremXkwDPYD4erC+bvd4TNmBG48sRdoYIENDPHnksG6z4q4W5gOqaDehC8wD6yZG
 4yAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NUYUTZ12AKU4M/m0uB8jeWi4QGQa9jlQ0j9BybtJCUs=;
 b=ZljLUsMiRljP7ibFJsTYlE/ond1MOQnbzMiEPzRlEsxGdhWAcIFmqk1PFR9GeftOVu
 ByxKb5kjsELr+41Wfk5XZnzRzmuS05u7Xt/xPlaOKCi2UxKvgEUxGNOox0NkloH0FTTW
 oXpCa3SRERGTFYiJQ8LwJp/3eqKr+zn+WwCRFsIUlb/uFwhXClgJu1V7OIJcvTOMlZJK
 GPtHMjCJlpr4X7bDa3Yp7vvmu53s77+ac1AgDTJEz6bEVMz3D/z3JntRw0d6JPhFg5ia
 H/BLMCnid/yB/57y9NnRFOXhifZOWVtSQzkW+4CqWnIIkZiuGNNj/v7nW4bepJT+dZVf
 eHqg==
X-Gm-Message-State: APjAAAXn4TpMelKk3M9r4tLK9Akahup5aPXJ+OmxrnkM+782t0Ne0FbR
 RkRYIfg1CK6ab/1wNQe7utarWQ==
X-Google-Smtp-Source: APXvYqxA6Ustih79FnNup0DxHMqsRtP4cTyvzgmj1hyPziy07iGYqv43retW4HUCIp1Yevls4iprQQ==
X-Received: by 2002:a2e:29d:: with SMTP id y29mr75621329lje.134.1561467900309; 
 Tue, 25 Jun 2019 06:05:00 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id a9sm1907720lfj.79.2019.06.25.06.04.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 06:04:59 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:46:58 -0700
From: Olof Johansson <olof@lixom.net>
To: Sekhar Nori <nsekhar@ti.com>
Subject: Re: [GIT PULL 1/2] DaVinci Soc updates for v5.3
Message-ID: <20190625124658.vzuo6aqrmi3bal4k@localhost>
References: <20190620110703.18616-1-nsekhar@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620110703.18616-1-nsekhar@ti.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_060502_617812_A8F5AF61 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 04:37:02PM +0530, Sekhar Nori wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/nsekhar/linux-davinci.git tags/davinci-for-v5.3/soc
> 
> for you to fetch changes up to 1f8e44b622dc9d47af1815ac59169b1adaa1195d:
> 
>   ARM: davinci: Use GPIO lookup table for DA850 LEDs (2019-06-20 14:36:15 +0530)
> 
> ----------------------------------------------------------------
> This pull request has a patch to switch DA850 EVM GPIO LED support to use
> GPIO lookup table
> 
> ----------------------------------------------------------------
> Linus Walleij (1):
>       ARM: davinci: Use GPIO lookup table for DA850 LEDs

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
