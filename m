Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6879BD659F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 16:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GdXrGohgyOZtrukU64qYr9n4uO2JK3A788aLNFNSrP4=; b=Q5HvdZ6/W5FcsB
	jVSWjLT820Dtf4nckWyVhL1kXMvO8hOyO9hJMDSZa0Q2cEkBRnGZgV8v7Vu0rWfnot3HxRZ+fhBA6
	wDUGVehJ7a69dXvw+FocfEJuv1oZGPMsllIvoqPyLlY0aGQT0oRARnF1w2pmSO7/QTxu2EoZ9WnfP
	WSkFPa0Wt6/KUkN/NVwjXZW+J8EwEBgRqmd8yNBK3s188SeOXmkzo5SaB1dS5joMphJCdxDmdSc1P
	RVZ+/e16i8OowgK5jeMHayQ+E129GcPrr05FabCSCuG5S19atAmDLtR4KAhCJSicoF5+JgBuONGy8
	33BIoO4TR6Ab05rHIDGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK1jM-0002OX-MM; Mon, 14 Oct 2019 14:53:52 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK1jB-0002Nm-T3
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 14:53:43 +0000
Received: by mail-qt1-x844.google.com with SMTP id o12so25834981qtf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 07:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PW4dLGOu0G6vmgzC0OiOGD0cErQ2nKSsOL/RWiAFO5U=;
 b=cRxAVTCLGwQVzpxkkGI3xpEq9eB35FTosT9zUTaFO98lmY9LYe61TmdjvWvNyq1bF1
 fU+caLmvr2eX60OFJmQQXudIZ/yvbE7rChdr2JJ4CJYl+H4Fx8SH+3ktrWQ0v+g8stPQ
 t6VAd5zuydGWSKG+CaJ9HMtwNsDy74/VQqVtBcehCw3J3NFVldOR40wUsh3Sl0yx2rvB
 Mdpk3RLXgsX7HaZSsRz9SdkvFEfPJMaYy6mFAtvQsppmX7yifZOszzgtwI+i1lR/pdbx
 xrlXvqU5th1+RSDNsPdu836nIQDIpQepahEuXF/Jny8jEm4vBMNMurEZCQGvGrrlRzQM
 WIXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PW4dLGOu0G6vmgzC0OiOGD0cErQ2nKSsOL/RWiAFO5U=;
 b=NPTAN5xaEBMSi+VKklPUz6bPvmXSiYtEW2NowD7J8Y/Swj2sUMCfI+69ImNqCrMKES
 Vk6DpyewGcgOqWHG3OdnPATjcZ2omJkeZjKarz5EsORg1ociz9DHlSt/9ajwlD62gbmc
 okr768ivrq1JSdnMkNyIS9C/sT6yoisdeFJ4H9SLPsw64RkfGijd/uVNUXWhsxFcgq0d
 wR5lGMAsDMMxgFF7EVJIwzW1MUsOvVlpKYvKUIkwmfRb0eA0+yyNRuZkJbnmfWJVSd8c
 y27EoG8rfiG0LXeORR5xI+1rQ14R2jJgwVNRgRpCn5o0Ib/dlyKqNjU9cVaAcAX30jp/
 u1RQ==
X-Gm-Message-State: APjAAAWbZBG0CNF5blo95EI3EdI1O25ahE+uq76FF+X0lvhcTnmbd+4p
 D4i1Di1/SUWa/jw6hJlQd4uEbw==
X-Google-Smtp-Source: APXvYqyjHl+VvE+l5oagDo8fcPwf+f3sMtn5/JVWfT9V7LYxkEutHjZ5jV7ENvkRMxVpMDHTN/tlYQ==
X-Received: by 2002:ac8:29c8:: with SMTP id 8mr31511933qtt.32.1571064821043;
 Mon, 14 Oct 2019 07:53:41 -0700 (PDT)
Received: from soleen.tm1wkky2jk1uhgkn0ivaxijq1c.bx.internal.cloudapp.net
 ([40.117.208.181])
 by smtp.gmail.com with ESMTPSA id h68sm7959128qkd.35.2019.10.14.07.53.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 07:53:40 -0700 (PDT)
Date: Mon, 14 Oct 2019 14:53:38 +0000
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: jmorris@namei.org, sashal@kernel.org, linux-kernel@vger.kernel.org,
 catalin.marinas@arm.com, will@kernel.org, steve.capper@arm.com,
 linux-arm-kernel@lists.infradead.org, marc.zyngier@arm.com,
 james.morse@arm.com, vladimir.murzin@arm.com, mark.rutland@arm.com,
 tglx@linutronix.de
Subject: Re: [PATCH] arm64: hibernate: check pgd table allocation
Message-ID: <20191014145338.hc7dm6ypzvzrgxrw@soleen.tm1wkky2jk1uhgkn0ivaxijq1c.bx.internal.cloudapp.net>
References: <20191014144824.159061-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014144824.159061-1-pasha.tatashin@soleen.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_075341_941175_2031CDD8 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-10-14 10:48:24, Pavel Tatashin wrote:
> There is a bug in create_safe_exec_page(), when page table is allocated
> it is not checked that table is allocated successfully:
> 
> But it is dereferenced in: pgd_none(READ_ONCE(*pgdp)).  Check that
> allocation was successful.
> 
> Fixes: 82869ac57b5d ("arm64: kernel: Add support for hibernate/suspend-to-disk")
> 
> Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>

Forgot to include nit from James Morse: remove empty lines between tags.
If required, I will send out an updated patch, otherwise it can be taken
as is.

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
