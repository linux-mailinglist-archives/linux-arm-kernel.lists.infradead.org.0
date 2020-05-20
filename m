Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B081DA628
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 02:08:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=urF9GP0XcZZ6QeecVf/ZjSIDTdUuI42bJLxR71FBWCk=; b=h/45fEyHQpbkOu
	zGYJNCA0OnkBYaNH8C8KSYFeHhDWId6AyxgRnI6f9hxxaQ0mbkwD+z2Vpr6e4Ivbg7t9LUoZuPcSx
	oxdc+di8Lus+Xyd+IXEuH0xpQeJLj+huOprfLdYSTooAwuVOlv3O5TAa1u6jPqotXDUflm7dty8KV
	We+06OAddjf49d876LC1fO3zymTj/F1yyAsH0RLXo5P2ZX8viZecm7a/mK/zfjVOLKsHt/pDQ29wl
	xkDrdyeu0VQSWvacvJuKvzn0ncl/wCAEGlQ29hSTd3JrCV9e2t1F0TtbDqtprnmIBD9kCLORpIf82
	zfJIyZBHXrUmKkTBnF8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbCHk-00013n-FL; Wed, 20 May 2020 00:08:36 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbCH0-0000UO-Ek
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 00:07:52 +0000
Received: by mail-pj1-x1043.google.com with SMTP id s69so424900pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 17:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=B1c0jUXz486+RagbFwDxd+sCq0lsYsmvP2f98G6U3js=;
 b=blOTHPmlZx4GfKOEV01mwt1fb2y8BBOOyMdVTyMjtZX92rrDcpb80U2b7a2VVbC7fk
 3h9M1dtqhrTXK3/nedw7/rkc/XiMNe0BCyBwr2xa2ohQ4Ke0D7JYYdEu/WN4Qhf6TXS4
 jV6rk/VqZJCTP8sxaPzJZrWS4mUGgwBCXhuhaFARh9vVb6ORLbtqYI+p7C6vxxSolo7z
 F6s6XDCfwfwNI7ZD24RYmSZYGggfpEVV2UEQ8wLidhB7yWOCnh9Gn5TRrTV4xjv3NBc/
 K2JtUu5z5vj30NuPBBijpYQCnGhQgnW5OZD9OpQCLhE5dMR9gek9vc/p5aC0CVtCe5AE
 8EZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B1c0jUXz486+RagbFwDxd+sCq0lsYsmvP2f98G6U3js=;
 b=FRi/QoAnxrdNtv1BzbklsjAT/blTkykMlxazWC6UrgBkfLgLTyJwWDHGSvvHvRjOZW
 Wx/A7ilVUCGEGH8P0tgULKz2sQsBcL5ayA8xSVltyhMP9zG8FFwPa6O6hGcMPbPYs79j
 xYZj2V9y5+K2lC9XsTI9lqWUKonGAVAxlWze22mL67/ph3BwETXaYFophJN1NfjX/PMV
 oCQ9Mluo/k0Gqdkb4ONWwDgUJMVxHal5IeaGL2cOMIN27yjcQuSrJ9GNR+R8Q5i/HAAF
 DfcCGaMA9lzrFbmT6J0j2P9QtSHrCFLYhdkf26FQ1a4ay2L13EsL0cav1wVMGdodMnHV
 ZZxA==
X-Gm-Message-State: AOAM5320p3ZtKH7rv5LFJ34nuEFF9FxoC7sam39x2MKPJbaunAQqbETO
 2gBy4hiA92gSU/9/Bv+v6avAGA==
X-Google-Smtp-Source: ABdhPJwRg3C6e5l8lZIpfVpBtp8Q15l/WvuHFOKB6j8KRjl0PT2Y5zYN0N3CqoydGjhxrt37hyXpGw==
X-Received: by 2002:a17:90b:3118:: with SMTP id
 gc24mr2074289pjb.41.1589933269389; 
 Tue, 19 May 2020 17:07:49 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id z13sm517136pjz.42.2020.05.19.17.07.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 17:07:48 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Christian Hewitt <christianshewitt@gmail.com>
Subject: Re: [PATCH] arm64: dts: meson: add ethernet interrupt to wetek dtsi
Date: Tue, 19 May 2020 17:07:43 -0700
Message-Id: <158993320300.34448.14097191629208785856.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200518025451.16401-1-christianshewitt@gmail.com>
References: <20200518025451.16401-1-christianshewitt@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_170750_640936_64BD78FB 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 18 May 2020 02:54:51 +0000, Christian Hewitt wrote:
> Add Ethernet interrupt details to the WeTek Hub/Play2 dtsi to resolve
> an issue with Ethernet probing in mainline u-boot.

Applied, thanks!

[1/1] arm64: dts: meson: add ethernet interrupt to wetek dtsi
      commit: 647e1643d61312ce08172e466fa1c8d8a5c8fbc8

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
