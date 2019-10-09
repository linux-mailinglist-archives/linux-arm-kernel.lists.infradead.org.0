Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4763FD0903
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:03:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NjRTt9NfXI7RJCwi/jwKvErFIeEG+bg5IrqPYMWsNKE=; b=VhIdkxL8dSQ3UC
	cQA8lhM7lFApE7zDgc8SSNjK/+tHn2yBWrOXsvyfjAdIXrmxyZJq6fJBgRndvFGqMq4CsxtEuJCOC
	4PQwBNFwun8kolMNW+qbPEAX0MURdsioruXfwKbjxcpIUiwtjQ08uaYlZNflZVRC3H+MJH2hkVba5
	lvLvvaNdvdYt6UGAWjBMOCX55cwGBKvzmHAM3otpXvbIdycK/mwVCGGPpYHvocmImu6eFmoBzaqP/
	IeYdrjPRtsPpPKhd0WFYB+HJEdMqcyIDbV5tOtrIEmsGRqa+GnNQzzskh1y5j+wfPOcHS6ScV3gT5
	qr5OehjFok/Qp4Swg9Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI6w4-0003JB-Q5; Wed, 09 Oct 2019 08:03:04 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6vw-0003Ig-S5
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:02:58 +0000
Received: by mail-lj1-x243.google.com with SMTP id q64so1452639ljb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 01:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qIcuMqyribGNxdL5/KfaR/0W6xo7KhmFZDC62GSR9uw=;
 b=rwJgS7yXEf0+np6sEo73SubMwqxNdp4RcAX+jWJULZ3fSRrC1cOhANBPgDq/MHmTqc
 JFh13IiBSmC44y2+YQGvoQo1N9WvINr38BqrID75SDFU4ztKk4Cr6igNdJS4kJzI5+49
 pxW7/hEyoeoZF8AShMROjgLKBRoOpICQPs9jrfNOYkESk1LtzP17RhO8jHt8ZVd4xEuo
 CN60C2uE3+ThAkaX6W99cbN5hve3MQsxbrAf+8O43IfZNSz/tvXBanSJOxIGHnirbV4q
 8xSs0S8jpBpllANxVKbndvxTaBYdkIW0/xyno71RKh1Fo+8y10HchWjvn3s477Q/XYAE
 lXCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qIcuMqyribGNxdL5/KfaR/0W6xo7KhmFZDC62GSR9uw=;
 b=tolPG8IdZTsghsMYBhHbpxi1aQR2edW/+mNPhtrUAZO+R+t4e2wzu7jiJPOlFVMojD
 LayxqtVkpg+Uqucw54ucUJlYuXzjHF/BXN0p5i3tN3f81XVtU3fzcEBOg4nj5pJOnuZg
 7QbH/D1o6v+bMXd2vQCBufzQsTHPAu06+KW8r+UvCak1JS0UXQwsVB8ldtGtlEBbJ2ur
 CVQoBK1TDAP4E5FJ7Wr7WnJNAY5PFIBtG0Uk9bHNBGVlVq7NyDr4CHM8JUmGmlSUKH4P
 6l2NeGLpKdNjVtmdspS3ZJnBvpfjvvxmbb/5U7UyO6aVgR1iBpORNYGxiWrLwxGQ0n3F
 41XQ==
X-Gm-Message-State: APjAAAVXBF1HF9hANUnEOS/DvcrVTcuPwYR62mIhQMsIj3T7fJmLI0CB
 VwGytdQSuUCgSREk3NvIzxoy2o3hvTJuIMumUvAbZA==
X-Google-Smtp-Source: APXvYqzkxO27nVgr+ezF6wWyRFhgeKlah+nA5MKVsuIlBHud+OOcCa69nMnvbinUrxjWWXwcTj43OmtOXQIUqoB6N90=
X-Received: by 2002:a2e:a415:: with SMTP id p21mr1418505ljn.59.1570608175035; 
 Wed, 09 Oct 2019 01:02:55 -0700 (PDT)
MIME-Version: 1.0
References: <20191001155154.99710-1-alpawi@amazon.com>
In-Reply-To: <20191001155154.99710-1-alpawi@amazon.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 9 Oct 2019 10:02:43 +0200
Message-ID: <CACRpkdah=ofrdEeYUbp6ea+2S+EuN_XhUCXpCbDgm7p5R-Z6_g@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: armada-37xx: swap polarity on LED group
To: Patrick Williams <alpawi@amazon.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_010256_967921_DDE165A7 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 stable <stable@vger.kernel.org>, Patrick Williams <patrick@stwcx.xyz>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 1, 2019 at 5:52 PM Patrick Williams <alpawi@amazon.com> wrote:

> The configuration registers for the LED group have inverted
> polarity, which puts the GPIO into open-drain state when used in
> GPIO mode.  Switch to '0' for GPIO and '1' for LED modes.
>
> Fixes: 87466ccd9401 ("pinctrl: armada-37xx: Add pin controller support for Armada 37xx")
> Signed-off-by: Patrick Williams <alpawi@amazon.com>
> Cc: <stable@vger.kernel.org>

Patch applied for fixes.

Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
