Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5792681716
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:32:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V9R+pSMNXL1zuX88SKWabZGNq1/9jYhUvmzM4w/oxEQ=; b=opivpbuqj9reu/
	UnlZRULP5ya/mqrEk3ZCWldTaCtglHqxGA5MUjYm88RRD8YUMTArZJdZTcjIWRgjGVJhoPogBsqru
	M+P2osrvGmX3Q5E/75tgopeUwBhDgXetR5H+jSWeFD1b2j8LHvtf1TLj3PfdIyb1dhu3hJVLis7K+
	nrg6t/pSrBJUUDU+TiB6IaHPtQH85nVBs8WpuH8cQ0wbsxenKpnnAPWc1tp/Ts0nacuRxL2RHbdTd
	3OOe0kbe55pHCh6OwBw7Sqp/kjFmPC5e9jvBj3JyrDUxK8vr8g/8GY7ArooKdUCIj1deUXmKNXtSo
	DDQ5O8g4cqJc0eNZmkog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huaHT-0002mV-MF; Mon, 05 Aug 2019 10:31:55 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huaHI-0002m6-TK
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:31:46 +0000
Received: by mail-lf1-x143.google.com with SMTP id j17so3492695lfp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 03:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QIxUu482SI86vzot/QN+xZjKGKC7jZ1rFOV/82PfOvU=;
 b=J21D8PJcDAkvaKPpk4Orak40bhKxj0N223xJYOdMnVxHVIyYH2WxocRPwL2B4xbyjl
 ozRuzjBnmFMdsd3GEi/UrVdP/8Fbt8nI0f03ZT37amTuGrXNHv8ytg3GUoOKXKn84x7K
 bLuTkZZiug9vyAdw9davx5ub5XLbNEAb+XzUXgtA5pcinsyZqbtX+uW5e4QdPhFusCGE
 7iPwGZkbYNo0RQBXf7WM2Sms4yUtpPv1CUUibQdDzJsfpSWblSHmb2S56cmcPqFm/2yl
 tUnDFWGAyLNRmutykxC3Hm6oijz8nxNR9kOFmg4SCfNHp2gtAFLgtuMlZTLq9Yw8kWsN
 PTmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QIxUu482SI86vzot/QN+xZjKGKC7jZ1rFOV/82PfOvU=;
 b=aKA7aRzUKloP5slYZrqeU6jbxAjZhgcKvZSPpKZyDBWbukUfc4wy7iDe1AyfROG1hV
 RqtMNo0jSa9bWp5wfzi8wNOmOTZtuLPWcJWxg/fymS6K8mQWrTTAozdnhKqB0ZILTVmn
 zgfvDjyBHGxa1f/vaRlCFedfBhRrb12NnmlSm5GmU+cALLk5FAJeZIA4C1O2A8gxiS3t
 5GT8imboAab1cNSgiI6KEMsg+fLddSIyOtGKxDJ6T2jCsJm4pINOf3uzhs3iPmBnt2KX
 xhLMCMCiUFXChjTaIj8ZufglIhh/sjeblAOGp3Zzk10HAOt5XN2nwvfzmwCgdMrRW466
 VXpw==
X-Gm-Message-State: APjAAAVefQz6SMB2r4VVNIAbKpBDKgws4liaF+SlOgUFKagS3OlT/VqW
 K7PKiVBJdg/WYaJis7KeqJxzgyJBxcNKrZqeczHOHA==
X-Google-Smtp-Source: APXvYqzBOWNVd1+52WtBi9/+FuY34GhQwqLRgK9LSZD46rL9njP5XApHacVaGRV8/GwflRuY5XOjDwAMzTa4xJoC/nk=
X-Received: by 2002:ac2:5382:: with SMTP id g2mr68813972lfh.92.1565001103102; 
 Mon, 05 Aug 2019 03:31:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190725171215.71801-1-kevin.brodsky@arm.com>
In-Reply-To: <20190725171215.71801-1-kevin.brodsky@arm.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 12:31:32 +0200
Message-ID: <CACRpkdZi6tWVf-1g7JwQpQnEa+XUSfe_Xj6xf1sQwMDRQrpGhg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: fast models: Remove clcd's
 max-memory-bandwidth
To: Kevin Brodsky <kevin.brodsky@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_033144_951017_8B9B633D 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Pawel Moll <pawel.moll@arm.com>,
 Ruben Ayrapetyan <ruben.ayrapetyan@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 Brian Starkey <brian.starkey@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 7:12 PM Kevin Brodsky <kevin.brodsky@arm.com> wrote:

> It is unclear why max-memory-bandwidth should be set for CLCD on the
> fast model. Removing that property allows allocating and using 32bpp
> buffers, which may be desirable on certain platforms such as
> Android.
>
> Reported-by: Ruben Ayrapetyan <ruben.ayrapetyan@arm.com>
> Signed-off-by: Kevin Brodsky <kevin.brodsky@arm.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
