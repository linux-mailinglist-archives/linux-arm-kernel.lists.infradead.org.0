Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B1017F210
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 09:38:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D6F2BL5rHAV/JIBS2s3OTdK6+y4eFmk9vwX9e2rjTts=; b=A9w2B+dGhiDXZh
	AqMzm5i+L2dK9PZ/Dy2oNO67desmCVfpLYM44Pmp44rQ/W0mxxNxJeL9EoKerYBpqtgCqfUgVr/AX
	nD6E01bVjkLCV5A8+Y3RzrlvB0GX8oLg4AcTN+rVuTuXgL6jLewWKJkgjKKXwA8W9UTn2D6025Xwq
	rvFqhB9gxiXg1hsglh26BkN5hQot2pkI/l3GbPbIwyRzW6+CJiuiIjhIjJP5yB72icNsq+F13lQI0
	JvqULDgFLipkLJcmQpOhsX9gw/2juP4C82PFu/fB7YJ5lYq7n4ZPP7dsLwOou/7ZuuUw0TdVgvPVY
	RTsqrc2dESOnuRbi/ueA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBaOz-0007LP-TJ; Tue, 10 Mar 2020 08:38:13 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBaOp-0007KR-UG
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 08:38:05 +0000
Received: by mail-oi1-f193.google.com with SMTP id g6so13058052oiy.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 01:38:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Edv5FGx6HfQViwOHvX4++3OuZDAlkVwMs+TRV+ocKyE=;
 b=rJXtlWdGopNDxTvQJ3Pirlphi5dxWxF6EcILbUwtvURa9bGb+Ho6RNm4UsgelgQyEp
 HkcD3vkJw26Jh4xPUrgVE2hIEq/CnXjOGSxhE0zYcXZn3MAg3zWj83Vy6fo1+HxTqvSv
 imXzqhnzm3g7OPYOKb4/ujjeZJxD+lSlfUCiqUL4R8jF3a2U+jwVdfpeaxKp+ZL41Mb1
 t38Grzkefw6vHbHQJfSw8DkluQArLm5EO+otF/OWMlRnN9ygFRVDb//NIUS90W3ifsTk
 wqNiFHmHnYmgA9TZva0ApVGWVrTUMxcygh6db1ZBS2Oz7w6eEJmstZJMQGLeKK7a0SuT
 o2gA==
X-Gm-Message-State: ANhLgQ3v8uVw5N3e9hqIoIdyWpcioTYWCMP6n5LSGc/z812ioeuGDh3J
 qSPuaha+RfkHdHHujq2p6mtQ2qtWoy5N/Y2uYTw=
X-Google-Smtp-Source: ADFU+vtxKj1FXGdXpMM5q7fMJsZPCOH9fUrMlzex1LWI8M8+68iu8RsU/KevMNJjhu1oBsetZIr4gh2j9nSlvsgxdZY=
X-Received: by 2002:aca:5155:: with SMTP id f82mr350047oib.103.1583829480926; 
 Tue, 10 Mar 2020 01:38:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200303203559.23995-1-ulf.hansson@linaro.org>
 <CAJZ5v0j86N5WgEJhCD6a7K2NG7NoK-wqG5h-vbc-Z7qH4fkySQ@mail.gmail.com>
 <CAPDyKFo3o6k8kiXTG337_4OkcunQn9T1FgPM-PngO3t9Sg9eBw@mail.gmail.com>
In-Reply-To: <CAPDyKFo3o6k8kiXTG337_4OkcunQn9T1FgPM-PngO3t9Sg9eBw@mail.gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 10 Mar 2020 09:37:50 +0100
Message-ID: <CAJZ5v0gjhTCA=puG515Bf-it9xt-zgTNyJUmiDK+Oip_ucMThQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] cpuidle: psci: Some fixes when using the
 hierarchical layout
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_013803_977635_2B2E753B 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rjwysocki[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 9, 2020 at 8:21 AM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Tue, 3 Mar 2020 at 23:28, Rafael J. Wysocki <rafael@kernel.org> wrote:
> >
> > On Tue, Mar 3, 2020 at 9:36 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> > >
> > > Changes in v2:
> > >         - Small changes to patch 3 and 4, see their changelogs.
> > >
> > > While collaborating with Benjamin Gaignard to deploy the hierarchical layout
> > > for an ST SoC, it has turned that I have clearly missed to test a couple of
> > > corner cases in recently added support to the cpuidle-psci driver.
> > >
> > > This series are fixing the issues we have found.
> >
> > I can apply the whole series, but I'd need an ACK from the PSCI driver
> > maintainers for that.
>
> Patch 1 and patch 3 is ready to go. Although, patch 3 don't need the
> fixes tag and can be queued for v5.17 instead.
>
> Do you want me to resend or can you pick them from the series?

Yes, please!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
