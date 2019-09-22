Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6339DBA050
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Sep 2019 04:50:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rccC6RcCbj9PNCO4A1yGb+YYYuYRW9O2VCdR1Iw+1zM=; b=bi4NBAN4kfQZOe
	1mYTf02fFm65Fxh1casnKRz88IV8sceQOd0clXjYLdaPnza7ivoPCd/aVjklFivuuLZq2kGN92P4p
	5a7Rv1BF8lkIyUnkk7B+eqAKfsaTwyikQoMcEt8VuuAtajzC/b2GSJ3e5ypIL8YFTnrI6cdtceF8f
	XPnIvYG+vTF4KxzqsOBBjSnNfwF2PI7VM24pCfm+uBmdZjVBMDiJAUi3NujMvlzCZ4ZMgc9c/yXjk
	aC0NtJPMpmx8w6x48IQfhRvZs94LcPLfdQBKsC8xOWEXxTiL85xlyWqXmusqSsOs4UAL56kSudgsr
	6pYEY+wP7QZ7+ZX9tlMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBrx2-0005cH-S6; Sun, 22 Sep 2019 02:50:16 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBrwf-0005bq-7K
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Sep 2019 02:49:54 +0000
Received: by mail-pl1-x62f.google.com with SMTP id q15so4925552pll.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 21 Sep 2019 19:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=anDfSlcsinrIuqUyxfiFcZfqVNlRcVIERATNLsETqQY=;
 b=mfZxy2sq/aDKntUmvOesWWFgM501zlmT0QpE+8Y3+duZ2e9RLwsdz3EzbknN01qRdx
 /DJM6peKzpH1uE3x7/dOQZhRHneaUKMm5+UU6wBBXZopFmaET2zbcMvrcWFEH8Lcy1MV
 mHsKbJt/O4aAQLG8QlJ5NtzYWa8/QCeSzo9oMiCbVvSsyajYnvQd5hWIV29MDQWxeTMf
 6rnN4w9QkstK63hfcmaGs8Ww6Wf4CDRwdH/94iFQ1InHtTPUqSLl55mQ+r8R2G+4rc6m
 JkiB60FFY2ZFOwyHN7wEgkpBNBIkm7jIrh6HhqdgOUG69IsDm6L4nHXV4BDY+YZsIEfS
 +w1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=anDfSlcsinrIuqUyxfiFcZfqVNlRcVIERATNLsETqQY=;
 b=j3DDupAtg8xhe6feiDTwN/lGzWMYZQkUZOpusqzRwoC3TcZrUzNkWu6+XkE2myqK2t
 Ppqits1L1OAMIRkwbkdAtbJg+e+zMNgw6wpxKi0j8ZZGLcXBmciooOpGXEaix/R8E5u7
 HRaL9qB98Tdc5WTqkhc1fJ/7i0OhKoiMk+NwH8A3NesrkvFs50zBQNKx0i8JncjJbm6H
 qBGx+1A7CjPYRfHlOgBkYILgywBguqmvXf2KDpiHgCUP70c5GApDGW6VZ6A/3lH4+cuq
 A6YFZ6XrfNgfj3MzfHnAml+nkYNl6XAeVr5Ofr2VkTW04rwdsVUB0qiKX8c7YYjphfos
 moLw==
X-Gm-Message-State: APjAAAX7KJRsMDKpjYQHqxI4eaLqexPI+dpGhjh6+d4qZru4AIHHA3zz
 2gXU6nyMmKEDSMt2O95nfBG1Iw==
X-Google-Smtp-Source: APXvYqw/mTTWbaH79472SmRNTbJG75f7zpe+KuB92ZzGVL55dDHwbFBp4ZPeMaM6FzznylBAqzVZQg==
X-Received: by 2002:a17:902:d714:: with SMTP id
 w20mr26240046ply.29.1569120589739; 
 Sat, 21 Sep 2019 19:49:49 -0700 (PDT)
Received: from cakuba.netronome.com (c-73-202-202-92.hsd1.ca.comcast.net.
 [73.202.202.92])
 by smtp.gmail.com with ESMTPSA id c31sm5709585pgb.24.2019.09.21.19.49.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Sep 2019 19:49:49 -0700 (PDT)
Date: Sat, 21 Sep 2019 19:49:46 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] [v2] net: stmmac: selftest: avoid large stack usage
Message-ID: <20190921194946.710bb0f1@cakuba.netronome.com>
In-Reply-To: <20190919123416.3070938-1-arnd@arndb.de>
References: <20190919123416.3070938-1-arnd@arndb.de>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_194953_288932_B1A85F8F 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62f listed in]
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Jose Abreu <joabreu@synopsys.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, "David S.
 Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Sep 2019 14:33:43 +0200, Arnd Bergmann wrote:
> Putting a struct stmmac_rss object on the stack is a bad idea,
> as it exceeds the warning limit for a stack frame on 32-bit architectures:
> 
> drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c:1221:12: error: stack frame size of 1208 bytes in function '__stmmac_test_l3filt' [-Werror,-Wframe-larger-than=]
> drivers/net/ethernet/stmicro/stmmac/stmmac_selftests.c:1338:12: error: stack frame size of 1208 bytes in function '__stmmac_test_l4filt' [-Werror,-Wframe-larger-than=]
> 
> As the object is the trivial empty case, change the called function
> to accept a NULL pointer to mean the same thing and remove the
> large variable in the two callers.
> 
> Fixes: 4647e021193d ("net: stmmac: selftests: Add selftest for L3/L4 Filters")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied, thank you!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
