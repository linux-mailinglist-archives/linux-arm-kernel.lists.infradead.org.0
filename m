Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACFF59430
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 08:29:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DhKx2PC3b7vqD1H/A875t68IGHbvgG98VHx6waL5R1A=; b=I8fpgpw5nlvFR5
	lmYO4gp0wYvnNCni+f+1Tz6pb6s22YrA2ElEfvQNg6GMLfDKmS6TkBIHzURDrPHz3734lRSFBTjgK
	tpLD9WQtVoK9DkrILHocGT2nByKQHdcANxivAXTkmFqBrlRds0aVOg6a2Pv/cco1fFGQ1HrzVJjYM
	qp0DP/AWuG0Q0eRYQDqi2yGu5EHLLGT5oxUYot2xdPy4nqsp2Zlrk2C8zApqMUXaP2yKReXfDqJSY
	jFIaf00qLPGVqLc/PWXmlaDwNV1h+Jn9qYl22PSCA5xeB87qjLMChK3UnxJkPD3fK32y82FoVMtmN
	bQ3kp+xtEVsUYJxY4m6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgkNq-0003A1-C9; Fri, 28 Jun 2019 06:29:18 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgkNe-000399-Fp
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 06:29:07 +0000
Received: by mail-io1-xd41.google.com with SMTP id u19so1685244ior.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 23:29:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=saTGILFM6srmwaj5/tNn2pJ+i33z1aHVJBPvZqZ/BAQ=;
 b=D0mMAxAkyRFOSeWJJs8lfk5+0GEaORmZ8+PuHou6ahBwjFSXkKZu/YUjPwnOlrnGSn
 /ZMaoM+bsUqfcSKl3JuySQsMv7/z9C4LVUivLTai5w7Eh63PwbrS5LBV7hgeLF/7fZW/
 7gnmj837H7fBE+tgJyfBtjNJ9paoXMvqFQZfemXCW6OflwfLhYof+jarlgyA5g2qNRKp
 GPo6HwCBT2+23G0VYYByJu14Ul8JtxQFjdDopcPCYWN+GwSWuy/Hnebh/yaIxv/w23uZ
 eH1dU9WPiK6rETD/XYVO2zoEu0nqXGv3kvSX16LSxRsrrek2YLgq0w0Nzo4p1VZNHTMV
 detg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=saTGILFM6srmwaj5/tNn2pJ+i33z1aHVJBPvZqZ/BAQ=;
 b=Ql5Ot1HYBqimr0AyJuHQ1jGly3ut5RgZ/Q+iSwZ4ae4M0s9+QvgTP32OIPbaxzPvg1
 6uwB/JAI06histooUWzS38OLVvx+nf/tlwqRV66BPrt0ASh7EhWODtPHriJWkSuK69sM
 UdQdLP9DuBN375ocv4EzIVYT6Y3EXNtGxfGOnBCialvtIPwooIn8Qw5cRtjB0FvmWUsq
 0tamnGmTKtePke7bBYQCqHqEtCn/mKPKonm/0H46RkbCDvu1fi2/0lOCd2wW0eScrqBz
 6kkMtjdCXUWVKtKvgozMjhiB7Sy7JNEevKQGAW3+Cpakd8uuNjauYXr66jW+EUWu3lZ1
 n8Mw==
X-Gm-Message-State: APjAAAXuEgYMnzn0JxnnEFpPh7yuBVSh232kl+8wSnAes2QO8P4lnaPw
 R7WPRTKddtfByKKrhFvtGRzhWlKKxpoQpJszDnj+rQ==
X-Google-Smtp-Source: APXvYqx3P+LmmIyDtQh34wT0i4pWVu04xgifzi8AuxYP1ModA6Zlva0Pj6Fel0+bK1DzBPsPdaJY+uky6uQUE++iGPA=
X-Received: by 2002:a5d:94d0:: with SMTP id y16mr5555373ior.123.1561703344930; 
 Thu, 27 Jun 2019 23:29:04 -0700 (PDT)
MIME-Version: 1.0
References: <1561700182-18108-1-git-send-email-agross@kernel.org>
In-Reply-To: <1561700182-18108-1-git-send-email-agross@kernel.org>
From: Olof Johansson <olof@lixom.net>
Date: Fri, 28 Jun 2019 14:28:53 +0800
Message-ID: <CAOesGMhQKastVvjUdmH=-zTzejHZ-QOXr6=qJDD2XqoHQJPrJg@mail.gmail.com>
Subject: Re: [GIT PULL] Qualcomm ARM64 DT updates for 5.3 Part 2
To: Andy Gross <agross@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_232906_578286_774741F7 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 ARM-SoC Maintainers <arm@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, Jun 28, 2019 at 1:36 PM Andy Gross <agross@kernel.org> wrote:
>
> The following changes since commit 2410fd450c09a126aefefc9106b4652285b5d60f:
>
>   arm64: dts: qcom: qcs404-evb: fix vdd_apc supply (2019-06-19 23:50:52 -0500)
>
> are available in the git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-arm64-for-5.3-2
>
> for you to fetch changes up to 8291e15108cde33c3e086a34af5381c95cc7aa87:
>
>   arm64: dts: qcom: qcs404: Add missing space for cooling-cells property (2019-06-28 00:20:37 -0500)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
