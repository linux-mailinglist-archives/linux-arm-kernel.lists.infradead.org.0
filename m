Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF5B12641C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 14:58:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ai02FmQrX9mwXQVWB8tqybkpiuqWIJhNgryoiTi9H2w=; b=HndifQTttdFF2t
	0idtdCSmNZzTloYgtvzLThn4B6AFZ93FJkEYYCZAHX6brtDGwDpEtt8OhaVeHzA8YkTKYqDiJG5xI
	BoFHtHURyx9Hu6hmoT5KOUfqzwrkKAQlbvkjs9mDubF6bM/S2baeU8ySc01WVrg6oi46/hC3mwr+q
	uHkOUSG4Pi9DjXp4znvh8B5E3QHapobjbKzTXjDR4G314wg7MwPSxVqRdOs7kslPv6cGVlkMNJ6fG
	XlpdXjU1FWGt4VJ5aTGZsVXrwFe4pgh9XrrGneh5PhmK/TINaTLaIhl6r3taXy1PadfObQME9ap4J
	pGO8n3QiESCxyE2EW4SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihwKI-0007Qc-39; Thu, 19 Dec 2019 13:58:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihwK6-0007PS-GU
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 13:58:40 +0000
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DBA41218AC
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576763914;
 bh=JOfDuzbX5KhFQruw5/hk7NXJKA6KWbQ5U0uen+8uMe8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=W/fJRZXBUvYkHq3JlwObr/7TxhyVP73UtkCQDHeP+pZ0z2sFRgmyKrlQRpaf9uD8O
 jR8ZeleXC8Rgbf8v2xJT4CPTvh/cUiNjKj1UhTWbOHHGBu4aEJQwJF8vImJN1phNY6
 exOXosUCscOy4yKa7VEWdiEgSdYqzmkhIc/Z2TIc=
Received: by mail-qk1-f177.google.com with SMTP id c17so4666742qkg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 05:58:33 -0800 (PST)
X-Gm-Message-State: APjAAAUiXIDdCXhSCmiYevnbTHwafLstKzs7LUTt7baZvx2PT1EdWbnF
 WrrorjrXPXj4ZVkp1Df+4OJ0YK1MAoTPDq1P8A==
X-Google-Smtp-Source: APXvYqxIEdSdLGQ1r7BdWufTzQ/ecvo0rjriE1A6fphicM+PwzjpRWbhhJbCCHPqP1QOATmIWvV31zWPninmnAf8LbY=
X-Received: by 2002:a37:a70b:: with SMTP id q11mr8042276qke.393.1576763912999; 
 Thu, 19 Dec 2019 05:58:32 -0800 (PST)
MIME-Version: 1.0
References: <cover.1575529553.git.saiprakash.ranjan@codeaurora.org>
 <0101016ed57a3259-eee09e9e-e99a-40f1-ab1c-63e58a42615c-000000@us-west-2.amazonses.com>
 <20191218233714.GA30302@bogus>
 <7469b239edd4beed3e8fefdf02f10ada@codeaurora.org>
