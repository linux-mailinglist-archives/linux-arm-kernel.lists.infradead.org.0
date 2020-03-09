Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C527017E038
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 13:27:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g5P6z1edTVY8I3fYKF5q/ztKjn2KzRs5AY8Jw8xVFfg=; b=ebQU28Wgw/nQ0u
	QPlx1OmsOsoO/teZmh8ly015KiFiBZ5yGMzlJCYm+Bt5UF4HlzTp1UFm0jv7zosYz+LzoWFELaKXd
	cQcPP58J1UvN5GIdMmGE2ZriBY9elUOmc7DybNczGizPRlGOwMFcn+vW3xb4k+VimDbAC66y26BhO
	YL1Q0MY2QYtPE4vS+OhnnEwMbt1UAO80apgQ5Jv/s2LrCUYWnKa2g0qu+rBF+ZtwMdKrWb52X9Jpk
	UlCKvch2LpGcwxWVzLQkLTsAq51EYZqDdxo5ekwPGnZdpVklidq2A/KSRKYEP4krEV4iqe7L+LMtC
	Mpr3Z5y+1A7Wj6RLPx1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBHUr-0006BM-8i; Mon, 09 Mar 2020 12:27:01 +0000
Received: from web2.default.djames.uk0.bigv.io ([2001:41c8:51:1f6::246])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBHUN-0005hY-4n
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 12:26:36 +0000
Received: from mail-il1-f173.google.com ([209.85.166.173])
 by web2.default.djames.uk0.bigv.io with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <chris@64studio.com>) id 1jBHTy-0001A6-Cs
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 12:26:06 +0000
Received: by mail-il1-f173.google.com with SMTP id b17so8460365iln.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 05:26:06 -0700 (PDT)
X-Gm-Message-State: ANhLgQ01WxpG3kcKtjQVwyTp4iS3CuXhsbpipe5Hg6xYIMW/K1aFN5dn
 DScbcvgRZop5EuERc/FnknRWGp5jkNMIbmWIlLY=
X-Google-Smtp-Source: ADFU+vu0JkvWQv5EfOULvX4ETtAzCphE8kDE54vgYQ6FBm1lZBWOUKLYrzMJm9pKlXxjBqR8DVxB8IQ0iajNwWwNeuQ=
X-Received: by 2002:a05:6e02:e88:: with SMTP id
 t8mr15468197ilj.291.1583756765113; 
 Mon, 09 Mar 2020 05:26:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200308164840.110747-1-jernej.skrabec@siol.net>
 <20200308164840.110747-3-jernej.skrabec@siol.net>
In-Reply-To: <20200308164840.110747-3-jernej.skrabec@siol.net>
From: Christopher Obbard <chris@64studio.com>
Date: Mon, 9 Mar 2020 12:25:53 +0000
X-Gmail-Original-Message-ID: <CAP03XeoKo3+iQTPAeuUQ5WHCrS12VoPHymaFPok=-E5Tgzym6Q@mail.gmail.com>
Message-ID: <CAP03XeoKo3+iQTPAeuUQ5WHCrS12VoPHymaFPok=-E5Tgzym6Q@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 2/2] arm64: dts: allwinner: h6: orangepi:
 Enable HDMI
To: jernej.skrabec@siol.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_052631_505286_20BA4073 
X-CRM114-Status: UNSURE (   9.47  )
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
> Both, OrangePi One Plus and OrangePi Lite 2 have HDMI output. Enable it
> in common DTSI.
>
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> [patch split and commit message]
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  .../dts/allwinner/sun50i-h6-orangepi.dtsi     | 26 +++++++++++++++++++
>  1 file changed, 26 insertions(+)

Reviewed-by: Christopher Obbard <chris@64studio.com>
Tested-by: Christopher Obbard <chris@64studio.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
