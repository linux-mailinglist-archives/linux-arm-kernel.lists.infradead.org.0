Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65986183A34
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 21:07:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KYdo/mQgKW4jqPUilmYOl/9OZA0ssXIHHbqsF/rjQT0=; b=aekvqxpfwNRpMG
	lEemCSz5swdHOllE8ISunZR3thGgwi1cUprQzMA/JELY+HVU8UXGAakuolsnssZRPg2tIxfKwjimv
	lc0KdeB9q/jAhzlmZxGdvHIrbUGzfwiQNJno4oVc0HfekSIjRiQDIlEu7c/lv85j3sZhxbIXuK4V2
	GIRm/KfYViM4prJ50Y9z7bCBSCq8GJ1r8Q/q7WOkM8nBfxfrA++tFDx8gaHhdKJdo+xJAsC2efawU
	5eJ9OL9f4+kJUBIfLQ4Y40z8DXwJvR3iiVakoA56R6Xwl6wVZyGZJnoprJEk6kyWjkow9LzzhfdpR
	qAd+9Y0fgtUOZww/ZVoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCU6u-00067d-0B; Thu, 12 Mar 2020 20:07:16 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCU6k-00066k-18; Thu, 12 Mar 2020 20:07:07 +0000
Received: by mail-wm1-x343.google.com with SMTP id a132so7526638wme.1;
 Thu, 12 Mar 2020 13:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=oVJZ06Uat8mghcu7FmlV2FCnZk1gGTm1Au0/PhDgTnc=;
 b=PjKn4NjkuLiy7uWakk8HvhwWjS1OXn5oxiCD9mtJRTQ8OlPVnZk70yx+b7yYhseQrj
 Gh1WVF6zuwIAwbE6U1zpM8evpUKpcqjf0Bk+0oSF8E6UVjuqQV6m+MyxbC8QAzGdVxyB
 gYuhOyMLXB3Hzjpx7dkBLswfazkSX/j+M8sWv3zCr+AEmISa/z/NE3qLjrWOtznzbp4w
 OTSgG83s7qXf5ypTh9yLQ6xWnv0cjpUKcxC2XuTeqrQdvk64V7PDm/qMdcKKDvn+RGtA
 duVRq9WqEr87kW0q+1/jCJbsBANvk6NWU0fejP6uSPbzJYKBZY4Pw+/G2aF0NERW+fzX
 XyTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=oVJZ06Uat8mghcu7FmlV2FCnZk1gGTm1Au0/PhDgTnc=;
 b=hzlRF3WE/p0+g+0UF1XBVFd4hg8nzbtRTLfKBgz2eyzQ0q8ZG/Z404w5uS8ZZ0FXFw
 +IGMsqDR3Z9EWQHa6MjAu78IXGIEb5/xnjZsDgTPUg0avDvKe21T18nFubWFl4f1fLii
 gI3qZEqoyh9rOTjn95gJrk9ZiOwr1LM73XP323xEab/ZxiTPg8Irjyp1hKfKXsJEU0Pw
 cirlNA8EJogiZqgST2xoQvIubWYItOzVuZ0qndGyhmMy/jCxphbQ9D7lJLvQBAw/Zl+l
 6pSC5oyTXMsOn7P3bl5OszAUNV+wiNopZUGkirzj6eC6fUn69s8S84wEkRHrHLQRH6fj
 X2YQ==
X-Gm-Message-State: ANhLgQ1GOUdbY2k3gh+aZhqQk7tSc7LSPf4B9xQWn4kW0ILOaxblbWbz
 g79Icuv9aHwbOyfIKsoF9Ks=
X-Google-Smtp-Source: ADFU+vvVXeFdPNIKq+5cMb0R2iF5gaF0tUh2Ro93R4QnS32tWw4dVHH1UygFTwc2lyHDAKyIy5y32Q==
X-Received: by 2002:a1c:5502:: with SMTP id j2mr5138310wmb.93.1584043623255;
 Thu, 12 Mar 2020 13:07:03 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id k18sm26530240wru.94.2020.03.12.13.06.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 13:07:01 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com, Nick Hudson <skrll@netbsd.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: bcm2835-rpi-zero-w: Add missing pinctrl name
Date: Thu, 12 Mar 2020 13:06:57 -0700
Message-Id: <20200312200658.4524-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200312090345.8352-1-skrll@netbsd.org>
References: <20200312090345.8352-1-skrll@netbsd.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_130706_077216_A863269B 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 12 Mar 2020 09:03:45 +0000, Nick Hudson <skrll@netbsd.org> wrote:
> Define the sdhci pinctrl state as "default" so it gets applied
> correctly and to match all other RPis.
> 
> Fixes: 2c7c040c73e9 ("ARM: dts: bcm2835: Add Raspberry Pi Zero W")
> Signed-off-by: Nick Hudson <skrll@netbsd.org>
> ---

Applied to devicetree/fixes, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
