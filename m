Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9777CC4E2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 23:38:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LHIUL/Yoq5NHGLU6GTT0mz3z/mwbbK+7wuUBNqWt0rM=; b=csmte5LQlwrKu7
	JfLSSmB9qy4wIMX/rE7G5ROwN1bpVAjX/w/FnTM2g1Pbjyr0h8vMn8PM41a80lNLkfcG5C0njoG1F
	BSbRKRyKaAEf3eWc3h3EjbFb9cFLwkhA2648o8rej6HyvKgVbVw3ryZa6HwF85DrAPUsEzN4NQRZh
	pR+ng3qQtgXwEtLXnb2BDiY4TyZjbgDeLa7bBHv3rmpZC8ee4heNHKqTBo9j7bqy/IWTvP49Geesy
	j+ARuNZ4qK2aCVj9B3voWtFRi7TdiiLPyUAMJELZ8XVihgzE5Amf95WNynd/BInefMEKCcJBs6/DR
	3AGj2ePeq+KENJSMf+7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGVHV-0007mi-AQ; Fri, 04 Oct 2019 21:38:33 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGVHN-0007m1-Am
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 21:38:26 +0000
Received: by mail-lj1-x241.google.com with SMTP id m13so7870727ljj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 14:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aRAc62gXtPBKRS38xYdigbDwlITW2b4WE0eT5kkYxq8=;
 b=MO1o1GKZKe0wHXwuXT1J6brobS8MLc1iJ57iKwIs/hF317Z/7cQXPXf/ZOZTQnhyac
 bpZ9LLIE7ndE5MG4snTxWYZCa7uyxqWNiwD72CZG2l+oCHbo70K2kyTaB/kASxIsdUIo
 pignYGI7vksf894FIhQUunwDnaoMZNLFA05n0NGdHlJzasAuVTS4L+40RHiltmLQxhJa
 0zbh7L9oItbK6G2NjV6888RSLghmQcMNhJem1cnTRr8djiHtQ/01LVvlYmOhViEC3Aer
 3ZMtpKSbSBSEo8WJBTBkZhr6pt73NyshdSURD5I8gOa/ac4PUR4X/NsCHMMwRgcpiDjp
 Pz5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aRAc62gXtPBKRS38xYdigbDwlITW2b4WE0eT5kkYxq8=;
 b=QKsfS3LRBS4Hb5VxB7kkbj6Xx0C5saLH9gm9gzS6QuuxaALcu0B+w5YfTcSR2n0BXK
 XuzGGxcNRd+WarSCtoJfOOtZrn688aIrKzuZyfXVP7B8J43Jhr3bCGnpwYnvzr73kSEe
 1CvjE7i4SlBebcSqIcenD++XOPigEKEe9cnIA8kGp6HNHuhds8RPoX3k1RMy/q7nFEjD
 N/PTMJoHJl1GQxCG4uDKX9JlwjGe2gF0namVCyvm8C+3HjbqdhBo/ESaQLiFbEeDsUyx
 a6xCs6wVYsPIIWPda+6D33hyCd1OTMV5EXuqwFaR4n5vAsKe8c2kwaCb33dGnuv0QrC0
 oF3Q==
X-Gm-Message-State: APjAAAUTwYvOPYIQfk6z/UC0FswEnFxvYHD2DqHKBYpYokZDE8pbEOrM
 yFmSrCh996G7qTmzgOepJKh8y9s0VJUVL/LO9tfvUQ==
X-Google-Smtp-Source: APXvYqwVqa3ntHGFTJZakMoLSi/yRzk3PWsVbI/cLCjoEnPNVFZGy9RtSFmcdpmUA1Y9q+WNK2/Mv8JK1l9BXaYiT7I=
X-Received: by 2002:a2e:894b:: with SMTP id b11mr10670560ljk.152.1570225103606; 
 Fri, 04 Oct 2019 14:38:23 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1569572448.git.baolin.wang@linaro.org>
 <a6b18f17b995bceaf2fc0129866301dd8f46bee4.1569572448.git.baolin.wang@linaro.org>
In-Reply-To: <a6b18f17b995bceaf2fc0129866301dd8f46bee4.1569572448.git.baolin.wang@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 4 Oct 2019 23:38:12 +0200
Message-ID: <CACRpkdYF3hPit5EgWCXuM1exoWMFn_7k=OyM99ojS9WeJeMRFw@mail.gmail.com>
Subject: Re: [PATCH 3/3] hwspinlock: u8500_hsem: Use
 devm_hwspin_lock_register() to register hwlock controller
To: Baolin Wang <baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_143825_378936_775EE167 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, linux-remoteproc@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 10:28 AM Baolin Wang <baolin.wang@linaro.org> wrote:

> Use devm_hwspin_lock_register() to register the hwlock controller instead of
> unregistering the hwlock controller explicitly when removing the device.
>
> Signed-off-by: Baolin Wang <baolin.wang@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
