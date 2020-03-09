Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E9817DC70
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 10:30:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sztod1g+Z3Xmts5ScEjzW+5Ja7haYtrWSHIvBEfs08E=; b=UVULo/TkiOF1jr
	zPGjxXOsBQJ8KfIyM9dYWzIxxR7R5oMDl4LnRhGMU7O73GtyhlmfILyCNLlb2+5MJPV42q3VZyo9d
	70P9NpQjS8ZLk2ydGryvC2PV0I+BKIkzUwfTisIeJZIAvLfF50IQnZOHtAvkCPXUlwhVNH7EgCdJi
	6j6V09Ts2PcK+Ve+7/kNITV0Svht9BvA2213e/YIQXYFD1CLFwn7bKYhXGmvd4Tj5Cle1cmODqand
	1LJgPNnq15AEyCpgEl9O0Euo7en6cM3KuXw0mZEGkcUbelHjaN5hVzgDFJIyKSpZzeL5f9bMWkXwv
	4PjH0nmAGu+Ozbx/0fdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBEjz-0001XH-A0; Mon, 09 Mar 2020 09:30:27 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBEjs-0001Wo-SG
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 09:30:22 +0000
Received: by mail-lf1-x143.google.com with SMTP id q10so6321096lfo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 02:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5BPdUCBHlhfxC1rf07ErhiV9Y3RjZ/uMH/FRYyL0Tdo=;
 b=NT6VnCACPTlfQ6tWkirEMRPIFXPc5uK7jgSYi0wnLddxfiCCEj05iElpYaDaH3cZ75
 LqklW21zdCUaNQtn3QFqKyHl0yqr3btYYcm5H6Ka7nVRYJi04kLWL8ehoZFX1T24ci5g
 68/yypQ2HROcI28ReRXFtzEcA7Ukj6JPraEAdjarZILSamvIOefZJJWw3gLWYzIwGyGC
 3rpk0OwRTmQqrGN3iAIz8L9gh1kwpAMa+0uGcPJsfKdGw3qvXLH5MFsbn2Q6I5rsamHy
 i56/xRCkG/2LfWs+C5mD5MK4iVGp5H+Tq4JO1XVq4f0TI9JDDCKnLuIw71tA9Kuzi0/w
 GcEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5BPdUCBHlhfxC1rf07ErhiV9Y3RjZ/uMH/FRYyL0Tdo=;
 b=G1Yh0PYg2hNwzwYKqfqeonLOMgYoXnf+J344Ht3CzHreXQ7zRlGU/7Pv32jww+FSRS
 Z0KbqcXaWiccfNbdmCRXfhNMPq//nT+A8vA3T1UaBdDC6AtLf+oBlv2jlN3CiE/CCsjZ
 RoksRQIQ/1dcSHcAWTO//AEvDg8cSuWTlW4c7s6t9JdMWOYMQ+/iM5FkaIqfQOIA4pLy
 2otugvwe4S4sBOCJajhmolhAd/LboPBcjBQgLQ82DpzsSWrwJhqcrKOkDZlzA35W/2/9
 35eRtMe3fyx6FDe+mdXvuzMWVVzm5WHUYVWC+IREleaeEnqL/tojDGMKfVWx3pNdQlJ7
 8iGg==
X-Gm-Message-State: ANhLgQ1Ex5zZiYsg9DBqY05/xTm4FHGDtJd19TMm25Cv55LMJw7FC8cZ
 gept/DrOW6HNrNjoaLiThl23QbOThB4ZQDWBOc4UKQ==
X-Google-Smtp-Source: ADFU+vvOV5BngHUN/iOXkIp0aCZj3DO7RIX6/Jfe8ek7Mb4Q3qAwKJPpaPcDy0NqYQc1dT6I+NcBqHSrx9nC2FYST9M=
X-Received: by 2002:ac2:5e6d:: with SMTP id a13mr9224214lfr.89.1583746219481; 
 Mon, 09 Mar 2020 02:30:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200306005809.38530-1-alexandre.belloni@bootlin.com>
 <20200306005809.38530-2-alexandre.belloni@bootlin.com>
In-Reply-To: <20200306005809.38530-2-alexandre.belloni@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 9 Mar 2020 10:30:08 +0100
Message-ID: <CACRpkdbs_wtyU5wjqFcdpYanA9ZMRczysw4kwkA7y+qeB0pHEw@mail.gmail.com>
Subject: Re: [PATCH 2/3] rtc: pl031: set range
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_023020_918521_943B8886 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 6, 2020 at 1:58 AM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:

> The PL031 and ST v1 RTC are 32bit seconds counters. STv2 is a BCD RTC
> apparently going from 0000 to 9999, hopefully handling the leap days
> properly until then.
>
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
