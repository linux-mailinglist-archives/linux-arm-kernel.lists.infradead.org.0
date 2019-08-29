Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30477A279F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:04:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aDkerImDjgdgvY6rnZgqBNOiL+nWr0AVPS3903uegv0=; b=V67lq/U337WA36
	nX/TQJiX4rjhP5MArlpJsZ8f7K5XUzuduJ0fuv267liEe4eoHvRYyMwnjMZ+3thiP4Z5r+Di/X7SS
	bmhz5nCaZPQRXhE/ndjyZcoy6KTpM0RPDVTKh2Kw7K0qmShtqU9skHbjulAUkLD9UabrVedD+KhaE
	78BJfc6zkbC6yvK/+sQMTvauibyXP33Fsi/BsFZp8sNdT3n5wpRBzUcG7hGI0flpXDhfi4wXxsiqA
	5yJZ/o6byGkytvdJfpi+sjByVrZkjMDJMdPyUv3jcGvJ/DtNt8s63P3lgLsLOJhL1SE3+P5GCYWmR
	v7JZqsF1l6mt79OYPLrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Qe5-0002xp-8w; Thu, 29 Aug 2019 20:03:49 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Qdw-0002xO-FF; Thu, 29 Aug 2019 20:03:41 +0000
Received: by mail-oi1-f196.google.com with SMTP id b25so3570812oib.4;
 Thu, 29 Aug 2019 13:03:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fe48EA/lrnYeLoShqq/wJVBSHCBQzaaiMh4iOsHhtSk=;
 b=A5ytJ2S1Nik0K3obPkYgVrOkEFbW29pD3o3M10F6y0XinCZH2XPmShSOGUCy5iaoHr
 RcjIp3JFS8G5CQ+M8z0lCXE/34hM4+60jbdFoW/DtAhFVbKM0kzv9VIkB4lphxZGEq1b
 ZiSO2WPnkzptUNe+s7QSZeQb/FT4xkXjkUhpVQKtzlG+6WF/fTgv6fVkIgzXkioYB+Va
 6swGpVomCe0/zLTRmy/DLP3hWpGxFt1M+uXWtUnUJlWYbwSi5acvFM0SgRQwYJVWnR7J
 NUJ2f4iYPyPdL6XLbOeRqgJqJry8b7zXHbhogcx//HCE4UPfbHcocLRoqC+O5ZicxPos
 Vk7A==
X-Gm-Message-State: APjAAAXKake81D3+LtHkzh+mNIszcch9A+UFT0N0DXxSHZR6TrpIEtMR
 4EGzDBH+2SdLqxUmR0A8JQ==
X-Google-Smtp-Source: APXvYqzebdNW3pcTlU42Qg2N1t7Occifs485wZxka97FtzwqrJOJYJk4p51QOaVG6EfPhPJAeJOmbg==
X-Received: by 2002:aca:c749:: with SMTP id x70mr7452126oif.64.1567109018502; 
 Thu, 29 Aug 2019 13:03:38 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o77sm428231ota.8.2019.08.29.13.03.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 13:03:37 -0700 (PDT)
Date: Thu, 29 Aug 2019 15:03:37 -0500
From: Rob Herring <robh@kernel.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH 03/11] dt-bindings: phy-mtk-tphy: remove unused
 u3phya_ref clock
Message-ID: <20190829200337.GA2169@bogus>
References: <e99c0d7a55869a4425250c601b80a3331c9d0976.1566542696.git.chunfeng.yun@mediatek.com>
 <35d020857cd0e2fdc77023dad36221288d7a5fe1.1566542697.git.chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <35d020857cd0e2fdc77023dad36221288d7a5fe1.1566542697.git.chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_130340_511206_3F418E28 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 23 Aug 2019 15:00:10 +0800, Chunfeng Yun wrote:
> The u3phya_ref clock is already moved into sub-node, and
> renamed as ref clock, no used anymore now, so remove it
> to avoid confusion
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
>  Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt | 4 ----
>  1 file changed, 4 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
