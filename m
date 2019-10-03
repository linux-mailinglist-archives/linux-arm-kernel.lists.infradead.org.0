Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A253EC9C15
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 12:20:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SY44mDuhphSFxl5bcw1vl/oShfqxjY0So3aUuW1yZ1w=; b=pT3WCFZj6eIKig
	7vsMe9uQcGP8enymz9QnLtUNloFJBND1FRG7O7JXnmC0vXls16zXjEHzisv4GUZxnac9L5Vaed3cd
	dfitryZ44Sus2ZpFLaDGiuedu5iqSvQsB5shrBq0N6p1ZXr7SSHVHXmOLKMHsfIsMKd+uAG1TRxgi
	TV1ZXoTYYG0AyDRMcueLzftzwdupOKMvmvhdCWALcnQF+wMXOE+FF4E6Ujg4NZw9qE3fazuYdoIVK
	oQ2lnWxCYNvQKHhctB9iUmqenatl5VkgAgObdiUno+NbPej8gl8RhgF+NMFN0cNKk/Pb1o2AkdUh+
	UKehIRbKqGMe5VdJw1BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFyDv-0005wQ-K5; Thu, 03 Oct 2019 10:20:39 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFyDk-0005vf-QC
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 10:20:30 +0000
Received: by mail-wm1-x335.google.com with SMTP id v17so1838233wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 03:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RgYfjLnuHCVaLlaLQE6xBvCVpBRhiKlsW8AM1IaRwoc=;
 b=liP+tQrbcQ/PhyPV3IF4Q4ag8vLwWVnhHzZ1wWzHuXbSQMFyZgGMd44HgAxDKUVy/N
 imtKR55T4uy0tMLy4sN8UDHsfIWZ9/hQEBG+0UEUsK+Kehwjk0R5d3JP5sALQDr3YEuG
 QMZQfTH2SRzyU+YmN3kCaoe9wwBqRsQv6suN8EZWUrwSyoWOWnp8c0WuswIGQvtzyg7/
 0980nAGHmjcNBOj7kWVo/ASWlTP5ejFboQ6W6HAfMvTtp2ZX1+Y8eEhWubQij3R0zeeS
 y9zAm3OZu3kqMPWwOrpxMb1wXPWn+VdiiDt/FgOVGnTW1+yBYyxPDD66tvTnHJLDIHki
 bZjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RgYfjLnuHCVaLlaLQE6xBvCVpBRhiKlsW8AM1IaRwoc=;
 b=FJ5wJOwoOpVq8liRMTc30ZWzG3aVF6La8zJUy2BKprQ9LMz5Je0EF4hFDPEHzB7D+w
 ZwtF6ZAFKdaYRNdtrn5NZVpTT6sprea/m93Gjn7CA+5pgKosesMebBULBFdtMR6XHkQV
 dTG+9YjlruSbFP14YwTtpe3+Y18jqOna6b73QOJBqTL+nAwdm2GoFzGgMUFMrQNZDZEA
 DZwl80XA0pQInM6KM7ttn462OhQKEAlIuYXNVU6mwPUIKOrdPi5KvEcll0zUkzS71wmx
 w3YzubiFz1iflSQPF5sfNDqPXPcyjqmtBWELhBtEB06Ke4uRht60MOUyozj0SpihLSYN
 c6Zg==
X-Gm-Message-State: APjAAAVk1IJneVKFu1vUArLLerwDtr+tuSkSOyQ/Isfh/gcDXFrABdMg
 w94oiYMKwfo/hQ8hV+mt14qA5Q==
X-Google-Smtp-Source: APXvYqz9uAbe9izQ7OolQ95hH+VT7Ttpkz4AlYdVQ8HuQZZ4ro9WQ+Cs3l/7PY9Qt6+VrATHsnpcYQ==
X-Received: by 2002:a1c:80ca:: with SMTP id b193mr5852137wmd.171.1570098026639; 
 Thu, 03 Oct 2019 03:20:26 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id n17sm2102552wrp.37.2019.10.03.03.20.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2019 03:20:25 -0700 (PDT)
Date: Thu, 3 Oct 2019 11:20:23 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCHv9 2/3] arm64: dts: qcom: msm8998: Add Coresight support
Message-ID: <20191003102023.qk6ik5vmatheaofs@holly.lan>
References: <cover.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <90114e06825e537c3aafd3de5c78743a9de6fadc.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <CAOCk7NrK+wY8jfHdS8781NOQtyLm2RRe1NW2Rm3_zeaot0Q99Q@mail.gmail.com>
 <16212a577339204e901cf4eefa5e82f1@codeaurora.org>
 <CAOCk7NohO67qeYCnrjy4P0KN9nLUiamphHRvj-bFP++K7khPOw@mail.gmail.com>
 <fa5a35f0e993f2b604b60d5cead3cf28@codeaurora.org>
 <CAOCk7NodWtC__W3=AQfXcjF-W9Az_NNUN0r8w5WmqJMziCcvig@mail.gmail.com>
 <5b8835905a704fb813714694a792df54@codeaurora.org>
 <CANLsYkxPOOorqcnPrbhZLzGV9Y7EGWUUyxvi-Cm5xxnzhx=Ecg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkxPOOorqcnPrbhZLzGV9Y7EGWUUyxvi-Cm5xxnzhx=Ecg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_032028_856287_CC6EF374 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:335 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Rajendra Nayak <rnayak@codeaurora.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 lkml <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, Andy Gross <agross@kernel.org>,
 Sibi Sankar <sibis@codeaurora.org>, Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Leo Yan <leo.yan@linaro.org>, linux-arm-msm-owner@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 09:03:59AM -0600, Mathieu Poirier wrote:
> On Tue, 1 Oct 2019 at 12:05, Sai Prakash Ranjan
> <saiprakash.ranjan@codeaurora.org> wrote:
> >
> > On 2019-10-01 11:01, Jeffrey Hugo wrote:
> > > On Tue, Oct 1, 2019 at 11:52 AM Sai Prakash Ranjan
> > > <saiprakash.ranjan@codeaurora.org> wrote:
> > >>
> > >>
> > >> Haan then likely it's the firmware issue.
> > >> We should probably disable coresight in soc dtsi and enable only for
> > >> MTP. For now you can add a status=disabled for all coresight nodes in
> > >> msm8998.dtsi and I will send the patch doing the same in a day or
> > >> two(sorry I am travelling currently).
> > >
> > > This sounds sane to me (and is what I did while bisecting the issue).
> > > When you do create the patch, feel free to add the following tags as
> > > you see fit.
> > >
> > > Reported-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
> > > Tested-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
> >
> > Thanks Jeffrey, I will add them.
> > Hope Mathieu and Suzuki are OK with this.
> 
> The problem here is that a debug and production device are using the
> same device tree, i.e msm8998.dtsi.  Disabling coresight devices in
> the DTS file will allow the laptop to boot but completely disabled
> coresight blocks on the MTP board.  Leaving things as is breaks the
> laptop but allows coresight to be used on the MTP board.  One of three
> things can happen:
> 
> 1) Nothing gets done and production board can't boot without DTS modifications.
> 2) Disable tags are added to the DTS file and the debug board can't
> use coresight without modifications.
> 2) The handling of the debug power domain is done properly on the
> MSM8998 rather than relying on the bootloader to enable it.
> 3) The DTS file is split or reorganised to account for debug/production devices.

msm8998.dtsi is a SoC include file. Can't whatever default it adopts be
reversed in the board include files such as msm8998-mtp.dtsi or
msm8998-clamshell.dtsi ?


Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
