Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C629F54E81
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:13:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q5AsZVXBHmmTF2B+CHucpo7cV8NlE/r+OVuo/ub3hd8=; b=FrO7Cy2sMYYM0l
	h5y30P0EB+MmKp/GCLC/fVd6VixpDwLcqO9DM/F1HyVsM+PYI5wZMxnHwZLMw5QZYilsMvFllTETA
	f+3wcM0Kbntlh2gv2XCg4Fou/1hzNMAt4UVzAZ8dJzu3Tek46d3HRIX8HGmGyNzO7WkBigw8DXVJ+
	akWo8Svh9U8Ul/RFSDodMamuLWhXIfY2nW/LvpPRAwIsVuugp5AlvwWRrEDu2IG4Xmafy1qGvrU2j
	6z0jpUuI7ot5JYyPXOrx6bBpfNUimrT/2FuvU3MSdvQ9uSNd2sWL9eEX+fBIuw1WoSNIYGbLqltjF
	4DQyJgxPkQ2MZGA0kRRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkJv-0007uG-4l; Tue, 25 Jun 2019 12:13:07 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkC0-0000CN-LV
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:05:05 +0000
Received: by mail-lf1-x142.google.com with SMTP id 136so12437285lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=UhScOA90VXtVJS4x9i4Gk2pOhonw2Z/B22mNRgYqq3o=;
 b=sbBiDFY4OODmp04zHw61iFgtLLHubW6+XpFG/uGwOwv9jwrSWxb4cWCmCeD/dCrEFH
 +j+ebwJqV/qDZxEu18Xfd8h43pVwPLlfb2Z7NeJp46HzIb91v9AARAN9TL4yjbc7SChO
 0FkWn2RrMnhcoMZzmnG/cpewJV1MY0CMNzU3YKvMvOyQ++r0y0T8vI5JXCDW51l3Jtyy
 bZmQBlkWKjkb7JNgglna9GTa1ZeO1NIf7psEN2f+F4fK63cU408LtcTRtN6Nh7QAJ3Qv
 Teg9SA43cs4wq0pAmJ02VH5SHbgi73dwzZ/Atd9sI9O5N4XN2fGr+eiwGc8iiP7g7Img
 009w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UhScOA90VXtVJS4x9i4Gk2pOhonw2Z/B22mNRgYqq3o=;
 b=mWEOewp/nN5QbNBoULldGJ/9u6La+ZvCybBp53N0QCBkyCe00SNy3kx6dWKiNDYZXQ
 1BsvN2SSoeKAesQyA/63rdNPIccTMgkHXysGseFEQTL9CH2dTh/oCkjBsbJ79mqMaIK/
 L4ZRzgC+fVwvFb9kuSoflvozCeSJIjpN1TLxO6tUX0amPptPvG57EA9OjFszR2uZdjKV
 TSilThJTB5lK05ARLIvBx+21YEJUQZAG7p9zFwnCeyiSr2mOy2C25fhxkfKtUhEtyvnv
 alU3CTsDZBjQt78F8MqZ6MYyF4+MNvzBOuWAB/Q+rmq9rAr47CK71oKL/7LLLf0d9Z6W
 sZdA==
X-Gm-Message-State: APjAAAWQlS4OKmwmeF/PX447EMNSvllqyJTX0gGgMp/gGR8/B77I6szf
 SVjufjWmuvrEP4DoTa7qrn6i4A==
X-Google-Smtp-Source: APXvYqxV2l6C/DQls4VaBZ2SkmM271ZlflX8ZCJnccbJ8E+x6RBifPuueO672MLbMq3sKgZp6z+k7w==
X-Received: by 2002:a19:710b:: with SMTP id m11mr73758759lfc.135.1561464295322; 
 Tue, 25 Jun 2019 05:04:55 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id z85sm2221991ljb.101.2019.06.25.05.04.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:04:54 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:45:22 -0700
From: Olof Johansson <olof@lixom.net>
To: Simon Horman <horms+renesas@verge.net.au>
Subject: Re: [GIT PULL] Renesas ARM Based SoC DT Updates for v5.3
Message-ID: <20190625114522.42wgthk5cbdzmssm@localhost>
References: <cover.1561104194.git.horms+renesas@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1561104194.git.horms+renesas@verge.net.au>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050500_262546_B4B040B1 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 11:13:44AM +0200, Simon Horman wrote:
> Hi Olof, Hi Kevin, Hi Arnd,
> 
> Please consider these Renesas ARM based SoC DT updates for v5.3.
> 
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git tags/renesas-arm-dt-for-v5.3
> 
> for you to fetch changes up to 9dd6f7c484fd2aaa468dfdf5087425ea9e4c7bf8:
> 
>   ARM: dts: r8a7792: Add CMT0 and CMT1 to r8a7792 (2019-06-21 09:45:37 +0200)
> 
> ----------------------------------------------------------------
> Renesas ARM Based SoC DT Updates for v5.3
> 
> * Renesas SoC based boards
>   - Use ip=on for bootargs
> 
> * Renesas R-Car Gen 2 SOC based boards
>   - Configure PMIC IRQ pinmux
> 
> * R-Car V2H (r8a7792) SoC
>   - Describe CMT devices in DT
> 
> * RZ/G1C (r8a77470) based iWave SBC (iwg23s-sbc) and
>   RZ/G1N (r8a7744) based boards:
>   - Correct SDHI2 VccQ regulator to fix SDR50 mode
> 
> * RZ/A2M (r7s9210) based rza2mevb EVB
>   RZ/A1H (r7s72100) based rskrza1 board
>   - Describe input switch in DT
> 
> * RZ/A2M (r7s9210) based rza2mevb EVB
>   - Sort nodes to ease future maintenance
>   - Add USB host, Ethernet and SDHI support
> 
> * RZ/A2M (r7s9210) and RZ/A1H (r7s72100) SoCs
>   - Describe IRQC device in DT

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
