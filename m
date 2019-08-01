Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA407DE3A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 16:48:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DaBjqAIZWr5tKsq14/hfRoSriT8iGo6S7Pk6EHb+XNk=; b=XoKbeUa12WzAhj
	8HB9dGyWbm6bk4RpJNB7r/Jz2bVzKzNoofIczVJc5pvH56GuPHN8KUuyTSsQaLSLUrkbywZJlKR1m
	6KQ5A5L67ok+5/WbfaqmX0JdVeUALgO1uAZSQbcfewp7C8UCHyaf3Ch1fwP113Bsn3R4tZQb6BUxa
	xIWbpsziH0nC134/jmtjB3gJi2anOxTf6Fp37CkycL1bmnhmzM3EoTpsaxH8Fgr8+J9K4PRft64Kd
	potUniSTyG5SrbBQEXpCMJPjKrBBL90XRnDZprusLUFEYndkHPimHeI/L8nbMGUE0d1L/uBJQrbcP
	pkBSKQRpzZrD3oKTQEuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htCNx-0003Lm-EB; Thu, 01 Aug 2019 14:48:53 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htCNm-0003LL-UH
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 14:48:44 +0000
Received: by mail-io1-xd43.google.com with SMTP id o9so41321792iom.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 07:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NL3ejeWxwhxOr1Nd3ekSsZlZL/Ha72heQpwIPUS9CQM=;
 b=naemidp13xVtFqMSdOqrRSjkkUsnqMf9Y9Y1SsoMbp5wbF3R6iW6TX77kOb1ruCUH9
 VRPHYMzz7m16Xs2Mqog+6FbO44I7SyzHsbLn89Q+4Yo8WL9cTKrAmwuFbx2R6g8dfAC5
 TeUi3G9KShuN1yA0blud0EZ4dH0wa8XTd/h8PlCe1JcHq6cOWs+EYbsJhyrd09h+tMvs
 RqspfvuE2b/Y0YGt3cGYI7Ztu7XvyFDwAJVw3ocVhvyMHVW5JrATX5qFI0fLt0syu/I3
 FN+FTnub4ciEiZsbW+BBUZNdPIAqjkT1h13xE9nrSd2VmZUIBKecvdXWnuOoVnn9RDVO
 MR3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NL3ejeWxwhxOr1Nd3ekSsZlZL/Ha72heQpwIPUS9CQM=;
 b=ry5e07q0fctfiH7aIfZPZgyVFFKyxo7MLBIa+b3Ee+2diJxosjPUVpfW57v5Nrq3Ev
 NQMrll2KyHk3/n3Cc75/nNct2Qo0iDPV4TuSYc5fkicEnu119mkcLU2EvkzowBtRNsZ9
 bYEpzAGXjdsFQgUbULWOzTPQp5yEViRhFpfiDVAsrOBU0VkAfQcaeQtvKoSPwIuT50FD
 q2EHhxtskEqSZgTZWH44l8MfhMBqvQvzpCNKT0GlDO2jlg6Q/vRk5f2nSj8mpx4yun4m
 IF4O2Lk0YNG3wClp3JZEm3GPG6cra46MUdKQF9GvF3vMUxJLiZi1qbuZ+PQk+OL5NTuN
 hvSg==
X-Gm-Message-State: APjAAAWF6wJ0NckofJPK4UAVT82vg99sCBIwOrGBbuHqVB6nNmc2DLjL
 guzV8qCQAHn1BvG5BNUCpGETiaU5hlX9+J2UMb04Hg==
X-Google-Smtp-Source: APXvYqyjPO1y2Gb/12GLfV9jNpcWDS4MO4IPxsLM8k7KYS/q9WfO+iK03wce0PRzEtaUo9EOqupdygYe6KVwQPMfY0c=
X-Received: by 2002:a05:6638:517:: with SMTP id
 i23mr18072843jar.71.1564670921521; 
 Thu, 01 Aug 2019 07:48:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190730125157.884-3-andrew.murray@arm.com>
 <20190801133137.3560C217D7@mail.kernel.org>
