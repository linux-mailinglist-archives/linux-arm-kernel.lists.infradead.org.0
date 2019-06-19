Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 652594BC7E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 17:09:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ER/6N5TAM+Ud/PVFjRS8VoZzi8H/25R1vBqF8WT3uC0=; b=PRq3o6gkPnA82U
	MzU2vCTLyBUhDkrCqucqIdYjYUYTPv0er+OHkp/GuFX+jFUsLE/sltEBupQ7OzLn9WdrXidMQEv6T
	Tzxf4ArVmbKe+syZuT9zzobAyw4wBj31q0kLbI3eiMi0Mw4qSUCmMnChVruPNO82Vl6wzJHtGJHzr
	0gBKAruM0eLCIxv5gG11KXpu41YB2wOTUKgyPEXfieEfderAeh1S2uLh9z3UqU1/Ard2+41tQgCYK
	CcRqdogw9n162UJ3H2THjSx2mqgBZXJFZds7UWytsrgCPGbhZvKjPRAt+Rct3f3ElIKx0RSubppfn
	9tc4FABhPCy8naWlYeww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdcCx-0004Ca-Nh; Wed, 19 Jun 2019 15:09:07 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdcA9-0002OB-08
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 15:06:14 +0000
Received: by mail-lj1-x243.google.com with SMTP id i21so3628906ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 08:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jylkjZl+3fh8Rbu7AjsF29unVOc5ByWdUmPEGA0oZOk=;
 b=FInUvEj3IcCqtDlGdFsBTcqjIPmP71aSB7PwJMgwfn+mjuqg/u0opUUyGaHodxP8hj
 Y79Bs1nrFHJSEbYddUbcg4eEmIpdjKGLKGtZTxDiLd6sSj9DcGAY7D/dMOVyMutuifxq
 H8F7Kw5VmpoLN1LJGYTNyTn8Y3bOkIEaBiFeEzU8bfv9adwjZczt51CWB1JHWr7EOfbm
 zN0xp0xiHtkpxNJ/XK4p7ngE15I/n9Q3Uwuz3aqHACgEQgi9rdgvxOgrvPeRhCoOUMwn
 m0g1kNVWMNqCYJgn53DVUoYV0Fx2BSVOmH8kfnrsf5EM00LK88JwPW044kJWRanNMzyU
 pNCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jylkjZl+3fh8Rbu7AjsF29unVOc5ByWdUmPEGA0oZOk=;
 b=L7MNhnDEpd1ePGHxJtuLC/14P4KKj2+tIbvYlpeaoGpqYCvT36Ql/4sflTeGy+KuS8
 aDrVm5s8Tn7ejpW1nZ7w9TeEXz8BMMNSE8BjwtcZRqQVUjzS0uB0JQDXAq7NYtnTkLwx
 naebGSf17AzxcBdnLZIT+XixVWI3sSLlPexSL7lHFFsP/LRdycQ3IgC55WdIa0kX+nUr
 zPTSzjkG9RQps3qtcasxfUx9hBCcy8Co/xyVTaFAWvR2hMFxcp8bYwHFZrkwSs4SDesk
 9oRb++IB/w+wGI0aIEtKir3R+OskFNl2kNvzrmYg+vSSO41c9PwR5C+bY34/X8D01kfO
 veeA==
X-Gm-Message-State: APjAAAU5VaZBCnphmPZOFIo7KXUon/Y4NpkZBz1FAQRgEMBQC2N30PM9
 XWEkQN7hsRrnQh4ijUzr7QyQVg==
X-Google-Smtp-Source: APXvYqw6rFp8oD1EzJL7KP2PKONWrLQsDYQ/OSpPNdweX0pFCR6NYCQFjjh52UAUK4AwHkZndGNTBg==
X-Received: by 2002:a2e:2c14:: with SMTP id s20mr39189994ljs.54.1560956771372; 
 Wed, 19 Jun 2019 08:06:11 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id p29sm3132536ljp.87.2019.06.19.08.06.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 08:06:10 -0700 (PDT)
Date: Wed, 19 Jun 2019 07:21:42 -0700
From: Olof Johansson <olof@lixom.net>
To: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: Re: [PATCH 1/3] arm64 defconfig: enable LVM support
Message-ID: <20190619142142.52stwnyucxa7g3rz@localhost>
References: <20190617160411.24329-1-marcin.juszkiewicz@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617160411.24329-1-marcin.juszkiewicz@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_080613_106177_DA92C2AD 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 06:04:09PM +0200, Marcin Juszkiewicz wrote:
> Follow x86-64 defconfig on enabling basic LVM support.
> 
> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>

Do you need this to be =y? If you use LVM, you usually boot with a ramdisk that
will hold modules.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
