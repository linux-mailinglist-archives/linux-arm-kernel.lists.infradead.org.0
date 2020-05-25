Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EFDD1E0A7F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 11:29:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TBcwUmZRVx2hmrWo/Eo38fJLoEnqARUOw3HH2b1kOYE=; b=PikeAN7vgAVS92
	gIRpYgUePmIq9cBuuijsSHT4TeqtpnHABqCcU135TpSBemXy/qiFuH1vj+nAkvU27pXF5Q9mzdn8z
	VRTPKfHEGKTUp81zX9I78b7raiExGDGU7lgwvKST7eJDFxjJdQQfcfMpiKQifcaInRNQtPf+ojCb8
	xtZ2HMd6ZDTeKeGgnSEKE/xluxxZdsiux+C+JgUbTa8lP80C+bDb7xr83wf3+HYk18MgySJYlKEEv
	PuPWo/ymHMzTVSLfQLvsYpIaQN0fv7ssz5v2ajPK2llbQq5u2SLM31W5xohV3yOpxUnEsIWXLM05v
	6JiFTXTTV+72K/tA4ezA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd9QW-0005TR-Pe; Mon, 25 May 2020 09:29:44 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd9Em-0007kw-EO
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 09:17:44 +0000
Received: by mail-lj1-x236.google.com with SMTP id l15so19620711lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 02:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kO5vtDW6efTPWMJdT/IeulhOhr/Shn99sWBgLzctM/I=;
 b=WnOIkPx9Iho6akm/1otb3bzxcZJDFFWZUf0ZjYnagW3G3rEtAz/XI2cTG4Lmrs+lh/
 uBwn9VGTsCsRHjRxCmEv60TCrrlcOA5JJI3AxviDtqbJ3irKCEL0R27GEnM9uT5hV38f
 bPQ3nYPD42R4MAlowsgym120v3L/+zSTn1//Guj0XdlwR8QbIwlCJmsXHhkQh3Uh1OzL
 VFM4s9fjlUaOnjMt6dmVpCM0WDEvzScRcDxUFsq64+kCzT/z0p3pbp+kTWGfnh5Hzh2u
 i5YHaWguB7kt6FD5BQKe5mirOW+yxm8TZl3lHm3vNw3ouA1OOyDp8ZET5jiVHRtjO2oz
 luhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kO5vtDW6efTPWMJdT/IeulhOhr/Shn99sWBgLzctM/I=;
 b=Sh9crnNqxJomLyUMsrv8xgUe8/121r/XTq4xC9Ug8aCdDBbQml1u77TYJ9fqwbLfck
 Sor767GDhxBWAxYRBft1ZwdGGRAxYw5LqvU4UulpGsPgAXyQSqys6a/xL7cP2j5Q39dZ
 +mErubYGHqDkU1L6M+3z/FApO0hUqjURZA074c3NqGSpUMOt3bicLmjQA/5qoWOxX9F3
 IM78Addujksj3y+MM19DauRFnWZhrMET4U6RVEab7VZBqvpPrVBntXOMXONKAGpJoGS8
 dn6hOPH8BEVUBjP3ERBNdfTk4oKG3MPAFL1ynJnau+RgoBTJ4R8DinsFgim1xgsepoU3
 kGsQ==
X-Gm-Message-State: AOAM530K1521eRdlad5IFCy1NR4KIm4VO3ogJVPjJssfGrc6X2Q3vNZB
 aZ3lHQ2QlosGd2crHGycaDLNopbiQ6945DP1+krCTw==
X-Google-Smtp-Source: ABdhPJwFBs5dI5yirBLSFwiXWY52PiIXgZlGCLWwULeUThanyG8/0gUHFgUFcCvEjDwM9cabi1NMWxCRZgAoHBkp9KM=
X-Received: by 2002:a05:651c:32d:: with SMTP id
 b13mr2970920ljp.283.1590398254315; 
 Mon, 25 May 2020 02:17:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200520032150.165388-1-weiyongjun1@huawei.com>
In-Reply-To: <20200520032150.165388-1-weiyongjun1@huawei.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 25 May 2020 11:17:23 +0200
Message-ID: <CACRpkdYXmziVfd0ZDTq_3ReCdcw9cWPXXD1H9jfxvLiE=7EDDA@mail.gmail.com>
Subject: Re: [PATCH -next] bus: arm-integrator-lm: Fix return value check in
 integrator_ap_lm_probe()
To: Wei Yongjun <weiyongjun1@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_021736_498358_7C881206 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:236 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Hulk Robot <hulkci@huawei.com>, kernel-janitors@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Wei,

On Wed, May 20, 2020 at 5:18 AM Wei Yongjun <weiyongjun1@huawei.com> wrote:

> In case of error, the function of_find_matching_node() returns NULL
> pointer not ERR_PTR(). The IS_ERR() test in the return value check
> should be replaced with NULL test.
>
> Fixes: ccea5e8a5918 ("bus: Add driver for Integrator/AP logic modules")
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>

I applied this and signed it off and sent it over to the ARM SoC
maintainers.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
