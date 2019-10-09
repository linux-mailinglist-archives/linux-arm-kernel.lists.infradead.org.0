Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B5DD1C80
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 01:10:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XkG92a0PpvGOwjkMZj9vs/ACK8QxsruZCM4TrkQDHbg=; b=BLUMt+FWu+GaGp
	d+l6NG73X/hraONAkeBlkaL/jrTGLW/XEPpcV9Bi+2o+3ST7KAV7sgxXjaykGLpeFh1ODKyDR8uII
	sQkKC5qVL8xK6pe94Q1k2c3E/cWn6FAAbqXz42NZmfm2LGKAbN7vXNvR4ferv+AMT2MdcRx48xCZK
	36NxEJPvGJlCpA+BcQYynx1xLAnwY5JID5KR6fQH8SDv/enbADdL9iJTmdLAIpduzYTyJmuq+i7QH
	3tQPEGh6ucQ3rUT38fLY7d/wtg0cXLtjuzYoNzeJNrt4+ZuMR7QLYNkBHhckHa1/Wh7+Q9/2CwBtD
	W+N7wdGSnn0ddPpzcWkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIL6K-0004z5-Cj; Wed, 09 Oct 2019 23:10:36 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIL6C-0004xt-Nx
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 23:10:30 +0000
Received: by mail-qk1-x741.google.com with SMTP id p10so3827960qkg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 16:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=NTimbsKgKVFDwuRCQXDTlqAXzNdTJ0Hr/Eiu/ueYeWQ=;
 b=j1N3WnyQePch5c3ATnoCW8Gc5+utVUM07IPkUm9U5i1N1JvfqxJFhHzkKW934vUUlP
 WkvTVLgvTE4vl+TZ523OqX2PD2BC162vDZeljPWx3plErfZrydgfhBIbUm4Si1O7JuQ8
 KFdNtHeSfIjs8hVYdCqBuC7z01mVYUvA2DLlo76GRCdf/CtgLkEnXA6Z0trETa6mPkHf
 qw+2ujEP6/yOZsntZfx9+c3uhSPh1prUi4yCGrwvmiRrE5zjnK9zpU8wB6QCwFRuoqmn
 0HkXxV68gwvc4Sb8Ap5qeAJpn5pEnFjJ6dNTOpqRIc3z4GHLSG68hnzwQN8ar5PGZY96
 8tXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=NTimbsKgKVFDwuRCQXDTlqAXzNdTJ0Hr/Eiu/ueYeWQ=;
 b=LwCERzLnvYJp07lTO3oEBX19+pj+od5lN/Lnd21QuzkB1qeY8cE/wkaDRJ7mShXT3P
 o3/Yw0QqbShVXxjnPLLckYQ6HfVlh+Ft6vas3zHvoiXQEu2u+AVcKYK2rJ1nEo/fXCBF
 Mo0SsQ08EPSvV8+zZPQmt0GJPBxahGTDvt//m2pxrQTZ2x+AQ83J4iRPJPwX7beetGeC
 iJWpzKc9zdFOyygMkkk88l7ajRpp68iOW2ItmZOOqShcAesO71LtIzkeW1ctr5uvkzVA
 L6RFLtwB3xjEWFwqwjNOcQSfCU0RN6xKnqD90WMG24rc/faydOoG25PLdIA4rI3KjBp0
 4EEQ==
X-Gm-Message-State: APjAAAW0ks7uL+mCQbtEwubjFpHY8aI0xirfajLaqXLOL5IoFc7ca2DU
 DohhQrw5YszTLtKfAiVcHYciSw==
X-Google-Smtp-Source: APXvYqxlFI2WcAzy9H2hDmeqvaySLV60xIVp+vEfJOOvBA+AepOhJJvAg79EbiCxLrXZdFhnQYnNxQ==
X-Received: by 2002:a37:6114:: with SMTP id v20mr6535756qkb.329.1570662626464; 
 Wed, 09 Oct 2019 16:10:26 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id h29sm2161423qtb.46.2019.10.09.16.10.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 16:10:26 -0700 (PDT)
Date: Wed, 9 Oct 2019 16:10:11 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Antonio Borneo <antonio.borneo@st.com>
Subject: Re: [PATCH] net: stmmac: fix disabling flexible PPS output
Message-ID: <20191009161011.117c7f77@cakuba.netronome.com>
In-Reply-To: <20191007154306.95827-4-antonio.borneo@st.com>
References: <20191007154306.95827-1-antonio.borneo@st.com>
 <20191007154306.95827-4-antonio.borneo@st.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_161028_837407_3468A397 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On Mon, 7 Oct 2019 17:43:05 +0200, Antonio Borneo wrote:
> Accordingly to Synopsys documentation [1] and [2], when bit PPSEN0
> in register MAC_PPS_CONTROL is set it selects the functionality
> command in the same register, otherwise selects the functionality
> control.
> Command functionality is required to either enable (command 0x2)
> and disable (command 0x5) the flexible PPS output, but the bit
> PPSEN0 is currently set only for enabling.
> 
> Set the bit PPSEN0 to properly disable flexible PPS output.
> 
> Tested on STM32MP15x, based on dwmac 4.10a.
> 
> [1] DWC Ethernet QoS Databook 4.10a October 2014
> [2] DWC Ethernet QoS Databook 5.00a September 2017
> 
> Signed-off-by: Antonio Borneo <antonio.borneo@st.com>
> Fixes: 9a8a02c9d46d ("net: stmmac: Add Flexible PPS support")

Applied to net, queued for stable.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
