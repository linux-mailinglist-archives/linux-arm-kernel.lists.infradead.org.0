Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0482FCB4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 15:54:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/M6uOj6xEe04NNRnbijcF4lcT2w3S6oXPVCrRf+jw2s=; b=tDM5whqopBs9GS
	v5dbOxIF0LEzabknKvw57vp8wTXCvQeVT721YUrMpI/XBqPkLBPv0BipvI9TsUBbykQF4gkhbT1yr
	GZjR1HUfATuXyo2BrWejBJEQXtL4mtR0hZ/6XZGVRUrSpjw/lHZsSFhYHE/tiSMCFbkGEpqAY5Iz5
	y4xhTjb+wLrXs6pwoCN1ot+g7mMEygweKOMdzpsGibJNGmSAggul2i0ujdcj3SDOv2E8ue2WSBCRe
	lSeb5YKYiict6fZKHhm5WzcT93RjpnETNFuwU2OfADdTindpxCO5AYffAKdccWlwHVzZfuyXJEu+c
	c/fK5uTCgGaMvaMI4aWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWLVs-0007o4-5e; Thu, 30 May 2019 13:54:36 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWLVk-0007nW-Kx
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 13:54:29 +0000
Received: by mail-lj1-x243.google.com with SMTP id r76so6116906lja.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 06:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZYeS3vlckeF8BpdV5iUTrocNbtJ+Q61Y1uqpX7BWj3c=;
 b=BQqOLMrkrsPF+BYvLrZiIdzRffLAEm7Hf/IvICWe3yZQYWAemGF0e0eP++j/dBQKba
 F23t/8SJub4gShJJNA/58EZjK0wYFVmVOYtNkAkCiDIp2M0fgYvokHNogJy8xFTUkcxD
 1zMthXqTLef2ovHwXrakFivoSEY/vAcWZvIo6hIs7w1XEXtScbKsmkAI85ASR0UP9V3x
 kbBeAbBu6bW4RJWOqqFgrSC6eZgpz8/2Vcz7DeKm22f7RN4aPHnvZWCw6MX8fWuxzwxB
 mL0s4T3Pqd2LMM3BMlFKfI/1/ckaQ3qMgOyJs5lBO9cPo+JUzRACVKlEBC8zqLNkaukO
 9DZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZYeS3vlckeF8BpdV5iUTrocNbtJ+Q61Y1uqpX7BWj3c=;
 b=gJREiNI2tIDFRdd3zO8DQr5DWcbmGUMgT7Zr+7PL4y9w7dXP3HDsYuYH/te1H5Fiw9
 Uzpjh63+CCFxQ+LYx9Dgkjt26eKCEWZ5xXR/BsQvQIGymI6uNrp5Gxaht03qmFUQwxpr
 NhzbjCfab3k6UZgfcEhU+Ve6qdklSiBK5mQYiNjmqr/bH6dRYHE8Vf3oMi6mtI+8TIuO
 tNFVprBRz/SHXud74Ied9K4/mMNgxm9yvJ/CVbv7w1H5HEYSejqnyzoYnan6phvb9zWU
 yAm4SiVUG23U4dSUgZFnrgebAdsy5aVHL3YzfgfKe+DDdCUQzXD4otzZVoW3gxB7HNC1
 b6WQ==
X-Gm-Message-State: APjAAAX0pCtTR35Mt9UnxLZdiOE/lVSqiS3ujUZ+Gl5v3+DPYUwNJiyM
 rncVzLEQuKYTI44PgOJqAi1yPpn/NFI76BrA9As=
X-Google-Smtp-Source: APXvYqwCVcEONBITezakdpgdZw3M8y1pWbS/jGpy1P2647lY5Q6EdkejK0QGG5lWpMDissOl9JOHT8lMLJdokIykJvc=
X-Received: by 2002:a2e:9a4f:: with SMTP id k15mr2236927ljj.159.1559224466110; 
 Thu, 30 May 2019 06:54:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190529154229.14911-1-bigeasy@linutronix.de>
In-Reply-To: <20190529154229.14911-1-bigeasy@linutronix.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 30 May 2019 10:54:16 -0300
Message-ID: <CAOMZO5BZKNjeoCKnWT_LsL8-SzdzuWq=iVySQqmdJU63RMSAZg@mail.gmail.com>
Subject: Re: [PATCH] arm: imx6: cpuidle: Use raw_spinlock_t
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_065428_685382_1ECFAD94 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sebastian,

On Wed, May 29, 2019 at 12:42 PM Sebastian Andrzej Siewior
<bigeasy@linutronix.de> wrote:
>
> The idle call back is invoked with disabled interrupts and requires
> raw_spinlock_t locks to work.
>
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Should this fix go to the stable trees? If so, please add a Fixes tag
and Cc stable.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
