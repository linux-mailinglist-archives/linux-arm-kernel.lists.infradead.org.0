Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E353B18DD5F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 02:27:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6olHyhyaQTdRvLTyGeCAU25c4U6nzDOm42VjxhTP6FA=; b=pAvNGNOvHIFdDN
	WBhPsWNH9v/d+HksYuXo4dAkN8fWYRdOK2Syg0FmOFZFUN6Ct4E4jF2CTZKutciJOlqxzd9eXrVwL
	7h8HmEdsdMz0FVBxMeKtKZrHa+BtkY36Nt28fLNCHC3wmBFaRVIz1YfGT5qUh5ziuzV4R492yAUWk
	sSyD+bQtGkW9aUVT8HL6C8U2spvxUk9pbRJoSAYw83KcACut+3Y6R1376wADiV+l6AX4vonjxnwjI
	SXsKPspZvevvHQXJPX3dqtKOjFZfQczbPXt1zouALKK+jymsxmshXN302LFdh9UpeQqrRnT4OYoDa
	E7d3a5IRaokExPtEAdSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFSv5-0000lC-0H; Sat, 21 Mar 2020 01:27:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFSsy-0007Eq-Si
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 01:25:17 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9C27B20752;
 Sat, 21 Mar 2020 01:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584753911;
 bh=n8yjlr1b1s9SpEYtzTJTlVAWXrwLsk7f/ZXVv70T3gY=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=VsgEMTH0rs+SofkFeNpBwczp/5+1BYuRAc93rARWuGmr8OnnTpaZeCbTU/YnDBxhC
 WXwT2gqjuS/PhGnfx53MHI5c0CpisjD9XIak4x3eRxhyjJd2o7Zu2uKYjP5gSySbw/
 9JmIlf0Uc6x9BRXe7Uo5LEm0g+s2bSErdLwYAn94=
MIME-Version: 1.0
In-Reply-To: <20200309194254.29009-12-lkundrak@v3.sk>
References: <20200309194254.29009-1-lkundrak@v3.sk>
 <20200309194254.29009-12-lkundrak@v3.sk>
Subject: Re: [PATCH v2 11/17] dt-bindings: marvell,
 mmp2: Add clock ids for the GPU clocks
From: Stephen Boyd <sboyd@kernel.org>
To: Lubomir Rintel <lkundrak@v3.sk>
Date: Fri, 20 Mar 2020 18:25:10 -0700
Message-ID: <158475391092.125146.7678854836734974845@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_182512_972680_C89D736F 
X-CRM114-Status: UNSURE (   6.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Lubomir Rintel (2020-03-09 12:42:48)
> MMP2 has a single GC860 core while MMP3 has a GC2000 and a GC300.
> On both platforms there's an AXI bus interface clock that's common for
> all GPUs and each GPU core has a separate clock.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> 
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
