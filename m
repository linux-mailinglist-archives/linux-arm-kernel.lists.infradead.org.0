Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD779AF97E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 11:51:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6A81zIs6MNh8StNKuHQF2eN9xXIetGaJcbbjvbXLTQk=; b=DkxRzRTjnlI0ZT
	hupaZ9/5+R1BVBxeXHe9W3HWywJc6OcQnccujFGZHpJ5B16GoXrG011Zrt5e6Hgc1PBmOPoD8uKv0
	L723TOcJBq8wiGpKzDlaBlIBddCZayL2yX88ACtyuOvR6kCAcC783oQ7Fl31PplAa32NZaaIFfN12
	/tnqv/N31zSrmYZZ0eTTCrOmMpz7eV+Et1fWIf3kWSeag8p9B6igGOSri+ohpAjMknySnYonlM0jE
	08B9mTIRS5iAhkTckr+0Sel21x91rYc7UHTZsv2l88ZZH2uV4dyJxkkwg4B9O3fy5raCMtRJFsMj8
	GVIiqWnJDG+PCNP2+/Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7zHc-0004N3-Vj; Wed, 11 Sep 2019 09:51:29 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7zB2-0004ag-Aw
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 09:44:42 +0000
Received: by mail-lj1-x244.google.com with SMTP id y5so8522977lji.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 02:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TfO4HK/WGXxXK4b73oCZUUTA55lR9Dm1uUKXZY75m1g=;
 b=FVd794B/Kh/woVfXGPNZCcWRpdvtsO7FEOFvVWWsDu9CYn3LPtCumsPuml8fSoKw+e
 KnKQ1OQBqXFQg6aAxPWZ9HUGhtvWVXE2oMkqx/P0c4YZ5Dr+VfmnJTgVQP/TupXCVAgd
 PSXqaZfRWqeyTLoKB2ClqNXo0wsisp9NfhfloqBp6KpkJstC4JydH0EqgRt0bq0sqtGb
 UtIxjI9Qxd/S9sWFfStjHiOq9R0mDh75ID1sH9qF6T9BmL7AkK+TJsEKb9iUw2WSAj2X
 ky1GT9TVT4NlNp7nUobvtpK89c2PzAxwlBYSGimYJTckgwGmIvYBAvMsoseCkdXWoyUJ
 GvgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TfO4HK/WGXxXK4b73oCZUUTA55lR9Dm1uUKXZY75m1g=;
 b=W+GOBblMyRpsqnkPQSAnJIoKbiT9BNrkAuq8Fa6DL++WILIj/jMT8CXe2QGWZ/wRyC
 xIQXxFoPRCABupOtjqI98y48LDBKE04w/M5lXeoRqynLbZnI505TgwRaxSaWexAacENH
 +CfyqYyZJ7Wy0uasWWPL7VwJsSF/LZP5vLA8eY1Kyi+7JttdLY/ltTmcfPMS1lksrtfB
 o4zH83p3RJyKXIEGaRlsZ+X6OP+0Ypey1/gFzkBalHxHRU2wpcQP2IgN3k8dDe4TW3Cd
 muG/b0i7PWXebaEu0KlaF3oLqeW+9QV8a4c+L/IsVUuMVF1vtV01xJquzq01wjOwOS05
 gztg==
X-Gm-Message-State: APjAAAVZBPt31cQKmJcJIOz3lW1zn2ig8ZbOOv5AKpUU8LDDzyeKuymi
 3KrusBxJLuJvBsyJYAwMP/bxMG8Qi5kIaTPN2et91aJXAthJ5Q==
X-Google-Smtp-Source: APXvYqyeJkEnPdU1nrHqRvNcYPbtI5tOlybw7foaIzX3I439oYmaNxLFkKhZDLyK6wH/rgo0lItiJsUi9kMI/EVGZhQ=
X-Received: by 2002:a2e:8056:: with SMTP id p22mr17545242ljg.69.1568195078811; 
 Wed, 11 Sep 2019 02:44:38 -0700 (PDT)
MIME-Version: 1.0
References: <1568178685-30738-1-git-send-email-rayagonda.kokatanur@broadcom.com>
In-Reply-To: <1568178685-30738-1-git-send-email-rayagonda.kokatanur@broadcom.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 11 Sep 2019 10:44:27 +0100
Message-ID: <CACRpkdYSHnt3WMjpukHKq0kygxZbxHt8tipkQ-UHdXWYr0L5yg@mail.gmail.com>
Subject: Re: [PATCH v1 1/1] pinctrl: iproc: Add 'get_direction' support
To: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_024440_543184_F0FBE210 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 6:16 AM Rayagonda Kokatanur
<rayagonda.kokatanur@broadcom.com> wrote:

> Add 'get_direction' support to the iProc GPIO driver.
>
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>

Patch applied, thanks for doing this!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
