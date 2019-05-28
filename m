Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2782C0EA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 10:09:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LHkvgP42Jcd4DmQWqHDrrsfVoaUOOP+I4H4cYJfKZHw=; b=Ww2/bDyE3TqgYB
	zR6nUxRm2k7QbS2ZCK1ZP4DXJgpTiDU4XpBsxaGqILlpCo3/lf5GCZr55Hn7Xnm0s2ktOz18Lw9XE
	H4sslv9jXkaJ70rQkq2AU3PtDlmzGva5arQlngDED3NGOacAJN8QlF901sM7veOsxcp35hriT9z0B
	R2WR22L7f2SjbbEXa7XcrL+/r+szYM1PmxyGO6yskZZrtjKDL5anxaEk8zhqJYkk63efZpo9YK/kU
	8/eErcDeOHVqQWvPaT3p0NDoRAJmqaNi2xPtmedmHQ2+zdDbQ3ic5P6WNioU2EiCy1/5LjTtZYRvc
	zLyLn8p7H7vb0dSwzNNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVXAr-0003YS-13; Tue, 28 May 2019 08:09:33 +0000
Received: from mail-qk1-x72e.google.com ([2607:f8b0:4864:20::72e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVXAQ-0003ME-Fm
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 08:09:15 +0000
Received: by mail-qk1-x72e.google.com with SMTP id j1so21143439qkk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 01:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xDOcfUm0hx1+moO7XUT4Qyuo28lq60TTV8oVJkJSDf8=;
 b=sWqbqkCcghXKhwjI3+Xh42gDOmLmikpVTRsgukr3jx+YA5eCGhQcPo2m93RTOPkLHB
 8fDzk0VoiU/nu0XtdRzDzm1BcyM5HaHfOEK8B6n4ScId52EtujnwrJtfsa3SZQFzt97H
 U3fwH09XvO7mt4qR588300BgcxUiO5wI+2dWpO2YYhIUiAPev1fe11v6d31JGQV9oJyW
 9mVCTrrOysEPJx7qWQisEpks+LiURbb/tVwuawJtM6YkK6N7W+zHJuVDcealqD8XzFlj
 0+94ZgNIRc+kTPajYrWDhPUxMEyVUv5sTA2qi9aZAG/OYnhA4VcohWEqjMSRjm+YyL9k
 MJ6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xDOcfUm0hx1+moO7XUT4Qyuo28lq60TTV8oVJkJSDf8=;
 b=ccNYfMUNK/DEMxPP10MaWWLMauilUpsCf70i8tgoPk4OOYbPE2ovmYjnD0sbYCZaXb
 nNVgwuEskc23QJoTOPCgI7pIRpJ35DZgb5vUPtLB5BcRtWkbi3uBQf4tcxvycjOfSXBf
 04O99UZj5S6sW13iSSPkXmdbBA8Di6XisknJPrUWZcFC3uLhfEqF88+WGpAv49iLzu83
 OEa7ubObTzithYXIQ1/k3fKnD+YOuplvAfe519VEkztdj+zt4Fmv/D90OZxw2YVcawJz
 xz99/AJi/E1HNIRdm6GjEAKaLQZHmnKXzaSW0KWIC/jdnWbcnhMUHVAE4s79tmVtnpdG
 sXAQ==
X-Gm-Message-State: APjAAAUOVsbbzfl019a9RjTDnyTH7weQR2OzfFZufj5HyKO/tDfMDNC/
 lExqA6d3283JuICRqs652a4Pdg==
X-Google-Smtp-Source: APXvYqzfmlI/oHiU+Uq4sz7SDPAZyh1TsYqXiHyhgextGozcdW+UWA5iJ+nmKdMmrLAMcPrhVYv2GA==
X-Received: by 2002:ac8:1bec:: with SMTP id m41mr98723878qtk.272.1559030944933; 
 Tue, 28 May 2019 01:09:04 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li483-211.members.linode.com.
 [50.116.44.211])
 by smtp.gmail.com with ESMTPSA id f67sm5267299qtb.68.2019.05.28.01.08.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 28 May 2019 01:09:03 -0700 (PDT)
Date: Tue, 28 May 2019 16:08:53 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v4 00/30] coresight: Support for ACPI bindings
Message-ID: <20190528080853.GB5753@leoy-ThinkPad-X240s>
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
 <20190528051924.GA19112@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528051924.GA19112@leoy-ThinkPad-X240s>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_010906_867570_8D134B88 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:72e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki, Mathieu,

On Tue, May 28, 2019 at 01:19:24PM +0800, Leo Yan wrote:

[...]

> After I applied this patch set, I found all device names under
> '/sys/bus/event_source/devices/cs_etm/sinks/' have been changed as
> below on my DB410c board:
> # ls /sys/bus/event_source/devices/cs_etm/sinks/
> tmc_etf0  tmc_etr0  tpiu0
> 
> This leads to below command failure when open PMU device:
> # perf record -e cs_etm/@826000.etr/ --per-thread uname
> failed to set sink "826000.etr" on event cs_etm/@826000.etr/ with 2 (No such file or directory)
> 
> I must use below command so that perf can match string with the
> device name under '/sys/bus/event_source/devices/cs_etm/sinks/':
> # perf record -e cs_etm/@tmc_etr0/ --per-thread uname
> 
> Seems to me, this is an unexpected change and when I worked on the
> patch set v2, IIRC that version still can use '826000.etr' to open PMU
> device.
> 
> Please help confirm for this.  Thanks!

Finally, this is narrowed down to the patch 09/30 'coresight: Use
coresight device names for sinks in PMU attribute', so this is
delibrately to change to use new name format for perf command;
if so, maybe also update the documentation to reflect this change?

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