In-Reply-To: <20190801133137.3560C217D7@mail.kernel.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 1 Aug 2019 08:48:30 -0600
Message-ID: <CANLsYkyw9syB3mRVEf+Yo-3s6TjC6xkNzgn4zuKu0B9QZc_a+w@mail.gmail.com>
Subject: Re: [PATCH v4 2/6] coresight: etm4x: use explicit barriers on
 enable/disable
To: Sasha Levin <sashal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_074842_978229_5EBAD511 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Murray <andrew.murray@arm.com>, "# 4 . 7" <stable@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 1 Aug 2019 at 07:31, Sasha Levin <sashal@kernel.org> wrote:
>
> Hi,
>
> [This is an automated email]
>
> This commit has been processed because it contains a -stable tag.
> The stable tag indicates that it's relevant for the following trees: all
>
> The bot has tested the following trees: v5.2.4, v5.1.21, v4.19.62, v4.14.134, v4.9.186, v4.4.186.
>
> v5.2.4: Build OK!
> v5.1.21: Build OK!
> v4.19.62: Failed to apply! Possible dependencies:
>     41a75cdde735 ("coresight: Convert driver messages to dev_dbg")
>     68a147752d04 ("coresight: etmx: Claim devices before use")
>     e006d89abedd ("coresight: etm4x: Add support for handling errors")
>     e2a1551a881f ("coresight: etm3: Add support for handling errors")
>
> v4.14.134: Failed to apply! Possible dependencies:
>     41a75cdde735 ("coresight: Convert driver messages to dev_dbg")
>     68a147752d04 ("coresight: etmx: Claim devices before use")
>     e006d89abedd ("coresight: etm4x: Add support for handling errors")
>     e2a1551a881f ("coresight: etm3: Add support for handling errors")
>
> v4.9.186: Failed to apply! Possible dependencies:
>     297ab90f15f6 ("coresight: tmc: Cleanup operation mode handling")
>     2cd541402829 ("coresight: tmc: minor fix for output log")
>     41a75cdde735 ("coresight: Convert driver messages to dev_dbg")
>     68a147752d04 ("coresight: etmx: Claim devices before use")
>     c38e505e2701 ("coresight: tmc: Get rid of mode parameter for helper routines")
>     e006d89abedd ("coresight: etm4x: Add support for handling errors")
>     e2a1551a881f ("coresight: etm3: Add support for handling errors")
>
> v4.4.186: Failed to apply! Possible dependencies:
>     1925a470ce69 ("coresight: etm3x: splitting struct etm_drvdata")
>     2127154d115d ("coresight: etm3x: implementing user/kernel mode tracing")
>     22fd532eaa0c ("coresight: etm3x: adding operation mode for etm_enable()")
>     27b10da8fff2 ("coresight: etb10: moving to local atomic operations")
>     41a75cdde735 ("coresight: Convert driver messages to dev_dbg")
>     52210c8745e4 ("coresight: implementing 'cpu_id()' API")
>     68a147752d04 ("coresight: etmx: Claim devices before use")
>     882d5e112491 ("coresight: etm3x: implementing perf_enable/disable() API")
>     b3e94405941e ("coresight: associating path with session rather than tracer")
>     c04148e708c0 ("coresight: etm3x: moving sysFS entries to dedicated file")
>     c1f8e57c9e66 ("coresight: etm3x: moving etm_readl/writel to header file")
>     e2a1551a881f ("coresight: etm3: Add support for handling errors")
>     e827d4550aa3 ("coresight: etb10: adding operation mode for sink->enable()")
>
>
> NOTE: The patch will not be queued to stable trees until it is upstream.
>
> How should we proceed with this patch?

I have another one like that - will send a separate set that applies correctly.

Thanks for the consideration,
Mathieu

>
> --
> Thanks,
> Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
