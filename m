Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF2B13B526
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 23:14:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yqNtnbu5GvLe7PovgcFQiPtrboGKG7bzRbs5yzZBwXM=; b=WJNGBbuUeV1TgV
	AhgxDV4REkrSefi9MDrb6Wv1gQuc/auEXpbnkX+unQKcYgM3L40xC+mcCctgph6Vrc27W8JaaBt53
	BAMI15LJutS6VhEcQJ3zkOMtIcD1BHHbyiEPtdqKTlS0U1zF7yvII3QmzerpFu6wjyrI4EH4KZ1Wf
	ykIC4UFUkuAsSrnAarlEuqhPJEMVgnoGCaLS11h/SE8Ls08fxAXM0WaU++R/uizwf+us6q4mQAZUf
	sMUHDLqhkbsTeT7a2r/LaD/hNsdaQng3x/a0uZCKtyCcWYFkyNXW+UGyQLuMULd74L0OtcqyJGC8g
	yFA0Snggm6Mc4BJ9SzjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irURc-0000KO-QO; Tue, 14 Jan 2020 22:13:52 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irURV-0000Jl-OK; Tue, 14 Jan 2020 22:13:46 +0000
Received: by mail-lj1-x243.google.com with SMTP id a13so16179291ljm.10;
 Tue, 14 Jan 2020 14:13:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cm+CoTM0+jhOXDNc30YUOsZAT6IC0O3DFYyTQEFb64Y=;
 b=S74dWuBqv3AbnCdv3dgeQq/lxdwYTrhinVamWcvPdDyekZU35ibKEMhjrC5G+zJU/a
 HLvEGMR5spesjlGfGtswHQrvcUedM/E0QwkgCcGHEz5tdVmcQvuChLd+2a1uB3ZFZaJW
 wu9dVz6659OdbEOu7cFkes2SeGnaufGc476swME+HHtu5yMszvN/se0TdjWTLtbIRXxo
 HgvgZchckDeg53Slmdr+KNMjHzu0z9iJOeSn5l8f/c/UjvfHf6G574NbUIwE/Yqj2KTV
 msXk+SbQGsqdU9RD04fTTdIPguj48HAMKM7EtqeVav72zAg3A+kizc66ghVrGcwRJAu9
 OXVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cm+CoTM0+jhOXDNc30YUOsZAT6IC0O3DFYyTQEFb64Y=;
 b=NfAR/0AoYVg7nJZBzgtdQ4RWq3dDdhxCyzuNmr6/1wKGrXonaw7RAWvOrLtuLQqSbM
 1pEEtlwfrPF/AD+n9Gw+o2Y5XG4lUJLsBO7MePYII42i+3YEIm+C1WcsjSXyceurCTvr
 9jQxthLEVtsDv558/ehkUWml/Nbfxc83miA6kLMhvDUn4py2Adsnd9Q3iVdTOWSGa8W6
 lLd4OZt4X6J26y/gOSOBLRMaKoKa0U2cwVxW6WFrynId4wiG7ngevbaLmmF0Vz++URZs
 fplfoLL2NYQNV6xmV2iH2TQcOf+z/2aBwCCaAvST7Z8yNosixyrC/N+T3bp1toks7Sxo
 GLEg==
X-Gm-Message-State: APjAAAUprdJjCk37ox4bcBstv1iWc3+BN0Ge8eBxoFe8CwIJKoCh09fG
 VmqGx4PKmx0s+xuA4uYuJVy1Kx4lOeedFAFYYKo=
X-Google-Smtp-Source: APXvYqwN82PPY2p/a4NKRmOqyvi3rbYFvy/BLp5c2pkHMed/zTaGeP3v+iuRDWViPLXh0eZZNQcY0U7v9CZ+YZhZJXs=
X-Received: by 2002:a2e:8197:: with SMTP id e23mr15595800ljg.250.1579040019756; 
 Tue, 14 Jan 2020 14:13:39 -0800 (PST)
MIME-Version: 1.0
References: <1579038243-28550-1-git-send-email-han.xu@nxp.com>
 <1579038243-28550-2-git-send-email-han.xu@nxp.com>
In-Reply-To: <1579038243-28550-2-git-send-email-han.xu@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 14 Jan 2020 19:13:26 -0300
Message-ID: <CAOMZO5D0LoE8-kJbJ+7AEHJ9PODmCD5Ttv3MUSk7=feWPrdN1Q@mail.gmail.com>
Subject: Re: [PATCH 1/6] dmaengine: mxs: change the way to register probe
 function
To: Han Xu <han.xu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_141345_791899_C677F45E 
X-CRM114-Status: UNSURE (   5.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Vinod <vkoul@kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>, Miquel Raynal <miquel.raynal@bootlin.com>,
 dmaengine@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Esben Haabendal <esben@geanix.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 6:48 PM Han Xu <han.xu@nxp.com> wrote:
>
> change the way to register probe function for mxs-dma

Please provide the reasoning for such change in the commit log.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
