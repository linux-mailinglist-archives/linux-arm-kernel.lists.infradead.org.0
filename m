Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED8E14C384
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 00:23:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mbolPgCKutXQIp37VwexgpE2y6VwPhtRawGM+Lok/PQ=; b=VrI+DDjrql0WawHW5SZy0Xlc+M
	FzUEgGPfYpalhRCQBVXS49pbFLm734hfoH7QgRPJkAvot6C0aF7pdk+5eWU3gRyoUFHnRjou0o1v6
	GVQc+rjWAKM2FKFqoHXYY9Ceyn8NoFg1M12A7w05G1iL0g18tnLPNXEzXQ05paBuQa3zJchRUeJx4
	v311vIEOp6NXaH6Jg+JRuxOY0J0U+QNL7agJNDVZ15tFNTU3UNI8a2wJrSMGftnWPHFJF7g/7ZvwT
	Dk/4t1CSr02S9i6FGKBwuPjd5nYgg4MomIDCgeGWmAb9pdzxjxop43BYK8hsBDM19f3OMzJUq86Of
	0EfUcwaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwaCg-00033l-Ge; Tue, 28 Jan 2020 23:23:30 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwaCX-00032p-7S
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 23:23:22 +0000
Received: by mail-pg1-x541.google.com with SMTP id z124so7803837pgb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Jan 2020 15:23:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qtDKcDo43nmZwkqUo6vP29qxWZLR8bIUv5nEZgz1DFA=;
 b=thKN2IkHI6eoCVwhzxYpSNnGUJGshx0T0CUZf2M47Z4UBroasPMxaHiH08BWYflWFw
 h95Npz6rwv8+USJ9ELUffyniSA5/xf5N9v5y7eivzMVRvloL0gUUMgyPlhdEX/TOJ5IY
 wjlvNrNZWfTnUYJMW6wRgmDjtHfoRv1fT104AlCQyEaWKCWMbuW8De0jh60YJq+6796E
 FOhQ5zHfjHVt1TsSVfxVG5A5IUbltqkfkuKChjzv+jzf8kX+ScS8fBmtsasZoGZr8sY8
 ExbfdaFzJp9S8vHSgR8rh4A0jswrgJR1SlRnxwRCvUU2Pi/qc+/MPML1thBuX1cGJbDU
 LsVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qtDKcDo43nmZwkqUo6vP29qxWZLR8bIUv5nEZgz1DFA=;
 b=R2kDesXUHlNNfHoGRemIEfvP77zuPbfI8Y/wpRn982fYaGKowm34sateSuEK1y4+Lz
 vz4pZVmj6/XkU0JZlbJUA/TL9Jll0FdYBK1zmhKXzJT6prpFEGKRXsr/YHnIAFmJjEpg
 lc3C9Jfdo0BfHvzJb0yjD7g835OGM3MGE0BqE0OqjjtTA9qFxnKkAw7E0ntGKd2gWCyU
 Ru3vPRtQ0p5wOIGSb2xDPjx3NiMcPGwm6EaMayf1/Wy7MMkSAEUhB2ToBAeS4PcHKz/a
 WevQx9tHAlPJIILIO8yoYt47A/QDdF2nPJBoIzK34Mk8yCR+cnTeHJFQcYpcl9higlM8
 Bl7w==
X-Gm-Message-State: APjAAAX17mAQoqsvqGnbMi3EsJPOQZxrpz5lHdwwwJKfrvSWEZM7Oq0V
 Scn39k+SwzRAn6uDqjvxI10=
X-Google-Smtp-Source: APXvYqyn/HkOe8Is5zRKMffcPVNx+Nyon8siSDSZfcG/4zALgTESbcVmvxO8gDgiOL6rEr+ehLf3Nw==
X-Received: by 2002:aa7:961b:: with SMTP id q27mr6351445pfg.23.1580253800364; 
 Tue, 28 Jan 2020 15:23:20 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id w187sm126882pfw.62.2020.01.28.15.23.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jan 2020 15:23:19 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Olof Johansson <olof@lixom.net>
Subject: Re: [PATCH 06/20] ARM: bcm: Drop unneeded select of
 PCI_DOMAINS_GENERIC, HAVE_SMP, TIMER_OF
Date: Tue, 28 Jan 2020 15:23:18 -0800
Message-Id: <20200128232318.2654-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200121103722.1781-6-geert+renesas@glider.be>
References: <20200121103413.1337-1-geert+renesas@glider.be>
 <20200121103722.1781-1-geert+renesas@glider.be>
 <20200121103722.1781-6-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_152321_293751_CC77D307 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 21 Jan 2020 11:37:08 +0100, Geert Uytterhoeven <geert+renesas@glider.be> wrote:
> Support for Broadcom SoCs depends on ARCH_MULTI_V6_V7, and thus on
> ARCH_MULTIPLATFORM, which selects PCI_DOMAINS_GENERIC and TIMER_OF.
> Support for the various Broadcom IPROC architected SoCs depends on
> ARCH_MULTI_V7, which selects HAVE_SMP.
> Hence there is no need for the Broadcom-specific symbols to select any
> of them.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Ray Jui <rjui@broadcom.com>
> Cc: Scott Branden <sbranden@broadcom.com>
> Cc: bcm-kernel-feedback-list@broadcom.com
> ---

Applied to soc/next, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
