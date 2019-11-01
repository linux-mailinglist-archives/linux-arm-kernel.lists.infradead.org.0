Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA13EC343
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 13:53:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GDNxqTrK8cf9hj1+n1rkcby+73nT41hnTuNA50m4tSo=; b=VEBzbHWQK+kjxh
	J2+gLiPDhquxbSlo4xA5FTK5pNo62Q1uK1IhqQqTRjCpl2lgfcCmvnZO3Jljj/GyR1td5/uuHlBC0
	LkRZCNymtkUAvrKPdN3hiAbe+EHAnsSNq0KQDt3r8Jgnc64naBz7fHr4TJ/6muY/tL2Tji7xhcvzs
	rx59JDU5PRQRSoticsXRuLiRH6i0+prtELuY7RvgMOiG7XDQJdivE+C6P+8jdAdsAE6uTdr7KyJRd
	bLTkLOmiUy6CkwD5x/Wv4QQDIzmBPr6XOVdzGUkVF9qVSJcFrFMaJsJpG8KF0VscHMpiNZ6di4QaF
	86NxNdUOGL+KQIhF7gnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQWQp-00035n-15; Fri, 01 Nov 2019 12:53:35 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQWOD-0000mO-Qk
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 12:50:55 +0000
Received: by mail-wm1-x341.google.com with SMTP id 8so1964606wmo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 05:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EKGzxWtR3fiXW/40+7aYocnd9u+gzpb6DDnHwR2mWX4=;
 b=tByDGaaIgL/auVEam4y/Fevw0xCWCgTYgec2YLif4gCkcPDIt0cw9b0bad9AWAnatb
 hcce1036cqyoQ1bYR5/ajs8L9rXCV+M3Qt/tjkljyE4vdI8V62U4TjTqsA9LWN95PtxQ
 mjfnCHrrPRqW9zFaL2QCUROK+8RTwopcDe9mdNS9XjA+LKmd1Qn2R6IHoa7u/cHWy61W
 2RYhuzi/Q0+ub/OgjYDjgSFa8rSTISy4D0Dc4t5tvqk2snTdSr/IaQ0BrsnHFiEdYaA9
 wdPVFarPQxo341qV/HyqFKJYhcBbpfzRnRmqbZFTMlcAzM0M25ihJhBuzRsfXa9Yxg8E
 4uvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EKGzxWtR3fiXW/40+7aYocnd9u+gzpb6DDnHwR2mWX4=;
 b=FYtKlFIvqRkXEjL9xcQVozGmT5yieKv/yVY77Oew0MY/4sRDHC7rAcIl0ljb4pAEgo
 dTYHT8TAXpFvTfVJh1c+zjgoI/GbGSdhu8Fp866eUy22bEkUmhGfbYtpzmMycLxJom0s
 TwslJFmDJ6QQKGu+ATwiu7sslG9tZ7zkniIdBNEMAJnh6Nu+IQq1x07n646gRnSFeJTs
 MkkE/h9cuF1SYLYm3wW4Lm6MBdWx7eMQFB5bI9oRgLdzJ58PmJtZOAw1e3GJrababR76
 OTCNbOP/kAL34VKTbkkJPuA/lbxK/aLhDhsTRcS3BXIZYAvPEFfFPzyO4q1XrQ8+3yHe
 V4ag==
X-Gm-Message-State: APjAAAU10ew274al4aRoSRqkV4mM3KoydV7iocAqkr8cGrGinoy0GR/W
 JJTG4P0mbUp5crykbYx1S9c=
X-Google-Smtp-Source: APXvYqzuE2vAdMAq+9VOhAQXWfUPUsaGN/1iaSbTb8N8x4q2gMNbsC/YXDePLm9/FneMrqzdZGwEQw==
X-Received: by 2002:a1c:f317:: with SMTP id q23mr9342526wmq.74.1572612650614; 
 Fri, 01 Nov 2019 05:50:50 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id a1sm5047692wmb.28.2019.11.01.05.50.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 05:50:49 -0700 (PDT)
Date: Fri, 1 Nov 2019 13:50:38 +0100
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [PATCH] crypto: fix semicolon.cocci warnings
Message-ID: <20191101125038.GA3904@Red>
References: <alpine.DEB.2.21.1911010950330.2883@hadrien>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1911010950330.2883@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_055054_047090_227FE349 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kbuild-all@lists.01.org, Herbert Xu <herbert@gondor.apana.org.au>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 09:52:06AM +0100, Julia Lawall wrote:
> From: kbuild test robot <lkp@intel.com>
> 
>  Remove unneeded semicolon.
> 
> Generated by: scripts/coccinelle/misc/semicolon.cocci
> 
> Fixes: f08fcced6d00 ("crypto: allwinner - Add sun8i-ss cryptographic offloader")
> CC: Corentin Labbe <clabbe.montjoie@gmail.com>
> Signed-off-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Julia Lawall <julia.lawall@lip6.fr>
> ---

Acked-by: Corentin Labbe <clabbe.montjoie@gmail.com>

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
