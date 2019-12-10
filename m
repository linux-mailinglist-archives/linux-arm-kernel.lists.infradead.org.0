Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E840118B98
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 15:54:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x167YXKx1aDoMHZFbjMmeAlgR6Lzgegn10lKmCPjCWA=; b=RTo3YHaO2ShEu2
	X7E6lrN66ETfDL89foP49Z89qZ50THw2ys5TrSreU7iE3M15CtxAeFYHIoCG5MD/rDx/JjYIHIDVQ
	4hxTdDi3PynZHZGh01HbtIgTfaFQLCBKaW4WOXDMzyrUCPm7SWL1oKPOxujYJTRnDirY9DjXy1dqc
	NoxC4Qn3vb1XnqNGDpaHEbVzKeMOkSu9rPsHyyaz0f8A/sNAJXY3d8c6BG57pAb+oU4c+tk//TzdC
	stORLu+oR929BIXJule38fGTStcCc9rWSED8gy8cPD/dFuN4CpsL9gjxj/s/LULAG+VWH0rhK2+Z7
	keUX1nVnhGHnza3KfRew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegtl-0005oG-T7; Tue, 10 Dec 2019 14:54:01 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegtb-0005nl-Kb
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 14:53:52 +0000
Received: by mail-ed1-f65.google.com with SMTP id v28so16171525edw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 06:53:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=J3ePAvbBtA2GFkH/GUkVyhurDlAL5lGAx4tH8RkORZ0=;
 b=e3ik5d6mIQdga5PeIqL9RwQCDZiCdrNiZDlQRPAfk6frJIZb/4YFnlbrVTZEr5q3Y0
 rIvrBBYx7Vm7vk1uTIFwPEsWRB6MMnsaUa/8CZqJPOhaAUJOXrwXaO7ysGEQMEncM4hm
 vpCQMfMcWTCv13fTcLbJSYdREnTmxPtJAedkU1sIeZBDwVyrW/O15o89lQspneFtfACk
 D0DAU/E0ozthrXxpyRoU6PIIlo44Fumy9wZu1PDcOIYlaM7qcuunMfTy3J4dgQAAveFY
 L8CAeoljlXnGbR+gLM1ekrs/OvthDaA7gT2z3RKp1hHjpsfL+cbWhYRjvkivCh5jo8w2
 6VTA==
X-Gm-Message-State: APjAAAWDZ2MayUZSCCetTCSgfHZlzhcp98JiDC07Jb0xAeOM9Zctw4iT
 VVuW6tP6UQve2IVR7TGleZ8=
X-Google-Smtp-Source: APXvYqxqRciyed+2OJtA3xXe9pB4A4wCu/SQT8sBJWcQGqcqWcoGcOTuXxH4KgdXVL9C0KXUH+gJ5g==
X-Received: by 2002:a17:906:3953:: with SMTP id
 g19mr3940761eje.227.1575989629067; 
 Tue, 10 Dec 2019 06:53:49 -0800 (PST)
Received: from pi3 ([194.230.155.234])
 by smtp.googlemail.com with ESMTPSA id x8sm81066eds.88.2019.12.10.06.53.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 06:53:48 -0800 (PST)
Date: Tue, 10 Dec 2019 15:53:46 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 06/10] tty: serial: samsung_tty: drop unneded dbg() calls
Message-ID: <20191210145346.GE11222@pi3>
References: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
 <20191210143706.3928480-6-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210143706.3928480-6-gregkh@linuxfoundation.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_065351_672507_E62C30EF 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Shinbeom Choi <sbeom.choi@samsung.com>, Hyunki Koo <kkoos00@naver.com>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 HYUN-KI KOO <hyunki00.koo@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 03:37:02PM +0100, Greg Kroah-Hartman wrote:
> Now that the kernel has ftrace, any debugging calls that just do "made
> it to this function!" and "leaving this function!" can be removed.
> 
> On the quest to move the samsung_tty driver over to use the standard
> kernel debugging functions, drop these unneeded calls.
> 
> Cc: Kukjin Kim <kgene@kernel.org>
> Cc: Krzysztof Kozlowski <krzk@kernel.org>
> Cc: Hyunki Koo <kkoos00@naver.com>
> Cc: HYUN-KI KOO <hyunki00.koo@samsung.com>
> Cc: Shinbeom Choi <sbeom.choi@samsung.com>
> Cc: Jiri Slaby <jslaby@suse.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-samsung-soc@vger.kernel.org
> Cc: linux-serial@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/tty/serial/samsung_tty.c | 22 ----------------------
>  1 file changed, 22 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
