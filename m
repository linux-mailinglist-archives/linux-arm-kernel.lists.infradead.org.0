Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E01BD269
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 21:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=caaKBMljqPW7yopSDd6Ls1mm1gm92/yBF/jkrSzzf1w=; b=qO86yTRf1lxXcx
	Bb2kYCf53ww5xxkVzZJ18myZj/p17KcdFHX3cSZ7X6sXSfSgzQkf0GXc2LnqMoZ3nSXA19Gz63RTY
	j/Np+BSBwkXzXHEk+wvrUiEoguMQnWXQUBwimrlwDggjQ1Pr/TRGRgLx/2W+T8bSTX1maF5U5i0mR
	i6M9JCRSSznMTEKH44de223vs68m7xeczPUzrad3+tLFG8xVRjI5oZWm235g3UPr1Lfva5TgH6Gjt
	W75d/tifCH2r6OlRdTgzJy7nO4HCc5RiGyKL4s9Tq2LNzep+MEL6RR/a2wvvBHomdmapkeLb28zVt
	5aqzuuJltYQ8U60UGhzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCqCf-00058M-Cj; Tue, 24 Sep 2019 19:10:25 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCqCN-0004yv-9r
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 19:10:08 +0000
Received: by mail-pf1-x443.google.com with SMTP id q12so1905497pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 12:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=ztDGYJ4coyv+LAVfttrEQdgcMXqg4Kriy9EN3YGCljM=;
 b=hc1sn9qIKaebOSz9we8ltrjhoIMvLleyAzfBIFg8oVbgZeB7q2cJhQXmas+QaBgGwa
 YJRVIUXVwHz9kWqcapUr6Ipz/YkKWU8bQ56QBM4F+kT616StfYzq1mHTTQyPKQI9C/CH
 8uIOTgdLeZ7flUAX/Rz6SL27oqnDGmx/pe4hErHmDDAFA1YrDPz2YjqgbGCLikM3f99P
 kjJjgMxmLwyYf32EXJ843imgVokwY/HHzSNj1ZtQfCz97/Pv8lgHx06XEEJm7xokK9zp
 LhIpX18Y/qNxzlhJckURdplDuevo97mSKW/ciISFXQeSuzmnXMs42TyHjyfxYIQU/dKy
 Z6dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=ztDGYJ4coyv+LAVfttrEQdgcMXqg4Kriy9EN3YGCljM=;
 b=YG7lavQ2ad59VpXPmvV7DXCFE8UJzxWNMTTExn5DDR1qSTHVSWIhsS4gJwwrWZEDPH
 LxllsHSuV2W/1OnCYSq/vWG+qKFURhG92Ah5P7hpHi0PLsnNz26H2EuuPaVbo/uIbUxM
 iLq5yxGf9kO0MleJS5paFpv2ku84/869F2WoZFStMUrpCgEzJDSCBb7I3+vybPuIeggI
 uc09l4raxS8BdTHp6V/BG0UdYSGusovo5t64uMfliWzbXb1DgY5LG3uw9aTZ/8QJjMwo
 3sHhBVZW60nIGU40oRRnJPrhS40NRchtecY4EDtZiO1oLGGJSIgRopKJlqeGnsLXduN6
 SuIQ==
X-Gm-Message-State: APjAAAUFZl1aotC8GC0IIwfo2q4YSzI+acbTFiSr8BRKsHTAY8C+tlbb
 9OF2zmiw8IvPSYc8VWTVZ4vXeA==
X-Google-Smtp-Source: APXvYqya2nPu+2RWqeknPa0vJCecXJC5BrkFYN+q1VPzP0Et4zZGP3Bc2YytDsgp84YFrMCkeCvzpw==
X-Received: by 2002:a62:53c7:: with SMTP id h190mr5059698pfb.208.1569352206681; 
 Tue, 24 Sep 2019 12:10:06 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id r28sm3261936pfg.62.2019.09.24.12.10.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 24 Sep 2019 12:10:05 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: meson: Add capacity-dmips-mhz attributes to
 G12B
In-Reply-To: <1568429380-3231-1-git-send-email-christianshewitt@gmail.com>
References: <1568429380-3231-1-git-send-email-christianshewitt@gmail.com>
Date: Tue, 24 Sep 2019 12:10:05 -0700
Message-ID: <7htv915x4i.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_121007_350301_7CE456A5 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Frank Hartung <supervisedthinking@gmail.com>,
 Christian Hewitt <christianshewitt@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Christian Hewitt <christianshewitt@gmail.com> writes:

> From: Frank Hartung <supervisedthinking@gmail.com>
>
> From: Frank Hartung <supervisedthinking@gmail.com>

nit: duplicate From line.  Removed when applying.

> Meson G12B SoCs (S922X and A311D) are a big-little design where not all CPUs
> are equal; the A53s cores are weaker than the A72s.
>
> Include capacity-dmips-mhz properties to tell the OS there is a difference
> in processing capacity. The dmips values are based on similar submissions for
> other A53/A72 SoCs: HiSilicon 3660 [1] and Rockchip RK3399 [2].
>
> This change is particularly beneficial for use-cases like retro gaming where
> emulators often run on a single core. The OS now chooses an A72 core instead
> of an A53 core.
>
> [1] https://lore.kernel.org/patchwork/patch/862742/
> [2] https://patchwork.kernel.org/patch/10836577/
>
> Signed-off-by: Frank Hartung <supervisedthinking@gmail.com>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>

Queued for v5.5,

Thanks!

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
