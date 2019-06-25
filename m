Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B8254FC8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ptqaOkX/4j/tNOcou3UvbFvAZm4XuS3rpBTLSfIJJM=; b=JHfgtdWckdL8Qa
	5k6umBOMfVKvr5ebqJptC/v2oLEVWwGdHLy0ulbD3GNVbdFmsted4z1uo0GhC8xulz7bjqQXpJXy9
	UeornIMuNgXLpFtxgMaKaUt1pD3PMiDbpbZKPlQhIEV6WxGzLfgG8PieQg2BVFzXNTaNkhcEwuNRW
	Fzb2FSnFAsyr+BR+l9TqW83SNR7HCZt9Y0i5oejxMfJSGmJiLsmbm5a0vUWwlfF/cAG8U4JyaBUkc
	Be8cAgsqpcLGKeBVBRdN5+9GE0K+r+o/Pss9kjvP+BL5CBJbYugGUzXbtVtNZymx/ayC1hWJq/fhF
	RkLZ9l0B2y96IrKrK+FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfl9M-0003am-Ua; Tue, 25 Jun 2019 13:06:16 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl7j-0001Mm-NJ
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:04:37 +0000
Received: by mail-lj1-x242.google.com with SMTP id 16so16159649ljv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:04:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vHfkC+EMzY59LhZulJ24My67tukWbbtoKitqSunX4xQ=;
 b=o0M49IaNIs6DhwF9vNMnh1lBQZ50QT5aJ4xn8oNRF1zVhzlIneW68Zt845GlHqg19t
 M0PkIet5thNIf+0wu6pd7noF9Yc4dooVv4/TV7rKCuca3/MvQr6TzHlKV+g+zy4NN8K8
 GRPXS5rBNE5JCYuhZQFOVb2nurchI5inbY91z+GIu0VP76cRKZq7D0QtHOoNe3DoapYf
 jSUVAJ6Xnq+GFXdMu35YM4ZyfizQ7/ILy3p4LE2c9SwGviWk/C8PGfDKOM1UBw4gp/hz
 hV7hawXPVjWlQWhbAWZxffnTB1xQl5hdpNNf/N9HjCpV6620vJY9aD7p3v4cZ2W6pMRf
 6XyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vHfkC+EMzY59LhZulJ24My67tukWbbtoKitqSunX4xQ=;
 b=hBUXzn+tGhLlIrtTB6YAmO7kqhZJflZamI8oBZuOc/Nb4YWE20c4dVHL9io5s9mEsk
 UQRtDG4ZiiaOXByv9QmV0cxF9E/8lFgew/rrKANMTnsMw9XY5ZXo0Dzpo7kaFG28I7fX
 OeQel6DItPu94xmmhCQ5djqglS4dLlX0IfYM2pVxZk/y3oote85B6k+tI4kZGsNQGVWp
 qhKHEKGIvcPepT22IkQJcaEfdT6QqFTRHxhZKP/TLRInIot4svQAL41jhRdSO/zQBxKT
 tshP1lQh5IX89D8VoRgxKizTQCM7OIOcbEZRaG+tPkMn9HNlnTUx8RfIW8Z+gbl4mOjR
 gOOw==
X-Gm-Message-State: APjAAAXqTDB9RtPtFoRtbiBmHZNYYjDcF+vym+TGtZ0RUtBa3Lsp0Vv+
 ug5evu3vsLQ5iLx0vG8kPgQm8Q==
X-Google-Smtp-Source: APXvYqwiTNkBtCtlU3/vWS/GN8pij4FXNxNWUmAwkcDvPLCksrCy7M+vHBTLyeuVGv0G0hehvuGYAg==
X-Received: by 2002:a2e:8816:: with SMTP id x22mr25553858ljh.131.1561467873945; 
 Tue, 25 Jun 2019 06:04:33 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id u13sm1945480lfi.4.2019.06.25.06.04.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 06:04:32 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:18:42 -0700
From: Olof Johansson <olof@lixom.net>
To: Alexandre Torgue <alexandre.torgue@st.com>
Subject: Re: [PATCH] ARM: multi_v7_defconfig: enable STMFX pinctrl support
Message-ID: <20190625121842.6qnuabriju5fhrcb@localhost>
References: <20190621144432.8191-1-alexandre.torgue@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621144432.8191-1-alexandre.torgue@st.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_060435_926309_58AAA904 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Kevin Hilman <khilman@baylibre.com>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 04:44:32PM +0200, Alexandre Torgue wrote:
> From: Amelie Delaunay <amelie.delaunay@st.com>
> 
> This patch enables support for STMFX pinctrl.
> 
> Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
> 
> ---
> Hi Arnd, Olof and Kevin,
> 
> I only have this patch for STM32 configs part. So please consider it
> as my pull request for v5.3.

Applied, thanks! Sending single (or just a couple of) patches instead
of a pull request is perfectly fine, especially when it's clear you want
them applied.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
