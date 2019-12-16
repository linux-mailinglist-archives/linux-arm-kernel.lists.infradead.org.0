Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9783B121ABD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 21:16:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=//ZkhPLoi/BSHO6anj9sB+FVpb5wHJnJ3gyuVMauPfE=; b=ZtH5paZg01zypL
	FPJ02KIKWqEYvu+JMPMBVl66ie5JdaPvEMFlKLDNvk9Qx1T2vTE6+rm72X89PX3UJCYyD83HZTtmT
	3+3cAsLAm9N06I+uEiy//kZTgePzrI2jlIbQgUjeXiCPBpkwU+GODY2ugWKNSu+ZquxdweNMk0XUd
	UPE4geCt1di8GqNso4BvnYYsjU2aybb73jw8jDnBc9DZB5oiqnKisOl9VV25+OMGO12Ro+OBSm8QH
	dLVHhZ3erm2KS2pmNxxZLF/fDL7xKI0EdpqF1LhrtTKExmhmFvGmNu0YOfJcDCO/ijOkk+DQC1dsr
	XTN3dg3gPPCHjhoWRFCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igwn5-0000wk-Vo; Mon, 16 Dec 2019 20:16:27 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igwmv-0000wA-Td
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 20:16:19 +0000
Received: by mail-lf1-x141.google.com with SMTP id 9so5209308lfq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 12:16:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=YLUuImzEeNdgR4wgqVgRBbAIWmyCTwR/wtnyDd3xIaE=;
 b=0EDEWKHIm56j47HaFMM23Z3l1LkmrWmnHY1vwaiC80joIxDNVf68/zHyaL5o/+Lno3
 jS607DFkpV9KSvysbU3IDwbrLZ1mLeiY7CX6/iqErTbFVxleUV8gIyNL+1JgaVcqSFsH
 1nnIVwAmIgGN7cAVMzgm0kfZ4hU+l67/r69M4dIzz2+/43LE/kZ1O2N70G6d4P+AivYw
 knkVpPKaJZlw9y26rrvgYDXTE3UJNnUZI3Zaj144jWyOaLMSMguaaOmz0ZzmHsc9rFcq
 OhTrIg9WMCIvoVT3FX3TXPMmq/qGg3NY4v2qt831uQs7kgAsBUASHHCN2qbpxRFaN3mf
 JInA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=YLUuImzEeNdgR4wgqVgRBbAIWmyCTwR/wtnyDd3xIaE=;
 b=obNdegR5rsXUPpRMBaEucqgscc8+ma438Z9QIuQA9C9mAF7JGntDNEoTmhGrkq9Y/c
 BgCr4RyoU4eFffpib+kTMmVCz6qn5262xaKTEeHXyMyxI3yGEDThSonSy+Q7JgisT27L
 rmbI2kNlKLiYfY2ILLg7E+5Pf3g8ocUXD3N9aBNW9XoBTAJgL+J2Lwv73Yl4ZRUhaA5V
 cM01Sm80PLnITNiD5ktRHMe1ysdoTXIuHRiyyPCtdVlThfhNLl2JZXkTlw6S+yCjziRw
 WcUzd4RVw8pm4meBOnU4KavCCtxZvA7KODK0tkXD6YK61oEpWVefAtbq3qL7ztLiHQdN
 gQ7A==
X-Gm-Message-State: APjAAAWpulI/3Xp+YYpijfcH9o8Fg4Kq5KQtBwpBxoSkFG5MChiVG3c3
 E+dg1KmxppzK3u/gQM2SVvUPjQ==
X-Google-Smtp-Source: APXvYqyt/fVYTuNQcFJk0htjrTxRnckdp1ZR4t6oFaGjxai9lo0wTzQ8KMfd0AAc9f/0dPUfeLqsog==
X-Received: by 2002:ac2:4884:: with SMTP id x4mr559623lfc.92.1576527376259;
 Mon, 16 Dec 2019 12:16:16 -0800 (PST)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id a24sm11015145ljp.97.2019.12.16.12.16.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 12:16:16 -0800 (PST)
Date: Mon, 16 Dec 2019 12:16:05 -0800
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next 4/4] net: stmmac: Always use TX coalesce timer
 value when rescheduling
Message-ID: <20191216121605.4780302d@cakuba.netronome.com>
In-Reply-To: <BN8PR12MB3266BDA48CE9F65D564B0918D3510@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <cover.1576007149.git.Jose.Abreu@synopsys.com>
 <23c0ff1feddcc690ee66adebefdc3b10031afe1b.1576007149.git.Jose.Abreu@synopsys.com>
 <20191214122837.4960adfd@cakuba.netronome.com>
 <BN8PR12MB3266BDA48CE9F65D564B0918D3510@BN8PR12MB3266.namprd12.prod.outlook.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_121617_959084_1570A517 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 16 Dec 2019 09:20:53 +0000, Jose Abreu wrote:
> > > diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> > > index f61780ae30ac..726a17d9cc35 100644
> > > --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> > > +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> > > @@ -1975,7 +1975,7 @@ static int stmmac_tx_clean(struct stmmac_priv *priv, int budget, u32 queue)
> > >  
> > >  	/* We still have pending packets, let's call for a new scheduling */
> > >  	if (tx_q->dirty_tx != tx_q->cur_tx)
> > > -		mod_timer(&tx_q->txtimer, STMMAC_COAL_TIMER(10));
> > > +		mod_timer(&tx_q->txtimer, STMMAC_COAL_TIMER(priv->tx_coal_timer));  
> > 
> > I think intent of this code is to re-check the ring soon. The same
> > value of 10 is used in stmmac_tx_timer() for quick re-check.
> > 
> > tx_coal_timer defaults to 1000, so it's quite a jump from 10 to 1000.
> > 
> > I think the commit message leaves too much unsaid.
> > 
> > Also if you want to change to the ethtool timeout value, could you move 
> > stmmac_tx_timer_arm() and reuse that helper?  
> 
> Yeah, it's a quick re-check but 10us can be too low on some speeds and 
> leads to CPU useless-looping. The intent is to let this always be 
> configurable by user.

Okay, please do mention the bump from 10us to the default of 1ms in the
commit message, though.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
