Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80AAD54FD4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:08:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3fDQ9WWqMsh6+ZA1Zscrn4HVpQeiye/MBd3xVkTrxYs=; b=B1sVPac2OKkgR0
	Mt/kL0KOWEGO0e36HRjpHEFqtkM9XCaRovNkgV3GHO2HyRYia5G7Axqd/GJvoyTObozqNbKkaIiD4
	3ivzyesTc5rnHvxPo1J8mDw6/ym54GxxcYxG6wS+PL3HGizfQyZYG+ndZzGnSjurQ6uwE822sHW8V
	QPiuhoBQwYw95gdj9OzdFlT4+8rdCUvkLSt+dAB3mA4XniP3nHX7Bs7bMG9dFft1M8G+qko1b0JK1
	lNMYTB1zteYex43+98JUkkzuTamFHE5s0dnIO39h1+Gi85iSrbXsUQTJkvXoUjD57aj0t+2LUwNvW
	RbGIZlmIhYgLbxtrLI2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflBJ-0004eM-Oc; Tue, 25 Jun 2019 13:08:17 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl7t-0001VV-NP
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:04:47 +0000
Received: by mail-lf1-x141.google.com with SMTP id q26so12606645lfc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=SkIP1Ns/Y5prHiRXSKOl6nfuFJ5KWOIdmaB8jjTi1a0=;
 b=Yz05q08zexz2WZjPSmGEyWM1G9IhrfhM+zh8+mkSmkspddKQRJbxgp1i7ltWsAJ5sr
 Y9qHqMbHCYCMUH+AQzpTVnnTuTJ7NFWMIpUM3EXW+6ceVVOYJUjaX3Fe35/ibYaJE621
 YD8ZbomhMjrb2cB37SXIXW8OdGkNvjKngl/y+WpLENnkXd5lFht2Siz/yMhzy+fuInRS
 P7nFkLVUYCvw6oKlqiYz2mJ3VH50VmnJpsJGWC0RirNskWJ0WDdWUrsrS6XjqoXaFy8X
 X2vwOpQjKTfkm5zWzH44sR6HqBXLgxmeh+z4TIZgm4R59tP0xXIaCm5WtW9uWQ2yb3Lg
 30JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SkIP1Ns/Y5prHiRXSKOl6nfuFJ5KWOIdmaB8jjTi1a0=;
 b=lrLZKqZLPQ1E6ojGk9tjDDXGMDwACvLuB0Xf9635ooaHupeDGolHywQVHpHabqH2Ze
 4zgmPOsUfs8l1gNhpsEZ1NYn8FuZuVpsbZHfABuaZtnmJ0+3HIsXxAu0RM7w+MrQ7xEe
 haPzGtD8qplIKzSyQw4touj8a9MO2PQgPfCho7r1RCqiQP4YNvr0WSwK4M2BwPQxYm8V
 akVQHmW73hFtO1AP2m/bIaJ2xUo2XPNPUWMAo4BPoo6se+yZtuo6C/eVrlcQ3iDQ8A8H
 8ccbMu60u+Ew/m3qtL4F/y64uid7JariQC/4kzEcGHxCqzcHWdRAUPnRBRlGSr4oFLTK
 X5/A==
X-Gm-Message-State: APjAAAXUf/4x/kRqKj6xj4+el3YJoRLkvzo3aqql+BEyhemfrRWnhWd6
 7PWcn9MYbNQKTLsIH4s27KR2Jg==
X-Google-Smtp-Source: APXvYqyVBWyzgNJILfF8DnfM865TQamTzMVtVsYXAsBFiqrxt6gDX1Yd4oq9OHe5GuhqCbiRB9x6eQ==
X-Received: by 2002:ac2:528e:: with SMTP id q14mr48950722lfm.17.1561467884239; 
 Tue, 25 Jun 2019 06:04:44 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id y15sm1970137lfg.43.2019.06.25.06.04.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 06:04:43 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:40:43 -0700
From: Olof Johansson <olof@lixom.net>
To: Andy Gross <agross@kernel.org>
Subject: Re: [GIT PULL] Qualcomm Driver updates for 5.3
Message-ID: <20190625124043.kichvu5nidvevyox@localhost>
References: <1561006911-28519-1-git-send-email-agross@kernel.org>
 <1561006911-28519-3-git-send-email-agross@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561006911-28519-3-git-send-email-agross@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_060445_816257_64CEE4C8 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, arm@kernel.org,
 Kevin Hilman <khilman@baylibre.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 12:01:50AM -0500, Andy Gross wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-drivers-for-5.3
> 
> for you to fetch changes up to e1068c32c1d413eaf8818ac10497817af9d2f231:
> 
>   soc: qcom: geni: Add support for ACPI (2019-06-19 01:03:24 -0500)
> 
> ----------------------------------------------------------------
> Qualcomm ARM Based Driver Updates for v5.3
> 
> * Add ACPI support to Qualcomm GENI SE
> * Update Qualcomm Maintainers entry to remove David Brown as maintainer and
>   fixup typos and incorrect DT file entry
> * Fixup APR domain id usage and making callbacks in non-atomic context
> * Add AOSS QMP driver and bindings
> * Add power domains for MSM8998 and QCS404 in QCOM RPMPD
> * Add corner macros, max state support, and fixups for setting performance state
>   for Qcom RPMPD

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
