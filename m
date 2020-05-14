Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C3F1D320B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 16:02:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XKc2AAQV600Gj1nuvYixCgVBRsEJNq6fSrTr1+B9o+w=; b=OeZWlVs0hEkNrA
	+L39aN4XAfppjAGh9/uQNRNwIiMxAmMiSG6zsRFLBI5zTlke7u2mT2nSlFXrQUm9GevjVc+5TQdB+
	CkLPNJVORIbPGkZ2gmkxlAZ/3CNfjNWBgMfERCYauOIikgc+j67qOw4lazUdSBpRZMxNCpX98y/w+
	p+Mb/Ne7Ic4oncAwPzNBkRr78ulSEiCEGkdaeNdz8hxsQ2KrCqtLcZL3GfFcU1kXjf7lABwpO0GJ1
	OnwhXq2X4wzT06hv3frHb+uio0/rxlmHya+9AOzVF7oCiDgLb1xHEtheUBWx4BnkFcBoBPDtgrxC/
	7wwD0C1SiD8OqPhdB0Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZERZ-0001U1-8c; Thu, 14 May 2020 14:02:37 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZERR-0001TP-Oa
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 14:02:31 +0000
Received: by mail-ed1-x542.google.com with SMTP id r7so2447374edo.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 07:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0a3V5jmjGRHrvpegmiJsNOOrUHQvBZ4nobS3syH2lOg=;
 b=P+r2tTRptAL94be2yJTghePE0UJFO9u4RqWWaZMVBsVTzVVkYrNPXKen7lsvqC9Mzf
 Ue/6/LRS5fi7NdgkTRXVNZ+JbVsl3J88TNiGRvMkw7JLM56MjQEzg70P0UU1Er5VkbMD
 y1GUnu8+PHoCbpXVijZQ+V2ey9ktwjzIhuB8pe79eA9bd5szcqg8M3C0HePU/HXD8sFt
 QdV3CVt87uRc7xYf8Dzh3Th9sxDXKCcDjlgr1jj2aG/ezrrFWY8wI/pXhzGNN/jdDF/w
 XJWLcPKZ82dFYkmEPVD2zTewvyn1bpsQbXWEiYs5EB9/zSE/ZJql0lShnSfFdRPMNfqr
 N0gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0a3V5jmjGRHrvpegmiJsNOOrUHQvBZ4nobS3syH2lOg=;
 b=IC2ZND8HYuhiLLTHFG0l4nxBNx1eE5sR9fVDiJ3WpHjpG2hVenA0cUIJNYTeaX7fk0
 EhDGnVVFF0UP0r3C5pDQg1debwd81T0MgnJcsCQZPp8DILxAh4vCKL7My7hlh66pKuLQ
 DhSWw2VljFAZPjFkLBxHJ+Wvq2b9OK2N3T8heOGUVjzrqt3PCeB+2yF+BlpaTfoDEKTk
 BI3csvlqcCQdqM3AkM95vniuI947RbPoYMRtvIyHRZnDuEqgBnXfLUfapQxBz8RyIMjZ
 NCE/SeUM38LU19fwGecDmxTsGQLi8xm3m6Xv1gUZkPtygBTErqJKcO6Du82j7uDspiZK
 FfWA==
X-Gm-Message-State: AOAM530rUg1c4/AZ1Dzj74pqZ06OIFwIINRLTIXcJGWApRNLt6yJJ8XC
 kUh5YFSRzu/YW2jnkMAB8SoNVeZQr9DuQ4ZUzu5zaQ==
X-Google-Smtp-Source: ABdhPJzxROIVBbrJVN5njvqUZ2G2Yhy2TLpAVfDIwqO1jLUGiQyvUC1NixURN8sEFAx1heyOQhXZ6MaaOmTNaWgkTnw=
X-Received: by 2002:aa7:c6d5:: with SMTP id b21mr3900715eds.97.1589464947048; 
 Thu, 14 May 2020 07:02:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200429052932.GA2627045@builder.lan>
In-Reply-To: <20200429052932.GA2627045@builder.lan>
From: Bjorn Andersson <bjorn.andersson@linaro.org>
Date: Thu, 14 May 2020 07:00:48 -0700
Message-ID: <CAOCOHw4GmTYiXrd3z9B-YHq3wcwLYXg4y=nkJWhLCDw9G08KqQ@mail.gmail.com>
Subject: Re: [GIT PULL] Qualcomm ARM64 DT fixes for v5.7
To: arm-soc <arm@kernel.org>, soc@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_070229_808568_3B410864 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, Andy Gross <agross@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Olof Johansson <olof@lixom.net>,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd, Olof?

On Tue, Apr 28, 2020 at 10:28 PM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:
>
>   Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)
>
> are available in the Git repository at:
>
>   https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-arm64-fixes-for-5.7
>
> for you to fetch changes up to 7710f80ecd9c74544a22557ab581cf603e713f51:
>
>   arm64: dts: qcom: db820c: fix audio configuration (2020-04-22 19:26:14 -0700)
>
> ----------------------------------------------------------------
> Qualcomm ARM64 DT fixes for v5.7
>
> This reduces the (hard coded) CPU voltage to a safe level on MSM8996 and
> updates the audio nodes on db820c, db845c and c630 to reflect audio
> changes that landed late in the cycle.
>
> ----------------------------------------------------------------
> Bjorn Andersson (1):
>       arm64: dts: qcom: msm8996: Reduce vdd_apc voltage
>
> Srinivas Kandagatla (3):
>       arm64: qcom: c630: fix asm dai setup
>       arm64: dts: qcom: db845c: fix asm dai setup
>       arm64: dts: qcom: db820c: fix audio configuration
>
>  arch/arm64/boot/dts/qcom/apq8096-db820c.dtsi       | 23 +++++++++++++++++++---
>  arch/arm64/boot/dts/qcom/msm8996.dtsi              |  2 ++
>  arch/arm64/boot/dts/qcom/sdm845-db845c.dts         |  3 ---
>  .../boot/dts/qcom/sdm850-lenovo-yoga-c630.dts      |  2 --
>  4 files changed, 22 insertions(+), 8 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
