Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F619CC402
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 22:12:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mdwKlKhCz39nf77N6yh+0BjLzI8/Q/IlAg88tLHFOdE=; b=MJQi62lGMWEdbP
	U/wbzowcTH2V7uXHcQxaFnF7Kp02siig6BZm5K27j4HZ0UH+pNW79mYdb2b7dh+w+gvLyzvIw/Ome
	3+x7lWis+mC77qpmAVaCLWr9Kqlk9oDovKVxQYTrbKtH8qdYEcetHrZ++tQLol6YHU+5ACW36O96/
	3m8yOT+4nuIwyWJ6cUDzaJoCsOM3zsm6nLSmusUBBDJo8ow6Rp6gyZMpxSMiYLMtTCXEUJaiKlNlk
	VqTIKVe4shIx6dXn7YqPrM0harmXmCCq+7U/y9IvSz8/J9xTNtGvIRUuE/Bil+LdcmduQVFa64JQs
	2MLXqAMWoyTK/11fJ9Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGTvc-0002wK-Jp; Fri, 04 Oct 2019 20:11:52 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGTvT-0002v8-BK
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 20:11:45 +0000
Received: by mail-io1-xd42.google.com with SMTP id n197so16167102iod.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 13:11:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q+gSdG7Prkk7Cp8mQY9HaZirRwIllCjsMp9BMJvUxrk=;
 b=ZSyrvWFeV/vh62RWW9BJlK1/b3jPCygzz85/0IwOL2MzWF2ErbrXK6d6LLO3DT1w7M
 tTzG4A+wWRStYJB9lmHyo/ND5e+tPKnLsSWfVGqX2PTyd83EKyJ9gLVo7YD4ZRRLXVvA
 u+YFOOsDVJF/Tt6K1cit9W+BpFxgaVaMID2R8z9h+WO31LJKARx+2KAU8lezejqryyRU
 NDa8k78Ue9/HTUCJAweCKptnGwn1UA2cUL3fOz9WsGSJDvMGeOpumca6hj6KLo3Eh2/i
 FMSd9CQiqYxLLAzuWfoZo8wbKGVbqooDkKvvAoqxJlgVTh9FIFKrd8tNT00tVxE7W4CS
 rfpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q+gSdG7Prkk7Cp8mQY9HaZirRwIllCjsMp9BMJvUxrk=;
 b=jf+bBROJCHXHNi9gTH+2aLR2tPzxJzDCb7Bi/mWO9nniyqpn3wwIgW5HWPYwCv21Cz
 ZEI+Fs0JFcbTH+WqTGqgFG9qizgigH9QGIXZgHtS7xOp/5QLn8cHxTp3w+D+vCv8VYKj
 YD64u0MT/lq9OSKGBAyeNuNCEjoEF0YRSAojz6QAzl25AoMqYhTLA3N9XIvvYhoPeG80
 y0zgP3NWXjwdFYrqfUOF4tQEb2LD8sSirFfXdK0uOzDilAc2/ckOTtXiBGgKf6JpTOo8
 I/wf/kAvyRkkDKdy1mS/2GmLm5F+PAkjl5F2eDEtFNBjh4OXc9JHZ6aqfXuEPOjv1mJD
 PzLg==
X-Gm-Message-State: APjAAAX5JIggMwE34xqxTxJ58z8puQ+aEmmvwbkicA0d87riQ0AUl+R6
 CNndCSEnfY2bAuzEMVU3uWQ3eqENJf+/7IqzyQUxjg==
X-Google-Smtp-Source: APXvYqxlEQ0p5dqdnleWWojSrwkdgmBEUkurQtZ1WZv+uCyU//AQSI8hbw9SjVK2dBtB2MjbTcY6tyfd+ZHXEi17F2s=
X-Received: by 2002:a5d:81cc:: with SMTP id t12mr8160598iol.207.1570219901601; 
 Fri, 04 Oct 2019 13:11:41 -0700 (PDT)
MIME-Version: 1.0
References: <20191004124025.17394-1-patrice.chotard@st.com>
In-Reply-To: <20191004124025.17394-1-patrice.chotard@st.com>
From: Olof Johansson <olof@lixom.net>
Date: Fri, 4 Oct 2019 13:11:30 -0700
Message-ID: <CAOesGMgF2m_MUqHy9_aabMxMZ4rd1=qL0VGr+avPNn=GgsLJCg@mail.gmail.com>
Subject: Re: ARM: multi_v7_defconfig: Fix SPI_STM32_QSPI support
To: Patrice CHOTARD <patrice.chotard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_131143_528973_0F5AD697 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>, SoC Team <soc@kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 4, 2019 at 5:40 AM <patrice.chotard@st.com> wrote:
>
> From: Patrice Chotard <patrice.chotard@st.com>
>
> SPI_STM32_QSPI must be set in buildin as rootfs can be
> located on QSPI memory device.
>
> Signed-off-by: Patrice Chotard <patrice.chotard@st.com>
> ---
>  arch/arm/configs/multi_v7_defconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to arm/fixes. Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
