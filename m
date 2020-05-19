Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B241D9262
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 10:47:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wJASsyw6Fj2l2fmDY1HigJirvT0CXSZX6SFECDSaYi4=; b=YOSIOPjH1ev7O4
	btfD6BiY2mU0b1sNAl3vGl2aeoC52MPQ58/pVTtwC8uJEu3xI1iqU1RP5+iJZufPFAsRmwwpnRuBs
	YeGaqFg2fTqZZV0ofZm42JEOHQHIRpLSSJ4ocFIPlXPvcbzpP+VJ+0dqFocZw/XGtlapFIT6ya1x3
	lgWN4/KvhNvt81vdhCVaSIwy9Q+NxLOx13Pzj/6QJzz2ajLtgSzdmOcwBaO2iAqLVSpsEOziQIit6
	Uic5OODjjOWk600yasTdA4dYYxgYpdHrM8BlPJ6LNzHlyxz/011xf7BBGrpeHoFSjWUxEloaCsf4e
	v8H7lGWtLUvKTDCmhYeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaxtp-0000XN-0L; Tue, 19 May 2020 08:46:57 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaxtP-0000Ha-3q
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 08:46:32 +0000
Received: by mail-lj1-x22b.google.com with SMTP id z18so4612067lji.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 01:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OIpPfUzeki7t2/xOW8D2TwuLm3eUY3xhyGDnwk5Lnu0=;
 b=f7hDNXYiQHSskMCyc0/RCEDU8VzLQOtUQCEKK7X4yLljolNXESh06CRtaosmdsJjMg
 MX89bhm05w2IP6iDp8Zhv8JhB8YKTb2VBgQ26mmkDdbz25KK/PcLzAUkyOWJ4OIiVMbI
 wazGJoU829h1latSrEwsf8EIeuiqqKJBtRhdrg2UEsd97YZjJX3UhtZXNge0uZUx+SrJ
 H1PKlbx5h2OO01B3VProIiBId5oEJxzc+/55C+FxnGVPVAG5VcWu1n3AhCmOjazV4uea
 tnMICKUeCPRVLIQPDFf83zy9+N90igGBK8sZFg0xxlR+yKWVg8FI2bSQHs6P+Dw691Dn
 lqXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OIpPfUzeki7t2/xOW8D2TwuLm3eUY3xhyGDnwk5Lnu0=;
 b=qiSchCWbze//3fDjE1vCAZ4pM5PAxhFQ4gPoxEYFXFZiLjNHECXOxQWzZ2WkZKpSHs
 ZHtDB2Yf71tbAvsqUkyvibqS8R/4upjIoPl7XzCnIGuGNAXnwEnEoeiGSKdML/lmUPTF
 DoJYAKgJAUC2fIxQLWs3vwK7TrmgTDXEd3DxfDzvhZ3xNtjess+7nBvp1v6FW7OFP9wp
 CR/278J/8nK2dUaqAMIolCDHXkMb4F07Hwl0G/G48/RMc3PACSiZQkFSttUz6f8FrTWB
 2JwGbBB32wRGudHubM25ZKmLtwrMamot6dc8MM3ovgoFbqJpXEkt5Mrvok0ogXvIByL9
 BR4A==
X-Gm-Message-State: AOAM532+PkH8kGP9ZnSr03Cu9JhArgj27DBfbycGNfmqUpvRWznmhanH
 s44Txcq62SL3bM9t8pB6S4bDM7UgEa72uXN4G5AyoA==
X-Google-Smtp-Source: ABdhPJxxg7dkus/MHWS76IxVh06BJP+0gA2DbuK9i0BMpSDLRuZWDES9DGHBKjU9LMmAdUCXSmLUQqB3/XS9Szv1tXs=
X-Received: by 2002:a2e:b609:: with SMTP id r9mr12750772ljn.125.1589877987494; 
 Tue, 19 May 2020 01:46:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200519070240.6510-1-krzk@kernel.org>
In-Reply-To: <20200519070240.6510-1-krzk@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 19 May 2020 10:46:16 +0200
Message-ID: <CACRpkdZbD2BAAs7RgGC4sqaj=wgtNe0td1JCCSyb_Ld11qSSWg@mail.gmail.com>
Subject: Re: [GIT PULL] pinctrl: samsung: Stuff for v5.8
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_014631_356923_2ACEB376 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Sylwester Nawrocki <snawrocki@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 9:02 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:

> Minor updates for Samsung pinctrl drivers.

Pulled into my "devel" branch, thanks!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
