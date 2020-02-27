Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ABF3172254
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 16:33:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hSLFH3ReC5vlzFZen9Vwsg53MJ64tVEaYN/aJspEK3E=; b=T7LsA/WxwXGoh5
	QSAgHPOn1tEU4B5QXysMj2BHMdFJQHrjqOIDaTdtJ+9xEzi4Z3nphPDQZ2tzz8+/gKGmZkBYl/tFl
	FkYKXOtBfGhZdH36nvQfzBjOXtdCXyW26K40uxRiKhBnPIG3dBI0jj/mxkqL9fEn/r98FVuekyxvZ
	i42B3j2KUi1VTbjvnLiPEIqpo/iwOaj16IP6TjR0YGHKb+obePHJez0JnJoS6+mMv7tmzOTYbHhc7
	EXhny417P+UR0Mz4w+kjxOUD/MsfYJ9aTRzpYAcv3ekzzxBAP6JeBsv/g3cFADz2O38wd9alsdPth
	ZLAs1Xmya97suNUfiGmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7LAM-00018u-00; Thu, 27 Feb 2020 15:33:34 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7LAB-00018P-Cb
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 15:33:24 +0000
Received: by mail-wr1-x432.google.com with SMTP id y17so3901825wrn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 07:33:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PlJh7KwKwoF0roUHWyMbx5bXkeNuxqQ6kJ4bjrWS/zk=;
 b=pi6014v0Go8GE5haEJVnBIFl5daGsjiqZ0iAuCENHOjFCGR13ufCGyRIqLA6+tf/45
 24xnGbYiWqrzaVZIaqqd75LzkVauRnrtIIbQ7l/yadmGgDddEm3VfYQYlFU4cEKPM0iJ
 m/ecL8ESWrXhYvfGDtJHqyB9zurXebzNiI1kNy58nUkHqsGZXXYo+OAWQxwz+NDNtQwH
 FClSBK2noFpnRguJvgXLDUBhPfm90chb6YtRW+1YEPL6Es40lGD+Etct6cFWxVwEHf6c
 01fdiTEulkhYOQfKLZdReRRmwpbOfxmsrpuxhVx17SMUsbyxionm+Q9Py9U2m4EAVr96
 m+Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PlJh7KwKwoF0roUHWyMbx5bXkeNuxqQ6kJ4bjrWS/zk=;
 b=LPIFoWHrroryGeVOx4nDuomifezDtiCLbIqGSR0jw2CwDoaH17z5/6sWv2nsR/fadh
 M09O0Wae0SKxTY/SjDQdrty82QI3ZOt/yLfxoayC8k/nD65cjxoThLt57MlnGcAk0sAL
 J9lvKXG7dsu0FQVQZrgkwLFBmzf09/0WSPaNuMjAM8aK8147x/7dCt0KatJkCA0sIKv9
 ZLblzNSc0jxD29uWLeEgXjQPeoA4bzuVIa9MnAijH4XzZXViqXgc4FTsodkOgXksmSSx
 KHWiNo7L06c79Orw30LXYxXjNaXy2t1Nd69xYF+kQ8mfT+EiFoDoM5VM6u50jMNk8RSC
 jrLA==
X-Gm-Message-State: APjAAAUjuZ8XC4EW5o8go7D3pcEL3XEHLP0BhfdjSyFrFESEaI5dPq9s
 E+vi6Z1eb5BFuaBiTRFGbjE=
X-Google-Smtp-Source: APXvYqxXLkSUtpO/z197s3b7m3PoVu3Ro0Ve0lrD4EFasmcfhXnfbinA5eQ0Kmtn9ANbx21whjfZQQ==
X-Received: by 2002:adf:e5c4:: with SMTP id a4mr5813925wrn.292.1582817601414; 
 Thu, 27 Feb 2020 07:33:21 -0800 (PST)
Received: from localhost (dslb-002-207-138-002.002.207.pools.vodafone-ip.de.
 [2.207.138.2])
 by smtp.gmail.com with ESMTPSA id n13sm8435089wmd.21.2020.02.27.07.33.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 Feb 2020 07:33:20 -0800 (PST)
Date: Thu, 27 Feb 2020 16:31:10 +0100
From: Oliver Graute <oliver.graute@gmail.com>
To: aisheng.dong@nxp.com, anson.huang@nxp.com
Subject: Re: RFC: imx8qm: imx-scu-clk: probe of clk failed
Message-ID: <20200227153110.GD16310@optiplex>
References: <20200227125743.GC16310@optiplex>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227125743.GC16310@optiplex>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_073323_430630_AAB57774 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:432 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oliver.graute[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mturquette@baylibre.com, linux-clk@vger.kernel.org, linux-imx@nxp.com,
 leonard.crestez@nxp.com, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/02/20, Oliver Graute wrote:
> Hello Aisheng,
> Hello Anson,
> 
> I get the following imx-scu errors when using Linux version
> 5.6.0-rc1-next-20200214 with scfw Build 3353, Commit 494c97f3
> 
> It seems that important clocks are off somehow and that lpspi isn't
> working because of that. What is the best way to debug such issues?
> 
> [    1.103799] imx-scu scu: NXP i.MX SCU Initialized
> [    1.111383] a35_clk: failed to get clock rate -22

After some deeper digging I saw that the reason for "a35_clk: failed" is
an IMX_SC_ERR_PARM = 3. Because he trys to get the resource SC_R_A35
which is only available on imx8qxp and not on imx8qm. No clue why he try
that instead of SC_R_A53.

Best regards,

Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
