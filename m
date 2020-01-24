Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4666B1485DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 14:20:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3o8LVvGywNZlFJahw0ccJ4b+YNUCWiSZkQIy6UnNoGE=; b=qq73s8GZsmmMTH
	8fcndUJRImWyY3qdRbhcD6kEjm8BSiNFrHKgou3ZNxFncF3VNbaGc8UzZNzQrzKeCQ260NY9xiJx4
	r5sm1jp8Bj4NDtZVdPT3eJb4JQiRj7c7T9S9LvqJp3O/X6Pqr3fqE3dxRTjaGzXeHfvZj28Q3WZtB
	m20tovH+UbBbmGw+W3QNbtEqRHm6RT90mrWktV9Y00yH08/EYiQsT8rnfaU1m0RF/gBxAh12z5FKd
	LYnvrK13f0IHvZX2u6kRUBbmwyuzw/ZY5vuSvSOOoogMXo2iVHjdoiSP3DUJn3KEd1kSq+HQg/udG
	hXmH4ynPL5XUuXjvnLSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuyt6-00039M-I3; Fri, 24 Jan 2020 13:20:40 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuysk-00032Q-6A
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 13:20:19 +0000
Received: by mail-vs1-xe43.google.com with SMTP id g15so1192256vsf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Jan 2020 05:20:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t65RoraJ97XSNifH3nJWhcpZY1lN6qjNaU0+rNtB6VA=;
 b=gins8z7JzejJQal9gDEbPpdg5XvecgftPkBOzZDn61Udldh3usgTviD1RSeTs/khVg
 P6QL2wdgjepWpZPu2K07a0Gi2j30WxCH8luSM9XeXKn2a0tOlWNsCiBvesNyFuoRTa2l
 l+vIULJyGGwlTBlM48w/mQcMBP9WP2/M/8BvfKaietFwyHD4quO4EfSzZuZDebmtJUKO
 N78p+V3i2PTQYXQaBm9DxrHQdcBOrL5nyx5ZvfkLk7TND7MMNM/kXvpRBQCuqtQn+Mxh
 S+P6c2mXdalbk8iIrd+uIIUDrn+lJsAfuy8AVqcNxmXZb29qZ7+MytSuK9cABHt20/c6
 vbnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t65RoraJ97XSNifH3nJWhcpZY1lN6qjNaU0+rNtB6VA=;
 b=mfpVdzYR1UhymOT2jWSbY74swOw8BxYTGNFNEVlAezx7PcmY7JwD3yG6hU3tFlSq9A
 ciED276Ppk6NGRfeGiI1rTSsoPVFBWr/mEl38Ht2qNWkOKWFwgBoowFR4QNY30Ge4VPs
 77WPslFb4AFmtlnWllv2+3ffCD1LdMO5K9//5O9T/94xhgcEgP3AGsChhuKXohQNpnM5
 PYOA2uaJQR38mdKb/yFosKmRvnP1F1k7rdUDAcH1q9+t0BZ1X91kouPRVRjfFOWA0d+n
 mn//mDaipm9T1IzXHXUU7YvILujK4N4Kp20MPbTlxtdIeX3CYG+braLc4OC5MVMl0K+K
 TwVg==
X-Gm-Message-State: APjAAAUFMnyfcOZ6VGUGVa/cBneyI5BXQBUIcSa5B78VJLXApdc0crVb
 zi1yuFRlVk78KOTOyNttANmk/ZyYHfQ4o4Rirb9oYA==
X-Google-Smtp-Source: APXvYqwPiZbZvXR+rHIvNUYilWv/U2EOOXMt8apmM26fWaq/fAZpxuaFlhAeSj98ruAwNOVdB6HsKU61mDEy2b2ThPA=
X-Received: by 2002:a67:cc3:: with SMTP id 186mr2203033vsm.200.1579872016966; 
 Fri, 24 Jan 2020 05:20:16 -0800 (PST)
MIME-Version: 1.0
References: <20200110134823.14882-1-ludovic.barre@st.com>
 <6d859def-351e-abd7-0d5f-962ad935dff2@st.com>
In-Reply-To: <6d859def-351e-abd7-0d5f-962ad935dff2@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 24 Jan 2020 14:19:40 +0100
Message-ID: <CAPDyKFo+4qTZbE=4Zgj3VN9BPYUHGskPSnYEJRo1TpARzg5zJg@mail.gmail.com>
Subject: Re: [PATCH 0/9] mmc: mmci: sdmmc: add sdr104 support
To: Ludovic BARRE <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_052018_285682_13D37451 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 24 Jan 2020 at 13:55, Ludovic BARRE <ludovic.barre@st.com> wrote:
>
> hi Ulf
>
> Just a "gentleman ping" on this series
> https://lkml.org/lkml/2020/1/10/392

I was just reviewing :-) Thanks for pinging!

One overall comment is that I think you can try to work a bit on the
changelogs. In some cases you described what the patch does, which is
good, but it may lack information about *why* the change is wanted.

Overall, the series looks nice.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