In-Reply-To: <7469b239edd4beed3e8fefdf02f10ada@codeaurora.org>
From: Rob Herring <robh@kernel.org>
Date: Thu, 19 Dec 2019 07:58:21 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL-uBGy5ekHUZAJB4L1QYoCpnOw-4QPpZraXnsZ49wZ6w@mail.gmail.com>
Message-ID: <CAL_JsqL-uBGy5ekHUZAJB4L1QYoCpnOw-4QPpZraXnsZ49wZ6w@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: edac: Add DT bindings for Kryo EDAC
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_055838_589198_EF98C49A 
X-CRM114-Status: GOOD (  19.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Tony Luck <tony.luck@intel.com>, Prasad Sodagudi <psodagud@codeaurora.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Trilok Soni <tsoni@codeaurora.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Evan Green <evgreen@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Robert Richter <rrichter@marvell.com>, Andy Gross <agross@kernel.org>,
 Borislav Petkov <bp@alien8.de>, James Morse <james.morse@arm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-edac <linux-edac@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 12:50 AM Sai Prakash Ranjan
<saiprakash.ranjan@codeaurora.org> wrote:
>
> Hi Rob,
>
> On 2019-12-19 05:07, Rob Herring wrote:
> > On Thu, Dec 05, 2019 at 09:53:05AM +0000, Sai Prakash Ranjan wrote:
> >> This adds DT bindings for Kryo EDAC implemented with RAS
> >> extensions on KRYO{3,4}XX CPU cores for reporting of cache
> >> errors.
> >>
> >> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> >> ---
> >>  .../bindings/edac/qcom-kryo-edac.yaml         | 67
> >> +++++++++++++++++++
> >>  1 file changed, 67 insertions(+)
> >>  create mode 100644
> >> Documentation/devicetree/bindings/edac/qcom-kryo-edac.yaml
> >>
> >> diff --git
> >> a/Documentation/devicetree/bindings/edac/qcom-kryo-edac.yaml
> >> b/Documentation/devicetree/bindings/edac/qcom-kryo-edac.yaml
> >> new file mode 100644
> >> index 000000000000..1a39429a73b4
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/edac/qcom-kryo-edac.yaml
> >> @@ -0,0 +1,67 @@
> >> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/edac/qcom-kryo-edac.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: Kryo Error Detection and Correction(EDAC)
> >> +
> >> +maintainers:
> >> +  - Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> >> +
> >> +description: |
> >> +  Kryo EDAC is defined to describe on-chip error detection and
> >> correction
> >> +  for the Kryo CPU cores which implement RAS extensions. It will
> >> report
> >> +  all Single Bit Errors and Double Bit Errors found in L1/L2 caches
> >> in
> >> +  in two registers ERXSTATUS_EL1 and ERXMISC0_EL1. L3-SCU cache
> >> errors
> >> +  are reported in ERR1STATUS and ERR1MISC0 registers.
> >> +    ERXSTATUS_EL1 - Selected Error Record Primary Status Register,
> >> EL1
> >> +    ERXMISC0_EL1 - Selected Error Record Miscellaneous Register 0,
> >> EL1
> >> +    ERR1STATUS - Error Record Primary Status Register
> >> +    ERR1MISC0 - Error Record Miscellaneous Register 0
> >> +  Current implementation of Kryo ECC(Error Correcting Code) mechanism
> >> is
> >> +  based on interrupts.
> >> +
> >> +properties:
> >> +  compatible:
> >> +    enum:
> >> +      - qcom,kryo-edac
> >> +
> >> +  interrupts:
> >> +    minItems: 1
> >> +    maxItems: 4
> >> +    items:
> >> +      - description: l1-l2 cache faultirq interrupt
> >> +      - description: l1-l2 cache errirq interrupt
> >> +      - description: l3-scu cache errirq interrupt
> >> +      - description: l3-scu cache faultirq interrupt
> >> +
> >> +  interrupt-names:
> >> +    minItems: 1
> >> +    maxItems: 4
> >
> > You are saying only these combinations are valid:
> >
> > l1-l2-faultirq
> >
> > l1-l2-faultirq
> > l1-l2-errirq
> >
> > l1-l2-faultirq
> > l1-l2-errirq
> > l3-scu-errirq
> >
> > l1-l2-faultirq
> > l1-l2-errirq
> > l3-scu-errirq
> > l3-scu-faultirq
> >
> > Is that your intent?
> >
>
> No, I want any combination of interrupts to be valid with atleast one
> interrupt as mandatory.
> I thought specifying minItems as 1 and maxItems as 4 will take care of
> this,  am I doing something wrong?

Interrupts (really all properties) have a defined order in DT and an
'items' list defines both the order and index. You'll need to use
oneOf and list out the possibilities. Stick to ones you actually need.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
