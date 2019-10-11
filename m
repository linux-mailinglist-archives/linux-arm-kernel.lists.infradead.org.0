Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B6FD47A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 20:35:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6LQnBSNDnTAv/pZw6t7KItEHnAB3U3JQYb/VjqhrM2E=; b=sJSDn3Z5e2CbhJ
	ByWUzQOfdkqVxvzdk5BNbK5R/GnMvRI67/Ng6RS1UVoz6q6wBELU/+1Nd8zngNoJoywU7aj9jMXTR
	VyMXCHTAbABhyJAwQvUnNYp1g1cLjg45q2kmDh2QpHHP2cFWyvdMYWFjz8NyDzK0ODH66J9d5TbIY
	F1jsKPhoUYb1DnWksM76U10Rw8c2KEcSnWnI8eoWiy1mV15h+NLusWfHT5lQ9IqNe3wVVowwu+arV
	JE2yG0VVuZLqqZ24i6g596UmAgo8BMGo7544cr+zeVGFK+8DdYEjxqeXif6CNdSzSYurY/yHb7zyu
	bzTcy95hwj6alj5qISYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIzkx-0006FF-CO; Fri, 11 Oct 2019 18:35:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIzkp-0005zx-9z
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 18:35:08 +0000
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BF94E21A4A
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 18:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570818906;
 bh=VrIjCjeCJtSwwOFvAswWO8zYeoA6k350yygwzNFOqds=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Uf+6ZDO1znTClCJfgItB3zWCf/PrHoKnUZNzgxU7bq9CV74H3xLyxry5prNwCD90E
 cHV2PbrAT47N65ENH7+SeQzgduJrVnf8TYw0r1URPqCvvRBGijV2L/z0agwDzqlCmM
 tK4yIyp6asvn0ngHMlsN083OpACx/m0LgG52TtvU=
Received: by mail-qt1-f180.google.com with SMTP id 3so15294932qta.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 11:35:06 -0700 (PDT)
X-Gm-Message-State: APjAAAVpZOcRGkIuwbfLVp1aqiHNqrEftWWBM3PzKyZjTEgHIbPR16pU
 CacuU8hBQEqFtN2+DH+Uxpm9aOJ2w00yYlur5w==
X-Google-Smtp-Source: APXvYqxXNZXqhjX1vv0yrBQ2zPizCbCr6wZ3R6Kbqa0L34qgtUc+z3yI5+jQD/V1ZY3gsinMlNgwXR23TqSfelUsfUs=
X-Received: by 2002:ac8:293b:: with SMTP id y56mr18601675qty.224.1570818905926; 
 Fri, 11 Oct 2019 11:35:05 -0700 (PDT)
MIME-Version: 1.0
References: <20191011131018.24035-1-benjamin.gaignard@st.com>
In-Reply-To: <20191011131018.24035-1-benjamin.gaignard@st.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 11 Oct 2019 13:34:54 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKboUPGFcz5SPA46WDxTa7aYSF7FN8LHhi4SFOz1PvrfQ@mail.gmail.com>
Message-ID: <CAL_JsqKboUPGFcz5SPA46WDxTa7aYSF7FN8LHhi4SFOz1PvrfQ@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: hwlock: Convert stm32 hwspinlock bindings
 to json-schema
To: Benjamin Gaignard <benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_113507_382228_CEED311D 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Mark Rutland <mark.rutland@arm.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 "open list:REMOTE PROCESSOR \(REMOTEPROC\) SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 8:10 AM Benjamin Gaignard
<benjamin.gaignard@st.com> wrote:
>
> Convert the STM32 hwspinlock binding to DT schema format using json-schema
>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
> change in v2:
> - use BSD-2-Clause license

I asked for dual license: (GPL-2.0-only OR BSD-2-Clause)

> - use const for #hwlock-cells
> - add additionalProperties: false
>
>  .../bindings/hwlock/st,stm32-hwspinlock.txt        | 23 ----------
>  .../bindings/hwlock/st,stm32-hwspinlock.yaml       | 50 ++++++++++++++++++++++
>  2 files changed, 50 insertions(+), 23 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/hwlock/st,stm32-hwspinlock.txt
>  create mode 100644 Documentation/devicetree/bindings/hwlock/st,stm32-hwspinlock.yaml

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
