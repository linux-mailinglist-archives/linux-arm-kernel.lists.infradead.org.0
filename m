Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5364132F9F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 20:39:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UkldM5mW+jC0BVTLUXGOozDKhPUkuxMd3Pz+2bMwjus=; b=Butk5opu9nvFKX
	xHu5vL4XV+2iTEZxXIN7vAuERF/CYfGyv2I+Qrl/A0K4p3XE1ZczhYGRiuATQ89P7m+XKn5GtW7Xc
	8mTxDHqDoiIP1juZHAdtJQNHAnlwkNhCJHR5v6GLnxZRTvra2fMTWvWSpRbolWiI64vZ7K4fEw/Og
	+TNQTn7us4fYJBj2eH6qaYJ3sGhDTV4yrStQNCpRkeIecLkMurHvcF1IQ8wHBN2I6MY4sLcG9cNX3
	nkbTL3zgU2/dy/Q+OdGrwdATRCdatqI3lLyQ8WSwZlGoel4iezOXvQKYoHm+TETnXDkWdoS8NUub/
	BYEWg6A84LaswHQy7hyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iougq-0004xO-Q9; Tue, 07 Jan 2020 19:38:56 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iougj-0004wy-B3
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 19:38:50 +0000
Received: by mail-pj1-x1042.google.com with SMTP id bg7so6039pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 11:38:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2Prj57eO28z5lgjo5XEk+60ja6L41tebRV2EmrAGd90=;
 b=j6KbHbJr6pXF3rIONFb1cXW8QZ6nec5Rs+xZLy4qdYTunmQOmRb1h0OnZ47bqsF+Ri
 YSQao8pisPbywoGr/7hPXXrMSHX1zI5E6RyVonCaJDhBWg4zYdDoR+3ksI0DLD1ZdCcQ
 nSctQ9OBXzljZPCntnEVcEmSj71sYnbCnweigad/o8pteHJPIFbgQgujn6W9Fk7AYT+u
 2bbqJ8glQZDUJIw7YGduRpXSlsz0trqwfDJH4jrH9M6XXlVnDz1L4rBCbub/UDkd0jLe
 Pype796b1IlvyI8Kq0UPUFuO4eX75OdI2+5nXNY3Zsr0Gzjig3+M3Y8MOSINfIA1DfoB
 asiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2Prj57eO28z5lgjo5XEk+60ja6L41tebRV2EmrAGd90=;
 b=L8fUbQ5LGjXeqRSkgID13TT0wBrK3igKuyGyr9XGTKBGeRyFqpYqLY2CPvUIXVlY6k
 HZHUKvVz9Yexr1a1CWX06clzQsx7R4GAC+LrsPj4wEoqxUHrmNC0i0R0X3nQmgV5yMD2
 QF0GHyPIFWrAIgDQ+n149HZwssUQHAIbNu+DjZgEU/igOfCo6IR9iKWr0s4oq4ZIpSB5
 Tey/iCXJ75YwuO0Qd0wBUvkFJipR/GfVaDGDdzWOfx0dlswCD0ou0juSieEZQFmP9Zof
 TJfznyJZOb/PGHQ3zPc2JXtBzsYMzXIMTj9zbau/qeBYSQncipAwDVL2SDK40mo1Z226
 IZkg==
X-Gm-Message-State: APjAAAVGRFitMf3DjG0esnSNa4vsivPnWg5+kofa+2TifQr33dY+NA2f
 vDawt0D/pK8ehqvS9uj6JTTfuw==
X-Google-Smtp-Source: APXvYqzmgPKQJGSGcikCPKGdGu42fAIoSm9qJ5Nc/utaPnrITLEcQkgEEbKybjhplo9KuTs//Z9WaA==
X-Received: by 2002:a17:90a:19d3:: with SMTP id 19mr20993pjj.1.1578425927665; 
 Tue, 07 Jan 2020 11:38:47 -0800 (PST)
Received: from yoga (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id x22sm593940pgc.2.2020.01.07.11.38.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 11:38:46 -0800 (PST)
Date: Tue, 7 Jan 2020 11:38:44 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [GIT PULL] cpuidle/psci updates for v5.6
Message-ID: <20200107193844.GE716784@yoga>
References: <20200102160820.3572-1-ulf.hansson@linaro.org>
 <20200106172608.63qhvwr5b7jsmxmg@localhost>
 <CAPDyKFq-ueSK2xAOBtec_N95sBVf-Vcm_-xgAhxQUuwAjUzbPw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFq-ueSK2xAOBtec_N95sBVf-Vcm_-xgAhxQUuwAjUzbPw@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_113849_429211_5ABA281B 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, soc@kernel.org, arm-soc <arm@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 07 Jan 11:28 PST 2020, Ulf Hansson wrote:

> On Mon, 6 Jan 2020 at 18:31, Olof Johansson <olof@lixom.net> wrote:
> >
> > Hi,
> >
> > On Thu, Jan 02, 2020 at 05:08:20PM +0100, Ulf Hansson wrote:
> > > Hi SoC maintainers,
> > >
> > > Here's a PR with updates for v5.6 for cpuidle/psci for ARM/ARM64.
> > >
> > > The changes are somewhat sprinkled over a couple of different directories and
> > > there is also dts update for MSM8916. The main changes are in drivers/cpuidle/,
> > > which have been acked-by Rafael [1] and Sudeep.
> > >
> > > If you have any further questions, please just tell.
> >
> > What was the reason to bring in a dts change in this branch?
> 
> Convenience. But I am not usually sending these PR, so feel free to
> tell me to change.
> 

The dts files are typically moving a lot, so to reduce the risk of
conflicts it's generally better if we take them through the qcom tree.

> > Bindings should be
> > stable such that old DT contents still works even if drivers are updated to
> > support newer attributes, etc.
> 
> They already are. No worries!
> 
> If you want to pick everything else but the DTS patch, that's fine by me.
> 

Generally, yes.

> Do you want me to send a new PR?
> 

But I'm happy with the dts patch and afaict there's nothing that this
will conflict with. So you have my retroactive ack on the patch and
lets stick with the current PR.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
