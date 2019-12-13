Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 061F211E8B7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 17:53:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tS+hirjrtRYxS5FhByaFm7lsP53rkC7kyumWbsydaU0=; b=EbEJXz2mi6n8An
	p5ST6nLMgj16z4T9o7v//Y4YMRpFpu7EVdj7n08/25IguGVwScNojNLr8bLkSTXY1xrusV1JVYDTo
	QkVr1Uw92q48a9//Kut0O329zseZhO102TdKaWFonqFbl5AvZdPBGS83XLvKGYmAFvsa84+nBCzzT
	gEiMegXVZ11puJJT14LvUHcmBJBd38hXhnoaxS4uzAmtalY9yxxFnvmgpeLTjk85YA2SUWIj2tppi
	XN05nVLSukvVPo/lp09fERUPHK9k+GWBojpuAxbwoUZ6ZW3ZRapodMPpDZ3abjIXKSnVyhQ6qKTQY
	vLMKbvi7X4HbGUcSi7BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifoCB-00014E-AW; Fri, 13 Dec 2019 16:53:39 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifoC3-00013Z-4V
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 16:53:32 +0000
Received: by mail-pl1-x642.google.com with SMTP id bc8so1452766plb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 08:53:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=jZARGI2ljyaZUUzftM9FBJPmm5n1/FlWF5GqHksaDjI=;
 b=sgIfRKUhqdV6BDX8b6Kkhb8TzuupxC2yg76LGod3zYtqCfQ76L3DdNFNDiqlh9WLKE
 9dXGb4UmaQ8anwQHzY8aW4mJ/JTFQ1A2+Wiuf7DzNT3BN14t9RiR0KyPVztQRoaMoEA2
 I4n3IPzgUzElgqn4XqboDq4TwfFrfRlagOp59iq7mlIx7/pP//A7AZjbVfNEZwv1D8kc
 3p5wP4AmYPgcjL4ty3DlDOpiLvqFzQYolTT1qhp1PFI356oUi8LCyrHkkK4kjV7fBoPe
 +ewZOJ5RhrkySNjyqYEljIXs7JvW8wYj2XlZ/37DNMn2XLJKSmwntpP6ZtpTr0mXAzQx
 4MVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=jZARGI2ljyaZUUzftM9FBJPmm5n1/FlWF5GqHksaDjI=;
 b=kFO6VuMjbo/XRNyfW+tUJ/ua15G31nsg+4EtoocpWXnpxHcuKiTA3SIjPiE7mgHyiB
 qKOe3+D+G28r1BklKn/7BrjDb7EFy0E4YcnSZH4/G9Efh78ur4uns1gopLrz+E//8YSj
 IApZosbxKgAtN07kkIaMoYd6HGxs4ifCo2r2k+j6nvjC70kv7saSQuVo0fP17/g1ALkG
 gIn92imJpEgEY/6flFPGVGz1gaZBN/1JbG5r+savFAd5wkTcwzveOSdPl0Dmn+ni+OcM
 c88HnFxoUCq03r9Efl+NAOthIX95bOaWH0QUw4/5z8lhEVoOMOB73NfnweuNko7QXTmj
 3itw==
X-Gm-Message-State: APjAAAXT7xCC+ZF8/ejj72tO9j6GtSmVniHkqwF0otEk4UcGuBRiVHNA
 u/NFIVsGYBASx+BEAQ5pEvIuAA==
X-Google-Smtp-Source: APXvYqwOTIE7mAAvzbQljivGwT1lZknrS5gskCeChmKf5NoyTIKMXUPpvw2+ULP/zm43ECQeQEQD2w==
X-Received: by 2002:a17:90a:c697:: with SMTP id
 n23mr302398pjt.37.1576256010397; 
 Fri, 13 Dec 2019 08:53:30 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id z1sm12336131pfk.61.2019.12.13.08.53.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 13 Dec 2019 08:53:29 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>, mjourdan@baylibre.com
Subject: Re: [PATCH 3/3] arm64: dts: meson-sm1: add video decoder compatible
In-Reply-To: <20191121101429.23831-4-narmstrong@baylibre.com>
References: <20191121101429.23831-1-narmstrong@baylibre.com>
 <20191121101429.23831-4-narmstrong@baylibre.com>
Date: Fri, 13 Dec 2019 08:53:29 -0800
Message-ID: <7htv6488vq.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_085331_184883_29493FF0 
X-CRM114-Status: UNSURE (   6.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> Add the video decoder specific compatible for Amlogic SM1 SoC.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Queued for v5.6,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
