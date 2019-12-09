Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2705C11793C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 23:26:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9pOPsBwstOU37xg0aVB4Ozd5PyvEo4IZm4zA5PHDtSU=; b=s1x5EM/sn8qAQ2
	ZDUrGFCsKMbfZzMqqO8e7ALwSEGurqWvopvrmdBCvt8AuSjdrQnpNa0mnfLbyRT6Gxm6zSAOznJ01
	QVbFqdqMYXANNYs+1X8r3haL622cAN2+QR62LdHTEN/s8FqyuunJy8qFNsvT/3/N0FT+ZOWa6+hbO
	fL1aQp8uPhsL/xlxDSkGuHp/ytOA4I6dovLtonMFvPyrIxYRO0LmSa28dwf+uowNPulosQln1qf9E
	H9DVqeos39ZZi2spg81QLsq71wdVtar77GZ6JYVyMVhVjh9z8bg/o/5ugiv1/NASGYq6t3xXVOfTZ
	oVIBTk4bhQ3mVZUCHI0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieRTp-0004Tt-SZ; Mon, 09 Dec 2019 22:26:13 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieRTa-0004QE-S7
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 22:26:01 +0000
Received: by mail-pf1-x443.google.com with SMTP id x185so7957050pfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 14:25:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=e8vzmB2zQOVicf37JYB7f5dUsZ9PAEbPEnqlneCb8hk=;
 b=NSH9ULh/1hAOLuPMNPJfxklHlE41CsUwmWn/AlWHF+NXzPTPqa461LIDyAeuIK1ZkC
 jcvFyZM62M3TyE35p9IkhgrSTYl8uWlVlLUlyqR/zuwW4GTq75XDmk4xOazIivi0fjRQ
 HFStxYtDHWNEI+Hi/mOViXqpYWFULyktYYG0zvxkLbmQRhlWfpW8XO+VfQ0ml1j/lvz0
 OXmR1i8k6mKWWm8qHSSNqiiyPxT2sWUaaBZY7l5mRmphES0IKelAqESY+DkgQA28PRT1
 qvTzEDzU9U9VU7mP4ridDIou1QERo9IFl+safi1TbqdJMwfr07By6LDNeDRrT6sR0EIb
 PNXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=e8vzmB2zQOVicf37JYB7f5dUsZ9PAEbPEnqlneCb8hk=;
 b=g7/xyf3pvalAF0eK+R2KgxWHTrxKQt1W6Ct5LZlTkll0rzGoD3NCo9AWUKkAjduzmT
 3qYI9fqLeRPRbqGSJbUB9b4UJE5yUyYLDgHX+eHC2C3thioeajbVIos0n1PvcqfjFj06
 N4C6LsMEk8str2kHZJWPhM974Fjz6V5V1LxXJOiIhfyOC5g1OQz58KajrsMCdAnn+585
 vKNfSmdGs8o48mgfi+Y5Bh3DyZFz6tgLgd503w0OfX/zkTNI0hTqn0YjLDmecfyQe05J
 nsbFjsv9OFRtqedRnMxLIOKM8HuzkcqtyElmSUM08AHr5NR0hfEYzUxU3gFpLLLgrLlK
 wcAw==
X-Gm-Message-State: APjAAAUHJCKD5J2nKupaU6W56AAm75Y9GusPnTgekg+rzx9oTvM7Srxg
 N8lA0DKdaBeKN2CLy2KARQKvsg==
X-Google-Smtp-Source: APXvYqywvsTO2z1jHZUpDVc2D7xS1pwfKfSChZ6K2XJIA8v7tS/ZhIBV/gXtqeqzdKHsR1Wdvopmsg==
X-Received: by 2002:a62:3706:: with SMTP id e6mr32484589pfa.31.1575930358173; 
 Mon, 09 Dec 2019 14:25:58 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id g22sm515509pgk.85.2019.12.09.14.25.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Dec 2019 14:25:57 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 p.zabel@pengutronix.de, linux-amlogic@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: reset: meson8b: fix duplicate reset IDs
In-Reply-To: <20191130185337.1757000-1-martin.blumenstingl@googlemail.com>
References: <20191130185337.1757000-1-martin.blumenstingl@googlemail.com>
Date: Mon, 09 Dec 2019 14:25:57 -0800
Message-ID: <7h5ziprv9m.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_142558_921180_D0BB9444 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, narmstrong@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> According to the public S805 datasheet the RESET2 register uses the
> following bits for the PIC_DC, PSC and NAND reset lines:
> - PIC_DC is at bit 3 (meaning: RESET_VD_RMEM + 3)
> - PSC is at bit 4 (meaning: RESET_VD_RMEM + 4)
> - NAND is at bit 5 (meaning: RESET_VD_RMEM + 4)
>
> Update the reset IDs of these three reset lines so they don't conflict
> with PIC_DC and map to the actual hardware reset lines.
>
> Fixes: 79795e20a184eb ("dt-bindings: reset: Add bindings for the Meson SoC Reset Controller")
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Queued as a fix for v5.5-rc,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
