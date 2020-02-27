Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1F8172891
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 20:28:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=W7yVohreuxQsv1PcRWm+bq2XxX9u3CWlWlrC1tSyHxg=; b=rbPfMa1Sy+oR+nPXpQdQRvq067
	2ql9IQgtbScxdLu7T4cvQqSZkFNiZqgRaCNiB3GQ++JHDGP/EwB+timQXstU2yb5SgR+9Egqr+26e
	7Pygs2jtWVJE5ZKdiEcRXIqYmBw+mQ5zOAOxl2hRk1i/1u041al0gfkPgrL3Tvt2Zu0HK6knHyy5z
	cqAg5vInuvL/SUiJNnToWDNB6brJow5/N37sXPxNfI2gEBmOU4QlwZLK7of7c7LhtjvQHcAkTvO+6
	1ZzS8Si0LuYcCmUN0TlanDczP7FB7/Og5rZP3iGzzCikOyfoOBWnwSgbM/Lx5vwNZsmd0TuPDdl74
	YGdPKOMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Opj-0001X6-E7; Thu, 27 Feb 2020 19:28:31 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7OpX-0001Wf-Py; Thu, 27 Feb 2020 19:28:21 +0000
Received: by mail-pj1-x1042.google.com with SMTP id j17so211563pjz.3;
 Thu, 27 Feb 2020 11:28:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jNCZd6PX1ZXEAM0JJJbx9u4ik+xm3nBZiCZphk2ha1g=;
 b=MInX3EnV8wgU47uc9h3KH9yf6+mIM72gr7ccu2K2qz1d2ZNuKQNlMbTi3R7+BhSfqv
 rDHO0iGnakLLx+EOu8+n39dXrytRJFY8KCvjR/E/Kjw/ypO+Zj1NxY5ZCA8R15huPH84
 FW5E2JAaK62ALZphlg/hpHr/wCMZnLzBIy5s7gFX+QTlHXew0i+9qBjQXXzQ/yUefy7H
 lrpzzKT+QXfWkv/gDDevh1y300mGIZa4HahgzcvkEwQdq/zPA+xT/x4wc7AMLOMO6ZiI
 aUciO6BcpiMxtlzSG1w21IiE/aRWwu2A2cUXExP1XzUKz43HP7SH55GAdd9tIcipovXy
 uF2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jNCZd6PX1ZXEAM0JJJbx9u4ik+xm3nBZiCZphk2ha1g=;
 b=nFrhr7S6M5Tp1c/G+QlxnjkkNJ6fpcDXFFlvuPXDxXqqgNF7I7BKEYdm0ndu0O109X
 ug5ETlIDudceBmrg5dZnljAdOE3sxatbgMgLDbyzAkfe6CKYacWOHcvKsXeZS+e65B0X
 gHJLy10r4Pge1B5eLigFjbmgSWyoHpPm+jQMM/qjKhLozOqGALFvMq7p1JzANDAYZ97y
 RIFNSYUOI4MxKOyWmYaX2u4t0XnNDGURhJarfzzD3YgdXRI5l0F7LNnaNtAlbyCvKIss
 c/ywcDNDijB9fQ9CNqsSzbrV55vm/Gq5zQwzDo0/px6WSZyEcDXsCOMNm3DUuvj+E2WB
 TKkQ==
X-Gm-Message-State: APjAAAX13kAHhG83XGgql1KNB8ZS7YY/334qnxXF3OiIApPlmTAS6ACW
 GomZOI6lZN2XjOthB+SFEFA=
X-Google-Smtp-Source: APXvYqwQoz3E1P/SooEY8LLUApT5q9S4/JijUIy8oMpK0ifXJLl3yIeoz4NUFnD1/8gXG5TKSoqHRg==
X-Received: by 2002:a17:90a:bc41:: with SMTP id
 t1mr471493pjv.137.1582831696842; 
 Thu, 27 Feb 2020 11:28:16 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id c3sm8016336pfb.85.2020.02.27.11.28.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 11:28:16 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <stefan.wahren@i2se.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Subject: Re: [PATCH] ARM: bcm2835_defconfig: Explicitly restore CONFIG_DEBUG_FS
Date: Thu, 27 Feb 2020 11:28:15 -0800
Message-Id: <20200227192815.16827-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <1582462976-30646-1-git-send-email-stefan.wahren@i2se.com>
References: <1582462976-30646-1-git-send-email-stefan.wahren@i2se.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_112819_869291_04DC319B 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 23 Feb 2020 14:02:56 +0100, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> The commit 0e4a459f56c3 ("tracing: Remove unnecessary DEBUG_FS dependency")
> accidentally dropped the DEBUG FS support in bcm2835_defconfig. So
> restore the config as before the commit.
> 
> Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
> Fixes: 0e4a459f56c3 ("tracing: Remove unnecessary DEBUG_FS dependency")
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

Applied to defconfig/next, thanks!
--
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
