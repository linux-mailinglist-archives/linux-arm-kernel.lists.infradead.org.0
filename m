Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 892489F098
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 18:46:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LVvd0p9msEV1qilFdZ9QWUKH3eY7RHgLWA7jxLk07QY=; b=WRVkF6lQI6qP9a
	zmrlnC7CzHGsXxv4NZlU+Ru47/4oWAiqXbnzG8joyTLPIxXaOrIK6VrcG1dPiZc6ChmWurhNg31NV
	agNuipUs4P+JuQ1pTRXDFWhRcoqDxd/LvkRAs89uOHBNsgyNaUyL2p+cHSaaYjTcInUz4pCg5ESSf
	gfm+Lx1QtgRy4hk+ruKeWWsTstYam7dUnggD9EWJ3kCqbyClDtPFtHZ9enl2iuB80YE78scm7J3jv
	boJu+WarXcPeZG8hWUFVu3PM7wsLpU50wgLuTXcPNBo6HjCDN7WJnGb3312IXuC0G8Jl6jBWFzT4M
	oqO6Ww5MP7dh8rW9xTTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ebv-0001PF-6r; Tue, 27 Aug 2019 16:46:23 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ebm-0001Nx-3C; Tue, 27 Aug 2019 16:46:15 +0000
Received: by mail-oi1-f194.google.com with SMTP id t24so15451921oij.13;
 Tue, 27 Aug 2019 09:46:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0lM2LSGOVkJcZtWFfD5Jdwg0IHy7hecaVTT/aMqFXwU=;
 b=Vb8BqkmkUKz5DkidpwEkgTyG6lsq4KA5OyUPxPDPIY//y/nmuGySe/FWa6R0kADmPw
 PUvyONL0qBtCxO+8Kwc2rYM2Q/I16wR8fd1SejUjNlYhAawZBNloV4UaxbqkWFnSQovq
 n0TTyo93CVqbdrgTKrqTRS/oVWlz86fLNxBbNUjwxMGZfgy+zS+kui7WHQ3AUCEtbsSi
 C3iCu0bXY//ekj6/IPr6Im7RjtGJ3ffdWmYc5CAS/Qk6U/x0owirdNKAD0NpC6BPi5BF
 FdSqvoLZQ/IayCT6VV8OIEdaxkP4llMVK+KYTy5hTzyeZWkdtRuM/M/+7+UnnYwZQwmY
 uIDg==
X-Gm-Message-State: APjAAAXubSqlxCD9//bmBevJJYFf38W5TVLxZvyUjULJADggNUilSQgh
 GEGEEiCe0cUUIa0gg6VUAQ==
X-Google-Smtp-Source: APXvYqy/7mhHBbKaDA0gXbeIS7o/GWKkWjXh2VhvxIQBONNcesOLPhf4YOZcCD9RmMJGg4w0JY1Pkw==
X-Received: by 2002:aca:4f07:: with SMTP id d7mr17082181oib.70.1566924373339; 
 Tue, 27 Aug 2019 09:46:13 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t23sm4500156otc.59.2019.08.27.09.46.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 09:46:12 -0700 (PDT)
Date: Tue, 27 Aug 2019 11:46:12 -0500
From: Rob Herring <robh@kernel.org>
To: Frank Wunderlich <frank-w@public-files.de>
Subject: Re: [PATCH v6 02/13] dt-bindings: mfd: mediatek: update rtc to
 include mt6323
Message-ID: <20190827164612.GA18496@bogus>
References: <20190818135611.7776-1-frank-w@public-files.de>
 <20190818135611.7776-3-frank-w@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190818135611.7776-3-frank-w@public-files.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_094614_138271_F2A22848 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "linux-arm-kernel @ lists . infradead . org Alessandro Zummo"
 <a.zummo@towertech.it>, linux-pm@vger.kernel.org,
 Frank Wunderlich <frank-w@public-files.de>,
 Josef Friedl <josef.friedl@speed.at>, linux-kernel@vger.kernel.org,
 Tianping Fang <tianping.fang@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 Eddie Huang <eddie.huang@mediatek.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 18 Aug 2019 15:56:00 +0200, Frank Wunderlich wrote:
> From: Josef Friedl <josef.friedl@speed.at>
> 
> add mt6323 to rtc-bindings
> 
> Signed-off-by: Josef Friedl <josef.friedl@speed.at>
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> changes since v5: splitted from "dt-bindings: add powercontroller"
> ---
>  Documentation/devicetree/bindings/mfd/mt6397.txt | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
