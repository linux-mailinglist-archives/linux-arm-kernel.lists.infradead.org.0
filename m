Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA4A121AD1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 21:21:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+PcpoV45hJkbZNzdYj6y97mWpZ2Ru+85JzT+2Me564s=; b=jx7ODco3DtKEDR
	4P/3uKbyjmec7I6p/4R7n6mbhVF0pPIfA3b0gOKU3La7HXJA7UM3kE/9Pz9vM0OEtqnGyYQjFJs7l
	K6YQC9LZNC1GiCBvbYdKIYdLWMTwSPunj+kU6iyzgrL0v5olMEW+uvZo/5T+68714jsxSy8SFYfJ+
	P04snZykjupg/Q7gQqhlPC8hI5gFPD7sMracqM9/z6ps+Ir9dk1etGEYB1ulHo5OWfhNHsUDWVF3x
	queF5K7RR1mIDirKi79Zo9sDmkrGcGi86l+C2vCYPsMevkM3mI6rWshzWDadIKu554T5KBRgzF/AS
	ZGfMYpfuQtdbYoGt0d1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igwrv-00039n-Ae; Mon, 16 Dec 2019 20:21:27 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igwrm-00039U-0G
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 20:21:19 +0000
Received: by mail-lj1-x243.google.com with SMTP id j6so8259099lja.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 12:21:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=Coj/0TiMCvz30A/R8txuCVhc5n1pm41RNaOjJUWUaS0=;
 b=fPZkCIk0sJHFLthoSa2l0yCn2V8lLSwii17NEqkwT98ikRbJYd1twQVIIGQw7ltrH6
 J6doHz2eDuvnDERtdF9jYiFBsZs/SpGZwOcVAugBoU9E3jT41G/1ZigNahbIa1J8rg5K
 kSbJqo+ITbb2zxFaZluYltZ1isGPfKYAAXcte6U5wo82/wR2RXiPcnHGvaAKqPXV0Dnk
 NKG2rqg84KUceg2vu6AL70Z+Ieyhw9hnEIQ5ol8TGm1ChMs4pc0/vpjrVAQGMVZuPzes
 sXe0f9brx+3rHfDB2mBiVtY6XH6BhzvHiPtE68xp98dm6LygxTRY0c3DDKJPoAoGnVLW
 xjPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=Coj/0TiMCvz30A/R8txuCVhc5n1pm41RNaOjJUWUaS0=;
 b=gtoLRG7/9rO3WrASsbsOGQMXsNbVwCV5CAfbyROw2AKZWRpGpElamiQQbWJTlHNJQ3
 6dIa1CQR0qbyj1TCWFYBRfxs45rkBy1UPgq8q23YpP5wK/RbwNfM94hJe2QsecVRb7L8
 MKN+5p3PI7btHuzPSaWR4AmIQ4FbMTeTWVAlO1JYMDGn5yKxg1ICFWrYGaAo73tOnzUC
 3NDu4d1Uy3qTWsvToPSwq+w7Rj7qcUeHkp/wTCtKl8JMz8uweRsXC4YO5jIIZhVggQ4w
 yoxfFkArOi9o+ekOPAB0MyRjSMcJAWQnO/Q0HdY5FOu1NsrpLCnuwytDFLgkmoR/hs9g
 j15g==
X-Gm-Message-State: APjAAAXffPHbZ+j1kfWXk7bbkF8oHfr/9BFTeEnk6d0Rdi6BnJKi+Y0X
 mgdRn/N53EdTWTPqdsLIVBjgrV88WcM=
X-Google-Smtp-Source: APXvYqwvffi+Q+fIIrfBgnRjuyf8h/Vz0+Y6j1dBgFciwrLYs7AYC/zjAUfMezy6GLiXnMwUcjT2XQ==
X-Received: by 2002:a05:651c:c4:: with SMTP id 4mr644180ljr.131.1576527676330; 
 Mon, 16 Dec 2019 12:21:16 -0800 (PST)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id r26sm9508344lfm.82.2019.12.16.12.21.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 12:21:16 -0800 (PST)
Date: Mon, 16 Dec 2019 12:21:06 -0800
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net 0/8] net: stmmac: Fixes for -net
Message-ID: <20191216122106.582b6cc9@cakuba.netronome.com>
In-Reply-To: <BN8PR12MB326639325F465266DEACAA64D3510@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <cover.1576005975.git.Jose.Abreu@synopsys.com>
 <20191213162216.2dc8a108@cakuba.netronome.com>
 <BN8PR12MB326639325F465266DEACAA64D3510@BN8PR12MB3266.namprd12.prod.outlook.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_122118_042264_70D16C77 
X-CRM114-Status: GOOD (  17.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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

On Mon, 16 Dec 2019 09:26:22 +0000, Jose Abreu wrote:
> From: Jakub Kicinski <jakub.kicinski@netronome.com>
> Date: Dec/14/2019, 00:22:16 (UTC+00:00)
> 
> > On Tue, 10 Dec 2019 20:33:52 +0100, Jose Abreu wrote:  
> > > Fixes for stmmac.
> > > 
> > > 1) Fixes the filtering selftests (again) for cases when the number of multicast
> > > filters are not enough.
> > > 
> > > 2) Fixes SPH feature for MTU > default.
> > > 
> > > 3) Fixes the behavior of accepting invalid MTU values.
> > > 
> > > 4) Fixes FCS stripping for multi-descriptor packets.
> > > 
> > > 5) Fixes the change of RX buffer size in XGMAC.
> > > 
> > > 6) Fixes RX buffer size alignment.
> > > 
> > > 7) Fixes the 16KB buffer alignment.
> > > 
> > > 8) Fixes the enabling of 16KB buffer size feature.  
> > 
> > Hi Jose!
> > 
> > Patches directed at net should have a Fixes tag identifying the commit
> > which introduced the problem. The commit messages should also describe
> > user-visible outcomes of the bugs. Without those two its hard to judge
> > which patches are important for stable backports.
> > 
> > Could you please repost with appropriate Fixes tags?  
> 
> I agree with you Jakub but although these are bugs they are either for 
> recently introduced features (such as SPH and selftests), or for 
> features that are not commonly used. I can dig into the GIT history and 
> provide fixes tag for them all or I can always provide a backport fix if 
> any user requires so. Can you please comment on which one you prefer ?

I think Fixes tags helps either way, if the fix is not important enough
upstream maintainers should be able to figure that out based on the
commit message (or you can give advice on backporting below the ---
line, like "Probably not worth backporting").

For the recent features it's quite useful to see the fixes tag so both
humans and bots can immediately see its a recent feature and we don't
have to worry about backports.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
