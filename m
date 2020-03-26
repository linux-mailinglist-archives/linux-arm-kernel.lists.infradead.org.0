Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB600193D7F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 12:02:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vWkJv82v7emCCBR9e3apX0jXCI1xwxtnOn2fCOTghxo=; b=cvxJYCsZYeG9Il
	6YSBqm9n2ENPV/9uBJH/5i8IQxqtqAafXH+nx8EA05Bnlv6XfkN3BkHO5n6LQ3zprumMa5bG1JiLe
	GUZldJRgQuXCQfjMs+9wsWzVemiVs9KkpqlF5CiF0vchV7THVe1KllTaHpoJF6gZq22+Ii2Sp8m8e
	cliIqpOj3bfJVnQMglk9GuaWktF2NnHEZyJCMRBvao6dUz8jta4r9NDSMCXFDsYfgce+dma9yQi1K
	dO4jV17AmLxT2Lp7MJ+U6oPLPu5MDl2O+BwKc4I9CWVd+NXo5Fli3vE4IsI4hZmDJXpMJaF11oHoR
	/QTjggKYkV5rLO0TCftw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHQGl-0005sg-FE; Thu, 26 Mar 2020 11:01:51 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHQGb-0005s7-V9
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 11:01:43 +0000
Received: by mail-lf1-x143.google.com with SMTP id q5so4400332lfb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 04:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AdGN3xaLWLh2g9ItHfw0n6XCBLId+VTX6q4Rvqq4Sjk=;
 b=Hno7tLQKINqDFQBKig6K/4mPno/jREl+dokP2yCVBvAEiJHXxSOaziAirLO3YLxDGx
 ZwlByCcWt6aUrqPFwjzYbiq7GeVcUS+Us7HOXnvwSqzIenXVhw8Kef1eZEfJu/WG5IUp
 RO2BgAdyQvvhpoTdTXMmbhQ7DjEuUEifYDigfsRht0Pop91Xk2wmZVU39hD4NQdLs0u0
 cyBjrD6Oj0bhkkUUtKvFuLutMJO7iZm9vHQoiMRq+sMGoD3i4Fl4YfGPaCoNrGoFkUGP
 uHcKj7BniGoR5cg/CwXxR1auAEEiboE3X4/yj6mccmXVYYfd6iXKNKerEzU24JwVUxSc
 1zQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AdGN3xaLWLh2g9ItHfw0n6XCBLId+VTX6q4Rvqq4Sjk=;
 b=dg7faPMVmeKOh5zd04kiQiFi1+bwe/8ym3mvQbKURPZQsH9bQLHqAfEdT67mmLlSbe
 9Bs6jexDTJOf7KkwDIOVe9JPy9j63M4vAIRWeQZyBI/kUv2n6Cu8LHYQdBiMLiAEqsTl
 kL/KUAlgCbbXPndioGPc0VuQQKazX5Ago7NCvOTs0WAzesNLuskVdaGOvTjngJFRC9+p
 c4SJoDdrl9jfajju+AresbcF0etjesxSVh7JRfPTRMC/RDeO958M+wbNsd0b2Io0tUky
 t7s3Thw3RXK3mErNonKKVeZ0bXi7sqYIBaDY9mmXzk9Jd4SSctDmb/XX+dm5M5QzvTS3
 wzuA==
X-Gm-Message-State: ANhLgQ1I6HSk21l4wCprMALi94m8CxwhjsjOYzNlOxMov3NozmN143UN
 iSPpe0WVtozK3GGW2qT3TD3Qn3HDMXjPRrN7TZA/Vw==
X-Google-Smtp-Source: ADFU+vu+++HmXhz0sLdZAQQoGQMXgK6tL/nvZrwEdCr/OwTj8sJydRwxvOW31v4mvR9kJ7wmEE83hCMNyIbdzIClDWk=
X-Received: by 2002:ac2:5f7c:: with SMTP id c28mr5067560lfc.4.1585220499722;
 Thu, 26 Mar 2020 04:01:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200325113407.26996-1-ulf.hansson@linaro.org>
 <20200325113407.26996-2-ulf.hansson@linaro.org>
In-Reply-To: <20200325113407.26996-2-ulf.hansson@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 26 Mar 2020 12:01:28 +0100
Message-ID: <CACRpkdbFQ4kjgxxwrTjXZWAt38AM2kyMbeaCX6wjMgyyRmE55Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] driver core: platform: Initialize dma_parms for
 platform devices
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_040142_013516_1EEA4C22 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, "Rafael J . Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Russell King <linux@armlinux.org.uk>, Haibo Chen <haibo.chen@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 dmaengine <dmaengine@vger.kernel.org>, stable <stable@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>, Ludovic Barre <ludovic.barre@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 12:34 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:

> It's currently the platform driver's responsibility to initialize the
> pointer, dma_parms, for its corresponding struct device. The benefit with
> this approach allows us to avoid the initialization and to not waste memory
> for the struct device_dma_parameters, as this can be decided on a case by
> case basis.
>
> However, it has turned out that this approach is not very practical.  Not
> only does it lead to open coding, but also to real errors. In principle
> callers of dma_set_max_seg_size() doesn't check the error code, but just
> assumes it succeeds.
>
> For these reasons, let's do the initialization from the common platform bus
> at the device registration point. This also follows the way the PCI devices
> are being managed, see pci_device_add().
>
> Suggested-by: Christoph Hellwig <hch@lst.de>
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>

This seems in line with what Christoph said.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

I imagine we can eventually set up more of the DMA config such
as segment size based on config from the device tree, but I'm not
sure about that yet.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
