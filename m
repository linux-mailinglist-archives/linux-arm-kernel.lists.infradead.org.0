Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A0517E032
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 13:26:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WbsuRwSn1TGEBbatbR7FIYmzr39RU6mDzpJU1IdzWi8=; b=oGk+aYLAmssUGH
	fgn/zi7mVcMXqNDKsOAQU9eWb8D0jEgajVo109HvnfR+wh4pjK125XzlSDzSXfypUd9r8GbbyP233
	dHKHrJinq23PO5d9mRv4K8e6RCDaYEx+RqHOHH9XeWbm+n9/aKI0fiFBSsnTbznBvaLM+W+vuCmtl
	9UPXgofNMfkIdUMkBtu1qXudKh4KIt7JAQKvRyDJXeBMLS7t+SNA0qJeGAcbneFPHilsAGoNN3z1r
	ZHENLSQ92/ielD6APGrRh+4DJZiE5oMPwcnj91Nfc+isbDK/1j9NpAd9y7gg5Vn/tv34oWwahDxuX
	ZW0rIf9MMhm3AZZUAdkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBHUJ-0005jG-Mw; Mon, 09 Mar 2020 12:26:27 +0000
Received: from web2.default.djames.uk0.bigv.io ([2001:41c8:51:1f6::246])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBHU7-0005PG-VU
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 12:26:17 +0000
Received: from mail-il1-f178.google.com ([209.85.166.178])
 by web2.default.djames.uk0.bigv.io with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <chris@64studio.com>) id 1jBHTZ-00019U-K9
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 12:25:41 +0000
Received: by mail-il1-f178.google.com with SMTP id e8so8406448ilc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 05:25:41 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3WxJOxVc3MLshaBD6pJTLTTS3GztlUCDgJ2d/9ZkmSs32gk/P2
 VREdxzxJEo96/en6pb329EFupN1Tch80j4RbfBQ=
X-Google-Smtp-Source: ADFU+vvrP6s95F70KAX+G0iZkhUaLDICZcpMKzCTLzJhjvlacWG0XFUUaMBOD/Ff4COtuy5/V3gYe+1JcR0FTgevcTI=
X-Received: by 2002:a92:40c2:: with SMTP id d63mr15438368ill.23.1583756740126; 
 Mon, 09 Mar 2020 05:25:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200308164840.110747-1-jernej.skrabec@siol.net>
 <20200308164840.110747-2-jernej.skrabec@siol.net>
In-Reply-To: <20200308164840.110747-2-jernej.skrabec@siol.net>
From: Christopher Obbard <chris@64studio.com>
Date: Mon, 9 Mar 2020 12:25:29 +0000
X-Gmail-Original-Message-ID: <CAP03XerBUbpC-4XL_BFjAwCnR1JT14d=4VwoJUJqzLFDzkFcaQ@mail.gmail.com>
Message-ID: <CAP03XerBUbpC-4XL_BFjAwCnR1JT14d=4VwoJUJqzLFDzkFcaQ@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 1/2] arm64: dts: allwinner: h6:
 orangepi-one-plus: Enable ethernet
To: jernej.skrabec@siol.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_052616_148922_DA0345B6 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 mailing list linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel@vger.kernel.org, mripard@kernel.org,
 Marcus Cooper <codekipper@gmail.com>, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jernej,

> From: Marcus Cooper <codekipper@gmail.com>
>
> OrangePi One Plus has gigabit ethernet. Add nodes for it.
>
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> [patch split and commit message]
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  .../allwinner/sun50i-h6-orangepi-one-plus.dts | 33 +++++++++++++++++++
>  1 file changed, 33 insertions(+)

Reviewed-by: Christopher Obbard <chris@64studio.com>
Tested-by: Christopher Obbard <chris@64studio.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
