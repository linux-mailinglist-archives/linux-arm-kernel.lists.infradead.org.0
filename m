Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D49B1D47B0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 20:36:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yy4FPWtpYlXy5evmFLwnFCYDEQd/OuYy/idN0lYx2JY=; b=GxTXgXCIRMXMgG
	hrSjcbUaguQ2icZsiJI33I2PAPCdG4W8NMrdkco8l+jxplwmw8o+ofPIUSvaX7NoqNAweomDwmCQW
	Jq8oIweF9zNSPhsZ2Yq5IBGklZhBnlRMuZw712ZHR0XiyHrwRLbCBdT5jnaTBKKODQSRiJbXS5aMP
	s7XF/GpYAosQZZGi3vtVbaIChSURoTFJtITDsfPC9gz5XpY6MW6ycMfMyIA8uomHO8UX5ofPgnv75
	N2CfgRzg5++yHpqowxd9hyhT1ULq4DH7Gb0VoKpvEqPZkr6bEI+VM/ufuMrH6bdjnkGkic8vRXP3q
	VEBFHss2Z5LunflKChKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIzlk-0006Vh-C9; Fri, 11 Oct 2019 18:36:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIzlW-0006VH-CV
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 18:35:51 +0000
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EE25E21A4A
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 18:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570818950;
 bh=A5YOLiudlL0Gvx464VUE58c30d6rI4J9IqV4RnnkINE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=j2Jx140EfZQIJRX0dYyL3J6GOIkXmJ368acn55TvtSBODydawj8Y0KD0mlX9UzyTK
 7ffpydWRR1A5SxdNtOZTgttoO9TXOQzK8iGZHBDpF+Y9kEwnkG7coNzNpYE99dsd+E
 RIGMEiT/MBcLwi6f/XX4XzYcYyotPgnNrmas27OY=
Received: by mail-qk1-f173.google.com with SMTP id z67so9751550qkb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 11:35:49 -0700 (PDT)
X-Gm-Message-State: APjAAAUOr4PDAsDchzJjWd2CDdVgYeMPvu+trfq1b5coHXwZfkY6CDsy
 CWGpVs+3wRgttstK0A1lecBy/w5oR72/+emQxQ==
X-Google-Smtp-Source: APXvYqwlcinnHLXWLenq8pR6e91BSf9cbUBSFPZzD4ss00JlOJSDW7Rcbsj1Vl/qGAwEzfHWNc9WXzuxsF5qr3W+Uc0=
X-Received: by 2002:a05:620a:136e:: with SMTP id
 d14mr16942465qkl.393.1570818949084; 
 Fri, 11 Oct 2019 11:35:49 -0700 (PDT)
MIME-Version: 1.0
References: <20191002152253.16393-1-benjamin.gaignard@st.com>
In-Reply-To: <20191002152253.16393-1-benjamin.gaignard@st.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 11 Oct 2019 13:35:38 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKcvPNAL69WRgFbbRmLLyVpeCOarcnMY=wJR-hgVD06GA@mail.gmail.com>
Message-ID: <CAL_JsqKcvPNAL69WRgFbbRmLLyVpeCOarcnMY=wJR-hgVD06GA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: timer: Convert stm32 timer bindings to
 json-schema
To: Benjamin Gaignard <benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_113550_445867_CC33F7A5 
X-CRM114-Status: GOOD (  11.33  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 2, 2019 at 10:23 AM Benjamin Gaignard
<benjamin.gaignard@st.com> wrote:
>
> Convert the STM32 timer binding to DT schema format using json-schema
>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  .../devicetree/bindings/timer/st,stm32-timer.txt   | 22 -----------
>  .../devicetree/bindings/timer/st,stm32-timer.yaml  | 46 ++++++++++++++++++++++
>  2 files changed, 46 insertions(+), 22 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/timer/st,stm32-timer.txt
>  create mode 100644 Documentation/devicetree/bindings/timer/st,stm32-timer.yaml

Same comments on other conversions apply here.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
