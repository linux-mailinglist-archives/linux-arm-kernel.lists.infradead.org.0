Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 821E4B6AF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:32:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UHtGzE9U5YrRwIaly5R60bDIDj/GrkpgJV2b9pnajb4=; b=uC7q9woZbtVvUp
	DzGyTg4fAURiNHmPMKVN3WzMCdKV3FCKtaRaz7rD2V1rVZ0KQpVSxKfp6BZ+DfMOz592MdmRllQRG
	tEVJJdJVaZ/RadiQnphPcIpLJfymINrDCOm3gijyugu1BjtjaxNFFGIF9Nyy0LfeIuJJAHaIcgaoj
	yywrJgPyc9c3/esm9qL9BsopQHdnPhjl6/ReeLKd4nSzfAkOegj+h+pWaVW8J/E6RY7YzdZMVAGp0
	/gbBglFKJwL44iK9syRhitfBFhR1U4uCIUWNE31E96zIgtW7bMGxlGRrO0PjZgpUsGFubovPKsPgH
	pztGJ0gaViwaeK5+4kwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqTc-0005hE-A5; Sun, 28 Apr 2019 20:32:44 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqJ6-0002cZ-8y
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:22:16 +0000
Received: by mail-lj1-x244.google.com with SMTP id s7so4760917ljh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=UyBiEAsBxceQfqeC+P9Y3DWLd/6d48WxIgOY6TVRI00=;
 b=iqBr4WrN3UTAFb8EQyzzosOpHyZCl9xifv4DBqSnjh1heA19dXSe900tPqlSeU6maF
 tWZsPfcvbguYXCaWDflspSbo5m4BTDUz//uYZZkygBCh89oM0T2wOJHsmHLHT8jFEYkV
 abDG0L/ALk8bPlj70xHwnQO2ePkBPp2PrYPQWWX5TI6NiIzE1kSwgSqO8yDwaB4y5BF5
 3oq4mWpXjSegtyN9DHoGncgDzWyjTPO/CzzjSMSRZiTQneGtqmHagfWRzP/41xKe8Ctt
 4uARPFiKbsY28YZMXw2BqZFHAVY6AkXCGDG4JAddFzJLyaz1WadZgyMJDAPfRdXBzlTu
 RSIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UyBiEAsBxceQfqeC+P9Y3DWLd/6d48WxIgOY6TVRI00=;
 b=Vgf/8rlstKniy/EQRWB/ZKiywAp0iuQMM0UmdTkQffv0WC1FGXi0HsZEJR9B67OJtF
 nSMfETpbtMCyIecx7EBw6mMUssabAVrdC2vD3qANCajXiMziajeysfvCYc0ECNFBcor9
 4uFFWPLiFz1hXrRbODzcreCxnGGnd0ZRo8RCWu48r1+Z2KDAK3OwEmeqte2RbDllN8yA
 789hGTwWRmVn2TMQFF640BaGCSB1aDkm6lkDnl4f+kf8A4UqBcjLtWWoVsAva4j/s7Xi
 tjrDwKULXq/Sb3c9eCgQUbAhsp+kWj5l331oJTE1e2Cz+PqKNaHKmrHiRLaPSTtoQ2Wk
 EgQw==
X-Gm-Message-State: APjAAAXBAVDIMxM59izM19TCTHlQ5FZxUq6+dlPypNCXUIDweG9JNfFz
 5kATlNosrNqTza928VNtI6Upxg==
X-Google-Smtp-Source: APXvYqxhhyHvWDscUr1prUOMDp73S2g7Qp6nxpeAOnUVQBZZhA2BXoNNFSBBoHh4wGM7CTP/78s4Ug==
X-Received: by 2002:a2e:3815:: with SMTP id f21mr7688991lja.25.1556482910729; 
 Sun, 28 Apr 2019 13:21:50 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id v23sm1639629ljk.14.2019.04.28.13.21.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:21:49 -0700 (PDT)
Date: Sun, 28 Apr 2019 13:02:58 -0700
From: Olof Johansson <olof@lixom.net>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [GIT PULL 2/2] arm64: dts: exynos: Second round for v5.2
Message-ID: <20190428200258.zt7oizmsxlv7wp2z@localhost>
References: <20190428144221.11187-1-krzk@kernel.org>
 <20190428144221.11187-2-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190428144221.11187-2-krzk@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_132153_199742_5801615D 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-samsung-soc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, arm@kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 28, 2019 at 04:42:21PM +0200, Krzysztof Kozlowski wrote:
> Hi,
> 
> On top of previous pull request.
> 
> Best regards,
> Krzysztof
> 
> 
> The following changes since commit 77fc46976e0bfcd78d30fb4c9f0169752b4339c9:
> 
>   arm64: dts: exynos: Add SlimSSS to Exynos5433 (2019-03-20 19:29:57 +0100)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-dt64-5.2-2
> 
> for you to fetch changes up to f36afdd0f53583759562cef3a8453919e3b86a7c:
> 
>   arm64: dts: exynos: Move fixed-clocks out of soc (2019-04-24 19:57:59 +0200)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
