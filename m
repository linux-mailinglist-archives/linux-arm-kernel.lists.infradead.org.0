Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DFE7B812
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 04:53:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VsMGuYcNrjC47ZrXhDJj6rp2dkDdHUnl+jA7rB3cbls=; b=mVYCdSanrwH1xa
	tNTcLdwZvOaqL6hCbvfN6X78HrpM3eGf6tarckmWNkd6KhzOiHvxqdOZB384XlZEIVYShJiskDzTk
	friTH8VOhxUjFphqhz1nMJRYAb8DAqtxqib7xFSfSBP6BMeB3Y+Gl2bq8dPAubwNQPpzeG2KIAZO1
	95+59Vmlak+uLHquCDGzSbktaH9VNdFcUbZ9cB6xIj00v/S5vagT44jjSA1OH1zkqgfX6OD1KE8YD
	fhwkYPPqNuOD8LbRSrZqZlf/gaCzMFo2FYTGNvwTJOC3DibOF2y53QiLUpYYnWI71Jd0ksudL3twD
	/+gq1W+PjMKHvQJpbu4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsejk-0003Ik-Sq; Wed, 31 Jul 2019 02:53:08 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsejd-0003IO-FL
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 02:53:02 +0000
Received: by mail-pf1-x441.google.com with SMTP id p184so30942215pfp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 19:52:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=56Bn5pwMSMLXsA6Sg66QvKIXarSTHoNqckCS8wh5DCE=;
 b=T5uPiL/v4zO7L+/UuiAFt+1GgbPGjLZpUWaYmgFyMFig9LiakhBOaJ2zS5/+XtanRm
 MTsOZEltRo5Tzcq3PeCMs6k3f0myRLUCegG6aMqTw2+69/Hya5c8GNZjyWBV+Bg1GpXE
 j6UtfLKhNC7PSgIEZdCBgQOmlQlszFjCktlCTLk9ocf07NxjKHknkxlLW62ABQYZwDUV
 vYYNex6Xw4pKG59W/1fVWm6ZdxvR/qDh5qYuKNr2GwRY/XYvWgTT5JpIOdpGY+CkwdLG
 n7zeJFHoeWZhQTbnOuiSGLxEyl/P123f8L/C7+MCAH1VP4ooiIQA2iKhsQ8IQ0D9rJff
 7MHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=56Bn5pwMSMLXsA6Sg66QvKIXarSTHoNqckCS8wh5DCE=;
 b=YybCcr2JhhUiUFHHvtR5adFtR2sZ6C5d5Gmo20itelmrSIUpQ4rAjA4kzlbQcoNac3
 61xW0EznPZlL+R++a0ybS5p3G1YpDhVbyQW/H8UG+kJneQ/JkbLOVNboLn+sJObQ3Tz+
 jfyYBvJEr/QixsUEYKfelHHkG8aa8wFhOj2wHu318WegKLdF2cwPq8+/ZfXRg1ajAGZE
 15Hl4EYyg2dpvl5sB5xxqeRNWzfskUHijitfk0Mwtpc5k4QCjACrnni27Tlyei3PxwyO
 OgvjJ0z4TLjEr/HTXbNKcM29XYecwuoAsaMFsQ2sNHKdPksXUwlgjcDmR4jYxqIVtd+s
 EBqg==
X-Gm-Message-State: APjAAAVpy6xUQdBGinPR9XH/INnyEKC/PImalNLqdQ+AXCjrsOUOZmhq
 dnHND2xqGXRHN2niYLBgxmgIRQ==
X-Google-Smtp-Source: APXvYqweDhuP41Q2XigbHyz53Mq5un5wB99GfLLAAUWTa/8XwSSoNBdz/WcJ67Oda9Ze+cRWXZaPQA==
X-Received: by 2002:a62:6044:: with SMTP id u65mr44053507pfb.15.1564541578548; 
 Tue, 30 Jul 2019 19:52:58 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id b24sm35968813pfd.91.2019.07.30.19.52.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 19:52:57 -0700 (PDT)
Date: Wed, 31 Jul 2019 08:22:53 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>
Subject: Re: [PATCH v4.4 V2 00/43] V4.4 backport of arm64 Spectre patches
Message-ID: <20190731025253.ys4ph2hwa7hzdi5n@vireshk-i7>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_195301_578180_4281B2CF 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 mark.brown@arm.com, Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12-07-19, 10:57, Viresh Kumar wrote:
> Hello,
> 
> This series backports arm64 spectre patches to v4.4 stable kernel. I
> have started this backport with Mark Rutland's backport of Spectre to
> 4.9 [1] and tried applying the upstream version of them over 4.4 and
> resolved conflicts by checking how they have been resolved in 4.9.

Since it has been almost 3 weeks since the patches are last posted,
here is a gentle reminder for reviewing it :)

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
