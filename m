Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EB4A85E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 17:06:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F62fg3eHKUTHoe8wn6RsYgqPP9ZuCr7GLE6qW2Dagk4=; b=iHwgrfIxm8Av1i
	uuhvMCevYsRX6nPNAGXVId8//oArKdCm2+kSHkAjw+N2Yfd2zXhc8WNBQgaLAoZ1fV5f4ETiVfUQ6
	EBjzX/rk6YUpM/eIDeWbMfqSm4yjqqjNBYBtdoqDv8eyZgrj9ZfnlgHNTvcNUezaF1WzOkJ4FlL3V
	x6eWGbhyCQUgmFTfmw4W4IHSYBIP/czP6FjR7+Jdnaw8oTnSNXhr/0a+Z8w0kaxfTpzdszhlOdLze
	u8Gaxw7SffVYB42dl/NbuuDuL4Yj74SHFi/KeZ2o0KdeGJgSuyfozQSlehjct8t6MGmE028w5gX6h
	jh9ASHe8KQLtnvTk2OVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5WrA-0006Tv-Ur; Wed, 04 Sep 2019 15:06:01 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Wql-0006NS-C9
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 15:05:37 +0000
Received: by mail-qt1-f194.google.com with SMTP id y26so24801718qto.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 08:05:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2VFHwOwmlKF2puTqPRuPTBufUq8IWxw7CTun82Cp4Sk=;
 b=iTzGB2KzAw63FGTf6RUc6fDQv470TD6BpMjFEJAD6Ba3MfCEShxZ+v6IhldYQ7kkp2
 pIDABJiEGuN7k6+M1Cros9yg0OrB+x5QJH03ZC5fa49gOj+COWwuADLOM9ceQBgUcxtd
 JIuWZY/Qw/OXEJjHla4qrTLYShDbADSELcbiAHqPaEZrhQevNcoSSrxPOJk6+qTkgqwh
 4NtBW9TxIUJ6+s0ynaTI14FvJFjQ6xlBxARAyj9QnWDM2RHSsTuzmzcA8Oo6cWKqPBD6
 U1SWSu5I2P0scKyNgcXHUT3C0EAxwmKcMeFY3cvnlQEbXaF3UHxeYUcWbmJ9248jyVsd
 sAtg==
X-Gm-Message-State: APjAAAVb9rQ/+w0nDuTsuh/Ytih67ET1gNNYfQV7F+NxSow38Q2W4fgv
 gwpPWkJPrXhEUZ4uhhG9BMQYHCfFjVGfdlMJt4U=
X-Google-Smtp-Source: APXvYqxe8mW1ml9yvZOqbtI/5Jf26rRet5rCmU+Mz4fV1QOEyWNm9JGTgGjKI8EocAJQlA6gxaTXUTQ5dQiHFPu2Ivk=
X-Received: by 2002:aed:2842:: with SMTP id r60mr30176500qtd.142.1567609534527; 
 Wed, 04 Sep 2019 08:05:34 -0700 (PDT)
MIME-Version: 1.0
References: <1567317285-8555-1-git-send-email-agross@kernel.org>
 <1567317285-8555-3-git-send-email-agross@kernel.org>
In-Reply-To: <1567317285-8555-3-git-send-email-agross@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 17:05:18 +0200
Message-ID: <CAK8P3a1D4004g=U_ekNcGeEht-vfss9sSYtYcnFsp7dXQQvGSw@mail.gmail.com>
Subject: Re: [GIT PULL] Qualcomm Defconfig updates for 5.4
To: Andy Gross <agross@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_080535_910549_BF7AB542 
X-CRM114-Status: UNSURE (   6.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arm-msm@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 arm-soc <arm@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 1, 2019 at 7:54 AM Andy Gross <agross@kernel.org> wrote:

> ----------------------------------------------------------------
> Qualcomm ARM Based defconfig Updates for v5.4
>
> * Add DRM_MSM to ARCH_QCOM defconfigs

Pulled into arm/defconfig, thanks!

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
