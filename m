Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFB4E8A95
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 15:17:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Vw8b6YSBIeOzcBX7GK85cwk0jhd5KgM0lLKzbnPr9w=; b=JcRYOQDkXvlrOZ
	JmJc0qG4m+Kk56ljUIXnEYUU0qn+K+pj3NJsak3APtk/WwRANEr+yC6mES2Wqc5k9dcv/S1TeHxmU
	4Ejy0qGmYn8m3xXjdR6U0ciuz8WopZAEw3HeenjevA0zMGTsPi6Xg5vjfVY3BUAnggCH2Py/mKoAz
	sC54jbbQQYROLXUc5URcK/kWF6FhukNMRWYvJ/PFxkgmB4DAhtPW0RUzcqv/JeEAV5hBvulZ7Z6sP
	qKU9STlvdvgNg2hn4vLV79mSvuunXgNi41Bhw/9nwQEViHMwppev72lFm7EPDLWDFwSwsY0aoW9dY
	2TwQQs4flwmNG8Ustyxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPSJa-0004zL-Ry; Tue, 29 Oct 2019 14:17:43 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPSHg-0002vs-8R
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 14:15:46 +0000
Received: by mail-vs1-xe41.google.com with SMTP id y129so8825922vsc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 07:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2CJkMB8W25QC+LmwHZCR/dC2OeYvdCpp2yKraECtwkc=;
 b=erCRbeIBHUu53eIreClKHV+uY6SMssROpbDKJZMSC3l+mDep04YpyeFnPKet5PX5N1
 K6d9GL7q+TBbHhpf38xASFO/TXfXIgOnQd+2jwtbABwkUzNKRv4crlJCQ5sm33YkfEj4
 u0npQzAAraEWJu+naiJKHKuW/DZPeUOAf7F1bBLeNGslfkb7ZIPfYWSV9H/PfDxih3hV
 coNmtYtFiskJu7ap8vyMmzTx37J9AxaFbD9LknHJc/hx3PVruIT1Bbo9+aHjnSy/QjoV
 6LB1xAnri/kSOeQaJ0PsMW1btfvx/BA9yOxpu4tBlBCWlPodHSRXiAFe8R7+Kv+9rPOU
 vfBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2CJkMB8W25QC+LmwHZCR/dC2OeYvdCpp2yKraECtwkc=;
 b=rQ4chtpV+hMuMrlpHCeOfMRiuE3GMLfcU30jyYAGvjGsVtQ2GPeXuf1VfyN5pEgeWl
 3Cmtyi2obzOeqH2MF+RDunYW9Fyju8YQlOOsgLFcGPqF7FzfKJVH7rWkHAHSsHSFWeu/
 6FtyxOzohBlDNQb1NWGX8SKzQrvfSa/BvAfJc30qTQpKJF8/ufJ1w1UQjqxQMdRYRcZk
 TKigZg+kL+/aFqUD6zg3luqtH5GHFLCkBDwrRhAP04GY/5OwKFsMPvewQBrHnpwsPZnx
 k9bjXnOzMdD6OeRfWD5o6sRvEDbGxf9hKaxJ0+MO2uR9666A7bmNgEZT2Y/17DXvLeXR
 Hqcg==
X-Gm-Message-State: APjAAAXXw9biAy89suJV671NN+qHY1SxPQcXM06vlBlsu2oHG8iSx+L9
 SQ5lMovQGnhGezwxvaJE3NM+P8aNihPizoyAEa23UA==
X-Google-Smtp-Source: APXvYqzrRPTOdVe3rVj/q8mFjvCWiOOTxiTZFSQn4yLUcuktimo2dgWY3hYMbxvwByEex6FdTHrCbR8bcgRkCp0CTm8=
X-Received: by 2002:a67:fb5a:: with SMTP id e26mr1980049vsr.200.1572358542448; 
 Tue, 29 Oct 2019 07:15:42 -0700 (PDT)
MIME-Version: 1.0
References: <20191021064413.19840-1-manivannan.sadhasivam@linaro.org>
 <20191021064413.19840-5-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20191021064413.19840-5-manivannan.sadhasivam@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 29 Oct 2019 15:15:31 +0100
Message-ID: <CACRpkdaZFr+DAthpoEeJgMeqhQfMbDNcd9dVQOEhqfqP6MmP=Q@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] MAINTAINERS: Add entry for RDA Micro GPIO driver
 and binding
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_071544_682292_C8AA5DD8 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-unisoc@lists.infradead.org, Orson Zhai <orsonzhai@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 8:44 AM Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:

> Add MAINTAINERS entry for RDA Micro GPIO driver and devicetree binding.
>
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Patch applied!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
