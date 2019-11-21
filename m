Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE941052E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 14:26:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fMvHj8In4fiZS5bwOafBISw/vbbCtSV1NTNS35pBqgE=; b=UpAjyh5jQdfiVp
	j4ddcaQ74qFVDYIyspWaYyBZq0yvQ9giViz/EP2soD//2lGl5a+cKPue6LQk7VGHaJcgGA1P3o9Ip
	Ezw2Yg9bP3t3DqG98xsTrRaBJ7iaWs/EqGiAtCp+R4rIwEJFhooFYU+aXNBSds61NRdvz4Dl00kfh
	nMdbogTZgk+v+5Ti7EYxS2Ku6lL7mCU+xh42zqrv1KrvphkZhG+d24G8BZpMoWvD6zdUEs8MdNZYC
	hyuv0fFPFHANxhJdnp4wCyKacwsZpej2ARSiAe+uLsgOpDro0pD9uO3yZcko7eDtWsCgMrDAfHb4B
	3ZQXopCJyajD1ywQ5L8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXmTr-0007X7-CP; Thu, 21 Nov 2019 13:26:43 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXmTU-0007LR-Ty
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 13:26:22 +0000
Received: by mail-lj1-x244.google.com with SMTP id g3so3169865ljl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 05:26:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xJRNK0Qg4edNo891F12WcaxFjq+8J+URcTnOpfArGZA=;
 b=mI1d4Uv5D/Bus8GV84GRYJ2Ncp3cqsWvdXlM91npLZDdJiOCOfyq9LDHai55KaNeVu
 gYEEej9KWdg8xr6DeyhLdh1n6CHugCzkWjzX2NNNKF7VFunY9zf+LRzqaYQLRcG/FI4k
 A21SMEQJLpyfTw0biysL+Wvvi0ffrMXablxTW/Po8OeSAsMrADDNfHtq24xwxr5UPiT6
 UWYgO9L/ji4dNp+OQBpraE62/xsw/ym86DzCGRIvinmM1AVOnOTd50zlNQhsB9UBvHML
 aRf4/MdbkkvuX2VHuy7gcHRUtWsIRBV8NKyb4DP4WmKmKNEFLjIk9yZeZvHhoOn9d6Cn
 ADDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xJRNK0Qg4edNo891F12WcaxFjq+8J+URcTnOpfArGZA=;
 b=qQ5joAVuZ35UqxYnddPgDchh8PQyS5SCLHJQ3K9xurftZXBePKEsZoVttBOYGKan76
 m1pMw3uCdzEjosbZnEc2t1DUzmt28e2AvcHRW0NRkWVkc14mD8xBhEQqXG5BBKf28z19
 4Vjq6aLFRFahZcdxhKdjkdYHpGAEML+L9X8HBKwIhFVGGW6q0lFPgz7bf1nUTf+JGWPg
 SQQODc6ZLAj+tHbaAHCVuP5ulzPsxW2xyTF0Bfc/oM5KzkO/zvWud66Js3OAor3hZIeD
 elu7OHVWyJRTvc+PQ478oc0LFNEHjP4I6Uq9X1aXVRsorV6UcxHsBrcQbm0gS9zGQILj
 LuPw==
X-Gm-Message-State: APjAAAWprPD3ZJ+St+RZB0SDrj3EnwK9l9fNMdd5IB/1L0DNF5Qfrpt4
 0HEQEtft2ZGDMQgb+r7YC7r16ZEsbtd1qxY0KYhl9w==
X-Google-Smtp-Source: APXvYqyGELuxKmjPuMZto5yMs7olv3FH+bNGkzNsg2SSLxSSkTaD5XBMqmcP5UzRxEveFBkgx0i7iCQUEJV15L3MB30=
X-Received: by 2002:a2e:8597:: with SMTP id b23mr7487009lji.218.1574342777013; 
 Thu, 21 Nov 2019 05:26:17 -0800 (PST)
MIME-Version: 1.0
References: <20191121100726.17725-1-ulf.hansson@linaro.org>
In-Reply-To: <20191121100726.17725-1-ulf.hansson@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 21 Nov 2019 14:26:04 +0100
Message-ID: <CACRpkdZyP+DdZri1D7WADK=f5Lt6i-xH5FLPuuH8=6hhj2tV8A@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: Update section for Ux500 clock drivers
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_052621_092308_38306B1C 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 11:07 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:

> There's no longer any need host a tree solely to serve changes for the
> Ux500 clock driver, thus drop this from the corresponding section and use
> the common clk tree instead.
>
> Moreover, let's also add the generic linux-clk mailing list and rename the
> section header.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
